id GCOverlaySettingsStore.().init()()
{
  v1 = &v0[OBJC_IVAR____TtC14GameController22GCOverlaySettingsStore_preferencesVersion];
  *v1 = 0x31322E312E3031;
  *(v1 + 1) = 0xE700000000000000;
  v2 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v3 = MEMORY[0x1D38ABB70](0xD000000000000018, 0x80000001D2DFBCF0);
  v4 = [v2 initWithSuiteName_];

  if (!v4)
  {
    v4 = [objc_opt_self() standardUserDefaults];
  }

  *&v0[OBJC_IVAR____TtC14GameController22GCOverlaySettingsStore_userDefaults] = v4;
  v5 = MEMORY[0x1E69E7CC0];
  *&v0[OBJC_IVAR____TtC14GameController22GCOverlaySettingsStore_connectedControllerIdentifiers] = MEMORY[0x1E69E7CC0];
  *&v0[OBJC_IVAR____TtC14GameController22GCOverlaySettingsStore_allControllers] = v5;
  *&v0[OBJC_IVAR____TtC14GameController22GCOverlaySettingsStore_curentController] = 0;
  v6 = OBJC_IVAR____TtC14GameController22GCOverlaySettingsStore_profiles;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D2DF13F0;
  *(v7 + 32) = [objc_opt_self() defaultProfile];
  *&v0[v6] = v7;
  v8 = OBJC_IVAR____TtC14GameController22GCOverlaySettingsStore_games;
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1D2DF13F0;
  *(v9 + 32) = [objc_opt_self() defaultGame];
  *&v0[v8] = v9;
  v39.receiver = v0;
  v39.super_class = type metadata accessor for GCOverlaySettingsStore();
  v10 = objc_msgSendSuper2(&v39, sel_init);
  GCOverlaySettingsStore.loadControllers()();
  GCOverlaySettingsStore.loadProfiles()();
  GCOverlaySettingsStore.loadGames()();
  v11 = objc_opt_self();
  v12 = [v11 defaultCenter];
  v13 = swift_allocObject();
  *(v13 + 16) = v10;
  v37 = partial apply for closure #1 in GCOverlaySettingsStore.().init();
  v38 = v13;
  aBlock = MEMORY[0x1E69E9820];
  v34 = 1107296256;
  v35 = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed Notification) -> ();
  v36 = &block_descriptor_47;
  v14 = _Block_copy(&aBlock);
  v15 = v10;

  v16 = [v12 addObserverForName:@"GCControllerDidConnectNotification" object:0 queue:0 usingBlock:v14];
  _Block_release(v14);
  swift_unknownObjectRelease();

  v17 = [v11 defaultCenter];
  v18 = swift_allocObject();
  *(v18 + 16) = v15;
  v37 = partial apply for closure #2 in GCOverlaySettingsStore.().init();
  v38 = v18;
  aBlock = MEMORY[0x1E69E9820];
  v34 = 1107296256;
  v35 = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed Notification) -> ();
  v36 = &block_descriptor_53;
  v19 = _Block_copy(&aBlock);
  v20 = v15;

  v21 = [v17 addObserverForName:@"GCControllerDidDisconnectNotification" object:0 queue:0 usingBlock:v19];
  _Block_release(v19);
  swift_unknownObjectRelease();

  v22 = [v11 defaultCenter];
  v23 = swift_allocObject();
  *(v23 + 16) = v20;
  v37 = partial apply for closure #3 in GCOverlaySettingsStore.().init();
  v38 = v23;
  aBlock = MEMORY[0x1E69E9820];
  v34 = 1107296256;
  v35 = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed Notification) -> ();
  v36 = &block_descriptor_59;
  v24 = _Block_copy(&aBlock);
  v25 = v20;

  v26 = [v22 addObserverForName:@"GCControllerDidBecomeCurrentNotification" object:0 queue:0 usingBlock:v24];
  _Block_release(v24);
  swift_unknownObjectRelease();

  v27 = [v11 defaultCenter];
  v28 = swift_allocObject();
  *(v28 + 16) = v25;
  v37 = partial apply for closure #4 in GCOverlaySettingsStore.().init();
  v38 = v28;
  aBlock = MEMORY[0x1E69E9820];
  v34 = 1107296256;
  v35 = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed Notification) -> ();
  v36 = &block_descriptor_65;
  v29 = _Block_copy(&aBlock);
  v30 = v25;

  v31 = [v27 addObserverForName:@"GCControllerDidStopBeingCurrentNotification" object:0 queue:0 usingBlock:v29];
  _Block_release(v29);
  swift_unknownObjectRelease();

  GCOverlaySettingsStore.updateControllers()();
  return v30;
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed Notification) -> ()(uint64_t a1)
{
  v2 = type metadata accessor for Notification();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  v8(v6);

  return (*(v3 + 8))(v6, v2);
}

void *GCOverlaySettingsStore.getSettingsController(for:)(void *a1)
{
  v2 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0xB8))();
  v3 = v2;
  if (v2 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = MEMORY[0x1D38ABE20](v19))
  {
    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1D38ABDB0](v5, v3);
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v9 = [v6 persistentIdentifier];
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;

      v13 = [a1 persistentIdentifier];
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;

      if (v10 == v14 && v12 == v16)
      {

        return v7;
      }

      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v18)
      {

        return v7;
      }

      ++v5;
      if (v8 == i)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    if (v3 < 0)
    {
      v19 = v3;
    }

    else
    {
      v19 = v3 & 0xFFFFFFFFFFFFFF8;
    }
  }

LABEL_24:

  return 0;
}

uint64_t GCOverlaySettingsStore.updateCurrentController()()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xB8))();
  v2 = v1;
  if (v1 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = MEMORY[0x1D38ABE20](v24))
  {
    v4 = 0;
    v28 = v2 & 0xFFFFFFFFFFFFFF8;
    v29 = v2 & 0xC000000000000001;
    v5 = &selRef_getBundleID;
    while (1)
    {
      if (v29)
      {
        v6 = MEMORY[0x1D38ABDB0](v4, v2);
      }

      else
      {
        if (v4 >= *(v28 + 16))
        {
          goto LABEL_20;
        }

        v6 = *(v2 + 8 * v4 + 32);
      }

      v7 = v6;
      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v9 = [v6 v5[510]];
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;

      v13 = [objc_opt_self() current];
      if (v13)
      {
        v30 = v7;
        v14 = v2;
        v15 = i;
        v16 = v5;
        v17 = v13;
        v18 = [v13 v5[510]];

        v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v21 = v20;

        if (v10 == v19 && v12 == v21)
        {

          v7 = v30;
          goto LABEL_26;
        }

        v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v5 = v16;
        i = v15;
        v2 = v14;
        v7 = v30;
        if (v23)
        {

          goto LABEL_26;
        }
      }

      else
      {
      }

      ++v4;
      if (v8 == i)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    if (v2 < 0)
    {
      v24 = v2;
    }

    else
    {
      v24 = v2 & 0xFFFFFFFFFFFFFF8;
    }
  }

LABEL_25:

  v7 = 0;
LABEL_26:
  v25 = *((*MEMORY[0x1E69E7D40] & *v27) + 0xD8);

  return v25(v7);
}

uint64_t GCOverlaySettingsStore.updateControllers()()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v15 = *(v1 - 8);
  v2 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v5 = *(v14 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  v9 = static OS_dispatch_queue.main.getter();
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  aBlock[4] = partial apply for closure #1 in GCOverlaySettingsStore.updateControllers();
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_41;
  v11 = _Block_copy(aBlock);
  v12 = v0;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type GCSCompatibilityMode and conformance GCSCompatibilityMode(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1D38ABD30](0, v8, v4, v11);
  _Block_release(v11);

  (*(v15 + 8))(v4, v1);
  return (*(v5 + 8))(v8, v14);
}

void closure #1 in GCOverlaySettingsStore.updateControllers()(void *a1)
{
  v131 = a1;
  v136 = type metadata accessor for UUID();
  v130 = *(v136 - 8);
  v1 = *(v130 + 64);
  v2 = MEMORY[0x1EEE9AC00](v136);
  v135 = &v123 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v129 = &v123 - v4;
  v140 = objc_opt_self();
  v5 = [v140 controllers];
  v139 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for GCController, off_1E8417FF8);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v6 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_26:
    v123 = MEMORY[0x1E69E7CC0];
    goto LABEL_27;
  }

LABEL_22:
  if (v6 < 0)
  {
    v20 = v6;
  }

  else
  {
    v20 = v6 & 0xFFFFFFFFFFFFFF8;
  }

  v7 = MEMORY[0x1D38ABE20](v20);
  if (!v7)
  {
    goto LABEL_26;
  }

LABEL_3:
  v8 = 0;
  v123 = MEMORY[0x1E69E7CC0];
  do
  {
    v9 = v8;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x1D38ABDB0](v9, v6);
      }

      else
      {
        if (v9 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v10 = *(v6 + 8 * v9 + 32);
      }

      v11 = v10;
      v8 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v12 = [v10 identifier];

      v144 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSCopying_So14NSSecureCodingSo8NSObjectpMd, &_sSo9NSCopying_So14NSSecureCodingSo8NSObjectpMR);
      if (swift_dynamicCast())
      {
        v13 = v146;
        if (v146)
        {
          break;
        }
      }

      ++v9;
      if (v8 == v7)
      {
        goto LABEL_27;
      }
    }

    v14 = v145;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v141 = v14;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v123 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v123 + 2) + 1, 1, v123);
    }

    v17 = *(v123 + 2);
    v16 = *(v123 + 3);
    if (v17 >= v16 >> 1)
    {
      v123 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v123);
    }

    v18 = v123;
    *(v123 + 2) = v17 + 1;
    v19 = &v18[16 * v17];
    *(v19 + 4) = v141;
    *(v19 + 5) = v13;
  }

  while (v8 != v7);
LABEL_27:

  v22 = *((*MEMORY[0x1E69E7D40] & *v131) + 0xB8);
  v137 = (*MEMORY[0x1E69E7D40] & *v131) + 184;
  v138 = v22;
  v23 = (v22)(v21);
  v24 = v23;
  if (v23 >> 62)
  {
    goto LABEL_96;
  }

  for (i = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = MEMORY[0x1D38ABE20](v75))
  {
    v26 = 0;
    v141 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if ((v24 & 0xC000000000000001) != 0)
      {
        v27 = MEMORY[0x1D38ABDB0](v26, v24);
      }

      else
      {
        if (v26 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_92;
        }

        v27 = *(v24 + 8 * v26 + 32);
      }

      v28 = v27;
      v29 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      v30 = [v27 persistentIdentifier];
      v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v33 = v32;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v141 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v141 + 2) + 1, 1, v141);
      }

      v35 = *(v141 + 2);
      v34 = *(v141 + 3);
      if (v35 >= v34 >> 1)
      {
        v141 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1, v141);
      }

      v36 = v141;
      *(v141 + 2) = v35 + 1;
      v37 = &v36[16 * v35];
      *(v37 + 4) = v31;
      *(v37 + 5) = v33;
      ++v26;
      if (v29 == i)
      {
        goto LABEL_43;
      }
    }

LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    if (v24 < 0)
    {
      v75 = v24;
    }

    else
    {
      v75 = v24 & 0xFFFFFFFFFFFFFF8;
    }
  }

  v141 = MEMORY[0x1E69E7CC0];
