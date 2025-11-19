Swift::Void __swiftcall SharePlayTogetherSession.endSession()()
{
  *(v0 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_sessionEndedManually) = 1;
  if (*(v0 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session))
  {
    v2[4] = CFRange.init(_:);
    v2[5] = 0;
    v2[0] = _NSConcreteStackBlock;
    v2[1] = 1107296256;
    v2[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error) -> ();
    v2[3] = &block_descriptor_37;
    v1 = _Block_copy(v2);
    [swift_unknownObjectRetain() removeAllParticipantsWithCompletion:v1];
    _Block_release(v1);
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall SharePlayTogetherSession.leave()()
{
  *(v0 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_sessionEndedManually) = 1;
  v1 = *(v0 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session);
  if (v1)
  {
    v2 = [v1 identifier];
    if (!v2)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v2 = String._bridgeToObjectiveC()();
    }

    v4[4] = CFRange.init(_:);
    v4[5] = 0;
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 1107296256;
    v4[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
    v4[3] = &block_descriptor_40;
    v3 = _Block_copy(v4);
    MRGroupSessionLeaveSessionWithIdentifier();
    _Block_release(v3);
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall SharePlayTogetherSession.cleanup(notifyObservers:)(Swift::Bool notifyObservers)
{
  if (notifyObservers)
  {
    v2 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_sessionEndedObservers;
    swift_beginAccess();
    v3 = *(v1 + v2);
    v4 = *(v3 + 16);
    if (v4)
    {

      v5 = v3 + 40;
      do
      {
        v6 = *(v5 - 8);
        v9[0] = 1;

        v6(v9);

        v5 += 16;
        --v4;
      }

      while (v4);
    }
  }

  v7 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_sessionEndedObservers;
  swift_beginAccess();
  *(v1 + v7) = _swiftEmptyArrayStorage;

  v8 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_sessionConnectionObservers;
  swift_beginAccess();
  *(v1 + v8) = _swiftEmptyArrayStorage;
}

uint64_t SharePlayTogetherSession.addSessionConnectionObserver(_:)(uint64_t (*a1)(void), uint64_t a2)
{
  if (*(v2 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_isConnected) == 1)
  {
    return a1();
  }

  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_sessionConnectionObservers;
  swift_beginAccess();
  v8 = *(v2 + v7);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + v7) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8[2] + 1, 1, v8);
    *(v2 + v7) = v8;
  }

  v11 = v8[2];
  v10 = v8[3];
  if (v11 >= v10 >> 1)
  {
    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v8);
  }

  v8[2] = v11 + 1;
  v12 = &v8[2 * v11];
  v12[4] = partial apply for closure #3 in View.actionContextMenu<A>(title:menu:excluding:preview:previewAction:);
  v12[5] = v6;
  *(v2 + v7) = v8;
  return swift_endAccess();
}

uint64_t SharePlayTogetherSession.addSessionEndedObserver(_:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_sessionEndedObservers;
  swift_beginAccess();
  v7 = *(v2 + v6);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + v6) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7[2] + 1, 1, v7);
    *(v2 + v6) = v7;
  }

  v10 = v7[2];
  v9 = v7[3];
  if (v10 >= v9 >> 1)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v7);
  }

  v7[2] = v10 + 1;
  v11 = &v7[2 * v10];
  v11[4] = _sSbIegy_SbytIegnr_TRTA_0;
  v11[5] = v5;
  *(v2 + v6) = v7;
  return swift_endAccess();
}

id SharePlayTogetherSession.assertSessionManagementScreenVisible()()
{
  result = *(v0 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session);
  if (result)
  {
    v2 = [result assertSessionManagementScreenVisible];

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t SharePlayTogetherSession.socialProfile(for:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if ([a1 identifierType] == 1 && (v5 = objc_msgSend(a1, "participantIdentifier")) != 0)
  {
    v6 = v5;
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    v10 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_participantProfileMap;
    swift_beginAccess();
    v11 = *(v2 + v10);
    if (*(v11 + 16) && (, v12 = _ss22__RawDictionaryStorageC4findys10_HashTableV6BucketV6bucket_Sb5foundtxSHRzlFSS_Tg5_0(v7, v9), v14 = v13, , (v14 & 1) != 0))
    {
      v15 = *(v11 + 56);
      v16 = type metadata accessor for SocialProfile();
      v17 = *(v16 - 8);
      (*(v17 + 16))(a2, v15 + *(v17 + 72) * v12, v16);

      return (*(v17 + 56))(a2, 0, 1, v16);
    }

    else
    {

      v21 = type metadata accessor for SocialProfile();
      return (*(*(v21 - 8) + 56))(a2, 1, 1, v21);
    }
  }

  else
  {
    v19 = type metadata accessor for SocialProfile();
    v20 = *(*(v19 - 8) + 56);

    return v20(a2, 1, 1, v19);
  }
}

void *SharePlayTogetherSession.isEquivalent(to:)(uint64_t a1)
{
  result = *(v1 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session);
  if (!result)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = [result isPlaceholder];
  result = *(a1 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session);
  if (!result)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  if (v4 == [result isPlaceholder])
  {
    v14 = 0;
  }

  else
  {
    v5 = [*(v1 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_endpoint) uniqueIdentifier];
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    v9 = [*(a1 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_endpoint) uniqueIdentifier];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    if (v6 == v10 && v8 == v12)
    {
      v14 = 1;
    }

    else
    {
      v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return (v14 & 1);
}

void SharePlayTogetherSession.updateParticipants()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0);
  __chkstk_darwin(v2 - 8);
  v118 = &v112 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A22CatalogResourceRequestVy0aB8Internal13SocialProfileVGMd);
  v117 = *(v4 - 8);
  v5 = *(v117 + 64);
  v6 = __chkstk_darwin(v4);
  v7 = &v112 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v116 = &v112 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore24SharePlayTogetherSessionC11ParticipantVSgMd);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v112 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v120 = &v112 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MusicKitInternal13SocialProfileVSgMd);
  __chkstk_darwin(v14 - 8);
  v128 = &v112 - v15;
  v119 = type metadata accessor for SharePlayTogetherSession.Participant(0);
  v132 = *(v119 - 8);
  __chkstk_darwin(v119);
  v17 = &v112 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for sharePlayTogether != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  v122 = __swift_project_value_buffer(v18, static Logger.sharePlayTogether);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "Updating participants", v21, 2u);
  }

  v22 = swift_allocObject();
  v133 = v22;
  *(v22 + 16) = &_swiftEmptySetSingleton;
  v124 = v22 + 16;
  v129 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session;
  v23 = *&v1[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session];
  if (!v23)
  {
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  v24 = [v23 pendingParticipants];
  v25 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v26 = *(v25 + 16);
  if (v26)
  {
    v27 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs11AnyHashableV_Tt1g5(*(v25 + 16), 0);
    v28 = specialized Sequence._copySequenceContents(initializing:)(v136, (v27 + 4), v26, v25);
    outlined consume of Set<Library.Menu.Identifier>.Iterator._Variant();
    if (v28 == v26)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  v27 = _swiftEmptyArrayStorage;
LABEL_10:
  specialized _arrayForceCast<A, B>(_:)(v27);

  v136[0] = specialized Array._copyToContiguousArray()(v29);
  specialized MutableCollection<>.sort(by:)(v136);
  v115 = v4;

  v30 = *&v1[v129];
  if (!v30)
  {
    goto LABEL_77;
  }

  v126 = v136[0];
  v31 = [v30 participants];
  v32 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v33 = *(v32 + 16);
  if (!v33)
  {
LABEL_14:

    v34 = _swiftEmptyArrayStorage;
    goto LABEL_15;
  }

  v34 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs11AnyHashableV_Tt1g5(*(v32 + 16), 0);
  v35 = specialized Sequence._copySequenceContents(initializing:)(v136, (v34 + 4), v33, v32);
  outlined consume of Set<Library.Menu.Identifier>.Iterator._Variant();
  if (v35 != v33)
  {
    __break(1u);
    goto LABEL_14;
  }

LABEL_15:
  specialized _arrayForceCast<A, B>(_:)(v34);

  v136[0] = specialized Array._copyToContiguousArray()(v36);
  specialized MutableCollection<>.sort(by:)(v136);

  v125 = v136[0];
  if ((v136[0] & 0x8000000000000000) == 0 && (v136[0] & 0x4000000000000000) == 0)
  {
    v37 = *(v136[0] + 16);
    goto LABEL_18;
  }

  while (1)
  {
    v37 = _CocoaArrayWrapper.endIndex.getter();
LABEL_18:
    swift_getKeyPath();
    swift_getKeyPath();
    v136[0] = v37;
    v38 = v1;
    static Published.subscript.setter();
    v39 = v126;
    v114 = v12;
    if (v126 < 0 || (v126 & 0x4000000000000000) != 0)
    {
      v40 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v40 = *(v126 + 16);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v136[0] = v40;
    v41 = v38;
    static Published.subscript.setter();
    v136[0] = v39;

    specialized Array.append<A>(contentsOf:)(v42);
    v43 = v136[0];
    v113 = v7;
    v112 = v5;
    v123 = v1;
    if (v136[0] >> 62)
    {
      v44 = _CocoaArrayWrapper.endIndex.getter();
      if (!v44)
      {
LABEL_33:

        v46 = _swiftEmptyArrayStorage;
        goto LABEL_34;
      }
    }

    else
    {
      v44 = *((v136[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v44)
      {
        goto LABEL_33;
      }
    }

    v136[0] = _swiftEmptyArrayStorage;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v44 & ~(v44 >> 63), 0);
    if (v44 < 0)
    {
      __break(1u);
      goto LABEL_76;
    }

    v45 = 0;
    v46 = v136[0];
    do
    {
      if ((v43 & 0xC000000000000001) != 0)
      {
        v47 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v47 = *(v43 + 8 * v45 + 32);
        swift_unknownObjectRetain();
      }

      processParticipant #1 (_:) in SharePlayTogetherSession.updateParticipants()(v47, v41, v133, v17);
      swift_unknownObjectRelease();
      v136[0] = v46;
      v49 = v46[2];
      v48 = v46[3];
      v7 = (v49 + 1);
      if (v49 >= v48 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v48 > 1, v49 + 1, 1);
        v46 = v136[0];
      }

      ++v45;
      v46[2] = v7;
      outlined init with take of SharePlayTogetherSession.Participant(v17, v46 + ((*(v132 + 80) + 32) & ~*(v132 + 80)) + *(v132 + 72) * v49);
    }

    while (v44 != v45);

    v1 = v123;
LABEL_34:
    swift_getKeyPath();
    swift_getKeyPath();
    v136[0] = v46;
    v130 = v41;
    static Published.subscript.setter();
    v50 = *&v1[v129];
    if (!v50)
    {
      goto LABEL_78;
    }

    v51 = [v50 members];
    v17 = type metadata accessor for UIAction(0, &lazy cache variable for type metadata for MRUserIdentity);
    lazy protocol witness table accessor for type MRUserIdentity and conformance NSObject();
    v52 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = v124;
    if ((v52 & 0xC000000000000001) != 0)
    {
      __CocoaSet.makeIterator()();
      Set.Iterator.init(_cocoa:)();
      v52 = v136[0];
      v1 = v136[1];
      v53 = v136[2];
      v54 = v136[3];
      v12 = v136[4];
    }

    else
    {
      v54 = 0;
      v55 = -1 << *(v52 + 32);
      v1 = (v52 + 56);
      v53 = ~v55;
      v56 = -v55;
      v57 = v56 < 64 ? ~(-1 << v56) : -1;
      v12 = (v57 & *(v52 + 56));
    }

    v121 = v53;
    v58 = (v53 + 64) >> 6;
    v127 = v17;
    if (v52 < 0)
    {
      break;
    }

    while (1)
    {
      v62 = v54;
      v63 = v12;
      v60 = v54;
      if (!v12)
      {
        break;
      }

LABEL_51:
      v61 = (v63 - 1) & v63;
      v7 = *(*(v52 + 48) + ((v60 << 9) | (8 * __clz(__rbit64(v63)))));
      if (!v7)
      {
        goto LABEL_59;
      }

LABEL_52:
      if ([v7 type] == 1)
      {
        v131 = v61;
        v64 = [v7 identifier];
        v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v67 = v66;

        v68 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_participantProfileMap;
        v69 = v130;
        swift_beginAccess();
        v70 = *&v69[v68];
        if (*(v70 + 16) && (, v71 = _ss22__RawDictionaryStorageC4findys10_HashTableV6BucketV6bucket_Sb5foundtxSHRzlFSS_Tg5_0(v65, v67), v73 = v72, , (v73 & 1) != 0))
        {
          v74 = *(v70 + 56);
          v75 = type metadata accessor for SocialProfile();
          v76 = *(v75 - 8);
          v77 = v76;
          v78 = v74 + *(v76 + 72) * v71;
          v79 = v128;
          (*(v76 + 16))(v128, v78, v75);

          (*(v77 + 56))(v79, 0, 1, v75);
          v5 = v124;
          outlined destroy of TaskPriority?(v79, &_s16MusicKitInternal13SocialProfileVSgMd);
        }

        else
        {

          v80 = type metadata accessor for SocialProfile();
          v81 = v128;
          (*(*(v80 - 8) + 56))(v128, 1, 1, v80);
          outlined destroy of TaskPriority?(v81, &_s16MusicKitInternal13SocialProfileVSgMd);
          v82 = [v7 identifier];
          static String._unconditionallyBridgeFromObjectiveC(_:)();

          v83 = MusicItemID.init(_:)();
          v85 = v84;
          swift_beginAccess();
          specialized Set._Variant.insert(_:)(&v135, v83, v85);
          swift_endAccess();
        }

        v54 = v60;
        v12 = v131;
        v17 = v127;
        if (v52 < 0)
        {
          goto LABEL_44;
        }
      }

      else
      {

        v54 = v60;
        v12 = v61;
        if (v52 < 0)
        {
          goto LABEL_44;
        }
      }
    }

    while (1)
    {
      v60 = v62 + 1;
      if (__OFADD__(v62, 1))
      {
        break;
      }

      if (v60 >= v58)
      {
        goto LABEL_59;
      }

      v63 = *&v1[8 * v60];
      ++v62;
      if (v63)
      {
        goto LABEL_51;
      }
    }

    __break(1u);
  }

LABEL_44:
  v59 = __CocoaSet.Iterator.next()();
  if (v59)
  {
    v135 = v59;
    swift_dynamicCast();
    v7 = v134[0];
    v60 = v54;
    v61 = v12;
    if (v134[0])
    {
      goto LABEL_52;
    }
  }

LABEL_59:
  outlined consume of Set<Library.Menu.Identifier>.Iterator._Variant();
  v86 = *&v123[v129];
  if (!v86)
  {
LABEL_79:
    __break(1u);

    __break(1u);
    return;
  }

  swift_unknownObjectRetain();

  v87 = [v86 host];
  swift_unknownObjectRelease();
  if (v87)
  {
    v88 = v120;
    v89 = v130;
    processParticipant #1 (_:) in SharePlayTogetherSession.updateParticipants()(v87, v130, v133, v120);
    (*(v132 + 56))(v88, 0, 1, v119);
    swift_getKeyPath();
    swift_getKeyPath();
    outlined init with copy of TaskPriority?(v88, v114, &_s9MusicCore24SharePlayTogetherSessionC11ParticipantVSgMd);
    v90 = v89;
    static Published.subscript.setter();
    swift_unknownObjectRelease();
    outlined destroy of TaskPriority?(v88, &_s9MusicCore24SharePlayTogetherSessionC11ParticipantVSgMd);
  }

  swift_beginAccess();
  v91 = *v5;
  v92 = *(*v5 + 16);
  v93 = Logger.logObject.getter();
  v94 = static os_log_type_t.default.getter();
  v95 = os_log_type_enabled(v93, v94);
  if (v92)
  {
    if (v95)
    {
      v96 = swift_slowAlloc();
      *v96 = 134349056;
      *(v96 + 4) = *(v91 + 16);
      _os_log_impl(&_mh_execute_header, v93, v94, "Fetching %{public}ld profiles", v96, 0xCu);
    }

    swift_getKeyPath();
    v97 = *(v91 + 16);
    if (!v97 || (v98 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC8MusicKit0H6ItemIDV_Tt1g5(*(v91 + 16), 0), v94 = v98, v99 = specialized Sequence._copySequenceContents(initializing:)(v134, v98 + 4, v97, v91), v93 = v134[4], , v95 = outlined consume of Set<Library.Menu.Identifier>.Iterator._Variant(), v99 == v97))
    {
      type metadata accessor for SocialProfile();
      lazy protocol witness table accessor for type SocialProfile and conformance SocialProfile(&lazy protocol witness table cache variable for type SocialProfile and conformance SocialProfile, &type metadata accessor for SocialProfile);
      lazy protocol witness table accessor for type SocialProfile and conformance SocialProfile(&lazy protocol witness table cache variable for type SocialProfile and conformance SocialProfile, &type metadata accessor for SocialProfile);
      v101 = v116;
      MusicCatalogResourceRequest.init<A>(matching:memberOf:)();
      v102 = type metadata accessor for TaskPriority();
      v103 = v118;
      (*(*(v102 - 8) + 56))(v118, 1, 1, v102);
      v104 = v117;
      v105 = v113;
      v106 = v115;
      (*(v117 + 16))(v113, v101, v115);
      type metadata accessor for MainActor();
      v107 = v130;
      v108 = static MainActor.shared.getter();
      v109 = (*(v104 + 80) + 32) & ~*(v104 + 80);
      v110 = (v112 + v109 + 7) & 0xFFFFFFFFFFFFFFF8;
      v111 = swift_allocObject();
      *(v111 + 16) = v108;
      *(v111 + 24) = &protocol witness table for MainActor;
      (*(v104 + 32))(v111 + v109, v105, v106);
      *(v111 + v110) = v107;
      _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v103, &async function pointer to partial apply for closure #4 in SharePlayTogetherSession.updateParticipants(), v111);

      (*(v104 + 8))(v101, v106);

      return;
    }

    __break(1u);
  }

  if (v95)
  {
    v100 = swift_slowAlloc();
    *v100 = 0;
    _os_log_impl(&_mh_execute_header, v93, v94, "No pending profiles to fetch", v100, 2u);
  }
}

uint64_t processParticipant #1 (_:) in SharePlayTogetherSession.updateParticipants()@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MusicKitInternal13SocialProfileVSgMd);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = v49 - v13;
  __chkstk_darwin(v12);
  v16 = v49 - v15;
  v17 = type metadata accessor for SocialProfile();
  v18 = *(v17 - 8);
  v52 = *(v18 + 56);
  v53 = v17;
  v52(v16, 1, 1);
  v19 = [a1 identity];
  v20 = &stru_1005F2000;
  if (v19)
  {
    v21 = v19;
    if ([v19 type] == 1)
    {
      v49[1] = a3;
      v51 = v16;
      v22 = [v21 identifier];
      v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v23;

      v25 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_participantProfileMap;
      swift_beginAccess();
      v26 = *(a2 + v25);
      if (*(v26 + 16) && (, v50 = _ss22__RawDictionaryStorageC4findys10_HashTableV6BucketV6bucket_Sb5foundtxSHRzlFSS_Tg5_0(v50, v24), v28 = v27, , (v28 & 1) != 0))
      {
        (*(v18 + 16))(v14, *(v26 + 56) + *(v18 + 72) * v50, v53);
        v16 = v51;
        outlined destroy of TaskPriority?(v51, &_s16MusicKitInternal13SocialProfileVSgMd);

        v29 = 0;
      }

      else
      {

        v16 = v51;
        outlined destroy of TaskPriority?(v51, &_s16MusicKitInternal13SocialProfileVSgMd);
        v29 = 1;
      }

      v30 = v53;
      (v52)(v14, v29, 1, v53);
      outlined init with take of SocialProfile?(v14, v16);
      outlined init with copy of TaskPriority?(v16, v11, &_s16MusicKitInternal13SocialProfileVSgMd);
      if ((*(v18 + 48))(v11, 1, v30) == 1)
      {
        outlined destroy of TaskPriority?(v11, &_s16MusicKitInternal13SocialProfileVSgMd);
        v31 = [v21 identifier];
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v32 = MusicItemID.init(_:)();
        v34 = v33;
        swift_beginAccess();
        specialized Set._Variant.insert(_:)(&v54, v32, v34);
        swift_endAccess();

        v20 = &stru_1005F2000;
        goto LABEL_12;
      }

      outlined destroy of TaskPriority?(v11, &_s16MusicKitInternal13SocialProfileVSgMd);
    }

    else
    {
    }

    v20 = &stru_1005F2000;
  }

LABEL_12:
  v35 = [a1 v20[156].name];
  v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v38 = v37;

  v39 = [a1 identity];
  if (v39 && (v40 = v39, v41 = [v39 displayName], v40, v41))
  {
    v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = v43;
  }

  else
  {
    v42 = 0;
    v44 = 0;
  }

  v45 = [a1 isPending];
  v46 = [a1 isGuest];
  v47 = *(type metadata accessor for SharePlayTogetherSession.Participant(0) + 32);
  (v52)(a4 + v47, 1, 1, v53);
  *a4 = v36;
  *(a4 + 8) = v38;
  *(a4 + 16) = v42;
  *(a4 + 24) = v44;
  *(a4 + 32) = v45;
  *(a4 + 33) = v46;
  return outlined assign with take of SocialProfile?(v16, a4 + v47);
}

uint64_t SharePlayTogetherSession.Participant.init(id:displayName:isPending:isGuest:socialProfile:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v16 = *(type metadata accessor for SharePlayTogetherSession.Participant(0) + 32);
  v17 = type metadata accessor for SocialProfile();
  (*(*(v17 - 8) + 56))(a8 + v16, 1, 1, v17);
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 33) = a6;

  return outlined assign with take of SocialProfile?(a7, a8 + v16);
}

uint64_t closure #1 in SharePlayTogetherSession.updateParticipants()(id *a1, void **a2)
{
  v2 = *a2;
  v3 = [*a1 identity];
  if (v3 && (v4 = v3, v5 = [v3 displayName], v4, v5))
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0xE000000000000000;
  }

  v9 = [v2 identity];
  if (v9 && (v10 = v9, v11 = [v9 displayName], v10, v11))
  {
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    if (v6 != v12)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v14 = 0xE000000000000000;
    if (v6)
    {
LABEL_12:
      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_13;
    }
  }

  if (v8 != v14)
  {
    goto LABEL_12;
  }

  v15 = 0;
LABEL_13:

  return v15 & 1;
}

uint64_t closure #4 in SharePlayTogetherSession.updateParticipants()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0);
  v5[5] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A23CatalogResourceResponseVy0aB8Internal13SocialProfileVGMd);
  v5[6] = v6;
  v5[7] = *(v6 - 8);
  v7 = swift_task_alloc();
  v5[8] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A14ItemCollectionVy0aB8Internal13SocialProfileVGMd);
  v5[9] = v8;
  v9 = *(v8 - 8);
  v5[10] = v9;
  v5[11] = *(v9 + 64);
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v5[15] = type metadata accessor for MainActor();
  v5[16] = static MainActor.shared.getter();
  v10 = swift_task_alloc();
  v5[17] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A22CatalogResourceRequestVy0aB8Internal13SocialProfileVGMd);
  *v10 = v5;
  v10[1] = closure #4 in SharePlayTogetherSession.updateParticipants();

  return MusicCatalogResourceRequest.response()(v7, v11);
}

uint64_t closure #4 in SharePlayTogetherSession.updateParticipants()()
{
  *(*v1 + 144) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = closure #4 in SharePlayTogetherSession.updateParticipants();
  }

  else
  {
    v4 = closure #4 in SharePlayTogetherSession.updateParticipants();
  }

  return _swift_task_switch(v4, v3, v2);
}

{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];

  MusicCatalogResourceResponse.items.getter();
  (*(v2 + 8))(v1, v3);
  if (one-time initialization token for sharePlayTogether != -1)
  {
    swift_once();
  }

  v4 = v0[13];
  v5 = v0[14];
  v6 = v0[9];
  v7 = v0[10];
  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.sharePlayTogether);
  v34 = *(v7 + 16);
  v34(v4, v5, v6);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[13];
  v13 = v0[9];
  v14 = v0[10];
  if (v11)
  {
    v15 = swift_slowAlloc();
    *v15 = 134349056;
    lazy protocol witness table accessor for type MusicItemCollection<SocialProfile> and conformance MusicItemCollection<A>();
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    v16 = dispatch thunk of Collection.distance(from:to:)();
    v33 = *(v14 + 8);
    v33(v12, v13);
    *(v15 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v9, v10, "Finished fetching %{public}ld profiles", v15, 0xCu);
  }

  else
  {
    v33 = *(v14 + 8);
    v33(v12, v13);
  }

  v17 = v0[14];
  v18 = v0[12];
  v19 = v0[10];
  v20 = v0[11];
  v21 = v0[9];
  v23 = v0[4];
  v22 = v0[5];
  v32 = v22;
  v24 = type metadata accessor for TaskPriority();
  (*(*(v24 - 8) + 56))(v22, 1, 1, v24);
  v34(v18, v17, v21);
  v25 = v23;
  v26 = static MainActor.shared.getter();
  v27 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v28 = (v20 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  *(v29 + 16) = v26;
  *(v29 + 24) = &protocol witness table for MainActor;
  (*(v19 + 32))(v29 + v27, v18, v21);
  *(v29 + v28) = v25;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5_0(0, 0, v32, &async function pointer to partial apply for closure #1 in closure #4 in SharePlayTogetherSession.updateParticipants(), v29);

  v33(v17, v21);

  v30 = v0[1];

  return v30();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in closure #4 in SharePlayTogetherSession.updateParticipants()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[30] = a4;
  v5[31] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MusicKitInternal13SocialProfileVSgMd);
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();
  v5[34] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore24SharePlayTogetherSessionC11ParticipantVSgMd);
  v5[35] = swift_task_alloc();
  v6 = type metadata accessor for SharePlayTogetherSession.Participant(0);
  v5[36] = v6;
  v5[37] = *(v6 - 8);
  v5[38] = swift_task_alloc();
  v5[39] = swift_task_alloc();
  v7 = type metadata accessor for SocialProfile();
  v5[40] = v7;
  v5[41] = *(v7 - 8);
  v5[42] = swift_task_alloc();
  v5[43] = swift_task_alloc();
  v5[44] = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVy8MusicKit0C14ItemCollectionVy0cD8Internal13SocialProfileVGGMd);
  v5[45] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[46] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #1 in closure #4 in SharePlayTogetherSession.updateParticipants(), v9, v8);
}