LABEL_43:

  v144 = MEMORY[0x1E69E7CC0];
  v24 = v131;
  v39 = (v138)(v38);
  v143 = v39;
  v40 = [v140 controllers];
  v41 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v41 >> 62)
  {
    if (v41 < 0)
    {
      v76 = v41;
    }

    else
    {
      v76 = v41 & 0xFFFFFFFFFFFFFF8;
    }

    v42 = MEMORY[0x1D38ABE20](v76);
    if (v42)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v42 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v42)
    {
LABEL_45:
      v43 = 0;
      v134 = v41 & 0xC000000000000001;
      v127 = v41 & 0xFFFFFFFFFFFFFF8;
      v128 = 0;
      v132 = MEMORY[0x1E69E7CC0];
      v126 = v41 + 32;
      v133 = v42;
      v125 = v41;
      while (1)
      {
        if (v134)
        {
          v44 = MEMORY[0x1D38ABDB0](v43, v41);
        }

        else
        {
          if (v43 >= *(v127 + 16))
          {
            goto LABEL_94;
          }

          v44 = *(v126 + 8 * v43);
        }

        v45 = v44;
        v46 = __OFADD__(v43, 1);
        v43 = (v43 + 1);
        if (v46)
        {
          goto LABEL_93;
        }

        v142 = [v44 identifier];
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSCopying_So14NSSecureCodingSo8NSObjectpMd, &_sSo9NSCopying_So14NSSecureCodingSo8NSObjectpMR);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_47;
        }

        v47 = v145;
        v24 = v146;
        if (![v45 componentForProtocol_])
        {
          break;
        }

        v48 = swift_unknownObjectRelease();
        v145 = v47;
        v146 = v24;
        MEMORY[0x1EEE9AC00](v48);
        *(&v123 - 2) = &v145;
        v49 = v128;
        v50 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), (&v123 - 4), v141);
        v128 = v49;

        if (v50)
        {
          v124 = v39 >> 62;
          v51 = v39 & 0xFFFFFFFFFFFFFF8;
          if (v39 >> 62)
          {
            if (v39 < 0)
            {
              v73 = v39;
            }

            else
            {
              v73 = v39 & 0xFFFFFFFFFFFFFF8;
            }

            v52 = MEMORY[0x1D38ABE20](v73);
          }

          else
          {
            v52 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v139 = v39 & 0xC000000000000001;
          v140 = -v52;
          v53 = 4;
          v137 = v39 & 0xFFFFFFFFFFFFFF8;
          v138 = v43;
          while (1)
          {
            if (v140 + v53 == 4)
            {

              goto LABEL_77;
            }

            v24 = v53 - 4;
            if (v139)
            {
              v54 = v39;
              v55 = MEMORY[0x1D38ABDB0](v53 - 4, v39);
            }

            else
            {
              if (v24 >= *(v51 + 16))
              {
                __break(1u);
LABEL_90:
                __break(1u);
                goto LABEL_91;
              }

              v54 = v39;
              v55 = *(v39 + 8 * v53);
            }

            v56 = v55;
            v57 = [v55 persistentIdentifier];
            v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v60 = v59;

            v61 = v45;
            v62 = [v45 persistentIdentifier];
            v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v65 = v64;

            if (v58 == v63 && v60 == v65)
            {
              break;
            }

            v67 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v67)
            {
              goto LABEL_79;
            }

            ++v53;
            v39 = v54;
            v45 = v61;
            v51 = v137;
            v43 = v138;
            if (__OFADD__(v24, 1))
            {
              goto LABEL_90;
            }
          }

LABEL_79:
          v69 = [objc_opt_self() gcsController:v61 initWithController:?];
          v39 = v54;
          isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
          if (v124 || !isUniquelyReferenced_nonNull_bridgeObject)
          {
            v39 = specialized _ArrayBuffer._consumeAndCreateNew()(v54);

            v71 = v39 & 0xFFFFFFFFFFFFFF8;
          }

          else
          {

            v71 = v137;
          }

          if (v24 < *(v71 + 16))
          {
            v72 = *(v71 + 8 * v53);
            *(v71 + 8 * v53) = v69;

            v143 = v39;
            v41 = v125;
            v43 = v138;
            goto LABEL_48;
          }

          goto LABEL_95;
        }

        v68 = [objc_opt_self() gcsController:v45 initWithController:?];
        v24 = &v144;
        MEMORY[0x1D38ABC10]();
        if (*((v144 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v144 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v74 = *((v144 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v132 = v144;
LABEL_77:
        v41 = v125;
LABEL_48:
        if (v43 == v133)
        {
          goto LABEL_105;
        }
      }

LABEL_47:

      goto LABEL_48;
    }
  }

  v132 = MEMORY[0x1E69E7CC0];
LABEL_105:

  v77 = v132;

  specialized Array.append<A>(contentsOf:)(v78);
  v79 = v143;
  v80 = v131;
  GCOverlaySettingsStore.save(controllers:completion:)(v143, [_GCLegacyDeviceSession noteInputProfileAccessOnController:], 0);
  v81 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v80) + 0xC0))(v79);
  (*((*v81 & *v80) + 0xA8))(v123);
  v82 = (v77 >> 62);
  if (v77 >> 62)
  {
    goto LABEL_141;
  }

  if (*((v77 & 0xFFFFFFFFFFFFFF8) + 0x10) <= 0)
  {
LABEL_145:

    return;
  }

LABEL_107:
  v83 = (*((*v81 & *v131) + 0x118))();
  v84 = [v83 controllerToProfileMappings];
  v77 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (!v82)
  {
    v85 = *((v132 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v128 = v83;
    if (!v85)
    {
      goto LABEL_132;
    }

    goto LABEL_109;
  }

  if (v132 < 0)
  {
    v112 = v132;
  }

  else
  {
    v112 = v132 & 0xFFFFFFFFFFFFFF8;
  }

  v85 = MEMORY[0x1D38ABE20](v112);
  v128 = v83;
  if (v85)
  {
LABEL_109:
    v86 = 0;
    v87 = v132;
    v88 = (*v81 & *v131);
    v133 = v132 & 0xFFFFFFFFFFFFFF8;
    v139 = v132 & 0xC000000000000001;
    v140 = v130 + 32;
    v88 += 36;
    v89 = *v88;
    v137 = v88;
    v138 = v89;
    v134 = v130 + 40;
    while (1)
    {
      if (v139)
      {
        v91 = MEMORY[0x1D38ABDB0](v86);
        v92 = (v86 + 1);
        if (__OFADD__(v86, 1))
        {
          goto LABEL_137;
        }
      }

      else
      {
        if (v86 >= *(v133 + 16))
        {
          goto LABEL_140;
        }

        v91 = *(v87 + 8 * v86 + 32);
        v92 = (v86 + 1);
        if (__OFADD__(v86, 1))
        {
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          if (v77 < 0)
          {
            v122 = v77;
          }

          else
          {
            v122 = v77 & 0xFFFFFFFFFFFFFF8;
          }

          if (MEMORY[0x1D38ABE20](v122) <= 0)
          {
            goto LABEL_145;
          }

          goto LABEL_107;
        }
      }

      v141 = v92;
      v82 = v91;
      v93 = [v91 persistentIdentifier];
      v94 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v96 = v95;

      v97 = v138();
      v98 = [v97 uuid];

      v99 = v129;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v81 = *v140;
      (*v140)(v135, v99, v136);
      v100 = swift_isUniquelyReferenced_nonNull_native();
      v145 = v77;
      v101 = specialized __RawDictionaryStorage.find<A>(_:)(v94, v96);
      v103 = *(v77 + 16);
      v104 = (v102 & 1) == 0;
      v46 = __OFADD__(v103, v104);
      v105 = v103 + v104;
      if (v46)
      {
        goto LABEL_138;
      }

      v106 = v102;
      if (*(v77 + 24) < v105)
      {
        break;
      }

      if (v100)
      {
        goto LABEL_123;
      }

      v111 = v101;
      specialized _NativeDictionary.copy()();
      v101 = v111;
      if (v106)
      {
LABEL_110:
        v90 = v101;

        v77 = v145;
        (*(v130 + 40))(*(v145 + 56) + *(v130 + 72) * v90, v135, v136);

        goto LABEL_111;
      }

LABEL_124:
      v77 = v145;
      *(v145 + 8 * (v101 >> 6) + 64) |= 1 << v101;
      v108 = (*(v77 + 48) + 16 * v101);
      *v108 = v94;
      v108[1] = v96;
      v81(*(v77 + 56) + *(v130 + 72) * v101, v135, v136);

      v109 = *(v77 + 16);
      v46 = __OFADD__(v109, 1);
      v110 = v109 + 1;
      if (v46)
      {
        goto LABEL_139;
      }

      *(v77 + 16) = v110;
LABEL_111:
      ++v86;
      v87 = v132;
      if (v141 == v85)
      {
        goto LABEL_132;
      }
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v105, v100);
    v101 = specialized __RawDictionaryStorage.find<A>(_:)(v94, v96);
    if ((v106 & 1) != (v107 & 1))
    {
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }

LABEL_123:
    if (v106)
    {
      goto LABEL_110;
    }

    goto LABEL_124;
  }

LABEL_132:

  v113 = v128;
  v114 = [v128 bundleIdentifier];
  if (!v114)
  {
    v115 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v114 = MEMORY[0x1D38ABB70](v115);
  }

  v116 = [v113 title];
  if (!v116)
  {
    v117 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v116 = MEMORY[0x1D38ABB70](v117);
  }

  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So20GCSCompatibilityModeaTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v118 = objc_allocWithZone(MEMORY[0x1E69A0740]);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  type metadata accessor for GCSCompatibilityMode();
  v120 = Dictionary._bridgeToObjectiveC()().super.isa;

  v121 = [v118 initWithBundleIdentifier:v114 title:v116 controllerToProfileMappings:isa controllerToCompatibilityModeMappings:v120];

  GCOverlaySettingsStore.updateGame(from:to:saveToDisk:)(v113, v121, 1);
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t a1)
{
  v2 = a1;
  if (a1 >> 62)
  {
    if (a1 >= 0)
    {
      a1 &= 0xFFFFFFFFFFFFFF8uLL;
    }

    v3 = MEMORY[0x1D38ABE20](a1);
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  else
  {
    v14 = v4 & 0xFFFFFFFFFFFFFF8;
  }

  v15 = MEMORY[0x1D38ABE20](v14);
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_18;
  }

LABEL_5:
  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  specialized Array._copyContents(initializing:)(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), v2);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t GCOverlaySettingsStore.updateGame(from:to:saveToDisk:)(void *a1, void *a2, char a3)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v23 = *(v7 - 8);
  v8 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchQoS();
  v11 = *(v22 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  v15 = static OS_dispatch_queue.main.getter();
  v16 = swift_allocObject();
  *(v16 + 16) = v3;
  *(v16 + 24) = a1;
  *(v16 + 32) = a2;
  *(v16 + 40) = a3;
  aBlock[4] = partial apply for closure #1 in GCOverlaySettingsStore.updateGame(from:to:saveToDisk:);
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_71;
  v17 = _Block_copy(aBlock);
  v18 = v3;
  v19 = a1;
  v20 = a2;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type GCSCompatibilityMode and conformance GCSCompatibilityMode(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1D38ABD30](0, v14, v10, v17);
  _Block_release(v17);

  (*(v23 + 8))(v10, v7);
  return (*(v11 + 8))(v14, v22);
}

Swift::Void __swiftcall GCOverlaySettingsStore.refresh()()
{
  if (one-time initialization token for overlay != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.overlay);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1D2CD5000, v1, v2, "", v3, 2u);
    MEMORY[0x1D38AD480](v3, -1, -1);
  }

  GCOverlaySettingsStore.loadControllers()();
  GCOverlaySettingsStore.loadProfiles()();

  GCOverlaySettingsStore.loadGames()();
}

void GCOverlaySettingsStore.loadControllers()()
{
  v1 = v0;
  v2 = type metadata accessor for NSFastEnumerationIterator();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*(v0 + OBJC_IVAR____TtC14GameController22GCOverlaySettingsStore_userDefaults) dictionaryForKey_];
  if (v7)
  {
    v8 = v7;
    v9 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v39 = MEMORY[0x1E69E7CC0];
    if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(1635017060, 0xE400000000000000), (v11 & 1) != 0))
    {
      outlined init with copy of Any(*(v9 + 56) + 32 * v10, v37);

      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSArray, 0x1E695DEC8);
      if (swift_dynamicCast())
      {
        v33 = v36;
        NSArray.makeIterator()();
        NSFastEnumerationIterator.next()();
        if (v38)
        {
          v34 = MEMORY[0x1E69E7CC0];
          do
          {
            outlined init with take of Any(v37, &v36);
            type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSDictionary, 0x1E695DF20);
            if (swift_dynamicCast())
            {
              v12 = v35;
              v13 = [objc_allocWithZone(MEMORY[0x1E69A0728]) initWithJSONObject_];
              if (v13)
              {
                v34 = v13;
                MEMORY[0x1D38ABC10]();
                if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  v32[1] = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                }

                specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

                v34 = v39;
              }

              else
              {
              }
            }

            NSFastEnumerationIterator.next()();
          }

          while (v38);
        }

        else
        {
          v34 = MEMORY[0x1E69E7CC0];
        }

        (*(v3 + 8))(v6, v2);

        v14 = v34;
        goto LABEL_16;
      }
    }

    else
    {
    }

    v14 = MEMORY[0x1E69E7CC0];
LABEL_16:
    v15 = MEMORY[0x1E69E7D40];
    (*((*MEMORY[0x1E69E7D40] & *v1) + 0xC0))(v14);
    if (one-time initialization token for overlay != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Logger.overlay);
    v17 = static os_log_type_t.info.getter();
    v18 = v1;
    v19 = Logger.logObject.getter();

    if (os_log_type_enabled(v19, v17))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v37[0] = v21;
      *v20 = 136315138;
      v22 = (*((*v15 & *v18) + 0xB8))();
      v23 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for GCSController, 0x1E69A0728);
      v24 = MEMORY[0x1D38ABC40](v22, v23);
      v26 = v25;

      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, v37);

      *(v20 + 4) = v27;
      _os_log_impl(&dword_1D2CD5000, v19, v17, "Loaded controllers = %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x1D38AD480](v21, -1, -1);
      MEMORY[0x1D38AD480](v20, -1, -1);
    }

    return;
  }

  if (one-time initialization token for overlay != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  __swift_project_value_buffer(v28, static Logger.overlay);
  v29 = static os_log_type_t.info.getter();
  v34 = Logger.logObject.getter();
  if (os_log_type_enabled(v34, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_1D2CD5000, v34, v29, "Unable to load controllers data", v30, 2u);
    MEMORY[0x1D38AD480](v30, -1, -1);
  }

  v31 = v34;
}

void GCOverlaySettingsStore.loadProfiles()()
{
  v1 = v0;
  v2 = type metadata accessor for NSFastEnumerationIterator();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*(v0 + OBJC_IVAR____TtC14GameController22GCOverlaySettingsStore_userDefaults) dictionaryForKey_];
  if (v7)
  {
    v8 = v7;
    v9 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v39 = MEMORY[0x1E69E7CC0];
    if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(1635017060, 0xE400000000000000), (v11 & 1) != 0))
    {
      outlined init with copy of Any(*(v9 + 56) + 32 * v10, v37);

      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSArray, 0x1E695DEC8);
      if (swift_dynamicCast())
      {
        v33 = v36;
        NSArray.makeIterator()();
        NSFastEnumerationIterator.next()();
        if (v38)
        {
          v34 = MEMORY[0x1E69E7CC0];
          do
          {
            outlined init with take of Any(v37, &v36);
            type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSDictionary, 0x1E695DF20);
            if (swift_dynamicCast())
            {
              v12 = v35;
              v13 = [objc_allocWithZone(MEMORY[0x1E69A0748]) initWithJSONObject_];
              if (v13)
              {
                v34 = v13;
                MEMORY[0x1D38ABC10]();
                if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  v32[1] = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                }

                specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

                v34 = v39;
              }

              else
              {
              }
            }

            NSFastEnumerationIterator.next()();
          }

          while (v38);
        }

        else
        {
          v34 = MEMORY[0x1E69E7CC0];
        }

        (*(v3 + 8))(v6, v2);

        v14 = v34;
        goto LABEL_16;
      }
    }

    else
    {
    }

    v14 = MEMORY[0x1E69E7CC0];
LABEL_16:
    v15 = MEMORY[0x1E69E7D40];
    (*((*MEMORY[0x1E69E7D40] & *v1) + 0xF0))(v14);
    if (one-time initialization token for overlay != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Logger.overlay);
    v17 = static os_log_type_t.info.getter();
    v18 = v1;
    v19 = Logger.logObject.getter();

    if (os_log_type_enabled(v19, v17))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v37[0] = v21;
      *v20 = 136315138;
      v22 = (*((*v15 & *v18) + 0xE8))();
      v23 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for GCSProfile, 0x1E69A0748);
      v24 = MEMORY[0x1D38ABC40](v22, v23);
      v26 = v25;

      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, v37);

      *(v20 + 4) = v27;
      _os_log_impl(&dword_1D2CD5000, v19, v17, "Loaded profiles = %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x1D38AD480](v21, -1, -1);
      MEMORY[0x1D38AD480](v20, -1, -1);
    }

    return;
  }

  if (one-time initialization token for overlay != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  __swift_project_value_buffer(v28, static Logger.overlay);
  v29 = static os_log_type_t.info.getter();
  v34 = Logger.logObject.getter();
  if (os_log_type_enabled(v34, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_1D2CD5000, v34, v29, "Unable to load profiles data", v30, 2u);
    MEMORY[0x1D38AD480](v30, -1, -1);
  }

  v31 = v34;
}

void GCOverlaySettingsStore.loadGames()()
{
  v1 = v0;
  v2 = type metadata accessor for NSFastEnumerationIterator();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*(v0 + OBJC_IVAR____TtC14GameController22GCOverlaySettingsStore_userDefaults) dictionaryForKey_];
  if (v7)
  {
    v8 = v7;
    v9 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v39 = MEMORY[0x1E69E7CC0];
    if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(1635017060, 0xE400000000000000), (v11 & 1) != 0))
    {
      outlined init with copy of Any(*(v9 + 56) + 32 * v10, v37);

      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSArray, 0x1E695DEC8);
      if (swift_dynamicCast())
      {
        v33 = v36;
        NSArray.makeIterator()();
        NSFastEnumerationIterator.next()();
        if (v38)
        {
          v34 = MEMORY[0x1E69E7CC0];
          do
          {
            outlined init with take of Any(v37, &v36);
            type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSDictionary, 0x1E695DF20);
            if (swift_dynamicCast())
            {
              v12 = v35;
              v13 = [objc_allocWithZone(MEMORY[0x1E69A0740]) initWithJSONObject_];
              if (v13)
              {
                v34 = v13;
                MEMORY[0x1D38ABC10]();
                if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  v32[1] = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                }

                specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

                v34 = v39;
              }

              else
              {
              }
            }

            NSFastEnumerationIterator.next()();
          }

          while (v38);
        }

        else
        {
          v34 = MEMORY[0x1E69E7CC0];
        }

        (*(v3 + 8))(v6, v2);

        v14 = v34;
        goto LABEL_16;
      }
    }

    else
    {
    }

    v14 = MEMORY[0x1E69E7CC0];
LABEL_16:
    v15 = MEMORY[0x1E69E7D40];
    (*((*MEMORY[0x1E69E7D40] & *v1) + 0x108))(v14);
    if (one-time initialization token for overlay != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Logger.overlay);
    v17 = static os_log_type_t.info.getter();
    v18 = v1;
    v19 = Logger.logObject.getter();

    if (os_log_type_enabled(v19, v17))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v37[0] = v21;
      *v20 = 136315138;
      v22 = (*((*v15 & *v18) + 0x100))();
      v23 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for GCSGame, 0x1E69A0740);
      v24 = MEMORY[0x1D38ABC40](v22, v23);
      v26 = v25;

      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, v37);

      *(v20 + 4) = v27;
      _os_log_impl(&dword_1D2CD5000, v19, v17, "Loaded games = %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x1D38AD480](v21, -1, -1);
      MEMORY[0x1D38AD480](v20, -1, -1);
    }

    return;
  }

  if (one-time initialization token for overlay != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  __swift_project_value_buffer(v28, static Logger.overlay);
  v29 = static os_log_type_t.info.getter();
  v34 = Logger.logObject.getter();
  if (os_log_type_enabled(v34, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_1D2CD5000, v34, v29, "Unable to load games data", v30, 2u);
    MEMORY[0x1D38AD480](v30, -1, -1);
  }

  v31 = v34;
}

uint64_t closure #1 in GCOverlaySettingsStore.save(controllers:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a3;
  v52 = a4;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v57 = *(v6 - 8);
  v58 = v6;
  v7 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v55 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for DispatchQoS();
  v54 = *(v56 - 8);
  v9 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v56);
  v53 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  aBlock[0] = MEMORY[0x1E69E7CC0];
  v50 = a2;
  if (a1 >> 62)
  {
LABEL_29:
    if (a1 < 0)
    {
      v48 = a1;
    }

    else
    {
      v48 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    v11 = MEMORY[0x1D38ABE20](v48);
  }

  else
  {
    v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = 0;
  v13 = MEMORY[0x1E69E7CC0];
  while (v11 != v12)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x1D38ABDB0](v12, a1);
    }

    else
    {
      if (v12 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_28;
      }

      v14 = *(a1 + 8 * v12 + 32);
    }

    v15 = v14;
    v16 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v17 = [v14 jsonObject];

    ++v12;
    if (v17)
    {
      MEMORY[0x1D38ABC10]();
      if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v18 = *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v13 = aBlock[0];
      v12 = v16;
    }
  }

  v19 = OBJC_IVAR____TtC14GameController22GCOverlaySettingsStore_userDefaults;
  v20 = v50;
  v21 = [*(v50 + OBJC_IVAR____TtC14GameController22GCOverlaySettingsStore_userDefaults) stringForKey_];
  if (!v21)
  {
LABEL_20:
    v28 = *(v20 + OBJC_IVAR____TtC14GameController22GCOverlaySettingsStore_preferencesVersion);
    v29 = *(v20 + OBJC_IVAR____TtC14GameController22GCOverlaySettingsStore_preferencesVersion + 8);
    v30 = *(v20 + v19);
    v31 = MEMORY[0x1D38ABB70](v28, v29);
    [v30 setObject:v31 forKey:@"settingsVersion"];

    goto LABEL_22;
  }

  v22 = v21;
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  if (v23 != *(v20 + OBJC_IVAR____TtC14GameController22GCOverlaySettingsStore_preferencesVersion) || v25 != *(v20 + OBJC_IVAR____TtC14GameController22GCOverlaySettingsStore_preferencesVersion + 8))
  {
    v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v27)
    {
      goto LABEL_22;
    }

    goto LABEL_20;
  }

LABEL_22:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SaySo13GCSJSONObject_pGtGMd, &_ss23_ContiguousArrayStorageCySS_SaySo13GCSJSONObject_pGtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D2DF1400;
  *(inited + 32) = 1635017060;
  v33 = inited + 32;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = v13;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SaySo13GCSJSONObject_pGTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of Any?(v33, &_sSS_SaySo13GCSJSONObject_pGtMd, &_sSS_SaySo13GCSJSONObject_pGtMR);
  v34 = *(v20 + v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo13GCSJSONObject_pGMd, &_sSaySo13GCSJSONObject_pGMR);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v34 setObject:isa forKey:@"controllers"];

  if (one-time initialization token for overlay != -1)
  {
    swift_once();
  }

  v36 = type metadata accessor for Logger();
  __swift_project_value_buffer(v36, static Logger.overlay);
  v37 = static os_log_type_t.info.getter();
  v38 = Logger.logObject.getter();
  if (os_log_type_enabled(v38, v37))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&dword_1D2CD5000, v38, v37, "Saving controllers...", v39, 2u);
    MEMORY[0x1D38AD480](v39, -1, -1);
  }

  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  v40 = static OS_dispatch_queue.main.getter();
  v41 = swift_allocObject();
  v42 = v52;
  v41[2] = v51;
  v41[3] = v42;
  v41[4] = a1;
  aBlock[4] = partial apply for closure #2 in closure #1 in GCOverlaySettingsStore.save(controllers:completion:);
  aBlock[5] = v41;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_35;
  v43 = _Block_copy(aBlock);

  v44 = v53;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type GCSCompatibilityMode and conformance GCSCompatibilityMode(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  v45 = v55;
  v46 = v58;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1D38ABD30](0, v44, v45, v43);
  _Block_release(v43);

  (*(v57 + 8))(v45, v46);
  return (*(v54 + 8))(v44, v56);
}

uint64_t thunk for @escaping @callee_guaranteed () -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t GCOverlaySettingsStore.save(controllers:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v31 = a5;
  v32 = a6;
  v28[1] = a4;
  v29 = a2;
  v7 = v6;
  v30 = a3;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v35 = *(v9 - 8);
  v10 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v33 = *(v13 - 8);
  v34 = v13;
  v14 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS.QoSClass();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  (*(v18 + 104))(v21, *MEMORY[0x1E69E7FA0], v17);
  v22 = static OS_dispatch_queue.global(qos:)();
  (*(v18 + 8))(v21, v17);
  v23 = swift_allocObject();
  v23[2] = a1;
  v23[3] = v6;
  v24 = v30;
  v23[4] = v29;
  v23[5] = v24;
  aBlock[4] = v31;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = v32;
  v25 = _Block_copy(aBlock);

  v26 = v7;

  static DispatchQoS.unspecified.getter();
  v36 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type GCSCompatibilityMode and conformance GCSCompatibilityMode(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1D38ABD30](0, v16, v12, v25);
  _Block_release(v25);

  (*(v35 + 8))(v12, v9);
  (*(v33 + 8))(v16, v34);
}

uint64_t closure #1 in GCOverlaySettingsStore.save(games:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a3;
  v52 = a4;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v57 = *(v6 - 8);
  v58 = v6;
  v7 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v55 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for DispatchQoS();
  v54 = *(v56 - 8);
  v9 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v56);
  v53 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  aBlock[0] = MEMORY[0x1E69E7CC0];
  v50 = a2;
  if (a1 >> 62)
  {
LABEL_29:
    if (a1 < 0)
    {
      v48 = a1;
    }

    else
    {
      v48 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    v11 = MEMORY[0x1D38ABE20](v48);
  }

  else
  {
    v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = 0;
  v13 = MEMORY[0x1E69E7CC0];
  while (v11 != v12)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x1D38ABDB0](v12, a1);
    }

    else
    {
      if (v12 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_28;
      }

      v14 = *(a1 + 8 * v12 + 32);
    }

    v15 = v14;
    v16 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v17 = [v14 jsonObject];

    ++v12;
    if (v17)
    {
      MEMORY[0x1D38ABC10]();
      if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v18 = *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v13 = aBlock[0];
      v12 = v16;
    }
  }

  v19 = OBJC_IVAR____TtC14GameController22GCOverlaySettingsStore_userDefaults;
  v20 = v50;
  v21 = [*(v50 + OBJC_IVAR____TtC14GameController22GCOverlaySettingsStore_userDefaults) stringForKey_];
  if (!v21)
  {
LABEL_20:
    v28 = *(v20 + OBJC_IVAR____TtC14GameController22GCOverlaySettingsStore_preferencesVersion);
    v29 = *(v20 + OBJC_IVAR____TtC14GameController22GCOverlaySettingsStore_preferencesVersion + 8);
    v30 = *(v20 + v19);
    v31 = MEMORY[0x1D38ABB70](v28, v29);
    [v30 setObject:v31 forKey:@"settingsVersion"];

    goto LABEL_22;
  }

  v22 = v21;
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  if (v23 != *(v20 + OBJC_IVAR____TtC14GameController22GCOverlaySettingsStore_preferencesVersion) || v25 != *(v20 + OBJC_IVAR____TtC14GameController22GCOverlaySettingsStore_preferencesVersion + 8))
  {
    v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v27)
    {
      goto LABEL_22;
    }

    goto LABEL_20;
  }