void closure #1 in closure #4 in SharePlayTogetherSession.updateParticipants()()
{
  v1 = v0;
  v2 = v0[44];
  v3 = v0[45];
  v4 = v0[30];
  v5 = v0[31];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A14ItemCollectionVy0aB8Internal13SocialProfileVGMd);
  (*(*(v6 - 8) + 16))(v3, v4, v6);
  v7 = *(v2 + 36);
  lazy protocol witness table accessor for type MusicItemCollection<SocialProfile> and conformance MusicItemCollection<A>();
  dispatch thunk of Collection.startIndex.getter();
  v8 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_participantProfileMap;
  dispatch thunk of Collection.endIndex.getter();
  v114 = v1;
  v109 = v5;
  if (*(v3 + v7) != v1[27])
  {
    v57 = v1[41];
    v105 = (v57 + 16);
    v107 = v1 + 2;
    v108 = (v57 + 32);
    v103 = v57;
    v100 = v7;
    do
    {
      v60 = v1[43];
      v113 = v1[42];
      v61 = v1[40];
      v111 = dispatch thunk of Collection.subscript.read();
      (*v105)(v60);
      v111(v107, 0);
      dispatch thunk of Collection.formIndex(after:)();
      v62 = SocialProfile.id.getter();
      v64 = v63;
      swift_beginAccess();
      v65 = *v108;
      (*v108)(v113, v60, v61);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v67 = *(v109 + v8);
      v115 = v67;
      *(v109 + v8) = 0x8000000000000000;
      v68 = _ss22__RawDictionaryStorageC4findys10_HashTableV6BucketV6bucket_Sb5foundtxSHRzlFSS_Tg5_0(v62, v64);
      v70 = v67[2];
      v71 = (v69 & 1) == 0;
      v72 = __OFADD__(v70, v71);
      v73 = v70 + v71;
      if (v72)
      {
        goto LABEL_61;
      }

      v74 = v69;
      if (v67[3] >= v73)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v81 = v68;
          specialized _NativeDictionary.copy()();
          v68 = v81;
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v73, isUniquelyReferenced_nonNull_native);
        v68 = _ss22__RawDictionaryStorageC4findys10_HashTableV6BucketV6bucket_Sb5foundtxSHRzlFSS_Tg5_0(v62, v64);
        if ((v74 & 1) != (v75 & 1))
        {

          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          return;
        }
      }

      v76 = v114[42];
      v77 = v114[40];
      if (v74)
      {
        v58 = v68;

        v59 = v115;
        (*(v103 + 40))(v115[7] + *(v103 + 72) * v58, v76, v77);
      }

      else
      {
        v59 = v115;
        v115[(v68 >> 6) + 8] |= 1 << v68;
        v78 = (v115[6] + 16 * v68);
        *v78 = v62;
        v78[1] = v64;
        v65(v115[7] + *(v103 + 72) * v68, v76, v77);
        v79 = v115[2];
        v72 = __OFADD__(v79, 1);
        v80 = v79 + 1;
        if (v72)
        {
          goto LABEL_62;
        }

        v115[2] = v80;
      }

      v1 = v114;
      *(v109 + v8) = v59;

      swift_endAccess();
      dispatch thunk of Collection.endIndex.getter();
    }

    while (*(v3 + v100) != v114[27]);
  }

  v98 = v8;
  outlined destroy of TaskPriority?(v1[45], &_ss16IndexingIteratorVy8MusicKit0C14ItemCollectionVy0cD8Internal13SocialProfileVGGMd);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v9 = *(v1[28] + 16);

  v10 = v1;
  if (!v9)
  {
LABEL_31:
    v53 = v10[36];
    v54 = v10[37];
    v55 = v10[35];

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v56 = *(v54 + 48);
    if (v56(v55, 1, v53) == 1)
    {
      outlined destroy of TaskPriority?(v10[35], &_s9MusicCore24SharePlayTogetherSessionC11ParticipantVSgMd);
    }

    else
    {
      v82 = v10 + 6;
      v83 = v10[36];
      outlined init with take of SharePlayTogetherSession.Participant(v10[35], v10[39]);
      v84 = SharePlayTogetherSession.host.modify(v10 + 6);
      v86 = v85;
      v87 = v56(v85, 1, v83);
      v88 = v10[39];
      if (!v87)
      {
        v89 = *v88;
        v90 = v88[1];
        swift_beginAccess();
        v91 = *(v109 + v98);
        if (*(v91 + 16))
        {

          v92 = _ss22__RawDictionaryStorageC4findys10_HashTableV6BucketV6bucket_Sb5foundtxSHRzlFSS_Tg5_0(v89, v90);
          if (v93)
          {
            v10 = v114;
            (*(v114[41] + 16))(v114[32], *(v91 + 56) + *(v114[41] + 72) * v92, v114[40]);
            v94 = 0;
          }

          else
          {
            v94 = 1;
            v10 = v114;
          }
        }

        else
        {
          v94 = 1;
          v10 = v114;
        }

        v88 = v10[39];
        v95 = v10[36];
        v96 = v10[32];
        (*(v10[41] + 56))(v96, v94, 1, v10[40]);
        outlined assign with take of SocialProfile?(v96, v86 + *(v95 + 32));
      }

      (v84)(v82, 0);
      outlined destroy of SharePlayTogetherSession.Participant(v88);
    }

    type metadata accessor for SharePlayTogetherSession(0);
    lazy protocol witness table accessor for type SocialProfile and conformance SocialProfile(&lazy protocol witness table cache variable for type SharePlayTogetherSession and conformance SharePlayTogetherSession, type metadata accessor for SharePlayTogetherSession);
    ObservableObject<>.objectWillChange.getter();
    ObservableObjectPublisher.send()();

    v97 = v10[1];

    v97();
    return;
  }

  v11 = v1[41];
  v13 = v1[37];
  v12 = v1[38];
  v101 = v1[36];
  v110 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session;
  v112 = v1[31];
  swift_beginAccess();
  v14 = 0;
  v102 = v9;
  v104 = (v11 + 56);
  v99 = v11;
  v106 = v13;
  while (1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v15 = v10[29];
    if (v14 >= *(v15 + 16))
    {
      break;
    }

    v16 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v17 = *(v13 + 72) * v14;
    outlined init with copy of SharePlayTogetherSession.Participant(v15 + v16 + v17, v10[38]);

    if (*(v12 + 32) == 1)
    {
      v18 = *(v112 + v110);
      if (!v18)
      {
        goto LABEL_66;
      }

      swift_unknownObjectRetain();
      v19 = String._bridgeToObjectiveC()();
      v20 = [v18 pendingParticipantForIdentifier:v19];
      swift_unknownObjectRelease();

      if (v20)
      {
        v21 = [v20 identity];
        swift_unknownObjectRelease();
        if (v21)
        {
          v22 = [v21 identifier];

          v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v25 = v24;

          v26 = *(v109 + v98);
          if (*(v26 + 16) && (, v27 = _ss22__RawDictionaryStorageC4findys10_HashTableV6BucketV6bucket_Sb5foundtxSHRzlFSS_Tg5_0(v23, v25), v29 = v28, , (v29 & 1) != 0))
          {
            (*(v99 + 16))(v10[34], *(v26 + 56) + *(v99 + 72) * v27, v10[40]);

            v30 = 0;
          }

          else
          {

            v30 = 1;
          }

          (*v104)(v10[34], v30, 1, v10[40]);
          swift_getKeyPath();
          swift_getKeyPath();
          v44 = static Published.subscript.modify();
          v50 = v49;
          v51 = *v49;
          v52 = swift_isUniquelyReferenced_nonNull_native();
          *v50 = v51;
          if ((v52 & 1) == 0)
          {
            v51 = specialized _ArrayBuffer._consumeAndCreateNew()(v51);
            *v50 = v51;
          }

          v13 = v106;
          if (v14 >= v51[2])
          {
            goto LABEL_64;
          }

          outlined assign with take of SocialProfile?(v10[34], v51 + v16 + v17 + *(v101 + 32));
LABEL_5:
          v44();

          v9 = v102;
          goto LABEL_6;
        }
      }
    }

    v31 = *(v112 + v110);
    if (!v31)
    {
      goto LABEL_65;
    }

    swift_unknownObjectRetain();
    v32 = String._bridgeToObjectiveC()();
    v33 = [v31 participantForIdentifier:v32];
    swift_unknownObjectRelease();

    if (v33)
    {
      v34 = [v33 identity];
      swift_unknownObjectRelease();
      if (v34)
      {
        v35 = [v34 identifier];

        v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v38 = v37;

        v39 = *(v109 + v98);
        if (*(v39 + 16) && (, v40 = _ss22__RawDictionaryStorageC4findys10_HashTableV6BucketV6bucket_Sb5foundtxSHRzlFSS_Tg5_0(v36, v38), v42 = v41, , (v42 & 1) != 0))
        {
          (*(v99 + 16))(v10[33], *(v39 + 56) + *(v99 + 72) * v40, v10[40]);

          v43 = 0;
        }

        else
        {

          v43 = 1;
        }

        (*v104)(v10[33], v43, 1, v10[40]);
        swift_getKeyPath();
        swift_getKeyPath();
        v44 = static Published.subscript.modify();
        v46 = v45;
        v47 = *v45;
        v48 = swift_isUniquelyReferenced_nonNull_native();
        *v46 = v47;
        if ((v48 & 1) == 0)
        {
          v47 = specialized _ArrayBuffer._consumeAndCreateNew()(v47);
          *v46 = v47;
        }

        v13 = v106;
        if (v14 >= v47[2])
        {
          goto LABEL_63;
        }

        outlined assign with take of SocialProfile?(v10[33], v47 + v16 + v17 + *(v101 + 32));
        goto LABEL_5;
      }
    }

LABEL_6:
    ++v14;
    outlined destroy of SharePlayTogetherSession.Participant(v10[38]);
    if (v9 == v14)
    {
      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
}

id SharePlayTogetherSession.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SharePlayTogetherSession(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance SharePlayTogetherSession@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SharePlayTogetherSession(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t SharePlayTogetherSession.Participant.socialProfile.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for SharePlayTogetherSession.Participant(0) + 32);

  return outlined assign with take of SocialProfile?(a1, v3);
}

uint64_t SharePlayTogetherSession.groupSessionDidConnect(_:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  type metadata accessor for MainActor();
  swift_unknownObjectRetain();
  v7 = v1;
  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = &protocol witness table for MainActor;
  v9[4] = a1;
  v9[5] = v7;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5_0(0, 0, v5, &async function pointer to partial apply for closure #1 in SharePlayTogetherSession.groupSessionDidConnect(_:), v9);
}

uint64_t closure #1 in SharePlayTogetherSession.groupSessionDidConnect(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  type metadata accessor for MainActor();
  v5[12] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #1 in SharePlayTogetherSession.groupSessionDidConnect(_:), v7, v6);
}

uint64_t closure #1 in SharePlayTogetherSession.groupSessionDidConnect(_:)()
{
  v22 = v0;

  if (one-time initialization token for sharePlayTogether != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.sharePlayTogether);
  swift_unknownObjectRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[10];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v21 = v6;
    *v5 = 136446210;
    v7 = [v4 description];
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    v11 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v8, v10, &v21);

    *(v5 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "groupSessionDidConnect %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
  }

  v12 = v0[11];
  *(v12 + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_isConnected) = 1;
  v13 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_sessionConnectionObservers;
  swift_beginAccess();
  v14 = *(v12 + v13);
  v15 = *(v14 + 16);
  if (v15)
  {

    v16 = v14 + 40;
    do
    {
      v17 = *(v16 - 8);

      v17(v18);

      v16 += 16;
      --v15;
    }

    while (v15);
  }

  *(v12 + v13) = _swiftEmptyArrayStorage;

  SharePlayTogetherSession.qrCode.getter(v0 + 2);
  outlined destroy of TaskPriority?((v0 + 2), &_s9MusicCore6QRCodeVSgMd);
  type metadata accessor for SharePlayTogetherSession(0);
  lazy protocol witness table accessor for type SocialProfile and conformance SocialProfile(&lazy protocol witness table cache variable for type SharePlayTogetherSession and conformance SharePlayTogetherSession, type metadata accessor for SharePlayTogetherSession);
  ObservableObject<>.objectWillChange.getter();
  ObservableObjectPublisher.send()();

  v19 = v0[1];

  return v19();
}

uint64_t SharePlayTogetherSession.groupSession(_:didInvalidateWithError:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0);
  __chkstk_darwin(v4 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  type metadata accessor for MainActor();
  swift_errorRetain();
  v8 = v2;
  v9 = static MainActor.shared.getter();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = &protocol witness table for MainActor;
  v10[4] = a2;
  v10[5] = v8;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5_0(0, 0, v6, &async function pointer to partial apply for closure #1 in SharePlayTogetherSession.groupSession(_:didInvalidateWithError:), v10);
}

uint64_t closure #1 in SharePlayTogetherSession.groupSession(_:didInvalidateWithError:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  type metadata accessor for MainActor();
  v5[13] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #1 in SharePlayTogetherSession.groupSession(_:didInvalidateWithError:), v7, v6);
}

uint64_t closure #1 in SharePlayTogetherSession.groupSession(_:didInvalidateWithError:)()
{
  v32 = v0;

  if (one-time initialization token for sharePlayTogether != -1)
  {
LABEL_18:
    swift_once();
  }

  v1 = *(v0 + 96);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.sharePlayTogether);
  swift_errorRetain();
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v31 = v8;
    *v6 = 138543618;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    *(v6 + 12) = 2082;
    swift_beginAccess();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySbcMd);
    v10 = Array.description.getter();
    v12 = v11;

    v13 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v10, v12, &v31);

    *(v6 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Session invalidated with error %{public}@. Calling %{public}s observers.", v6, 0x16u);
    outlined destroy of TaskPriority?(v7, &_sSo8NSObjectCSgMd_0);

    __swift_destroy_boxed_opaque_existential_0Tm(v8);
  }

  v14 = *(v0 + 96);
  v15 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_sessionEndedObservers;
  swift_beginAccess();
  v16 = *(v14 + v15);
  v17 = *(v16 + 16);
  if (v17)
  {
    v27 = v15;
    v18 = *(v0 + 96);
    v19 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_sessionEndedManually;
    v20 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_isPersistent;
    v29 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session;

    v28 = v0;
    result = swift_beginAccess();
    v0 = 0;
    v22 = v16 + 40;
    while (1)
    {
      if (v0 >= *(v16 + 16))
      {
        __break(1u);
        goto LABEL_18;
      }

      v24 = *(v22 - 8);
      if ((*(v18 + v19) & 1) != 0 || *(v18 + v20) == 1)
      {

        v23 = 1;
      }

      else
      {
        v25 = *(v18 + v29);
        if (!v25)
        {
          __break(1u);
          return result;
        }

        v23 = [v25 isPlaceholder];
      }

      ++v0;
      v30 = v23;
      v24(&v30);

      v22 += 16;
      if (v17 == v0)
      {

        v15 = v27;
        v0 = v28;
        break;
      }
    }
  }

  *(v14 + v15) = _swiftEmptyArrayStorage;

  v26 = *(v0 + 8);

  return v26();
}

uint64_t closure #1 in SharePlayTogetherSession.groupSession(_:didUpdate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #1 in SharePlayTogetherSession.groupSession(_:didUpdate:), v6, v5);
}

void @objc SharePlayTogetherSession.groupSession(_:didUpdate:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, uint64_t a6, uint64_t a7)
{
  swift_unknownObjectRetain();
  v11 = a1;
  specialized SharePlayTogetherSession.groupSession(_:didUpdate:)(a5, a6, a7);
  swift_unknownObjectRelease();
}

uint64_t closure #1 in SharePlayTogetherSession.groupSession(_:didUpdateMembers:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #1 in SharePlayTogetherSession.groupSession(_:didUpdateMembers:), v6, v5);
}

uint64_t closure #1 in SharePlayTogetherSession.groupSession(_:didUpdateMembers:)()
{

  SharePlayTogetherSession.updateParticipants()();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t one-time initialization function for sharePlayTogether()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.sharePlayTogether);
  __swift_project_value_buffer(v0, static Logger.sharePlayTogether);
  return Logger.init(subsystem:category:)();
}

void outlined copy of QRCode?(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  if (a4)
  {
    outlined copy of Data._Representation(a2, a3);

    v4 = a4;
  }
}

uint64_t static Logger.sharePlayTogether.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for sharePlayTogether != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static Logger.sharePlayTogether);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

id *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo10DSPComplexV_Tt1g5(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo10DSPComplexVGMd);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

id *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC8MusicKit0H6ItemIDV_Tt1g5(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy8MusicKit0D6ItemIDVGMd);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

id *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo25MRGroupSessionParticipant_p_Tt1g5(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

id *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs11AnyHashableV_Tt1g5(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys11AnyHashableVGMd);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x6666666666666667) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 4) + (v7 >> 63));
  return result;
}

uint64_t specialized MutableCollection<>.sort(by:)(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v6);
  return specialized ContiguousArray._endMutation()();
}

{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v20[0] = v2 + 32;
  v20[1] = v4;
  v5 = _minimumMergeRunLength(_:)(v4);
  if (v5 >= v4)
  {
    if (v4 >= 2)
    {
      v9 = -1;
      v10 = 1;
      v11 = (v2 + 32);
      do
      {
        v12 = *(v2 + 32 + 8 * v10);
        v13 = v9;
        v14 = v11;
        do
        {
          v15 = *v14;
          if (*(v12 + 176) >= *(*v14 + 176))
          {
            break;
          }

          *v14 = v12;
          v14[1] = v15;
          --v14;
        }

        while (!__CFADD__(v13++, 1));
        ++v10;
        ++v11;
        --v9;
      }

      while (v10 != v4);
    }
  }

  else
  {
    v6 = v5;
    v7 = v4 >> 1;
    if (v4 >= 2)
    {
      type metadata accessor for SyncedLyricsLineView.Word();
      v8 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = v7;
    }

    else
    {
      v8 = _swiftEmptyArrayStorage;
    }

    v18[0] = (v8 & 0xFFFFFFFFFFFFFF8) + 32;
    v18[1] = v7;
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v18, v19, v20, v6);
    *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
  }

  return specialized ContiguousArray._endMutation()();
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(void **__src, void **a2, void **a3, void **a4)
{
  v4 = a3;
  v5 = a2;
  v6 = __src;
  v7 = a2 - __src;
  v8 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v8 = a2 - __src;
  }

  v9 = v8 >> 3;
  v10 = a3 - a2;
  v11 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v11 = a3 - a2;
  }

  v12 = v11 >> 3;
  if (v9 < v11 >> 3)
  {
    v13 = a4;
    if (a4 != __src || &__src[v9] <= a4)
    {
      memmove(a4, __src, 8 * v9);
      v5 = a2;
    }

    v63 = &v13[v9];
    if (v7 < 8 || v5 >= v4)
    {
LABEL_30:
      v34 = v6;
      goto LABEL_61;
    }

    v15 = &stru_1005F2000;
    while (1)
    {
      __dst = v5;
      v16 = *v5;
      v17 = *v13;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v18 = [v16 v15[158].attr];
      v59 = v6;
      if (v18 && (v19 = v18, v20 = [v18 displayName], v19, v20))
      {
        v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v23 = v22;
      }

      else
      {
        v21 = 0;
        v23 = 0xE000000000000000;
      }

      v24 = [v17 v15[158].attr];
      if (v24 && (v25 = v24, v26 = [v24 displayName], v25, v26))
      {
        v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v29 = v28;

        if (v21 != v27)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v29 = 0xE000000000000000;
        if (v21)
        {
          goto LABEL_23;
        }
      }

      if (v23 == v29)
      {
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        v15 = &stru_1005F2000;
LABEL_26:
        v32 = v13;
        v31 = v59;
        v33 = v59 == v13++;
        v5 = __dst;
        if (v33)
        {
          goto LABEL_28;
        }

LABEL_27:
        *v31 = *v32;
        goto LABEL_28;
      }

LABEL_23:
      v30 = _stringCompareWithSmolCheck(_:_:expecting:)();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      v15 = &stru_1005F2000;
      if ((v30 & 1) == 0)
      {
        goto LABEL_26;
      }

      v31 = v59;
      v32 = __dst;
      v5 = __dst + 1;
      if (v59 != __dst)
      {
        goto LABEL_27;
      }

LABEL_28:
      v6 = v31 + 1;
      if (v13 >= v63 || v5 >= v4)
      {
        goto LABEL_30;
      }
    }
  }

  if (a4 != a2 || &a2[v12] <= a4)
  {
    v35 = a4;
    memmove(a4, a2, 8 * v12);
    v5 = a2;
    a4 = v35;
  }

  v63 = &a4[v12];
  v13 = a4;
  if (v10 < 8 || v5 <= v6)
  {
    v34 = v5;
    goto LABEL_61;
  }

  v37 = &stru_1005F2000;
  v58 = a4;
  v60 = v6;
  do
  {
    __dsta = v5;
    v38 = v5 - 1;
    --v4;
    v39 = v63;
    v57 = v38;
    while (1)
    {
      v40 = *--v39;
      v41 = *v38;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v42 = [v40 v37[158].attr];
      if (v42 && (v43 = v42, v44 = [v42 displayName], v43, v44))
      {
        v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v47 = v46;
      }

      else
      {
        v45 = 0;
        v47 = 0xE000000000000000;
      }

      v48 = [v41 v37[158].attr];
      if (v48 && (v49 = v48, v50 = [v48 displayName], v49, v50))
      {
        v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v53 = v52;

        if (v45 != v51)
        {
          goto LABEL_50;
        }
      }

      else
      {
        v53 = 0xE000000000000000;
        if (v45)
        {
          goto LABEL_50;
        }
      }

      if (v47 == v53)
      {
        v54 = 0;
        goto LABEL_51;
      }

LABEL_50:
      v54 = _stringCompareWithSmolCheck(_:_:expecting:)();
LABEL_51:

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v55 = (v4 + 1);
      if (v54)
      {
        break;
      }

      v38 = v57;
      if (v55 != v63)
      {
        *v4 = *v39;
      }

      --v4;
      v63 = v39;
      v37 = &stru_1005F2000;
      if (v39 <= v58)
      {
        v63 = v39;
        v13 = v58;
        v34 = __dsta;
        goto LABEL_61;
      }
    }

    v34 = v57;
    if (v55 != __dsta)
    {
      *v4 = *v57;
    }

    v13 = v58;
    v37 = &stru_1005F2000;
    if (v63 <= v58)
    {
      break;
    }

    v5 = v57;
  }

  while (v57 > v60);