LABEL_22:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SaySo13GCSJSONObject_pGtGMd, &_ss23_ContiguousArrayStorageCySS_SaySo13GCSJSONObject_pGtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D2DF1400;
  *(inited + 32) = 1635017060;
  v33 = inited + 32;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = v13;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SaySo13GCSJSONObject_pGTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of Any?(v33, &_sSS_SaySo13GCSJSONObject_pGtMd, &_sSS_SaySo13GCSJSONObject_pGtMR);
  v34 = *(v20 + v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo13GCSJSONObject_pGMd, &_sSaySo13GCSJSONObject_pGMR);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v34 setObject:isa forKey:@"games"];

  if (one-time initialization token for overlay != -1)
  {
    swift_once();
  }

  v36 = type metadata accessor for Logger();
  __swift_project_value_buffer(v36, static Logger.overlay);
  v37 = static os_log_type_t.info.getter();
  v38 = Logger.logObject.getter();
  if (os_log_type_enabled(v38, v37))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&dword_1D2CD5000, v38, v37, "Saving games...", v39, 2u);
    MEMORY[0x1D38AD480](v39, -1, -1);
  }

  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  v40 = static OS_dispatch_queue.main.getter();
  v41 = swift_allocObject();
  v42 = v52;
  v41[2] = v51;
  v41[3] = v42;
  v41[4] = a1;
  aBlock[4] = partial apply for closure #2 in closure #1 in GCOverlaySettingsStore.save(games:completion:);
  aBlock[5] = v41;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_23;
  v43 = _Block_copy(aBlock);

  v44 = v53;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type GCSCompatibilityMode and conformance GCSCompatibilityMode(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  v45 = v55;
  v46 = v58;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1D38ABD30](0, v44, v45, v43);
  _Block_release(v43);

  (*(v57 + 8))(v45, v46);
  return (*(v54 + 8))(v44, v56);
}

void GCOverlaySettingsStore.setSelectedProfile(to:controller:game:)(void *a1, void *a2, void *a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a3 controllerToProfileMappings];
  v11 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v12 = [a2 persistentIdentifier];
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v44 = a1;
  v16 = [a1 uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v45 = v11;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v9, v13, v15, isUniquelyReferenced_nonNull_native);

  v18 = [a3 bundleIdentifier];
  if (!v18)
  {
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = MEMORY[0x1D38ABB70](v19);
  }

  v20 = [a3 localizedName];
  v21 = [a3 controllerToCompatibilityModeMappings];
  type metadata accessor for GCSCompatibilityMode();
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v22 = objc_allocWithZone(MEMORY[0x1E69A0740]);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v24 = Dictionary._bridgeToObjectiveC()().super.isa;

  v25 = [v22 initWithBundleIdentifier:v18 title:v20 controllerToProfileMappings:isa controllerToCompatibilityModeMappings:v24];

  if (one-time initialization token for overlay != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  __swift_project_value_buffer(v26, static Logger.overlay);
  v27 = a3;
  v28 = v44;
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v45 = v32;
    *v31 = 136315394;
    v33 = [v27 localizedName];
    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v35;

    v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v36, &v45);

    *(v31 + 4) = v37;
    *(v31 + 12) = 2080;
    v38 = [v28 name];
    v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v41 = v40;

    v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v41, &v45);

    *(v31 + 14) = v42;
    _os_log_impl(&dword_1D2CD5000, v29, v30, "Mapping %s to %s", v31, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D38AD480](v32, -1, -1);
    MEMORY[0x1D38AD480](v31, -1, -1);
  }

  GCOverlaySettingsStore.updateGame(from:to:saveToDisk:)(v27, v25, 1);
}

id GCOverlaySettingsStore.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GCOverlaySettingsStore();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t GCSGame.profile(for:with:)(void *a1, void *a2)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v34[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v34[-v11];
  v13 = [v2 controllerToProfileMappings];
  v14 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v15 = [a1 persistentIdentifier];
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  if (!*(v14 + 16))
  {

    goto LABEL_10;
  }

  v19 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v18);
  v21 = v20;

  if ((v21 & 1) == 0)
  {
LABEL_10:

    return (*((*MEMORY[0x1E69E7D40] & *a2) + 0x120))(v29);
  }

  (*(v6 + 16))(v10, *(v14 + 56) + *(v6 + 72) * v19, v5);

  v22 = (*(v6 + 32))(v12, v10, v5);
  v23 = MEMORY[0x1E69E7D40];
  v24 = (*((*MEMORY[0x1E69E7D40] & *a2) + 0xE8))(v22);
  MEMORY[0x1EEE9AC00](v24);
  *&v34[-16] = v12;
  result = specialized _ArrayProtocol.filter(_:)(partial apply for closure #1 in GCSGame.profile(for:with:), &v34[-32], v25);
  if (result >> 62)
  {
    v30 = result & 0xFFFFFFFFFFFFFF8;
    if (result < 0)
    {
      v30 = result;
    }

    v31 = result;
    v32 = MEMORY[0x1D38ABE20](v30);
    result = v31;
    if (v32)
    {
      goto LABEL_5;
    }

LABEL_14:

    v28 = (*((*v23 & *a2) + 0x120))(v33);
    goto LABEL_15;
  }

  if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_14;
  }

LABEL_5:
  if ((result & 0xC000000000000001) != 0)
  {
    v27 = MEMORY[0x1D38ABDB0](0, result);
  }

  else
  {
    if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v27 = *(result + 32);
  }

  v28 = v27;

LABEL_15:
  (*(v6 + 8))(v12, v5);
  return v28;
}

id @objc GCSGame.profile(for:with:)(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  v9 = GCSGame.profile(for:with:)(v6, v7);

  return v9;
}

BOOL GCSGame.profileExists(for:with:)(void *a1, void *a2)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v32[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v32[-v11];
  v13 = [v2 controllerToProfileMappings];
  v14 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v15 = [a1 persistentIdentifier];
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  if (!*(v14 + 16))
  {
    goto LABEL_9;
  }

  v19 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v18);
  v21 = v20;

  if ((v21 & 1) == 0)
  {
LABEL_10:

    return 0;
  }

  (*(v6 + 16))(v10, *(v14 + 56) + *(v6 + 72) * v19, v5);

  v22 = (*(v6 + 32))(v12, v10, v5);
  v23 = (*((*MEMORY[0x1E69E7D40] & *a2) + 0xE8))(v22);
  MEMORY[0x1EEE9AC00](v23);
  *&v32[-16] = v12;
  v25 = specialized _ArrayProtocol.filter(_:)(partial apply for closure #1 in GCSGame.profileExists(for:with:), &v32[-32], v24);
  if (v25 >> 62)
  {
    v30 = v25 & 0xFFFFFFFFFFFFFF8;
    if (v25 < 0)
    {
      v30 = v25;
    }

    v31 = v25;
    v26 = MEMORY[0x1D38ABE20](v30);
    v25 = v31;
  }

  else
  {
    v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v27 = v26 != 0;
  if (!v26)
  {
    goto LABEL_15;
  }

  if ((v25 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1D38ABDB0](0, v25);
    swift_unknownObjectRelease();
LABEL_15:

    goto LABEL_16;
  }

  v28 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (!v28)
  {
    __break(1u);
LABEL_9:

    goto LABEL_10;
  }

LABEL_16:
  (*(v6 + 8))(v12, v5);
  return v27;
}

uint64_t closure #1 in GCSGame.profile(for:with:)(id *a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*a1 uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v8 = static UUID.== infix(_:_:)();
  (*(v3 + 8))(v6, v2);
  return v8 & 1;
}

BOOL @objc GCSGame.profileExists(for:with:)(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  v9 = GCSGame.profileExists(for:with:)(v6, v7);

  return v9;
}

uint64_t @objc GCSGame.customizable.getter(void *a1)
{
  v1 = a1;
  v2 = [v1 bundleIdentifier];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6 = [objc_opt_self() defaultIdentifier];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  if (v3 == v7 && v5 == v9)
  {

    v12 = 0;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v12 = v11 ^ 1;
  }

  return v12 & 1;
}

uint64_t GCSGame.customizable.getter()
{
  v1 = [v0 bundleIdentifier];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  v5 = [objc_opt_self() defaultIdentifier];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  if (v2 == v6 && v4 == v8)
  {

    v11 = 0;
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v11 = v10 ^ 1;
  }

  return v11 & 1;
}

id @objc GCSGame.localizedName.getter(void *a1)
{
  v1 = a1;
  v2 = GCSGame.localizedName.getter();
  v4 = v3;

  v5 = MEMORY[0x1D38ABB70](v2, v4);

  return v5;
}

uint64_t GCSGame.localizedName.getter()
{
  v1 = v0;
  v2 = 0x656D6147206C6C41;
  v3 = [v0 bundleIdentifier];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7 = [objc_opt_self() defaultIdentifier];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  if (v4 == v8 && v6 == v10)
  {
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v12 & 1) == 0)
    {
      if (objc_getAssociatedObject(v1, &static GCSGame.AssociatedKeys.localizedName))
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v27 = 0u;
        v28 = 0u;
      }

      v29[0] = v27;
      v29[1] = v28;
      if (*(&v28 + 1))
      {
        if (swift_dynamicCast())
        {
          return v26;
        }
      }

      else
      {
        outlined destroy of Any?(v29, &_sypSgMd, &_sypSgMR);
      }

      v13 = [v1 title];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v14 = [v1 bundleIdentifier];
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;

      v18 = objc_allocWithZone(MEMORY[0x1E69635F8]);
      v19 = @nonobjc LSApplicationRecord.init(bundleIdentifier:allowPlaceholder:)(v15, v17, 0);

      static Locale.preferredLanguages.getter();
      isa = Array._bridgeToObjectiveC()().super.isa;

      v21 = [v19 localizedNameWithPreferredLocalizations_];

      v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = v22;

      v24 = MEMORY[0x1D38ABB70](v2, v23);
      objc_setAssociatedObject(v1, &static GCSGame.AssociatedKeys.localizedName, v24, 0x301);
    }
  }

  return v2;
}

id @nonobjc LSApplicationRecord.init(bundleIdentifier:allowPlaceholder:)(uint64_t a1, uint64_t a2, char a3)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1D38ABB70]();

  v11[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v11];

  if (v6)
  {
    v7 = v11[0];
  }

  else
  {
    v8 = v11[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v9 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance GCSCompatibilityMode(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance GCSCompatibilityMode(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance GCSCompatibilityMode@<X0>(uint64_t *a1@<X8>)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = MEMORY[0x1D38ABB70](v2);

  *a1 = v3;
  return result;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance GCSCompatibilityMode@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = MEMORY[0x1D38ABB70](*a1, a1[1]);

  *a2 = v3;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance GCSCompatibilityMode@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance GCSCompatibilityMode(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GCSCompatibilityMode and conformance GCSCompatibilityMode(&lazy protocol witness table cache variable for type GCSCompatibilityMode and conformance GCSCompatibilityMode, type metadata accessor for GCSCompatibilityMode);
  v3 = lazy protocol witness table accessor for type GCSCompatibilityMode and conformance GCSCompatibilityMode(&lazy protocol witness table cache variable for type GCSCompatibilityMode and conformance GCSCompatibilityMode, type metadata accessor for GCSCompatibilityMode);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance GCSCompatibilityMode()
{
  v1 = *v0;
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = MEMORY[0x1D38ABBD0](v2);

  return v3;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance GCSCompatibilityMode()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance GCSCompatibilityMode()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return v2;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance GCSCompatibilityMode(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    outlined init with copy of Any(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t specialized _StringGuts._deconstructUTF8<A>(scratch:)(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t _StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v4 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    if (v3 < 0)
    {
      v7 = v3;
    }

    else
    {
      v7 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    MEMORY[0x1D38ABE20](v7);
    goto LABEL_14;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_14:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v1 = result;
  return result;
}

uint64_t specialized Sequence.contains(where:)(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v6);
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, int a2)
{
  v3 = v2;
  v49 = type metadata accessor for UUID();
  v6 = *(v49 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v48 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation4UUIDVGMd, &_ss18_DictionaryStorageCySS10Foundation4UUIDVGMR);
  v46 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v12 = result;
  if (*(v9 + 16))
  {
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v42 = v2;
    v43 = (v6 + 16);
    v44 = v9;
    v45 = v6;
    v47 = (v6 + 32);
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v29 = *v27;
      v28 = v27[1];
      v30 = *(v45 + 72);
      v31 = v26 + v30 * v25;
      if (v46)
      {
        (*v47)(v48, v31, v49);
      }

      else
      {
        (*v43)(v48, v31, v49);
      }

      v32 = *(v12 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v29;
      v21[1] = v28;
      result = (*v47)(*(v12 + 56) + v30 * v20, v48, v49);
      ++*(v12 + 16);
      v9 = v44;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v46 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v42;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v10 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v15, a4 & 1);
    v26 = *v5;
    v27 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v16 & 1) == (v28 & 1))
    {
      v12 = v27;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = type metadata accessor for UUID();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:
  specialized _NativeDictionary._insert(at:key:value:)(v12, a2, a3, a1, v18);
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for UUID();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

char *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  v36 = type metadata accessor for UUID();
  v38 = *(v36 - 8);
  v2 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation4UUIDVGMd, &_ss18_DictionaryStorageCySS10Foundation4UUIDVGMR);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v37 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v39 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = 16 * v19;
        v21 = (*(v4 + 48) + 16 * v19);
        v22 = *v21;
        v23 = v21[1];
        v24 = v38;
        v25 = *(v38 + 72) * v19;
        v26 = v35;
        v27 = v36;
        (*(v38 + 16))(v35, *(v4 + 56) + v25, v36);
        v28 = v37;
        v29 = (*(v37 + 48) + v20);
        *v29 = v22;
        v29[1] = v23;
        (*(v24 + 32))(*(v28 + 56) + v25, v26, v27);

        v14 = v39;
      }

      while (v39);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v31;
        v6 = v37;
        goto LABEL_18;
      }

      v18 = *(v32 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

uint64_t specialized _ArrayBuffer._consumeAndCreateNew()(uint64_t a1)
{
  if (a1 >> 62)
  {
    if (a1 >= 0)
    {
      a1 &= 0xFFFFFFFFFFFFFF8uLL;
    }

    MEMORY[0x1D38ABE20](a1);
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

void (*specialized protocol witness for Collection.subscript.read in conformance [A](void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1D38ABDB0](a2, a3);
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void type metadata accessor for GCSCompatibilityMode()
{
  if (!lazy cache variable for type metadata for GCSCompatibilityMode)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for GCSCompatibilityMode);
    }
  }
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t lazy protocol witness table accessor for type GCSCompatibilityMode and conformance GCSCompatibilityMode(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t specialized Array._copyContents(initializing:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    if (a3 < 0)
    {
      v13 = a3;
    }

    else
    {
      v13 = a3 & 0xFFFFFFFFFFFFFF8;
    }

    v14 = a2;
    result = MEMORY[0x1D38ABE20](v13);
    a2 = v14;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      if (a3 < 0)
      {
        v7 = a3;
      }

      else
      {
        v7 = a3 & 0xFFFFFFFFFFFFFF8;
      }

      v8 = a2;
      result = MEMORY[0x1D38ABE20](v7);
      if (result <= v8)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [GCSController] and conformance [A], &_sSaySo13GCSControllerCGMd, &_sSaySo13GCSControllerCGMR);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo13GCSControllerCGMd, &_sSaySo13GCSControllerCGMR);
            v10 = specialized protocol witness for Collection.subscript.read in conformance [A](v15, i, a3);
            v12 = *v11;
            (v10)(v15, 0);
            *(v4 + 8 * i) = v12;
          }

          return a3;
        }

        goto LABEL_22;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for GCSController, 0x1E69A0728);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_22:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So20GCSCompatibilityModeaTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSo20GCSCompatibilityModeaGMd, &_ss18_DictionaryStorageCySSSo20GCSCompatibilityModeaGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SaySo13GCSJSONObject_pGTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSaySo13GCSJSONObject_pGGMd, _ss18_DictionaryStorageCySSSaySo13GCSJSONObject_pGGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t outlined destroy of Any?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t objectdestroy_19Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t partial apply for closure #2 in closure #1 in GCOverlaySettingsStore.save(games:completion:)()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v1 + 32);
  if (v4 >> 62)
  {
    if (v4 < 0)
    {
      v7 = v4;
    }

    else
    {
      v7 = v4 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = MEMORY[0x1D38ABE20](v7);
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v2(v5, 0);
}

uint64_t partial apply for specialized closure #1 in Sequence<>.contains(_:)(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t partial apply for closure #1 in GCOverlaySettingsStore.updateGame(from:to:saveToDisk:)()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v33 = *(v1 + 24);
  v29 = *(v1 + 32);
  v30 = *(v1 + 40);
  v3 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x100))();
  v4 = v3;
  v28 = v3 >> 62;
  v31 = v2;
  v5 = v3 & 0xFFFFFFFFFFFFFF8;
  if (v3 >> 62)
  {
LABEL_31:
    if (v4 < 0)
    {
      v27 = v4;
    }

    else
    {
      v27 = v5;
    }

    v6 = MEMORY[0x1D38ABE20](v27);
  }

  else
  {
    v6 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v34 = v4 & 0xC000000000000001;

  v7 = -v6;
  v8 = 4;
  v32 = v5;
  while (1)
  {
    if (v7 + v8 == 4)
    {

      goto LABEL_26;
    }

    v9 = v8 - 4;
    if (v34)
    {
      v10 = v4;
      v11 = MEMORY[0x1D38ABDB0](v8 - 4, v4);
    }

    else
    {
      if (v9 >= *(v5 + 16))
      {
        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      v10 = v4;
      v11 = *(v4 + 8 * v8);
    }

    v12 = v11;
    v13 = [v11 bundleIdentifier];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v17 = [v33 bundleIdentifier];
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    if (v14 == v18 && v16 == v20)
    {

      v4 = v10;

      goto LABEL_20;
    }

    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v22)
    {
      break;
    }

    ++v8;
    v4 = v10;
    v5 = v32;
    if (__OFADD__(v9, 1))
    {
      goto LABEL_30;
    }
  }

  v4 = v10;
LABEL_20:

  v23 = v29;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (v28 || (result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
    v4 = result;
    v25 = result & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
    v25 = v32;
  }

  if (v9 >= *(v25 + 16))
  {
    __break(1u);
    return result;
  }

  v26 = *(v25 + 8 * v8);
  *(v25 + 8 * v8) = v23;

LABEL_26:
  if (v30)
  {
    GCOverlaySettingsStore.save(games:completion:)(v4, [_GCLegacyDeviceSession noteInputProfileAccessOnController:], 0);
  }

  return (*((*MEMORY[0x1E69E7D40] & *v31) + 0x108))(v4);
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t type metadata accessor for OS_dispatch_queue(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

unint64_t type metadata accessor for GCRacingWheel()
{
  result = lazy cache variable for type metadata for GCRacingWheel;
  if (!lazy cache variable for type metadata for GCRacingWheel)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for GCRacingWheel);
  }

  return result;
}

uint64_t static GCRacingWheel.DidConnectMessage.makeMessage(_:)@<X0>(void *a1@<X8>)
{
  Notification.object.getter();
  if (!v6)
  {
    result = outlined destroy of Any?(v5);
    goto LABEL_5;
  }

  type metadata accessor for GCRacingWheel();
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_5:
    v3 = 0;
    goto LABEL_6;
  }

  v3 = v4;
LABEL_6:
  *a1 = v3;
  return result;
}

unint64_t lazy protocol witness table accessor for type GCRacingWheel.DidConnectMessage and conformance GCRacingWheel.DidConnectMessage()
{
  result = lazy protocol witness table cache variable for type GCRacingWheel.DidConnectMessage and conformance GCRacingWheel.DidConnectMessage;
  if (!lazy protocol witness table cache variable for type GCRacingWheel.DidConnectMessage and conformance GCRacingWheel.DidConnectMessage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GCRacingWheel.DidConnectMessage and conformance GCRacingWheel.DidConnectMessage);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GCRacingWheel.DidDisconnectMessage and conformance GCRacingWheel.DidDisconnectMessage()
{
  result = lazy protocol witness table cache variable for type GCRacingWheel.DidDisconnectMessage and conformance GCRacingWheel.DidDisconnectMessage;
  if (!lazy protocol witness table cache variable for type GCRacingWheel.DidDisconnectMessage and conformance GCRacingWheel.DidDisconnectMessage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GCRacingWheel.DidDisconnectMessage and conformance GCRacingWheel.DidDisconnectMessage);
  }

  return result;
}

uint64_t GCDevicePhysicalInputState.elements.getter@<X0>(SEL *a1@<X1>, uint64_t *a2@<X2>, uint64_t *a3@<X3>, void *a4@<X8>)
{
  v7 = v4;
  v9 = [v7 *a1];
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);

  return GCPhysicalInputElementCollection.init(_:)(v9, a4);
}

uint64_t GCDirectionPadElementName.rawValue.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t one-time initialization function for directionPad()
{
  result = GCInputDirectionPad.getter();
  static GCDirectionPadElementName.directionPad = result;
  unk_1EC737080 = v1;
  return result;
}

uint64_t *GCDirectionPadElementName.directionPad.unsafeMutableAddressor()
{
  if (one-time initialization token for directionPad != -1)
  {
    swift_once();
  }

  return &static GCDirectionPadElementName.directionPad;
}

uint64_t one-time initialization function for thumbstick()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  static GCDirectionPadElementName.thumbstick = result;
  *algn_1EC737098 = v1;
  return result;
}

uint64_t *GCDirectionPadElementName.thumbstick.unsafeMutableAddressor()
{
  if (one-time initialization token for thumbstick != -1)
  {
    swift_once();
  }

  return &static GCDirectionPadElementName.thumbstick;
}

uint64_t one-time initialization function for leftThumbstick()
{
  result = GCInputLeftThumbstick.getter();
  static GCDirectionPadElementName.leftThumbstick = result;
  unk_1EC7370B0 = v1;
  return result;
}

uint64_t *GCDirectionPadElementName.leftThumbstick.unsafeMutableAddressor()
{
  if (one-time initialization token for leftThumbstick != -1)
  {
    swift_once();
  }

  return &static GCDirectionPadElementName.leftThumbstick;
}

uint64_t one-time initialization function for rightThumbstick()
{
  result = GCInputRightThumbstick.getter();
  static GCDirectionPadElementName.rightThumbstick = result;
  *algn_1EC7370C8 = v1;
  return result;
}

uint64_t *GCDirectionPadElementName.rightThumbstick.unsafeMutableAddressor()
{
  if (one-time initialization token for rightThumbstick != -1)
  {
    swift_once();
  }

  return &static GCDirectionPadElementName.rightThumbstick;
}

unint64_t lazy protocol witness table accessor for type GCDirectionPadElementName and conformance GCDirectionPadElementName()
{
  result = lazy protocol witness table cache variable for type GCDirectionPadElementName and conformance GCDirectionPadElementName;
  if (!lazy protocol witness table cache variable for type GCDirectionPadElementName and conformance GCDirectionPadElementName)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GCDirectionPadElementName and conformance GCDirectionPadElementName);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GCDirectionPadElementName and conformance GCDirectionPadElementName;
  if (!lazy protocol witness table cache variable for type GCDirectionPadElementName and conformance GCDirectionPadElementName)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GCDirectionPadElementName and conformance GCDirectionPadElementName);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GCDirectionPadElementName and conformance GCDirectionPadElementName;
  if (!lazy protocol witness table cache variable for type GCDirectionPadElementName and conformance GCDirectionPadElementName)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GCDirectionPadElementName and conformance GCDirectionPadElementName);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for GCDirectionPadElementName(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type GCDirectionPadElementName and conformance GCDirectionPadElementName();
  result = lazy protocol witness table accessor for type GCDirectionPadElementName and conformance GCDirectionPadElementName();
  *(a1 + 16) = result;
  return result;
}

unint64_t type metadata accessor for GCStylus()
{
  result = lazy cache variable for type metadata for GCStylus;
  if (!lazy cache variable for type metadata for GCStylus)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for GCStylus);
  }

  return result;
}

uint64_t static GCStylus.DidConnectMessage.makeMessage(_:)@<X0>(void *a1@<X8>)
{
  Notification.object.getter();
  if (!v6)
  {
    result = outlined destroy of Any?(v5);
    goto LABEL_5;
  }

  type metadata accessor for GCStylus();
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_5:
    v3 = 0;
    goto LABEL_6;
  }

  v3 = v4;
LABEL_6:
  *a1 = v3;
  return result;
}

unint64_t lazy protocol witness table accessor for type GCStylus.DidConnectMessage and conformance GCStylus.DidConnectMessage()
{
  result = lazy protocol witness table cache variable for type GCStylus.DidConnectMessage and conformance GCStylus.DidConnectMessage;
  if (!lazy protocol witness table cache variable for type GCStylus.DidConnectMessage and conformance GCStylus.DidConnectMessage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GCStylus.DidConnectMessage and conformance GCStylus.DidConnectMessage);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GCStylus.DidDisconnectMessage and conformance GCStylus.DidDisconnectMessage()
{
  result = lazy protocol witness table cache variable for type GCStylus.DidDisconnectMessage and conformance GCStylus.DidDisconnectMessage;
  if (!lazy protocol witness table cache variable for type GCStylus.DidDisconnectMessage and conformance GCStylus.DidDisconnectMessage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GCStylus.DidDisconnectMessage and conformance GCStylus.DidDisconnectMessage);
  }

  return result;
}