LABEL_61:
  if (v34 != v13 || v34 >= (v13 + ((v63 - v13 + (v63 - v13 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v34, v13, 8 * (v63 - v13));
  }

  return 1;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew()(uint64_t a1)
{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

id *specialized _ContiguousArrayBuffer._consumeAndCreateNew()(uint64_t a1)
{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return _ss22_ContiguousArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSd_Tg5_0(0, *(a1 + 16), 0, a1);
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_25:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v27 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (v12 << 10) | (16 * v17);
      v19 = (*(a4 + 48) + v18);
      v21 = *v19;
      v20 = v19[1];
      v22 = (*(a4 + 56) + v18);
      v23 = *v22;
      v24 = v22[1];
      *v11 = v21;
      v11[1] = v20;
      v11[2] = v23;
      v11[3] = v24;
      if (v14 == v10)
      {

        goto LABEL_23;
      }

      v11 += 4;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= v12 + 1)
    {
      v26 = v12 + 1;
    }

    else
    {
      v26 = v13;
    }

    v12 = v26 - 1;
    v10 = result;
LABEL_23:
    v7 = v27;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      outlined init with copy of AnyHashable(*(a4 + 48) + 40 * (v17 | (v12 << 6)), v22);
      v18 = v23;
      v19 = v22[1];
      *v11 = v22[0];
      *(v11 + 16) = v19;
      *(v11 + 32) = v18;
      if (v14 == v10)
      {
        goto LABEL_24;
      }

      v11 += 40;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_26;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t (*specialized protocol witness for Collection.subscript.read in conformance [A](uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v4;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for Collection.subscript.read in conformance [A]specialized ()
{
}

{
  return swift_unknownObjectRelease();
}

void (*specialized protocol witness for Collection.subscript.read in conformance [A](void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

id *specialized Array._copyToContiguousArray()(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = _CocoaArrayWrapper.endIndex.getter();
  if (!v3)
  {
LABEL_7:

    return _swiftEmptyArrayStorage;
  }

  v4 = v3;
  v5 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo25MRGroupSessionParticipant_p_Tt1g5(v3, 0);
  specialized Array._copyContents(initializing:)((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

BOOL specialized static SharePlayTogetherSession.Participant.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SocialProfile();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MusicKitInternal13SocialProfileVSgMd);
  __chkstk_darwin(v8 - 8);
  v10 = &v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MusicKitInternal13SocialProfileVSg_ADtMd);
  __chkstk_darwin(v11);
  v13 = &v22 - v12;
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v14 = *(a1 + 24);
  v15 = *(a2 + 24);
  if (v14)
  {
    if (!v15 || (*(a1 + 16) != *(a2 + 16) || v14 != v15) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v15)
  {
    return 0;
  }

  if (*(a1 + 32) != *(a2 + 32) || *(a1 + 33) != *(a2 + 33))
  {
    return 0;
  }

  v16 = *(type metadata accessor for SharePlayTogetherSession.Participant(0) + 32);
  v17 = *(v11 + 48);
  outlined init with copy of TaskPriority?(a1 + v16, v13, &_s16MusicKitInternal13SocialProfileVSgMd);
  outlined init with copy of TaskPriority?(a2 + v16, &v13[v17], &_s16MusicKitInternal13SocialProfileVSgMd);
  v18 = *(v5 + 48);
  if (v18(v13, 1, v4) == 1)
  {
    if (v18(&v13[v17], 1, v4) == 1)
    {
      outlined destroy of TaskPriority?(v13, &_s16MusicKitInternal13SocialProfileVSgMd);
      return 1;
    }

    goto LABEL_18;
  }

  outlined init with copy of TaskPriority?(v13, v10, &_s16MusicKitInternal13SocialProfileVSgMd);
  if (v18(&v13[v17], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_18:
    outlined destroy of TaskPriority?(v13, &_s16MusicKitInternal13SocialProfileVSg_ADtMd);
    return 0;
  }

  (*(v5 + 32))(v7, &v13[v17], v4);
  lazy protocol witness table accessor for type SocialProfile and conformance SocialProfile(&lazy protocol witness table cache variable for type SocialProfile and conformance SocialProfile, &type metadata accessor for SocialProfile);
  v20 = dispatch thunk of static Equatable.== infix(_:_:)();
  v21 = *(v5 + 8);
  v21(v7, v4);
  v21(v10, v4);
  outlined destroy of TaskPriority?(v13, &_s16MusicKitInternal13SocialProfileVSgMd);
  return (v20 & 1) != 0;
}

void outlined consume of QRCode?(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  if (a4)
  {
    outlined consume of Data._Representation(a2, a3);
  }
}

uint64_t block_copy_helper_40(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_destroy_helper_40()
{
}

{
}

uint64_t sub_10024DB0C()
{

  return swift_deallocObject();
}

uint64_t outlined assign with take of SocialProfile?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MusicKitInternal13SocialProfileVSgMd);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in SharePlayTogetherSession.groupSessionDidConnect(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in SharePlayTogetherSession.groupSessionDidConnect(_:)(a1, v4, v5, v7, v6);
}

uint64_t partial apply for closure #1 in SharePlayTogetherSession.groupSession(_:didInvalidateWithError:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in SharePlayTogetherSession.groupSession(_:didInvalidateWithError:)(a1, v4, v5, v7, v6);
}

uint64_t specialized SharePlayTogetherSession.groupSession(_:didUpdate:)(const char *a1, uint64_t a2, uint64_t a3)
{
  v6 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0);
  __chkstk_darwin(v7 - 8);
  v9 = &v19 - v8;
  if (one-time initialization token for sharePlayTogether != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.sharePlayTogether);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, a1, v13, 2u);
  }

  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
  type metadata accessor for MainActor();
  v15 = v6;
  v16 = static MainActor.shared.getter();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = &protocol witness table for MainActor;
  v17[4] = v15;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5_0(0, 0, v9, a3, v17);
}

void type metadata completion function for SharePlayTogetherSession()
{
  type metadata accessor for Published<String>(319, &lazy cache variable for type metadata for Published<String>, &type metadata for String, &type metadata accessor for Published);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Published<MPCPlayerResponse?>(319, &lazy cache variable for type metadata for Published<[SharePlayTogetherSession.Participant]>, &_sSay9MusicCore24SharePlayTogetherSessionC11ParticipantVGMd);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Published<String>(319, &lazy cache variable for type metadata for Published<Int>, &type metadata for Int, &type metadata accessor for Published);
      if (v2 <= 0x3F)
      {
        type metadata accessor for Published<MPCPlayerResponse?>(319, &lazy cache variable for type metadata for Published<SharePlayTogetherSession.Participant?>, &_s9MusicCore24SharePlayTogetherSessionC11ParticipantVSgMd);
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t sub_10024E1A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MusicKitInternal13SocialProfileVSgMd);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10024E274(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MusicKitInternal13SocialProfileVSgMd);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void type metadata completion function for SharePlayTogetherSession.Participant()
{
  type metadata accessor for Published<String>(319, &lazy cache variable for type metadata for String?, &type metadata for String, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    type metadata accessor for SocialProfile?();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for Published<String>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void type metadata accessor for SocialProfile?()
{
  if (!lazy cache variable for type metadata for SocialProfile?)
  {
    type metadata accessor for SocialProfile();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for SocialProfile?);
    }
  }
}

uint64_t objectdestroy_46Tm(void (*a1)(void))
{
  swift_unknownObjectRelease();
  a1(*(v1 + 32));

  return swift_deallocObject();
}

uint64_t sub_10024E4E4()
{

  return swift_deallocObject();
}

uint64_t outlined init with take of SharePlayTogetherSession.Participant(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharePlayTogetherSession.Participant(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type MRUserIdentity and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type MRUserIdentity and conformance NSObject;
  if (!lazy protocol witness table cache variable for type MRUserIdentity and conformance NSObject)
  {
    type metadata accessor for UIAction(255, &lazy cache variable for type metadata for MRUserIdentity);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MRUserIdentity and conformance NSObject);
  }

  return result;
}

uint64_t sub_10024E5E8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
  result = dispatch thunk of SocialProfileFilter.id.getter();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t lazy protocol witness table accessor for type SocialProfile and conformance SocialProfile(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t partial apply for closure #4 in SharePlayTogetherSession.updateParticipants()(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A22CatalogResourceRequestVy0aB8Internal13SocialProfileVGMd) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return closure #4 in SharePlayTogetherSession.updateParticipants()(a1, v6, v7, v1 + v5, v8);
}

uint64_t objectdestroy_101Tm(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v3 + 8))(v1 + v4, v2);

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #4 in SharePlayTogetherSession.updateParticipants()(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A14ItemCollectionVy0aB8Internal13SocialProfileVGMd) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in closure #4 in SharePlayTogetherSession.updateParticipants()(a1, v6, v7, v1 + v5, v8);
}

unint64_t lazy protocol witness table accessor for type MusicItemCollection<SocialProfile> and conformance MusicItemCollection<A>()
{
  result = lazy protocol witness table cache variable for type MusicItemCollection<SocialProfile> and conformance MusicItemCollection<A>;
  if (!lazy protocol witness table cache variable for type MusicItemCollection<SocialProfile> and conformance MusicItemCollection<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s8MusicKit0A14ItemCollectionVy0aB8Internal13SocialProfileVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MusicItemCollection<SocialProfile> and conformance MusicItemCollection<A>);
  }

  return result;
}

uint64_t outlined init with copy of SharePlayTogetherSession.Participant(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharePlayTogetherSession.Participant(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of SharePlayTogetherSession.Participant(uint64_t a1)
{
  v2 = type metadata accessor for SharePlayTogetherSession.Participant(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with take of SocialProfile?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MusicKitInternal13SocialProfileVSgMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10024EB60()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in SharePlayTogetherSession.groupSession(_:didUpdateMembers:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return closure #1 in SharePlayTogetherSession.groupSession(_:didUpdateMembers:)(a1, v4, v5, v6);
}

uint64_t partial apply for closure #1 in SharePlayTogetherSession.groupSession(_:didUpdatePendingParticipants:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in SharePlayTogetherSession.groupSession(_:didUpdate:)(a1, v4, v5, v6);
}

uint64_t objectdestroy_117Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in SharePlayTogetherSession.groupSession(_:didUpdate:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in SharePlayTogetherSession.groupSession(_:didUpdate:)(a1, v4, v5, v6);
}

uint64_t GroupActivitiesManager.initiateSession(with:alwaysPromptSharePlayPermissions:confirmReplacement:)(uint64_t a1, char a2, char a3)
{
  *(v4 + 225) = a3;
  *(v4 + 224) = a2;
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0);
  *(v4 + 32) = swift_task_alloc();
  v5 = type metadata accessor for GroupActivitiesManager.Activity(0);
  *(v4 + 40) = v5;
  v6 = *(v5 - 8);
  *(v4 + 48) = v6;
  *(v4 + 56) = *(v6 + 64);
  *(v4 + 64) = swift_task_alloc();
  *(v4 + 72) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities26AuthorizationPromptOptionsVSgMd);
  *(v4 + 80) = swift_task_alloc();
  *(v4 + 88) = type metadata accessor for GroupActivitiesManager.PrepareResult(0);
  *(v4 + 96) = swift_task_alloc();
  *(v4 + 104) = swift_task_alloc();
  *(v4 + 112) = swift_task_alloc();
  *(v4 + 120) = swift_task_alloc();
  *(v4 + 128) = swift_task_alloc();
  v7 = type metadata accessor for AuthorizationPromptOptions.PromptCondition();
  *(v4 + 136) = v7;
  *(v4 + 144) = *(v7 - 8);
  *(v4 + 152) = swift_task_alloc();
  v8 = type metadata accessor for AuthorizationPromptOptions();
  *(v4 + 160) = v8;
  *(v4 + 168) = *(v8 - 8);
  *(v4 + 176) = swift_task_alloc();
  *(v4 + 184) = type metadata accessor for MainActor();
  *(v4 + 192) = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v4 + 200) = v10;
  *(v4 + 208) = v9;

  return _swift_task_switch(GroupActivitiesManager.initiateSession(with:alwaysPromptSharePlayPermissions:confirmReplacement:), v10, v9);
}

uint64_t GroupActivitiesManager.initiateSession(with:alwaysPromptSharePlayPermissions:confirmReplacement:)()
{
  v2 = *(v0 + 168);
  v1 = *(v0 + 176);
  v3 = *(v0 + 160);
  v4 = *(v0 + 80);
  v5 = &enum case for AuthorizationPromptOptions.PromptCondition.always(_:);
  if (!*(v0 + 224))
  {
    v5 = &enum case for AuthorizationPromptOptions.PromptCondition.automatic(_:);
  }

  (*(*(v0 + 144) + 104))(*(v0 + 152), *v5, *(v0 + 136));
  AuthorizationPromptOptions.init(title:message:startForEveryone:startForMe:promptCondition:confirmReplacement:)();
  (*(v2 + 16))(v4, v1, v3);
  (*(v2 + 56))(v4, 0, 1, v3);
  v6 = swift_task_alloc();
  *(v0 + 216) = v6;
  *v6 = v0;
  v6[1] = GroupActivitiesManager.initiateSession(with:alwaysPromptSharePlayPermissions:confirmReplacement:);
  v7 = *(v0 + 128);
  v8 = *(v0 + 80);

  return GroupActivitiesManager.prepareForActivation(options:)(v7, v8);
}

{
  v1 = *v0;
  v2 = *(*v0 + 80);

  outlined destroy of TaskPriority?(v2, &_s15GroupActivities26AuthorizationPromptOptionsVSgMd);
  v3 = *(v1 + 208);
  v4 = *(v1 + 200);

  return _swift_task_switch(GroupActivitiesManager.initiateSession(with:alwaysPromptSharePlayPermissions:confirmReplacement:), v4, v3);
}

{
  v43 = v0;

  if (one-time initialization token for groupActivities != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = v0[16];
  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.groupActivities);
  outlined init with copy of GroupActivitiesManager.PrepareResult(v2, v1, type metadata accessor for GroupActivitiesManager.PrepareResult);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[15];
  if (v6)
  {
    v8 = v0[14];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v42 = v10;
    *v9 = 136446210;
    outlined init with copy of GroupActivitiesManager.PrepareResult(v7, v8, type metadata accessor for GroupActivitiesManager.PrepareResult);
    v11 = String.init<A>(describing:)();
    v13 = v12;
    outlined destroy of GroupActivitiesManager.PrepareResult(v7, type metadata accessor for GroupActivitiesManager.PrepareResult);
    v14 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v11, v13, &v42);

    *(v9 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "prepareForActivation result=%{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
  }

  else
  {

    outlined destroy of GroupActivitiesManager.PrepareResult(v7, type metadata accessor for GroupActivitiesManager.PrepareResult);
  }

  v15 = v0[13];
  v16 = v0[5];
  v17 = v0[6];
  outlined init with copy of GroupActivitiesManager.PrepareResult(v0[16], v15, type metadata accessor for GroupActivitiesManager.PrepareResult);
  v18 = *(v17 + 48);
  if (v18(v15, 4, v16))
  {
    v19 = v0[16];
    v21 = v0[12];
    v20 = v0[13];
    v22 = v0[5];
    (*(v0[21] + 8))(v0[22], v0[20]);
    outlined destroy of GroupActivitiesManager.PrepareResult(v20, type metadata accessor for GroupActivitiesManager.PrepareResult);
    outlined init with take of GroupActivitiesManager.PrepareResult(v19, v21, type metadata accessor for GroupActivitiesManager.PrepareResult);
    if ((v18(v21, 4, v22) | 2) == 3)
    {
      v41 = 0;
    }

    else
    {
      outlined destroy of GroupActivitiesManager.PrepareResult(v0[12], type metadata accessor for GroupActivitiesManager.PrepareResult);
      v41 = 1;
    }
  }

  else
  {
    v23 = v0[21];
    v39 = v0[20];
    v40 = v0[22];
    v38 = v0[16];
    v25 = v0[8];
    v24 = v0[9];
    v26 = v0[6];
    v27 = v0[3];
    v28 = v0[4];
    v37 = v28;
    v29 = v0[2];
    outlined init with take of GroupActivitiesManager.PrepareResult(v0[13], v24, type metadata accessor for GroupActivitiesManager.Activity);
    GroupActivitiesManager.beginMeasuringInitiationTime()();
    v30 = type metadata accessor for TaskPriority();
    v41 = 1;
    (*(*(v30 - 8) + 56))(v28, 1, 1, v30);
    outlined init with copy of GroupActivitiesManager.PrepareResult(v24, v25, type metadata accessor for GroupActivitiesManager.Activity);
    v31 = v29;

    v32 = static MainActor.shared.getter();
    v33 = (*(v26 + 80) + 48) & ~*(v26 + 80);
    v34 = swift_allocObject();
    v34[2] = v32;
    v34[3] = &protocol witness table for MainActor;
    v34[4] = v29;
    v34[5] = v27;
    outlined init with take of GroupActivitiesManager.PrepareResult(v25, v34 + v33, type metadata accessor for GroupActivitiesManager.Activity);
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5_0(0, 0, v37, &async function pointer to partial apply for closure #1 in GroupActivitiesManager.initiateSession(with:alwaysPromptSharePlayPermissions:confirmReplacement:), v34);

    outlined destroy of GroupActivitiesManager.PrepareResult(v24, type metadata accessor for GroupActivitiesManager.Activity);
    outlined destroy of GroupActivitiesManager.PrepareResult(v38, type metadata accessor for GroupActivitiesManager.PrepareResult);
    (*(v23 + 8))(v40, v39);
  }

  v35 = v0[1];

  return v35(v41);
}

uint64_t GroupActivitiesManager.leave(performLeaveCommand:)(char a1)
{
  *(v2 + 136) = v1;
  *(v2 + 280) = a1;
  *(v2 + 144) = type metadata accessor for MainActor();
  *(v2 + 152) = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v2 + 160) = v4;
  *(v2 + 168) = v3;

  return _swift_task_switch(GroupActivitiesManager.leave(performLeaveCommand:), v4, v3);
}

uint64_t GroupActivitiesManager.leave(performLeaveCommand:)()
{
  if (one-time initialization token for groupActivities != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 176) = __swift_project_value_buffer(v1, static Logger.groupActivities);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 280);
    v5 = swift_slowAlloc();
    *v5 = 67240192;
    *(v5 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "👋🏻 Leaving session. Will perform leaveCommand=%{BOOL,public}d", v5, 8u);
  }

  v6 = *(v0 + 280);

  if (v6 == 1)
  {
    v7 = *(v0 + 136);
    v8 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_isLeaveCommandInProgress;
    *(v0 + 184) = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_isLeaveCommandInProgress;
    *(v7 + v8) = 1;
    swift_beginAccess();
    v9 = v7[5];
    v10 = v7[6];
    __swift_project_boxed_opaque_existential_0Tm(v7 + 2, v9);
    v11 = *(v9 - 8);
    v12 = swift_task_alloc();
    *(v0 + 192) = v12;
    (*(v11 + 16))();
    v13 = (*(v10 + 48))(v9, v10);
    *(v0 + 200) = v13;
    (*(v11 + 8))(v12, v9);
    if (v13)
    {
      v14 = *(v0 + 136);
      *(v0 + 40) = &type metadata for Player.LeaveSessionCommand;
      *(v0 + 48) = &protocol witness table for Player.LeaveSessionCommand;
      *(v0 + 208) = [objc_opt_self() systemRoute];
      *(v0 + 120) = v14;

      v15 = String.init<A>(reflecting:)();
      *(v0 + 80) = &type metadata for Player.CommandIssuerIdentity;
      *(v0 + 88) = &protocol witness table for Player.CommandIssuerIdentity;
      *(v0 + 56) = v15;
      *(v0 + 64) = v16;
      *(v0 + 216) = static MainActor.shared.getter();
      v18 = dispatch thunk of Actor.unownedExecutor.getter();
      *(v0 + 224) = v18;
      *(v0 + 232) = v17;

      return _swift_task_switch(GroupActivitiesManager.leave(performLeaveCommand:), v18, v17);
    }

    *(*(v0 + 136) + *(v0 + 184)) = 0;
  }

  else
  {
  }

  v19 = *(v0 + 136);
  v20 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session;
  if (*(v19 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session))
  {

    GroupSession.leave()();
  }

  v21 = *(v0 + 136);
  *(v19 + v20) = 0;

  GroupActivitiesManager.session.didset();
  v22 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_pendingSession;
  v23 = *(v21 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_pendingSession);
  if (v23)
  {

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "Leave completed, pending session found", v26, 2u);
    }

    *(v19 + v20) = v23;
    swift_retain_n();

    GroupActivitiesManager.session.didset();

    *(v21 + v22) = 0;
  }

  v27 = *(v0 + 8);

  return v27();
}

{
  v1 = v0[26];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore6PlayerC7Command_pGMd);
  v2 = swift_allocObject();
  v0[30] = v2;
  *(v2 + 16) = xmmword_1004F2400;
  outlined init with copy of ActionPerforming((v0 + 2), v2 + 32);
  v0[31] = static MainActor.shared.getter();
  v3 = swift_task_alloc();
  v0[32] = v3;
  *v3 = v0;
  v3[1] = GroupActivitiesManager.leave(performLeaveCommand:);

  return PlaybackController.perform(_:options:intent:issuer:)(v2, 0x10000, 1, v1, 0, (v0 + 7));
}

{

  v1 = *(v0 + 224);
  v2 = *(v0 + 232);

  return _swift_task_switch(GroupActivitiesManager.leave(performLeaveCommand:), v1, v2);
}

{
  v1 = *(v0 + 264);

  if (v1 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
    if (!v4)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      goto LABEL_5;
    }
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
    swift_unknownObjectRelease();
  }

  else if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    return _swift_task_switch(v4, v2, v3);
  }

LABEL_5:
  v5 = *(v0 + 200);

  outlined destroy of TaskPriority?(v0 + 56, &_s9MusicCore6PlayerC13CommandIssuer_pSgMd);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 16);

  v2 = *(v0 + 160);
  v3 = *(v0 + 168);
  v4 = GroupActivitiesManager.leave(performLeaveCommand:);

  return _swift_task_switch(v4, v2, v3);
}

{

  v1 = *(v0 + 224);
  v2 = *(v0 + 232);

  return _swift_task_switch(GroupActivitiesManager.leave(performLeaveCommand:), v1, v2);
}

{
  v1 = v0[26];
  v2 = v0[25];

  v3 = v0[20];
  v4 = v0[21];

  return _swift_task_switch(GroupActivitiesManager.leave(performLeaveCommand:), v3, v4);
}

{
  v20 = v0;

  outlined destroy of TaskPriority?((v0 + 7), &_s9MusicCore6PlayerC13CommandIssuer_pSgMd);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 2));

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[34];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v19 = v5;
    *v4 = 136446210;
    v0[16] = v3;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    v6 = String.init<A>(describing:)();
    v8 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v6, v7, &v19);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to perform leaveCommand with error=%{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v5);
  }

  else
  {
  }

  *(v0[17] + v0[23]) = 0;
  v9 = v0[17];
  v10 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session;
  if (*(v9 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session))
  {

    GroupSession.leave()();
  }

  v11 = v0[17];
  *(v9 + v10) = 0;

  GroupActivitiesManager.session.didset();
  v12 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_pendingSession;
  v13 = *(v11 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_pendingSession);
  if (v13)
  {

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Leave completed, pending session found", v16, 2u);
    }

    *(v9 + v10) = v13;
    swift_retain_n();

    GroupActivitiesManager.session.didset();

    *(v11 + v12) = 0;
  }

  v17 = v0[1];

  return v17();
}

{

  *(v0[17] + v0[23]) = 0;
  v1 = v0[17];
  v2 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session;
  if (*(v1 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session))
  {

    GroupSession.leave()();
  }

  v3 = v0[17];
  *(v1 + v2) = 0;

  GroupActivitiesManager.session.didset();
  v4 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_pendingSession;
  v5 = *(v3 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_pendingSession);
  if (v5)
  {

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Leave completed, pending session found", v8, 2u);
    }

    *(v1 + v2) = v5;
    swift_retain_n();

    GroupActivitiesManager.session.didset();

    *(v3 + v4) = 0;
  }

  v9 = v0[1];

  return v9();
}

uint64_t GroupActivitiesManager.leave(performLeaveCommand:)(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 264) = a1;
  *(v3 + 272) = v1;

  if (v1)
  {

    v4 = dispatch thunk of Actor.unownedExecutor.getter();
    v6 = v5;
    v7 = GroupActivitiesManager.leave(performLeaveCommand:);
  }

  else
  {
    v4 = dispatch thunk of Actor.unownedExecutor.getter();
    v6 = v8;
    v7 = GroupActivitiesManager.leave(performLeaveCommand:);
  }

  return _swift_task_switch(v7, v4, v6);
}

void GroupActivitiesManager.postEvent(_:participantID:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v191 = a3;
  v189 = a2;
  v6 = *(a1 + 8);
  v174 = *a1;
  v173 = v6;
  v7 = *(a1 + 24);
  v172 = *(a1 + 16);
  v171 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  __chkstk_darwin(v8 - 8);
  v178 = v160 - v9;
  v181 = type metadata accessor for GroupSessionEvent();
  v180 = *(v181 - 8);
  v10 = __chkstk_darwin(v181);
  v175 = v160 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v179 = v160 - v13;
  __chkstk_darwin(v12);
  v182 = v160 - v14;
  v170 = type metadata accessor for GroupSessionEvent.Action.QueueChange.Item();
  v166 = *(v170 - 8);
  __chkstk_darwin(v170);
  v168 = v160 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = type metadata accessor for GroupSessionEvent.Action.QueueChange();
  v165 = *(v169 - 8);
  __chkstk_darwin(v169);
  v167 = v160 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = type metadata accessor for GroupSessionEvent.Action();
  v184 = *(v185 - 8);
  v17 = __chkstk_darwin(v185);
  v177 = v160 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v183 = v160 - v19;
  v195 = type metadata accessor for UUID();
  v188 = *(v195 - 8);
  __chkstk_darwin(v195);
  v194 = v160 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities11ParticipantVSgMd);
  __chkstk_darwin(v21 - 8);
  v186 = v160 - v22;
  v196 = type metadata accessor for Participant();
  v197 = *(v196 - 8);
  v23 = __chkstk_darwin(v196);
  v176 = v160 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v198 = v160 - v26;
  v27 = __chkstk_darwin(v25);
  v193 = v160 - v28;
  __chkstk_darwin(v27);
  v190 = v160 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GMd);
  v31 = *(v30 - 8);
  v32 = __chkstk_darwin(v30);
  v34 = v160 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v36 = v160 - v35;
  swift_beginAccess();
  v37 = v3[7];
  v38 = v3[8];
  *(v3 + 7) = xmmword_1004F2EC0;
  v3[9] = 0;
  v3[10] = 0;
  outlined consume of SharedListening.Event.Alert?(v37, v38);
  swift_beginAccess();
  v40 = v3[5];
  v39 = v3[6];
  v41 = __swift_project_boxed_opaque_existential_0Tm(v3 + 2, v40);
  v42 = *(v40 - 8);
  __chkstk_darwin(v41);
  v44 = v160 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v42 + 16))(v44);
  v45 = (*(v39 + 56))(v40, v39);
  (*(v42 + 8))(v44, v40);
  v46 = [v45 applicationState];

  v187 = a1;
  if ((*(a1 + 48) | 4) == 4 && v46 || !*(v4 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session))
  {
    return;
  }

  GroupSession.state.getter();
  (*(v31 + 104))(v34, enum case for GroupSession.State.joined<A>(_:), v30);
  v48 = type metadata accessor for GroupActivitiesManager.Activity(0);
  lazy protocol witness table accessor for type GroupActivitiesManager.Activity and conformance GroupActivitiesManager.Activity(&lazy protocol witness table cache variable for type GroupActivitiesManager.Activity and conformance GroupActivitiesManager.Activity, type metadata accessor for GroupActivitiesManager.Activity);
  v160[0] = v48;
  v49 = static GroupSession.State.== infix(_:_:)();
  v50 = *(v31 + 8);
  v50(v34, v30);
  v50(v36, v30);
  if ((v49 & 1) == 0)
  {
LABEL_27:

    return;
  }

  v192 = String.rawIdentifier.getter(v189, v191);
  v164 = v51;
  v160[1] = v47;
  v52 = GroupSession.activeParticipants.getter();
  v53 = v52;
  v54 = v52 + 56;
  v55 = 1 << *(v52 + 32);
  v56 = -1;
  if (v55 < 64)
  {
    v56 = ~(-1 << v55);
  }

  v57 = v56 & *(v52 + 56);
  v58 = (v55 + 63) >> 6;
  v162 = (v197 + 16);
  v163 = (v197 + 32);
  v161 = v188 + 1;
  v188 = (v197 + 8);

  v59 = 0;
  v60 = v196;
  if (!v57)
  {
LABEL_9:
    while (1)
    {
      v61 = v59 + 1;
      if (__OFADD__(v59, 1))
      {
        break;
      }

      if (v61 >= v58)
      {

        v73 = 1;
        v74 = v190;
        v75 = v186;
        goto LABEL_22;
      }

      v57 = *(v54 + 8 * v61);
      ++v59;
      if (v57)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_82;
  }

  while (1)
  {
    v61 = v59;
LABEL_12:
    v62 = v53;
    v63 = v197;
    v64 = *(v53 + 48) + *(v197 + 72) * (__clz(__rbit64(v57)) | (v61 << 6));
    v65 = v193;
    (*(v197 + 16))(v193, v64, v60);
    v66 = v60;
    v67 = *(v63 + 32);
    v67(v198, v65, v66);
    v68 = v194;
    Participant.id.getter();
    v69 = UUID.uuidString.getter();
    v71 = v70;
    (*v161)(v68, v195);
    if (v69 == v192 && v71 == v164)
    {

      goto LABEL_21;
    }

    v72 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v72)
    {
      break;
    }

    v57 &= v57 - 1;
    v60 = v196;
    (*v188)(v198, v196);
    v59 = v61;
    v53 = v62;
    if (!v57)
    {
      goto LABEL_9;
    }
  }

LABEL_21:

  v75 = v186;
  v76 = v196;
  v67(v186, v198, v196);
  v60 = v76;
  v73 = 0;
  v74 = v190;
LABEL_22:
  v77 = v197;
  (*(v197 + 56))(v75, v73, 1, v60);

  if ((*(v77 + 48))(v75, 1, v60) == 1)
  {
    outlined destroy of TaskPriority?(v75, &_s15GroupActivities11ParticipantVSgMd);
    if (one-time initialization token for groupActivities == -1)
    {
LABEL_24:
      v78 = type metadata accessor for Logger();
      __swift_project_value_buffer(v78, static Logger.groupActivities);
      v79 = v191;

      v80 = Logger.logObject.getter();
      v81 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        v83 = swift_slowAlloc();
        *&v201[0] = v83;
        *v82 = 136446210;
        *(v82 + 4) = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v189, v79, v201);
        _os_log_impl(&_mh_execute_header, v80, v81, "No active participant with identifier=%{public}s", v82, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v83);
      }

      goto LABEL_27;
    }

LABEL_82:
    swift_once();
    goto LABEL_24;
  }

  v84 = v60;
  (*v163)(v74, v75, v60);
  v85 = *v187;
  v86 = *(v187 + 8);
  v87 = *(v187 + 9) | ((*(v187 + 13) | (*(v187 + 15) << 16)) << 32);
  v89 = *(v187 + 16);
  v88 = *(v187 + 24);
  v90 = *(v187 + 48);
  v91 = v86 | (v87 << 8);
  if (v90 <= 2)
  {
    if (*(v187 + 48))
    {
      v92 = v60;
      v93 = v185;
      v94 = v187;
      if (v90 != 1)
      {
        if (v90 == 2)
        {
          v95 = v183;
          static GroupSessionEvent.Action.skip(item:)();
          goto LABEL_53;
        }

        goto LABEL_76;
      }

      v95 = v183;
      static GroupSessionEvent.Action.react(with:)();
LABEL_53:
      (*v162)(v176, v74, v92);
      (*(v184 + 16))(v177, v95, v93);
      v122 = *(v94 + 8);
      v123 = *(v94 + 48);
      if (v123 == 4)
      {
        v124 = v181;
      }

      else
      {
        v124 = v181;
        v125 = v178;
        if (v123 == 5)
        {
          v127 = *(v94 + 32);
          v126 = *(v94 + 40);
          v128 = *(v94 + 16);
          v129 = *(v94 + 24);
          if (!(v122 | *v94 | v126 | v127 | v129 | v128) || *v94 == 2 && !(v126 | v122 | v127 | v129 | v128))
          {
            v130 = type metadata accessor for URL();
            (*(*(v130 - 8) + 56))(v125, 1, 1, v130);
LABEL_61:
            v131 = v182;
            GroupSessionEvent.init(originator:action:url:)();
            GroupSession.showNotice(_:)();
            v132 = v180;
            v133 = v179;
            if (one-time initialization token for groupActivities != -1)
            {
              swift_once();
            }

            v134 = type metadata accessor for Logger();
            __swift_project_value_buffer(v134, static Logger.groupActivities);
            v135 = *(v132 + 16);
            v135(v133, v131, v124);
            v136 = Logger.logObject.getter();
            v137 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v136, v137))
            {
              v138 = swift_slowAlloc();
              v139 = v124;
              v140 = swift_slowAlloc();
              *&v201[0] = v140;
              *v138 = 136446210;
              v135(v175, v133, v139);
              v141 = String.init<A>(describing:)();
              v143 = v142;
              v144 = *(v132 + 8);
              v144(v133, v139);
              v145 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v141, v143, v201);

              *(v138 + 4) = v145;
              _os_log_impl(&_mh_execute_header, v136, v137, "Posting event=%{public}s", v138, 0xCu);
              __swift_destroy_boxed_opaque_existential_0Tm(v140);

              v144(v182, v139);
              (*(v184 + 8))(v183, v185);
              (*v188)(v190, v196);
              return;
            }

            v146 = *(v132 + 8);
            v146(v133, v124);
            v146(v131, v124);
            (*(v184 + 8))(v95, v185);
            goto LABEL_66;
          }
        }
      }

      URL.init(string:)();
      goto LABEL_61;
    }

    v97 = (v166 + 8);
    v98 = (v165 + 8);
    v93 = v185;
    v99 = *v187;
    if (v86)
    {
      SharedListening.Event.Content.title.getter(v99, 1);
      v100 = v168;
      static GroupSessionEvent.Action.QueueChange.Item.container(_:)();
    }

    else
    {
      SharedListening.Event.Content.title.getter(v99, 0);
      v100 = v168;
      static GroupSessionEvent.Action.QueueChange.Item.song(_:)();
    }

    v121 = v167;
    static GroupSessionEvent.Action.QueueChange.added(_:)();
    (*v97)(v100, v170);
    v95 = v183;
    static GroupSessionEvent.Action.updatedQueue(_:)();
    (*v98)(v121, v169);
    v92 = v84;
LABEL_52:
    v94 = v187;
    goto LABEL_53;
  }

  if (v90 == 3)
  {
    static GroupSessionEvent.Action.start.getter();
    v101 = v4 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_activity;
    swift_beginAccess();
    v102 = (*(*(v160[0] - 8) + 48))(v101, 1);
    v92 = v60;
    v93 = v185;
    v94 = v187;
    if (v102 || (v147 = *(v101 + 7)) == 0 || (v148 = [*(v147 + 16) identifiers], v149 = objc_msgSend(v85, "identifiers"), v150 = objc_msgSend(v148, "intersectsSet:", v149), v148, v149, v95 = v183, (v150 & 1) == 0))
    {
      if (one-time initialization token for groupActivities != -1)
      {
        swift_once();
      }

      v103 = type metadata accessor for Logger();
      __swift_project_value_buffer(v103, static Logger.groupActivities);
      v104 = v174;
      v105 = Logger.logObject.getter();
      v106 = static os_log_type_t.default.getter();
      outlined destroy of SharedListening.Event(v94);
      if (os_log_type_enabled(v105, v106))
      {
        v107 = swift_slowAlloc();
        v108 = swift_slowAlloc();
        *&v201[0] = v108;
        *v107 = 136446210;
        v109 = v104;
        v110 = [v85 description];
        v111 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v113 = v112;

        outlined destroy of SharedListening.Event(v94);
        v114 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v111, v113, v201);

        *(v107 + 4) = v114;
        _os_log_impl(&_mh_execute_header, v105, v106, "Dispatching event for=%{public}s", v107, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v108);
      }

      type metadata accessor for UIAction(0, &lazy cache variable for type metadata for OS_dispatch_queue);
      v115 = static OS_dispatch_queue.main.getter();
      v116 = swift_allocObject();
      *(v116 + 16) = v4;
      v117 = *(v94 + 16);
      *(v116 + 24) = *v94;
      *(v116 + 40) = v117;
      *(v116 + 56) = *(v94 + 32);
      *(v116 + 72) = *(v94 + 48);
      v118 = v191;
      *(v116 + 80) = v189;
      *(v116 + 88) = v118;
      outlined init with copy of SharedListening.Event(v94, v201);

      OS_dispatch_queue.asyncAfter(_:block:)(partial apply for closure #2 in GroupActivitiesManager.postEvent(_:participantID:), v116);

      (*(v184 + 8))(v183, v185);
LABEL_66:
      (*v188)(v190, v92);
      return;
    }

    goto LABEL_53;
  }

  if (v90 == 4)
  {
    v119 = v183;
    static GroupSessionEvent.Action.updatedQueue.getter();
    v120 = v4[8];
    v198 = v4[7];
    v197 = v120;
    v4[7] = v85;
    *(v4 + 64) = v86;
    *(v4 + 71) = BYTE6(v87);
    *(v4 + 69) = WORD2(v87);
    *(v4 + 65) = v87;
    v4[9] = v89;
    v4[10] = v88;
    v95 = v119;
    outlined copy of SharedListening.Event.Alert?(v174, v173);
    v74 = v190;
    outlined consume of SharedListening.Event.Alert?(v198, v197);
    v92 = v84;
    v93 = v185;
    goto LABEL_52;
  }

  v92 = v60;
  v93 = v185;
  v94 = v187;
  if (v90 == 5)
  {
    v96 = *(v187 + 40) | *(v187 + 32) | v89 | v88 | v91;
    if (v85 == 1 && !v96)
    {
      v95 = v183;
      static GroupSessionEvent.Action.seek.getter();
      goto LABEL_53;
    }

    if (v85 == 3 && !v96)
    {
      v95 = v183;
      static GroupSessionEvent.Action.pause.getter();
      goto LABEL_53;
    }

    if (v85 == 4 && !v96)
    {
      v95 = v183;
      static GroupSessionEvent.Action.play.getter();
      goto LABEL_53;
    }
  }

LABEL_76:
  if (one-time initialization token for groupActivities != -1)
  {
    swift_once();
  }

  v151 = type metadata accessor for Logger();
  __swift_project_value_buffer(v151, static Logger.groupActivities);
  outlined init with copy of SharedListening.Event(v94, v201);
  v152 = Logger.logObject.getter();
  v153 = static os_log_type_t.default.getter();
  outlined destroy of SharedListening.Event(v94);
  if (os_log_type_enabled(v152, v153))
  {
    v154 = swift_slowAlloc();
    v155 = swift_slowAlloc();
    v200 = v155;
    *v154 = 136446210;
    v156 = *(v94 + 16);
    v201[0] = *v94;
    v201[1] = v156;
    v201[2] = *(v94 + 32);
    v202 = *(v94 + 48);
    outlined init with copy of SharedListening.Event(v94, v199);
    v157 = String.init<A>(describing:)();
    v159 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v157, v158, &v200);

    *(v154 + 4) = v159;
    _os_log_impl(&_mh_execute_header, v152, v153, "Event case not handle for event=%{public}s", v154, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v155);
  }

  (*v188)(v74, v92);
}

int64x2_t GroupActivitiesManager.Activity.Metadata.init()@<Q0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for GroupActivitiesManager.Activity.Metadata(0);
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  v3 = *(v2 + 28);
  v4 = type metadata accessor for URL();
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  result = vdupq_n_s64(0x4072C00000000000uLL);
  *(a1 + *(v2 + 32)) = result;
  return result;
}

uint64_t GroupActivitiesManager.Activity.Metadata.artworkSize.setter(double a1, double a2)
{
  result = type metadata accessor for GroupActivitiesManager.Activity.Metadata(0);
  v6 = (v2 + *(result + 32));
  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t GroupActivitiesManager.Activity.Metadata.init(modelObject:)(uint64_t a1, uint64_t a2)
{
  v2[19] = a1;
  v2[20] = a2;
  type metadata accessor for Locale();
  v2[21] = swift_task_alloc();
  v3 = type metadata accessor for String.LocalizationValue();
  v2[22] = v3;
  v2[23] = *(v3 - 8);
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();

  return _swift_task_switch(GroupActivitiesManager.Activity.Metadata.init(modelObject:), 0, 0);
}

uint64_t GroupActivitiesManager.Activity.Metadata.init(modelObject:)()
{
  v1 = *(v0 + 152);
  *(v1 + 4) = 0;
  v2 = type metadata accessor for GroupActivitiesManager.Activity.Metadata(0);
  v3 = *(v2 + 28);
  v4 = type metadata accessor for URL();
  (*(*(v4 - 8) + 56))(&v1[v3], 1, 1, v4);
  *&v1[*(v2 + 32)] = vdupq_n_s64(0x4072C00000000000uLL);
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = v5;
    v7 = [v5 title];
    if (v7)
    {
      v8 = v7;
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;
    }

    else
    {
      v18 = *(v0 + 192);
      v17 = *(v0 + 200);
      v19 = *(v0 + 176);
      v20 = *(v0 + 184);
      String.LocalizationValue.init(stringLiteral:)();
      (*(v20 + 16))(v18, v17, v19);
      if (one-time initialization token for module != -1)
      {
        swift_once();
      }

      v21 = *(v0 + 200);
      v22 = *(v0 + 176);
      v23 = *(v0 + 184);
      v24 = static NSBundle.module;
      static Locale.current.getter();
      v9 = String.init(localized:table:bundle:locale:comment:)();
      v11 = v25;
      (*(v23 + 8))(v21, v22);
    }

    v26 = [v6 artist];
    if (v26)
    {
      v27 = v26;
      v28 = [v26 name];

      if (v28)
      {
LABEL_12:
        v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v31 = v30;

LABEL_15:
        v43 = *(v0 + 152);
        v44 = [v6 artworkCatalog];
        goto LABEL_27;
      }
    }

    v143 = v11;
    v32 = v9;
    v33 = v1;
    v35 = *(v0 + 192);
    v34 = *(v0 + 200);
    v36 = *(v0 + 176);
    v37 = *(v0 + 184);
    String.LocalizationValue.init(stringLiteral:)();
    (*(v37 + 16))(v35, v34, v36);
    if (one-time initialization token for module == -1)
    {
LABEL_14:
      v38 = *(v0 + 200);
      v39 = *(v0 + 176);
      v40 = *(v0 + 184);
      v41 = static NSBundle.module;
      static Locale.current.getter();
      v29 = String.init(localized:table:bundle:locale:comment:)();
      v31 = v42;
      (*(v40 + 8))(v38, v39);
      v1 = v33;
      v9 = v32;
      v11 = v143;
      goto LABEL_15;
    }

LABEL_69:
    swift_once();
    goto LABEL_14;
  }

  objc_opt_self();
  v12 = swift_dynamicCastObjCClass();
  if (!v12)
  {
    objc_opt_self();
    v45 = swift_dynamicCastObjCClass();
    if (v45)
    {
      v6 = v45;
      v46 = [v45 name];
      if (v46)
      {
        v47 = v46;
        v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v11 = v48;
      }

      else
      {
        v74 = *(v0 + 192);
        v73 = *(v0 + 200);
        v75 = *(v0 + 176);
        v76 = *(v0 + 184);
        String.LocalizationValue.init(stringLiteral:)();
        (*(v76 + 16))(v74, v73, v75);
        if (one-time initialization token for module != -1)
        {
          swift_once();
        }

        v77 = *(v0 + 200);
        v78 = *(v0 + 176);
        v79 = *(v0 + 184);
        v80 = static NSBundle.module;
        static Locale.current.getter();
        v9 = String.init(localized:table:bundle:locale:comment:)();
        v11 = v81;
        (*(v79 + 8))(v77, v78);
      }

      v82 = [v6 providerName];
      if (v82)
      {
        v83 = v82;
        v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v31 = v84;
      }

      else
      {
        v29 = 0;
        v31 = 0;
      }

      goto LABEL_15;
    }

    objc_opt_self();
    v69 = swift_dynamicCastObjCClass();
    if (v69)
    {
      v6 = v69;
      v70 = [v69 title];
      if (v70)
      {
        v71 = v70;
        v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v11 = v72;
      }

      else
      {
        v90 = *(v0 + 192);
        v89 = *(v0 + 200);
        v91 = *(v0 + 176);
        v92 = *(v0 + 184);
        String.LocalizationValue.init(stringLiteral:)();
        (*(v92 + 16))(v90, v89, v91);
        if (one-time initialization token for module != -1)
        {
          swift_once();
        }

        v93 = *(v0 + 200);
        v94 = *(v0 + 176);
        v95 = *(v0 + 184);
        v96 = static NSBundle.module;
        static Locale.current.getter();
        v9 = String.init(localized:table:bundle:locale:comment:)();
        v11 = v97;
        (*(v95 + 8))(v93, v94);
      }

      v98 = [v6 artist];
      if (v98)
      {
        v99 = v98;
        v28 = [v98 name];

        if (v28)
        {
          goto LABEL_12;
        }
      }

      v143 = v11;
      v32 = v9;
      v33 = v1;
      v101 = *(v0 + 192);
      v100 = *(v0 + 200);
      v102 = *(v0 + 176);
      v103 = *(v0 + 184);
      String.LocalizationValue.init(stringLiteral:)();
      (*(v103 + 16))(v101, v100, v102);
      if (one-time initialization token for module == -1)
      {
        goto LABEL_14;
      }
    }

    else
    {
      objc_opt_self();
      v85 = swift_dynamicCastObjCClass();
      if (!v85)
      {
        objc_opt_self();
        v104 = swift_dynamicCastObjCClass();
        if (!v104)
        {
          _StringGuts.grow(_:)(29);

          v126 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo13MPModelObjectC14MusicUtilitiesE16LoggingComponentO_Tt0gq5Tf4g_n(&outlined read-only object #0 of GroupActivitiesManager.Activity.Metadata.init(modelObject:));
          v127 = MPModelObject.humanDescription(including:)(v126);
          v129 = v128;

          v130._countAndFlagsBits = v127;
          v130._object = v129;
          String.append(_:)(v130);

          return _assertionFailure(_:_:file:line:flags:)();
        }

        v105 = v104;
        v106 = [v104 title];
        if (v106)
        {
          v107 = v106;
          v108 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v110 = v109;
        }

        else
        {
          v132 = *(v0 + 192);
          v131 = *(v0 + 200);
          v133 = *(v0 + 176);
          v134 = *(v0 + 184);
          String.LocalizationValue.init(stringLiteral:)();
          (*(v134 + 16))(v132, v131, v133);
          if (one-time initialization token for module != -1)
          {
            swift_once();
          }

          v135 = *(v0 + 200);
          v136 = *(v0 + 176);
          v137 = *(v0 + 184);
          v138 = static NSBundle.module;
          static Locale.current.getter();
          v108 = String.init(localized:table:bundle:locale:comment:)();
          v110 = v139;
          (*(v137 + 8))(v135, v136);
        }

        v140 = *(v0 + 152);
        v44 = [v105 artworkCatalog];
        *v140 = v108;
        v140[1] = v110;
        *(v1 + 2) = 0;
        *(v1 + 3) = 0;
        if (v44)
        {
          goto LABEL_28;
        }

        goto LABEL_66;
      }

      v6 = v85;
      v86 = [v85 title];
      if (v86)
      {
        v87 = v86;
        v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v11 = v88;
      }

      else
      {
        v112 = *(v0 + 192);
        v111 = *(v0 + 200);
        v113 = *(v0 + 176);
        v114 = *(v0 + 184);
        String.LocalizationValue.init(stringLiteral:)();
        (*(v114 + 16))(v112, v111, v113);
        if (one-time initialization token for module != -1)
        {
          swift_once();
        }

        v115 = *(v0 + 200);
        v116 = *(v0 + 176);
        v117 = *(v0 + 184);
        v118 = static NSBundle.module;
        static Locale.current.getter();
        v9 = String.init(localized:table:bundle:locale:comment:)();
        v11 = v119;
        (*(v117 + 8))(v115, v116);
      }

      v120 = [v6 show];
      if (v120)
      {
        v121 = v120;
        v28 = [v120 title];

        if (v28)
        {
          goto LABEL_12;
        }
      }

      v143 = v11;
      v32 = v9;
      v33 = v1;
      v123 = *(v0 + 192);
      v122 = *(v0 + 200);
      v124 = *(v0 + 176);
      v125 = *(v0 + 184);
      String.LocalizationValue.init(stringLiteral:)();
      (*(v125 + 16))(v123, v122, v124);
      if (one-time initialization token for module == -1)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_69;
  }

  v13 = v12;
  v14 = [v12 name];
  if (v14)
  {
    v15 = v14;
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v16;
  }

  else
  {
    v50 = *(v0 + 192);
    v49 = *(v0 + 200);
    v51 = *(v0 + 176);
    v52 = *(v0 + 184);
    String.LocalizationValue.init(stringLiteral:)();
    (*(v52 + 16))(v50, v49, v51);
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v53 = *(v0 + 200);
    v54 = *(v0 + 176);
    v55 = *(v0 + 184);
    v56 = static NSBundle.module;
    static Locale.current.getter();
    v9 = String.init(localized:table:bundle:locale:comment:)();
    v11 = v57;
    (*(v55 + 8))(v53, v54);
  }

  v58 = [v13 curator];
  if (v58 && (v59 = v58, v60 = [v58 name], v59, v60))
  {
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v61;
  }

  else
  {
    v29 = 0;
    v31 = 0;
  }

  v43 = *(v0 + 152);
  v44 = MPModelPlaylist.preferredArtworkCatalog.getter();
LABEL_27:
  *v43 = v9;
  v43[1] = v11;
  *(v1 + 2) = v29;
  v43[3] = v31;
  if (v44)
  {
LABEL_28:
    *(v0 + 208) = v44;
    v62 = v44;
    type metadata accessor for GroupActivitiesManager.ArtworkCachingReference();
    v63 = swift_allocObject();
    *(v0 + 216) = v63;
    *(v63 + 16) = 0xD00000000000001ELL;
    *(v63 + 24) = 0x80000001004CE180;
    v64 = v62;
    v65 = objc_opt_self();
    v66 = String._bridgeToObjectiveC()();
    [v65 setCacheLimit:0 forCacheIdentifier:v66 cacheReference:v63];

    v67 = String._bridgeToObjectiveC()();

    [v64 setCacheIdentifier:v67 forCacheReference:v63];

    [v64 setFittingSize:{300.0, 300.0}];
    [v64 setDestinationScale:0.0];
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = GroupActivitiesManager.Activity.Metadata.init(modelObject:);
    v68 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo7UIImageCs5Error_pGMd);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned UIImage?, @unowned NSError?) -> () with result type UIImage;
    *(v0 + 104) = &block_descriptor_41;
    *(v0 + 112) = v68;
    [v64 requestImageWithCompletion:v0 + 80];

    return _swift_continuation_await(v0 + 16);
  }

LABEL_66:

  v141 = *(v0 + 8);

  return v141();
}

{
  v1 = *(*v0 + 48);
  *(*v0 + 224) = v1;
  if (v1)
  {
    v2 = GroupActivitiesManager.Activity.Metadata.init(modelObject:);
  }

  else
  {
    v2 = GroupActivitiesManager.Activity.Metadata.init(modelObject:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v1 = v0[26];
  v3 = v0[19];
  v2 = v0[20];
  v4 = v0[18];
  v5 = [v4 CGImage];

  *(v3 + 32) = v5;

  v6 = v0[1];

  return v6();
}

{
  v1 = v0[26];
  v3 = v0[19];
  v2 = v0[20];
  swift_willThrow();

  *(v3 + 32) = 0;

  v4 = v0[1];

  return v4();
}

uint64_t GroupActivitiesManager.Activity.init(with:metadata:coordinator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[21] = a3;
  v4[22] = a4;
  v4[19] = a1;
  v4[20] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore22GroupActivitiesManagerC8ActivityV8MetadataVSgMd);
  v4[23] = swift_task_alloc();

  return _swift_task_switch(GroupActivitiesManager.Activity.init(with:metadata:coordinator:), 0, 0);
}

uint64_t GroupActivitiesManager.Activity.init(with:metadata:coordinator:)()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = type metadata accessor for GroupActivitiesManager.Activity(0);
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  v4 = *(v3 + 32);
  v5 = type metadata accessor for GroupActivitiesManager.Activity.Metadata(0);
  v6 = *(v5 - 8);
  (*(v6 + 56))(v2 + v4, 1, 1, v5);
  if (v1 && (v7 = v1, v8 = [v7 sharedListeningProperties], v0[24] = v8, v7, v8))
  {
    v9 = v0[22];
    v10 = v0[21];
    v26 = v0[20];
    v27 = v0[23];
    v11 = v0[19];
    outlined destroy of TaskPriority?(v11, &_s9MusicCore26GroupActivitiesCoordinator_pSgMd);
    outlined init with copy of ActionPerforming(v9, v11);
    outlined assign with copy of PlaybackIntentDescriptor.IntentType?(v10, v2 + v4, &_s9MusicCore22GroupActivitiesManagerC8ActivityV8MetadataVSgMd);
    type metadata accessor for CodableListeningProperties();
    v12 = swift_allocObject();
    *(v12 + 16) = v8;
    *(v2 + 40) = v26;
    *(v2 + 48) = v12;
    outlined init with copy of TaskPriority?(v2 + v4, v27, &_s9MusicCore22GroupActivitiesManagerC8ActivityV8MetadataVSgMd);
    v13 = (*(v6 + 48))(v27, 1, v5);
    v14 = v0[23];
    if (v13 == 1)
    {
      v15 = v7;
      v16 = v8;
      outlined destroy of TaskPriority?(v14, &_s9MusicCore22GroupActivitiesManagerC8ActivityV8MetadataVSgMd);
      if (one-time initialization token for startingItemProperties != -1)
      {
        swift_once();
      }

      v17 = static GroupActivitiesManager.Activity.startingItemProperties;
      v0[2] = v0;
      v0[7] = v0 + 18;
      v0[3] = GroupActivitiesManager.Activity.init(with:metadata:coordinator:);
      v18 = swift_continuation_init();
      v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo20MPModelGenericObjectCs5Error_pGMd);
      v0[10] = _NSConcreteStackBlock;
      v0[11] = 1107296256;
      v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned UIImage?, @unowned NSError?) -> () with result type UIImage;
      v0[13] = &block_descriptor_138_0;
      v0[14] = v18;
      [v15 getRepresentativeObjectWithProperties:v17 completion:v0 + 10];

      return _swift_continuation_await(v0 + 2);
    }

    v24 = v0[21];
    __swift_destroy_boxed_opaque_existential_0Tm(v0[22]);
    outlined destroy of TaskPriority?(v24, &_s9MusicCore22GroupActivitiesManagerC8ActivityV8MetadataVSgMd);
    outlined destroy of TaskPriority?(v14, &_s9MusicCore22GroupActivitiesManagerC8ActivityV8MetadataVSgMd);

    v23 = v0[1];
  }

  else
  {
    v19 = v0[22];
    v20 = v0[21];
    v21 = v0[19];
    lazy protocol witness table accessor for type Errno and conformance Errno();
    swift_allocError();
    *v22 = 96;
    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_0Tm(v19);
    outlined destroy of TaskPriority?(v20, &_s9MusicCore22GroupActivitiesManagerC8ActivityV8MetadataVSgMd);
    outlined destroy of GroupActivitiesManager.PrepareResult(v21, type metadata accessor for GroupActivitiesManager.Activity);

    v23 = v0[1];
  }

  return v23();
}

{
  v1 = *(*v0 + 48);
  *(*v0 + 200) = v1;
  if (v1)
  {
    v2 = GroupActivitiesManager.Activity.init(with:metadata:coordinator:);
  }

  else
  {
    v2 = GroupActivitiesManager.Activity.init(with:metadata:coordinator:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v1 = v0[24];
  v2 = v0[21];
  v3 = v0[22];
  v4 = v0[18];
  v5 = v0[19];
  v6 = [v4 innermostModelObject];

  __swift_destroy_boxed_opaque_existential_0Tm(v3);
  outlined destroy of TaskPriority?(v2, &_s9MusicCore22GroupActivitiesManagerC8ActivityV8MetadataVSgMd);
  type metadata accessor for CodableModelObjectIdentity();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v5 + 56) = v7;

  v8 = v0[1];

  return v8();
}

{
  v1 = v0[24];
  v3 = v0[21];
  v2 = v0[22];
  v4 = v0[19];
  swift_willThrow();

  __swift_destroy_boxed_opaque_existential_0Tm(v2);
  outlined destroy of TaskPriority?(v3, &_s9MusicCore22GroupActivitiesManagerC8ActivityV8MetadataVSgMd);
  type metadata accessor for CodableModelObjectIdentity();
  swift_allocObject();
  swift_deallocPartialClassInstance();
  *(v4 + 56) = 0;

  v5 = v0[1];

  return v5();
}

uint64_t GroupActivitiesManager.Activity.metadata.getter(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v2[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore22GroupActivitiesManagerC8ActivityV8MetadataVSgMd);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v3 = type metadata accessor for GroupActivitiesManager.Activity.Metadata(0);
  v2[12] = v3;
  v2[13] = *(v3 - 8);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  type metadata accessor for GroupActivityMetadata.ActivityType();
  v2[16] = swift_task_alloc();

  return _swift_task_switch(GroupActivitiesManager.Activity.metadata.getter, 0, 0);
}

uint64_t GroupActivitiesManager.Activity.metadata.getter()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[11];
  v4 = v0[8];
  v5 = type metadata accessor for GroupActivityMetadata();
  v0[17] = v5;
  v6 = swift_allocBox();
  v8 = v7;
  v0[18] = v6;
  v0[19] = v7;
  GroupActivityMetadata.init()();
  GroupActivityMetadata.supportsContinuationOnTV.setter();
  static GroupActivityMetadata.ActivityType.listenTogether.getter();
  GroupActivityMetadata.type.setter();
  v9 = type metadata accessor for GroupActivitiesManager.Activity(0);
  outlined init with copy of TaskPriority?(v4 + *(v9 + 32), v3, &_s9MusicCore22GroupActivitiesManagerC8ActivityV8MetadataVSgMd);
  v10 = *(v2 + 48);
  v0[20] = v10;
  v0[21] = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v10(v3, 1, v1) != 1)
  {
    v22 = v0[15];
    v23 = v0[12];
    v24 = v0[9];
    v57 = v0[7];
    outlined init with take of GroupActivitiesManager.PrepareResult(v0[11], v22, type metadata accessor for GroupActivitiesManager.Activity.Metadata);

    GroupActivityMetadata.title.setter();

    GroupActivityMetadata.subtitle.setter();
    v25 = *(v22 + 32);
    GroupActivityMetadata.previewImage.setter();
    outlined init with copy of TaskPriority?(v22 + *(v23 + 28), v24, &_s10Foundation3URLVSgMd);
    GroupActivityMetadata.fallbackURL.setter();
    outlined destroy of GroupActivitiesManager.PrepareResult(v22, type metadata accessor for GroupActivitiesManager.Activity.Metadata);
    (*(*(v5 - 8) + 16))(v57, v8, v5);
    goto LABEL_30;
  }

  v11 = v0[8];
  outlined destroy of TaskPriority?(v0[11], &_s9MusicCore22GroupActivitiesManagerC8ActivityV8MetadataVSgMd);
  v12 = *(v11 + 56);
  if (!v12)
  {
    (*(*(v5 - 8) + 16))(v0[7], v8, v5);
    goto LABEL_30;
  }

  v13 = *(v12 + 16);
  v0[22] = v13;
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v14 = one-time initialization token for albumProperties;
    v15 = v13;
    if (v14 != -1)
    {
      swift_once();
    }

    v16 = static GroupActivitiesManager.Activity.albumProperties;
    v17 = objc_opt_self();
    v18 = objc_opt_self();
    v19 = v16;
    v20 = [v18 kindWithVariants:3];
    v21 = [v17 kindWithSongKind:v20];

    goto LABEL_25;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v26 = objc_opt_self();
    v27 = v13;
    v28 = specialized static MPModelPlaylistEntry.defaultMusicKind.getter();
    v21 = [v26 kindWithPlaylistEntryKind:v28 options:0];

    if (one-time initialization token for playlistProperties != -1)
    {
      swift_once();
    }

    v29 = static GroupActivitiesManager.Activity.playlistProperties;
  }

  else
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      type metadata accessor for UIAction(0, &lazy cache variable for type metadata for MPModelRadioStationKind);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v31 = v13;
      v21 = [ObjCClassFromMetadata identityKind];
      if (one-time initialization token for radioProperties != -1)
      {
        swift_once();
      }

      v29 = static GroupActivitiesManager.Activity.radioProperties;
    }

    else
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v32 = objc_opt_self();
        v33 = v13;
        v34 = [v32 kindWithVariants:7];
      }

      else
      {
        objc_opt_self();
        if (!swift_dynamicCastObjCClass())
        {
          objc_opt_self();
          if (!swift_dynamicCastObjCClass())
          {
            v51 = v13;
            _StringGuts.grow(_:)(29);

            v52 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo13MPModelObjectC14MusicUtilitiesE16LoggingComponentO_Tt0gq5Tf4g_n(&outlined read-only object #0 of GroupActivitiesManager.Activity.metadata.getter);
            v53 = MPModelObject.humanDescription(including:)(v52);
            v55 = v54;

            v56._countAndFlagsBits = v53;
            v56._object = v55;
            String.append(_:)(v56);

            return _assertionFailure(_:_:file:line:flags:)();
          }

          v49 = objc_opt_self();
          v50 = v13;
          v21 = [v49 kindWithVariants:3];
          if (one-time initialization token for movieProperties != -1)
          {
            swift_once();
          }

          v29 = static GroupActivitiesManager.Activity.movieProperties;
          goto LABEL_24;
        }

        v35 = objc_opt_self();
        v36 = v13;
        v34 = [v35 kindWithVariants:3];
      }

      v21 = v34;
      if (one-time initialization token for songProperties != -1)
      {
        swift_once();
      }

      v29 = static GroupActivitiesManager.Activity.songProperties;
    }
  }

LABEL_24:
  v19 = v29;
LABEL_25:
  v0[23] = v19;
  v0[24] = v21;
  outlined init with copy of TaskPriority?(v0[8], (v0 + 2), &_s9MusicCore26GroupActivitiesCoordinator_pSgMd);
  v37 = v0[5];
  if (v37)
  {
    v38 = v0[6];
    __swift_project_boxed_opaque_existential_0Tm(v0 + 2, v0[5]);
    v58 = (*(v38 + 8) + **(v38 + 8));
    v39 = swift_task_alloc();
    v0[25] = v39;
    *v39 = v0;
    v39[1] = GroupActivitiesManager.Activity.metadata.getter;
    v40 = v0[10];

    return v58(v40, v13, v21, v19, v37, v38);
  }

  v42 = v0[12];
  v43 = v0[13];
  v44 = v0[10];

  outlined destroy of TaskPriority?((v0 + 2), &_s9MusicCore26GroupActivitiesCoordinator_pSgMd);
  (*(v43 + 56))(v44, 1, 1, v42);
  v45 = v0[19];
  v46 = v0[17];
  v47 = v0[7];
  outlined destroy of TaskPriority?(v0[10], &_s9MusicCore22GroupActivitiesManagerC8ActivityV8MetadataVSgMd);
  (*(*(v46 - 8) + 16))(v47, v45, v46);
LABEL_30:
  $defer #1 () in GroupActivitiesManager.Activity.metadata.getter();

  v48 = v0[1];

  return v48();
}

{

  return _swift_task_switch(GroupActivitiesManager.Activity.metadata.getter, 0, 0);
}

{
  v1 = v0[20];
  v2 = v0[12];
  v3 = v0[10];
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 2));
  v4 = v1(v3, 1, v2);
  v5 = v0[23];
  v6 = v0[24];
  v7 = v0[22];
  if (v4 == 1)
  {

    v8 = v0[19];
    v9 = v0[17];
    v10 = v0[7];
    outlined destroy of TaskPriority?(v0[10], &_s9MusicCore22GroupActivitiesManagerC8ActivityV8MetadataVSgMd);
    (*(*(v9 - 8) + 16))(v10, v8, v9);
  }

  else
  {
    v11 = v0[19];
    v12 = v0[14];
    v13 = v0[9];
    v18 = v0[17];
    v19 = v0[7];
    v17 = v0[12];
    outlined init with take of GroupActivitiesManager.PrepareResult(v0[10], v12, type metadata accessor for GroupActivitiesManager.Activity.Metadata);

    GroupActivityMetadata.title.setter();

    GroupActivityMetadata.subtitle.setter();
    v14 = *(v12 + 32);
    GroupActivityMetadata.previewImage.setter();
    outlined init with copy of TaskPriority?(v12 + *(v17 + 28), v13, &_s10Foundation3URLVSgMd);
    GroupActivityMetadata.fallbackURL.setter();

    outlined destroy of GroupActivitiesManager.PrepareResult(v12, type metadata accessor for GroupActivitiesManager.Activity.Metadata);
    (*(*(v18 - 8) + 16))(v19, v11, v18);
  }

  $defer #1 () in GroupActivitiesManager.Activity.metadata.getter();

  v15 = v0[1];

  return v15();
}

void $defer #1 () in GroupActivitiesManager.Activity.metadata.getter()
{
  v0 = type metadata accessor for GroupActivityMetadata();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for groupActivities != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.groupActivities);

  v14 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136446210;
    v8 = swift_projectBox();
    swift_beginAccess();
    (*(v1 + 16))(v3, v8, v0);
    v9 = String.init<A>(reflecting:)();
    v11 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v9, v10, &v15);

    *(v6 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v14, v5, "Sending activity metadata=%{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
  }

  else
  {
    v12 = v14;
  }
}

void one-time initialization function for songProperties()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1004F2EF0;
  *(v0 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 40) = v1;
  *(v0 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 56) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So13MPPropertySetCtGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004F2EF0;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v4;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1004F2400;
  *(v5 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v5 + 40) = v6;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v8 = objc_opt_self();
  v9 = [v8 propertySetWithProperties:isa];

  *(inited + 48) = v9;
  *(inited + 56) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 64) = v10;
  v11 = Array._bridgeToObjectiveC()().super.isa;
  v12 = [v8 propertySetWithProperties:v11];

  *(inited + 72) = v12;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So13MPPropertySetCTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So13MPPropertySetCtMd);
  swift_arrayDestroy();
  v13 = objc_allocWithZone(MPPropertySet);
  v14 = Array._bridgeToObjectiveC()().super.isa;

  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for MPPropertySet);
  v15 = Dictionary._bridgeToObjectiveC()().super.isa;

  v16 = [v13 initWithProperties:v14 relationships:v15];

  static GroupActivitiesManager.Activity.songProperties = v16;
}

void one-time initialization function for tvEpisodeProperties()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1004F2EF0;
  *(v0 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 40) = v1;
  *(v0 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 56) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So13MPPropertySetCtGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004F2400;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v4;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1004F2400;
  *(v5 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v5 + 40) = v6;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v8 = [objc_opt_self() propertySetWithProperties:isa];

  *(inited + 48) = v8;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So13MPPropertySetCTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of TaskPriority?(inited + 32, &_sSS_So13MPPropertySetCtMd);
  v9 = objc_allocWithZone(MPPropertySet);
  v10 = Array._bridgeToObjectiveC()().super.isa;

  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for MPPropertySet);
  v11 = Dictionary._bridgeToObjectiveC()().super.isa;

  v12 = [v9 initWithProperties:v10 relationships:v11];

  static GroupActivitiesManager.Activity.tvEpisodeProperties = v12;
}