uint64_t GCSwitchElementName.rawValue.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

unint64_t lazy protocol witness table accessor for type GCSwitchElementName and conformance GCSwitchElementName()
{
  result = lazy protocol witness table cache variable for type GCSwitchElementName and conformance GCSwitchElementName;
  if (!lazy protocol witness table cache variable for type GCSwitchElementName and conformance GCSwitchElementName)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GCSwitchElementName and conformance GCSwitchElementName);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GCSwitchElementName and conformance GCSwitchElementName;
  if (!lazy protocol witness table cache variable for type GCSwitchElementName and conformance GCSwitchElementName)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GCSwitchElementName and conformance GCSwitchElementName);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GCSwitchElementName and conformance GCSwitchElementName;
  if (!lazy protocol witness table cache variable for type GCSwitchElementName and conformance GCSwitchElementName)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GCSwitchElementName and conformance GCSwitchElementName);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for GCSwitchElementName(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type GCSwitchElementName and conformance GCSwitchElementName();
  result = lazy protocol witness table accessor for type GCSwitchElementName and conformance GCSwitchElementName();
  *(a1 + 16) = result;
  return result;
}

unint64_t type metadata accessor for GCController()
{
  result = lazy cache variable for type metadata for GCController;
  if (!lazy cache variable for type metadata for GCController)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for GCController);
  }

  return result;
}

uint64_t static GCController.DidConnectMessage.makeMessage(_:)@<X0>(void *a1@<X8>)
{
  Notification.object.getter();
  if (!v6)
  {
    result = outlined destroy of Any?(v5);
    goto LABEL_5;
  }

  type metadata accessor for GCController();
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_5:
    v3 = 0;
    goto LABEL_6;
  }

  v3 = v4;
LABEL_6:
  *a1 = v3;
  return result;
}

unint64_t lazy protocol witness table accessor for type GCController.DidConnectMessage and conformance GCController.DidConnectMessage()
{
  result = lazy protocol witness table cache variable for type GCController.DidConnectMessage and conformance GCController.DidConnectMessage;
  if (!lazy protocol witness table cache variable for type GCController.DidConnectMessage and conformance GCController.DidConnectMessage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GCController.DidConnectMessage and conformance GCController.DidConnectMessage);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GCController.DidDisconnectMessage and conformance GCController.DidDisconnectMessage()
{
  result = lazy protocol witness table cache variable for type GCController.DidDisconnectMessage and conformance GCController.DidDisconnectMessage;
  if (!lazy protocol witness table cache variable for type GCController.DidDisconnectMessage and conformance GCController.DidDisconnectMessage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GCController.DidDisconnectMessage and conformance GCController.DidDisconnectMessage);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GCController.DidBecomeCurrentMessage and conformance GCController.DidBecomeCurrentMessage()
{
  result = lazy protocol witness table cache variable for type GCController.DidBecomeCurrentMessage and conformance GCController.DidBecomeCurrentMessage;
  if (!lazy protocol witness table cache variable for type GCController.DidBecomeCurrentMessage and conformance GCController.DidBecomeCurrentMessage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GCController.DidBecomeCurrentMessage and conformance GCController.DidBecomeCurrentMessage);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GCController.DidStopBeingCurrentMessage and conformance GCController.DidStopBeingCurrentMessage()
{
  result = lazy protocol witness table cache variable for type GCController.DidStopBeingCurrentMessage and conformance GCController.DidStopBeingCurrentMessage;
  if (!lazy protocol witness table cache variable for type GCController.DidStopBeingCurrentMessage and conformance GCController.DidStopBeingCurrentMessage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GCController.DidStopBeingCurrentMessage and conformance GCController.DidStopBeingCurrentMessage);
  }

  return result;
}

uint64_t WeakBox.base.setter()
{
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t (*WeakBox.base.modify(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return WeakBox.base.modify;
}

uint64_t WeakBox.base.modify(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t WeakBox.init(_:)()
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t type metadata instantiation function for WeakBox()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t GCButtonElementName.rawValue.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t one-time initialization function for a()
{
  result = GCInputButtonA.getter();
  static GCButtonElementName.a = result;
  unk_1EC735E60 = v1;
  return result;
}

uint64_t *GCButtonElementName.a.unsafeMutableAddressor()
{
  if (one-time initialization token for a != -1)
  {
    swift_once();
  }

  return &static GCButtonElementName.a;
}

uint64_t one-time initialization function for b()
{
  result = GCInputButtonB.getter();
  static GCButtonElementName.b = result;
  *algn_1EC735E48 = v1;
  return result;
}

uint64_t *GCButtonElementName.b.unsafeMutableAddressor()
{
  if (one-time initialization token for b != -1)
  {
    swift_once();
  }

  return &static GCButtonElementName.b;
}

uint64_t one-time initialization function for x()
{
  result = GCInputButtonX.getter();
  static GCButtonElementName.x = result;
  unk_1EC737860 = v1;
  return result;
}

uint64_t *GCButtonElementName.x.unsafeMutableAddressor()
{
  if (one-time initialization token for x != -1)
  {
    swift_once();
  }

  return &static GCButtonElementName.x;
}

uint64_t one-time initialization function for y()
{
  result = GCInputButtonY.getter();
  static GCButtonElementName.y = result;
  *algn_1EC737878 = v1;
  return result;
}

uint64_t *GCButtonElementName.y.unsafeMutableAddressor()
{
  if (one-time initialization token for y != -1)
  {
    swift_once();
  }

  return &static GCButtonElementName.y;
}

uint64_t one-time initialization function for grip()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  static GCButtonElementName.grip = result;
  unk_1EC737890 = v1;
  return result;
}

uint64_t *GCButtonElementName.grip.unsafeMutableAddressor()
{
  if (one-time initialization token for grip != -1)
  {
    swift_once();
  }

  return &static GCButtonElementName.grip;
}

uint64_t one-time initialization function for leftShoulder()
{
  result = GCInputLeftShoulder.getter();
  static GCButtonElementName.leftShoulder = result;
  *algn_1EC7378A8 = v1;
  return result;
}

uint64_t *GCButtonElementName.leftShoulder.unsafeMutableAddressor()
{
  if (one-time initialization token for leftShoulder != -1)
  {
    swift_once();
  }

  return &static GCButtonElementName.leftShoulder;
}

uint64_t one-time initialization function for rightShoulder()
{
  result = GCInputRightShoulder.getter();
  static GCButtonElementName.rightShoulder = result;
  unk_1EC7378C0 = v1;
  return result;
}

uint64_t *GCButtonElementName.rightShoulder.unsafeMutableAddressor()
{
  if (one-time initialization token for rightShoulder != -1)
  {
    swift_once();
  }

  return &static GCButtonElementName.rightShoulder;
}

uint64_t one-time initialization function for leftBumper()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  static GCButtonElementName.leftBumper = result;
  *algn_1EC7378D8 = v1;
  return result;
}

uint64_t *GCButtonElementName.leftBumper.unsafeMutableAddressor()
{
  if (one-time initialization token for leftBumper != -1)
  {
    swift_once();
  }

  return &static GCButtonElementName.leftBumper;
}

uint64_t one-time initialization function for rightBumper()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  static GCButtonElementName.rightBumper = result;
  unk_1EC7378F0 = v1;
  return result;
}

uint64_t *GCButtonElementName.rightBumper.unsafeMutableAddressor()
{
  if (one-time initialization token for rightBumper != -1)
  {
    swift_once();
  }

  return &static GCButtonElementName.rightBumper;
}

uint64_t one-time initialization function for trigger()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  static GCButtonElementName.trigger = result;
  *algn_1EC737908 = v1;
  return result;
}

uint64_t *GCButtonElementName.trigger.unsafeMutableAddressor()
{
  if (one-time initialization token for trigger != -1)
  {
    swift_once();
  }

  return &static GCButtonElementName.trigger;
}

uint64_t one-time initialization function for leftTrigger()
{
  result = GCInputLeftTrigger.getter();
  static GCButtonElementName.leftTrigger = result;
  unk_1EC737920 = v1;
  return result;
}

uint64_t *GCButtonElementName.leftTrigger.unsafeMutableAddressor()
{
  if (one-time initialization token for leftTrigger != -1)
  {
    swift_once();
  }

  return &static GCButtonElementName.leftTrigger;
}

uint64_t one-time initialization function for rightTrigger()
{
  result = GCInputRightTrigger.getter();
  static GCButtonElementName.rightTrigger = result;
  *algn_1EC737938 = v1;
  return result;
}

uint64_t *GCButtonElementName.rightTrigger.unsafeMutableAddressor()
{
  if (one-time initialization token for rightTrigger != -1)
  {
    swift_once();
  }

  return &static GCButtonElementName.rightTrigger;
}

uint64_t one-time initialization function for thumbstickButton()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  static GCButtonElementName.thumbstickButton = result;
  unk_1EC737950 = v1;
  return result;
}

uint64_t *GCButtonElementName.thumbstickButton.unsafeMutableAddressor()
{
  if (one-time initialization token for thumbstickButton != -1)
  {
    swift_once();
  }

  return &static GCButtonElementName.thumbstickButton;
}

uint64_t one-time initialization function for leftThumbstickButton()
{
  result = GCInputLeftThumbstickButton.getter();
  static GCButtonElementName.leftThumbstickButton = result;
  *algn_1EC737968 = v1;
  return result;
}

uint64_t *GCButtonElementName.leftThumbstickButton.unsafeMutableAddressor()
{
  if (one-time initialization token for leftThumbstickButton != -1)
  {
    swift_once();
  }

  return &static GCButtonElementName.leftThumbstickButton;
}

uint64_t one-time initialization function for rightThumbstickButton()
{
  result = GCInputRightThumbstickButton.getter();
  static GCButtonElementName.rightThumbstickButton = result;
  unk_1EC737980 = v1;
  return result;
}

uint64_t *GCButtonElementName.rightThumbstickButton.unsafeMutableAddressor()
{
  if (one-time initialization token for rightThumbstickButton != -1)
  {
    swift_once();
  }

  return &static GCButtonElementName.rightThumbstickButton;
}

uint64_t one-time initialization function for home()
{
  result = GCInputButtonHome.getter();
  static GCButtonElementName.home = result;
  *algn_1EC737998 = v1;
  return result;
}

uint64_t *GCButtonElementName.home.unsafeMutableAddressor()
{
  if (one-time initialization token for home != -1)
  {
    swift_once();
  }

  return &static GCButtonElementName.home;
}

uint64_t one-time initialization function for menu()
{
  result = GCInputButtonMenu.getter();
  static GCButtonElementName.menu = result;
  unk_1EC7379B0 = v1;
  return result;
}

uint64_t *GCButtonElementName.menu.unsafeMutableAddressor()
{
  if (one-time initialization token for menu != -1)
  {
    swift_once();
  }

  return &static GCButtonElementName.menu;
}

uint64_t one-time initialization function for options()
{
  result = GCInputButtonOptions.getter();
  static GCButtonElementName.options = result;
  *algn_1EC7379C8 = v1;
  return result;
}

uint64_t *GCButtonElementName.options.unsafeMutableAddressor()
{
  if (one-time initialization token for options != -1)
  {
    swift_once();
  }

  return &static GCButtonElementName.options;
}

uint64_t one-time initialization function for share()
{
  result = GCInputButtonShare.getter();
  static GCButtonElementName.share = result;
  unk_1EC7379E0 = v1;
  return result;
}

uint64_t *GCButtonElementName.share.unsafeMutableAddressor()
{
  if (one-time initialization token for share != -1)
  {
    swift_once();
  }

  return &static GCButtonElementName.share;
}

uint64_t one-time initialization function for pedalAccelerator()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  static GCButtonElementName.pedalAccelerator = result;
  *algn_1EC7379F8 = v1;
  return result;
}

uint64_t *GCButtonElementName.pedalAccelerator.unsafeMutableAddressor()
{
  if (one-time initialization token for pedalAccelerator != -1)
  {
    swift_once();
  }

  return &static GCButtonElementName.pedalAccelerator;
}

uint64_t one-time initialization function for pedalBrake()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  static GCButtonElementName.pedalBrake = result;
  unk_1EC737A10 = v1;
  return result;
}

uint64_t *GCButtonElementName.pedalBrake.unsafeMutableAddressor()
{
  if (one-time initialization token for pedalBrake != -1)
  {
    swift_once();
  }

  return &static GCButtonElementName.pedalBrake;
}

uint64_t one-time initialization function for pedalClutch()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  static GCButtonElementName.pedalClutch = result;
  *algn_1EC737A28 = v1;
  return result;
}

uint64_t *GCButtonElementName.pedalClutch.unsafeMutableAddressor()
{
  if (one-time initialization token for pedalClutch != -1)
  {
    swift_once();
  }

  return &static GCButtonElementName.pedalClutch;
}