void one-time initialization function for playingProperties()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So13MPPropertySetCtGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004F2EB0;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v1;
  if (one-time initialization token for songProperties != -1)
  {
    swift_once();
  }

  v2 = static GroupActivitiesManager.Activity.songProperties;
  *(inited + 48) = static GroupActivitiesManager.Activity.songProperties;
  *(inited + 56) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 64) = v3;
  v4 = one-time initialization token for tvEpisodeProperties;
  v5 = v2;
  if (v4 != -1)
  {
    swift_once();
  }

  v6 = static GroupActivitiesManager.Activity.tvEpisodeProperties;
  *(inited + 72) = static GroupActivitiesManager.Activity.tvEpisodeProperties;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v7;
  v8 = one-time initialization token for movieProperties;
  v9 = v6;
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = static GroupActivitiesManager.Activity.movieProperties;
  *(inited + 96) = static GroupActivitiesManager.Activity.movieProperties;
  v11 = v10;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So13MPPropertySetCTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So13MPPropertySetCtMd);
  swift_arrayDestroy();
  v12 = objc_allocWithZone(MPPropertySet);
  isa = Array._bridgeToObjectiveC()().super.isa;
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for MPPropertySet);
  v14 = Dictionary._bridgeToObjectiveC()().super.isa;

  v15 = [v12 initWithProperties:isa relationships:v14];

  static GroupActivitiesManager.Activity.playingProperties = v15;
}

uint64_t *GroupActivitiesManager.Activity.playingProperties.unsafeMutableAddressor()
{
  if (one-time initialization token for playingProperties != -1)
  {
    swift_once();
  }

  return &static GroupActivitiesManager.Activity.playingProperties;
}

id static GroupActivitiesManager.Activity.playingProperties.getter()
{
  if (one-time initialization token for playingProperties != -1)
  {
    swift_once();
  }

  v1 = static GroupActivitiesManager.Activity.playingProperties;

  return v1;
}

void one-time initialization function for albumProperties()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1004F2EF0;
  *(v0 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 40) = v1;
  *(v0 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 56) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So13MPPropertySetCtGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004F2400;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v4;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1004F2400;
  *(v5 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v5 + 40) = v6;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v8 = [objc_opt_self() propertySetWithProperties:isa];

  *(inited + 48) = v8;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So13MPPropertySetCTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of TaskPriority?(inited + 32, &_sSS_So13MPPropertySetCtMd);
  v9 = objc_allocWithZone(MPPropertySet);
  v10 = Array._bridgeToObjectiveC()().super.isa;

  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for MPPropertySet);
  v11 = Dictionary._bridgeToObjectiveC()().super.isa;

  v12 = [v9 initWithProperties:v10 relationships:v11];

  static GroupActivitiesManager.Activity.albumProperties = v12;
}

void one-time initialization function for playlistProperties()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1004F2EF0;
  *(v0 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 40) = v1;
  *(v0 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 56) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So13MPPropertySetCtGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004F2400;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v4;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1004F2400;
  *(v5 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v5 + 40) = v6;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v8 = [objc_opt_self() propertySetWithProperties:isa];

  *(inited + 48) = v8;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So13MPPropertySetCTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of TaskPriority?(inited + 32, &_sSS_So13MPPropertySetCtMd);
  v9 = objc_allocWithZone(MPPropertySet);
  v10 = Array._bridgeToObjectiveC()().super.isa;

  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for MPPropertySet);
  v11 = Dictionary._bridgeToObjectiveC()().super.isa;

  v12 = [v9 initWithProperties:v10 relationships:v11];

  static GroupActivitiesManager.Activity.playlistProperties = v12;
}

void one-time initialization function for movieProperties(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1004F2EF0;
  *(v5 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v5 + 40) = v6;
  *(v5 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v5 + 56) = v7;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v9 = [objc_opt_self() propertySetWithProperties:isa];

  *a4 = v9;
}

id one-time initialization function for startingItemProperties()
{
  result = closure #1 in variable initialization expression of static GroupActivitiesManager.Activity.startingItemProperties();
  static GroupActivitiesManager.Activity.startingItemProperties = result;
  return result;
}

id closure #1 in variable initialization expression of static GroupActivitiesManager.Activity.startingItemProperties()
{
  if (one-time initialization token for playingProperties != -1)
  {
    swift_once();
  }

  v0 = static GroupActivitiesManager.Activity.playingProperties;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So13MPPropertySetCtGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004F2EB0;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v2;
  if (one-time initialization token for playlistProperties != -1)
  {
    swift_once();
  }

  v3 = static GroupActivitiesManager.Activity.playlistProperties;
  *(inited + 48) = static GroupActivitiesManager.Activity.playlistProperties;
  *(inited + 56) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 64) = v4;
  v5 = one-time initialization token for albumProperties;
  v6 = v3;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = static GroupActivitiesManager.Activity.albumProperties;
  *(inited + 72) = static GroupActivitiesManager.Activity.albumProperties;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v8;
  v9 = one-time initialization token for radioProperties;
  v10 = v7;
  if (v9 != -1)
  {
    swift_once();
  }

  v11 = static GroupActivitiesManager.Activity.radioProperties;
  *(inited + 96) = static GroupActivitiesManager.Activity.radioProperties;
  v12 = v11;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So13MPPropertySetCTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So13MPPropertySetCtMd);
  swift_arrayDestroy();
  v13 = objc_allocWithZone(MPPropertySet);
  isa = Array._bridgeToObjectiveC()().super.isa;
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for MPPropertySet);
  v15 = Dictionary._bridgeToObjectiveC()().super.isa;

  v16 = [v13 initWithProperties:isa relationships:v15];

  v17 = [v0 propertySetByCombiningWithPropertySet:v16];
  return v17;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance GroupActivitiesManager.Activity.CodingKey()
{
  if (*v0)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0xD00000000000001BLL;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance GroupActivitiesManager.Activity.CodingKey@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 0xD00000000000001BLL && 0x80000001004CE530 == a2;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001004CE550 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance GroupActivitiesManager.Activity.CodingKey(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GroupActivitiesManager.Activity.CodingKey and conformance GroupActivitiesManager.Activity.CodingKey();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance GroupActivitiesManager.Activity.CodingKey(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GroupActivitiesManager.Activity.CodingKey and conformance GroupActivitiesManager.Activity.CodingKey();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t GroupActivitiesManager.Activity.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy9MusicCore22GroupActivitiesManagerC8ActivityV9CodingKeyOGMd);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - v6;
  v8 = type metadata accessor for GroupActivitiesManager.Activity(0);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v11 + 2) = 0u;
  *(v11 + 3) = 0u;
  *v11 = 0u;
  *(v11 + 1) = 0u;
  v12 = *(v9 + 40);
  v13 = type metadata accessor for GroupActivitiesManager.Activity.Metadata(0);
  (*(*(v13 - 8) + 56))(&v11[v12], 1, 1, v13);
  __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
  lazy protocol witness table accessor for type GroupActivitiesManager.Activity.CodingKey and conformance GroupActivitiesManager.Activity.CodingKey();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v14 = v5;
    v15 = v18;
    type metadata accessor for CodableListeningProperties();
    v19 = 0;
    lazy protocol witness table accessor for type GroupActivitiesManager.Activity and conformance GroupActivitiesManager.Activity(&lazy protocol witness table cache variable for type CodableListeningProperties and conformance CodableListeningProperties, type metadata accessor for CodableListeningProperties);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v11 + 6) = v20;
    type metadata accessor for CodableModelObjectIdentity();
    v19 = 1;
    lazy protocol witness table accessor for type GroupActivitiesManager.Activity and conformance GroupActivitiesManager.Activity(&lazy protocol witness table cache variable for type CodableModelObjectIdentity and conformance CodableModelObjectIdentity, type metadata accessor for CodableModelObjectIdentity);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v16 = v20;
    (*(v14 + 8))(v7, v4);
    *(v11 + 7) = v16;
    outlined init with copy of GroupActivitiesManager.PrepareResult(v11, v15, type metadata accessor for GroupActivitiesManager.Activity);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return outlined destroy of GroupActivitiesManager.PrepareResult(v11, type metadata accessor for GroupActivitiesManager.Activity);
}

uint64_t GroupActivitiesManager.Activity.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy9MusicCore22GroupActivitiesManagerC8ActivityV9CodingKeyOGMd);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
  lazy protocol witness table accessor for type GroupActivitiesManager.Activity.CodingKey and conformance GroupActivitiesManager.Activity.CodingKey();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *(v3 + 48);
  HIBYTE(v10) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore26CodableListeningProperties33_4D3C9D6548BB3147DD0F1D268040B2BFLLCSgMd);
  lazy protocol witness table accessor for type CodableListeningProperties? and conformance <A> A?();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = *(v3 + 56);
    HIBYTE(v10) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore26CodableModelObjectIdentity33_4D3C9D6548BB3147DD0F1D268040B2BFLLCSgMd);
    lazy protocol witness table accessor for type CodableModelObjectIdentity? and conformance <A> A?();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t protocol witness for GroupActivity.metadata.getter in conformance GroupActivitiesManager.Activity(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return GroupActivitiesManager.Activity.metadata.getter(a1);
}

uint64_t key path getter for GroupActivitiesManager.State.isSharePlaySessionActive : GroupActivitiesManager.State@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type GroupActivitiesManager.Activity and conformance GroupActivitiesManager.Activity(&lazy protocol witness table cache variable for type GroupActivitiesManager.State and conformance GroupActivitiesManager.State, type metadata accessor for GroupActivitiesManager.State);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t GroupActivitiesManager.State.isSharePlaySessionActive.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type GroupActivitiesManager.Activity and conformance GroupActivitiesManager.Activity(&lazy protocol witness table cache variable for type GroupActivitiesManager.State and conformance GroupActivitiesManager.State, type metadata accessor for GroupActivitiesManager.State);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 16);
}

uint64_t GroupActivitiesManager.State.isSharePlaySessionActive.setter(uint64_t result)
{
  if (*(v1 + 16) == (result & 1))
  {
    *(v1 + 16) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    lazy protocol witness table accessor for type GroupActivitiesManager.Activity and conformance GroupActivitiesManager.Activity(&lazy protocol witness table cache variable for type GroupActivitiesManager.State and conformance GroupActivitiesManager.State, type metadata accessor for GroupActivitiesManager.State);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t key path getter for GroupActivitiesManager.State.isLoading : GroupActivitiesManager.State@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type GroupActivitiesManager.Activity and conformance GroupActivitiesManager.Activity(&lazy protocol witness table cache variable for type GroupActivitiesManager.State and conformance GroupActivitiesManager.State, type metadata accessor for GroupActivitiesManager.State);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 17);
  return result;
}

uint64_t GroupActivitiesManager.State.isLoading.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type GroupActivitiesManager.Activity and conformance GroupActivitiesManager.Activity(&lazy protocol witness table cache variable for type GroupActivitiesManager.State and conformance GroupActivitiesManager.State, type metadata accessor for GroupActivitiesManager.State);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 17);
}

uint64_t GroupActivitiesManager.State.isLoading.setter(uint64_t result)
{
  if (*(v1 + 17) == (result & 1))
  {
    *(v1 + 17) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    lazy protocol witness table accessor for type GroupActivitiesManager.Activity and conformance GroupActivitiesManager.Activity(&lazy protocol witness table cache variable for type GroupActivitiesManager.State and conformance GroupActivitiesManager.State, type metadata accessor for GroupActivitiesManager.State);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t GroupActivitiesManager.State.deinit()
{
  v1 = OBJC_IVAR____TtCC9MusicCore22GroupActivitiesManager5State___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t GroupActivitiesManager.State.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCC9MusicCore22GroupActivitiesManager5State___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t GroupActivitiesManager.coordinator.setter(__int128 *a1)
{
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0Tm(v1 + 16);
  outlined init with take of ActionPerforming(a1, v1 + 16);
  return swift_endAccess();
}

uint64_t GroupActivitiesManager.pendingNoticeAlert.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 56);
  outlined copy of SharedListening.Event.Alert?(v1, *(v0 + 64));
  return v1;
}

uint64_t GroupActivitiesManager.isSharePlaySessionActive.setter(char a1)
{
  result = swift_beginAccess();
  v4 = *(v1 + 96);
  v5 = a1 & 1;
  *(v1 + 96) = a1;
  if (v4 != v5)
  {
    v6 = *(v1 + 88);
    if (*(v6 + 16) == v5)
    {
      *(v6 + 16) = v5;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      lazy protocol witness table accessor for type GroupActivitiesManager.Activity and conformance GroupActivitiesManager.Activity(&lazy protocol witness table cache variable for type GroupActivitiesManager.State and conformance GroupActivitiesManager.State, type metadata accessor for GroupActivitiesManager.State);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  return result;
}

void (*GroupActivitiesManager.isSharePlaySessionActive.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  *(v3 + 32) = v1;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + 96);
  return GroupActivitiesManager.isSharePlaySessionActive.modify;
}

void GroupActivitiesManager.isSharePlaySessionActive.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  v4 = v2[4];
  if (a2)
  {
    GroupActivitiesManager.isSharePlaySessionActive.setter(v3);
  }

  else
  {
    v5 = *(v4 + 96);
    *(v4 + 96) = v3;
    if (v3 != v5)
    {
      v6 = *(v2[4] + 88);
      if (v3 == *(v6 + 16))
      {
        *(v6 + 16) = v3;
      }

      else
      {
        KeyPath = swift_getKeyPath();
        __chkstk_darwin(KeyPath);
        v2[3] = v6;
        lazy protocol witness table accessor for type GroupActivitiesManager.Activity and conformance GroupActivitiesManager.Activity(&lazy protocol witness table cache variable for type GroupActivitiesManager.State and conformance GroupActivitiesManager.State, type metadata accessor for GroupActivitiesManager.State);
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      }
    }
  }

  free(v2);
}

uint64_t GroupActivitiesManager.participantsCount.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t key path getter for GroupActivitiesManager.participantsCount : GroupActivitiesManager@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t key path setter for GroupActivitiesManager.participantsCount : GroupActivitiesManager()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  return GroupActivitiesManager.participantsCount.didset(v1);
}

uint64_t GroupActivitiesManager.participantsCount.didset(uint64_t a1)
{
  v2 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v11 != a1)
  {
    if (one-time initialization token for groupActivities != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logger.groupActivities);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 134349056;
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      *(v8 + 4) = v11;

      _os_log_impl(&_mh_execute_header, v6, v7, "👤 Participants count update=%{public}ld", v8, 0xCu);
    }

    else
    {
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v9 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
    result = swift_beginAccess();
    if (*(v2 + v9) < v11)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      *(v2 + v9) = v10;
    }
  }

  return result;
}

uint64_t Logger.groupActivities.unsafeMutableAddressor()
{
  if (one-time initialization token for groupActivities != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v0, static Logger.groupActivities);
}

uint64_t key path setter for GroupActivitiesManager.$participantsCount : GroupActivitiesManager(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySi_GMd);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiGMd);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t GroupActivitiesManager.isLoading.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t key path getter for GroupActivitiesManager.isLoading : GroupActivitiesManager@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t key path setter for GroupActivitiesManager.isLoading : GroupActivitiesManager()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  return GroupActivitiesManager.isLoading.didset(v1);
}

uint64_t GroupActivitiesManager.isLoading.didset(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v11 != v3)
  {
    if (one-time initialization token for groupActivities != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logger.groupActivities);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 67240192;
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      *(v8 + 4) = v11;

      _os_log_impl(&_mh_execute_header, v6, v7, "⏳ Session is loading=%{BOOL,public}d", v8, 8u);
    }

    else
    {
    }

    v9 = *(v2 + 88);
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v11 == *(v9 + 17))
    {
      *(v9 + 17) = v11;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      lazy protocol witness table accessor for type GroupActivitiesManager.Activity and conformance GroupActivitiesManager.Activity(&lazy protocol witness table cache variable for type GroupActivitiesManager.State and conformance GroupActivitiesManager.State, type metadata accessor for GroupActivitiesManager.State);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    return GroupActivitiesManager.updateIsSharePlaySessionActive()();
  }

  return result;
}

uint64_t GroupActivitiesManager.updateIsSharePlaySessionActive()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GMd);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v64 = &v53[-v4];
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GSg_ALtMd);
  v5 = __chkstk_darwin(v67);
  v7 = &v53[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v53[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GSgMd);
  v11 = __chkstk_darwin(v10 - 8);
  v63 = &v53[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = __chkstk_darwin(v11);
  v66 = &v53[-v14];
  v15 = __chkstk_darwin(v13);
  v65 = &v53[-v16];
  v17 = __chkstk_darwin(v15);
  v19 = &v53[-v18];
  v20 = __chkstk_darwin(v17);
  v22 = &v53[-v21];
  __chkstk_darwin(v20);
  v24 = &v53[-v23];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v68)
  {
    goto LABEL_2;
  }

  v57 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session;
  v26 = *(v0 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session);
  v61 = v1;
  v59 = v7;
  if (v26)
  {

    GroupSession.state.getter();

    v27 = 0;
  }

  else
  {
    v27 = 1;
  }

  v28 = v3[7];
  v28(v24, v27, 1, v2);
  v55 = v3[13];
  v56 = v3 + 13;
  v55(v22, enum case for GroupSession.State.waiting<A>(_:), v2);
  v58 = v28;
  v28(v22, 0, 1, v2);
  v29 = *(v67 + 48);
  outlined init with copy of TaskPriority?(v24, v9, &_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GSgMd);
  outlined init with copy of TaskPriority?(v22, &v9[v29], &_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GSgMd);
  v62 = v3;
  v30 = v3[6];
  if (v30(v9, 1, v2) == 1)
  {
    outlined destroy of TaskPriority?(v22, &_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GSgMd);
    outlined destroy of TaskPriority?(v24, &_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GSgMd);
    if (v30(&v9[v29], 1, v2) == 1)
    {
      outlined destroy of TaskPriority?(v9, &_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GSgMd);
      v25 = 1;
      return GroupActivitiesManager.isSharePlaySessionActive.setter(v25);
    }

    goto LABEL_11;
  }

  outlined init with copy of TaskPriority?(v9, v19, &_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GSgMd);
  if (v30(&v9[v29], 1, v2) == 1)
  {
    outlined destroy of TaskPriority?(v22, &_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GSgMd);
    outlined destroy of TaskPriority?(v24, &_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GSgMd);
    (v62[1])(v19, v2);
LABEL_11:
    outlined destroy of TaskPriority?(v9, &_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GSg_ALtMd);
    v31 = v61;
    goto LABEL_12;
  }

  v35 = v62[4];
  v60 = v30;
  v36 = v64;
  v35(v64, &v9[v29], v2);
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type GroupSession<GroupActivitiesManager.Activity>.State and conformance GroupSession<A>.State, &_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GMd);
  v54 = dispatch thunk of static Equatable.== infix(_:_:)();
  v37 = v62[1];
  v38 = v36;
  v30 = v60;
  v37(v38, v2);
  outlined destroy of TaskPriority?(v22, &_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GSgMd);
  outlined destroy of TaskPriority?(v24, &_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GSgMd);
  v37(v19, v2);
  outlined destroy of TaskPriority?(v9, &_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GSgMd);
  v31 = v61;
  if ((v54 & 1) == 0)
  {
LABEL_12:
    v32 = *(v31 + v57);
    v60 = v30;
    if (v32)
    {

      v33 = v65;
      GroupSession.state.getter();

      v34 = 0;
    }

    else
    {
      v34 = 1;
      v33 = v65;
    }

    v39 = v66;
    v40 = v58;
    v58(v33, v34, 1, v2);
    v55(v39, enum case for GroupSession.State.joined<A>(_:), v2);
    v40(v39, 0, 1, v2);
    v41 = *(v67 + 48);
    v42 = v59;
    outlined init with copy of TaskPriority?(v33, v59, &_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GSgMd);
    outlined init with copy of TaskPriority?(v39, v42 + v41, &_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GSgMd);
    v43 = v60;
    if (v60(v42, 1, v2) == 1)
    {
      outlined destroy of TaskPriority?(v39, &_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GSgMd);
      outlined destroy of TaskPriority?(v33, &_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GSgMd);
      if (v43(v42 + v41, 1, v2) == 1)
      {
        outlined destroy of TaskPriority?(v42, &_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GSgMd);
        goto LABEL_2;
      }
    }

    else
    {
      v44 = v63;
      outlined init with copy of TaskPriority?(v42, v63, &_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GSgMd);
      if (v43(v42 + v41, 1, v2) != 1)
      {
        v49 = v62;
        v50 = v64;
        (v62[4])(v64, v42 + v41, v2);
        lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type GroupSession<GroupActivitiesManager.Activity>.State and conformance GroupSession<A>.State, &_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GMd);
        v51 = dispatch thunk of static Equatable.== infix(_:_:)();
        v52 = v49[1];
        v52(v50, v2);
        outlined destroy of TaskPriority?(v66, &_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GSgMd);
        outlined destroy of TaskPriority?(v33, &_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GSgMd);
        v52(v44, v2);
        outlined destroy of TaskPriority?(v42, &_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GSgMd);
        if (v51)
        {
          goto LABEL_2;
        }

LABEL_23:
        v45 = [objc_opt_self() standardUserDefaults];
        v46 = String._bridgeToObjectiveC()();
        v47 = [v45 BOOLForKey:v46];

        v25 = v47;
        return GroupActivitiesManager.isSharePlaySessionActive.setter(v25);
      }

      outlined destroy of TaskPriority?(v39, &_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GSgMd);
      outlined destroy of TaskPriority?(v33, &_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GSgMd);
      (v62[1])(v44, v2);
    }

    outlined destroy of TaskPriority?(v42, &_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GSg_ALtMd);
    goto LABEL_23;
  }

LABEL_2:
  v25 = 1;
  return GroupActivitiesManager.isSharePlaySessionActive.setter(v25);
}

uint64_t key path setter for GroupActivitiesManager.$isLoading : GroupActivitiesManager(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

double GroupActivitiesManager.reaction.getter@<D0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = *&v3;
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  return result;
}

double key path getter for GroupActivitiesManager.reaction : GroupActivitiesManager@<D0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = *&v3;
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  return result;
}

uint64_t key path setter for GroupActivitiesManager.reaction : GroupActivitiesManager(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  swift_getKeyPath();
  swift_getKeyPath();
  outlined copy of SharedListening.Reaction?(v1, v2);
  static Published.subscript.getter();

  v7[0] = v4;
  v7[1] = v5;
  v7[2] = v6;
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  GroupActivitiesManager.reaction.didset(v7);
  return outlined destroy of TaskPriority?(v7, &_s9MusicCore15SharedListeningO8ReactionVSgMd);
}

uint64_t GroupActivitiesManager.reaction.didset(uint64_t *a1)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[3];
  v50 = a1[2];
  v52 = v5;
  v6 = a1[5];
  v48 = a1[4];
  v51 = v6;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Participant();
  v47 = *(v11 - 8);
  __chkstk_darwin(v11);
  v46 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  v53 = v1;
  static Published.subscript.getter();

  v14 = v59;
  if (v59)
  {
    v42 = v11;
    v43 = v10;
    v44 = v8;
    v45 = v7;
    v15 = v58;
    v17 = v60;
    v16 = v61;
    v18 = v62;
    v19 = v63;
    v49 = v62;
    if (!v3)
    {

      v40 = v15;
      outlined consume of SharedListening.Reaction?(v15, v14);
      outlined consume of SharedListening.Reaction?(v4, 0);
      v20 = v18;
      goto LABEL_23;
    }

    v41 = v60;
    if (v58 == v4 && v59 == v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v17 = v41;
      if (v41 == v50 && v16 == v52 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        if (!v19)
        {
          if (!v51)
          {
            return outlined consume of SharedListening.Reaction?(v15, v14);
          }

          outlined init with copy of TaskPriority?(a1, &v58, &_s9MusicCore15SharedListeningO8ReactionVSgMd);

          v40 = v15;
          v21 = v15;
          v22 = v14;
          v20 = v49;
          goto LABEL_22;
        }

        if (v51)
        {
          if (v49 == v48 && v19 == v51)
          {

            outlined init with copy of TaskPriority?(a1, &v58, &_s9MusicCore15SharedListeningO8ReactionVSgMd);

LABEL_39:

            return outlined consume of SharedListening.Reaction?(v15, v14);
          }

          v37 = v49;
          v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

          outlined init with copy of TaskPriority?(a1, &v58, &_s9MusicCore15SharedListeningO8ReactionVSgMd);

          if (v38)
          {
            goto LABEL_39;
          }

          v40 = v15;
          v39 = v41;
          outlined consume of SharedListening.Reaction?(v15, v14);
          v20 = v37;
          v17 = v39;
LABEL_23:
          if (one-time initialization token for groupActivities != -1)
          {
            swift_once();
          }

          v23 = type metadata accessor for Logger();
          __swift_project_value_buffer(v23, static Logger.groupActivities);

          v24 = Logger.logObject.getter();
          v25 = static os_log_type_t.info.getter();

          if (os_log_type_enabled(v24, v25))
          {
            v26 = swift_slowAlloc();
            v27 = swift_slowAlloc();
            *&v57[0] = v27;
            *v26 = 136446210;
            v58 = v17;
            v59 = v16;

            v28 = String.init<A>(reflecting:)();
            v30 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v28, v29, v57);

            *(v26 + 4) = v30;
            _os_log_impl(&_mh_execute_header, v24, v25, "🌚 received: %{public}s)", v26, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v27);

            v20 = v49;
          }

          if (!v19)
          {
            goto LABEL_36;
          }

          if (*(v53 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session))
          {

            v31 = v46;
            GroupSession.localParticipant.getter();

            v32 = v43;
            Participant.id.getter();
            (*(v47 + 8))(v31, v42);
            v33 = UUID.uuidString.getter();
            v35 = v34;
            (*(v44 + 8))(v32, v45);
            if (v20 == v33 && v19 == v35)
            {

LABEL_36:

              swift_getKeyPath();
              swift_getKeyPath();
              static Published.subscript.getter();

              v57[0] = v54;
              v57[1] = v55;
              v57[2] = v56;
              swift_getKeyPath();
              swift_getKeyPath();
              v55 = 0u;
              v56 = 0u;
              v54 = 0u;

              static Published.subscript.setter();
              GroupActivitiesManager.reaction.didset(v57);
              return outlined destroy of TaskPriority?(v57, &_s9MusicCore15SharedListeningO8ReactionVSgMd);
            }

            v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v36)
            {

              goto LABEL_36;
            }
          }

          else
          {
          }

          v58 = v40;
          v59 = v14;
          v60 = v17;
          v61 = v16;
          v62 = v20;
          v63 = v19;
          v64 = 1;
          GroupActivitiesManager.postEvent(_:participantID:)(&v58, v20, v19);
          swift_bridgeObjectRelease_n();
          goto LABEL_36;
        }

        outlined init with copy of TaskPriority?(a1, &v58, &_s9MusicCore15SharedListeningO8ReactionVSgMd);
      }

      else
      {

        outlined init with copy of TaskPriority?(a1, &v58, &_s9MusicCore15SharedListeningO8ReactionVSgMd);
      }

      v40 = v15;
      v21 = v15;
      v22 = v14;
    }

    else
    {

      outlined init with copy of TaskPriority?(a1, &v58, &_s9MusicCore15SharedListeningO8ReactionVSgMd);

      v40 = v15;
      v21 = v15;
      v22 = v14;
      v17 = v41;
    }

    v20 = v49;
LABEL_22:
    outlined consume of SharedListening.Reaction?(v21, v22);
    goto LABEL_23;
  }

  return result;
}

uint64_t key path setter for GroupActivitiesManager.$reaction : GroupActivitiesManager(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy9MusicCore15SharedListeningO8ReactionVSg_GMd);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy9MusicCore15SharedListeningO8ReactionVSgGMd);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t GroupActivitiesManager.maxParticipantsCount.getter()
{
  v1 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t GroupActivitiesManager.hasJoined.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GMd);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v24 = &v23 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GSg_ALtMd);
  __chkstk_darwin(v4);
  v6 = &v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GSgMd);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v23 - v12;
  __chkstk_darwin(v11);
  v15 = &v23 - v14;
  if (*(v0 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session))
  {

    GroupSession.state.getter();

    v16 = *(v2 + 56);
    v16(v15, 0, 1, v1);
  }

  else
  {
    v16 = *(v2 + 56);
    v16(&v23 - v14, 1, 1, v1);
  }

  (*(v2 + 104))(v13, enum case for GroupSession.State.joined<A>(_:), v1);
  v16(v13, 0, 1, v1);
  v17 = *(v4 + 48);
  outlined init with copy of TaskPriority?(v15, v6, &_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GSgMd);
  outlined init with copy of TaskPriority?(v13, &v6[v17], &_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GSgMd);
  v18 = *(v2 + 48);
  if (v18(v6, 1, v1) != 1)
  {
    outlined init with copy of TaskPriority?(v6, v10, &_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GSgMd);
    if (v18(&v6[v17], 1, v1) != 1)
    {
      v20 = v24;
      (*(v2 + 32))(v24, &v6[v17], v1);
      lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type GroupSession<GroupActivitiesManager.Activity>.State and conformance GroupSession<A>.State, &_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GMd);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      v21 = *(v2 + 8);
      v21(v20, v1);
      outlined destroy of TaskPriority?(v13, &_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GSgMd);
      outlined destroy of TaskPriority?(v15, &_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GSgMd);
      v21(v10, v1);
      outlined destroy of TaskPriority?(v6, &_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GSgMd);
      return v19 & 1;
    }

    outlined destroy of TaskPriority?(v13, &_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GSgMd);
    outlined destroy of TaskPriority?(v15, &_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GSgMd);
    (*(v2 + 8))(v10, v1);
    goto LABEL_9;
  }

  outlined destroy of TaskPriority?(v13, &_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GSgMd);
  outlined destroy of TaskPriority?(v15, &_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GSgMd);
  if (v18(&v6[v17], 1, v1) != 1)
  {
LABEL_9:
    outlined destroy of TaskPriority?(v6, &_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GSg_ALtMd);
    v19 = 0;
    return v19 & 1;
  }

  outlined destroy of TaskPriority?(v6, &_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GSgMd);
  v19 = 1;
  return v19 & 1;
}

uint64_t GroupActivitiesManager.isSessionEligible.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v10[4] = v6;
  v10[5] = v7;
  v11 = v8;
  v12 = v9;
  v10[0] = v2;
  v10[1] = v3;
  v10[2] = v4;
  v10[3] = v5;
  if ((GroupActivitiesManager.hasJoined.getter() & 1) != 0 || (GroupStateObserver.isEligibleForGroupSession.getter() & 1) == 0)
  {
    outlined destroy of ApplicationCapabilities(v10);
    return 0;
  }

  else
  {
    if (v11 == 2)
    {

      outlined destroy of ApplicationCapabilities(v10);
      return BYTE1(v10[0]);
    }

    v1 = _stringCompareWithSmolCheck(_:_:expecting:)();

    outlined destroy of ApplicationCapabilities(v10);
    result = 0;
    if (v1)
    {
      return BYTE1(v10[0]);
    }
  }

  return result;
}

id GroupActivitiesManager.itemProvider(with:metadata:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore22GroupActivitiesManagerC8ActivityV8MetadataVSgMd);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v10 = &v47 - v9;
  if (a1)
  {
    goto LABEL_2;
  }

  v48 = v7;
  v50 = a2;
  swift_beginAccess();
  v19 = v2[5];
  v20 = v2[6];
  v21 = __swift_project_boxed_opaque_existential_0Tm(v2 + 2, v19);
  v49 = &v47;
  v22 = *(v19 - 8);
  __chkstk_darwin(v21);
  v24 = &v47 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v24);
  v25 = (*(v20 + 48))(v19, v20);
  (*(v22 + 8))(v24, v19);
  if (!v25)
  {
LABEL_12:
    if (one-time initialization token for groupActivities != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    v15 = __swift_project_value_buffer(v27, static Logger.groupActivities);

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v28, v29))
    {
      goto LABEL_21;
    }

    v30 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    *v30 = 136446466;
    v51 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17MPCPlaybackIntentCSgMd);
    v31 = String.init<A>(describing:)();
    v33 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v31, v32, &v53);

    *(v30 + 4) = v33;
    *(v30 + 12) = 2082;
    v34 = v3[5];
    v35 = v3[6];
    v36 = __swift_project_boxed_opaque_existential_0Tm(v3 + 2, v34);
    v50 = &v47;
    v37 = *(v34 - 8);
    __chkstk_darwin(v36);
    v39 = &v47 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v37 + 16))(v39);
    v40 = (*(v35 + 48))(v34, v35);
    (*(v37 + 8))(v39, v34);
    if (v40)
    {
      v41 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
      swift_beginAccess();
      if (*&v40[v41])
      {

        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        v42 = v52;
LABEL_20:
        v52 = v42;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17MPCPlayerResponseCSgMd);
        v43 = String.init<A>(describing:)();
        v15 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v43, v44, &v53);

        *(v30 + 14) = v15;
        _os_log_impl(&_mh_execute_header, v28, v29, "    Cannot build itemProvider with intent=%{public}s)\n    and player=%{public}s)", v30, 0x16u);
        swift_arrayDestroy();

LABEL_21:

        lazy protocol witness table accessor for type SharedListening.ErrorHandling.Error and conformance SharedListening.ErrorHandling.Error();
        swift_allocError();
        *v45 = 0;
        *(v45 + 8) = 4;
        swift_willThrow();
        return v15;
      }
    }

    v42 = 0;
    goto LABEL_20;
  }

  v26 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  swift_beginAccess();
  if (!*&v25[v26])
  {

    goto LABEL_12;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (!v51)
  {
    goto LABEL_12;
  }

  a2 = v50;
  v7 = v48;
LABEL_2:
  if (one-time initialization token for groupActivities != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logger.groupActivities);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v50 = a2;
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Building GroupActivity item provider", v14, 2u);
    a2 = v50;
  }

  v15 = [objc_allocWithZone(NSItemProvider) init];
  outlined init with copy of TaskPriority?(a2, v10, &_s9MusicCore22GroupActivitiesManagerC8ActivityV8MetadataVSgMd);
  v16 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  outlined init with take of GroupActivitiesManager.Activity.Metadata?(v10, v17 + v16);
  *(v17 + ((v8 + v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v3;
  type metadata accessor for GroupActivitiesManager.Activity(0);
  lazy protocol witness table accessor for type GroupActivitiesManager.Activity and conformance GroupActivitiesManager.Activity(&lazy protocol witness table cache variable for type GroupActivitiesManager.Activity and conformance GroupActivitiesManager.Activity, type metadata accessor for GroupActivitiesManager.Activity);
  v18 = a1;

  NSItemProvider.registerGroupActivity<A>(preparationHandler:)();

  return v15;
}

uint64_t closure #1 in GroupActivitiesManager.itemProvider(with:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a3;
  v4[13] = a4;
  v4[10] = a1;
  v4[11] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore22GroupActivitiesManagerC8ActivityV8MetadataVSgMd);
  v4[14] = swift_task_alloc();

  return _swift_task_switch(closure #1 in GroupActivitiesManager.itemProvider(with:metadata:), 0, 0);
}

uint64_t closure #1 in GroupActivitiesManager.itemProvider(with:metadata:)()
{
  v1 = *(v0 + 88);
  if (v1)
  {
    v2 = v1;
    v3 = swift_task_alloc();
    *(v0 + 120) = v3;
    *v3 = v0;
    v3[1] = closure #1 in GroupActivitiesManager.itemProvider(with:metadata:);

    return specialized static SharedListening.buildSharedSession(with:)(v2);
  }

  else
  {
    v5 = swift_task_alloc();
    *(v0 + 136) = v5;
    *(v5 + 16) = *(v0 + 96);
    *(v5 + 32) = 0;
    v6 = swift_task_alloc();
    *(v0 + 144) = v6;
    v7 = type metadata accessor for GroupActivitiesManager.Activity(0);
    *v6 = v0;
    v6[1] = closure #1 in GroupActivitiesManager.itemProvider(with:metadata:);
    v8 = *(v0 + 80);

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v8, 0, 0, 0xD00000000000001CLL, 0x80000001004CE570, partial apply for closure #1 in closure #1 in GroupActivitiesManager.itemProvider(with:metadata:), v5, v7);
  }
}

{
  v2 = *v1;
  *(v2 + 152) = v0;

  if (v0)
  {

    return _swift_task_switch(closure #1 in GroupActivitiesManager.itemProvider(with:metadata:), 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

{
  v1 = v0[20];
  v2 = v0[13];
  outlined init with copy of TaskPriority?(v0[12], v0[14], &_s9MusicCore22GroupActivitiesManagerC8ActivityV8MetadataVSgMd);
  swift_beginAccess();
  outlined init with copy of ActionPerforming(v2 + 16, (v0 + 2));
  v3 = v1;
  v4 = swift_task_alloc();
  v0[21] = v4;
  *v4 = v0;
  v4[1] = closure #1 in GroupActivitiesManager.itemProvider(with:metadata:);
  v5 = v0[20];
  v6 = v0[14];
  v7 = v0[10];

  return GroupActivitiesManager.Activity.init(with:metadata:coordinator:)(v7, v5, v6, (v0 + 2));
}

{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = closure #1 in GroupActivitiesManager.itemProvider(with:metadata:);
  }

  else
  {
    v2 = closure #1 in GroupActivitiesManager.itemProvider(with:metadata:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v0[23] = v0[16];
  v1 = v0[11];
  type metadata accessor for MainActor();
  v2 = v1;
  v0[24] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #1 in GroupActivitiesManager.itemProvider(with:metadata:), v4, v3);
}

{
  v1 = *(v0 + 88);

  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = *(v0 + 184);
  v2 = *(v0 + 88);

  GroupActivitiesManager.handleError(_:intent:)(v1, v2);

  return _swift_task_switch(closure #1 in GroupActivitiesManager.itemProvider(with:metadata:), 0, 0);
}

{
  v1 = *(v0 + 88);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

{

  *(v0 + 184) = *(v0 + 176);
  v1 = *(v0 + 88);
  type metadata accessor for MainActor();
  v2 = v1;
  *(v0 + 192) = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #1 in GroupActivitiesManager.itemProvider(with:metadata:), v4, v3);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in GroupActivitiesManager.itemProvider(with:metadata:)(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 128) = v1;

  if (v1)
  {
    v5 = closure #1 in GroupActivitiesManager.itemProvider(with:metadata:);
  }

  else
  {
    *(v4 + 160) = a1;
    v5 = closure #1 in GroupActivitiesManager.itemProvider(with:metadata:);
  }

  return _swift_task_switch(v5, 0, 0);
}

void GroupActivitiesManager.handleError(_:intent:)(uint64_t a1, void *a2)
{
  v3 = v2;
  *&v23[0] = a1;
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
  if (swift_dynamicCast())
  {
    v5 = *&v27[0];
    v6 = BYTE8(v27[0]);
    swift_beginAccess();
    v7 = v2[5];
    v8 = v2[6];
    v9 = __swift_project_boxed_opaque_existential_0Tm(v2 + 2, v7);
    v10 = *(v7 - 8);
    __chkstk_darwin(v9);
    v12 = &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v10 + 16))(v12);
    v13 = (*(v8 + 48))(v7, v8);
    (*(v10 + 8))(v12, v7);
    if (v13)
    {
      v14 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
      swift_beginAccess();
      v15 = *&v13[v14];
    }

    else
    {
      v15 = 0;
    }

    v16 = a2;

    SharedListening.ErrorHandling.Error.log()();
    SharedListening.ErrorHandling.Error.alert(with:)(a2, v3, v15, v5, v6, v23);
    if (v25)
    {
      v27[0] = v23[0];
      v27[1] = v23[1];
      v27[2] = v23[2];
      v28 = v24;
      v29 = v25;
      v30 = v26;
      outlined init with copy of ActionPerforming(v3 + 16, v20);
      v17 = v21;
      v18 = v22;
      __swift_project_boxed_opaque_existential_0Tm(v20, v21);
      (*(v18 + 32))(v27, v17, v18);
      outlined destroy of TaskPriority?(v23, &_s9MusicCore5AlertVSgMd);

      outlined consume of SharedListening.ErrorHandling.Error(v5, v6);
      __swift_destroy_boxed_opaque_existential_0Tm(v20);
    }

    else
    {

      outlined consume of SharedListening.ErrorHandling.Error(v5, v6);
    }
  }
}

uint64_t closure #1 in closure #1 in GroupActivitiesManager.itemProvider(with:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v27 = a3;
  v28 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy9MusicCore22GroupActivitiesManagerC8ActivityVs5Error_pGMd);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore22GroupActivitiesManagerC8ActivityV8MetadataVSgMd);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11 - 8);
  v15 = &v27 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0);
  __chkstk_darwin(v16 - 8);
  v18 = &v27 - v17;
  v19 = type metadata accessor for TaskPriority();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  outlined init with copy of TaskPriority?(a2, v15, &_s9MusicCore22GroupActivitiesManagerC8ActivityV8MetadataVSgMd);
  (*(v7 + 16))(v10, a1, v6);
  v20 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v21 = (v13 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = (*(v7 + 80) + v21 + 8) & ~*(v7 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  *(v23 + 24) = 0;
  outlined init with take of GroupActivitiesManager.Activity.Metadata?(v15, v23 + v20);
  *(v23 + v21) = v27;
  (*(v7 + 32))(v23 + v22, v10, v6);
  v24 = v28;
  *(v23 + ((v8 + v22 + 7) & 0xFFFFFFFFFFFFFFF8)) = v28;
  v25 = v24;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5_0(0, 0, v18, &async function pointer to partial apply for closure #1 in closure #1 in closure #1 in GroupActivitiesManager.itemProvider(with:metadata:), v23);
}

uint64_t closure #1 in closure #1 in closure #1 in GroupActivitiesManager.itemProvider(with:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[13] = a6;
  v7[14] = a7;
  v7[11] = a4;
  v7[12] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy9MusicCore22GroupActivitiesManagerC8ActivityVs5Error_pGMd);
  v7[15] = v8;
  v9 = *(v8 - 8);
  v7[16] = v9;
  v7[17] = *(v9 + 64);
  v7[18] = swift_task_alloc();
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore22GroupActivitiesManagerC8ActivityV8MetadataVSgMd) - 8);
  v7[19] = v10;
  v7[20] = *(v10 + 64);
  v7[21] = swift_task_alloc();

  return _swift_task_switch(closure #1 in closure #1 in closure #1 in GroupActivitiesManager.itemProvider(with:metadata:), 0, 0);
}

uint64_t closure #1 in closure #1 in closure #1 in GroupActivitiesManager.itemProvider(with:metadata:)()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[18];
  v4 = v0[19];
  v5 = v0[16];
  v6 = v0[15];
  v7 = v0[13];
  v23 = v0[12];
  outlined init with copy of TaskPriority?(v0[11], v1, &_s9MusicCore22GroupActivitiesManagerC8ActivityV8MetadataVSgMd);
  (*(v5 + 16))(v3, v7, v6);
  v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v9 = (v2 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (*(v5 + 80) + v9 + 8) & ~*(v5 + 80);
  v11 = swift_allocObject();
  v0[22] = v11;
  outlined init with take of GroupActivitiesManager.Activity.Metadata?(v1, v11 + v8);
  *(v11 + v9) = v23;
  (*(v5 + 32))(v11 + v10, v3, v6);
  v12 = objc_allocWithZone(ICLiveLinkIdentity);
  v0[6] = CFRange.init(_:);
  v0[7] = 0;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = thunk for @escaping @callee_guaranteed (@guaranteed MPIdentifierSet & MPMutableIdentifierSet) -> ();
  v0[5] = &block_descriptor_149;
  v13 = _Block_copy(v0 + 2);

  v14 = [v12 initWithBlock:v13];
  v0[23] = v14;
  _Block_release(v13);

  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
    __break(1u);
  }

  else
  {
    v16 = v0[12];
    swift_beginAccess();
    v17 = v16[5];
    v18 = v16[6];
    __swift_project_boxed_opaque_existential_0Tm(v16 + 2, v17);
    v19 = *(v17 - 8);
    v20 = swift_task_alloc();
    v0[24] = v20;
    (*(v19 + 16))();
    v21 = (*(v18 + 48))(v17, v18);
    v0[25] = v21;
    (*(v19 + 8))(v20, v17);
    v22 = swift_task_alloc();
    v0[26] = v22;
    *v22 = v0;
    v22[1] = closure #1 in closure #1 in closure #1 in GroupActivitiesManager.itemProvider(with:metadata:);

    return specialized static SharedListening.buildSharedSession(with:on:)(v14, partial apply for closure #1 in closure #1 in closure #1 in closure #1 in GroupActivitiesManager.itemProvider(with:metadata:), v11, v21);
  }

  return result;
}

{
  v2 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = closure #1 in closure #1 in closure #1 in GroupActivitiesManager.itemProvider(with:metadata:);
  }

  else
  {

    v3 = closure #1 in closure #1 in closure #1 in GroupActivitiesManager.itemProvider(with:metadata:);
  }

  return _swift_task_switch(v3, 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  type metadata accessor for MainActor();
  *(v0 + 224) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #1 in closure #1 in closure #1 in GroupActivitiesManager.itemProvider(with:metadata:), v2, v1);
}

{
  v1 = *(v0 + 216);
  v2 = *(v0 + 112);

  GroupActivitiesManager.handleError(_:intent:)(v1, v2);

  return _swift_task_switch(closure #1 in closure #1 in closure #1 in GroupActivitiesManager.itemProvider(with:metadata:), 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in GroupActivitiesManager.itemProvider(with:metadata:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a4;
  v30 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy9MusicCore22GroupActivitiesManagerC8ActivityVs5Error_pGMd);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v27 - v8;
  v28 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore22GroupActivitiesManagerC8ActivityV8MetadataVSgMd);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10 - 8);
  v14 = &v27 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0);
  __chkstk_darwin(v15 - 8);
  v17 = &v27 - v16;
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  outlined init with copy of TaskPriority?(a2, v14, &_s9MusicCore22GroupActivitiesManagerC8ActivityV8MetadataVSgMd);
  v19 = v9;
  v20 = v6;
  (*(v7 + 16))(v19, v29, v6);
  v21 = (*(v11 + 80) + 40) & ~*(v11 + 80);
  v22 = (v12 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = (*(v7 + 80) + v22 + 8) & ~*(v7 + 80);
  v24 = swift_allocObject();
  *(v24 + 2) = 0;
  *(v24 + 3) = 0;
  *(v24 + 4) = a1;
  outlined init with take of GroupActivitiesManager.Activity.Metadata?(v14, &v24[v21]);
  *&v24[v22] = v30;
  (*(v7 + 32))(&v24[v23], v28, v20);
  v25 = a1;

  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v17, &async function pointer to partial apply for closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in GroupActivitiesManager.itemProvider(with:metadata:), v24);
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in GroupActivitiesManager.itemProvider(with:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[12] = a6;
  v7[13] = a7;
  v7[10] = a4;
  v7[11] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore22GroupActivitiesManagerC8ActivityV8MetadataVSgMd);
  v7[14] = swift_task_alloc();
  type metadata accessor for GroupActivitiesManager.Activity(0);
  v7[15] = swift_task_alloc();
  v7[16] = swift_task_alloc();

  return _swift_task_switch(closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in GroupActivitiesManager.itemProvider(with:metadata:), 0, 0);
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in GroupActivitiesManager.itemProvider(with:metadata:)()
{
  v1 = v0[12];
  v2 = v0[10];
  outlined init with copy of TaskPriority?(v0[11], v0[14], &_s9MusicCore22GroupActivitiesManagerC8ActivityV8MetadataVSgMd);
  swift_beginAccess();
  outlined init with copy of ActionPerforming(v1 + 16, (v0 + 2));
  v3 = v2;
  v4 = swift_task_alloc();
  v0[17] = v4;
  *v4 = v0;
  v4[1] = closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in GroupActivitiesManager.itemProvider(with:metadata:);
  v5 = v0[16];
  v6 = v0[14];
  v7 = v0[10];

  return GroupActivitiesManager.Activity.init(with:metadata:coordinator:)(v5, v7, v6, (v0 + 2));
}

{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in GroupActivitiesManager.itemProvider(with:metadata:);
  }

  else
  {
    v2 = closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in GroupActivitiesManager.itemProvider(with:metadata:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v1 = v0[16];
  outlined init with copy of GroupActivitiesManager.PrepareResult(v1, v0[15], type metadata accessor for GroupActivitiesManager.Activity);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy9MusicCore22GroupActivitiesManagerC8ActivityVs5Error_pGMd);
  CheckedContinuation.resume(returning:)();
  outlined destroy of GroupActivitiesManager.PrepareResult(v1, type metadata accessor for GroupActivitiesManager.Activity);

  v2 = v0[1];

  return v2();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t GroupActivitiesManager.prepareForActivation(options:)(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = type metadata accessor for GroupActivityActivationResult();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v5 = type metadata accessor for GroupActivitiesManager.Activity(0);
  v3[15] = v5;
  v3[16] = *(v5 - 8);
  v3[17] = swift_task_alloc();

  return _swift_task_switch(GroupActivitiesManager.prepareForActivation(options:), 0, 0);
}

uint64_t GroupActivitiesManager.prepareForActivation(options:)()
{
  v26 = v0;
  if (one-time initialization token for groupActivities != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 144) = __swift_project_value_buffer(v1, static Logger.groupActivities);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "GroupActivitiesManager prepareForActivation", v4, 2u);
  }

  if ((GroupActivitiesManager.isSessionEligible.getter() & 1) == 0)
  {
    v12 = 1;
LABEL_11:
    (*(*(v0 + 128) + 56))(*(v0 + 56), v12, 4, *(v0 + 120));

    v13 = *(v0 + 8);

    return v13();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (*(v0 + 49))
  {
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v25 = v8;
      *v7 = 136446210;
      *(v0 + 40) = 1;
      *(v0 + 48) = 4;
      v9 = String.init<A>(describing:)();
      v11 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v9, v10, &v25);

      *(v7 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v5, v6, "Prepare error=%{public}s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v8);
    }

    v12 = 2;
    goto LABEL_11;
  }

  v15 = *(v0 + 136);
  v16 = *(v0 + 120);
  v17 = *(v0 + 72);
  *(v15 + 2) = 0u;
  *(v15 + 3) = 0u;
  *v15 = 0u;
  *(v15 + 1) = 0u;
  v18 = *(v16 + 32);
  v19 = type metadata accessor for GroupActivitiesManager.Activity.Metadata(0);
  (*(*(v19 - 8) + 56))(&v15[v18], 1, 1, v19);
  outlined destroy of TaskPriority?(v15, &_s9MusicCore26GroupActivitiesCoordinator_pSgMd);
  swift_beginAccess();
  outlined init with copy of ActionPerforming(v17 + 16, v15);
  v20 = swift_task_alloc();
  *(v0 + 152) = v20;
  v21 = lazy protocol witness table accessor for type GroupActivitiesManager.Activity and conformance GroupActivitiesManager.Activity(&lazy protocol witness table cache variable for type GroupActivitiesManager.Activity and conformance GroupActivitiesManager.Activity, type metadata accessor for GroupActivitiesManager.Activity);
  *v20 = v0;
  v20[1] = GroupActivitiesManager.prepareForActivation(options:);
  v22 = *(v0 + 112);
  v23 = *(v0 + 120);
  v24 = *(v0 + 64);

  return GroupActivity.prepareForActivation(options:)(v22, v24, v23, v21);
}

{

  return _swift_task_switch(GroupActivitiesManager.prepareForActivation(options:), 0, 0);
}

{
  v38 = v0;
  v1 = *(*(v0 + 88) + 16);
  v1(*(v0 + 104), *(v0 + 112), *(v0 + 80));
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 104);
  if (v4)
  {
    v7 = *(v0 + 88);
    v6 = *(v0 + 96);
    v8 = *(v0 + 80);
    v9 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v37 = v35;
    *v9 = 136446210;
    v1(v6, v5, v8);
    v10 = String.init<A>(reflecting:)();
    v12 = v11;
    v13 = *(v7 + 8);
    v13(v5, v8);
    v14 = v13;
    v15 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v10, v12, &v37);

    *(v9 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v2, v3, "User choice=%{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v35);
  }

  else
  {
    v16 = *(v0 + 80);
    v17 = *(v0 + 88);

    v14 = *(v17 + 8);
    v14(v5, v16);
  }

  v18 = *(v0 + 96);
  v19 = *(v0 + 80);
  v20 = *(*(v0 + 88) + 104);
  v20(v18, enum case for GroupActivityActivationResult.activationPreferred(_:), v19);
  v21 = static GroupActivityActivationResult.== infix(_:_:)();
  v14(v18, v19);
  v23 = *(v0 + 128);
  v22 = *(v0 + 136);
  v24 = *(v0 + 112);
  v36 = *(v0 + 120);
  if (v21)
  {
    v34 = *(v0 + 80);
    v25 = *(v0 + 56);
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v26 = *(v0 + 50);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 51) = 1;

    static Published.subscript.setter();
    GroupActivitiesManager.isLoading.didset(v26);
    v14(v24, v34);
    outlined init with copy of GroupActivitiesManager.PrepareResult(v22, v25, type metadata accessor for GroupActivitiesManager.Activity);
    (*(v23 + 56))(v25, 0, 4, v36);
  }

  else
  {
    v27 = *(v0 + 96);
    v28 = *(v0 + 80);
    v29 = *(v0 + 56);
    v20(v27, enum case for GroupActivityActivationResult.activationDisabled(_:), v28);
    v30 = static GroupActivityActivationResult.== infix(_:_:)();
    v14(v27, v28);
    v14(v24, v28);
    if (v30)
    {
      v31 = 3;
    }

    else
    {
      v31 = 4;
    }

    (*(v23 + 56))(v29, v31, 4, v36);
  }

  outlined destroy of GroupActivitiesManager.PrepareResult(v22, type metadata accessor for GroupActivitiesManager.Activity);

  v32 = *(v0 + 8);

  return v32();
}

uint64_t GroupActivitiesManager.beginMeasuringInitiationTime()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  __chkstk_darwin(v2 - 8);
  v4 = &v21 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14MusicUtilities8SignpostVSgMd);
  __chkstk_darwin(v5 - 8);
  v7 = &v21 - v6;
  v8 = type metadata accessor for Signpost();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for groupActivities != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Logger.groupActivities);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "beginMeasuringInitiationTime", v15, 2u);
  }

  if (one-time initialization token for sharePlay != -1)
  {
    swift_once();
  }

  v16 = static OS_os_log.sharePlay;

  Signpost.init(name:object:log:)("InitiationToFirstAudioFrame", 27, 2, v16, v11);
  Signpost.begin(dso:_:_:)(&_mh_execute_header, "enableTelemetry=YES", 19, 2, _swiftEmptyArrayStorage);
  outlined init with copy of GroupActivitiesManager.PrepareResult(v11, v7, type metadata accessor for Signpost);
  (*(v9 + 56))(v7, 0, 1, v8);
  v17 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_signpostInitiationToFirstAudioFrame;
  swift_beginAccess();
  outlined assign with take of PlaybackIntentDescriptor.IntentType?(v7, v1 + v17, &_s14MusicUtilities8SignpostVSgMd);
  swift_endAccess();
  Date.init()();
  outlined destroy of GroupActivitiesManager.PrepareResult(v11, type metadata accessor for Signpost);
  v18 = type metadata accessor for Date();
  (*(*(v18 - 8) + 56))(v4, 0, 1, v18);
  v19 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_autoBugCaptureIntervalBeginDate;
  swift_beginAccess();
  outlined assign with take of PlaybackIntentDescriptor.IntentType?(v4, v1 + v19, &_s10Foundation4DateVSgMd);
  return swift_endAccess();
}

uint64_t closure #1 in GroupActivitiesManager.initiateSession(with:alwaysPromptSharePlayPermissions:confirmReplacement:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[12] = a5;
  v6[13] = a6;
  v6[11] = a4;
  v7 = *(type metadata accessor for GroupActivitiesManager.Activity(0) - 8);
  v6[14] = v7;
  v6[15] = *(v7 + 64);
  v6[16] = swift_task_alloc();
  type metadata accessor for MainActor();
  v6[17] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[18] = v9;
  v6[19] = v8;

  return _swift_task_switch(closure #1 in GroupActivitiesManager.initiateSession(with:alwaysPromptSharePlayPermissions:confirmReplacement:), v9, v8);
}