uint64_t one-time initialization function for leftPaddle()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  static GCButtonElementName.leftPaddle = result;
  unk_1EC737A40 = v1;
  return result;
}

uint64_t *GCButtonElementName.leftPaddle.unsafeMutableAddressor()
{
  if (one-time initialization token for leftPaddle != -1)
  {
    swift_once();
  }

  return &static GCButtonElementName.leftPaddle;
}

uint64_t one-time initialization function for rightPaddle()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  static GCButtonElementName.rightPaddle = result;
  *algn_1EC737A58 = v1;
  return result;
}

uint64_t *GCButtonElementName.rightPaddle.unsafeMutableAddressor()
{
  if (one-time initialization token for rightPaddle != -1)
  {
    swift_once();
  }

  return &static GCButtonElementName.rightPaddle;
}

void static GCButtonElementName.arcadeButton(row:column:)(NSInteger a1@<X0>, NSInteger a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = GCInputArcadeButtonName(a1, a2);
  if (v4)
  {
    v5 = v4;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    *a3 = v6;
    a3[1] = v8;
  }

  else
  {
    __break(1u);
  }
}

uint64_t one-time initialization function for primaryMouseButton()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  static GCButtonElementName.primaryMouseButton = result;
  unk_1EC737C10 = v1;
  return result;
}

uint64_t *GCButtonElementName.primaryMouseButton.unsafeMutableAddressor()
{
  if (one-time initialization token for primaryMouseButton != -1)
  {
    swift_once();
  }

  return &static GCButtonElementName.primaryMouseButton;
}

uint64_t one-time initialization function for secondaryMouseButton()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  static GCButtonElementName.secondaryMouseButton = result;
  unk_1EC737C20 = v1;
  return result;
}

uint64_t *GCButtonElementName.secondaryMouseButton.unsafeMutableAddressor()
{
  if (one-time initialization token for secondaryMouseButton != -1)
  {
    swift_once();
  }

  return &static GCButtonElementName.secondaryMouseButton;
}

uint64_t one-time initialization function for thirdMouseButton()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  static GCButtonElementName.thirdMouseButton = result;
  unk_1EC737C30 = v1;
  return result;
}

uint64_t *GCButtonElementName.thirdMouseButton.unsafeMutableAddressor()
{
  if (one-time initialization token for thirdMouseButton != -1)
  {
    swift_once();
  }

  return &static GCButtonElementName.thirdMouseButton;
}

void static GCButtonElementName.backLeftButton(position:)(uint64_t (*a1)(void)@<X1>, uint64_t *a2@<X8>)
{
  v3 = a1();
  if (v3)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    *a2 = v5;
    a2[1] = v7;
  }

  else
  {
    __break(1u);
  }
}

uint64_t one-time initialization function for stylusTip()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  static GCButtonElementName.stylusTip = result;
  *algn_1EC737A88 = v1;
  return result;
}

uint64_t *GCButtonElementName.stylusTip.unsafeMutableAddressor()
{
  if (one-time initialization token for stylusTip != -1)
  {
    swift_once();
  }

  return &static GCButtonElementName.stylusTip;
}

uint64_t one-time initialization function for stylusPrimaryButton()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  static GCButtonElementName.stylusPrimaryButton = result;
  unk_1EC737AA0 = v1;
  return result;
}

uint64_t *GCButtonElementName.stylusPrimaryButton.unsafeMutableAddressor()
{
  if (one-time initialization token for stylusPrimaryButton != -1)
  {
    swift_once();
  }

  return &static GCButtonElementName.stylusPrimaryButton;
}

uint64_t one-time initialization function for stylusSecondaryButton()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  static GCButtonElementName.stylusSecondaryButton = result;
  *algn_1EC737AB8 = v1;
  return result;
}

uint64_t *GCButtonElementName.stylusSecondaryButton.unsafeMutableAddressor()
{
  if (one-time initialization token for stylusSecondaryButton != -1)
  {
    swift_once();
  }

  return &static GCButtonElementName.stylusSecondaryButton;
}

unint64_t lazy protocol witness table accessor for type GCButtonElementName and conformance GCButtonElementName()
{
  result = lazy protocol witness table cache variable for type GCButtonElementName and conformance GCButtonElementName;
  if (!lazy protocol witness table cache variable for type GCButtonElementName and conformance GCButtonElementName)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GCButtonElementName and conformance GCButtonElementName);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GCButtonElementName and conformance GCButtonElementName;
  if (!lazy protocol witness table cache variable for type GCButtonElementName and conformance GCButtonElementName)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GCButtonElementName and conformance GCButtonElementName);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GCButtonElementName and conformance GCButtonElementName;
  if (!lazy protocol witness table cache variable for type GCButtonElementName and conformance GCButtonElementName)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GCButtonElementName and conformance GCButtonElementName);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for GCButtonElementName(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type GCButtonElementName and conformance GCButtonElementName();
  result = lazy protocol witness table accessor for type GCButtonElementName and conformance GCButtonElementName();
  *(a1 + 16) = result;
  return result;
}

void HapticSharedMemory::clear()
{
  v0 = getGCHapticsLogger();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    *v1 = 0;
    _os_log_debug_impl(&dword_1D2CD5000, v0, OS_LOG_TYPE_DEBUG, "clearing ring buffer", v1, 2u);
  }
}

void __SetupVirtualGameControllerIfForced_block_invoke()
{
  v3 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.GameController"];
  if ([v3 BOOLForKey:@"GCForceVirtual"])
  {
    v0 = VirtualControllerBundle();
    if (v0)
    {
      v1 = v0;
      v2 = [v0 classNamed:@"_GCVirtualControllerImpl"];
      if (v2)
      {
        [v2 forceVirtualController];
      }
    }
  }
}

void VirtualControllerBundle_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_fault_impl(&dword_1D2CD5000, a2, OS_LOG_TYPE_FAULT, "Failed to load bundle: '%{public}@'.", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void VirtualControllerBundle_cold_2(void *a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = _gc_log_virtualcontroller();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    v6 = [a1 path];
    v7 = 138543362;
    v8 = v6;
    _os_log_fault_impl(&dword_1D2CD5000, v4, OS_LOG_TYPE_FAULT, "Failed to load bundle at path '%{public}@'.", &v7, 0xCu);
  }

  v5 = *MEMORY[0x1E69E9840];
}

void VirtualControllerBundle_cold_3(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = _gc_log_virtualcontroller();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    v4 = [a1 bundleURL];
    v5 = [v4 path];
    v6 = 138543362;
    v7 = v5;
    _os_log_fault_impl(&dword_1D2CD5000, v2, OS_LOG_TYPE_FAULT, "Failed locate VirtualGameController bundle in '%{public}@'.", &v6, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
}

void __ControllerAxisInputSetValue_block_invoke_cold_1(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = v2;
  v4 = *(a1 + 56);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_1D2CD5000, v3, OS_SIGNPOST_INTERVAL_END, v4, "GCPhysicalInputProfile.Axis.value.callback", "{}", v5, 2u);
  }
}

void isDeviceParentAuthenticated_cold_1(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = getGCLogger();
  if (OUTLINED_FUNCTION_11(v3))
  {
    [a1 unsignedLongValue];
    OUTLINED_FUNCTION_1();
    _os_log_impl(v4, v5, v6, v7, v8, 0x12u);
  }

  v9 = *MEMORY[0x1E69E9840];
}

void isDeviceParentAuthenticated_cold_2()
{
  v1 = getGCLogger();
  if (OUTLINED_FUNCTION_11(v1))
  {
    OUTLINED_FUNCTION_1();
    _os_log_impl(v2, v3, v4, v5, v6, 2u);
  }
}

void isDeviceMFiGamepadCompliantForDeviceRef_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = getGCLogger();
  if (OUTLINED_FUNCTION_11(v1))
  {
    OUTLINED_FUNCTION_1();
    _os_log_impl(v2, v3, v4, v5, v6, 0x1Cu);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __GCBypassMFiAuthentication_block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = getGCLogger();
  if (OUTLINED_FUNCTION_11(v1))
  {
    OUTLINED_FUNCTION_1();
    _os_log_impl(v2, v3, v4, v5, v6, 8u);
  }

  v7 = *MEMORY[0x1E69E9840];
}

uint64_t xAxisUpdateContext_cold_1()
{
  xAxisUpdateContext_Offset = 2;
  v0 = +[_GCDevicePhysicalInputAxis2DInput updateContextSize];
  result = OUTLINED_FUNCTION_26(v0, xAxisUpdateContext_Offset);
  xAxisUpdateContext_Offset = v2;
  return result;
}

uint64_t yAxisUpdateContext_cold_1()
{
  yAxisUpdateContext_Offset = 2;
  v0 = +[_GCDevicePhysicalInputAxis2DInput updateContextSize];
  yAxisUpdateContext_Offset += v0;
  v1 = +[_GCDevicePhysicalInputAxisInput updateContextSize];
  result = OUTLINED_FUNCTION_26(v1, yAxisUpdateContext_Offset);
  yAxisUpdateContext_Offset = v3;
  return result;
}

uint64_t upButtonUpdateContext_cold_1()
{
  upButtonUpdateContext_Offset = 2;
  v0 = +[_GCDevicePhysicalInputAxis2DInput updateContextSize];
  upButtonUpdateContext_Offset += v0;
  v1 = +[_GCDevicePhysicalInputAxisInput updateContextSize];
  upButtonUpdateContext_Offset += v1;
  v2 = +[_GCDevicePhysicalInputAxisInput updateContextSize];
  result = OUTLINED_FUNCTION_26(v2, upButtonUpdateContext_Offset);
  upButtonUpdateContext_Offset = v4;
  return result;
}

uint64_t downButtonUpdateContext_cold_1()
{
  downButtonUpdateContext_Offset = 2;
  OUTLINED_FUNCTION_31(+[_GCDevicePhysicalInputAxis2DInput updateContextSize]);
  OUTLINED_FUNCTION_31(+[_GCDevicePhysicalInputAxisInput updateContextSize]);
  OUTLINED_FUNCTION_31(+[_GCDevicePhysicalInputAxisInput updateContextSize]);
  v0 = +[_GCDevicePhysicalInputPressInput updateContextSize];
  result = OUTLINED_FUNCTION_26(v0, downButtonUpdateContext_Offset);
  downButtonUpdateContext_Offset = v2;
  return result;
}

uint64_t leftButtonUpdateContext_cold_1()
{
  leftButtonUpdateContext_Offset = 2;
  OUTLINED_FUNCTION_23(+[_GCDevicePhysicalInputAxis2DInput updateContextSize]);
  OUTLINED_FUNCTION_23(+[_GCDevicePhysicalInputAxisInput updateContextSize]);
  OUTLINED_FUNCTION_23(+[_GCDevicePhysicalInputAxisInput updateContextSize]);
  OUTLINED_FUNCTION_23(+[_GCDevicePhysicalInputPressInput updateContextSize]);
  v0 = +[_GCDevicePhysicalInputPressInput updateContextSize];
  result = OUTLINED_FUNCTION_26(v0, leftButtonUpdateContext_Offset);
  leftButtonUpdateContext_Offset = v2;
  return result;
}

uint64_t rightButtonUpdateContext_cold_1()
{
  rightButtonUpdateContext_Offset = 2;
  OUTLINED_FUNCTION_12_2(+[_GCDevicePhysicalInputAxis2DInput updateContextSize]);
  OUTLINED_FUNCTION_12_2(+[_GCDevicePhysicalInputAxisInput updateContextSize]);
  OUTLINED_FUNCTION_12_2(+[_GCDevicePhysicalInputAxisInput updateContextSize]);
  OUTLINED_FUNCTION_12_2(+[_GCDevicePhysicalInputPressInput updateContextSize]);
  OUTLINED_FUNCTION_12_2(+[_GCDevicePhysicalInputPressInput updateContextSize]);
  v0 = +[_GCDevicePhysicalInputPressInput updateContextSize];
  result = OUTLINED_FUNCTION_26(v0, rightButtonUpdateContext_Offset);
  rightButtonUpdateContext_Offset = v2;
  return result;
}

uint64_t pressUpdateContext_cold_1()
{
  pressUpdateContext_Offset = 2;
  OUTLINED_FUNCTION_8_3(+[_GCDevicePhysicalInputAxis2DInput updateContextSize]);
  OUTLINED_FUNCTION_8_3(+[_GCDevicePhysicalInputAxisInput updateContextSize]);
  OUTLINED_FUNCTION_8_3(+[_GCDevicePhysicalInputAxisInput updateContextSize]);
  OUTLINED_FUNCTION_8_3(+[_GCDevicePhysicalInputPressInput updateContextSize]);
  OUTLINED_FUNCTION_8_3(+[_GCDevicePhysicalInputPressInput updateContextSize]);
  OUTLINED_FUNCTION_8_3(+[_GCDevicePhysicalInputPressInput updateContextSize]);
  v0 = +[_GCDevicePhysicalInputPressInput updateContextSize];
  result = OUTLINED_FUNCTION_26(v0, pressUpdateContext_Offset);
  pressUpdateContext_Offset = v2;
  return result;
}