uint64_t closure #1 in GroupActivitiesManager.initiateSession(with:alwaysPromptSharePlayPermissions:confirmReplacement:)()
{
  v1 = v0[11];
  if (v1)
  {
    v2 = v1;
    v3 = swift_task_alloc();
    v0[20] = v3;
    *v3 = v0;
    v3[1] = closure #1 in GroupActivitiesManager.initiateSession(with:alwaysPromptSharePlayPermissions:confirmReplacement:);

    return specialized static SharedListening.buildSharedSession(with:)(v2);
  }

  else
  {
    v5 = v0[16];
    v6 = v0[14];
    v7 = v0[12];
    outlined init with copy of GroupActivitiesManager.PrepareResult(v0[13], v5, type metadata accessor for GroupActivitiesManager.Activity);
    v8 = (*(v6 + 80) + 24) & ~*(v6 + 80);
    v9 = swift_allocObject();
    v0[22] = v9;
    *(v9 + 16) = v7;
    outlined init with take of GroupActivitiesManager.PrepareResult(v5, v9 + v8, type metadata accessor for GroupActivitiesManager.Activity);
    v10 = objc_allocWithZone(ICLiveLinkIdentity);
    v0[6] = CFRange.init(_:);
    v0[7] = 0;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = thunk for @escaping @callee_guaranteed (@guaranteed MPIdentifierSet & MPMutableIdentifierSet) -> ();
    v0[5] = &block_descriptor_221;
    v11 = _Block_copy(v0 + 2);

    v12 = [v10 initWithBlock:v11];
    v0[23] = v12;
    _Block_release(v11);

    result = swift_isEscapingClosureAtFileLocation();
    if (result)
    {
      __break(1u);
    }

    else
    {
      v13 = v0[12];
      swift_beginAccess();
      v14 = v13[5];
      v15 = v13[6];
      __swift_project_boxed_opaque_existential_0Tm(v13 + 2, v14);
      v16 = *(v14 - 8);
      v17 = swift_task_alloc();
      v0[24] = v17;
      (*(v16 + 16))();
      v18 = (*(v15 + 48))(v14, v15);
      v0[25] = v18;
      (*(v16 + 8))(v17, v14);
      v19 = swift_task_alloc();
      v0[26] = v19;
      *v19 = v0;
      v19[1] = closure #1 in GroupActivitiesManager.initiateSession(with:alwaysPromptSharePlayPermissions:confirmReplacement:);

      return specialized static SharedListening.buildSharedSession(with:on:)(v12, partial apply for closure #1 in closure #1 in GroupActivitiesManager.initiateSession(with:alwaysPromptSharePlayPermissions:confirmReplacement:), v9, v18);
    }
  }

  return result;
}

{
  v2 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = *(v2 + 144);
    v4 = *(v2 + 152);
    v5 = closure #1 in GroupActivitiesManager.initiateSession(with:alwaysPromptSharePlayPermissions:confirmReplacement:);
  }

  else
  {

    v3 = *(v2 + 144);
    v4 = *(v2 + 152);
    v5 = closure #1 in GroupActivitiesManager.initiateSession(with:alwaysPromptSharePlayPermissions:confirmReplacement:);
  }

  return _swift_task_switch(v5, v3, v4);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = *(v0 + 216);
  v2 = *(v0 + 200);
  v3 = *(v0 + 184);

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  LOBYTE(v2) = *(v0 + 240);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 241) = 0;

  static Published.subscript.setter();
  GroupActivitiesManager.isLoading.didset(v2);
  GroupActivitiesManager.handleError(_:intent:)(v1, 0);

  v4 = *(v0 + 8);

  return v4();
}

{
  v1 = *v0;

  v2 = *(v1 + 152);
  v3 = *(v1 + 144);

  return _swift_task_switch(closure #1 in GroupActivitiesManager.initiateSession(with:alwaysPromptSharePlayPermissions:confirmReplacement:), v3, v2);
}

{
  v1 = v0[28];
  v2 = v0[11];

  v3 = v0[1];

  return v3();
}

{
  v1 = *(v0 + 168);
  v2 = *(v0 + 88);

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v3 = *(v0 + 242);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 243) = 0;

  static Published.subscript.setter();
  GroupActivitiesManager.isLoading.didset(v3);
  v4 = v2;
  GroupActivitiesManager.handleError(_:intent:)(v1, v2);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t closure #1 in GroupActivitiesManager.initiateSession(with:alwaysPromptSharePlayPermissions:confirmReplacement:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 168) = v1;

  if (v1)
  {
    v6 = v4[18];
    v7 = v4[19];

    return _swift_task_switch(closure #1 in GroupActivitiesManager.initiateSession(with:alwaysPromptSharePlayPermissions:confirmReplacement:), v6, v7);
  }

  else
  {
    v4[28] = a1;
    v8 = swift_task_alloc();
    v4[29] = v8;
    *v8 = v5;
    v8[1] = closure #1 in GroupActivitiesManager.initiateSession(with:alwaysPromptSharePlayPermissions:confirmReplacement:);
    v9 = v4[13];

    return GroupActivitiesManager.activateIntent(_:with:)(a1, v9);
  }
}

uint64_t GroupActivitiesManager.activateIntent(_:with:)(uint64_t a1, uint64_t a2)
{
  v3[32] = a2;
  v3[33] = v2;
  v3[31] = a1;
  v3[34] = type metadata accessor for GroupActivitiesManager.Activity(0);
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();

  return _swift_task_switch(GroupActivitiesManager.activateIntent(_:with:), 0, 0);
}

uint64_t GroupActivitiesManager.activateIntent(_:with:)()
{
  v22 = v0;
  v1 = *(v0 + 248);
  if (v1)
  {
    v2 = v1;
    v3 = [v2 sharedListeningProperties];
    *(v0 + 304) = v3;
    if (v3)
    {
      if (one-time initialization token for startingItemProperties != -1)
      {
        swift_once();
      }

      v4 = static GroupActivitiesManager.Activity.startingItemProperties;
      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 224;
      *(v0 + 24) = GroupActivitiesManager.activateIntent(_:with:);
      v5 = swift_continuation_init();
      *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo20MPModelGenericObjectCs5Error_pGMd);
      *(v0 + 80) = _NSConcreteStackBlock;
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned UIImage?, @unowned NSError?) -> () with result type UIImage;
      *(v0 + 104) = &block_descriptor_227;
      *(v0 + 112) = v5;
      [v2 getRepresentativeObjectWithProperties:v4 completion:v0 + 80];

      return _swift_continuation_await(v0 + 16);
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v6 = *(v0 + 352);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 353) = 0;

  static Published.subscript.setter();
  GroupActivitiesManager.isLoading.didset(v6);
  if (one-time initialization token for groupActivities != -1)
  {
    swift_once();
  }

  v7 = *(v0 + 248);
  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.groupActivities);
  v9 = v7;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = *(v0 + 248);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v21 = v14;
    *v13 = 136446210;
    *(v0 + 216) = v12;
    v15 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17MPCPlaybackIntentCSgMd);
    v16 = String.init<A>(reflecting:)();
    v18 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v16, v17, &v21);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v10, v11, "Cannot activate intent=%{public}s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v14);
  }

  v19 = *(v0 + 8);

  return v19();
}

{
  v1 = *(*v0 + 48);
  *(*v0 + 312) = v1;
  if (v1)
  {
    v2 = GroupActivitiesManager.activateIntent(_:with:);
  }

  else
  {
    v2 = GroupActivitiesManager.activateIntent(_:with:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v36 = v0;
  v1 = v0[28];
  v0[40] = v1;
  if (one-time initialization token for groupActivities != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v0[41] = __swift_project_value_buffer(v2, static Logger.groupActivities);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v35 = v7;
    *v6 = 136446210;
    v0[30] = v1;
    v8 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20MPModelGenericObjectCSgMd);
    v9 = String.init<A>(describing:)();
    v11 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v9, v10, &v35);

    *(v6 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v4, v5, "Activity starting item=%{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
  }

  v12 = v0[37];
  v13 = v0[33];
  outlined init with copy of GroupActivitiesManager.PrepareResult(v0[32], v12, type metadata accessor for GroupActivitiesManager.Activity);
  outlined destroy of TaskPriority?(v12, &_s9MusicCore26GroupActivitiesCoordinator_pSgMd);
  swift_beginAccess();
  outlined init with copy of ActionPerforming(v13 + 16, v12);
  if (v3)
  {
    v14 = [v3 innermostModelObject];
    type metadata accessor for CodableModelObjectIdentity();
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
  }

  else
  {
    type metadata accessor for CodableModelObjectIdentity();
    swift_allocObject();
    swift_deallocPartialClassInstance();
    v15 = 0;
  }

  v17 = v0[37];
  v16 = v0[38];

  *(v17 + 56) = v15;
  type metadata accessor for CodableListeningProperties();
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  *(v17 + 48) = v18;
  v19 = v16;

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v23 = v0[36];
    v22 = v0[37];
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v35 = v25;
    *v24 = 136446210;
    swift_beginAccess();
    outlined init with copy of GroupActivitiesManager.PrepareResult(v22, v23, type metadata accessor for GroupActivitiesManager.Activity);
    v26 = String.init<A>(describing:)();
    v28 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v26, v27, &v35);

    *(v24 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v20, v21, "🚀 Activiting activity=%{public}s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v25);
  }

  v29 = v0[37];
  v30 = v0[35];
  swift_beginAccess();
  outlined init with copy of GroupActivitiesManager.PrepareResult(v29, v30, type metadata accessor for GroupActivitiesManager.Activity);
  v31 = swift_task_alloc();
  v0[42] = v31;
  v32 = lazy protocol witness table accessor for type GroupActivitiesManager.Activity and conformance GroupActivitiesManager.Activity(&lazy protocol witness table cache variable for type GroupActivitiesManager.Activity and conformance GroupActivitiesManager.Activity, type metadata accessor for GroupActivitiesManager.Activity);
  *v31 = v0;
  v31[1] = GroupActivitiesManager.activateIntent(_:with:);
  v33 = v0[34];

  return GroupActivity.activate()(v33, v32);
}

{
  v2 = *v1;
  *(*v1 + 344) = v0;

  outlined destroy of GroupActivitiesManager.PrepareResult(*(v2 + 280), type metadata accessor for GroupActivitiesManager.Activity);
  if (v0)
  {
    v3 = GroupActivitiesManager.activateIntent(_:with:);
  }

  else
  {
    v3 = GroupActivitiesManager.activateIntent(_:with:);
  }

  return _swift_task_switch(v3, 0, 0);
}

{
  v1 = *(v0 + 320);
  v2 = *(v0 + 296);
  v3 = *(v0 + 248);

  outlined destroy of GroupActivitiesManager.PrepareResult(v2, type metadata accessor for GroupActivitiesManager.Activity);

  v4 = *(v0 + 8);

  return v4();
}

{
  v31 = v0;
  swift_willThrow();

  v0[40] = 0;
  if (one-time initialization token for groupActivities != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[41] = __swift_project_value_buffer(v1, static Logger.groupActivities);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v30[0] = v5;
    *v4 = 136446210;
    v0[30] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20MPModelGenericObjectCSgMd);
    v6 = String.init<A>(describing:)();
    v8 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v6, v7, v30);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Activity starting item=%{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v5);
  }

  v9 = v0[37];
  v10 = v0[33];
  outlined init with copy of GroupActivitiesManager.PrepareResult(v0[32], v9, type metadata accessor for GroupActivitiesManager.Activity);
  outlined destroy of TaskPriority?(v9, &_s9MusicCore26GroupActivitiesCoordinator_pSgMd);
  swift_beginAccess();
  outlined init with copy of ActionPerforming(v10 + 16, v9);
  type metadata accessor for CodableModelObjectIdentity();
  swift_allocObject();
  swift_deallocPartialClassInstance();
  v12 = v0[37];
  v11 = v0[38];

  *(v12 + 56) = 0;
  type metadata accessor for CodableListeningProperties();
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  *(v12 + 48) = v13;
  v14 = v11;

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v18 = v0[36];
    v17 = v0[37];
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v30[0] = v20;
    *v19 = 136446210;
    swift_beginAccess();
    outlined init with copy of GroupActivitiesManager.PrepareResult(v17, v18, type metadata accessor for GroupActivitiesManager.Activity);
    v21 = String.init<A>(describing:)();
    v23 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v21, v22, v30);

    *(v19 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v15, v16, "🚀 Activiting activity=%{public}s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v20);
  }

  v24 = v0[37];
  v25 = v0[35];
  swift_beginAccess();
  outlined init with copy of GroupActivitiesManager.PrepareResult(v24, v25, type metadata accessor for GroupActivitiesManager.Activity);
  v26 = swift_task_alloc();
  v0[42] = v26;
  v27 = lazy protocol witness table accessor for type GroupActivitiesManager.Activity and conformance GroupActivitiesManager.Activity(&lazy protocol witness table cache variable for type GroupActivitiesManager.Activity and conformance GroupActivitiesManager.Activity, type metadata accessor for GroupActivitiesManager.Activity);
  *v26 = v0;
  v26[1] = GroupActivitiesManager.activateIntent(_:with:);
  v28 = v0[34];

  return GroupActivity.activate()(v28, v27);
}

{
  v20 = v0;
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 344);
    v4 = *(v0 + 320);
    v17 = *(v0 + 304);
    v18 = *(v0 + 296);
    v5 = *(v0 + 248);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v19 = v7;
    *v6 = 136446210;
    *(v0 + 232) = v3;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    v8 = String.init<A>(describing:)();
    v10 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v8, v9, &v19);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "Activation failed=%{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);

    v11 = v18;
  }

  else
  {
    v12 = *(v0 + 320);
    v13 = *(v0 + 296);
    v14 = *(v0 + 248);

    v11 = v13;
  }

  outlined destroy of GroupActivitiesManager.PrepareResult(v11, type metadata accessor for GroupActivitiesManager.Activity);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t closure #1 in closure #1 in GroupActivitiesManager.initiateSession(with:alwaysPromptSharePlayPermissions:confirmReplacement:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for GroupActivitiesManager.Activity(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0);
  __chkstk_darwin(v9 - 8);
  v11 = &v17 - v10;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  outlined init with copy of GroupActivitiesManager.PrepareResult(a3, &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GroupActivitiesManager.Activity);
  v13 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = a2;
  v14[5] = a1;
  outlined init with take of GroupActivitiesManager.PrepareResult(&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for GroupActivitiesManager.Activity);
  v15 = a1;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5_0(0, 0, v11, &async function pointer to partial apply for closure #1 in closure #1 in closure #1 in GroupActivitiesManager.initiateSession(with:alwaysPromptSharePlayPermissions:confirmReplacement:), v14);
}

uint64_t closure #1 in closure #1 in closure #1 in GroupActivitiesManager.initiateSession(with:alwaysPromptSharePlayPermissions:confirmReplacement:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return GroupActivitiesManager.activateIntent(_:with:)(a5, a6);
}

uint64_t String.rawIdentifier.getter(uint64_t a1, unint64_t a2)
{
  v4._countAndFlagsBits = 0x616C506572616853;
  v4._object = 0xEC0000003D444979;
  if (String.hasPrefix(_:)(v4))
  {
    specialized Collection.subscript.getter(0xC0007uLL, a1, a2);
    a1 = static String._fromSubstring(_:)();
  }

  else
  {
  }

  return a1;
}

uint64_t GroupActivitiesManager.sessionForReactionAssociation()()
{
  if (GroupActivitiesManager.hasJoined.getter())
  {
  }

  else
  {
    return 0;
  }
}

void GroupActivitiesManager.activity.didset()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore22GroupActivitiesManagerC8ActivityVSg_AFtMd);
  __chkstk_darwin(v1);
  v75 = &v67 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore22GroupActivitiesManagerC8ActivityVSgMd);
  v4 = __chkstk_darwin(v3 - 8);
  v74 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v8 = &v67 - v7;
  v9 = __chkstk_darwin(v6);
  v11 = &v67 - v10;
  __chkstk_darwin(v9);
  v13 = &v67 - v12;
  v14 = type metadata accessor for GroupActivitiesManager.Activity(0);
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v20 = __chkstk_darwin(v19);
  v22 = &v67 - v21;
  v23 = __chkstk_darwin(v20);
  v25 = &v67 - v24;
  v26 = __chkstk_darwin(v23);
  v29 = &v67 - v28;
  v77 = v0;
  if (*(v0 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session))
  {
    v71 = v27;
    v72 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session;
    v76 = v26;

    GroupSession.activity.getter();

    v30 = *(v29 + 6);
    if (!v30)
    {
      v37 = v29;
LABEL_9:
      outlined destroy of GroupActivitiesManager.PrepareResult(v37, type metadata accessor for GroupActivitiesManager.Activity);
      return;
    }

    v69 = v18;
    v70 = v25;
    v73 = *(v30 + 16);
    outlined destroy of GroupActivitiesManager.PrepareResult(v29, type metadata accessor for GroupActivitiesManager.Activity);
    v31 = v77 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_activity;
    swift_beginAccess();
    v32 = *(v15 + 48);
    if (!v32(v31, 1, v76))
    {
      type metadata accessor for CodableListeningProperties();
      v33 = swift_allocObject();
      v34 = v73;
      *(v33 + 16) = v73;
      *(v31 + 48) = v33;
      v35 = v34;
    }

    swift_endAccess();
    if ((GroupActivitiesManager.hasJoined.getter() & 1) == 0)
    {
      goto LABEL_16;
    }

    outlined init with copy of TaskPriority?(v31, v13, &_s9MusicCore22GroupActivitiesManagerC8ActivityVSgMd);
    v36 = v76;
    if (v32(v13, 1, v76) == 1)
    {

      outlined destroy of TaskPriority?(v13, &_s9MusicCore22GroupActivitiesManagerC8ActivityVSgMd);
      return;
    }

    v38 = v70;
    outlined init with take of GroupActivitiesManager.PrepareResult(v13, v70, type metadata accessor for GroupActivitiesManager.Activity);
    outlined init with copy of GroupActivitiesManager.PrepareResult(v38, v11, type metadata accessor for GroupActivitiesManager.Activity);
    v39 = 1;
    v68 = *(v15 + 56);
    v68(v11, 0, 1, v36);
    if (*(v77 + v72))
    {

      GroupSession.activity.getter();

      v39 = 0;
    }

    v41 = v75;
    v40 = v76;
    v68(v8, v39, 1, v76);
    v42 = *(v1 + 48);
    outlined init with copy of TaskPriority?(v11, v41, &_s9MusicCore22GroupActivitiesManagerC8ActivityVSgMd);
    outlined init with copy of TaskPriority?(v8, v41 + v42, &_s9MusicCore22GroupActivitiesManagerC8ActivityVSgMd);
    if (v32(v41, 1, v40) == 1)
    {
      outlined destroy of TaskPriority?(v8, &_s9MusicCore22GroupActivitiesManagerC8ActivityVSgMd);
      outlined destroy of TaskPriority?(v11, &_s9MusicCore22GroupActivitiesManagerC8ActivityVSgMd);
      v43 = v32(v41 + v42, 1, v40);
      v44 = v70;
      if (v43 == 1)
      {
        outlined destroy of TaskPriority?(v41, &_s9MusicCore22GroupActivitiesManagerC8ActivityVSgMd);
LABEL_15:
        outlined destroy of GroupActivitiesManager.PrepareResult(v44, type metadata accessor for GroupActivitiesManager.Activity);
LABEL_16:

        return;
      }
    }

    else
    {
      v45 = v74;
      outlined init with copy of TaskPriority?(v41, v74, &_s9MusicCore22GroupActivitiesManagerC8ActivityVSgMd);
      if (v32(v41 + v42, 1, v40) != 1)
      {
        outlined init with take of GroupActivitiesManager.PrepareResult(v41 + v42, v22, type metadata accessor for GroupActivitiesManager.Activity);
        v48 = *(v45 + 56);
        v44 = v70;
        if (v48)
        {
          v49 = *(v22 + 7);
          if (v49)
          {
            v50 = *(v49 + 16);
            v51 = *(v48 + 16);
            v52 = v50;
            v53 = [v51 identifiers];
            v54 = v41;
            v55 = [v52 identifiers];
            v56 = [v53 intersectsSet:v55];

            outlined destroy of GroupActivitiesManager.PrepareResult(v22, type metadata accessor for GroupActivitiesManager.Activity);
            outlined destroy of TaskPriority?(v8, &_s9MusicCore22GroupActivitiesManagerC8ActivityVSgMd);
            outlined destroy of TaskPriority?(v11, &_s9MusicCore22GroupActivitiesManagerC8ActivityVSgMd);
            outlined destroy of GroupActivitiesManager.PrepareResult(v74, type metadata accessor for GroupActivitiesManager.Activity);
            outlined destroy of TaskPriority?(v54, &_s9MusicCore22GroupActivitiesManagerC8ActivityVSgMd);
            if (v56)
            {
              goto LABEL_15;
            }

            goto LABEL_27;
          }
        }

        outlined destroy of GroupActivitiesManager.PrepareResult(v22, type metadata accessor for GroupActivitiesManager.Activity);
        outlined destroy of TaskPriority?(v8, &_s9MusicCore22GroupActivitiesManagerC8ActivityVSgMd);
        outlined destroy of TaskPriority?(v11, &_s9MusicCore22GroupActivitiesManagerC8ActivityVSgMd);
        outlined destroy of GroupActivitiesManager.PrepareResult(v74, type metadata accessor for GroupActivitiesManager.Activity);
        v47 = v41;
        v46 = &_s9MusicCore22GroupActivitiesManagerC8ActivityVSgMd;
LABEL_26:
        outlined destroy of TaskPriority?(v47, v46);
LABEL_27:
        if (*(v77 + v72))
        {
          outlined init with copy of GroupActivitiesManager.PrepareResult(v44, v71, type metadata accessor for GroupActivitiesManager.Activity);

          GroupSession.activity.setter();
        }

        if (one-time initialization token for groupActivities != -1)
        {
          swift_once();
        }

        v57 = type metadata accessor for Logger();
        __swift_project_value_buffer(v57, static Logger.groupActivities);
        v58 = v69;
        outlined init with copy of GroupActivitiesManager.PrepareResult(v44, v69, type metadata accessor for GroupActivitiesManager.Activity);
        v59 = Logger.logObject.getter();
        v60 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v59, v60))
        {
          v61 = swift_slowAlloc();
          v62 = swift_slowAlloc();
          v78[0] = v62;
          *v61 = 136446210;
          outlined init with copy of GroupActivitiesManager.PrepareResult(v58, v71, type metadata accessor for GroupActivitiesManager.Activity);
          v63 = String.init<A>(describing:)();
          v65 = v64;
          outlined destroy of GroupActivitiesManager.PrepareResult(v58, type metadata accessor for GroupActivitiesManager.Activity);
          v66 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v63, v65, v78);

          *(v61 + 4) = v66;
          _os_log_impl(&_mh_execute_header, v59, v60, "Updating session activity=%{public}s", v61, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v62);
        }

        else
        {

          outlined destroy of GroupActivitiesManager.PrepareResult(v58, type metadata accessor for GroupActivitiesManager.Activity);
        }

        v37 = v44;
        goto LABEL_9;
      }

      outlined destroy of TaskPriority?(v8, &_s9MusicCore22GroupActivitiesManagerC8ActivityVSgMd);
      outlined destroy of TaskPriority?(v11, &_s9MusicCore22GroupActivitiesManagerC8ActivityVSgMd);
      outlined destroy of GroupActivitiesManager.PrepareResult(v45, type metadata accessor for GroupActivitiesManager.Activity);
      v44 = v70;
    }

    v46 = &_s9MusicCore22GroupActivitiesManagerC8ActivityVSg_AFtMd;
    v47 = v41;
    goto LABEL_26;
  }
}

void (*GroupActivitiesManager.activity.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return GroupActivitiesManager.activity.modify;
}

void GroupActivitiesManager.activity.modify(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    GroupActivitiesManager.activity.didset();
  }
}

void GroupActivitiesManager.session.didset()
{
  v1 = v0;
  v102 = type metadata accessor for NSNotificationCenter.Publisher();
  v111 = *(v102 - 8);
  __chkstk_darwin(v102);
  v118 = &v95 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_So20NSNotificationCenterC10FoundationE9PublisherVSo17OS_dispatch_queueCGMd);
  v120 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v95 - v4;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy15GroupActivities0D7SessionC5StateOy9MusicCore0dE7ManagerC8ActivityV_G_GMd);
  v112 = *(v113 - 8);
  __chkstk_darwin(v113);
  v110 = &v95 - v6;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AA9PublishedV9PublisherVy15GroupActivities0G7SessionC5StateOy9MusicCore0gH7ManagerC8ActivityV_G_GSo17OS_dispatch_queueCGMd);
  v115 = *(v116 - 8);
  __chkstk_darwin(v116);
  v114 = &v95 - v7;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVyShy15GroupActivities11ParticipantVG_GMd);
  v103 = *(v104 - 8);
  __chkstk_darwin(v104);
  v97 = &v95 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AA9PublishedV9PublisherVyShy15GroupActivities11ParticipantVG_GSo17OS_dispatch_queueCGMd);
  v105 = *(v9 - 8);
  __chkstk_darwin(v9);
  v101 = &v95 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO3MapVy_AC9ReceiveOnVy_AA9PublishedV9PublisherVyShy15GroupActivities11ParticipantVG_GSo17OS_dispatch_queueCGSiGMd);
  v108 = *(v11 - 8);
  __chkstk_darwin(v11);
  v107 = &v95 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd);
  __chkstk_darwin(v13 - 8);
  v117 = &v95 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy9MusicCore23ApplicationCapabilitiesV_GMd);
  v128 = *(v15 - 8);
  __chkstk_darwin(v15);
  v127 = &v95 - v16;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO16RemoveDuplicatesVy_AA9PublishedV9PublisherVy9MusicCore23ApplicationCapabilitiesV_GGMd);
  v98 = *(v122 - 1);
  __chkstk_darwin(v122);
  v96 = &v95 - v17;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AC16RemoveDuplicatesVy_AA9PublishedV9PublisherVy9MusicCore23ApplicationCapabilitiesV_GGSo17OS_dispatch_queueCGMd);
  v100 = *(v124 - 8);
  __chkstk_darwin(v124);
  v99 = &v95 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore22GroupActivitiesManagerC8ActivityVSgMd);
  __chkstk_darwin(v19 - 8);
  v21 = &v95 - v20;
  if (one-time initialization token for groupActivities == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Logger.groupActivities);

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();

    v25 = os_log_type_enabled(v23, v24);
    v121 = v3;
    v119 = v5;
    v109 = v11;
    v106 = v9;
    v129 = v15;
    if (v25)
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v133[0] = v27;
      *v26 = 136446210;
      v131[0] = *(v1 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A7SessionCy9MusicCore0aB7ManagerC8ActivityVGSgMd);
      v28 = String.init<A>(reflecting:)();
      v30 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v28, v29, v133);

      *(v26 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v23, v24, "📲 Receiving a new session=%{public}s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v27);
    }

    v130 = *(v1 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session);
    if (v130)
    {
      break;
    }

    v77 = type metadata accessor for GroupActivitiesManager.Activity(0);
    (*(*(v77 - 8) + 56))(v21, 1, 1, v77);
    v78 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_activity;
    swift_beginAccess();
    outlined assign with copy of PlaybackIntentDescriptor.IntentType?(v21, v1 + v78, &_s9MusicCore22GroupActivitiesManagerC8ActivityVSgMd);
    swift_endAccess();
    GroupActivitiesManager.activity.didset();
    outlined destroy of TaskPriority?(v21, &_s9MusicCore22GroupActivitiesManagerC8ActivityVSgMd);
    v79 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_sessionSubscriptions;
    swift_beginAccess();
    v3 = *(v1 + v79);
    if ((v3 & 0xC000000000000001) != 0)
    {

      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      type metadata accessor for AnyCancellable();
      lazy protocol witness table accessor for type GroupActivitiesManager.Activity and conformance GroupActivitiesManager.Activity(&lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable, &type metadata accessor for AnyCancellable);
      Set.Iterator.init(_cocoa:)();
      v21 = v133[0];
      v5 = v133[1];
      v80 = v133[2];
      v9 = v133[3];
      v11 = v133[4];
    }

    else
    {
      v81 = -1 << *(v3 + 32);
      v5 = (v3 + 56);
      v80 = ~v81;
      v82 = -v81;
      if (v82 < 64)
      {
        v83 = ~(-1 << v82);
      }

      else
      {
        v83 = -1;
      }

      v11 = v83 & *(v3 + 56);
      swift_bridgeObjectRetain_n();
      v9 = 0;
      v21 = v3;
    }

    v130 = v80;
    for (i = (v80 + 64) >> 6; v21 < 0; v11 = v87)
    {
      v89 = __CocoaSet.Iterator.next()();
      if (!v89)
      {
        goto LABEL_27;
      }

      v131[4] = v89;
      type metadata accessor for AnyCancellable();
      swift_dynamicCast();
      v15 = v9;
      v87 = v11;
      if (!v132)
      {
        goto LABEL_27;
      }

LABEL_25:
      AnyCancellable.cancel()();

      v9 = v15;
    }

    v85 = v9;
    v86 = v11;
    v15 = v9;
    if (v11)
    {
LABEL_21:
      v87 = (v86 - 1) & v86;
      v88 = *(*(v21 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v86)))));

      if (v88)
      {
        goto LABEL_25;
      }

LABEL_27:
      outlined consume of Set<Library.Menu.Identifier>.Iterator._Variant();

      *(v1 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_nowPlayingSubscription) = 0;

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v90 = v132;
      swift_getKeyPath();
      swift_getKeyPath();
      v132 = 0;

      static Published.subscript.setter();
      GroupActivitiesManager.participantsCount.didset(v90);
      v91 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
      swift_beginAccess();
      *(v1 + v91) = 0;
      v92 = v1 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_eligibilityContext;
      v93 = *(v1 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_eligibilityContext);
      v94 = *(v1 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_eligibilityContext + 8);
      *v92 = xmmword_1004F2EC0;
      *(v92 + 16) = 0;
      outlined consume of GroupActivitiesManager.EligibilityContext?(v93, v94);
      return;
    }

    while (1)
    {
      v15 = v85 + 1;
      if (__OFADD__(v85, 1))
      {
        break;
      }

      if (v15 >= i)
      {
        goto LABEL_27;
      }

      v86 = *&v5[8 * v15];
      ++v85;
      if (v86)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
  }

  GroupSession.activity.getter();
  v31 = type metadata accessor for GroupActivitiesManager.Activity(0);
  v32 = *(v31 - 8);
  (*(v32 + 56))(v21, 0, 1, v31);
  v33 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_activity;
  swift_beginAccess();
  outlined assign with copy of PlaybackIntentDescriptor.IntentType?(v21, v1 + v33, &_s9MusicCore22GroupActivitiesManagerC8ActivityVSgMd);
  swift_endAccess();
  GroupActivitiesManager.activity.didset();
  outlined destroy of TaskPriority?(v21, &_s9MusicCore22GroupActivitiesManagerC8ActivityVSgMd);
  v34 = GroupActivitiesManager.activity.modify(v131);
  v36 = v35;
  if (!(*(v32 + 48))(v35, 1, v31))
  {
    swift_beginAccess();
    outlined init with copy of ActionPerforming(v1 + 16, v133);
    outlined assign with take of PlaybackIntentDescriptor.IntentType?(v133, v36, &_s9MusicCore26GroupActivitiesCoordinator_pSgMd);
  }

  v34(v131, 0);
  v37 = v1 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_eligibilityContext;
  v38 = *(v1 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_eligibilityContext);
  v39 = *(v1 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_eligibilityContext + 8);
  *v37 = xmmword_1004F2EC0;
  *(v37 + 16) = 0;
  outlined consume of GroupActivitiesManager.EligibilityContext?(v38, v39);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy9MusicCore23ApplicationCapabilitiesVGMd);
  v40 = v127;
  Published.projectedValue.getter();
  swift_endAccess();
  v123 = &protocol conformance descriptor for Published<A>.Publisher;
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Published<ApplicationCapabilities>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVy9MusicCore23ApplicationCapabilitiesV_GMd);
  lazy protocol witness table accessor for type ApplicationCapabilities and conformance ApplicationCapabilities();
  v41 = v96;
  v42 = v129;
  Publisher<>.removeDuplicates()();
  (*(v128 + 8))(v40, v42);
  v129 = type metadata accessor for UIAction(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v43 = static OS_dispatch_queue.main.getter();
  v133[0] = v43;
  v44 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v45 = *(v44 - 8);
  v125 = *(v45 + 56);
  v127 = (v45 + 56);
  v46 = v117;
  v126 = v44;
  v125(v117, 1, 1, v44);
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Publishers.RemoveDuplicates<Published<ApplicationCapabilities>.Publisher> and conformance Publishers.RemoveDuplicates<A>, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA9PublishedV9PublisherVy9MusicCore23ApplicationCapabilitiesV_GGMd);
  v47 = lazy protocol witness table accessor for type OS_dispatch_queue and conformance OS_dispatch_queue();
  v48 = v99;
  v49 = v122;
  v128 = v47;
  Publisher.receive<A>(on:options:)();
  outlined destroy of TaskPriority?(v46, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd);

  (*(v98 + 8))(v41, v49);
  swift_allocObject();
  swift_weakInit();
  v122 = &protocol conformance descriptor for Publishers.ReceiveOn<A, B>;
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<Publishers.RemoveDuplicates<Published<ApplicationCapabilities>.Publisher>, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AC16RemoveDuplicatesVy_AA9PublishedV9PublisherVy9MusicCore23ApplicationCapabilitiesV_GGSo17OS_dispatch_queueCGMd);
  v50 = v124;
  Publisher<>.sink(receiveValue:)();

  (*(v100 + 8))(v48, v50);
  v51 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_sessionSubscriptions;
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v52 = v97;
  GroupSession.$activeParticipants.getter();
  v53 = static OS_dispatch_queue.main.getter();
  v133[0] = v53;
  v125(v46, 1, 1, v44);
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Published<Set<Participant>>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVyShy15GroupActivities11ParticipantVG_GMd);
  v54 = v101;
  v55 = v104;
  Publisher.receive<A>(on:options:)();
  outlined destroy of TaskPriority?(v46, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd);

  (*(v103 + 8))(v52, v55);
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<Published<Set<Participant>>.Publisher, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AA9PublishedV9PublisherVyShy15GroupActivities11ParticipantVG_GSo17OS_dispatch_queueCGMd);
  v56 = v107;
  v57 = v106;
  Publisher.map<A>(_:)();
  (*(v105 + 8))(v54, v57);
  swift_allocObject();
  swift_weakInit();
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Publishers.Map<Publishers.ReceiveOn<Published<Set<Participant>>.Publisher, OS_dispatch_queue>, Int> and conformance Publishers.Map<A, B>, &_s7Combine10PublishersO3MapVy_AC9ReceiveOnVy_AA9PublishedV9PublisherVyShy15GroupActivities11ParticipantVG_GSo17OS_dispatch_queueCGSiGMd);
  v58 = v109;
  Publisher<>.sink(receiveValue:)();

  (*(v108 + 8))(v56, v58);
  v124 = v51;
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v59 = v130;
  v60 = v110;
  GroupSession.$state.getter();
  v61 = static OS_dispatch_queue.main.getter();
  v133[0] = v61;
  v62 = v125;
  v125(v46, 1, 1, v126);
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Published<GroupSession<GroupActivitiesManager.Activity>.State>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVy15GroupActivities0D7SessionC5StateOy9MusicCore0dE7ManagerC8ActivityV_G_GMd);
  v63 = v114;
  v64 = v113;
  Publisher.receive<A>(on:options:)();
  outlined destroy of TaskPriority?(v46, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd);

  (*(v112 + 8))(v60, v64);
  v65 = swift_allocObject();
  swift_weakInit();
  v66 = swift_allocObject();
  *(v66 + 16) = v65;
  *(v66 + 24) = v59;
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<Published<GroupSession<GroupActivitiesManager.Activity>.State>.Publisher, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AA9PublishedV9PublisherVy15GroupActivities0G7SessionC5StateOy9MusicCore0gH7ManagerC8ActivityV_G_GSo17OS_dispatch_queueCGMd);

  v67 = v116;
  Publisher<>.sink(receiveValue:)();

  (*(v115 + 8))(v63, v67);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v123 = objc_opt_self();
  v68 = [v123 defaultCenter];
  v69 = v118;
  NSNotificationCenter.publisher(for:object:)();

  v70 = static OS_dispatch_queue.main.getter();
  v133[0] = v70;
  v62(v46, 1, 1, v126);
  v116 = lazy protocol witness table accessor for type GroupActivitiesManager.Activity and conformance GroupActivitiesManager.Activity(&lazy protocol witness table cache variable for type NSNotificationCenter.Publisher and conformance NSNotificationCenter.Publisher, &type metadata accessor for NSNotificationCenter.Publisher);
  v71 = v119;
  v72 = v102;
  Publisher.receive<A>(on:options:)();
  outlined destroy of TaskPriority?(v46, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd);

  v115 = *(v111 + 8);
  (v115)(v69, v72);
  swift_allocObject();
  swift_weakInit();
  v122 = lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<NSNotificationCenter.Publisher, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_So20NSNotificationCenterC10FoundationE9PublisherVSo17OS_dispatch_queueCGMd);
  v73 = v121;
  Publisher<>.sink(receiveValue:)();

  v120 = *(v120 + 8);
  (v120)(v71, v73);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v74 = [v123 defaultCenter];
  v75 = String._bridgeToObjectiveC()();
  NSNotificationCenter.publisher(for:object:)();

  v76 = static OS_dispatch_queue.main.getter();
  v133[0] = v76;
  v125(v46, 1, 1, v126);
  Publisher.receive<A>(on:options:)();
  outlined destroy of TaskPriority?(v46, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd);

  (v115)(v69, v72);
  swift_allocObject();
  swift_weakInit();
  Publisher<>.sink(receiveValue:)();

  (v120)(v71, v73);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

uint64_t closure #2 in GroupActivitiesManager.session.didset(__int128 *a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = a1[5];
    v13 = a1[4];
    v14 = v4;
    v5 = a1[7];
    v15 = a1[6];
    v16 = v5;
    v6 = a1[1];
    v9 = *a1;
    v10 = v6;
    v7 = a1[3];
    v11 = a1[2];
    v12 = v7;
    v8 = &v9;
    CFRange.init(_:)(*(&v3 - 1));
    v17[4] = v13;
    v17[5] = v14;
    v17[6] = v15;
    v17[7] = v16;
    v17[0] = v9;
    v17[1] = v10;
    v17[2] = v11;
    v17[3] = v12;
    GroupActivitiesManager.prepare(_:)(v17);
  }

  return result;
}

void GroupActivitiesManager.prepare(_:)(unsigned __int8 *a1)
{
  v107 = *a1;
  v2 = a1[1];
  v105 = a1[2];
  LODWORD(v106) = v2;
  v3 = *(a1 + 2);
  v104 = *(a1 + 1);
  v102 = v3;
  v100 = a1[24];
  v101 = *(a1 + 4);
  v4 = *(a1 + 3);
  v109 = *(a1 + 2);
  v99 = v4;
  v5 = *(a1 + 10);
  v6 = *(a1 + 11);
  v7 = a1[96];
  v8 = *(a1 + 13);
  v9 = a1[112];
  v10 = *(a1 + 15);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0);
  __chkstk_darwin(v11 - 8);
  v103 = &v99 - v12;
  v13 = *(a1 + 5);
  v130[4] = *(a1 + 4);
  v130[5] = v13;
  v14 = *(a1 + 7);
  v130[6] = *(a1 + 6);
  v130[7] = v14;
  v15 = *(a1 + 1);
  v130[0] = *a1;
  v130[1] = v15;
  v16 = *(a1 + 3);
  v130[2] = *(a1 + 2);
  v130[3] = v16;
  if (_s9MusicCore23ApplicationCapabilitiesVSgWOg(v130) == 1)
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v17 = v115;
    v18 = v116;
    v19 = v117;
    v20 = v118;
    v21 = v119;
    v22 = v120;
    v24 = v122;
    v23 = v123;
    v25 = v121;
    v26 = v124;
    v6 = v125;
    v7 = v126;
    v8 = v127;
    v9 = v128;
    v10 = v129;
  }

  else
  {
    v17 = v107;
    v25 = v109;
    v19 = v105;
    v18 = v106;
    v20 = v104;
    v21 = v102;
    v22 = v100;
    v23 = v101;
    v26 = v5;
    v24 = v99;
  }

  v109 = v25;
  v27 = v17;
  LODWORD(v102) = v17 & 1;
  v115 = v17 & 1;
  v116 = v18 & 1;
  v117 = v19 & 1;
  v118 = v20;
  v119 = v21;
  v107 = v22 & 1;
  v120 = v22 & 1;
  v121 = v25;
  v122 = v24;
  v123 = v23;
  v124 = v26;
  v125 = v6;
  v126 = v7;
  v127 = v8;
  v128 = v9;
  v129 = v10;
  v28 = 256;
  if (v22)
  {
    v29 = 256;
  }

  else
  {
    v29 = 0;
  }

  outlined init with copy of ApplicationCapabilities(&v115, &v111);
  outlined init with copy of TaskPriority?(a1, &v111, &_s9MusicCore23ApplicationCapabilitiesVSgMd);
  v30 = v109;
  v31 = specialized Set.contains(_:)(0, v109);
  LODWORD(v30) = specialized Set.contains(_:)(2, v30);
  v32 = v6;
  outlined destroy of ApplicationCapabilities(&v115);
  v33 = v31;
  v34 = v108 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_eligibilityContext;
  v35 = *(v108 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_eligibilityContext);
  v36 = *(v108 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_eligibilityContext + 8);
  v37 = *(v108 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_eligibilityContext + 16);
  v105 = v30;
  if ((v30 & 1) == 0)
  {
    v28 = 0;
  }

  v38 = v28 & 0xFFFFFFFFFFFFFFFELL | v33 & 1;
  v39 = v29 & 0xFFFE | v27 & 1;
  v104 = v33;
  if (v36 == 1)
  {
    v40 = v32;
    outlined consume of GroupActivitiesManager.EligibilityContext?(v35, 1);
    outlined consume of GroupActivitiesManager.EligibilityContext?(v38, v6);
    goto LABEL_22;
  }

  if ((v33 & 1) != (v35 & 1) || ((v105 ^ ((v35 & 0x100) == 0)) & 1) == 0)
  {
    goto LABEL_21;
  }

  if (!v36)
  {
    if (!v6)
    {
      if ((v102 ^ v37))
      {
        goto LABEL_22;
      }

      v43 = v37 & 0x100;
      goto LABEL_56;
    }

LABEL_21:
    v44 = v32;
    goto LABEL_22;
  }

  if (!v6 || (LODWORD(v109) = v37, v106 = type metadata accessor for UIAction(0, &lazy cache variable for type metadata for ICMusicSubscriptionStatus), v41 = v32, outlined copy of GroupActivitiesManager.EligibilityContext?(v35, v36), v42 = static NSObject.== infix(_:_:)(), v41, outlined consume of GroupActivitiesManager.EligibilityContext?(v35, v36), (v42 & 1) == 0) || ((v102 ^ v109) & 1) != 0)
  {
LABEL_22:
    v45 = *v34;
    v46 = *(v34 + 8);
    *v34 = v38;
    *(v34 + 8) = v6;
    *(v34 + 16) = v39;
    outlined consume of GroupActivitiesManager.EligibilityContext?(v45, v46);
    if (one-time initialization token for groupActivities != -1)
    {
      swift_once();
    }

    v106 = v6;
    v47 = type metadata accessor for Logger();
    __swift_project_value_buffer(v47, static Logger.groupActivities);
    v48 = v32;
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.default.getter();
    *&v109 = v48;

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v110 = v52;
      *v51 = 136446210;
      LOBYTE(v111) = v104 & 1;
      HIBYTE(v111) = v105 & 1;
      v112 = v106;
      v113 = v102;
      v53 = v107;
      v114 = v107;
      v54 = v109;
      v55 = String.init<A>(reflecting:)();
      v57 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v55, v56, &v110);

      *(v51 + 4) = v57;
      _os_log_impl(&_mh_execute_header, v49, v50, "🛂 Checking eligibility with context=%{public}s", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v52);

      if ((v53 & 1) == 0)
      {
LABEL_26:
        v58 = Logger.logObject.getter();
        v59 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v58, v59))
        {
          v60 = swift_slowAlloc();
          *v60 = 0;
          _os_log_impl(&_mh_execute_header, v58, v59, "🛂 User did not accept GDPR", v60, 2u);
        }

        v61 = type metadata accessor for TaskPriority();
        v62 = v103;
        (*(*(v61 - 8) + 56))(v103, 1, 1, v61);
        type metadata accessor for MainActor();
        v63 = static MainActor.shared.getter();
        v64 = swift_allocObject();
        *(v64 + 16) = v63;
        *(v64 + 24) = &protocol witness table for MainActor;
        _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5(0, 0, v62, &async function pointer to partial apply for closure #1 in GroupActivitiesManager.prepare(_:), v64);
        goto LABEL_52;
      }
    }

    else
    {

      v53 = v107;
      if ((v107 & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    v65 = v106;
    if (!v106 || ([v109 capabilities] & 1) == 0)
    {
      if (v104)
      {
        if (v105)
        {
          if (v102)
          {
            if (v65)
            {
              v66 = v109;
              if (([v66 capabilities] & 1) == 0)
              {
                v67 = Logger.logObject.getter();
                v68 = static os_log_type_t.default.getter();
                if (os_log_type_enabled(v67, v68))
                {
                  v69 = swift_slowAlloc();
                  *v69 = 0;
                  _os_log_impl(&_mh_execute_header, v67, v68, "🛂 User is not a subscriber -> up sell", v69, 2u);
                }

                v70 = type metadata accessor for TaskPriority();
                v71 = v103;
                (*(*(v70 - 8) + 56))(v103, 1, 1, v70);
                v72 = swift_allocObject();
                v72[2] = 0;
                v72[3] = 0;
                v72[4] = v108;

                _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5_0(0, 0, v71, &async function pointer to partial apply for closure #4 in GroupActivitiesManager.prepare(_:), v72);
                outlined destroy of ApplicationCapabilities(&v115);

                goto LABEL_53;
              }

              v65 = v106;
            }

            v92 = v109;
            v89 = Logger.logObject.getter();
            v93 = static os_log_type_t.default.getter();

            if (!os_log_type_enabled(v89, v93))
            {
              outlined destroy of ApplicationCapabilities(&v115);

              goto LABEL_67;
            }

            v94 = swift_slowAlloc();
            v95 = swift_slowAlloc();
            v110 = v95;
            *v94 = 136446210;
            v111 = 257;
            v112 = v65;
            v113 = v102;
            v114 = v53;
            v32 = v92;
            v96 = String.init<A>(reflecting:)();
            v98 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v96, v97, &v110);

            *(v94 + 4) = v98;
            _os_log_impl(&_mh_execute_header, v89, v93, "🛂 Unknown prepare case with=%{public}s", v94, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v95);

            goto LABEL_64;
          }

          v84 = Logger.logObject.getter();
          v85 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v84, v85))
          {
            v86 = swift_slowAlloc();
            *v86 = 0;
            _os_log_impl(&_mh_execute_header, v84, v85, "🛂 User is not signed in -> request authentication", v86, 2u);
          }

          v87 = type metadata accessor for TaskPriority();
          v78 = v103;
          (*(*(v87 - 8) + 56))(v103, 1, 1, v87);
          v79 = swift_allocObject();
          v79[2] = 0;
          v79[3] = 0;
          v79[4] = v108;

          v80 = &async function pointer to partial apply for closure #3 in GroupActivitiesManager.prepare(_:);
LABEL_51:
          _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5_0(0, 0, v78, v80, v79);
LABEL_52:
          outlined destroy of ApplicationCapabilities(&v115);

LABEL_53:

          return;
        }

        v81 = Logger.logObject.getter();
        v82 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v81, v82))
        {
          v83 = swift_slowAlloc();
          *v83 = 0;
          _os_log_impl(&_mh_execute_header, v81, v82, "🛂 Apple Music content disabled", v83, 2u);
        }

        v76 = 1;
      }

      else
      {
        v73 = Logger.logObject.getter();
        v74 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v73, v74))
        {
          v75 = swift_slowAlloc();
          *v75 = 0;
          _os_log_impl(&_mh_execute_header, v73, v74, "🛂 Music services restricted", v75, 2u);
        }

        v76 = 0;
      }

      GroupActivitiesManager.presentRestrictionAlert(for:)(v76);
      outlined destroy of ApplicationCapabilities(&v115);

      return;
    }

    v77 = type metadata accessor for TaskPriority();
    v78 = v103;
    (*(*(v77 - 8) + 56))(v103, 1, 1, v77);
    v79 = swift_allocObject();
    v79[2] = 0;
    v79[3] = 0;
    v79[4] = v108;

    v80 = &async function pointer to partial apply for closure #2 in GroupActivitiesManager.prepare(_:);
    goto LABEL_51;
  }

  v43 = v109 & 0x100;
LABEL_56:
  if ((v107 ^ (v43 >> 8)))
  {
    goto LABEL_22;
  }

  if (one-time initialization token for groupActivities != -1)
  {
    swift_once();
  }

  v88 = type metadata accessor for Logger();
  __swift_project_value_buffer(v88, static Logger.groupActivities);
  v89 = Logger.logObject.getter();
  v90 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v89, v90))
  {
    goto LABEL_65;
  }

  v91 = swift_slowAlloc();
  *v91 = 0;
  _os_log_impl(&_mh_execute_header, v89, v90, "Eligibility context didn't change.", v91, 2u);
LABEL_64:

LABEL_65:
  outlined destroy of ApplicationCapabilities(&v115);

LABEL_67:
}

uint64_t closure #4 in GroupActivitiesManager.session.didset()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.setter();
    GroupActivitiesManager.participantsCount.didset(v1);
  }

  return result;
}

uint64_t closure #5 in GroupActivitiesManager.session.didset(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v67 = a3;
  v5 = type metadata accessor for OSSignpostError();
  v59 = *(v5 - 8);
  v60 = v5;
  __chkstk_darwin(v5);
  v58 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OSSignpostID();
  v61 = *(v7 - 8);
  v62 = v7;
  __chkstk_darwin(v7);
  v63 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A7SessionC5StateOy9MusicCore0aB7ManagerC8ActivityV_GMd);
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v65 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = &v57 - v14;
  __chkstk_darwin(v13);
  v17 = &v57 - v16;
  if (one-time initialization token for groupActivities != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static Logger.groupActivities);
  v19 = *(v10 + 16);
  v68 = a1;
  v20 = a1;
  v21 = v19;
  v19(v17, v20, v9);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  v24 = os_log_type_enabled(v22, v23);
  v66 = v10;
  v64 = v21;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v57 = a2;
    v26 = v25;
    v27 = swift_slowAlloc();
    v28 = v21;
    v29 = v27;
    *&v77[0] = v27;
    *v26 = 136446210;
    v28(v15, v17, v9);
    v30 = String.init<A>(reflecting:)();
    v31 = v10;
    v33 = v32;
    (*(v31 + 8))(v17, v9);
    v34 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v30, v33, v77);

    *(v26 + 4) = v34;
    _os_log_impl(&_mh_execute_header, v22, v23, "📥 Session update with state=%{public}s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v29);
  }

  else
  {

    (*(v10 + 8))(v17, v9);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  v36 = v68;
  if (result)
  {
    v37 = result;
    v38 = v65;
    v64(v65, v68, v9);
    v39 = v66;
    v40 = (*(v66 + 88))(v38, v9);
    if (v40 == enum case for GroupSession.State.invalidated<A>(_:))
    {
      (*(v39 + 96))(v38, v9);
      GroupActivitiesManager.invalidate(_:)();
    }

    else if (v40 == enum case for GroupSession.State.waiting<A>(_:))
    {
      _s9MusicCore23ApplicationCapabilitiesVSgWOi0_(&v69);
      v77[4] = v73;
      v77[5] = v74;
      v77[6] = v75;
      v77[7] = v76;
      v77[0] = v69;
      v77[1] = v70;
      v77[2] = v71;
      v77[3] = v72;
      GroupActivitiesManager.prepare(_:)(v77);
    }

    else
    {
      if (v40 != enum case for GroupSession.State.joined<A>(_:))
      {
        result = _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return result;
      }

      v41 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_signpostJoinSessionState;
      v42 = v63;
      if (*(v37 + OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_signpostJoinSessionState))
      {
        v43 = one-time initialization token for sharePlay;

        if (v43 != -1)
        {
          swift_once();
        }

        v44 = type metadata accessor for OSSignposter();
        __swift_project_value_buffer(v44, static OSSignposter.sharePlay);
        v45 = OSSignposter.logHandle.getter();
        OSSignpostIntervalState.signpostID.getter();
        v46 = static os_signpost_type_t.end.getter();
        if (OS_os_log.signpostsEnabled.getter())
        {

          v47 = v58;
          checkForErrorAndConsumeState(state:)();

          v49 = v59;
          v48 = v60;
          if ((*(v59 + 88))(v47, v60) == enum case for OSSignpostError.doubleEnd(_:))
          {
            v50 = "[Error] Interval already ended";
          }

          else
          {
            (*(v49 + 8))(v47, v48);
            v50 = "";
          }

          v51 = swift_slowAlloc();
          *v51 = 0;
          v52 = OSSignpostID.rawValue.getter();
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v45, v46, v52, "JoinSession", v50, v51, 2u);

          v36 = v68;
        }

        (*(v61 + 8))(v42, v62);
        *(v37 + v41) = 0;
      }
    }

    GroupActivitiesManager.updateIsSharePlaySessionActive()();
    swift_beginAccess();
    outlined init with copy of ActionPerforming(v37 + 16, &v69);
    v53 = *(&v70 + 1);
    v54 = v71;
    __swift_project_boxed_opaque_existential_0Tm(&v69, *(&v70 + 1));
    v55 = v67;
    v56 = GroupSession.isLocallyInitiated.getter();
    (*(v54 + 40))(v55, v36, v56 & 1, v53, v54);

    return __swift_destroy_boxed_opaque_existential_0Tm(&v69);
  }

  return result;
}

uint64_t GroupActivitiesManager.invalidate(_:)()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0);
  __chkstk_darwin(v2 - 8);
  v4 = &v16 - v3;
  if (one-time initialization token for groupActivities != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.groupActivities);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136446210;
    swift_getErrorValue();
    v10 = Error.localizedDescription.getter();
    v12 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v10, v11, &v17);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "Session invalidated for reason=%{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
  }

  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v4, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v1;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5_0(0, 0, v4, &async function pointer to partial apply for closure #1 in GroupActivitiesManager.invalidate(_:), v14);
}

uint64_t closure #6 in GroupActivitiesManager.session.didset()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  __chkstk_darwin(v0 - 8);
  v2 = v14 - v1;
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = Notification.userInfo.getter();
  if (!v7)
  {
    goto LABEL_8;
  }

  v8 = v7;
  v14[1] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14[2] = v9;
  AnyHashable.init<A>(_:)();
  if (!*(v8 + 16) || (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v15), (v11 & 1) == 0))
  {

    outlined destroy of AnyHashable(v15);
LABEL_8:
    v16 = 0u;
    v17 = 0u;
    goto LABEL_9;
  }

  outlined init with copy of Any(*(v8 + 56) + 32 * v10, &v16);
  outlined destroy of AnyHashable(v15);

  if (!*(&v17 + 1))
  {
LABEL_9:
    outlined destroy of TaskPriority?(&v16, &_sypSgMd_0);
    (*(v4 + 56))(v2, 1, 1, v3);
    goto LABEL_10;
  }

  v12 = swift_dynamicCast();
  (*(v4 + 56))(v2, v12 ^ 1u, 1, v3);
  if ((*(v4 + 48))(v2, 1, v3) != 1)
  {
    (*(v4 + 32))(v6, v2, v3);
    goto LABEL_12;
  }

LABEL_10:
  Date.init()();
  if ((*(v4 + 48))(v2, 1, v3) != 1)
  {
    outlined destroy of TaskPriority?(v2, &_s10Foundation4DateVSgMd);
  }

LABEL_12:
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    GroupActivitiesManager.endMeasuringInitiationTime(firstAudioFrameDate:)(v6);
  }

  return (*(v4 + 8))(v6, v3);
}

void GroupActivitiesManager.endMeasuringInitiationTime(firstAudioFrameDate:)(void *a1)
{
  v2 = v1;
  v44 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  v4 = __chkstk_darwin(v3 - 8);
  v43 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v43 - v6;
  v8 = type metadata accessor for Date();
  v46 = *(v8 - 8);
  v47 = v8;
  __chkstk_darwin(v8);
  v45 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14MusicUtilities8SignpostVSgMd);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v43 - v14;
  v16 = type metadata accessor for Signpost();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_signpostInitiationToFirstAudioFrame;
  swift_beginAccess();
  outlined init with copy of TaskPriority?(v2 + v20, v15, &_s14MusicUtilities8SignpostVSgMd);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    outlined destroy of TaskPriority?(v15, &_s14MusicUtilities8SignpostVSgMd);
  }

  else
  {
    outlined init with take of GroupActivitiesManager.PrepareResult(v15, v19, type metadata accessor for Signpost);
    Signpost.end(dso:)(&_mh_execute_header);
    outlined destroy of GroupActivitiesManager.PrepareResult(v19, type metadata accessor for Signpost);
    (*(v17 + 56))(v13, 1, 1, v16);
    swift_beginAccess();
    outlined assign with take of PlaybackIntentDescriptor.IntentType?(v13, v2 + v20, &_s14MusicUtilities8SignpostVSgMd);
    swift_endAccess();
  }

  v21 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_autoBugCaptureIntervalBeginDate;
  swift_beginAccess();
  outlined init with copy of TaskPriority?(v2 + v21, v7, &_s10Foundation4DateVSgMd);
  v23 = v46;
  v22 = v47;
  if ((*(v46 + 48))(v7, 1, v47) != 1)
  {
    (*(v23 + 32))(v45, v7, v22);
    Date.timeIntervalSince(_:)();
    v29 = v28;
    if (one-time initialization token for groupActivities != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    __swift_project_value_buffer(v30, static Logger.groupActivities);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 134217984;
      *(v33 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v31, v32, "endMeasuringInitiationTime: %f", v33, 0xCu);
    }

    if (v29 <= 10.0)
    {
      goto LABEL_19;
    }

    v34 = objc_opt_self();
    v35 = GroupActivitiesManager.autoBugCaptureDomain.getter();
    v36 = String._bridgeToObjectiveC()();
    v37 = String._bridgeToObjectiveC()();
    v38 = String._bridgeToObjectiveC()();
    if (*&v29 >> 52 > 0x7FEuLL)
    {
      __break(1u);
    }

    else if (v29 > -9.22337204e18)
    {
      if (v29 < 9.22337204e18)
      {
        v48 = v29;
        v44 = v38;
        v39 = v35;
        dispatch thunk of CustomStringConvertible.description.getter();
        v40 = String._bridgeToObjectiveC()();

        v41 = v44;
        [v34 snapshotWithDomain:v39 type:v36 subType:v37 context:v44 triggerThresholdValues:v40 events:0 completion:0];

LABEL_19:
        (*(v23 + 8))(v45, v22);
        v42 = v43;
        (*(v23 + 56))(v43, 1, 1, v22);
        swift_beginAccess();
        outlined assign with take of PlaybackIntentDescriptor.IntentType?(v42, v2 + v21, &_s10Foundation4DateVSgMd);
        swift_endAccess();
        return;
      }

LABEL_22:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_22;
  }

  outlined destroy of TaskPriority?(v7, &_s10Foundation4DateVSgMd);
  if (one-time initialization token for groupActivities != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  __swift_project_value_buffer(v24, static Logger.groupActivities);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v25, v26, "Attempting to endMeasuringInitiationTime but there was no begin time.", v27, 2u);
  }
}