uint64_t touchUpdateContext_cold_1()
{
  touchUpdateContext_Offset = 2;
  OUTLINED_FUNCTION_6_3(+[_GCDevicePhysicalInputAxis2DInput updateContextSize]);
  OUTLINED_FUNCTION_6_3(+[_GCDevicePhysicalInputAxisInput updateContextSize]);
  OUTLINED_FUNCTION_6_3(+[_GCDevicePhysicalInputAxisInput updateContextSize]);
  OUTLINED_FUNCTION_6_3(+[_GCDevicePhysicalInputPressInput updateContextSize]);
  OUTLINED_FUNCTION_6_3(+[_GCDevicePhysicalInputPressInput updateContextSize]);
  OUTLINED_FUNCTION_6_3(+[_GCDevicePhysicalInputPressInput updateContextSize]);
  OUTLINED_FUNCTION_6_3(+[_GCDevicePhysicalInputPressInput updateContextSize]);
  v0 = +[_GCDevicePhysicalInputPressInput updateContextSize];
  result = OUTLINED_FUNCTION_26(v0, touchUpdateContext_Offset);
  touchUpdateContext_Offset = v2;
  return result;
}

void HandleReport_cold_1(int a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = getGCLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v6[0] = 67109376;
    v6[1] = a1;
    v7 = 2048;
    v8 = a2;
    _os_log_debug_impl(&dword_1D2CD5000, v4, OS_LOG_TYPE_DEBUG, "Racing wheel input report: id=0x%x length=%zu", v6, 0x12u);
  }

  v5 = *MEMORY[0x1E69E9840];
}

void HandleReport_cold_2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_0_8(&dword_1D2CD5000, v0, v1, "Bad report ID: 0x%x", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void GCInputBackLeftButton_cold_1(uint64_t a1)
{
  [MEMORY[0x1E696AEC0] stringWithFormat:@"*** Back button names begin at position '0'.  Position '%zd' is not valid.", a1];
  v1 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:objc_claimAutoreleasedReturnValue() userInfo:0];
  objc_exception_throw(v1);
}

void ConnectToDriverService_cold_1(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void ConnectToDriverService(Protocol *__strong, __strong id, __strong id, void (^__strong)(__strong id, NSError *__strong))"}];
  [v2 handleFailureInFunction:v3 file:@"GCDriverConnection.m" lineNumber:67 description:{@"Unknown service: %@", a1}];

  __break(1u);
}

void LoadGameControllerUIFramework_cold_1(const char *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = _gc_log_bundle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    memset(&v6, 0, sizeof(v6));
    dladdr(v1, &v6);
    dli_sname = v6.dli_sname;
    if (!v6.dli_sname)
    {
      dli_sname = "<unknown>";
    }

    LODWORD(v6.dli_fname) = 134218498;
    *(&v6.dli_fname + 4) = a1;
    WORD2(v6.dli_fbase) = 2048;
    *(&v6.dli_fbase + 6) = v1;
    HIWORD(v6.dli_sname) = 2080;
    v6.dli_saddr = dli_sname;
    _os_log_debug_impl(&dword_1D2CD5000, v3, OS_LOG_TYPE_DEBUG, "#TRACE Request to load GameControllerUI support (condition = %zu) from %p (%s)", &v6, 0x20u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void LoadGameControllerUIFramework_cold_2(objc_class *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = _gc_log_bundle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    class_getName(a1);
    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_0_18();
    _os_log_fault_impl(v4, v5, v6, v7, v8, 0x16u);
  }

  v3 = *MEMORY[0x1E69E9840];
}

void LoadGameControllerUIFramework_cold_3(__CFBundle *a1, uint64_t *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = CFBundleCopyBundleURL(a1);
  v4 = [(__CFURL *)v3 path];
  v5 = *a2;
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_0_18();
  _os_log_fault_impl(v6, v7, v8, v9, v10, 0x16u);

  v11 = *MEMORY[0x1E69E9840];
}

void LoadGameControllerUIFramework_cold_4()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = [GameControllerUIBundle bundleURL];
  v1 = [v0 path];
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_0_18();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

void LoadGameControllerUIFramework_cold_5(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = _gc_log_bundle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    v4 = [a1 path];
    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_0_18();
    _os_log_fault_impl(v5, v6, v7, v8, v9, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
}

void HapticSharedMemory::readCommand(unsigned __int16 *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = getGCHapticsLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v9 = *a1;
    OUTLINED_FUNCTION_0();
    _os_log_debug_impl(v4, v5, v6, v7, v8, 0xEu);
  }

  v3 = *MEMORY[0x1E69E9840];
}

void HapticSharedMemory::readCommand()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = getGCHapticsLogger();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    OUTLINED_FUNCTION_0();
    _os_log_debug_impl(v2, v3, v4, v5, v6, 8u);
  }

  v1 = *MEMORY[0x1E69E9840];
}

{
  __assert_rtn("readCommand", "HapticSharedMemory.h", 520, "srcCmd->head.mSize != 0");
}

void __handleAncillaryButtonEvent_block_invoke_cold_1(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = getGCLogger();
  if (OUTLINED_FUNCTION_4_5(v3))
  {
    v4 = [*(a1 + 32) controller];
    v11 = [v4 debugName];
    OUTLINED_FUNCTION_10();
    _os_log_impl(v5, v6, v7, v8, v9, 0xCu);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __handleAncillaryButtonEvent_block_invoke_104_cold_1(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = getGCLogger();
  if (OUTLINED_FUNCTION_4_5(v3))
  {
    v4 = [*(a1 + 32) controller];
    v5 = [v4 debugName];
    v6 = *(a1 + 40);
    OUTLINED_FUNCTION_0_23();
    OUTLINED_FUNCTION_10();
    _os_log_impl(v7, v8, v9, v10, v11, 0x16u);
  }

  v12 = *MEMORY[0x1E69E9840];
}

uint64_t xAxisUpdateContext_cold_1_0()
{
  xAxisUpdateContext_Offset_0 = 2;
  v0 = +[_GCDevicePhysicalInputAxis2DInput updateContextSize];
  result = OUTLINED_FUNCTION_26(v0, xAxisUpdateContext_Offset_0);
  xAxisUpdateContext_Offset_0 = v2;
  return result;
}

uint64_t yAxisUpdateContext_cold_1_0()
{
  yAxisUpdateContext_Offset_0 = 2;
  v0 = +[_GCDevicePhysicalInputAxis2DInput updateContextSize];
  yAxisUpdateContext_Offset_0 += v0;
  v1 = +[_GCDevicePhysicalInputAxisInput updateContextSize];
  result = OUTLINED_FUNCTION_26(v1, yAxisUpdateContext_Offset_0);
  yAxisUpdateContext_Offset_0 = v3;
  return result;
}

uint64_t upButtonUpdateContext_cold_1_0()
{
  upButtonUpdateContext_Offset_0 = 2;
  v0 = +[_GCDevicePhysicalInputAxis2DInput updateContextSize];
  upButtonUpdateContext_Offset_0 += v0;
  v1 = +[_GCDevicePhysicalInputAxisInput updateContextSize];
  upButtonUpdateContext_Offset_0 += v1;
  v2 = +[_GCDevicePhysicalInputAxisInput updateContextSize];
  result = OUTLINED_FUNCTION_26(v2, upButtonUpdateContext_Offset_0);
  upButtonUpdateContext_Offset_0 = v4;
  return result;
}

uint64_t downButtonUpdateContext_cold_1_0()
{
  downButtonUpdateContext_Offset_0 = 2;
  OUTLINED_FUNCTION_19_1(+[_GCDevicePhysicalInputAxis2DInput updateContextSize]);
  OUTLINED_FUNCTION_19_1(+[_GCDevicePhysicalInputAxisInput updateContextSize]);
  OUTLINED_FUNCTION_19_1(+[_GCDevicePhysicalInputAxisInput updateContextSize]);
  v0 = +[_GCDevicePhysicalInputPressInput updateContextSize];
  result = OUTLINED_FUNCTION_26(v0, downButtonUpdateContext_Offset_0);
  downButtonUpdateContext_Offset_0 = v2;
  return result;
}

uint64_t leftButtonUpdateContext_cold_1_0()
{
  leftButtonUpdateContext_Offset_0 = 2;
  OUTLINED_FUNCTION_9_5(+[_GCDevicePhysicalInputAxis2DInput updateContextSize]);
  OUTLINED_FUNCTION_9_5(+[_GCDevicePhysicalInputAxisInput updateContextSize]);
  OUTLINED_FUNCTION_9_5(+[_GCDevicePhysicalInputAxisInput updateContextSize]);
  OUTLINED_FUNCTION_9_5(+[_GCDevicePhysicalInputPressInput updateContextSize]);
  v0 = +[_GCDevicePhysicalInputPressInput updateContextSize];
  result = OUTLINED_FUNCTION_26(v0, leftButtonUpdateContext_Offset_0);
  leftButtonUpdateContext_Offset_0 = v2;
  return result;
}

uint64_t rightButtonUpdateContext_cold_1_0()
{
  rightButtonUpdateContext_Offset_0 = 2;
  OUTLINED_FUNCTION_7_5(+[_GCDevicePhysicalInputAxis2DInput updateContextSize]);
  OUTLINED_FUNCTION_7_5(+[_GCDevicePhysicalInputAxisInput updateContextSize]);
  OUTLINED_FUNCTION_7_5(+[_GCDevicePhysicalInputAxisInput updateContextSize]);
  OUTLINED_FUNCTION_7_5(+[_GCDevicePhysicalInputPressInput updateContextSize]);
  OUTLINED_FUNCTION_7_5(+[_GCDevicePhysicalInputPressInput updateContextSize]);
  v0 = +[_GCDevicePhysicalInputPressInput updateContextSize];
  result = OUTLINED_FUNCTION_26(v0, rightButtonUpdateContext_Offset_0);
  rightButtonUpdateContext_Offset_0 = v2;
  return result;
}

void __getGPUserExperienceProxyClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getGPUserExperienceProxyClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"_GCDefaultLogicalDevice.m" lineNumber:53 description:{@"Unable to find class %s", "GPUserExperienceProxy"}];

  __break(1u);
}

void __getGPUserExperienceProxyClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *GamePolicyLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"_GCDefaultLogicalDevice.m" lineNumber:52 description:{@"%s", *a1}];

  __break(1u);
}

void __onqueue_3PSyntheticControllersScan_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_0_24();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

id __GCAnalyticsSendVirtualControllerConnectedEvent_block_invoke_cold_1(void *a1, void *a2)
{
  v2 = [a1 UTF8String];
  if (v2)
  {
    xpc_dictionary_set_string(a2, "bundleID", v2);
  }

  return a2;
}

void _publishCustomController_cold_1()
{
  v0 = getGCLogger();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1D2CD5000, v0, OS_LOG_TYPE_DEFAULT, "XR Component: adding", v1, 2u);
  }
}

void DeviceMatched_cold_1()
{
  v1 = getGCLogger();
  if (OUTLINED_FUNCTION_8_6(v1))
  {
    OUTLINED_FUNCTION_2_13();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }
}

void DeviceMatched_cold_2()
{
  v1 = getGCLogger();
  if (OUTLINED_FUNCTION_8_6(v1))
  {
    OUTLINED_FUNCTION_2_13();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }
}

void DeviceMatched_cold_3()
{
  v1 = getGCLogger();
  if (OUTLINED_FUNCTION_8_6(v1))
  {
    OUTLINED_FUNCTION_2_13();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }
}

void DeviceGeneralNotification_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = getGCLogger();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    OUTLINED_FUNCTION_0_0(&dword_1D2CD5000, v1, v2, "Racing Wheel Device Removed: %@", v3, v4, v5, v6, 2u);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __getRPScreenRecorderClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getRPScreenRecorderClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"GCAppClientProxy.m" lineNumber:31 description:{@"Unable to find class %s", "RPScreenRecorder"}];

  __break(1u);
}

void __getRPScreenRecorderClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *ReplayKitLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"GCAppClientProxy.m" lineNumber:30 description:{@"%s", *a1}];

  __break(1u);
}

void __getSSUIServiceClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getSSUIServiceClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"GCAppClientProxy.m" lineNumber:24 description:{@"Unable to find class %s", "SSUIService"}];

  __break(1u);
}

void __getSSUIServiceClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *ScreenshotServicesLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"GCAppClientProxy.m" lineNumber:23 description:{@"%s", *a1}];

  __break(1u);
}

uint64_t forceUpdateContext_cold_1(_DWORD *a1)
{
  forceUpdateContext_Offset = 2;
  result = +[_GCDevicePhysicalInputTouchInput updateContextSize];
  v3 = forceUpdateContext_Offset + result;
  *a1 = forceUpdateContext_Offset + result;
  forceUpdateContext_Offset = v3;
  return result;
}

void operator delete()
{
    ;
  }
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x1EEE73570](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}

__float2 __sincosf_stret(float a1)
{
  MEMORY[0x1EEE73578](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}