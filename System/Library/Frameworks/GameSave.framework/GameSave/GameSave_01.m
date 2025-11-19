uint64_t specialized GameSaveSyncedDirectory.checkForConflicts(_:_:)()
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 496);
  v2 = *(*v0 + 488);
  v6 = *v0;

  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](specialized GameSaveSyncedDirectory.checkForConflicts(_:_:), 0, 0);
}

id specialized static GameSaveSyncedDirectory.shouldDismissSignedOutError()()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = MEMORY[0x23EE6B6E0](0xD000000000000041, 0x800000023898BDF0);
  v2 = [v0 BOOLForKey_];

  if (one-time initialization token for common != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.common);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 67109120;
    *(v6 + 4) = v2;
    _os_log_impl(&dword_238952000, v4, v5, "Did show iCloud Drive signed out error before: %{BOOL}d", v6, 8u);
    MEMORY[0x23EE6C260](v6, -1, -1);
  }

  return v2;
}

uint64_t partial apply for closure #1 in GameSaveSyncedDirectory.drawStateUI(window:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = GameSaveSyncedDirectory.finishSyncing();

  return closure #1 in GameSaveSyncedDirectory.drawStateUI(window:)(a1, v4, v5, v6, v7, v8);
}

void partial apply for closure #1 in GameSaveSyncedDirectory.showUI(window:)()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  GameSaveSyncedDirectory.drawStateUI(window:)(v1);
}

uint64_t outlined consume of (@escaping @callee_guaranteed (@in_guaranteed GameSaveSyncedDirectory.State) -> ())?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void partial apply for closure #1 in GameSaveSyncedDirectory.lastResponse.setter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__lastResponse);
  *(v1 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__lastResponse) = v2;
  v4 = v2;
}

uint64_t partial apply for closure #1 in GameSaveSyncedDirectory.accountSigningInObserver.setter()
{
  return partial apply for closure #1 in GameSaveSyncedDirectory.accountSigningInObserver.setter();
}

{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__accountSigningInObserver);
  *(v1 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__accountSigningInObserver) = *(v0 + 24);
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

void specialized GameSaveSyncedDirectory._customizeAlert<A>(_:with:)(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for UIHostingControllerSizingOptions();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = *(a2 + 16);
  v13 = *a2;
  v14 = v6;
  v15 = *(a2 + 32);
  v16 = *(a2 + 48);
  objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19UIHostingControllerCy8GameSave18ConflictScrollViewVGMd, &_s7SwiftUI19UIHostingControllerCy8GameSave18ConflictScrollViewVGMR));
  outlined init with copy of ConflictScrollView(a2, v12);
  v7 = UIHostingController.init(rootView:)();
  static UIHostingControllerSizingOptions.preferredContentSize.getter();
  dispatch thunk of UIHostingController.sizingOptions.setter();
  v8 = v7;
  v9 = [v8 view];
  if (v9)
  {
    v10 = v9;
    v11 = [objc_opt_self() clearColor];
    [v10 setBackgroundColor_];

    [a1 setContentViewController_];
  }

  else
  {
    __break(1u);
  }
}

void specialized GameSaveSyncedDirectory._customizeAlert<A>(_:with:)(void *a1)
{
  v2 = type metadata accessor for UIHostingControllerSizingOptions();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19UIHostingControllerCy8GameSave11SpinnerViewVGMd, &_s7SwiftUI19UIHostingControllerCy8GameSave11SpinnerViewVGMR));
  v5 = UIHostingController.init(rootView:)();
  static UIHostingControllerSizingOptions.preferredContentSize.getter();
  dispatch thunk of UIHostingController.sizingOptions.setter();
  v6 = v5;
  v7 = [v6 view];
  if (v7)
  {
    v8 = v7;
    v9 = [objc_opt_self() clearColor];
    [v8 setBackgroundColor_];

    [a1 setContentViewController_];
  }

  else
  {
    __break(1u);
  }
}

id specialized static GameSaveSyncedDirectory.closeAllDirectories()()
{
  result = os_variant_has_internal_content();
  if (result)
  {
    if (one-time initialization token for loadedDirectorysLock != -1)
    {
LABEL_20:
      swift_once();
    }

    v1 = static GameSaveSyncedDirectory.loadedDirectorysLock;
    [static GameSaveSyncedDirectory.loadedDirectorysLock lock];
    if (one-time initialization token for loadedDirectorys != -1)
    {
      swift_once();
    }

    v2 = static GameSaveSyncedDirectory.loadedDirectorys;
    v3 = static GameSaveSyncedDirectory.loadedDirectorys + 64;
    v4 = 1 << *(static GameSaveSyncedDirectory.loadedDirectorys + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(static GameSaveSyncedDirectory.loadedDirectorys + 8);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_13:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = *(v2[7] + ((v9 << 9) | (8 * v10)));

        GameSaveSyncedDirectory.close()();

        if (!v6)
        {
          goto LABEL_9;
        }
      }
    }

    while (1)
    {
LABEL_9:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        goto LABEL_20;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *&v3[8 * v9];
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_13;
      }
    }

    return [v1 unlock];
  }

  return result;
}

uint64_t specialized static GameSaveSyncedDirectory.cleanupDirectory(containerIdentifier:)(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2[3] = a1;
  v2[4] = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR) - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v4 = type metadata accessor for URL();
  v2[6] = v4;
  v5 = *(v4 - 8);
  v2[7] = v5;
  v6 = *(v5 + 64) + 15;
  v2[8] = swift_task_alloc();
  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](specialized static GameSaveSyncedDirectory.cleanupDirectory(containerIdentifier:), 0, 0);
}

uint64_t specialized static GameSaveSyncedDirectory.cleanupDirectory(containerIdentifier:)()
{
  v23 = *MEMORY[0x277D85DE8];
  if (os_variant_has_internal_content())
  {
    v1 = specialized static GameSaveSyncedDirectory._resolveContainerIdentifier(_:)(v0[3], v0[4]);
    if (v2)
    {
      v3 = v1;
      v4 = v2;
      if (one-time initialization token for common != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for Logger();
      __swift_project_value_buffer(v5, static Logger.common);
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&dword_238952000, v6, v7, "Cleaning GameSaveSyncedDirectory", v8, 2u);
        MEMORY[0x23EE6C260](v8, -1, -1);
      }

      v9 = type metadata accessor for GameSaveSyncedDirectory(0);
      v10 = *(v9 + 48);
      v11 = *(v9 + 52);
      swift_allocObject();
      v0[9] = GameSaveSyncedDirectory.init(containerIdentifier:)(v3, v4);
      GameSaveSyncedDirectory.startSyncing(mode:)(255);
      v12 = swift_task_alloc();
      v0[10] = v12;
      *v12 = v0;
      v12[1] = specialized static GameSaveSyncedDirectory.cleanupDirectory(containerIdentifier:);
      v13 = *MEMORY[0x277D85DE8];

      return GameSaveSyncedDirectory._waitForDirectorySync(ui:)(0);
    }

    if (one-time initialization token for common != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logger.common);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_238952000, v16, v17, "Can't request Game Synced Directory without a valid containerIdentifier", v18, 2u);
      MEMORY[0x23EE6C260](v18, -1, -1);
    }
  }

  v19 = v0[8];
  v20 = v0[5];

  v21 = v0[1];
  v22 = *MEMORY[0x277D85DE8];

  return v21();
}

{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 80);
  v5 = *v0;

  v2 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](specialized static GameSaveSyncedDirectory.cleanupDirectory(containerIdentifier:), 0, 0);
}

{
  v26 = *MEMORY[0x277D85DE8];
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[5];
  GameSaveSyncedDirectory.close()();
  GameSaveSyncedDirectory.getLocalURL()(v4);
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    v5 = v0[9];
    v6 = v0[5];

    outlined destroy of URL?(v6, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  }

  else
  {
    (*(v0[7] + 32))(v0[8], v0[5], v0[6]);
    v7 = [objc_opt_self() defaultManager];
    URL._bridgeToObjectiveC()(v8);
    v10 = v9;
    v0[2] = 0;
    v11 = [v7 removeItemAtURL:v9 error:v0 + 2];

    v12 = v0[2];
    v13 = v0[9];
    v15 = v0[7];
    v14 = v0[8];
    v16 = v0[6];
    if (v11)
    {
      v17 = *(v15 + 8);
      v18 = v12;
      v17(v14, v16);
    }

    else
    {
      v19 = v12;
      v20 = _convertNSErrorToError(_:)();

      swift_willThrow();

      (*(v15 + 8))(v14, v16);
    }
  }

  v21 = v0[8];
  v22 = v0[5];

  v23 = v0[1];
  v24 = *MEMORY[0x277D85DE8];

  return v23();
}

uint64_t sub_23896D9B0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = (*a1 + OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_localizedNameOfSavingComputer);
  v3 = v2[1];
  *a2 = *v2;
  a2[1] = v3;
}

uint64_t sub_23896D9CC(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_localizedNameOfSavingComputer);
  v5 = v4[1];
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_23896DA1C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_modifiedDate;
  v5 = type metadata accessor for Date();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v3 + v4, v5);
}

void type metadata completion function for GameSaveSyncedDirectory()
{
  v0 = type metadata accessor for GameSaveSyncedDirectory.State(319);
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    type metadata accessor for CheckedContinuation<(), Never>?(319, &lazy cache variable for type metadata for CheckedContinuation<(), Never>?, &_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR, MEMORY[0x277D83D88]);
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      type metadata accessor for GameSaveSyncedDirectory.State?(319, &lazy cache variable for type metadata for GameSaveSyncedDirectory.State?, type metadata accessor for GameSaveSyncedDirectory.State, MEMORY[0x277D83D88]);
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        v6 = type metadata accessor for ObservationRegistrar();
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t dispatch thunk of GameSaveSyncedDirectory.triggerPendingUpload()()
{
  v2 = *(*v0 + 832);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = dispatch thunk of GameSaveSyncedDirectory.triggerPendingUpload();

  return v6();
}

uint64_t dispatch thunk of GameSaveSyncedDirectory.triggerPendingUpload()(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t dispatch thunk of GameSaveSyncedDirectory.finishSyncing(statusDisplay:)(uint64_t a1)
{
  v4 = *(*v1 + 1168);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = GameSaveSyncedDirectory.finishSyncing();

  return v8(a1);
}

uint64_t dispatch thunk of GameSaveSyncedDirectory.finishSyncing()()
{
  v2 = *(*v0 + 1184);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = GameSaveSyncedDirectory.finishSyncing();

  return v6();
}

uint64_t dispatch thunk of static GameSaveSyncedDirectory.cleanupDirectory(containerIdentifier:)(uint64_t a1, uint64_t a2)
{
  v9 = (*(v2 + 1216) + **(v2 + 1216));
  v6 = *(*(v2 + 1216) + 4);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = static GameSaveSyncedDirectory.cleanupDirectory(containerIdentifier:);

  return v9(a1, a2);
}

uint64_t dispatch thunk of GameSaveSyncedDirectory.runBlockWithDirectoryURL(_:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 1224);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = static GameSaveSyncedDirectory.cleanupDirectory(containerIdentifier:);

  return v10(a1, a2);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void type metadata completion function for GameSaveSyncedDirectory.State()
{
  type metadata accessor for URL();
  if (v0 <= 0x3F)
  {
    type metadata accessor for (versions: [GameSaveSyncedDirectory.Version])();
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

void type metadata accessor for (versions: [GameSaveSyncedDirectory.Version])()
{
  if (!lazy cache variable for type metadata for (versions: [GameSaveSyncedDirectory.Version]))
  {
    type metadata accessor for GameSaveSyncedDirectory.State?(0, &lazy cache variable for type metadata for [GameSaveSyncedDirectory.Version], type metadata accessor for GameSaveSyncedDirectory.Version, MEMORY[0x277D83940]);
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for (versions: [GameSaveSyncedDirectory.Version]));
    }
  }
}

void type metadata accessor for GameSaveSyncedDirectory.State?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t type metadata accessor for Error()
{
  result = lazy cache variable for type metadata for Error;
  if (!lazy cache variable for type metadata for Error)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for Error);
  }

  return result;
}

void type metadata completion function for GameSaveSyncedDirectory.Version()
{
  v0 = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    type metadata accessor for GameSaveSyncedDirectory.State?(319, &lazy cache variable for type metadata for URL?, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      v4 = type metadata accessor for Date();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t type metadata accessor for GameSaveSyncedDirectory(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for GameSaveSyncedDirectory.StateObserver()
{
  type metadata accessor for CheckedContinuation<(), Never>?(319, &lazy cache variable for type metadata for Published<GameSaveSyncedDirectory.Version?>, &_s8GameSave0aB15SyncedDirectoryC7VersionCSgMd, &_s8GameSave0aB15SyncedDirectoryC7VersionCSgMR, MEMORY[0x277CBCED0]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    type metadata accessor for CheckedContinuation<(), Never>?(319, &lazy cache variable for type metadata for Published<UIAlertController?>, &_sSo17UIAlertControllerCSgMd, &_sSo17UIAlertControllerCSgMR, MEMORY[0x277CBCED0]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for CheckedContinuation<(), Never>?(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_23896EBD8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type GameSaveLoadingViewModifier and conformance GameSaveLoadingViewModifier();
  return swift_getWitnessTable();
}

unint64_t lazy protocol witness table accessor for type GameSaveLoadingViewModifier and conformance GameSaveLoadingViewModifier()
{
  result = lazy protocol witness table cache variable for type GameSaveLoadingViewModifier and conformance GameSaveLoadingViewModifier;
  if (!lazy protocol witness table cache variable for type GameSaveLoadingViewModifier and conformance GameSaveLoadingViewModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GameSaveLoadingViewModifier and conformance GameSaveLoadingViewModifier);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GameSaveSyncedDirectoryError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for GameSaveSyncedDirectoryError(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_23896EE60()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRSb_TG5TA(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = GameSaveSyncedDirectory.finishSyncing();

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRSb_TG5(a1, v5);
}

double partial apply for closure #1 in GameSaveSyncedDirectory.showSyncAlertAfterTimeHeuristic.setter()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__showSyncAlertAfterTimeHeuristic) = result;
  return result;
}

void sub_23896F0AC(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  GameSaveSyncedDirectory.alert.setter(v2);
}

void partial apply for closure #1 in GameSaveSyncedDirectory.alert.setter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__alert);
  *(v1 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__alert) = v2;
  v4 = v2;
}

void sub_23896F144(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  GameSaveSyncedDirectory.window.setter(v2);
}

void partial apply for closure #1 in GameSaveSyncedDirectory.window.setter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__window);
  *(v1 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__window) = v2;
  v4 = v2;
}

uint64_t partial apply for closure #1 in GameSaveSyncedDirectory.stateObserver.setter()
{
  return partial apply for closure #1 in GameSaveSyncedDirectory.stateObserver.setter();
}

{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__stateObserver);
  *(v1 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__stateObserver) = *(v0 + 24);
}

uint64_t sub_23896F214()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23896F290()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23896F32C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 48);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t partial apply for closure #1 in closure #2 in GameSaveSyncedDirectory.startSyncing(mode:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = GameSaveSyncedDirectory.finishSyncing();

  return closure #1 in closure #2 in GameSaveSyncedDirectory.startSyncing(mode:)(a1, v4, v5, v6, v7);
}

uint64_t outlined destroy of GameSaveSyncedDirectory.State(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of URL?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t partial apply for closure #1 in GameSaveSyncedDirectory.containerIdentifier.setter()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__containerIdentifier);
  v3 = v2[1];
  *v2 = v0[3];
  v2[1] = v1;
}

void sub_23896F5A0(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  GameSaveSyncedDirectory.remoteProgressObserver.setter(v2);
}

void partial apply for closure #1 in GameSaveSyncedDirectory.remoteProgressObserver.setter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__remoteProgressObserver);
  *(v1 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__remoteProgressObserver) = v2;
  v4 = v2;
}

void partial apply for closure #1 in GameSaveSyncedDirectory.gameSyncedDirectoryPresenter.setter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__gameSyncedDirectoryPresenter);
  *(v1 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__gameSyncedDirectoryPresenter) = v2;
  v4 = v2;
}

uint64_t outlined assign with copy of GameSaveSyncedDirectory.State?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

void partial apply for closure #1 in GameSaveSyncedDirectory.progress.setter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__progress);
  *(v1 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__progress) = v2;
  v4 = v2;
}

uint64_t outlined assign with copy of GameSaveSyncedDirectory.State(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GameSaveSyncedDirectory.State(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t partial apply for closure #1 in GameSaveSyncedDirectory.waitWithUI()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = GameSaveSyncedDirectory.finishSyncing();

  return closure #1 in GameSaveSyncedDirectory.waitWithUI()(a1, v4, v5, v6);
}

uint64_t objectdestroy_24Tm(uint64_t a1)
{
  v3 = *(v1 + 16);

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t partial apply for closure #1 in closure #4 in closure #1 in GameSaveSyncedDirectory.drawStateUI(window:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = GameSaveSyncedDirectory.finishSyncing();

  return closure #1 in closure #4 in closure #1 in GameSaveSyncedDirectory.drawStateUI(window:)(a1, v4, v5, v6);
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t partial apply for closure #1 in closure #6 in closure #1 in GameSaveSyncedDirectory.drawStateUI(window:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = GameSaveSyncedDirectory.finishSyncing();

  return closure #1 in closure #6 in closure #1 in GameSaveSyncedDirectory.drawStateUI(window:)(a1, v4, v5, v6);
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

uint64_t objectdestroy_20Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = GameSaveSyncedDirectory.finishSyncing();

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v5);
}

uint64_t outlined destroy of URL?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t type metadata accessor for UIAlertController(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t outlined init with copy of URL?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t GSSyncedDirectoryState.url.getter@<X0>(uint64_t a1@<X8>)
{
  if ([v1 internalValue])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (*(&v8 + 1))
  {
    v3 = type metadata accessor for URL();
    v4 = swift_dynamicCast();
    return (*(*(v3 - 8) + 56))(a1, v4 ^ 1u, 1, v3);
  }

  else
  {
    outlined destroy of URL?(v9, &_sypSgMd, &_sypSgMR);
    v6 = type metadata accessor for URL();
    return (*(*(v6 - 8) + 56))(a1, 1, 1, v6);
  }
}

uint64_t GSSyncedDirectoryState.conflictedVersions.getter()
{
  if ([v0 internalValue])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo24GSSyncedDirectoryVersionCGMd, &_sSaySo24GSSyncedDirectoryVersionCGMR);
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    outlined destroy of URL?(v5, &_sypSgMd, &_sypSgMR);
    return 0;
  }
}

uint64_t GSSyncedDirectoryState.error.getter()
{
  if ([v0 internalValue])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    outlined destroy of URL?(v5, &_sypSgMd, &_sypSgMR);
    return 0;
  }
}

uint64_t GSSyncedDirectoryState.init(_:)(uint64_t result)
{
  v1 = result;
  v9 = MEMORY[0x277D84F90];
  if (result >> 62)
  {
    if (result >= 0)
    {
      result &= 0xFFFFFFFFFFFFFF8uLL;
    }

    result = MEMORY[0x23EE6BAE0](result);
    v2 = result;
    if (!result)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
LABEL_12:
      v5 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      type metadata accessor for GameSaveSyncedDirectory.Version(0);
      isa = Array._bridgeToObjectiveC()().super.isa;

      v7 = [v5 initWithId:isa syncState:4];

      return v7;
    }
  }

  if (v2 >= 1)
  {
    for (i = 0; i != v2; ++i)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x23EE6BA40](i, v1);
      }

      else
      {
        v4 = *(v1 + 8 * i + 32);
      }

      [objc_allocWithZone(GSSyncedDirectoryVersion) initWithVersion_];
      MEMORY[0x23EE6B780]();
      if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v8 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    goto LABEL_12;
  }

  __break(1u);
  return result;
}

id GSSyncedDirectoryVersion.init(version:)(uint64_t a1)
{
  outlined init with copy of Any?(a1, v8);
  if (!v9)
  {
    outlined destroy of URL?(v8, &_sypSgMd, &_sypSgMR);
    goto LABEL_5;
  }

  type metadata accessor for GameSaveSyncedDirectory.Version(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v3 = 0;
    goto LABEL_6;
  }

  v3 = v6;
LABEL_6:
  *&v1[OBJC_IVAR___GSSyncedDirectoryVersion_version] = v3;
  v7.receiver = v1;
  v7.super_class = GSSyncedDirectoryVersion;
  v4 = objc_msgSendSuper2(&v7, sel_init);
  outlined destroy of URL?(a1, &_sypSgMd, &_sypSgMR);
  return v4;
}

uint64_t GSSyncedDirectoryVersion.description.getter()
{
  if (*(v0 + OBJC_IVAR___GSSyncedDirectoryVersion_version))
  {
    return GameSaveSyncedDirectory.Version.description.getter();
  }

  else
  {
    return 0;
  }
}

uint64_t closure #1 in static GSSyncedDirectory.cleanupDirectory(forContainerIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a6;
  v9 = swift_task_alloc();
  *(v6 + 24) = v9;
  *v9 = v6;
  v9[1] = closure #1 in static GSSyncedDirectory.cleanupDirectory(forContainerIdentifier:);

  return specialized static GameSaveSyncedDirectory.cleanupDirectory(containerIdentifier:)(a4, a5);
}

uint64_t closure #1 in static GSSyncedDirectory.cleanupDirectory(forContainerIdentifier:)()
{
  v1 = *(*v0 + 24);
  v3 = *v0;

  return MEMORY[0x2822009F8](closure #1 in static GSSyncedDirectory.cleanupDirectory(forContainerIdentifier:), 0, 0);
}

{
  dispatch_group_leave(*(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t @objc closure #1 in GSSyncedDirectory.finishSyncing()(const void *a1, void *a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = _Block_copy(a1);
  v4 = a2;

  return MEMORY[0x2822009F8](@objc closure #1 in GSSyncedDirectory.finishSyncing(), 0, 0);
}

uint64_t @objc closure #1 in GSSyncedDirectory.finishSyncing()()
{
  v0[4] = *(v0[2] + OBJC_IVAR___GSSyncedDirectory_directory);

  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = @objc closure #1 in GSSyncedDirectory.finishSyncing();

  return GameSaveSyncedDirectory._waitForDirectorySync(ui:)(0);
}

{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v4 = *(*v0 + 24);
  v5 = *(*v0 + 16);
  v6 = *v0;

  if (v4)
  {
    v7 = *(v1 + 24);
    v7[2](v7);
    _Block_release(v7);
  }

  v8 = *(v6 + 8);

  return v8();
}

uint64_t @objc closure #1 in GSSyncedDirectory.triggerPendingUpload()(const void *a1, void *a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = _Block_copy(a1);
  v4 = a2;

  return MEMORY[0x2822009F8](@objc closure #1 in GSSyncedDirectory.triggerPendingUpload(), 0, 0);
}

uint64_t @objc closure #1 in GSSyncedDirectory.triggerPendingUpload()()
{
  v0[4] = *(v0[2] + OBJC_IVAR___GSSyncedDirectory_directory);

  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = @objc closure #1 in GSSyncedDirectory.triggerPendingUpload();

  return GameSaveSyncedDirectory.triggerPendingUpload()();
}

uint64_t @objc closure #1 in GSSyncedDirectory.triggerPendingUpload()(char a1)
{
  v3 = *v1;
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 24);
  v7 = *(*v1 + 16);
  v8 = *v1;

  if (v6)
  {
    v9 = *(v3 + 24);
    v9[2](v9, a1 & 1);
    _Block_release(v9);
  }

  v10 = *(v8 + 8);

  return v10();
}

uint64_t @objc closure #1 in GSSyncedDirectory.finishSyncing(_:)(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;

  return MEMORY[0x2822009F8](@objc closure #1 in GSSyncedDirectory.finishSyncing(_:), 0, 0);
}

uint64_t @objc closure #1 in GSSyncedDirectory.finishSyncing(_:)()
{
  v0[5] = *(v0[3] + OBJC_IVAR___GSSyncedDirectory_directory);

  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = @objc closure #1 in GSSyncedDirectory.finishSyncing(_:);
  v2 = v0[2];

  return GameSaveSyncedDirectory.finishSyncing(statusDisplay:)(v2);
}

{
  v1 = *v0;
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 32);
  v5 = *(*v0 + 24);
  v6 = *(*v0 + 16);
  v7 = *v0;

  if (v4)
  {
    v8 = *(v1 + 32);
    v8[2](v8);
    _Block_release(v8);
  }

  v9 = *(v7 + 8);

  return v9();
}

id GSSyncedDirectory.directoryState.getter()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v27 - v7;
  v9 = type metadata accessor for GameSaveSyncedDirectory.State(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v0 + OBJC_IVAR___GSSyncedDirectory_directory);
  v14 = *(v13 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory_lock);

  [v14 lock];
  swift_getKeyPath();
  v29[0] = v13;
  lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  outlined init with copy of GameSaveSyncedDirectory.State(v13 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory___state, v12);
  [v14 unlock];

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        (*(v2 + 32))(v8, v12, v1);
        v18 = objc_allocWithZone(GSSyncedDirectoryState);
        (*(v2 + 16))(v6, v8, v1);
        v19 = [v18 initWithId:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)() syncState:1];
      }

      else
      {
        (*(v2 + 32))(v8, v12, v1);
        v21 = objc_allocWithZone(GSSyncedDirectoryState);
        (*(v2 + 16))(v6, v8, v1);
        v19 = [v21 initWithId:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)() syncState:2];
      }
    }

    else
    {
      (*(v2 + 32))(v8, v12, v1);
      v20 = objc_allocWithZone(GSSyncedDirectoryState);
      (*(v2 + 16))(v6, v8, v1);
      v19 = [v20 initWithId:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)() syncState:0];
    }

    v22 = v19;
    swift_unknownObjectRelease();
    (*(v2 + 8))(v8, v1);
    return v22;
  }

  else if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload == 5)
    {
      return [objc_allocWithZone(GSSyncedDirectoryState) initWithId:0 syncState:3];
    }

    else
    {
      return [objc_allocWithZone(GSSyncedDirectoryState) initWithId:0 syncState:6];
    }
  }

  else
  {
    v16 = *v12;
    if (EnumCaseMultiPayload == 3)
    {
      type metadata accessor for GSSyncedDirectoryState(EnumCaseMultiPayload);
      return GSSyncedDirectoryState.init(_:)(v16);
    }

    else
    {
      swift_getErrorValue();
      v23 = v28;
      v29[3] = v28;
      __swift_allocate_boxed_opaque_existential_0(v29);
      (*(*(v23 - 8) + 16))();
      v24 = objc_allocWithZone(GSSyncedDirectoryState);
      v25 = _bridgeAnythingToObjectiveC<A>(_:)();
      __swift_destroy_boxed_opaque_existential_0(v29);
      v26 = [v24 initWithId:v25 syncState:5];
      swift_unknownObjectRelease();

      return v26;
    }
  }
}

id GSSyncedDirectoryState.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory()
{
  result = lazy protocol witness table cache variable for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory;
  if (!lazy protocol witness table cache variable for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory)
  {
    type metadata accessor for GameSaveSyncedDirectory(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_2389729CC()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t partial apply for @objc closure #1 in GSSyncedDirectory.finishSyncing(_:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = GameSaveSyncedDirectory.finishSyncing();

  return @objc closure #1 in GSSyncedDirectory.finishSyncing(_:)(v2, v3, v4);
}

uint64_t _sIeghH_IeAgH_TRTA()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = GameSaveSyncedDirectory.finishSyncing();

  return _sIeghH_IeAgH_TR(v2, v3, v5);
}

uint64_t _sIeAgH_ytIeAgHr_TRTA(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = GameSaveSyncedDirectory.finishSyncing();

  return _sIeAgH_ytIeAgHr_TR(a1, v4, v5, v7);
}

uint64_t partial apply for @objc closure #1 in GSSyncedDirectory.triggerPendingUpload()()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = GameSaveSyncedDirectory.finishSyncing();

  return @objc closure #1 in GSSyncedDirectory.triggerPendingUpload()(v2, v3);
}

uint64_t _sIeAgH_ytIeAgHr_TRTA_30(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = static GameSaveSyncedDirectory.cleanupDirectory(containerIdentifier:);

  return _sIeAgH_ytIeAgHr_TR(a1, v4, v5, v7);
}

uint64_t objectdestroy_19Tm()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t partial apply for @objc closure #1 in GSSyncedDirectory.finishSyncing()()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = GameSaveSyncedDirectory.finishSyncing();

  return @objc closure #1 in GSSyncedDirectory.finishSyncing()(v2, v3);
}

uint64_t objectdestroy_10Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_238972F00()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t partial apply for closure #1 in static GSSyncedDirectory.cleanupDirectory(forContainerIdentifier:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = GameSaveSyncedDirectory.finishSyncing();

  return closure #1 in static GSSyncedDirectory.cleanupDirectory(forContainerIdentifier:)(a1, v4, v5, v6, v7, v8);
}

uint64_t outlined init with copy of Any?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t View.gameSyncSheet(directory:finishedLoading:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v16[7] = 0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIWindowCSgMd, &_sSo8UIWindowCSgMR);
  State.init(wrappedValue:)();
  v14 = v16[0];
  v16[2] = a1;
  v16[3] = a2;
  v16[4] = a3;
  v16[5] = a4;
  v16[6] = a5;

  MEMORY[0x23EE6B520](v16, a6, &type metadata for GameSaveLoadingViewModifier, a7);
}

id GameSaveLoadingViewModifier.WindowReaderViewRepresentable.WindowReaderView.init(coder:)(void *a1)
{
  v8 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIWindowCSgMd, &_sSo8UIWindowCSgMR);
  static Binding.constant(_:)();
  v3 = v10;
  v4 = &v1[OBJC_IVAR____TtCVV8GameSave27GameSaveLoadingViewModifier29WindowReaderViewRepresentable16WindowReaderView__windowBinding];
  *v4 = v9;
  *(v4 + 2) = v3;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for GameSaveLoadingViewModifier.WindowReaderViewRepresentable.WindowReaderView();
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);

  if (v5)
  {
  }

  return v5;
}

id GameSaveLoadingViewModifier.WindowReaderViewRepresentable.WindowReaderView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GameSaveLoadingViewModifier.WindowReaderViewRepresentable.WindowReaderView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t get_enum_tag_for_layout_string_Ieg_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for GameSaveLoadingViewModifier(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for GameSaveLoadingViewModifier(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id protocol witness for UIViewRepresentable.makeUIView(context:) in conformance GameSaveLoadingViewModifier.WindowReaderViewRepresentable()
{
  v1 = *(v0 + 2);
  v10 = *v0;
  v11 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySo8UIWindowCSgGMd, &_s7SwiftUI7BindingVySo8UIWindowCSgGMR);
  Binding.projectedValue.getter();
  v2 = v9;
  v3 = type metadata accessor for GameSaveLoadingViewModifier.WindowReaderViewRepresentable.WindowReaderView();
  v4 = objc_allocWithZone(v3);
  v5 = &v4[OBJC_IVAR____TtCVV8GameSave27GameSaveLoadingViewModifier29WindowReaderViewRepresentable16WindowReaderView__windowBinding];
  *v5 = v8;
  *(v5 + 2) = v2;
  v7.receiver = v4;
  v7.super_class = v3;
  return objc_msgSendSuper2(&v7, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance GameSaveLoadingViewModifier.WindowReaderViewRepresentable(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type GameSaveLoadingViewModifier.WindowReaderViewRepresentable and conformance GameSaveLoadingViewModifier.WindowReaderViewRepresentable();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance GameSaveLoadingViewModifier.WindowReaderViewRepresentable(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type GameSaveLoadingViewModifier.WindowReaderViewRepresentable and conformance GameSaveLoadingViewModifier.WindowReaderViewRepresentable();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void protocol witness for View.body.getter in conformance GameSaveLoadingViewModifier.WindowReaderViewRepresentable()
{
  lazy protocol witness table accessor for type GameSaveLoadingViewModifier.WindowReaderViewRepresentable and conformance GameSaveLoadingViewModifier.WindowReaderViewRepresentable();
  UIViewRepresentable.body.getter();
  __break(1u);
}

uint64_t closure #1 in GameSaveLoadingViewModifier.body(content:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v48 = a2;
  v59 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA01_C16Modifier_ContentVy8GameSave0jk7LoadingcH0VG_AI0jK15SyncedDirectoryCSgQo_Md, &_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA01_C16Modifier_ContentVy8GameSave0jk7LoadingcH0VG_AI0jK15SyncedDirectoryCSgQo_MR);
  v54 = *(v4 - 8);
  v55 = v4;
  v5 = *(v54 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v43 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAEAdeF_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA01_C16Modifier_ContentVy8GameSave0jk7LoadingcH0VG_AI0jK15SyncedDirectoryCSgQo__So8UIWindowCSgQo_Md, &_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAEAdeF_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA01_C16Modifier_ContentVy8GameSave0jk7LoadingcH0VG_AI0jK15SyncedDirectoryCSgQo__So8UIWindowCSgQo_MR);
  v57 = *(v8 - 8);
  v58 = v8;
  v9 = *(v57 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v56 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v53 = &v43 - v12;
  type metadata accessor for MainActor();
  v52 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v14 = a1[1];
  v65[0] = *a1;
  v13 = v65[0];
  v65[1] = v14;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySo8UIWindowCSgGMd, &_s7SwiftUI5StateVySo8UIWindowCSgGMR);
  State.projectedValue.getter();
  v50 = v61;
  v51 = v60;
  v49 = v62;
  v16 = a1[3];
  v17 = a1[4];
  v60 = a1[2];
  v15 = v60;
  v61 = v16;
  v45 = v16;
  v62 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy8GameSave0dE15SyncedDirectoryCSgGMd, &_s7SwiftUI7BindingVy8GameSave0dE15SyncedDirectoryCSgGMR);
  MEMORY[0x23EE6B5C0](v65, v18);
  v46 = v65[0];
  v60 = v65[0];
  v67 = v17;
  v68[0] = v13;
  v65[0] = v14;
  v66 = v15;
  v20 = a1[6];
  v44 = a1[5];
  v19 = v44;
  v43 = v20;
  v21 = swift_allocObject();
  v22 = *(a1 + 1);
  *(v21 + 16) = *a1;
  *(v21 + 32) = v22;
  *(v21 + 48) = *(a1 + 2);
  *(v21 + 64) = a1[6];
  outlined init with copy of URL?(v68, &v64, &_sSo8UIWindowCSgMd, &_sSo8UIWindowCSgMR);
  outlined init with copy of URL?(v65, &v64, &_s7SwiftUI11AnyLocationCySo8UIWindowCSgGSgMd, &_s7SwiftUI11AnyLocationCySo8UIWindowCSgGSgMR);
  outlined init with copy of Transaction(&v66, &v64);

  outlined init with copy of URL?(&v67, &v64, &_s8GameSave0aB15SyncedDirectoryCSgMd, &_s8GameSave0aB15SyncedDirectoryCSgMR);
  outlined copy of (@escaping @callee_guaranteed () -> ())?(v19);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy8GameSave0fg7LoadingcD0VGMd, &_s7SwiftUI21_ViewModifier_ContentVy8GameSave0fg7LoadingcD0VGMR);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8GameSave0aB15SyncedDirectoryCSgMd, &_s8GameSave0aB15SyncedDirectoryCSgMR);
  v25 = lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type _ViewModifier_Content<GameSaveLoadingViewModifier> and conformance _ViewModifier_Content<A>, &_s7SwiftUI21_ViewModifier_ContentVy8GameSave0fg7LoadingcD0VGMd, &_s7SwiftUI21_ViewModifier_ContentVy8GameSave0fg7LoadingcD0VGMR);
  v26 = lazy protocol witness table accessor for type GameSaveSyncedDirectory? and conformance <A> A?();
  View.onChange<A>(of:initial:_:)();

  v60 = v13;
  v61 = v14;
  State.wrappedValue.getter();
  v27 = v64;
  v28 = swift_allocObject();
  v29 = *(a1 + 1);
  *(v28 + 16) = *a1;
  *(v28 + 32) = v29;
  *(v28 + 48) = *(a1 + 2);
  *(v28 + 64) = a1[6];
  outlined init with copy of URL?(v68, &v60, &_sSo8UIWindowCSgMd, &_sSo8UIWindowCSgMR);
  outlined init with copy of URL?(v65, &v60, &_s7SwiftUI11AnyLocationCySo8UIWindowCSgGSgMd, &_s7SwiftUI11AnyLocationCySo8UIWindowCSgGSgMR);
  outlined init with copy of Transaction(&v66, &v60);

  outlined init with copy of URL?(&v67, &v60, &_s8GameSave0aB15SyncedDirectoryCSgMd, &_s8GameSave0aB15SyncedDirectoryCSgMR);
  outlined copy of (@escaping @callee_guaranteed () -> ())?(v44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIWindowCSgMd, &_sSo8UIWindowCSgMR);
  v60 = v23;
  v61 = v24;
  v62 = v25;
  v63 = v26;
  swift_getOpaqueTypeConformance2();
  lazy protocol witness table accessor for type UIWindow? and conformance <A> A?();
  v30 = v53;
  v31 = v55;
  View.onChange<A>(of:initial:_:)();

  (*(v54 + 8))(v7, v31);
  v33 = v56;
  v32 = v57;
  v34 = *(v57 + 16);
  v35 = v58;
  v34(v56, v30, v58);
  v36 = v59;
  v37 = v50;
  *v59 = v51;
  v36[1] = v37;
  v38 = v49;
  v36[2] = v49;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8GameSave0aB19LoadingViewModifierV012WindowReaderD13RepresentableV_7SwiftUI0D0PAFE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAhFEAijK_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAF01_dE8_ContentVyACG_AA0aB15SyncedDirectoryCSgQo__So8UIWindowCSgQo_tMd, &_s8GameSave0aB19LoadingViewModifierV012WindowReaderD13RepresentableV_7SwiftUI0D0PAFE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAhFEAijK_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAF01_dE8_ContentVyACG_AA0aB15SyncedDirectoryCSgQo__So8UIWindowCSgQo_tMR);
  v34(v36 + *(v39 + 48), v33, v35);
  v40 = *(v32 + 8);

  v41 = v38;
  v40(v30, v35);
  v40(v33, v35);
}

uint64_t closure #1 in closure #1 in GameSaveLoadingViewModifier.body(content:)(uint64_t a1, uint64_t *a2, void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v22[-v7];
  v9 = *a2;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (v9)
  {
    v10 = *a3;
    v11 = a3[1];
    v23[0] = *a3;
    v23[1] = v11;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySo8UIWindowCSgGMd, &_s7SwiftUI5StateVySo8UIWindowCSgGMR);
    State.wrappedValue.getter();
    v12 = v26;
    if (v26)
    {
      v13 = type metadata accessor for TaskPriority();
      (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
      v23[0] = v11;
      v14 = a3[3];
      v25 = a3[2];
      v26 = v10;
      v15 = a3[5];
      v24 = a3[4];
      v16 = a3[6];

      v17 = v12;
      outlined init with copy of URL?(&v26, v22, &_sSo8UIWindowCSgMd, &_sSo8UIWindowCSgMR);
      outlined init with copy of URL?(v23, v22, &_s7SwiftUI11AnyLocationCySo8UIWindowCSgGSgMd, &_s7SwiftUI11AnyLocationCySo8UIWindowCSgGSgMR);
      outlined init with copy of Transaction(&v25, v22);

      outlined init with copy of URL?(&v24, v22, &_s8GameSave0aB15SyncedDirectoryCSgMd, &_s8GameSave0aB15SyncedDirectoryCSgMR);
      outlined copy of (@escaping @callee_guaranteed () -> ())?(v15);
      v18 = static MainActor.shared.getter();
      v19 = swift_allocObject();
      *(v19 + 16) = v18;
      *(v19 + 24) = MEMORY[0x277D85700];
      *(v19 + 32) = v9;
      *(v19 + 40) = v17;
      v20 = *(a3 + 1);
      *(v19 + 48) = *a3;
      *(v19 + 64) = v20;
      *(v19 + 80) = *(a3 + 2);
      *(v19 + 96) = a3[6];
      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v8, &async function pointer to partial apply for closure #1 in closure #1 in closure #1 in GameSaveLoadingViewModifier.body(content:), v19);
    }

    else
    {
    }
  }
}

uint64_t closure #1 in closure #1 in closure #1 in GameSaveLoadingViewModifier.body(content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a6;
  v6[3] = type metadata accessor for MainActor();
  v6[4] = static MainActor.shared.getter();
  v8 = swift_task_alloc();
  v6[5] = v8;
  *v8 = v6;
  v8[1] = closure #1 in closure #1 in closure #1 in GameSaveLoadingViewModifier.body(content:);

  return GameSaveSyncedDirectory.finishSyncing(statusDisplay:)(a5);
}

uint64_t closure #1 in closure #1 in closure #1 in GameSaveLoadingViewModifier.body(content:)()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v7 = *v0;

  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in closure #1 in closure #1 in GameSaveLoadingViewModifier.body(content:), v5, v4);
}

{
  v1 = v0[4];
  v2 = v0[2];

  v3 = *(v2 + 40);
  if (v3)
  {
    v4 = *(v0[2] + 48);

    v3(v5);
    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed GameSaveSyncedDirectory.State) -> ())?(v3);
  }

  v6 = v0[1];

  return v6();
}

void closure #2 in closure #1 in GameSaveLoadingViewModifier.body(content:)(uint64_t *a1, void **a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v28[-v8 - 8];
  v10 = *a1;
  v11 = *a2;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  v12 = MEMORY[0x277D85700];
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (v10 || !v11)
  {
  }

  else
  {
    v14 = a3[2];
    v13 = a3[3];
    v15 = a3[4];
    v29[0] = v14;
    v29[1] = v13;
    v27 = v13;
    v29[2] = v15;
    v16 = v11;
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy8GameSave0dE15SyncedDirectoryCSgGMd, &_s7SwiftUI7BindingVy8GameSave0dE15SyncedDirectoryCSgGMR);
    MEMORY[0x23EE6B5C0](&v32, v17);
    v18 = v32;
    if (v32)
    {
      v19 = type metadata accessor for TaskPriority();
      (*(*(v19 - 8) + 56))(v9, 1, 1, v19);
      v20 = *a3;
      v30 = a3[1];
      v31 = v20;
      v32 = v14;
      v29[0] = v15;
      v21 = a3[5];
      v22 = a3[6];
      v23 = v16;

      outlined init with copy of URL?(&v31, v28, &_sSo8UIWindowCSgMd, &_sSo8UIWindowCSgMR);
      outlined init with copy of URL?(&v30, v28, &_s7SwiftUI11AnyLocationCySo8UIWindowCSgGSgMd, &_s7SwiftUI11AnyLocationCySo8UIWindowCSgGSgMR);
      outlined init with copy of Transaction(&v32, v28);

      outlined init with copy of URL?(v29, v28, &_s8GameSave0aB15SyncedDirectoryCSgMd, &_s8GameSave0aB15SyncedDirectoryCSgMR);
      outlined copy of (@escaping @callee_guaranteed () -> ())?(v21);
      v24 = static MainActor.shared.getter();
      v25 = swift_allocObject();
      *(v25 + 16) = v24;
      *(v25 + 24) = v12;
      *(v25 + 32) = v18;
      *(v25 + 40) = v23;
      v26 = *(a3 + 1);
      *(v25 + 48) = *a3;
      *(v25 + 64) = v26;
      *(v25 + 80) = *(a3 + 2);
      *(v25 + 96) = a3[6];
      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v9, &async function pointer to partial apply for closure #1 in closure #2 in closure #1 in GameSaveLoadingViewModifier.body(content:), v25);
    }

    else
    {
    }
  }
}

uint64_t closure #1 in closure #2 in closure #1 in GameSaveLoadingViewModifier.body(content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a6;
  v6[3] = type metadata accessor for MainActor();
  v6[4] = static MainActor.shared.getter();
  v8 = swift_task_alloc();
  v6[5] = v8;
  *v8 = v6;
  v8[1] = closure #1 in closure #2 in closure #1 in GameSaveLoadingViewModifier.body(content:);

  return GameSaveSyncedDirectory.finishSyncing(statusDisplay:)(a5);
}

uint64_t closure #1 in closure #2 in closure #1 in GameSaveLoadingViewModifier.body(content:)()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v7 = *v0;

  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in closure #2 in closure #1 in GameSaveLoadingViewModifier.body(content:), v5, v4);
}

uint64_t protocol witness for ViewModifier.body(content:) in conformance GameSaveLoadingViewModifier@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + 16);
  v9[0] = *v2;
  v9[1] = v5;
  v9[2] = *(v2 + 32);
  v10 = *(v2 + 48);
  *a2 = static Alignment.center.getter();
  a2[1] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA05TupleD0Vy8GameSave0ij7LoadingD8ModifierV012WindowReaderD13RepresentableV_AA0D0PAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyApAEAqrS_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA01_dL8_ContentVyALG_AJ0iJ15SyncedDirectoryCSgQo__So8UIWindowCSgQo_tGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA05TupleD0Vy8GameSave0ij7LoadingD8ModifierV012WindowReaderD13RepresentableV_AA0D0PAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyApAEAqrS_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA01_dL8_ContentVyALG_AJ0iJ15SyncedDirectoryCSgQo__So8UIWindowCSgQo_tGGMR);
  return closure #1 in GameSaveLoadingViewModifier.body(content:)(v9, a1, (a2 + *(v7 + 44)));
}

uint64_t outlined copy of (@escaping @callee_guaranteed () -> ())?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GameSaveSyncedDirectory? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type GameSaveSyncedDirectory? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type GameSaveSyncedDirectory? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s8GameSave0aB15SyncedDirectoryCSgMd, &_s8GameSave0aB15SyncedDirectoryCSgMR);
    lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory, type metadata accessor for GameSaveSyncedDirectory);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GameSaveSyncedDirectory? and conformance <A> A?);
  }

  return result;
}

uint64_t objectdestroyTm_0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 48);

  if (*(v0 + 56))
  {
    v5 = *(v0 + 64);
  }

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

unint64_t lazy protocol witness table accessor for type UIWindow? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type UIWindow? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type UIWindow? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSo8UIWindowCSgMd, &_sSo8UIWindowCSgMR);
    lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type UIWindow and conformance NSObject, type metadata accessor for UIWindow);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UIWindow? and conformance <A> A?);
  }

  return result;
}

unint64_t type metadata accessor for UIWindow()
{
  result = lazy cache variable for type metadata for UIWindow;
  if (!lazy cache variable for type metadata for UIWindow)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UIWindow);
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #2 in closure #1 in GameSaveLoadingViewModifier.body(content:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = GameSaveSyncedDirectory.finishSyncing();

  return closure #1 in closure #2 in closure #1 in GameSaveLoadingViewModifier.body(content:)(a1, v4, v5, v6, v7, (v1 + 6));
}

uint64_t objectdestroy_10Tm_0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 56);

  v4 = *(v0 + 64);

  v5 = *(v0 + 72);

  v6 = *(v0 + 80);

  if (*(v0 + 88))
  {
    v7 = *(v0 + 96);
  }

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in GameSaveLoadingViewModifier.body(content:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = static GameSaveSyncedDirectory.cleanupDirectory(containerIdentifier:);

  return closure #1 in closure #1 in closure #1 in GameSaveLoadingViewModifier.body(content:)(a1, v4, v5, v6, v7, (v1 + 6));
}

uint64_t getEnumTagSinglePayload for ConflictScrollView(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t storeEnumTagSinglePayload for ConflictScrollView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for GameSaveLoadingViewModifier.WindowReaderViewRepresentable(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t storeEnumTagSinglePayload for GameSaveLoadingViewModifier.WindowReaderViewRepresentable(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t lazy protocol witness table accessor for type GameSaveLoadingViewModifier.WindowReaderViewRepresentable and conformance GameSaveLoadingViewModifier.WindowReaderViewRepresentable()
{
  result = lazy protocol witness table cache variable for type GameSaveLoadingViewModifier.WindowReaderViewRepresentable and conformance GameSaveLoadingViewModifier.WindowReaderViewRepresentable;
  if (!lazy protocol witness table cache variable for type GameSaveLoadingViewModifier.WindowReaderViewRepresentable and conformance GameSaveLoadingViewModifier.WindowReaderViewRepresentable)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GameSaveLoadingViewModifier.WindowReaderViewRepresentable and conformance GameSaveLoadingViewModifier.WindowReaderViewRepresentable);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GameSaveLoadingViewModifier.WindowReaderViewRepresentable and conformance GameSaveLoadingViewModifier.WindowReaderViewRepresentable;
  if (!lazy protocol witness table cache variable for type GameSaveLoadingViewModifier.WindowReaderViewRepresentable and conformance GameSaveLoadingViewModifier.WindowReaderViewRepresentable)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GameSaveLoadingViewModifier.WindowReaderViewRepresentable and conformance GameSaveLoadingViewModifier.WindowReaderViewRepresentable);
  }

  return result;
}

uint64_t closure #1 in ConflictButton.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a2 = static VerticalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA6SpacerVAA06_FrameG0VG_AA012_ConditionalJ0VyAKyAA0D0PAAE4boldyQrSbFQOyAKyAKyAA5ImageVAOGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AA08_PaddingG0VGAKyAtAEAUyQrSbFQOyAKyAPA2_G_Qo_A6_GGApKyAKyAWA2_GAOGAA6VStackVyAIyAA4TextV_ARyA17_A17_GtGGAMtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA6SpacerVAA06_FrameG0VG_AA012_ConditionalJ0VyAKyAA0D0PAAE4boldyQrSbFQOyAKyAKyAA5ImageVAOGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AA08_PaddingG0VGAKyAtAEAUyQrSbFQOyAKyAPA2_G_Qo_A6_GGApKyAKyAWA2_GAOGAA6VStackVyAIyAA4TextV_ARyA17_A17_GtGGAMtGGMR);
  closure #1 in closure #1 in ConflictButton.body.getter(a1, (a2 + *(v4 + 44)));

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyAA6SpacerVAA12_FrameLayoutVG_AA012_ConditionalD0VyACyAA0G0PAAE4boldyQrSbFQOyACyACyAA5ImageVAKGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AA08_PaddingJ0VGACyApAEAQyQrSbFQOyACyAlZG_Qo_A2_GGAlCyACyAsZGAKGAA6VStackVyAGyAA4TextV_ANyA13_A13_GtGGAItGGAA01_d5ShapeQ0VyAA9RectangleVGGMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyAA6SpacerVAA12_FrameLayoutVG_AA012_ConditionalD0VyACyAA0G0PAAE4boldyQrSbFQOyACyACyAA5ImageVAKGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AA08_PaddingJ0VGACyApAEAQyQrSbFQOyACyAlZG_Qo_A2_GGAlCyACyAsZGAKGAA6VStackVyAGyAA4TextV_ANyA13_A13_GtGGAItGGAA01_d5ShapeQ0VyAA9RectangleVGGMR);
  *(a2 + *(result + 36)) = 0;
  return result;
}

uint64_t closure #1 in closure #1 in ConflictButton.body.getter@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v91 = a2;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE4boldyQrSbFQOyACyACyAA6SpacerVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AA08_PaddingI0VGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE4boldyQrSbFQOyACyACyAA6SpacerVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AA08_PaddingI0VGMR);
  v3 = *(*(v93 - 8) + 64);
  MEMORY[0x28223BE20](v93);
  v5 = &v77[-v4];
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAA4ViewPAAE4boldyQrSbFQOyAGyAGyAA5ImageVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AA08_PaddingK0VGAGyAiAEAJyQrSbFQOyAGyAGyAA6SpacerVANGAUG_Qo_AYG_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAA4ViewPAAE4boldyQrSbFQOyAGyAGyAA5ImageVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AA08_PaddingK0VGAGyAiAEAJyQrSbFQOyAGyAGyAA6SpacerVANGAUG_Qo_AYG_GMR);
  v6 = *(*(v84 - 8) + 64);
  MEMORY[0x28223BE20](v84);
  v86 = &v77[-v7];
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE4boldyQrSbFQOyACyACyAA5ImageVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AA08_PaddingI0VGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE4boldyQrSbFQOyACyACyAA5ImageVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AA08_PaddingI0VGMR);
  v8 = *(*(v85 - 8) + 64);
  MEMORY[0x28223BE20](v85);
  v10 = &v77[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA4ViewPAAE4boldyQrSbFQOyAEyAEyAA5ImageVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AA08_PaddingJ0VGAEyAgAEAHyQrSbFQOyAEyAEyAA6SpacerVALGASG_Qo_AWGGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA4ViewPAAE4boldyQrSbFQOyAEyAEyAA5ImageVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AA08_PaddingJ0VGAEyAgAEAHyQrSbFQOyAEyAEyAA6SpacerVALGASG_Qo_AWGGMR);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v94 = &v77[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v16 = &v77[-v15];
  type metadata accessor for MainActor();
  v92 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v89 = v120;
  v90 = v118;
  v87 = v123;
  v88 = v122;
  v117 = 1;
  v116 = v119;
  v115 = v121;
  if (*(a1 + *(type metadata accessor for ConflictButton() + 32)) == 1)
  {
    v81 = Image.init(systemName:)();
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v17 = v124;
    v18 = v125;
    v19 = a1;
    v20 = v126;
    v21 = v16;
    v22 = v127;
    v82 = v10;
    v23 = v128;
    v24 = v129;
    v25 = static Font.subheadline.getter();
    KeyPath = swift_getKeyPath();
    LOBYTE(v111[0]) = v18;
    LOBYTE(v104) = v22;
    *&v106 = v81;
    *(&v106 + 1) = v17;
    LOBYTE(v107[0]) = v18;
    *(&v107[0] + 1) = v20;
    a1 = v19;
    LOBYTE(v107[1]) = v22;
    v16 = v21;
    *(&v107[1] + 1) = v23;
    *&v107[2] = v24;
    *(&v107[2] + 1) = KeyPath;
    *&v107[3] = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _FrameLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    v27 = v82;
    View.bold(_:)();
    *&v109[16] = v107[1];
    *&v109[32] = v107[2];
    *&v109[48] = *&v107[3];
    v108 = v106;
    *v109 = v107[0];
    outlined destroy of URL?(&v108, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMR);
    LOBYTE(v21) = static Edge.Set.leading.getter();
    EdgeInsets.init(_all:)();
    v28 = v86;
    v29 = v27 + *(v85 + 36);
    *v29 = v21;
    *(v29 + 8) = v30;
    *(v29 + 16) = v31;
    *(v29 + 24) = v32;
    *(v29 + 32) = v33;
    *(v29 + 40) = 0;
    outlined init with copy of URL?(v27, v28, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE4boldyQrSbFQOyACyACyAA5ImageVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AA08_PaddingI0VGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE4boldyQrSbFQOyACyACyAA5ImageVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AA08_PaddingI0VGMR);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.bold(_:)>>.0, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.bold(_:)>>.0, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    v34 = v27;
    v35 = &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE4boldyQrSbFQOyACyACyAA5ImageVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AA08_PaddingI0VGMd;
    v36 = &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE4boldyQrSbFQOyACyACyAA5ImageVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AA08_PaddingI0VGMR;
  }

  else
  {
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v37 = v124;
    v38 = v126;
    v39 = v128;
    v40 = v129;
    LOBYTE(v111[0]) = 1;
    LOBYTE(v104) = v125;
    LOBYTE(v102[0]) = v127;
    v41 = static Font.subheadline.getter();
    v42 = swift_getKeyPath();
    *&v106 = 0;
    BYTE8(v106) = v111[0];
    *&v107[0] = v37;
    BYTE8(v107[0]) = v104;
    *&v107[1] = v38;
    BYTE8(v107[1]) = v102[0];
    *&v107[2] = v39;
    *(&v107[2] + 1) = v40;
    *&v107[3] = v42;
    *(&v107[3] + 1) = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6SpacerVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6SpacerVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Spacer, _FrameLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    View.bold(_:)();
    *&v109[16] = v107[1];
    *&v109[32] = v107[2];
    *&v109[48] = v107[3];
    v108 = v106;
    *v109 = v107[0];
    outlined destroy of URL?(&v108, &_s7SwiftUI15ModifiedContentVyACyAA6SpacerVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6SpacerVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMR);
    LOBYTE(v41) = static Edge.Set.leading.getter();
    EdgeInsets.init(_all:)();
    v43 = &v5[*(v93 + 36)];
    *v43 = v41;
    *(v43 + 1) = v44;
    *(v43 + 2) = v45;
    *(v43 + 3) = v46;
    *(v43 + 4) = v47;
    v43[40] = 0;
    outlined init with copy of URL?(v5, v86, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE4boldyQrSbFQOyACyACyAA6SpacerVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AA08_PaddingI0VGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE4boldyQrSbFQOyACyACyAA6SpacerVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AA08_PaddingI0VGMR);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.bold(_:)>>.0, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.bold(_:)>>.0, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    v34 = v5;
    v35 = &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE4boldyQrSbFQOyACyACyAA6SpacerVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AA08_PaddingI0VGMd;
    v36 = &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE4boldyQrSbFQOyACyACyAA6SpacerVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AA08_PaddingI0VGMR;
  }

  outlined destroy of URL?(v34, v35, v36);
  v83 = v16;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v85 = v132;
  v86 = v130;
  v84 = v134;
  v82 = v135;
  v101 = 1;
  v100 = v131;
  v99 = v133;
  v48 = *a1;
  v49 = a1[1];

  v81 = Image.init(_internalSystemName:)();
  v80 = static Font.title2.getter();
  v93 = swift_getKeyPath();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v79 = static HorizontalAlignment.leading.getter();
  LOBYTE(v108) = 1;
  closure #1 in closure #1 in closure #1 in ConflictButton.body.getter(a1, v102);
  *&v98[23] = v102[1];
  *&v98[39] = v102[2];
  *&v98[55] = v102[3];
  v98[71] = v103;
  *&v98[7] = v102[0];
  v78 = v108;
  LOBYTE(v48) = v117;
  v50 = v116;
  v51 = v115;
  v52 = v94;
  outlined init with copy of URL?(v16, v94, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA4ViewPAAE4boldyQrSbFQOyAEyAEyAA5ImageVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AA08_PaddingJ0VGAEyAgAEAHyQrSbFQOyAEyAEyAA6SpacerVALGASG_Qo_AWGGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA4ViewPAAE4boldyQrSbFQOyAEyAEyAA5ImageVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AA08_PaddingJ0VGAEyAgAEAHyQrSbFQOyAEyAEyAA6SpacerVALGASG_Qo_AWGGMR);
  LOBYTE(v49) = v101;
  v53 = v100;
  v54 = v99;
  v55 = v90;
  v56 = v91;
  *v91 = 0;
  *(v56 + 8) = v48;
  v56[2] = v55;
  *(v56 + 24) = v50;
  v57 = v88;
  v56[4] = v89;
  *(v56 + 40) = v51;
  v58 = v87;
  v56[6] = v57;
  v56[7] = v58;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVG_AA012_ConditionalD0VyACyAA4ViewPAAE4boldyQrSbFQOyACyACyAA5ImageVAGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AA08_PaddingG0VGACyAlAEAMyQrSbFQOyACyAhVG_Qo_AZGGAhCyACyAoVGAGGAA6VStackVyAA05TupleI0VyAA4TextV_AJyA11_A11_GtGGAEtMd, &_s7SwiftUI15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVG_AA012_ConditionalD0VyACyAA4ViewPAAE4boldyQrSbFQOyACyACyAA5ImageVAGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AA08_PaddingG0VGACyAlAEAMyQrSbFQOyACyAhVG_Qo_AZGGAhCyACyAoVGAGGAA6VStackVyAA05TupleI0VyAA4TextV_AJyA11_A11_GtGGAEtMR);
  outlined init with copy of URL?(v52, v56 + v59[12], &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA4ViewPAAE4boldyQrSbFQOyAEyAEyAA5ImageVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AA08_PaddingJ0VGAEyAgAEAHyQrSbFQOyAEyAEyAA6SpacerVALGASG_Qo_AWGGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA4ViewPAAE4boldyQrSbFQOyAEyAEyAA5ImageVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AA08_PaddingJ0VGAEyAgAEAHyQrSbFQOyAEyAEyAA6SpacerVALGASG_Qo_AWGGMR);
  v60 = v56 + v59[16];
  *v60 = 0;
  v60[8] = v49;
  v61 = v85;
  *(v60 + 2) = v86;
  v60[24] = v53;
  *(v60 + 4) = v61;
  v60[40] = v54;
  v63 = v81;
  v62 = v82;
  *(v60 + 6) = v84;
  *(v60 + 7) = v62;
  v64 = v56 + v59[20];
  *&v104 = v63;
  *(&v104 + 1) = v93;
  v65 = v80;
  *v105 = v80;
  *&v105[8] = v95;
  *&v105[24] = v96;
  *&v105[40] = v97;
  v66 = *&v105[32];
  *(v64 + 2) = *&v105[16];
  *(v64 + 3) = v66;
  *(v64 + 8) = *&v105[48];
  v67 = *v105;
  *v64 = v104;
  *(v64 + 1) = v67;
  v68 = (v56 + v59[24]);
  v69 = v79;
  v106 = v79;
  v70 = v78;
  LOBYTE(v107[0]) = v78;
  *(v107 + 1) = *v98;
  *(&v107[4] + 1) = *&v98[64];
  *(&v107[3] + 1) = *&v98[48];
  *(&v107[2] + 1) = *&v98[32];
  *(&v107[1] + 1) = *&v98[16];
  v71 = v107[0];
  *v68 = v79;
  v68[1] = v71;
  v72 = v107[1];
  v73 = v107[2];
  v74 = v107[3];
  *(v68 + 73) = *(&v107[3] + 9);
  v68[3] = v73;
  v68[4] = v74;
  v68[2] = v72;
  v75 = v56 + v59[28];
  *v75 = 0;
  v75[8] = 1;
  outlined init with copy of URL?(&v104, &v108, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA12_FrameLayoutVGMR);
  outlined init with copy of URL?(&v106, &v108, &_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextV_AA19_ConditionalContentVyA2GGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextV_AA19_ConditionalContentVyA2GGtGGMR);
  outlined destroy of URL?(v83, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA4ViewPAAE4boldyQrSbFQOyAEyAEyAA5ImageVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AA08_PaddingJ0VGAEyAgAEAHyQrSbFQOyAEyAEyAA6SpacerVALGASG_Qo_AWGGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA4ViewPAAE4boldyQrSbFQOyAEyAEyAA5ImageVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AA08_PaddingJ0VGAEyAgAEAHyQrSbFQOyAEyAEyAA6SpacerVALGASG_Qo_AWGGMR);
  v108 = v69;
  v109[0] = v70;
  *&v109[17] = *&v98[16];
  *&v109[33] = *&v98[32];
  *&v109[49] = *&v98[48];
  v110 = *&v98[64];
  *&v109[1] = *v98;
  outlined destroy of URL?(&v108, &_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextV_AA19_ConditionalContentVyA2GGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextV_AA19_ConditionalContentVyA2GGtGGMR);
  v111[0] = v63;
  v111[1] = v93;
  v111[2] = v65;
  v112 = v95;
  v113 = v96;
  v114 = v97;
  outlined destroy of URL?(v111, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA12_FrameLayoutVGMR);
  outlined destroy of URL?(v94, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA4ViewPAAE4boldyQrSbFQOyAEyAEyAA5ImageVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AA08_PaddingJ0VGAEyAgAEAHyQrSbFQOyAEyAEyAA6SpacerVALGASG_Qo_AWGGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA4ViewPAAE4boldyQrSbFQOyAEyAEyAA5ImageVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AA08_PaddingJ0VGAEyAgAEAHyQrSbFQOyAEyAEyAA6SpacerVALGASG_Qo_AWGGMR);
}

uint64_t closure #1 in closure #1 in closure #1 in ConflictButton.body.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v83 = a2;
  v3 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v75[2] = v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v78 = type metadata accessor for Calendar();
  *&v77 = *(v78 - 8);
  v6 = *(v77 + 64);
  MEMORY[0x28223BE20](v78);
  v76 = v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MainActor();
  v82 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = *(a1 + 24);
  *&v89 = *(a1 + 16);
  *(&v89 + 1) = v8;
  v9 = lazy protocol witness table accessor for type String and conformance String();

  v75[1] = v9;
  v10 = Text.init<A>(_:)();
  v12 = v11;
  v14 = v13;
  static Font.footnote.getter();
  v15 = Text.font(_:)();
  v17 = v16;
  v19 = v18;

  outlined consume of Text.Storage(v10, v12, v14 & 1);

  static Font.Weight.bold.getter();
  v80 = Text.fontWeight(_:)();
  v81 = v20;
  v22 = v21;
  v79 = v23;
  outlined consume of Text.Storage(v15, v17, v19 & 1);

  v24 = v76;
  static Calendar.current.getter();
  LODWORD(v12) = *(type metadata accessor for ConflictButton() + 24);
  v25 = Calendar.isDateInToday(_:)();
  (*(v77 + 8))(v24, v78);
  if (v25)
  {
    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v26._countAndFlagsBits = 0x7461207961646F54;
    v26._object = 0xE900000000000020;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v26);
    v27 = objc_opt_self();
    isa = Date._bridgeToObjectiveC()().super.isa;
    v29 = [v27 localizedStringFromDate:isa dateStyle:0 timeStyle:1];

    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    v33._countAndFlagsBits = v30;
    v33._object = v32;
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v33);

    v34._countAndFlagsBits = 0;
    v34._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v34);
    LocalizedStringKey.init(stringInterpolation:)();
    if (one-time initialization token for bundleForGameSave != -1)
    {
      swift_once();
    }

    v35 = static GameSaveSyncedDirectory.bundleForGameSave;
    v36 = Text.init(_:tableName:bundle:comment:)();
    v38 = v37;
    v40 = v39;
    static Font.caption.getter();
    v41 = Text.font(_:)();
    v43 = v42;
    v45 = v44;
    v47 = v46;

    outlined consume of Text.Storage(v36, v38, v40 & 1);

    v84 = v41;
    v85 = v43;
    v86 = v45 & 1;
    v87 = v47;
    v88 = 0;
  }

  else
  {
    v48 = objc_opt_self();
    v49 = Date._bridgeToObjectiveC()().super.isa;
    v50 = [v48 localizedStringFromDate:v49 dateStyle:2 timeStyle:1];

    v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v53 = v52;

    *&v89 = v51;
    *(&v89 + 1) = v53;
    v54 = Text.init<A>(_:)();
    v56 = v55;
    LOBYTE(v53) = v57;
    static Font.caption.getter();
    v58 = Text.font(_:)();
    v60 = v59;
    v62 = v61;
    v64 = v63;

    outlined consume of Text.Storage(v54, v56, v53 & 1);

    v84 = v58;
    v85 = v60;
    v86 = v62 & 1;
    v87 = v64;
    v88 = 1;
  }

  _ConditionalContent<>.init(storage:)();
  v65 = v89;
  v66 = v90;
  v67 = v91;
  v77 = v89;
  v78 = v90;
  v68 = v79 & 1;
  LOBYTE(v89) = v79 & 1;
  LOBYTE(v84) = v91;
  v69 = v83;
  v71 = v80;
  v70 = v81;
  *v83 = v80;
  v69[1] = v22;
  *(v69 + 16) = v68;
  v69[3] = v70;
  *(v69 + 2) = v65;
  *(v69 + 3) = v66;
  *(v69 + 64) = v67;
  outlined copy of Text.Storage(v71, v22, v68);

  v72 = v77;
  v73 = v78;
  outlined copy of _ConditionalContent<Text, Text>.Storage(v77, *(&v77 + 1), v78);
  outlined consume of _ConditionalContent<Text, Text>.Storage(v72, *(&v72 + 1), v73);
  outlined consume of Text.Storage(v71, v22, v68);
}

uint64_t protocol witness for View.body.getter in conformance ConflictButton(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyACyAA6HStackVyAA9TupleViewVyACyAA6SpacerVAA12_FrameLayoutVG_AA012_ConditionalD0VyACyAA0H0PAAE4boldyQrSbFQOyACyACyAA5ImageVAMGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AA08_PaddingK0VGACyArAEASyQrSbFQOyACyANA0_G_Qo_A4_GGAnCyACyAUA0_GAMGAA6VStackVyAIyAA4TextV_APyA15_A15_GtGGAKtGGAA01_d5ShapeR0VyAA9RectangleVGGGAMGAA016_ForegroundStyleR0VyAA012HierarchicalwZ0VGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyACyAA6HStackVyAA9TupleViewVyACyAA6SpacerVAA12_FrameLayoutVG_AA012_ConditionalD0VyACyAA0H0PAAE4boldyQrSbFQOyACyACyAA5ImageVAMGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AA08_PaddingK0VGACyArAEASyQrSbFQOyACyANA0_G_Qo_A4_GGAnCyACyAUA0_GAMGAA6VStackVyAIyAA4TextV_APyA15_A15_GtGGAKtGGAA01_d5ShapeR0VyAA9RectangleVGGGAMGAA016_ForegroundStyleR0VyAA012HierarchicalwZ0VGGMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v16[-v5];
  v7 = (v1 + *(a1 + 36));
  v8 = *v7;
  v9 = v7[1];
  v17 = v1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyAA6SpacerVAA12_FrameLayoutVG_AA012_ConditionalD0VyACyAA0G0PAAE4boldyQrSbFQOyACyACyAA5ImageVAKGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AA08_PaddingJ0VGACyApAEAQyQrSbFQOyACyAlZG_Qo_A2_GGAlCyACyAsZGAKGAA6VStackVyAGyAA4TextV_ANyA13_A13_GtGGAItGGAA01_d5ShapeQ0VyAA9RectangleVGGMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyAA6SpacerVAA12_FrameLayoutVG_AA012_ConditionalD0VyACyAA0G0PAAE4boldyQrSbFQOyACyACyAA5ImageVAKGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AA08_PaddingJ0VGACyApAEAQyQrSbFQOyACyAlZG_Qo_A2_GGAlCyACyAsZGAKGAA6VStackVyAGyAA4TextV_ANyA13_A13_GtGGAItGGAA01_d5ShapeQ0VyAA9RectangleVGGMR);
  lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, _ConditionalContent<ModifiedContent<<<opaque return type of View.bold(_:)>>.0, _PaddingLayout>, ModifiedContent<<<opaque return type of View.bold(_:)>>.0, _PaddingLayout>>, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, VStack<TupleView<(Text, _ConditionalContent<Text, Text>)>>, Spacer)>>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>();
  Button.init(action:label:)();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v10 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyACyAA6HStackVyAA9TupleViewVyACyAA6SpacerVAA12_FrameLayoutVG_AA012_ConditionalD0VyACyAA0H0PAAE4boldyQrSbFQOyACyACyAA5ImageVAMGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AA08_PaddingK0VGACyArAEASyQrSbFQOyACyANA0_G_Qo_A4_GGAnCyACyAUA0_GAMGAA6VStackVyAIyAA4TextV_APyA15_A15_GtGGAKtGGAA01_d5ShapeR0VyAA9RectangleVGGGAMGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyACyAA6HStackVyAA9TupleViewVyACyAA6SpacerVAA12_FrameLayoutVG_AA012_ConditionalD0VyACyAA0H0PAAE4boldyQrSbFQOyACyACyAA5ImageVAMGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AA08_PaddingK0VGACyArAEASyQrSbFQOyACyANA0_G_Qo_A4_GGAnCyACyAUA0_GAMGAA6VStackVyAIyAA4TextV_APyA15_A15_GtGGAKtGGAA01_d5ShapeR0VyAA9RectangleVGGGAMGMR) + 36)];
  v11 = v19;
  *v10 = v18;
  v10[1] = v11;
  v10[2] = v20;
  *&v6[*(v3 + 36)] = static HierarchicalShapeStyle.primary.getter();
  v12 = (v1 + *(a1 + 28));
  v13 = *v12;
  v14 = v12[1];
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, _ConditionalContent<ModifiedContent<<<opaque return type of View.bold(_:)>>.0, _PaddingLayout>, ModifiedContent<<<opaque return type of View.bold(_:)>>.0, _PaddingLayout>>, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, VStack<TupleView<(Text, _ConditionalContent<Text, Text>)>>, Spacer)>>, _ContentShapeModifier<Rectangle>>>, _FrameLayout>, _ForegroundStyleModifier<HierarchicalShapeStyle>> and conformance <> ModifiedContent<A, B>();
  View.accessibilityIdentifier(_:)();
  return outlined destroy of URL?(v6, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyACyAA6HStackVyAA9TupleViewVyACyAA6SpacerVAA12_FrameLayoutVG_AA012_ConditionalD0VyACyAA0H0PAAE4boldyQrSbFQOyACyACyAA5ImageVAMGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AA08_PaddingK0VGACyArAEASyQrSbFQOyACyANA0_G_Qo_A4_GGAnCyACyAUA0_GAMGAA6VStackVyAIyAA4TextV_APyA15_A15_GtGGAKtGGAA01_d5ShapeR0VyAA9RectangleVGGGAMGAA016_ForegroundStyleR0VyAA012HierarchicalwZ0VGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyACyAA6HStackVyAA9TupleViewVyACyAA6SpacerVAA12_FrameLayoutVG_AA012_ConditionalD0VyACyAA0H0PAAE4boldyQrSbFQOyACyACyAA5ImageVAMGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AA08_PaddingK0VGACyArAEASyQrSbFQOyACyANA0_G_Qo_A4_GGAnCyACyAUA0_GAMGAA6VStackVyAIyAA4TextV_APyA15_A15_GtGGAKtGGAA01_d5ShapeR0VyAA9RectangleVGGGAMGAA016_ForegroundStyleR0VyAA012HierarchicalwZ0VGGMR);
}

uint64_t ConflictScrollView.body.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = static HorizontalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA7ForEachVySay8GameSave0jK15SyncedDirectoryC7VersionCG10Foundation3URLVAA05TupleD0VyAA0D0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonS0Rd__lFQOyAJ08ConflictU0V_AA05PlainuS0VQo__AA7DividerVSgtGGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA7ForEachVySay8GameSave0jK15SyncedDirectoryC7VersionCG10Foundation3URLVAA05TupleD0VyAA0D0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonS0Rd__lFQOyAJ08ConflictU0V_AA05PlainuS0VQo__AA7DividerVSgtGGGMR) + 44);
  closure #1 in ConflictScrollView.body.getter(v1);
  v4 = static Alignment.center.getter();
  v6 = v5;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  static Color.gray.getter();
  v7 = Color.opacity(_:)();

  v8 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA7ForEachVySay8GameSave0hI15SyncedDirectoryC7VersionCG10Foundation3URLVAA9TupleViewVyAA0P0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonR0Rd__lFQOyAH08ConflictT0V_AA05PlaintR0VQo__AA7DividerVSgtGGGAA19_BackgroundModifierVyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA7ForEachVySay8GameSave0hI15SyncedDirectoryC7VersionCG10Foundation3URLVAA9TupleViewVyAA0P0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonR0Rd__lFQOyAH08ConflictT0V_AA05PlaintR0VQo__AA7DividerVSgtGGGAA19_BackgroundModifierVyAA5ColorVGGMR) + 36));
  *v8 = v7;
  v8[1] = v4;
  v8[2] = v6;
  v9 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA7ForEachVySay8GameSave0hI15SyncedDirectoryC7VersionCG10Foundation3URLVAA9TupleViewVyAA0P0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonR0Rd__lFQOyAH08ConflictT0V_AA05PlaintR0VQo__AA7DividerVSgtGGGAA19_BackgroundModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA7ForEachVySay8GameSave0hI15SyncedDirectoryC7VersionCG10Foundation3URLVAA9TupleViewVyAA0P0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonR0Rd__lFQOyAH08ConflictT0V_AA05PlaintR0VQo__AA7DividerVSgtGGGAA19_BackgroundModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGMR) + 36));
  v10 = *(type metadata accessor for RoundedRectangle() + 20);
  v11 = *MEMORY[0x277CE0118];
  v12 = type metadata accessor for RoundedCornerStyle();
  (*(*(v12 - 8) + 104))(&v9[v10], v11, v12);
  __asm { FMOV            V0.2D, #10.0 }

  *v9 = _Q0;
  *&v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11_ClipEffectVyAA16RoundedRectangleVGMd, &_s7SwiftUI11_ClipEffectVyAA16RoundedRectangleVGMR) + 36)] = 256;
  LOBYTE(v11) = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA7ForEachVySay8GameSave0hI15SyncedDirectoryC7VersionCG10Foundation3URLVAA9TupleViewVyAA0P0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonR0Rd__lFQOyAH08ConflictT0V_AA05PlaintR0VQo__AA7DividerVSgtGGGAA19_BackgroundModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA7ForEachVySay8GameSave0hI15SyncedDirectoryC7VersionCG10Foundation3URLVAA9TupleViewVyAA0P0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonR0Rd__lFQOyAH08ConflictT0V_AA05PlaintR0VQo__AA7DividerVSgtGGGAA19_BackgroundModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGAA14_PaddingLayoutVGMR);
  v27 = a1 + *(result + 36);
  *v27 = v11;
  *(v27 + 8) = v19;
  *(v27 + 16) = v21;
  *(v27 + 24) = v23;
  *(v27 + 32) = v25;
  *(v27 + 40) = 0;
  return result;
}

uint64_t closure #1 in ConflictScrollView.body.getter(uint64_t a1)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5[0] = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySay8GameSave0dE15SyncedDirectoryC7VersionCGGMd, &_s7SwiftUI5StateVySay8GameSave0dE15SyncedDirectoryC7VersionCGGMR);
  State.wrappedValue.getter();
  v2 = swift_allocObject();
  v3 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v3;
  *(v2 + 48) = *(a1 + 32);
  *(v2 + 64) = *(a1 + 48);
  outlined init with copy of ConflictScrollView(a1, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8GameSave0aB15SyncedDirectoryC7VersionCGMd, &_sSay8GameSave0aB15SyncedDirectoryC7VersionCGMR);
  type metadata accessor for URL();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA0D0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonF0Rd__lFQOy8GameSave08ConflictH0V_AA05PlainhF0VQo__AA7DividerVSgtGMd, &_s7SwiftUI9TupleViewVyAA0D0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonF0Rd__lFQOy8GameSave08ConflictH0V_AA05PlainhF0VQo__AA7DividerVSgtGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [GameSaveSyncedDirectory.Version] and conformance [A], &_sSay8GameSave0aB15SyncedDirectoryC7VersionCGMd, &_sSay8GameSave0aB15SyncedDirectoryC7VersionCGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type TupleView<(<<opaque return type of View.buttonStyle<A>(_:)>>.0, Divider?)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA0D0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonF0Rd__lFQOy8GameSave08ConflictH0V_AA05PlainhF0VQo__AA7DividerVSgtGMd, &_s7SwiftUI9TupleViewVyAA0D0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonF0Rd__lFQOy8GameSave08ConflictH0V_AA05PlainhF0VQo__AA7DividerVSgtGMR);
  lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type GameSaveSyncedDirectory.Version and conformance GameSaveSyncedDirectory.Version, type metadata accessor for GameSaveSyncedDirectory.Version);
  ForEach<>.init(_:content:)();
}

unint64_t closure #1 in closure #1 in ConflictScrollView.body.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v146 = a2;
  v129 = a3;
  v128 = type metadata accessor for Divider();
  v127 = *(v128 - 8);
  v4 = *(v127 + 64);
  MEMORY[0x28223BE20](v128);
  v119 = &v112 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v147 = v6;
  v148 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v112 = &v112 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSg_ADtMd, &_s10Foundation3URLVSg_ADtMR);
  v10 = *(*(v120 - 8) + 64);
  MEMORY[0x28223BE20](v120);
  v144 = &v112 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7DividerVSgMd, &_s7SwiftUI7DividerVSgMR);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v126 = &v112 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v125 = &v112 - v16;
  v17 = type metadata accessor for PlainButtonStyle();
  v140 = *(v17 - 8);
  v141 = v17;
  v18 = *(v140 + 64);
  MEMORY[0x28223BE20](v17);
  v139 = &v112 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = type metadata accessor for Date.ISO8601FormatStyle();
  v117 = *(v118 - 8);
  v20 = *(v117 + 64);
  MEMORY[0x28223BE20](v118);
  v116 = &v112 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v113 = &v112 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v142 = &v112 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v143 = &v112 - v29;
  MEMORY[0x28223BE20](v28);
  v132 = &v112 - v30;
  v31 = type metadata accessor for Date();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  v34 = MEMORY[0x28223BE20](v31);
  v115 = &v112 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v37 = &v112 - v36;
  v136 = type metadata accessor for ConflictButton();
  v38 = *(*(v136 - 8) + 64);
  MEMORY[0x28223BE20](v136);
  v40 = &v112 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOy8GameSave08ConflictG0V_AA05PlaingE0VQo_Md, &_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOy8GameSave08ConflictG0V_AA05PlaingE0VQo_MR);
  v123 = *(v124 - 8);
  v41 = *(v123 + 64);
  v42 = MEMORY[0x28223BE20](v124);
  v122 = &v112 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v145 = &v112 - v44;
  v45 = *a1;
  type metadata accessor for MainActor();
  v121 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v46 = *(v45 + OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_computerSymbol + 8);
  v133 = *(v45 + OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_computerSymbol);
  v47 = *(v45 + OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_localizedNameOfSavingComputer + 8);
  v130 = *(v45 + OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_localizedNameOfSavingComputer);
  v48 = OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_modifiedDate;
  v49 = *(v32 + 16);
  v135 = v37;
  v114 = v49;
  v49(v37, v45 + OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_modifiedDate, v31);
  v50 = v132;
  outlined init with copy of URL?(v45 + OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_localURL, v132, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v137 = *(v148 + 48);
  v138 = v148 + 48;
  v51 = v137(v50, 1, v147);
  v134 = v46;

  v131 = v47;

  outlined destroy of URL?(v50, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if (v51 == 1)
  {
    v52 = v115;
    v114(v115, v45 + v48, v31);
    v53 = v116;
    default argument 0 of Date.ISO8601Format(_:)(v116);
    v54 = Date.ISO8601Format(_:)();
    v132 = v55;
    (*(v117 + 8))(v53, v118);
    v56 = v32;
    v57 = v52;
    v58 = v31;
    (*(v32 + 8))(v57, v31);
  }

  else
  {
    v56 = v32;
    v58 = v31;
    v132 = 0xE500000000000000;
    v54 = 0x6C61636F6CLL;
  }

  v59 = v45;
  v60 = *(v146 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v61 = v150;
  v62 = v143;
  if (v150)
  {

    v63 = v59 == v61;
  }

  else
  {
    v63 = 0;
  }

  v64 = v58;
  v65 = swift_allocObject();
  v66 = v146;
  v67 = *(v146 + 16);
  *(v65 + 16) = *v146;
  *(v65 + 32) = v67;
  *(v65 + 48) = *(v66 + 32);
  *(v65 + 64) = *(v66 + 48);
  *(v65 + 72) = v59;
  v68 = v134;
  *v40 = v133;
  *(v40 + 1) = v68;
  v69 = v131;
  *(v40 + 2) = v130;
  *(v40 + 3) = v69;
  v70 = v136;
  (*(v56 + 32))(&v40[*(v136 + 24)], v135, v64);
  v71 = &v40[v70[7]];
  v72 = v132;
  *v71 = v54;
  v71[1] = v72;
  v40[v70[8]] = v63;
  v73 = &v40[v70[9]];
  *v73 = partial apply for closure #1 in closure #1 in closure #1 in ConflictScrollView.body.getter;
  v73[1] = v65;
  outlined init with copy of ConflictScrollView(v66, &v150);

  v74 = v139;
  PlainButtonStyle.init()();
  lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type ConflictButton and conformance ConflictButton, type metadata accessor for ConflictButton);
  lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type PlainButtonStyle and conformance PlainButtonStyle, MEMORY[0x277CDDB18]);
  v75 = v141;
  View.buttonStyle<A>(_:)();
  (*(v140 + 8))(v74, v75);
  outlined destroy of ConflictButton(v40);
  v76 = v62;
  GameSaveSyncedDirectory.Version.url.getter();
  v77 = v147;
  v78 = *(v148 + 56);
  v78(v62, 0, 1, v147);
  v150 = *(v66 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySay8GameSave0dE15SyncedDirectoryC7VersionCGGMd, &_s7SwiftUI5StateVySay8GameSave0dE15SyncedDirectoryC7VersionCGGMR);
  State.wrappedValue.getter();
  v79 = v149;
  if (v149 >> 62)
  {
    if (v149 < 0)
    {
      v111 = v149;
    }

    else
    {
      v111 = v149 & 0xFFFFFFFFFFFFFF8;
    }

    v80 = MEMORY[0x23EE6BAE0](v111);
  }

  else
  {
    v80 = *((v149 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v81 = v144;
  v82 = v142;
  v83 = v137;
  if (!v80)
  {

    v87 = 1;
LABEL_19:
    v78(v82, v87, 1, v77);
    v88 = *(v120 + 48);
    outlined init with copy of URL?(v76, v81, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    outlined init with copy of URL?(v82, v81 + v88, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    if (v83(v81, 1, v77) == 1)
    {
      outlined destroy of URL?(v82, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      outlined destroy of URL?(v76, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      if (v83(v81 + v88, 1, v77) == 1)
      {
        outlined destroy of URL?(v81, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        v89 = 1;
        v90 = v128;
        v91 = v127;
LABEL_28:
        v94 = v125;
        goto LABEL_29;
      }
    }

    else
    {
      v92 = v113;
      outlined init with copy of URL?(v81, v113, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      if (v83(v81 + v88, 1, v77) != 1)
      {
        v96 = v148;
        v97 = v81 + v88;
        v98 = v112;
        (*(v148 + 32))(v112, v97, v77);
        lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
        v99 = dispatch thunk of static Equatable.== infix(_:_:)();
        v100 = *(v96 + 8);
        v100(v98, v77);
        outlined destroy of URL?(v82, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        outlined destroy of URL?(v76, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        v100(v92, v77);
        outlined destroy of URL?(v81, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        v91 = v127;
        if (v99)
        {
          v89 = 1;
          v90 = v128;
          goto LABEL_28;
        }

LABEL_25:
        v93 = v119;
        Divider.init()();
        v94 = v125;
        v95 = v93;
        v90 = v128;
        (*(v91 + 32))(v125, v95, v128);
        v89 = 0;
LABEL_29:
        (*(v91 + 56))(v94, v89, 1, v90);
        v101 = v123;
        v102 = *(v123 + 16);
        v103 = v122;
        v104 = v145;
        v105 = v124;
        v102(v122, v145, v124);
        v106 = v94;
        v107 = v126;
        outlined init with copy of URL?(v94, v126, &_s7SwiftUI7DividerVSgMd, &_s7SwiftUI7DividerVSgMR);
        v108 = v129;
        v102(v129, v103, v105);
        v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOy8GameSave08ConflictG0V_AA05PlaingE0VQo__AA7DividerVSgtMd, &_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOy8GameSave08ConflictG0V_AA05PlaingE0VQo__AA7DividerVSgtMR);
        outlined init with copy of URL?(v107, &v108[*(v109 + 48)], &_s7SwiftUI7DividerVSgMd, &_s7SwiftUI7DividerVSgMR);
        outlined destroy of URL?(v106, &_s7SwiftUI7DividerVSgMd, &_s7SwiftUI7DividerVSgMR);
        v110 = *(v101 + 8);
        v110(v104, v105);
        outlined destroy of URL?(v107, &_s7SwiftUI7DividerVSgMd, &_s7SwiftUI7DividerVSgMR);
        v110(v103, v105);
      }

      outlined destroy of URL?(v82, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      outlined destroy of URL?(v76, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      (*(v148 + 8))(v92, v77);
    }

    outlined destroy of URL?(v81, &_s10Foundation3URLVSg_ADtMd, &_s10Foundation3URLVSg_ADtMR);
    v91 = v127;
    goto LABEL_25;
  }

  v84 = __OFSUB__(v80, 1);
  result = v80 - 1;
  if (v84)
  {
    __break(1u);
    goto LABEL_35;
  }

  if ((v79 & 0xC000000000000001) != 0)
  {
LABEL_35:
    MEMORY[0x23EE6BA40](result, v79);
    goto LABEL_17;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v86 = *(v79 + 8 * result + 32);

LABEL_17:

    GameSaveSyncedDirectory.Version.url.getter();

    v87 = 0;
    goto LABEL_19;
  }

  __break(1u);
  return result;
}

uint64_t default argument 0 of Date.ISO8601Format(_:)@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8TimeZoneVSgMd, &_s10Foundation8TimeZoneVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v35 = &v30 - v3;
  v34 = type metadata accessor for TimeZone();
  v4 = *(v34 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v34);
  v31 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for Date.ISO8601FormatStyle.TimeZoneSeparator();
  v7 = *(v33 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v33);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Date.ISO8601FormatStyle.TimeSeparator();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Date.ISO8601FormatStyle.DateTimeSeparator();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for Date.ISO8601FormatStyle.DateSeparator();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  (*(v24 + 104))(&v30 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CC9460]);
  v25 = v16;
  v26 = v34;
  (*(v17 + 104))(v20, *MEMORY[0x277CC9458], v25);
  v27 = v10;
  v28 = v35;
  (*(v12 + 104))(v15, *MEMORY[0x277CC9468], v11);
  (*(v7 + 104))(v27, *MEMORY[0x277CC9480], v33);
  TimeZone.init(secondsFromGMT:)();
  result = (*(v4 + 48))(v28, 1, v26);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v4 + 32))(v31, v28, v26);
    return Date.ISO8601FormatStyle.init(dateSeparator:dateTimeSeparator:timeSeparator:timeZoneSeparator:includingFractionalSeconds:timeZone:)();
  }

  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in ConflictScrollView.body.getter(id *a1, uint64_t a2)
{
  [a1[6] setEnabled_];
  v7 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v6 = a2;
  outlined init with copy of URL?(&v7, v5, &_s7SwiftUI14ObservedObjectVy8GameSave0eF15SyncedDirectoryC13StateObserverCGMd, &_s7SwiftUI14ObservedObjectVy8GameSave0eF15SyncedDirectoryC13StateObserverCGMR);

  return static Published.subscript.setter();
}

uint64_t protocol witness for View.body.getter in conformance ConflictScrollView@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = *(v1 + 6);
  return ConflictScrollView.body.getter(a1);
}

uint64_t protocol witness for View.body.getter in conformance SpinnerView@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for CircularProgressViewStyle();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI12ProgressViewVyAA05EmptyD0VAEGMd, &_s7SwiftUI12ProgressViewVyAA05EmptyD0VAEGMR);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v17 - v10;
  ProgressView<>.init<>()();
  static Color.gray.getter();
  CircularProgressViewStyle.init(tint:)();
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type ProgressView<EmptyView, EmptyView> and conformance ProgressView<A, B>, &_s7SwiftUI12ProgressViewVyAA05EmptyD0VAEGMd, &_s7SwiftUI12ProgressViewVyAA05EmptyD0VAEGMR);
  lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type CircularProgressViewStyle and conformance CircularProgressViewStyle, MEMORY[0x277CDE330]);
  View.progressViewStyle<A>(_:)();
  (*(v3 + 8))(v6, v2);
  (*(v8 + 8))(v11, v7);
  v12 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE08progressE5StyleyQrqd__AA08ProgresseG0Rd__lFQOyAA0hE0VyAA05EmptyE0VAKG_AA08CircularheG0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE08progressE5StyleyQrqd__AA08ProgresseG0Rd__lFQOyAA0hE0VyAA05EmptyE0VAKG_AA08CircularheG0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGMR) + 36));
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGMR) + 28);
  v14 = *MEMORY[0x277CDF420];
  v15 = type metadata accessor for ControlSize();
  (*(*(v15 - 8) + 104))(v12 + v13, v14, v15);
  result = swift_getKeyPath();
  *v12 = result;
  return result;
}

uint64_t sub_238977D60()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 48);

  v5 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t key path setter for EnvironmentValues.controlSize : EnvironmentValues, serialized(uint64_t a1)
{
  v2 = type metadata accessor for ControlSize();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1);
  return MEMORY[0x23EE6B200](v5);
}

uint64_t type metadata accessor for ConflictButton()
{
  result = type metadata singleton initialization cache for ConflictButton;
  if (!type metadata singleton initialization cache for ConflictButton)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_238977EE4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 48);

  v5 = *(v0 + 56);

  v6 = *(v0 + 72);

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t outlined destroy of ConflictButton(uint64_t a1)
{
  v2 = type metadata accessor for ConflictButton();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_238978044(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for Date();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_238978104(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

unint64_t type metadata completion function for ConflictButton()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ()();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t type metadata accessor for ()()
{
  result = lazy cache variable for type metadata for ();
  if (!lazy cache variable for type metadata for ())
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &lazy cache variable for type metadata for ());
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<VStack<ForEach<[GameSaveSyncedDirectory.Version], URL, TupleView<(<<opaque return type of View.buttonStyle<A>(_:)>>.0, Divider?)>>>, _BackgroundModifier<Color>>, _ClipEffect<RoundedRectangle>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<VStack<ForEach<[GameSaveSyncedDirectory.Version], URL, TupleView<(<<opaque return type of View.buttonStyle<A>(_:)>>.0, Divider?)>>>, _BackgroundModifier<Color>>, _ClipEffect<RoundedRectangle>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<VStack<ForEach<[GameSaveSyncedDirectory.Version], URL, TupleView<(<<opaque return type of View.buttonStyle<A>(_:)>>.0, Divider?)>>>, _BackgroundModifier<Color>>, _ClipEffect<RoundedRectangle>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA7ForEachVySay8GameSave0hI15SyncedDirectoryC7VersionCG10Foundation3URLVAA9TupleViewVyAA0P0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonR0Rd__lFQOyAH08ConflictT0V_AA05PlaintR0VQo__AA7DividerVSgtGGGAA19_BackgroundModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA7ForEachVySay8GameSave0hI15SyncedDirectoryC7VersionCG10Foundation3URLVAA9TupleViewVyAA0P0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonR0Rd__lFQOyAH08ConflictT0V_AA05PlaintR0VQo__AA7DividerVSgtGGGAA19_BackgroundModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGAA14_PaddingLayoutVGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<VStack<ForEach<[GameSaveSyncedDirectory.Version], URL, TupleView<(<<opaque return type of View.buttonStyle<A>(_:)>>.0, Divider?)>>>, _BackgroundModifier<Color>>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<VStack<ForEach<[GameSaveSyncedDirectory.Version], URL, TupleView<(<<opaque return type of View.buttonStyle<A>(_:)>>.0, Divider?)>>>, _BackgroundModifier<Color>>, _ClipEffect<RoundedRectangle>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<VStack<ForEach<[GameSaveSyncedDirectory.Version], URL, TupleView<(<<opaque return type of View.buttonStyle<A>(_:)>>.0, Divider?)>>>, _BackgroundModifier<Color>>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<ForEach<[GameSaveSyncedDirectory.Version], URL, TupleView<(<<opaque return type of View.buttonStyle<A>(_:)>>.0, Divider?)>>>, _BackgroundModifier<Color>>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<ForEach<[GameSaveSyncedDirectory.Version], URL, TupleView<(<<opaque return type of View.buttonStyle<A>(_:)>>.0, Divider?)>>>, _BackgroundModifier<Color>>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA7ForEachVySay8GameSave0hI15SyncedDirectoryC7VersionCG10Foundation3URLVAA9TupleViewVyAA0P0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonR0Rd__lFQOyAH08ConflictT0V_AA05PlaintR0VQo__AA7DividerVSgtGGGAA19_BackgroundModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA7ForEachVySay8GameSave0hI15SyncedDirectoryC7VersionCG10Foundation3URLVAA9TupleViewVyAA0P0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonR0Rd__lFQOyAH08ConflictT0V_AA05PlaintR0VQo__AA7DividerVSgtGGGAA19_BackgroundModifierVyAA5ColorVGGAA11_ClipEffectVyAA16RoundedRectangleVGGMR);
    lazy protocol witness table accessor for type ModifiedContent<VStack<ForEach<[GameSaveSyncedDirectory.Version], URL, TupleView<(<<opaque return type of View.buttonStyle<A>(_:)>>.0, Divider?)>>>, _BackgroundModifier<Color>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type _ClipEffect<RoundedRectangle> and conformance _ClipEffect<A>, &_s7SwiftUI11_ClipEffectVyAA16RoundedRectangleVGMd, &_s7SwiftUI11_ClipEffectVyAA16RoundedRectangleVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<ForEach<[GameSaveSyncedDirectory.Version], URL, TupleView<(<<opaque return type of View.buttonStyle<A>(_:)>>.0, Divider?)>>>, _BackgroundModifier<Color>>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<VStack<ForEach<[GameSaveSyncedDirectory.Version], URL, TupleView<(<<opaque return type of View.buttonStyle<A>(_:)>>.0, Divider?)>>>, _BackgroundModifier<Color>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<VStack<ForEach<[GameSaveSyncedDirectory.Version], URL, TupleView<(<<opaque return type of View.buttonStyle<A>(_:)>>.0, Divider?)>>>, _BackgroundModifier<Color>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<VStack<ForEach<[GameSaveSyncedDirectory.Version], URL, TupleView<(<<opaque return type of View.buttonStyle<A>(_:)>>.0, Divider?)>>>, _BackgroundModifier<Color>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA7ForEachVySay8GameSave0hI15SyncedDirectoryC7VersionCG10Foundation3URLVAA9TupleViewVyAA0P0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonR0Rd__lFQOyAH08ConflictT0V_AA05PlaintR0VQo__AA7DividerVSgtGGGAA19_BackgroundModifierVyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA7ForEachVySay8GameSave0hI15SyncedDirectoryC7VersionCG10Foundation3URLVAA9TupleViewVyAA0P0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonR0Rd__lFQOyAH08ConflictT0V_AA05PlaintR0VQo__AA7DividerVSgtGGGAA19_BackgroundModifierVyAA5ColorVGGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type VStack<ForEach<[GameSaveSyncedDirectory.Version], URL, TupleView<(<<opaque return type of View.buttonStyle<A>(_:)>>.0, Divider?)>>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA7ForEachVySay8GameSave0fG15SyncedDirectoryC7VersionCG10Foundation3URLVAA9TupleViewVyAA0N0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonP0Rd__lFQOyAF08ConflictR0V_AA05PlainrP0VQo__AA7DividerVSgtGGGMd, &_s7SwiftUI6VStackVyAA7ForEachVySay8GameSave0fG15SyncedDirectoryC7VersionCG10Foundation3URLVAA9TupleViewVyAA0N0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonP0Rd__lFQOyAF08ConflictR0V_AA05PlainrP0VQo__AA7DividerVSgtGGGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type _BackgroundModifier<Color> and conformance _BackgroundModifier<A>, &_s7SwiftUI19_BackgroundModifierVyAA5ColorVGMd, &_s7SwiftUI19_BackgroundModifierVyAA5ColorVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<VStack<ForEach<[GameSaveSyncedDirectory.Version], URL, TupleView<(<<opaque return type of View.buttonStyle<A>(_:)>>.0, Divider?)>>>, _BackgroundModifier<Color>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE08progressE5StyleyQrqd__AA08ProgresseG0Rd__lFQOyAA0hE0VyAA05EmptyE0VAKG_AA08CircularheG0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE08progressE5StyleyQrqd__AA08ProgresseG0Rd__lFQOyAA0hE0VyAA05EmptyE0VAKG_AA08CircularheG0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI12ProgressViewVyAA05EmptyD0VAEGMd, &_s7SwiftUI12ProgressViewVyAA05EmptyD0VAEGMR);
    type metadata accessor for CircularProgressViewStyle();
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type ProgressView<EmptyView, EmptyView> and conformance ProgressView<A, B>, &_s7SwiftUI12ProgressViewVyAA05EmptyD0VAEGMd, &_s7SwiftUI12ProgressViewVyAA05EmptyD0VAEGMR);
    lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type CircularProgressViewStyle and conformance CircularProgressViewStyle, MEMORY[0x277CDE330]);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ControlSize> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, _ConditionalContent<ModifiedContent<<<opaque return type of View.bold(_:)>>.0, _PaddingLayout>, ModifiedContent<<<opaque return type of View.bold(_:)>>.0, _PaddingLayout>>, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, VStack<TupleView<(Text, _ConditionalContent<Text, Text>)>>, Spacer)>>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, _ConditionalContent<ModifiedContent<<<opaque return type of View.bold(_:)>>.0, _PaddingLayout>, ModifiedContent<<<opaque return type of View.bold(_:)>>.0, _PaddingLayout>>, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, VStack<TupleView<(Text, _ConditionalContent<Text, Text>)>>, Spacer)>>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, _ConditionalContent<ModifiedContent<<<opaque return type of View.bold(_:)>>.0, _PaddingLayout>, ModifiedContent<<<opaque return type of View.bold(_:)>>.0, _PaddingLayout>>, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, VStack<TupleView<(Text, _ConditionalContent<Text, Text>)>>, Spacer)>>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyAA6SpacerVAA12_FrameLayoutVG_AA012_ConditionalD0VyACyAA0G0PAAE4boldyQrSbFQOyACyACyAA5ImageVAKGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AA08_PaddingJ0VGACyApAEAQyQrSbFQOyACyAlZG_Qo_A2_GGAlCyACyAsZGAKGAA6VStackVyAGyAA4TextV_ANyA13_A13_GtGGAItGGAA01_d5ShapeQ0VyAA9RectangleVGGMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyAA6SpacerVAA12_FrameLayoutVG_AA012_ConditionalD0VyACyAA0G0PAAE4boldyQrSbFQOyACyACyAA5ImageVAKGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AA08_PaddingJ0VGACyApAEAQyQrSbFQOyACyAlZG_Qo_A2_GGAlCyACyAsZGAKGAA6VStackVyAGyAA4TextV_ANyA13_A13_GtGGAItGGAA01_d5ShapeQ0VyAA9RectangleVGGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, _ConditionalContent<ModifiedContent<<<opaque return type of View.bold(_:)>>.0, _PaddingLayout>, ModifiedContent<<<opaque return type of View.bold(_:)>>.0, _PaddingLayout>>, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, VStack<TupleView<(Text, _ConditionalContent<Text, Text>)>>, Spacer)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVG_AA012_ConditionalG0VyAGyAA0E0PAAE4boldyQrSbFQOyAGyAGyAA5ImageVAKGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AA08_PaddingJ0VGAGyApAEAQyQrSbFQOyAGyAlZG_Qo_A2_GGAlGyAGyAsZGAKGAA6VStackVyAEyAA4TextV_ANyA13_A13_GtGGAItGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVG_AA012_ConditionalG0VyAGyAA0E0PAAE4boldyQrSbFQOyAGyAGyAA5ImageVAKGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AA08_PaddingJ0VGAGyApAEAQyQrSbFQOyAGyAlZG_Qo_A2_GGAlGyAGyAsZGAKGAA6VStackVyAEyAA4TextV_ANyA13_A13_GtGGAItGGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type _ContentShapeModifier<Rectangle> and conformance _ContentShapeModifier<A>, &_s7SwiftUI21_ContentShapeModifierVyAA9RectangleVGMd, &_s7SwiftUI21_ContentShapeModifierVyAA9RectangleVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, _ConditionalContent<ModifiedContent<<<opaque return type of View.bold(_:)>>.0, _PaddingLayout>, ModifiedContent<<<opaque return type of View.bold(_:)>>.0, _PaddingLayout>>, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, VStack<TupleView<(Text, _ConditionalContent<Text, Text>)>>, Spacer)>>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, _ConditionalContent<ModifiedContent<<<opaque return type of View.bold(_:)>>.0, _PaddingLayout>, ModifiedContent<<<opaque return type of View.bold(_:)>>.0, _PaddingLayout>>, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, VStack<TupleView<(Text, _ConditionalContent<Text, Text>)>>, Spacer)>>, _ContentShapeModifier<Rectangle>>>, _FrameLayout>, _ForegroundStyleModifier<HierarchicalShapeStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, _ConditionalContent<ModifiedContent<<<opaque return type of View.bold(_:)>>.0, _PaddingLayout>, ModifiedContent<<<opaque return type of View.bold(_:)>>.0, _PaddingLayout>>, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, VStack<TupleView<(Text, _ConditionalContent<Text, Text>)>>, Spacer)>>, _ContentShapeModifier<Rectangle>>>, _FrameLayout>, _ForegroundStyleModifier<HierarchicalShapeStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, _ConditionalContent<ModifiedContent<<<opaque return type of View.bold(_:)>>.0, _PaddingLayout>, ModifiedContent<<<opaque return type of View.bold(_:)>>.0, _PaddingLayout>>, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, VStack<TupleView<(Text, _ConditionalContent<Text, Text>)>>, Spacer)>>, _ContentShapeModifier<Rectangle>>>, _FrameLayout>, _ForegroundStyleModifier<HierarchicalShapeStyle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyACyAA6HStackVyAA9TupleViewVyACyAA6SpacerVAA12_FrameLayoutVG_AA012_ConditionalD0VyACyAA0H0PAAE4boldyQrSbFQOyACyACyAA5ImageVAMGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AA08_PaddingK0VGACyArAEASyQrSbFQOyACyANA0_G_Qo_A4_GGAnCyACyAUA0_GAMGAA6VStackVyAIyAA4TextV_APyA15_A15_GtGGAKtGGAA01_d5ShapeR0VyAA9RectangleVGGGAMGAA016_ForegroundStyleR0VyAA012HierarchicalwZ0VGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyACyAA6HStackVyAA9TupleViewVyACyAA6SpacerVAA12_FrameLayoutVG_AA012_ConditionalD0VyACyAA0H0PAAE4boldyQrSbFQOyACyACyAA5ImageVAMGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AA08_PaddingK0VGACyArAEASyQrSbFQOyACyANA0_G_Qo_A4_GGAnCyACyAUA0_GAMGAA6VStackVyAIyAA4TextV_APyA15_A15_GtGGAKtGGAA01_d5ShapeR0VyAA9RectangleVGGGAMGAA016_ForegroundStyleR0VyAA012HierarchicalwZ0VGGMR);
    lazy protocol witness table accessor for type ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, _ConditionalContent<ModifiedContent<<<opaque return type of View.bold(_:)>>.0, _PaddingLayout>, ModifiedContent<<<opaque return type of View.bold(_:)>>.0, _PaddingLayout>>, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, VStack<TupleView<(Text, _ConditionalContent<Text, Text>)>>, Spacer)>>, _ContentShapeModifier<Rectangle>>>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type _ForegroundStyleModifier<HierarchicalShapeStyle> and conformance _ForegroundStyleModifier<A>, &_s7SwiftUI24_ForegroundStyleModifierVyAA017HierarchicalShapeD0VGMd, &_s7SwiftUI24_ForegroundStyleModifierVyAA017HierarchicalShapeD0VGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, _ConditionalContent<ModifiedContent<<<opaque return type of View.bold(_:)>>.0, _PaddingLayout>, ModifiedContent<<<opaque return type of View.bold(_:)>>.0, _PaddingLayout>>, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, VStack<TupleView<(Text, _ConditionalContent<Text, Text>)>>, Spacer)>>, _ContentShapeModifier<Rectangle>>>, _FrameLayout>, _ForegroundStyleModifier<HierarchicalShapeStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, _ConditionalContent<ModifiedContent<<<opaque return type of View.bold(_:)>>.0, _PaddingLayout>, ModifiedContent<<<opaque return type of View.bold(_:)>>.0, _PaddingLayout>>, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, VStack<TupleView<(Text, _ConditionalContent<Text, Text>)>>, Spacer)>>, _ContentShapeModifier<Rectangle>>>, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, _ConditionalContent<ModifiedContent<<<opaque return type of View.bold(_:)>>.0, _PaddingLayout>, ModifiedContent<<<opaque return type of View.bold(_:)>>.0, _PaddingLayout>>, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, VStack<TupleView<(Text, _ConditionalContent<Text, Text>)>>, Spacer)>>, _ContentShapeModifier<Rectangle>>>, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, _ConditionalContent<ModifiedContent<<<opaque return type of View.bold(_:)>>.0, _PaddingLayout>, ModifiedContent<<<opaque return type of View.bold(_:)>>.0, _PaddingLayout>>, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, VStack<TupleView<(Text, _ConditionalContent<Text, Text>)>>, Spacer)>>, _ContentShapeModifier<Rectangle>>>, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyACyAA6HStackVyAA9TupleViewVyACyAA6SpacerVAA12_FrameLayoutVG_AA012_ConditionalD0VyACyAA0H0PAAE4boldyQrSbFQOyACyACyAA5ImageVAMGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AA08_PaddingK0VGACyArAEASyQrSbFQOyACyANA0_G_Qo_A4_GGAnCyACyAUA0_GAMGAA6VStackVyAIyAA4TextV_APyA15_A15_GtGGAKtGGAA01_d5ShapeR0VyAA9RectangleVGGGAMGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyACyAA6HStackVyAA9TupleViewVyACyAA6SpacerVAA12_FrameLayoutVG_AA012_ConditionalD0VyACyAA0H0PAAE4boldyQrSbFQOyACyACyAA5ImageVAMGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AA08_PaddingK0VGACyArAEASyQrSbFQOyACyANA0_G_Qo_A4_GGAnCyACyAUA0_GAMGAA6VStackVyAIyAA4TextV_APyA15_A15_GtGGAKtGGAA01_d5ShapeR0VyAA9RectangleVGGGAMGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Button<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, _ConditionalContent<ModifiedContent<<<opaque return type of View.bold(_:)>>.0, _PaddingLayout>, ModifiedContent<<<opaque return type of View.bold(_:)>>.0, _PaddingLayout>>, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, VStack<TupleView<(Text, _ConditionalContent<Text, Text>)>>, Spacer)>>, _ContentShapeModifier<Rectangle>>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA6HStackVyAA9TupleViewVyAEyAA6SpacerVAA12_FrameLayoutVG_AA012_ConditionalE0VyAEyAA0H0PAAE4boldyQrSbFQOyAEyAEyAA5ImageVAMGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AA08_PaddingK0VGAEyArAEASyQrSbFQOyAEyANA0_G_Qo_A4_GGAnEyAEyAUA0_GAMGAA6VStackVyAIyAA4TextV_APyA15_A15_GtGGAKtGGAA01_e5ShapeR0VyAA9RectangleVGGGMd, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA6HStackVyAA9TupleViewVyAEyAA6SpacerVAA12_FrameLayoutVG_AA012_ConditionalE0VyAEyAA0H0PAAE4boldyQrSbFQOyAEyAEyAA5ImageVAMGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AA08_PaddingK0VGAEyArAEASyQrSbFQOyAEyANA0_G_Qo_A4_GGAnEyAEyAUA0_GAMGAA6VStackVyAIyAA4TextV_APyA15_A15_GtGGAKtGGAA01_e5ShapeR0VyAA9RectangleVGGGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, _ConditionalContent<ModifiedContent<<<opaque return type of View.bold(_:)>>.0, _PaddingLayout>, ModifiedContent<<<opaque return type of View.bold(_:)>>.0, _PaddingLayout>>, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, VStack<TupleView<(Text, _ConditionalContent<Text, Text>)>>, Spacer)>>, _ContentShapeModifier<Rectangle>>>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t sub_2389788BC@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

uint64_t sub_2389788E8(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.font.setter();
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Spacer, _FrameLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Spacer, _FrameLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Spacer, _FrameLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6SpacerVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6SpacerVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMR);
    lazy protocol witness table accessor for type ModifiedContent<Spacer, _FrameLayout> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<Spacer, _FrameLayout> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Spacer, _FrameLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.bold(_:)>>.0, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.bold(_:)>>.0, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.bold(_:)>>.0, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE4boldyQrSbFQOyACyACyAA5ImageVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AA08_PaddingI0VGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE4boldyQrSbFQOyACyACyAA5ImageVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AA08_PaddingI0VGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _FrameLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.bold(_:)>>.0, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.bold(_:)>>.0, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.bold(_:)>>.0, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE4boldyQrSbFQOyACyACyAA6SpacerVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AA08_PaddingI0VGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE4boldyQrSbFQOyACyACyAA6SpacerVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AA08_PaddingI0VGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6SpacerVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6SpacerVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Spacer, _FrameLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.bold(_:)>>.0, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _FrameLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _FrameLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _FrameLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMR);
    lazy protocol witness table accessor for type ModifiedContent<Spacer, _FrameLayout> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<Image, _FrameLayout> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA12_FrameLayoutVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _FrameLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<Spacer, _FrameLayout> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t lazy protocol witness table accessor for type String and conformance String()
{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

uint64_t outlined consume of Text.Storage(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t outlined copy of Text.Storage(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t outlined copy of _ConditionalContent<Text, Text>.Storage(uint64_t a1, uint64_t a2, char a3)
{
  outlined copy of Text.Storage(a1, a2, a3 & 1);
}

uint64_t outlined consume of _ConditionalContent<Text, Text>.Storage(uint64_t a1, uint64_t a2, char a3)
{
  outlined consume of Text.Storage(a1, a2, a3 & 1);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, _ConditionalContent<ModifiedContent<<<opaque return type of View.bold(_:)>>.0, _PaddingLayout>, ModifiedContent<<<opaque return type of View.bold(_:)>>.0, _PaddingLayout>>, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, VStack<TupleView<(Text, _ConditionalContent<Text, Text>)>>, Spacer)>>, _ContentShapeModifier<Rectangle>>>, _FrameLayout>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, _ConditionalContent<ModifiedContent<<<opaque return type of View.bold(_:)>>.0, _PaddingLayout>, ModifiedContent<<<opaque return type of View.bold(_:)>>.0, _PaddingLayout>>, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, VStack<TupleView<(Text, _ConditionalContent<Text, Text>)>>, Spacer)>>, _ContentShapeModifier<Rectangle>>>, _FrameLayout>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, _ConditionalContent<ModifiedContent<<<opaque return type of View.bold(_:)>>.0, _PaddingLayout>, ModifiedContent<<<opaque return type of View.bold(_:)>>.0, _PaddingLayout>>, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, VStack<TupleView<(Text, _ConditionalContent<Text, Text>)>>, Spacer)>>, _ContentShapeModifier<Rectangle>>>, _FrameLayout>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6ButtonVyACyAA6HStackVyAA9TupleViewVyACyAA6SpacerVAA12_FrameLayoutVG_AA012_ConditionalD0VyACyAA0H0PAAE4boldyQrSbFQOyACyACyAA5ImageVAMGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AA08_PaddingK0VGACyArAEASyQrSbFQOyACyANA0_G_Qo_A4_GGAnCyACyAUA0_GAMGAA6VStackVyAIyAA4TextV_APyA15_A15_GtGGAKtGGAA01_d5ShapeR0VyAA9RectangleVGGGAMGAA016_ForegroundStyleR0VyAA012HierarchicalwZ0VGGAA023AccessibilityAttachmentR0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6ButtonVyACyAA6HStackVyAA9TupleViewVyACyAA6SpacerVAA12_FrameLayoutVG_AA012_ConditionalD0VyACyAA0H0PAAE4boldyQrSbFQOyACyACyAA5ImageVAMGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_AA08_PaddingK0VGACyArAEASyQrSbFQOyACyANA0_G_Qo_A4_GGAnCyACyAUA0_GAMGAA6VStackVyAIyAA4TextV_APyA15_A15_GtGGAKtGGAA01_d5ShapeR0VyAA9RectangleVGGGAMGAA016_ForegroundStyleR0VyAA012HierarchicalwZ0VGGAA023AccessibilityAttachmentR0VGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, _ConditionalContent<ModifiedContent<<<opaque return type of View.bold(_:)>>.0, _PaddingLayout>, ModifiedContent<<<opaque return type of View.bold(_:)>>.0, _PaddingLayout>>, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, VStack<TupleView<(Text, _ConditionalContent<Text, Text>)>>, Spacer)>>, _ContentShapeModifier<Rectangle>>>, _FrameLayout>, _ForegroundStyleModifier<HierarchicalShapeStyle>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, _ConditionalContent<ModifiedContent<<<opaque return type of View.bold(_:)>>.0, _PaddingLayout>, ModifiedContent<<<opaque return type of View.bold(_:)>>.0, _PaddingLayout>>, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, VStack<TupleView<(Text, _ConditionalContent<Text, Text>)>>, Spacer)>>, _ContentShapeModifier<Rectangle>>>, _FrameLayout>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t closure #1 in BundleUpdatesWaiter.updateStream.getter(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC8GameSave19BundleUpdatesWaiter_updateStreamContinuation;
  outlined destroy of URL?(a2 + OBJC_IVAR____TtC8GameSave19BundleUpdatesWaiter_updateStreamContinuation, &_sScS12ContinuationVySo14NSMetadataItemC_GSgMd, &_sScS12ContinuationVySo14NSMetadataItemC_GSgMR);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySo14NSMetadataItemC_GMd, &_sScS12ContinuationVySo14NSMetadataItemC_GMR);
  v8 = *(v5 - 8);
  (*(v8 + 16))(a2 + v4, a1, v5);
  v6 = *(v8 + 56);

  return v6(a2 + v4, 0, 1, v5);
}

Swift::Void __swiftcall BundleUpdatesWaiter.initMetadataQuery()()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = v3[8];
  MEMORY[0x28223BE20](v2);
  v6 = v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for common != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.common);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  v10 = &OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__continuation;
  if (os_log_type_enabled(v8, v9))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v57 = v12;
    *v11 = 136315138;
    v58 = v3[2];
    v59 = v12;
    v13 = (v3 + 2) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v58(v6, v1 + OBJC_IVAR____TtC8GameSave19BundleUpdatesWaiter_bundleURL, v2);
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v1;
    v16 = v2;
    v17 = v3;
    v19 = v18;
    (v17[1])(v6, v16);
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v19, &v59);
    v3 = v17;
    v2 = v16;
    v1 = v15;

    *(v11 + 4) = v20;
    v10 = &OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__continuation;
    _os_log_impl(&dword_238952000, v8, v9, "Initializing metadata query for %s", v11, 0xCu);
    v21 = v57;
    __swift_destroy_boxed_opaque_existential_0(v57);
    MEMORY[0x23EE6C260](v21, -1, -1);
    MEMORY[0x23EE6C260](v11, -1, -1);
  }

  else
  {

    v58 = v3[2];
    v13 = (v3 + 2) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  }

  v56 = v10[173];
  v58(v6, v1 + v56, v2);
  URL._bridgeToObjectiveC()(v22);
  v24 = v23;
  v57 = v3[1];
  (v57)(v6, v2);
  v25 = [v24 br_containerID];

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

  v29 = [objc_allocWithZone(MEMORY[0x277CCAB28]) init];
  v30 = *(v1 + OBJC_IVAR____TtC8GameSave19BundleUpdatesWaiter_metadataQuery);
  *(v1 + OBJC_IVAR____TtC8GameSave19BundleUpdatesWaiter_metadataQuery) = v29;
  v31 = v29;

  if (v31)
  {
    if (v28)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_2389886B0;
      v33 = MEMORY[0x277D837D0];
      *(v32 + 56) = MEMORY[0x277D837D0];
      *(v32 + 32) = v26;
      *(v32 + 40) = v28;
      v34 = *MEMORY[0x277CCA4F8];
      v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(v32 + 88) = v33;
      *(v32 + 64) = v35;
      *(v32 + 72) = v36;
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v31 setSearchScopes_];

      v38 = type metadata accessor for UIAlertController(0, &lazy cache variable for type metadata for NSPredicate, 0x277CCAC30);
      v55[2] = "itemGatheredWithUploadingStatus";
      v55[3] = v38;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v39 = swift_allocObject();
      *(v39 + 16) = xmmword_2389886C0;
      v40 = *MEMORY[0x277CCA4B8];
      v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v55[1] = v13;
      v43 = v42;
      *(v39 + 56) = v33;
      v44 = lazy protocol witness table accessor for type String and conformance String();
      *(v39 + 32) = v41;
      *(v39 + 40) = v43;
      *(v39 + 96) = v33;
      *(v39 + 104) = v44;
      *(v39 + 64) = v44;
      *(v39 + 72) = 0xD000000000000019;
      *(v39 + 80) = 0x800000023898CAA0;
      v45 = *MEMORY[0x277CCA4D0];
      v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(v39 + 136) = v33;
      *(v39 + 144) = v44;
      *(v39 + 112) = v46;
      *(v39 + 120) = v47;
      v58(v6, v1 + v56, v2);
      v48 = URL.lastPathComponent.getter();
      v50 = v49;
      (v57)(v6, v2);
      *(v39 + 176) = v33;
      *(v39 + 184) = v44;
      *(v39 + 152) = v48;
      *(v39 + 160) = v50;
      v51 = NSPredicate.init(format:_:)();
      [v31 setPredicate_];

      [v31 setOperationQueue_];
      v52 = objc_opt_self();
      v53 = [v52 defaultCenter];
      [v53 addObserver:v1 selector:sel_finishedGatheringWithNotification_ name:*MEMORY[0x277CCA4E8] object:v31];

      v54 = [v52 defaultCenter];
      [v54 addObserver:v1 selector:sel_receivedUpdatesWithNotification_ name:*MEMORY[0x277CCA4F0] object:v31];

      [v31 startQuery];
    }
  }

  else
  {
  }
}

uint64_t BundleUpdatesWaiter.init(bundleURL:)(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC8GameSave19BundleUpdatesWaiter_metadataQuery) = 0;
  *(v1 + OBJC_IVAR____TtC8GameSave19BundleUpdatesWaiter_finishedGathering) = 0;
  v3 = OBJC_IVAR____TtC8GameSave19BundleUpdatesWaiter_finishedGatheringContinuation;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5NeverOGMd, &_sScCySbs5NeverOGMR);
  (*(*(v4 - 8) + 56))(v1 + v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtC8GameSave19BundleUpdatesWaiter_lock;
  *(v1 + v5) = [objc_allocWithZone(MEMORY[0x277CCAC60]) init];
  v6 = OBJC_IVAR____TtC8GameSave19BundleUpdatesWaiter_updateStreamContinuation;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySo14NSMetadataItemC_GMd, &_sScS12ContinuationVySo14NSMetadataItemC_GMR);
  (*(*(v7 - 8) + 56))(v1 + v6, 1, 1, v7);
  *(v1 + OBJC_IVAR____TtC8GameSave19BundleUpdatesWaiter_itemGatheredWithUploadingStatus) = 0;
  v8 = OBJC_IVAR____TtC8GameSave19BundleUpdatesWaiter_bundleURL;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v1 + v8, a1, v9);
  v11 = [objc_allocWithZone(MEMORY[0x277CCABD8]) init];
  v12 = OBJC_IVAR____TtC8GameSave19BundleUpdatesWaiter_queue;
  *(v1 + OBJC_IVAR____TtC8GameSave19BundleUpdatesWaiter_queue) = v11;
  v13 = v11;
  v14 = MEMORY[0x23EE6B6E0](0xD000000000000028, 0x800000023898CAC0);
  [v13 setName_];

  [*(v1 + v12) setMaxConcurrentOperationCount_];
  BundleUpdatesWaiter.initMetadataQuery()();
  (*(v10 + 8))(a1, v9);
  return v1;
}

void closure #1 in BundleUpdatesWaiter.invalidate()(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySo14NSMetadataItemC_GMd, &_sScS12ContinuationVySo14NSMetadataItemC_GMR);
  v39 = *(v2 - 8);
  v3 = *(v39 + 64);
  MEMORY[0x28223BE20](v2);
  v36 = &v33 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySo14NSMetadataItemC_GSgMd, &_sScS12ContinuationVySo14NSMetadataItemC_GSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v33 - v7;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + OBJC_IVAR____TtC8GameSave19BundleUpdatesWaiter_metadataQuery);
  if (v14)
  {
    v38 = OBJC_IVAR____TtC8GameSave19BundleUpdatesWaiter_metadataQuery;
    v15 = one-time initialization token for common;
    v37 = v14;
    if (v15 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Logger.common);

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v35 = v2;
      v20 = v19;
      v33 = v19;
      v34 = swift_slowAlloc();
      v40 = v34;
      *v20 = 136315138;
      v21 = v10;
      (*(v10 + 16))(v13, a1 + OBJC_IVAR____TtC8GameSave19BundleUpdatesWaiter_bundleURL, v9);
      lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
      v22 = dispatch thunk of CustomStringConvertible.description.getter();
      v24 = v23;
      (*(v21 + 8))(v13, v9);
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, &v40);

      v26 = v33;
      *(v33 + 4) = v25;
      v27 = v26;
      _os_log_impl(&dword_238952000, v17, v18, "Stopping metadata query for %s", v26, 0xCu);
      v28 = v34;
      __swift_destroy_boxed_opaque_existential_0(v34);
      MEMORY[0x23EE6C260](v28, -1, -1);
      v2 = v35;
      MEMORY[0x23EE6C260](v27, -1, -1);
    }

    outlined init with copy of URL?(a1 + OBJC_IVAR____TtC8GameSave19BundleUpdatesWaiter_updateStreamContinuation, v8, &_sScS12ContinuationVySo14NSMetadataItemC_GSgMd, &_sScS12ContinuationVySo14NSMetadataItemC_GSgMR);
    if ((*(v39 + 48))(v8, 1, v2))
    {
      outlined destroy of URL?(v8, &_sScS12ContinuationVySo14NSMetadataItemC_GSgMd, &_sScS12ContinuationVySo14NSMetadataItemC_GSgMR);
    }

    else
    {
      v29 = v39;
      v30 = v36;
      (*(v39 + 16))(v36, v8, v2);
      outlined destroy of URL?(v8, &_sScS12ContinuationVySo14NSMetadataItemC_GSgMd, &_sScS12ContinuationVySo14NSMetadataItemC_GSgMR);
      AsyncStream.Continuation.finish()();
      (*(v29 + 8))(v30, v2);
    }

    v31 = v37;
    [v37 stopQuery];

    v32 = *(a1 + v38);
    *(a1 + v38) = 0;
  }
}

uint64_t BundleUpdatesWaiter.deinit()
{
  v1 = OBJC_IVAR____TtC8GameSave19BundleUpdatesWaiter_lock;
  v2 = *(v0 + OBJC_IVAR____TtC8GameSave19BundleUpdatesWaiter_lock);
  [v2 lock];
  closure #1 in BundleUpdatesWaiter.invalidate()(v0);
  [v2 unlock];

  v3 = OBJC_IVAR____TtC8GameSave19BundleUpdatesWaiter_bundleURL;
  v4 = type metadata accessor for URL();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  outlined destroy of URL?(v0 + OBJC_IVAR____TtC8GameSave19BundleUpdatesWaiter_finishedGatheringContinuation, &_sScCySbs5NeverOGSgMd, &_sScCySbs5NeverOGSgMR);
  outlined destroy of URL?(v0 + OBJC_IVAR____TtC8GameSave19BundleUpdatesWaiter_updateStreamContinuation, &_sScS12ContinuationVySo14NSMetadataItemC_GSgMd, &_sScS12ContinuationVySo14NSMetadataItemC_GSgMR);
  return v0;
}

uint64_t BundleUpdatesWaiter.__deallocating_deinit()
{
  BundleUpdatesWaiter.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for BundleUpdatesWaiter()
{
  result = type metadata singleton initialization cache for BundleUpdatesWaiter;
  if (!type metadata singleton initialization cache for BundleUpdatesWaiter)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t BundleUpdatesWaiter.isItemUploading(item:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_2389886B0;
  v10 = *MEMORY[0x277CCA538];
  *(v9 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v9 + 40) = v11;
  v12 = *MEMORY[0x277CCA548];
  *(v9 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v9 + 56) = v13;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v15 = [a1 valuesForAttributes_];

  if (!v15)
  {
    return 0;
  }

  v74 = v8;
  v75 = v5;
  v16 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (one-time initialization token for common != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static Logger.common);

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v73 = v2;
    v21 = v20;
    v22 = swift_slowAlloc();
    v72 = v12;
    v23 = v4;
    v24 = v22;
    v77[0] = v22;
    *v21 = 136315138;
    v25 = Dictionary.description.getter();
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, v77);

    *(v21 + 4) = v27;
    _os_log_impl(&dword_238952000, v18, v19, "Item values: %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v24);
    v28 = v24;
    v4 = v23;
    MEMORY[0x23EE6C260](v28, -1, -1);
    v29 = v21;
    v2 = v73;
    MEMORY[0x23EE6C260](v29, -1, -1);
  }

  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v16 + 16))
  {

    goto LABEL_13;
  }

  v32 = specialized __RawDictionaryStorage.find<A>(_:)(v30, v31);
  v34 = v33;

  if ((v34 & 1) == 0 || (outlined init with copy of Any(*(v16 + 56) + 32 * v32, v77), type metadata accessor for UIAlertController(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0), (swift_dynamicCast() & 1) == 0))
  {
LABEL_13:
    v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (*(v16 + 16))
    {
      v54 = specialized __RawDictionaryStorage.find<A>(_:)(v52, v53);
      v56 = v55;

      if (v56)
      {
        outlined init with copy of Any(*(v16 + 56) + 32 * v54, v77);

        type metadata accessor for UIAlertController(0, &lazy cache variable for type metadata for NSError, 0x277CCA9B8);
        if (swift_dynamicCast())
        {
          v57 = v76;

          v58 = v57;
          v59 = v2;
          v38 = v58;
          v39 = Logger.logObject.getter();
          v40 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v39, v40))
          {
            v41 = swift_slowAlloc();
            v60 = swift_slowAlloc();
            v72 = v60;
            v73 = swift_slowAlloc();
            v77[0] = v73;
            *v41 = 138412546;
            *(v41 + 4) = v38;
            *v60 = v38;
            *(v41 + 12) = 2080;
            v62 = v74;
            v61 = v75;
            (*(v75 + 16))(v74, v59 + OBJC_IVAR____TtC8GameSave19BundleUpdatesWaiter_bundleURL, v4);
            lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
            v63 = v4;
            v46 = v38;
            v64 = dispatch thunk of CustomStringConvertible.description.getter();
            v66 = v65;
            (*(v61 + 8))(v62, v63);
            v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v66, v77);

            *(v41 + 14) = v67;
            v51 = "Upload in error: %@ for %s";
            goto LABEL_18;
          }

          goto LABEL_22;
        }

        return 0;
      }
    }

    else
    {
    }

    return 0;
  }

  v35 = v76;
  [v76 doubleValue];
  if (v36 <= 0.0)
  {

    goto LABEL_13;
  }

  v37 = v2;
  v38 = v35;

  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v72 = v42;
    v73 = swift_slowAlloc();
    v77[0] = v73;
    *v41 = 138412546;
    *(v41 + 4) = v38;
    *v42 = v38;
    *(v41 + 12) = 2080;
    v44 = v74;
    v43 = v75;
    (*(v75 + 16))(v74, v37 + OBJC_IVAR____TtC8GameSave19BundleUpdatesWaiter_bundleURL, v4);
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
    v45 = v4;
    v46 = v38;
    v47 = dispatch thunk of CustomStringConvertible.description.getter();
    v49 = v48;
    (*(v43 + 8))(v44, v45);
    v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v49, v77);

    *(v41 + 14) = v50;
    v51 = "Upload in progress: %@ for %s";
LABEL_18:
    _os_log_impl(&dword_238952000, v39, v40, v51, v41, 0x16u);
    v68 = v72;
    outlined destroy of URL?(v72, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x23EE6C260](v68, -1, -1);
    v69 = v73;
    __swift_destroy_boxed_opaque_existential_0(v73);
    MEMORY[0x23EE6C260](v69, -1, -1);
    MEMORY[0x23EE6C260](v41, -1, -1);

    return 1;
  }

LABEL_22:

  return 1;
}

uint64_t closure #1 in BundleUpdatesWaiter.finishedGathering(notification:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5NeverOGMd, &_sScCySbs5NeverOGMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v52 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5NeverOGSgMd, &_sScCySbs5NeverOGSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v52 - v9;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  result = MEMORY[0x28223BE20](v11);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a1 + OBJC_IVAR____TtC8GameSave19BundleUpdatesWaiter_metadataQuery);
  if (!v17)
  {
    return result;
  }

  v56 = v16;
  v61 = a1;
  v58 = result;
  v18 = v17;
  [v18 disableUpdates];
  v19 = [v18 results];
  v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v21 = specialized _arrayConditionalCast<A, B>(_:)(v20);

  v57 = v12;
  if (!v21)
  {
    goto LABEL_15;
  }

  if (!(v21 >> 62))
  {
    result = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

  if (v21 >= 0)
  {
    v27 = v21 & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
    v27 = v21;
  }

  result = MEMORY[0x23EE6BAE0](v27);
  if (!result)
  {
LABEL_14:

LABEL_15:
    [v18 enableUpdates];
LABEL_16:
    v59 = 0;
    v25 = v61;
    goto LABEL_17;
  }

LABEL_5:
  if ((v21 & 0xC000000000000001) != 0)
  {
    v22 = MEMORY[0x23EE6BA40](0, v21);
  }

  else
  {
    if (!*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v22 = *(v21 + 32);
  }

  v23 = v22;

  [v18 enableUpdates];
  if (!v23)
  {
    goto LABEL_16;
  }

  v24 = v23;
  v25 = v61;
  v26 = BundleUpdatesWaiter.isItemUploading(item:)(v24);
  v59 = v24;

  *(v25 + OBJC_IVAR____TtC8GameSave19BundleUpdatesWaiter_itemGatheredWithUploadingStatus) = v26 & 1;
LABEL_17:
  v60 = v18;
  v28 = OBJC_IVAR____TtC8GameSave19BundleUpdatesWaiter_finishedGathering;
  *(v25 + OBJC_IVAR____TtC8GameSave19BundleUpdatesWaiter_finishedGathering) = 1;
  if (one-time initialization token for common != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  __swift_project_value_buffer(v29, static Logger.common);

  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v52 = v32;
    v33 = swift_slowAlloc();
    v55 = v2;
    v53 = v33;
    v62 = v33;
    *v32 = 136315138;
    v34 = v57;
    v35 = *(v57 + 16);
    v36 = v25 + OBJC_IVAR____TtC8GameSave19BundleUpdatesWaiter_bundleURL;
    v63 = v31;
    v37 = v56;
    v38 = v58;
    v35(v56, v36, v58);
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
    v39 = v28;
    v40 = dispatch thunk of CustomStringConvertible.description.getter();
    v54 = v10;
    v41 = v6;
    v42 = v3;
    v44 = v43;
    (*(v34 + 8))(v37, v38);
    v45 = v40;
    v28 = v39;
    v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v44, &v62);
    v3 = v42;
    v6 = v41;
    v10 = v54;

    v47 = v52;
    *(v52 + 1) = v46;
    v25 = v61;
    v48 = v47;
    _os_log_impl(&dword_238952000, v30, v63, "Finished gathering %s", v47, 0xCu);
    v49 = v53;
    __swift_destroy_boxed_opaque_existential_0(v53);
    v2 = v55;
    MEMORY[0x23EE6C260](v49, -1, -1);
    MEMORY[0x23EE6C260](v48, -1, -1);
  }

  v50 = v60;
  v51 = OBJC_IVAR____TtC8GameSave19BundleUpdatesWaiter_finishedGatheringContinuation;
  outlined init with copy of URL?(v25 + OBJC_IVAR____TtC8GameSave19BundleUpdatesWaiter_finishedGatheringContinuation, v10, &_sScCySbs5NeverOGSgMd, &_sScCySbs5NeverOGSgMR);
  if ((*(v3 + 48))(v10, 1, v2))
  {

    outlined destroy of URL?(v10, &_sScCySbs5NeverOGSgMd, &_sScCySbs5NeverOGSgMR);
  }

  else
  {
    (*(v3 + 16))(v6, v10, v2);
    outlined destroy of URL?(v10, &_sScCySbs5NeverOGSgMd, &_sScCySbs5NeverOGSgMR);
    v64 = *(v25 + v28);
    CheckedContinuation.resume(returning:)();
    v25 = v61;

    (*(v3 + 8))(v6, v2);
  }

  outlined destroy of URL?(v25 + v51, &_sScCySbs5NeverOGSgMd, &_sScCySbs5NeverOGSgMR);
  return (*(v3 + 56))(v25 + v51, 1, 1, v2);
}

uint64_t specialized _arrayConditionalCast<A, B>(_:)(uint64_t a1)
{
  v7 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  specialized ContiguousArray.reserveCapacity(_:)();
  if (!v2)
  {
    return v7;
  }

  for (i = a1 + 32; ; i += 32)
  {
    outlined init with copy of Any(i, v6);
    type metadata accessor for UIAlertController(0, &lazy cache variable for type metadata for NSMetadataItem, 0x277CCAB20);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v4 = *(v7 + 16);
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    if (!--v2)
    {
      return v7;
    }
  }

  return 0;
}

void closure #1 in BundleUpdatesWaiter.receivedUpdates(notification:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySo14NSMetadataItemC_GMd, &_sScS12ContinuationVySo14NSMetadataItemC_GMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v57 = &v51 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySo14NSMetadataItemC_GSgMd, &_sScS12ContinuationVySo14NSMetadataItemC_GSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v51 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOySo14NSMetadataItemC__GSgMd, &_sScS12ContinuationV11YieldResultOySo14NSMetadataItemC__GSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v51 - v13;
  v15 = type metadata accessor for URL();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a1 + OBJC_IVAR____TtC8GameSave19BundleUpdatesWaiter_metadataQuery);
  if (!v20)
  {
    return;
  }

  v56 = v10;
  v54 = v14;
  v21 = one-time initialization token for common;
  v58 = v20;
  if (v21 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  __swift_project_value_buffer(v22, static Logger.common);

  v23 = a1;
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();

  v26 = os_log_type_enabled(v24, v25);
  v55 = v23;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v53 = v1;
    v28 = v27;
    v51 = swift_slowAlloc();
    v52 = v3;
    v59 = v51;
    *v28 = 136315138;
    (*(v16 + 16))(v19, v23 + OBJC_IVAR____TtC8GameSave19BundleUpdatesWaiter_bundleURL, v15);
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
    v29 = dispatch thunk of CustomStringConvertible.description.getter();
    v30 = v4;
    v32 = v31;
    (*(v16 + 8))(v19, v15);
    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v32, &v59);
    v4 = v30;

    *(v28 + 4) = v33;
    _os_log_impl(&dword_238952000, v24, v25, "Recieved Updates for %s", v28, 0xCu);
    v34 = v51;
    __swift_destroy_boxed_opaque_existential_0(v51);
    v3 = v52;
    MEMORY[0x23EE6C260](v34, -1, -1);
    MEMORY[0x23EE6C260](v28, -1, -1);
  }

  v35 = v58;
  [v58 disableUpdates];
  v36 = [v35 results];
  v37 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v38 = specialized _arrayConditionalCast<A, B>(_:)(v37);

  if (!v38)
  {
    goto LABEL_22;
  }

  if (!(v38 >> 62))
  {
    v40 = v55;
    v39 = v56;
    if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

  if (v38 >= 0)
  {
    v49 = v38 & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
    v49 = v38;
  }

  v50 = MEMORY[0x23EE6BAE0](v49);
  v40 = v55;
  v39 = v56;
  if (!v50)
  {
LABEL_21:

LABEL_22:
    [v35 enableUpdates];
LABEL_23:

    return;
  }

LABEL_9:
  if ((v38 & 0xC000000000000001) != 0)
  {
    v41 = MEMORY[0x23EE6BA40](0, v38);
  }

  else
  {
    if (!*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v41 = *(v38 + 32);
  }

  v42 = v41;

  [v35 enableUpdates];
  if (!v42)
  {
    goto LABEL_23;
  }

  outlined init with copy of URL?(v40 + OBJC_IVAR____TtC8GameSave19BundleUpdatesWaiter_updateStreamContinuation, v39, &_sScS12ContinuationVySo14NSMetadataItemC_GSgMd, &_sScS12ContinuationVySo14NSMetadataItemC_GSgMR);
  if ((*(v4 + 48))(v39, 1, v3))
  {

    outlined destroy of URL?(v39, &_sScS12ContinuationVySo14NSMetadataItemC_GSgMd, &_sScS12ContinuationVySo14NSMetadataItemC_GSgMR);
    v43 = 1;
    v44 = v54;
  }

  else
  {
    v45 = v57;
    (*(v4 + 16))(v57, v39, v3);
    v46 = v42;
    outlined destroy of URL?(v39, &_sScS12ContinuationVySo14NSMetadataItemC_GSgMd, &_sScS12ContinuationVySo14NSMetadataItemC_GSgMR);
    v59 = v46;
    v47 = v46;
    v44 = v54;
    AsyncStream.Continuation.yield(_:)();

    (*(v4 + 8))(v45, v3);
    v43 = 0;
  }

  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOySo14NSMetadataItemC__GMd, &_sScS12ContinuationV11YieldResultOySo14NSMetadataItemC__GMR);
  (*(*(v48 - 8) + 56))(v44, v43, 1, v48);
  outlined destroy of URL?(v44, &_sScS12ContinuationV11YieldResultOySo14NSMetadataItemC__GSgMd, &_sScS12ContinuationV11YieldResultOySo14NSMetadataItemC__GSgMR);
}

uint64_t @objc BundleUpdatesWaiter.finishedGathering(notification:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = type metadata accessor for Notification();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = *(a1 + OBJC_IVAR____TtC8GameSave19BundleUpdatesWaiter_lock);

  v12 = v11;
  [v12 lock];
  a4(a1);
  [v12 unlock];

  return (*(v7 + 8))(v10, v6);
}

void type metadata completion function for BundleUpdatesWaiter()
{
  v0 = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    type metadata accessor for CheckedContinuation<Bool, Never>?(319, &lazy cache variable for type metadata for CheckedContinuation<Bool, Never>?, &_sScCySbs5NeverOGMd, &_sScCySbs5NeverOGMR);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      type metadata accessor for CheckedContinuation<Bool, Never>?(319, &lazy cache variable for type metadata for AsyncStream<NSMetadataItem>.Continuation?, &_sScS12ContinuationVySo14NSMetadataItemC_GMd, &_sScS12ContinuationVySo14NSMetadataItemC_GMR);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t closure #1 in BundleUpdatesWaiter.waitForGatherComplete(duration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = type metadata accessor for ContinuousClock();
  v6[5] = v7;
  v8 = *(v7 - 8);
  v6[6] = v8;
  v9 = *(v8 + 64) + 15;
  v6[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in BundleUpdatesWaiter.waitForGatherComplete(duration:), 0, 0);
}

uint64_t closure #1 in BundleUpdatesWaiter.waitForGatherComplete(duration:)()
{
  v1 = v0[7];
  static Clock<>.continuous.getter();
  v2 = swift_task_alloc();
  v0[8] = v2;
  *v2 = v0;
  v2[1] = closure #1 in BundleUpdatesWaiter.waitForGatherComplete(duration:);
  v3 = v0[7];
  v5 = v0[2];
  v4 = v0[3];

  return specialized Clock.sleep(for:tolerance:)(v5, v4, 0, 0, 1);
}

{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *v1;
  *(*v1 + 72) = v0;

  v5 = v2[7];
  v6 = v2[6];
  v7 = v2[5];
  if (v0)
  {

    (*(v6 + 8))(v5, v7);
    v8 = closure #1 in BundleUpdatesWaiter.waitForGatherComplete(duration:);
  }

  else
  {
    (*(v6 + 8))(v5, v7);
    v8 = closure #1 in BundleUpdatesWaiter.waitForGatherComplete(duration:);
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

{
  v1 = v0[4];
  v2 = *(v1 + OBJC_IVAR____TtC8GameSave19BundleUpdatesWaiter_lock);
  [v2 lock];
  closure #1 in closure #1 in BundleUpdatesWaiter.waitForGatherComplete(duration:)(v1);
  v3 = v0[7];
  [v2 unlock];

  v4 = v0[1];

  return v4();
}

id closure #1 in BundleUpdatesWaiter.waitForGatherComplete(duration:)()
{
  v1 = v0[9];
  v2 = v0[4];
  v3 = *(v2 + OBJC_IVAR____TtC8GameSave19BundleUpdatesWaiter_lock);
  [v3 lock];
  closure #1 in closure #1 in BundleUpdatesWaiter.waitForGatherComplete(duration:)(v2);
  if (v1)
  {

    return [v3 unlock];
  }

  else
  {
    v5 = v0[7];
    [v3 unlock];

    v6 = v0[1];

    return v6();
  }
}

uint64_t closure #1 in closure #1 in BundleUpdatesWaiter.waitForGatherComplete(duration:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5NeverOGMd, &_sScCySbs5NeverOGMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5NeverOGSgMd, &_sScCySbs5NeverOGSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v13 - v9;
  v11 = OBJC_IVAR____TtC8GameSave19BundleUpdatesWaiter_finishedGatheringContinuation;
  outlined init with copy of URL?(a1 + OBJC_IVAR____TtC8GameSave19BundleUpdatesWaiter_finishedGatheringContinuation, &v13 - v9, &_sScCySbs5NeverOGSgMd, &_sScCySbs5NeverOGSgMR);
  if ((*(v3 + 48))(v10, 1, v2))
  {
    outlined destroy of URL?(v10, &_sScCySbs5NeverOGSgMd, &_sScCySbs5NeverOGSgMR);
  }

  else
  {
    (*(v3 + 16))(v6, v10, v2);
    outlined destroy of URL?(v10, &_sScCySbs5NeverOGSgMd, &_sScCySbs5NeverOGSgMR);
    v14 = *(a1 + OBJC_IVAR____TtC8GameSave19BundleUpdatesWaiter_finishedGathering);
    CheckedContinuation.resume(returning:)();
    (*(v3 + 8))(v6, v2);
  }

  outlined destroy of URL?(a1 + v11, &_sScCySbs5NeverOGSgMd, &_sScCySbs5NeverOGSgMR);
  return (*(v3 + 56))(a1 + v11, 1, 1, v2);
}

void closure #2 in BundleUpdatesWaiter.waitForGatherComplete(duration:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + OBJC_IVAR____TtC8GameSave19BundleUpdatesWaiter_lock);
  [v4 lock];
  if (*(a2 + OBJC_IVAR____TtC8GameSave19BundleUpdatesWaiter_finishedGathering) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5NeverOGMd, &_sScCySbs5NeverOGMR);
    CheckedContinuation.resume(returning:)();
  }

  else
  {
    v5 = OBJC_IVAR____TtC8GameSave19BundleUpdatesWaiter_finishedGatheringContinuation;
    outlined destroy of URL?(a2 + OBJC_IVAR____TtC8GameSave19BundleUpdatesWaiter_finishedGatheringContinuation, &_sScCySbs5NeverOGSgMd, &_sScCySbs5NeverOGSgMR);
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5NeverOGMd, &_sScCySbs5NeverOGMR);
    v7 = *(v6 - 8);
    (*(v7 + 16))(a2 + v5, a1, v6);
    (*(v7 + 56))(a2 + v5, 0, 1, v6);
  }

  [v4 unlock];
}

uint64_t BundleUpdatesWaiter.waitForUploadToStart(duration:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v5 = type metadata accessor for URL();
  v3[6] = v5;
  v6 = *(v5 - 8);
  v3[7] = v6;
  v7 = *(v6 + 64) + 15;
  v3[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](BundleUpdatesWaiter.waitForUploadToStart(duration:), 0, 0);
}

uint64_t BundleUpdatesWaiter.waitForUploadToStart(duration:)()
{
  v34 = v0;
  v1 = v0[4];
  if (*(v1 + OBJC_IVAR____TtC8GameSave19BundleUpdatesWaiter_itemGatheredWithUploadingStatus) == 1)
  {
    v2 = *(v1 + OBJC_IVAR____TtC8GameSave19BundleUpdatesWaiter_lock);
    [v2 lock];
    closure #1 in BundleUpdatesWaiter.invalidate()(v1);
    [v2 unlock];

    v28 = v0[8];
    v29 = v0[5];

    v30 = v0[1];

    return v30(0);
  }

  else
  {
    if (one-time initialization token for common != -1)
    {
      swift_once();
      v31 = v0[4];
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Logger.common);

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v7 = v0[7];
      v6 = v0[8];
      v8 = v0[6];
      v9 = v0[4];
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v33 = v11;
      *v10 = 136315138;
      (*(v7 + 16))(v6, v9 + OBJC_IVAR____TtC8GameSave19BundleUpdatesWaiter_bundleURL, v8);
      lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
      v12 = dispatch thunk of CustomStringConvertible.description.getter();
      v14 = v13;
      (*(v7 + 8))(v6, v8);
      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, &v33);

      *(v10 + 4) = v15;
      _os_log_impl(&dword_238952000, v4, v5, "Wait for upload to start at %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x23EE6C260](v11, -1, -1);
      MEMORY[0x23EE6C260](v10, -1, -1);
    }

    v16 = v0[4];
    v17 = v0[5];
    v19 = v0[2];
    v18 = v0[3];
    v20 = type metadata accessor for TaskPriority();
    v21 = *(*(v20 - 8) + 56);
    v21(v17, 1, 1, v20);
    v22 = swift_allocObject();
    v22[2] = 0;
    v22[3] = 0;
    v22[4] = v19;
    v22[5] = v18;
    v22[6] = v16;

    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v17, &async function pointer to partial apply for closure #1 in BundleUpdatesWaiter.waitForUploadToStart(duration:), v22);

    v21(v17, 1, 1, v20);
    v23 = swift_allocObject();
    v23[2] = 0;
    v23[3] = 0;
    v23[4] = v16;

    v24 = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCSb_Tt2g5(0, 0, v17, &async function pointer to partial apply for closure #2 in BundleUpdatesWaiter.waitForUploadToStart(duration:), v23);
    v0[9] = v24;
    v25 = *(MEMORY[0x277D857E0] + 4);
    v26 = swift_task_alloc();
    v0[10] = v26;
    *v26 = v0;
    v26[1] = BundleUpdatesWaiter.waitForUploadToStart(duration:);
    v27 = MEMORY[0x277D839B0];

    return MEMORY[0x282200460](v0 + 11, v24, v27);
  }
}

{
  v1 = *(*v0 + 80);
  v3 = *v0;

  return MEMORY[0x2822009F8](BundleUpdatesWaiter.waitForUploadToStart(duration:), 0, 0);
}

{
  v1 = *(v0 + 72);

  v2 = *(v0 + 88);
  v3 = *(v0 + 64);
  v4 = *(v0 + 40);

  v5 = *(v0 + 8);

  return v5(v2);
}

void type metadata accessor for CheckedContinuation<Bool, Never>?(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = type metadata accessor for Optional();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t closure #1 in BundleUpdatesWaiter.waitForUploadToStart(duration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = type metadata accessor for ContinuousClock();
  v6[5] = v7;
  v8 = *(v7 - 8);
  v6[6] = v8;
  v9 = *(v8 + 64) + 15;
  v6[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in BundleUpdatesWaiter.waitForUploadToStart(duration:), 0, 0);
}

uint64_t closure #1 in BundleUpdatesWaiter.waitForUploadToStart(duration:)()
{
  v1 = v0[7];
  static Clock<>.continuous.getter();
  v2 = swift_task_alloc();
  v0[8] = v2;
  *v2 = v0;
  v2[1] = closure #1 in BundleUpdatesWaiter.waitForUploadToStart(duration:);
  v3 = v0[7];
  v5 = v0[2];
  v4 = v0[3];

  return specialized Clock.sleep(for:tolerance:)(v5, v4, 0, 0, 1);
}

{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *v1;
  *(*v1 + 72) = v0;

  v5 = v2[7];
  v6 = v2[6];
  v7 = v2[5];
  if (v0)
  {

    (*(v6 + 8))(v5, v7);
    v8 = closure #1 in BundleUpdatesWaiter.waitForUploadToStart(duration:);
  }

  else
  {
    (*(v6 + 8))(v5, v7);
    v8 = closure #1 in BundleUpdatesWaiter.waitForUploadToStart(duration:);
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

{
  v1 = v0[4];
  v2 = *(v1 + OBJC_IVAR____TtC8GameSave19BundleUpdatesWaiter_lock);
  [v2 lock];
  closure #1 in BundleUpdatesWaiter.invalidate()(v1);
  v3 = v0[7];
  [v2 unlock];

  v4 = v0[1];

  return v4();
}

id closure #1 in BundleUpdatesWaiter.waitForUploadToStart(duration:)()
{
  v1 = v0[9];
  v2 = v0[4];
  v3 = *(v2 + OBJC_IVAR____TtC8GameSave19BundleUpdatesWaiter_lock);
  [v3 lock];
  closure #1 in BundleUpdatesWaiter.invalidate()(v2);
  if (v1)
  {

    return [v3 unlock];
  }

  else
  {
    v5 = v0[7];
    [v3 unlock];

    v6 = v0[1];

    return v6();
  }
}

uint64_t closure #2 in BundleUpdatesWaiter.waitForUploadToStart(duration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a1;
  v4[4] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOySo14NSMetadataItemC__GMd, &_sScS12ContinuationV15BufferingPolicyOySo14NSMetadataItemC__GMR);
  v4[5] = v5;
  v6 = *(v5 - 8);
  v4[6] = v6;
  v7 = *(v6 + 64) + 15;
  v4[7] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSySo14NSMetadataItemCGMd, &_sScSySo14NSMetadataItemCGMR);
  v4[8] = v8;
  v9 = *(v8 - 8);
  v4[9] = v9;
  v10 = *(v9 + 64) + 15;
  v4[10] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVySo14NSMetadataItemC_GMd, &_sScS8IteratorVySo14NSMetadataItemC_GMR);
  v4[11] = v11;
  v12 = *(v11 - 8);
  v4[12] = v12;
  v13 = *(v12 + 64) + 15;
  v4[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #2 in BundleUpdatesWaiter.waitForUploadToStart(duration:), 0, 0);
}

uint64_t closure #2 in BundleUpdatesWaiter.waitForUploadToStart(duration:)()
{
  v1 = v0[13];
  v3 = v0[9];
  v2 = v0[10];
  v5 = v0[7];
  v4 = v0[8];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[4];
  type metadata accessor for UIAlertController(0, &lazy cache variable for type metadata for NSMetadataItem, 0x277CCAB20);
  (*(v7 + 104))(v5, *MEMORY[0x277D85778], v6);
  AsyncStream.init(_:bufferingPolicy:_:)();
  AsyncStream.makeAsyncIterator()();
  (*(v3 + 8))(v2, v4);
  v9 = *(MEMORY[0x277D85798] + 4);
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = closure #2 in BundleUpdatesWaiter.waitForUploadToStart(duration:);
  v11 = v0[13];
  v12 = v0[11];

  return MEMORY[0x2822003E8](v0 + 2, 0, 0, v12);
}

{
  v1 = *(*v0 + 112);
  v3 = *v0;

  return MEMORY[0x2822009F8](closure #2 in BundleUpdatesWaiter.waitForUploadToStart(duration:), 0, 0);
}

{
  v1 = *(v0 + 16);
  if (!v1)
  {
    v9 = 0;
    goto LABEL_8;
  }

  v2 = *(v0 + 32);
  if (BundleUpdatesWaiter.isItemUploading(item:)(*(v0 + 16)))
  {
    v3 = *(v0 + 32);
    v4 = *(v3 + OBJC_IVAR____TtC8GameSave19BundleUpdatesWaiter_lock);
    [v4 lock];
    closure #1 in BundleUpdatesWaiter.invalidate()(v3);
    [v4 unlock];

    v9 = 1;
LABEL_8:
    v10 = *(v0 + 80);
    v11 = *(v0 + 56);
    v12 = *(v0 + 24);
    (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));
    *v12 = v9;

    v13 = *(v0 + 8);

    return v13();
  }

  v5 = *(MEMORY[0x277D85798] + 4);
  v6 = swift_task_alloc();
  *(v0 + 112) = v6;
  *v6 = v0;
  v6[1] = closure #2 in BundleUpdatesWaiter.waitForUploadToStart(duration:);
  v7 = *(v0 + 104);
  v8 = *(v0 + 88);

  return MEMORY[0x2822003E8](v0 + 16, 0, 0, v8);
}

uint64_t specialized Clock.sleep(for:tolerance:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = type metadata accessor for ContinuousClock.Instant();
  *(v6 + 64) = v12;
  v13 = *(v12 - 8);
  *(v6 + 72) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](specialized Clock.sleep(for:tolerance:), 0, 0);
}

uint64_t specialized Clock.sleep(for:tolerance:)()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = type metadata accessor for ContinuousClock();
  v7 = lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type ContinuousClock and conformance ContinuousClock, MEMORY[0x277D85928]);
  dispatch thunk of Clock.now.getter();
  lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type ContinuousClock.Instant and conformance ContinuousClock.Instant, MEMORY[0x277D858F8]);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = *(MEMORY[0x277D85A58] + 4);
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = specialized Clock.sleep(for:tolerance:);
  v11 = v0[11];
  v12 = v0[7];

  return MEMORY[0x2822008C8](v11, v0 + 2, v6, v7);
}

{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 64);
  v7 = *v1;
  v7[15] = v0;

  v4(v5, v6);
  if (v0)
  {

    return MEMORY[0x2822009F8](specialized Clock.sleep(for:tolerance:), 0, 0);
  }

  else
  {
    v9 = v7[10];
    v8 = v7[11];

    v10 = v7[1];

    return v10();
  }
}

{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

uint64_t sub_23897D52C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t partial apply for closure #1 in BundleUpdatesWaiter.waitForUploadToStart(duration:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = GameSaveSyncedDirectory.finishSyncing();

  return closure #1 in BundleUpdatesWaiter.waitForUploadToStart(duration:)(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_23897D634()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t partial apply for closure #2 in BundleUpdatesWaiter.waitForUploadToStart(duration:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = static GameSaveSyncedDirectory.cleanupDirectory(containerIdentifier:);

  return closure #2 in BundleUpdatesWaiter.waitForUploadToStart(duration:)(a1, v4, v5, v6);
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

uint64_t one-time initialization function for common()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.common);
  __swift_project_value_buffer(v0, static Logger.common);
  return Logger.init(subsystem:category:)();
}

uint64_t static Logger.common.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for common != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static Logger.common);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t one-time initialization function for stateTracking()
{
  type metadata accessor for OS_os_log();
  result = OS_os_log.init(subsystem:category:)();
  static Logger.stateTracking = result;
  return result;
}

id static Logger.stateTracking.getter()
{
  if (one-time initialization token for stateTracking != -1)
  {
    swift_once();
  }

  v1 = static Logger.stateTracking;

  return v1;
}

unint64_t type metadata accessor for OS_os_log()
{
  result = lazy cache variable for type metadata for OS_os_log;
  if (!lazy cache variable for type metadata for OS_os_log)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_os_log);
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

NSXPCInterface __swiftcall gameSaveXPCInterface()()
{
  [objc_opt_self() interfaceWithProtocol_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_238987820;
  v1 = type metadata accessor for GameSyncedDirectoryRequest();
  *(v0 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8GameSave0A22SyncedDirectoryRequestCmMd, &_s8GameSave0A22SyncedDirectoryRequestCmMR);
  *(v0 + 32) = v1;
  v2 = objc_allocWithZone(MEMORY[0x277CBEB98]);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v2 initWithArray_];

  result.super.isa = static Set._forceBridgeFromObjectiveC(_:result:)();
  __break(1u);
  __break(1u);
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance GameSaveError()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1 + 1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance GameSaveError()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1 + 1);
  return Hasher._finalize()();
}

_BYTE *protocol witness for RawRepresentable.init(rawValue:) in conformance GameSaveError@<X0>(_BYTE *result@<X0>, char *a2@<X8>)
{
  if (*result >= 4u)
  {
    v2 = 3;
  }

  else
  {
    v2 = 0x2010003u >> (8 * *result);
  }

  *a2 = v2;
  return result;
}

uint64_t protocol witness for Error._domain.getter in conformance GameSaveError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GameSaveError and conformance GameSaveError();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t protocol witness for Error._code.getter in conformance GameSaveError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GameSaveError and conformance GameSaveError();
  v3 = lazy protocol witness table accessor for type GameSaveError and conformance GameSaveError();
  v4 = lazy protocol witness table accessor for type Int32 and conformance Int32();

  return MEMORY[0x28211F498](a1, v2, v3, v4);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance GetSyncedDirectoryMode()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x23EE6BC50](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance GetSyncedDirectoryMode()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x23EE6BC50](v1);
  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance GetSyncedDirectoryMode@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = specialized GetSyncedDirectoryMode.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

Swift::Void __swiftcall GameSyncedDirectoryResponse.encode(with:)(NSCoder with)
{
  v2 = v1;
  URL._bridgeToObjectiveC()(OBJC_IVAR___GameSyncedDirectoryResponse_directoryURL);
  v5 = v4;
  v6 = MEMORY[0x23EE6B6E0](0x726F746365726964, 0xEC0000004C525579);
  [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];

  v7 = *(v2 + OBJC_IVAR___GameSyncedDirectoryResponse_gameSavedDataFolderURL);
  v8 = MEMORY[0x23EE6B6E0](0xD000000000000016, 0x800000023898CB70);
  [(objc_class *)with.super.isa encodeObject:v7 forKey:v8];

  v9 = *(v2 + OBJC_IVAR___GameSyncedDirectoryResponse_isOnline);
  v10 = MEMORY[0x23EE6B6E0](0x656E696C6E4F7369, 0xE800000000000000);
  [(objc_class *)with.super.isa encodeBool:v9 forKey:v10];

  if (*(v2 + OBJC_IVAR___GameSyncedDirectoryResponse_lastEditorDeviceName + 8))
  {
    v11 = MEMORY[0x23EE6B6E0](*(v2 + OBJC_IVAR___GameSyncedDirectoryResponse_lastEditorDeviceName));
    v12 = MEMORY[0x23EE6B6E0](0xD000000000000014, 0x800000023898CB90);
    [(objc_class *)with.super.isa encodeObject:v11 forKey:v12];
  }

  if ((*(v2 + OBJC_IVAR___GameSyncedDirectoryResponse_numberOfConflicts + 8) & 1) == 0)
  {
    v13 = *(v2 + OBJC_IVAR___GameSyncedDirectoryResponse_numberOfConflicts);
    v14 = MEMORY[0x23EE6B6E0](0xD000000000000011, 0x800000023898CBB0);
    [(objc_class *)with.super.isa encodeInteger:v13 forKey:v14];
  }

  v15 = MEMORY[0x23EE6B6E0](*(v2 + OBJC_IVAR___GameSyncedDirectoryResponse_directorySandboxExtension), *(v2 + OBJC_IVAR___GameSyncedDirectoryResponse_directorySandboxExtension + 8));
  v16 = MEMORY[0x23EE6B6E0](0xD000000000000019, 0x800000023898CBD0);
  [(objc_class *)with.super.isa encodeObject:v15 forKey:v16];

  if (*(v2 + OBJC_IVAR___GameSyncedDirectoryResponse_devices))
  {
    type metadata accessor for DeviceInfo();
    isa = Array._bridgeToObjectiveC()().super.isa;
    v18 = MEMORY[0x23EE6B6E0](0x73656369766564, 0xE700000000000000);
    [(objc_class *)with.super.isa encodeObject:isa forKey:v18];
  }
}

uint64_t GameSyncedDirectoryResponse.description.getter()
{
  v1 = v0;
  _StringGuts.grow(_:)(116);
  MEMORY[0x23EE6B750](0x5255656C646E7542, 0xEB00000000203A4CLL);
  type metadata accessor for URL();
  lazy protocol witness table accessor for type URL and conformance URL();
  v2 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x23EE6B750](v2);

  MEMORY[0x23EE6B750](0xD000000000000019, 0x800000023898CCD0);
  v3 = [*(v0 + OBJC_IVAR___GameSyncedDirectoryResponse_gameSavedDataFolderURL) description];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  MEMORY[0x23EE6B750](v4, v6);

  MEMORY[0x23EE6B750](0x696C6E4F7369202CLL, 0xEC000000203A656ELL);
  if (*(v1 + OBJC_IVAR___GameSyncedDirectoryResponse_isOnline))
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (*(v1 + OBJC_IVAR___GameSyncedDirectoryResponse_isOnline))
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  MEMORY[0x23EE6B750](v7, v8);

  MEMORY[0x23EE6B750](0xD000000000000018, 0x800000023898CCF0);
  v13 = *(v1 + OBJC_IVAR___GameSyncedDirectoryResponse_lastEditorDeviceName);
  v16 = *(v1 + OBJC_IVAR___GameSyncedDirectoryResponse_lastEditorDeviceName + 8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  v9 = String.init<A>(describing:)();
  MEMORY[0x23EE6B750](v9);

  MEMORY[0x23EE6B750](0xD000000000000015, 0x800000023898CD10);
  v14 = *(v1 + OBJC_IVAR___GameSyncedDirectoryResponse_numberOfConflicts);
  LOBYTE(v16) = *(v1 + OBJC_IVAR___GameSyncedDirectoryResponse_numberOfConflicts + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
  v10 = String.init<A>(describing:)();
  MEMORY[0x23EE6B750](v10);

  MEMORY[0x23EE6B750](0x656369766564202CLL, 0xEB00000000203A73);
  v15 = *(v1 + OBJC_IVAR___GameSyncedDirectoryResponse_devices);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8GameSave10DeviceInfoCGSgMd, &_sSay8GameSave10DeviceInfoCGSgMR);
  v11 = String.init<A>(describing:)();
  MEMORY[0x23EE6B750](v11);

  return 0;
}

uint64_t type metadata accessor for GameSyncedDirectoryResponse()
{
  result = type metadata singleton initialization cache for GameSyncedDirectoryResponse;
  if (!type metadata singleton initialization cache for GameSyncedDirectoryResponse)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for GameSyncedDirectoryResponse()
{
  result = type metadata accessor for URL();
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

Swift::Void __swiftcall GameSyncedDirectoryRequest.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR___GameSyncedDirectoryRequest_mode);
  v4 = MEMORY[0x23EE6B6E0](1701080941, 0xE400000000000000);
  [(objc_class *)with.super.isa encodeInteger:v3 forKey:v4];

  v5 = v1 + OBJC_IVAR___GameSyncedDirectoryRequest_containerIdentifier;
  v6 = *(v1 + OBJC_IVAR___GameSyncedDirectoryRequest_containerIdentifier);
  v7 = *(v5 + 8);

  v8 = MEMORY[0x23EE6B6E0](v6, v7);

  v9 = MEMORY[0x23EE6B6E0](0xD000000000000013, 0x800000023898CC10);
  [(objc_class *)with.super.isa encodeObject:v8 forKey:v9];
}

uint64_t GameSyncedDirectoryRequest.description.getter()
{
  _StringGuts.grow(_:)(33);

  v5 = *(v0 + OBJC_IVAR___GameSyncedDirectoryRequest_mode);
  v1 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x23EE6B750](v1);

  MEMORY[0x23EE6B750](0xD000000000000017, 0x800000023898CC80);
  v2 = *(v0 + OBJC_IVAR___GameSyncedDirectoryRequest_containerIdentifier);
  v3 = *(v0 + OBJC_IVAR___GameSyncedDirectoryRequest_containerIdentifier + 8);

  MEMORY[0x23EE6B750](v2, v3);

  return 0x203A65646F4DLL;
}

id GameSyncedDirectoryRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GameSyncedDirectoryRequest();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall DeviceInfo.encode(with:)(NSCoder with)
{
  v3 = MEMORY[0x23EE6B6E0](*(v1 + OBJC_IVAR___DeviceInfo_name), *(v1 + OBJC_IVAR___DeviceInfo_name + 8));
  v4 = MEMORY[0x23EE6B6E0](1701667182, 0xE400000000000000);
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];

  v5 = MEMORY[0x23EE6B6E0](*(v1 + OBJC_IVAR___DeviceInfo_symbol), *(v1 + OBJC_IVAR___DeviceInfo_symbol + 8));
  v6 = MEMORY[0x23EE6B6E0](0x6C6F626D7973, 0xE600000000000000);
  [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];
}

id @objc GameSyncedDirectoryResponse.description.getter(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a3();
  v7 = v6;

  v8 = MEMORY[0x23EE6B6E0](v5, v7);

  return v8;
}

uint64_t DeviceInfo.description.getter()
{
  v1 = v0;
  _StringGuts.grow(_:)(27);

  MEMORY[0x23EE6B750](*(v1 + OBJC_IVAR___DeviceInfo_name), *(v1 + OBJC_IVAR___DeviceInfo_name + 8));
  MEMORY[0x23EE6B750](0xD000000000000011, 0x800000023898BDD0);
  MEMORY[0x23EE6B750](*(v1 + OBJC_IVAR___DeviceInfo_symbol), *(v1 + OBJC_IVAR___DeviceInfo_symbol + 8));
  return 0x203A656D614ELL;
}

id GameSyncedDirectoryResponse.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t lazy protocol witness table accessor for type GetSyncedDirectoryMode and conformance GetSyncedDirectoryMode()
{
  result = lazy protocol witness table cache variable for type GetSyncedDirectoryMode and conformance GetSyncedDirectoryMode;
  if (!lazy protocol witness table cache variable for type GetSyncedDirectoryMode and conformance GetSyncedDirectoryMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GetSyncedDirectoryMode and conformance GetSyncedDirectoryMode);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GameSaveError and conformance GameSaveError()
{
  result = lazy protocol witness table cache variable for type GameSaveError and conformance GameSaveError;
  if (!lazy protocol witness table cache variable for type GameSaveError and conformance GameSaveError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GameSaveError and conformance GameSaveError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GameSaveError and conformance GameSaveError;
  if (!lazy protocol witness table cache variable for type GameSaveError and conformance GameSaveError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GameSaveError and conformance GameSaveError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GameSaveError and conformance GameSaveError;
  if (!lazy protocol witness table cache variable for type GameSaveError and conformance GameSaveError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GameSaveError and conformance GameSaveError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GameSaveError and conformance GameSaveError;
  if (!lazy protocol witness table cache variable for type GameSaveError and conformance GameSaveError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GameSaveError and conformance GameSaveError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Int32 and conformance Int32()
{
  result = lazy protocol witness table cache variable for type Int32 and conformance Int32;
  if (!lazy protocol witness table cache variable for type Int32 and conformance Int32)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int32 and conformance Int32);
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  v3 = *(v1 + 40);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;
      if (v7 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v9 == v10)
      {
        break;
      }

      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_8GameSave0cD15SyncedDirectoryCTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS8GameSave0cD15SyncedDirectoryCGMd, &_ss18_DictionaryStorageCySS8GameSave0cD15SyncedDirectoryCGMR);
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObjectCTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSo8NSObjectCGMd, &_ss18_DictionaryStorageCySSSo8NSObjectCGMR);
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of (String, Any)(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = outlined init with take of Any(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t outlined init with copy of (String, Any)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, _sSS_yptMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t specialized GetSyncedDirectoryMode.init(rawValue:)(unint64_t result)
{
  if (result == 255)
  {
    v1 = 255;
  }

  else
  {
    v1 = 0;
  }

  if (result >= 3)
  {
    return v1;
  }

  return result;
}

id specialized GameSyncedDirectoryResponse.init(coder:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for UIAlertController(0, &lazy cache variable for type metadata for NSURL, 0x277CBEBC0);
  result = NSCoder.decodeObject<A>(of:forKey:)();
  if (!result)
  {
    __break(1u);
    goto LABEL_20;
  }

  v11 = result;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v6 + 32))(&v2[OBJC_IVAR___GameSyncedDirectoryResponse_directoryURL], v9, v5);
  type metadata accessor for UIAlertController(0, &lazy cache variable for type metadata for NSSecurityScopedURLWrapper, 0x277CCAC90);
  result = NSCoder.decodeObject<A>(of:forKey:)();
  if (!result)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    return result;
  }

  *&v2[OBJC_IVAR___GameSyncedDirectoryResponse_gameSavedDataFolderURL] = result;
  v12 = MEMORY[0x23EE6B6E0](0x656E696C6E4F7369, 0xE800000000000000);
  v13 = [a1 decodeBoolForKey_];

  v2[OBJC_IVAR___GameSyncedDirectoryResponse_isOnline] = v13;
  v14 = MEMORY[0x23EE6B6E0](0xD000000000000014, 0x800000023898CB90);
  v15 = [a1 containsValueForKey_];

  if (v15)
  {
    type metadata accessor for UIAlertController(0, &lazy cache variable for type metadata for NSString, 0x277CCACA8);
    v16 = NSCoder.decodeObject<A>(of:forKey:)();
    if (v16)
    {
      v34 = 0;
      v35 = 0;
      v17 = v16;
      static String._conditionallyBridgeFromObjectiveC(_:result:)();

      v19 = v34;
      v18 = v35;
      if (!v35)
      {
        v19 = 0;
      }
    }

    else
    {
      v19 = 0;
      v18 = 0;
    }

    v21 = &v2[OBJC_IVAR___GameSyncedDirectoryResponse_lastEditorDeviceName];
    *v21 = v19;
    v21[1] = v18;
  }

  else
  {
    v20 = &v2[OBJC_IVAR___GameSyncedDirectoryResponse_lastEditorDeviceName];
    *v20 = 0;
    v20[1] = 0;
  }

  v22 = MEMORY[0x23EE6B6E0](0xD000000000000011, 0x800000023898CBB0);
  v23 = [a1 containsValueForKey_];

  if (v23)
  {
    v24 = MEMORY[0x23EE6B6E0](0xD000000000000011, 0x800000023898CBB0);
    v25 = [a1 decodeIntegerForKey_];
  }

  else
  {
    v25 = 0;
  }

  v26 = &v2[OBJC_IVAR___GameSyncedDirectoryResponse_numberOfConflicts];
  *v26 = v25;
  v26[8] = v23 ^ 1;
  type metadata accessor for UIAlertController(0, &lazy cache variable for type metadata for NSString, 0x277CCACA8);
  result = NSCoder.decodeObject<A>(of:forKey:)();
  if (!result)
  {
    goto LABEL_21;
  }

  v27 = result;
  v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v29;

  v31 = &v2[OBJC_IVAR___GameSyncedDirectoryResponse_directorySandboxExtension];
  *v31 = v28;
  v31[1] = v30;
  v32 = MEMORY[0x23EE6B6E0](0x73656369766564, 0xE700000000000000);
  LODWORD(v28) = [a1 containsValueForKey_];

  if (v28)
  {
    type metadata accessor for DeviceInfo();
    v33 = NSCoder.decodeArrayOfObjects<A>(ofClass:forKey:)();
  }

  else
  {
    v33 = 0;
  }

  *&v2[OBJC_IVAR___GameSyncedDirectoryResponse_devices] = v33;
  v36.receiver = v2;
  v36.super_class = ObjectType;
  return objc_msgSendSuper2(&v36, sel_init);
}

id specialized GameSyncedDirectoryRequest.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = MEMORY[0x23EE6B6E0](1701080941, 0xE400000000000000);
  v5 = [a1 decodeIntegerForKey_];

  if (v5 == 255)
  {
    v6 = 255;
  }

  else
  {
    v6 = 0;
  }

  if (v5 < 3)
  {
    v6 = v5;
  }

  *&v2[OBJC_IVAR___GameSyncedDirectoryRequest_mode] = v6;
  type metadata accessor for UIAlertController(0, &lazy cache variable for type metadata for NSString, 0x277CCACA8);
  result = NSCoder.decodeObject<A>(of:forKey:)();
  if (result)
  {
    v8 = result;
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12 = &v2[OBJC_IVAR___GameSyncedDirectoryRequest_containerIdentifier];
    *v12 = v9;
    v12[1] = v11;
    v13.receiver = v2;
    v13.super_class = type metadata accessor for GameSyncedDirectoryRequest();
    return objc_msgSendSuper2(&v13, sel_init);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id specialized DeviceInfo.init(coder:)()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  type metadata accessor for UIAlertController(0, &lazy cache variable for type metadata for NSString, 0x277CCACA8);
  result = NSCoder.decodeObject<A>(of:forKey:)();
  if (result)
  {
    v4 = result;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    v8 = &v0[OBJC_IVAR___DeviceInfo_name];
    *v8 = v5;
    v8[1] = v7;
    result = NSCoder.decodeObject<A>(of:forKey:)();
    if (result)
    {
      v9 = result;
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;

      v13 = &v1[OBJC_IVAR___DeviceInfo_symbol];
      *v13 = v10;
      v13[1] = v12;
      v14.receiver = v1;
      v14.super_class = ObjectType;
      return objc_msgSendSuper2(&v14, sel_init);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type URL and conformance URL()
{
  result = lazy protocol witness table cache variable for type URL and conformance URL;
  if (!lazy protocol witness table cache variable for type URL and conformance URL)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URL and conformance URL);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GameSaveError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for GameSaveError(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed () -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

id GameSyncedDirectoryHolder.init()()
{
  v1 = OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_presentedItemURL;
  v2 = type metadata accessor for URL();
  v3 = *(*(v2 - 8) + 56);
  v3(&v0[v1], 1, 1, v2);
  v0[OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_allowReaders] = 0;
  v0[OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_isAppInBackground] = 0;
  v3(&v0[OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_securityScopedURL], 1, 1, v2);
  v0[OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_shouldStopAccessingSecurityScopedResource] = 0;
  v4 = OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_lock;
  *&v0[v4] = [objc_allocWithZone(MEMORY[0x277CCAC60]) init];
  v0[OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_gainedVersionCalled] = 0;
  v5 = OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_gainedVersionContinuation;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
  (*(*(v6 - 8) + 56))(&v0[v5], 1, 1, v6);
  v7 = MEMORY[0x277D84F90];
  *&v0[OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_coordinationReaderCallers] = MEMORY[0x277D84F90];
  *&v0[OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_coordinationWriterCallers] = v7;
  v8 = [objc_allocWithZone(MEMORY[0x277CCABD8]) init];
  *&v0[OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_presentedItemOperationQueue] = v8;
  [v8 setMaxConcurrentOperationCount_];
  v11.receiver = v0;
  v11.super_class = type metadata accessor for GameSyncedDirectoryHolder();
  v9 = objc_msgSendSuper2(&v11, sel_init);
  GameSyncedDirectoryHolder.startMonitoringApplicationActivity()();

  return v9;
}

id GameSyncedDirectoryHolder.__deallocating_deinit()
{
  GameSyncedDirectoryHolder.stopMonitoringApplicationActivity()();
  GameSyncedDirectoryHolder.stopHoldingItem()();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GameSyncedDirectoryHolder();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for GameSyncedDirectoryHolder()
{
  result = type metadata singleton initialization cache for GameSyncedDirectoryHolder;
  if (!type metadata singleton initialization cache for GameSyncedDirectoryHolder)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void GameSyncedDirectoryHolder.stopMonitoringApplicationActivity()()
{
  v1 = *MEMORY[0x277D76768];
  v2 = *MEMORY[0x277D76758];
  v3 = objc_opt_self();
  v7 = v1;
  v4 = v2;
  v5 = [v3 defaultCenter];
  [v5 removeObserver:v0 name:v7 object:0];
  v6 = v4;
  [v5 removeObserver:v0 name:v6 object:0];
}

void GameSyncedDirectoryHolder.startMonitoringApplicationActivity()()
{
  v1 = *MEMORY[0x277D76768];
  v2 = *MEMORY[0x277D76758];
  v3 = objc_opt_self();
  v7 = v1;
  v4 = v2;
  v5 = [v3 defaultCenter];
  [v5 addObserver:v0 selector:sel__willResignActiveNotificationWithNotif_ name:v7 object:0];
  v6 = v4;
  [v5 addObserver:v0 selector:sel__willEnterForegroundNotificationWithNotif_ name:v6 object:0];
}

uint64_t GameSyncedDirectoryHolder._willResignActiveNotification(notif:)()
{
  v1 = v0;
  if (one-time initialization token for common != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.common);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_238952000, v3, v4, "Application willResignActiveNotification", v5, 2u);
    MEMORY[0x23EE6C260](v5, -1, -1);
  }

  v6 = *(v1 + OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_lock);
  [v6 lock];
  *(v1 + OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_isAppInBackground) = 1;
  [v6 unlock];
  [v6 lock];
  v7 = *(v1 + OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_coordinationReaderCallers);
  *(v1 + OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_coordinationReaderCallers) = MEMORY[0x277D84F90];
  [v6 unlock];
  specialized GameSyncedDirectoryHolder._drainCoordinationCallers(type:callers:wait:)(0x726564616572, 0xE600000000000000, v7, 0);
}

id GameSyncedDirectoryHolder._willEnterForegroundNotification(notif:)()
{
  v1 = v0;
  if (one-time initialization token for common != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.common);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_238952000, v3, v4, "Application willEnterForegroundNotification", v5, 2u);
    MEMORY[0x23EE6C260](v5, -1, -1);
  }

  v6 = *(v1 + OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_lock);
  [v6 lock];
  *(v1 + OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_isAppInBackground) = 0;

  return [v6 unlock];
}

uint64_t @objc GameSyncedDirectoryHolder._willResignActiveNotification(notif:)(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v6 = type metadata accessor for Notification();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = a1;
  a4();

  return (*(v7 + 8))(v10, v6);
}

uint64_t closure #1 in GameSyncedDirectoryHolder.stopAccessingSecurityScopedResource()(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v13 - v4;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_securityScopedURL;
  outlined init with copy of URL?(a1 + OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_securityScopedURL, v5, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    outlined destroy of URL?(v5, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
    if (*(a1 + OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_shouldStopAccessingSecurityScopedResource) == 1)
    {
      URL.stopAccessingSecurityScopedResource()();
    }

    (*(v7 + 8))(v10, v6);
  }

  outlined destroy of URL?(a1 + v11, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  return (*(v7 + 56))(a1 + v11, 1, 1, v6);
}

uint64_t closure #1 in GameSyncedDirectoryHolder.startHoldingItem(at:)(uint64_t a1, char *a2)
{
  v54 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v50 - v5;
  v7 = type metadata accessor for URLResourceValues();
  v55 = *(v7 - 8);
  v56 = v7;
  v8 = *(v55 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v50 - v18;
  v57 = OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_presentedItemURL;
  v58 = a1;
  outlined init with copy of URL?(a1 + OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_presentedItemURL, &v50 - v18, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  LODWORD(a1) = (*(v12 + 48))(v19, 1, v11);
  result = outlined destroy of URL?(v19, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if (a1 == 1)
  {
    v53 = v12;
    v21 = *(v12 + 16);
    v22 = v54;
    v54 = (v12 + 16);
    v52 = v21;
    v21(v15, v22, v11);
    URLResourceValues.init()();
    Date.init()();
    v23 = type metadata accessor for Date();
    (*(*(v23 - 8) + 56))(v6, 0, 1, v23);
    URLResourceValues.contentAccessDate.setter();
    v24 = v59;
    URL.setResourceValues(_:)();
    v25 = v24;
    v26 = v11;
    v27 = v15;
    if (v24)
    {

      v25 = 0;
    }

    (*(v55 + 8))(v10, v56);
    if (one-time initialization token for common != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    __swift_project_value_buffer(v28, static Logger.common);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v59 = v25;
      v32 = v31;
      v33 = swift_slowAlloc();
      v60 = v33;
      *v32 = 136315138;
      lazy protocol witness table accessor for type URL and conformance URL();
      v34 = dispatch thunk of CustomStringConvertible.description.getter();
      v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v35, &v60);

      *(v32 + 4) = v36;
      v27 = v15;
      _os_log_impl(&dword_238952000, v29, v30, "Starting to hold item at %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v33);
      v37 = v33;
      v26 = v11;
      MEMORY[0x23EE6C260](v37, -1, -1);
      MEMORY[0x23EE6C260](v32, -1, -1);
    }

    v38 = v53;
    v40 = v57;
    v39 = v58;
    outlined destroy of URL?(v58 + v57, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v52(v39 + v40, v27, v26);
    (*(v38 + 56))(v39 + v40, 0, 1, v26);
    [objc_opt_self() addFilePresenter_];
    v41 = v27;
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v51 = v26;
      v46 = v45;
      v60 = v45;
      *v44 = 136315138;
      lazy protocol witness table accessor for type URL and conformance URL();
      v47 = dispatch thunk of CustomStringConvertible.description.getter();
      v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v48, &v60);

      *(v44 + 4) = v49;
      _os_log_impl(&dword_238952000, v42, v43, "Started holding item at %s", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v46);
      MEMORY[0x23EE6C260](v46, -1, -1);
      MEMORY[0x23EE6C260](v44, -1, -1);

      return (*(v38 + 8))(v41, v51);
    }

    else
    {

      return (*(v38 + 8))(v41, v26);
    }
  }

  return result;
}

Swift::Void __swiftcall GameSyncedDirectoryHolder.stopHoldingItem()()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v60 = *(v2 - 8);
  v3 = v60;
  v4 = *(v60 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v58 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v57 = &v52 - v8;
  MEMORY[0x28223BE20](v7);
  v59 = &v52 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v52 - v15;
  v17 = *(v3 + 56);
  v17(&v52 - v15, 1, 1, v2);
  v18 = *(v1 + OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_lock);
  [v18 lock];
  outlined destroy of URL?(v16, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v19 = OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_presentedItemURL;
  outlined init with take of URL?(v1 + OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_presentedItemURL, v16);
  v17((v1 + v19), 1, 1, v2);
  [v18 unlock];
  [v18 lock];
  v20 = *(v1 + OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_coordinationReaderCallers);
  v21 = MEMORY[0x277D84F90];
  *(v1 + OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_coordinationReaderCallers) = MEMORY[0x277D84F90];
  [v18 unlock];
  specialized GameSyncedDirectoryHolder._drainCoordinationCallers(type:callers:wait:)(0x726564616572, 0xE600000000000000, v20, 0);

  [v18 lock];
  v22 = *(v1 + OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_coordinationWriterCallers);
  *(v1 + OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_coordinationWriterCallers) = v21;
  v23 = v60;
  [v18 unlock];
  specialized GameSyncedDirectoryHolder._drainCoordinationCallers(type:callers:wait:)(0x726574697277, 0xE600000000000000, v22, 0);

  outlined init with copy of URL?(v16, v14, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if ((*(v23 + 48))(v14, 1, v2) == 1)
  {
    outlined destroy of URL?(v16, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v24 = v14;
  }

  else
  {
    v25 = v59;
    (*(v23 + 32))(v59, v14, v2);
    if (one-time initialization token for common != -1)
    {
      swift_once();
    }

    v56 = v16;
    v26 = type metadata accessor for Logger();
    v27 = __swift_project_value_buffer(v26, static Logger.common);
    v28 = v57;
    v54 = *(v23 + 16);
    v54(v57, v25, v2);
    v55 = v27;
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = v28;
      v53 = swift_slowAlloc();
      v61 = v53;
      *v31 = 136315138;
      lazy protocol witness table accessor for type URL and conformance URL();
      v33 = dispatch thunk of CustomStringConvertible.description.getter();
      v34 = v23;
      v36 = v35;
      v37 = *(v34 + 8);
      v37(v32, v2);
      v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v36, &v61);

      *(v31 + 4) = v38;
      _os_log_impl(&dword_238952000, v29, v30, "Stopping holding item at %s.", v31, 0xCu);
      v39 = v53;
      __swift_destroy_boxed_opaque_existential_0(v53);
      MEMORY[0x23EE6C260](v39, -1, -1);
      v40 = v31;
      v25 = v59;
      MEMORY[0x23EE6C260](v40, -1, -1);
    }

    else
    {

      v37 = *(v23 + 8);
      v37(v28, v2);
    }

    v41 = v58;
    [objc_opt_self() removeFilePresenter_];
    v54(v41, v25, v2);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = v25;
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v61 = v46;
      *v45 = 136315138;
      lazy protocol witness table accessor for type URL and conformance URL();
      v47 = dispatch thunk of CustomStringConvertible.description.getter();
      v48 = v41;
      v50 = v49;
      v37(v48, v2);
      v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v50, &v61);

      *(v45 + 4) = v51;
      _os_log_impl(&dword_238952000, v42, v43, "Stopped holding item at %s", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v46);
      MEMORY[0x23EE6C260](v46, -1, -1);
      MEMORY[0x23EE6C260](v45, -1, -1);

      v37(v44, v2);
    }

    else
    {

      v37(v41, v2);
      v37(v25, v2);
    }

    v24 = v56;
  }

  outlined destroy of URL?(v24, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
}

uint64_t GameSyncedDirectoryHolder.allowReaders(for:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR) - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v6 = type metadata accessor for URL();
  v3[7] = v6;
  v7 = *(v6 - 8);
  v3[8] = v7;
  v3[9] = *(v7 + 64);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](GameSyncedDirectoryHolder.allowReaders(for:), 0, 0);
}

uint64_t GameSyncedDirectoryHolder.allowReaders(for:)()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];
  outlined init with copy of URL?(v0[4] + OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_presentedItemURL, v3, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    outlined destroy of URL?(v0[6], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v5 = v0[10];
    v4 = v0[11];
    v7 = v0[5];
    v6 = v0[6];

    v8 = v0[1];

    return v8(0);
  }

  else
  {
    v10 = v0[10];
    v11 = v0[11];
    v13 = v0[8];
    v12 = v0[9];
    v14 = v0[7];
    v16 = v0[4];
    v15 = v0[5];
    v29 = v0[3];
    v28 = v0[2];
    v17 = *(v13 + 32);
    v17(v11, v0[6], v14);
    v18 = type metadata accessor for TaskPriority();
    (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
    (*(v13 + 16))(v10, v11, v14);
    v19 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v20 = (v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
    v21 = swift_allocObject();
    *(v21 + 16) = 0;
    *(v21 + 24) = 0;
    v17(v21 + v19, v10, v14);
    v22 = (v21 + v20);
    *v22 = v28;
    v22[1] = v29;
    *(v21 + ((v20 + 23) & 0xFFFFFFFFFFFFFFF8)) = v16;
    v23 = v16;
    v24 = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCSb_Tt2g5(0, 0, v15, &async function pointer to partial apply for closure #1 in GameSyncedDirectoryHolder.allowReaders(for:), v21);
    v0[12] = v24;
    v25 = *(MEMORY[0x277D857E0] + 4);
    v26 = swift_task_alloc();
    v0[13] = v26;
    *v26 = v0;
    v26[1] = GameSyncedDirectoryHolder.allowReaders(for:);
    v27 = MEMORY[0x277D839B0];

    return MEMORY[0x282200460](v0 + 14, v24, v27);
  }
}

{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 96);
  v4 = *v0;

  return MEMORY[0x2822009F8](GameSyncedDirectoryHolder.allowReaders(for:), 0, 0);
}

{
  (*(*(v0 + 64) + 8))(*(v0 + 88), *(v0 + 56));
  v1 = *(v0 + 112);
  v3 = *(v0 + 80);
  v2 = *(v0 + 88);
  v5 = *(v0 + 40);
  v4 = *(v0 + 48);

  v6 = *(v0 + 8);

  return v6(v1);
}

uint64_t closure #1 in GameSyncedDirectoryHolder.allowReaders(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v7[7] = swift_task_alloc();
  v9 = type metadata accessor for URL();
  v7[8] = v9;
  v10 = *(v9 - 8);
  v7[9] = v10;
  v11 = *(v10 + 64) + 15;
  v7[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in GameSyncedDirectoryHolder.allowReaders(for:), 0, 0);
}

uint64_t closure #1 in GameSyncedDirectoryHolder.allowReaders(for:)()
{
  v1 = v0[10];
  v2 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  (*(v0[9] + 16))(v1, v0[3], v0[8]);
  v5 = type metadata accessor for BundleUpdatesWaiter();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  v8 = BundleUpdatesWaiter.init(bundleURL:)(v1);
  v0[11] = v8;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v2, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v4;
  v10[5] = v3;
  v10[6] = v8;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v2, &async function pointer to partial apply for closure #1 in BundleUpdatesWaiter.waitForGatherComplete(duration:), v10);

  v11 = *(MEMORY[0x277D859E0] + 4);
  v12 = swift_task_alloc();
  v0[12] = v12;
  *v12 = v0;
  v12[1] = closure #1 in GameSyncedDirectoryHolder.allowReaders(for:);
  v13 = MEMORY[0x277D839B0];

  return MEMORY[0x2822007B8](v0 + 15, 0, 0, 0xD000000000000020, 0x800000023898CF60, partial apply for closure #2 in BundleUpdatesWaiter.waitForGatherComplete(duration:), v8, v13);
}

{
  v1 = *(*v0 + 96);
  v3 = *v0;

  return MEMORY[0x2822009F8](closure #1 in GameSyncedDirectoryHolder.allowReaders(for:), 0, 0);
}

{
  if (*(v0 + 120) == 1)
  {
    v2 = *(v0 + 40);
    v1 = *(v0 + 48);
    v3 = *(v0 + 32);
    v4 = *(v1 + OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_lock);
    *(v0 + 104) = v4;
    [v4 lock];
    closure #1 in closure #1 in GameSyncedDirectoryHolder.allowReaders(for:)(v3, v2, v1);
    v15 = *(v0 + 48);
    [v4 unlock];
    [v4 lock];
    v16 = *(v15 + OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_coordinationReaderCallers);
    *(v15 + OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_coordinationReaderCallers) = MEMORY[0x277D84F90];
    [v4 unlock];
    specialized GameSyncedDirectoryHolder._drainCoordinationCallers(type:callers:wait:)(0x726564616572, 0xE600000000000000, v16, 1);

    v17 = swift_task_alloc();
    *(v0 + 112) = v17;
    *v17 = v0;
    v17[1] = closure #1 in GameSyncedDirectoryHolder.allowReaders(for:);
    v18 = *(v0 + 88);
    v20 = *(v0 + 32);
    v19 = *(v0 + 40);

    return BundleUpdatesWaiter.waitForUploadToStart(duration:)(v20, v19);
  }

  else
  {
    if (one-time initialization token for common != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logger.common);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 88);
    if (v8)
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_238952000, v6, v7, "Failed to wait for gather complete", v10, 2u);
      MEMORY[0x23EE6C260](v10, -1, -1);
    }

    v11 = *(v0 + 80);
    v12 = *(v0 + 56);
    **(v0 + 16) = 0;

    v13 = *(v0 + 8);

    return v13();
  }
}

{
  v1 = *(v0 + 48);
  [*(v0 + 104) lock];
  *(v1 + OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_allowReaders) = 0;
  if (one-time initialization token for common != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.common);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 121);
    v6 = swift_slowAlloc();
    *v6 = 67109120;
    *(v6 + 4) = v5;
    _os_log_impl(&dword_238952000, v3, v4, "Allowed readers. startedUploading: %{BOOL}d", v6, 8u);
    MEMORY[0x23EE6C260](v6, -1, -1);
  }

  v7 = *(v0 + 121);
  v8 = *(v0 + 104);
  v9 = *(v0 + 88);

  [v8 unlock];

  v10 = *(v0 + 80);
  v11 = *(v0 + 56);
  **(v0 + 16) = v7;

  v12 = *(v0 + 8);

  return v12();
}

uint64_t closure #1 in GameSyncedDirectoryHolder.allowReaders(for:)(char a1)
{
  v2 = *(*v1 + 112);
  v4 = *v1;
  *(*v1 + 121) = a1;

  return MEMORY[0x2822009F8](closure #1 in GameSyncedDirectoryHolder.allowReaders(for:), 0, 0);
}

void closure #1 in closure #1 in GameSyncedDirectoryHolder.allowReaders(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (one-time initialization token for common != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.common);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v7 = 136315138;
    v9 = Duration.description.getter();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v12);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_238952000, v5, v6, "Allowing readers for %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x23EE6C260](v8, -1, -1);
    MEMORY[0x23EE6C260](v7, -1, -1);
  }

  *(a3 + OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_allowReaders) = 1;
}

uint64_t _sIeg_SgIeghg_xRi_zRi0_zlyytIsegr_SgytIeghnr_TR(uint64_t *a1, void (*a2)(uint64_t (*)(), uint64_t))
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed () -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  outlined copy of (@escaping @callee_guaranteed () -> ())?(v3);
  a2(v6, v5);

  return outlined consume of (@escaping @callee_guaranteed (@in_guaranteed GameSaveSyncedDirectory.State) -> ())?(v6);
}

void thunk for @escaping @callee_unowned @convention(block) @Sendable (@unowned (@escaping @callee_unowned @convention(block) () -> ())?) -> ()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5[4] = a1;
    v5[5] = a2;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 1107296256;
    v5[2] = thunk for @escaping @callee_guaranteed () -> ();
    v5[3] = &block_descriptor_0;
    v4 = _Block_copy(v5);
  }

  else
  {
    v4 = 0;
  }

  (*(a3 + 16))(a3, v4);
  _Block_release(v4);
}

uint64_t closure #1 in GameSyncedDirectoryHolder.relinquishPresentedItem(toReader:)(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v40 = a3;
  v41 = a4;
  v39 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v36 - v7;
  v9 = type metadata accessor for URLResourceValues();
  v37 = *(v9 - 8);
  v38 = v9;
  v10 = *(v37 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v36 - v15;
  v17 = type metadata accessor for URL();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of URL?(a1 + OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_presentedItemURL, v16, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    result = outlined destroy of URL?(v16, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    *v41 = 1;
  }

  else
  {
    v23 = v41;
    (*(v18 + 32))(v21, v16, v17);
    if (*(a1 + OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_isAppInBackground) & 1) != 0 || (v24 = a1, (*(a1 + OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_allowReaders)))
    {
      result = (*(v18 + 8))(v21, v17);
      *v23 = 1;
    }

    else
    {
      URLResourceValues.init()();
      Date.init()();
      v25 = type metadata accessor for Date();
      (*(*(v25 - 8) + 56))(v8, 0, 1, v25);
      URLResourceValues.contentModificationDate.setter();
      URLResourceValues.contentModificationDate.getter();
      URLResourceValues.contentAccessDate.setter();
      v26 = v42;
      URL.setResourceValues(_:)();
      if (v26)
      {
      }

      v42 = 0;
      (*(v37 + 8))(v12, v38);
      v27 = swift_allocObject();
      *(v27 + 16) = v39;
      *(v27 + 24) = v40;
      v28 = OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_coordinationReaderCallers;
      v29 = *(v24 + OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_coordinationReaderCallers);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v24 + v28) = v29;
      if (isUniquelyReferenced_nonNull_native)
      {
        v31 = v24;
      }

      else
      {
        v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v29[2] + 1, 1, v29);
        v31 = v24;
        *(v24 + v28) = v29;
      }

      v33 = v29[2];
      v32 = v29[3];
      if (v33 >= v32 >> 1)
      {
        *(v31 + v28) = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1, v29);
      }

      result = (*(v18 + 8))(v21, v17);
      v34 = *(v31 + v28);
      *(v34 + 16) = v33 + 1;
      v35 = v34 + 16 * v33;
      *(v35 + 32) = _sIeg_SgIeghg_xRi_zRi0_zlyytIsegr_SgytIeghnr_TRTA;
      *(v35 + 40) = v27;
      *(v31 + v28) = v34;
    }
  }

  return result;
}

void @objc GameSyncedDirectoryHolder.relinquishPresentedItem(toWriter:)(void *a1, int a2, void *aBlock, void (*a4)(void))
{
  v6 = _Block_copy(aBlock);
  _Block_copy(v6);
  v7 = a1;
  a4();
  _Block_release(v6);
  _Block_release(v6);
}

uint64_t GameSyncedDirectoryHolder.savePresentedItemChanges()()
{
  v1[2] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v3 = type metadata accessor for URLResourceValues();
  v1[4] = v3;
  v4 = *(v3 - 8);
  v1[5] = v4;
  v5 = *(v4 + 64) + 15;
  v1[6] = swift_task_alloc();
  v6 = type metadata accessor for URL();
  v1[7] = v6;
  v7 = *(v6 - 8);
  v1[8] = v7;
  v8 = *(v7 + 64) + 15;
  v1[9] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR) - 8) + 64) + 15;
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](GameSyncedDirectoryHolder.savePresentedItemChanges(), 0, 0);
}

{
  v1 = v0;
  v3 = v0[11];
  v2 = v0 + 11;
  v4 = *(v2 - 1);
  v5 = *(v2 - 4);
  v6 = *(v2 - 3);
  v7 = *(v2 - 9);
  (*(v6 + 56))(v3, 1, 1, v5);
  v8 = *(v7 + OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_lock);
  [v8 lock];
  outlined destroy of URL?(v3, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  outlined init with copy of URL?(v7 + OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_presentedItemURL, v3, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  [v8 unlock];
  outlined init with copy of URL?(v3, v4, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    outlined destroy of URL?(*v2--, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  }

  else
  {
    (*(v1[8] + 32))(v1[9], v1[10], v1[7]);
    if (one-time initialization token for common != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logger.common);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_238952000, v10, v11, "savePresentedItemChanges: touching bundle", v12, 2u);
      MEMORY[0x23EE6C260](v12, -1, -1);
    }

    v13 = v1[9];
    v14 = v1[6];
    v15 = v1[3];

    URLResourceValues.init()();
    Date.init()();
    v16 = type metadata accessor for Date();
    (*(*(v16 - 8) + 56))(v15, 0, 1, v16);
    URLResourceValues.contentModificationDate.setter();
    URLResourceValues.contentModificationDate.getter();
    URLResourceValues.contentAccessDate.setter();
    URL.setResourceValues(_:)();
    v18 = v1[8];
    v17 = v1[9];
    v19 = v1[7];
    (*(v1[5] + 8))(v1[6], v1[4]);
    (*(v18 + 8))(v17, v19);
  }

  v20 = *v2;
  v21 = v1[10];
  v22 = v1[11];
  v23 = v1[9];
  v24 = v1[6];
  v25 = v1[3];
  outlined destroy of URL?(v20, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);

  v26 = v1[1];

  return v26();
}

uint64_t @objc closure #1 in GameSyncedDirectoryHolder.savePresentedItemChanges()(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = @objc closure #1 in GameSyncedDirectoryHolder.savePresentedItemChanges();

  return GameSyncedDirectoryHolder.savePresentedItemChanges()();
}

uint64_t @objc closure #1 in GameSyncedDirectoryHolder.savePresentedItemChanges()()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 16);
  v7 = *v1;

  v8 = *(v3 + 24);
  if (v2)
  {
    v9 = _convertErrorToNSError(_:)();

    (*(v8 + 16))(v8, v9);
  }

  else
  {
    (*(v8 + 16))(v8, 0);
  }

  _Block_release(*(v4 + 24));
  v10 = *(v7 + 8);

  return v10();
}

Swift::Void __swiftcall GameSyncedDirectoryHolder.presentedItemDidGain(_:)(NSFileVersion a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGSgMd, &_sScCyyts5NeverOGSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v22 - v11;
  if (one-time initialization token for common != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Logger.common);
  v14 = a1.super.isa;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 138412290;
    *(v17 + 4) = v14;
    *v18 = v14;
    v19 = v14;
    _os_log_impl(&dword_238952000, v15, v16, "Item gained version %@", v17, 0xCu);
    outlined destroy of URL?(v18, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x23EE6C260](v18, -1, -1);
    MEMORY[0x23EE6C260](v17, -1, -1);
  }

  v20 = *(v2 + OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_lock);
  [v20 lock];
  v21 = OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_gainedVersionContinuation;
  outlined init with copy of URL?(v2 + OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_gainedVersionContinuation, v7, &_sScCyyts5NeverOGSgMd, &_sScCyyts5NeverOGSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of URL?(v7, &_sScCyyts5NeverOGSgMd, &_sScCyyts5NeverOGSgMR);
    *(v2 + OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_gainedVersionCalled) = 1;
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
    CheckedContinuation.resume(returning:)();
    (*(v9 + 8))(v12, v8);
  }

  outlined destroy of URL?(v2 + v21, &_sScCyyts5NeverOGSgMd, &_sScCyyts5NeverOGSgMR);
  (*(v9 + 56))(v2 + v21, 1, 1, v8);
  [v20 unlock];
}

void type metadata completion function for GameSyncedDirectoryHolder()
{
  type metadata accessor for URL?();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    type metadata accessor for CheckedContinuation<(), Never>?();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t GameSyncedDirectoryHolder.waitForGainedVersion()()
{
  *(v1 + 16) = v0;
  return MEMORY[0x2822009F8](GameSyncedDirectoryHolder.waitForGainedVersion(), 0, 0);
}

{
  if (one-time initialization token for common != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.common);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_238952000, v2, v3, "Waiting for gained version", v4, 2u);
    MEMORY[0x23EE6C260](v4, -1, -1);
  }

  v5 = v0[2];

  v6 = swift_task_alloc();
  v0[3] = v6;
  *(v6 + 16) = v5;
  v7 = *(MEMORY[0x277D859E0] + 4);
  v8 = swift_task_alloc();
  v0[4] = v8;
  *v8 = v0;
  v8[1] = GameSaveSyncedDirectory._waitForDirectorySync(ui:);

  return MEMORY[0x2822007B8]();
}

void type metadata accessor for URL?()
{
  if (!lazy cache variable for type metadata for URL?)
  {
    type metadata accessor for URL();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for URL?);
    }
  }
}

void type metadata accessor for CheckedContinuation<(), Never>?()
{
  if (!lazy cache variable for type metadata for CheckedContinuation<(), Never>?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CheckedContinuation<(), Never>?);
    }
  }
}

id closure #1 in GameSyncedDirectoryHolder.waitForGainedVersion()(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_lock);
  [v4 lock];
  if (*(a2 + OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_gainedVersionCalled) == 1)
  {
    *(a2 + OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_gainedVersionCalled) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
    CheckedContinuation.resume(returning:)();
  }

  else
  {
    v5 = OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_gainedVersionContinuation;
    outlined destroy of URL?(a2 + OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_gainedVersionContinuation, &_sScCyyts5NeverOGSgMd, &_sScCyyts5NeverOGSgMR);
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
    v7 = *(v6 - 8);
    (*(v7 + 16))(a2 + v5, a1, v6);
    (*(v7 + 56))(a2 + v5, 0, 1, v6);
  }

  return [v4 unlock];
}

uint64_t _sIeghH_IeAgH_TR(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = GameSaveSyncedDirectory.finishSyncing();

  return v7();
}

uint64_t _sIeAgH_ytIeAgHr_TR(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = static GameSaveSyncedDirectory.cleanupDirectory(containerIdentifier:);

  return v8();
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v25 - v11;
  outlined init with copy of URL?(a3, v25 - v11, &_sScPSgMd, &_sScPSgMR);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    outlined destroy of URL?(v12, &_sScPSgMd, &_sScPSgMR);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  TaskPriority.rawValue.getter();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = dispatch thunk of Actor.unownedExecutor.getter();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = String.utf8CString.getter() + 32;
    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;

    if (v18 | v16)
    {
      v26[0] = 0;
      v26[1] = 0;
      v21 = v26;
      v26[2] = v16;
      v26[3] = v18;
    }

    else
    {
      v21 = 0;
    }

    v25[1] = 7;
    v25[2] = v21;
    v25[3] = v19;
    v23 = swift_task_create();

    outlined destroy of URL?(a3, &_sScPSgMd, &_sScPSgMR);

    return v23;
  }

LABEL_8:
  outlined destroy of URL?(a3, &_sScPSgMd, &_sScPSgMR);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyyycSgYbcGMd, &_ss23_ContiguousArrayStorageCyyyycSgYbcGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_syycMd, &_syycMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *closure #1 in serialize<A>(_:at:)(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

void closure #1 in OSLogArguments.append(_:)(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

void specialized GameSyncedDirectoryHolder._drainCoordinationCallers(type:callers:wait:)(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  group = dispatch_group_create();
  if (one-time initialization token for common != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.common);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  v24 = a1;
  v25 = a4;
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v27[0] = v12;
    *v11 = 136315394;
    *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v27);
    *(v11 + 12) = 2048;
    *(v11 + 14) = *(a3 + 16);

    _os_log_impl(&dword_238952000, v9, v10, "Draining %s coordination blocks %ld", v11, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x23EE6C260](v12, -1, -1);
    MEMORY[0x23EE6C260](v11, -1, -1);

    v13 = *(a3 + 16);
    if (!v13)
    {
      goto LABEL_9;
    }
  }

  else
  {

    v13 = *(a3 + 16);
    if (!v13)
    {
      goto LABEL_9;
    }
  }

  v14 = (a3 + 40);
  do
  {
    v16 = *(v14 - 1);
    v15 = *v14;

    dispatch_group_enter(group);
    v17 = swift_allocObject();
    *(v17 + 16) = group;
    v18 = swift_allocObject();
    *(v18 + 16) = partial apply for closure #1 in GameSyncedDirectoryHolder._drainCoordinationCallers(type:callers:wait:);
    *(v18 + 24) = v17;
    v27[0] = partial apply for thunk for @escaping @callee_guaranteed () -> ();
    v27[1] = v18;
    v19 = group;

    v16(v27);

    v14 += 2;
    --v13;
  }

  while (v13);
LABEL_9:
  if (v25)
  {
    OS_dispatch_group.wait()();

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v27[0] = v23;
      *v22 = 136315138;
      *(v22 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, a2, v27);
      _os_log_impl(&dword_238952000, v20, v21, "Finished draining %s coordination blocks", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x23EE6C260](v23, -1, -1);
      MEMORY[0x23EE6C260](v22, -1, -1);
    }
  }
}

uint64_t sub_238984A54()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_238984A94()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed () -> ()()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_238984AF4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t partial apply for @objc closure #1 in GameSyncedDirectoryHolder.savePresentedItemChanges()()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = GameSaveSyncedDirectory.finishSyncing();

  return @objc closure #1 in GameSyncedDirectoryHolder.savePresentedItemChanges()(v2, v3);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5TA(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = GameSaveSyncedDirectory.finishSyncing();

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v5);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5TA_64(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = static GameSaveSyncedDirectory.cleanupDirectory(containerIdentifier:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v5);
}

uint64_t specialized GameSyncedDirectoryHolder.relinquishPresentedItem(toWriter:)(uint64_t a1, void (**a2)(void, void))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - v6;
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  v9 = *(a1 + OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_lock);
  _Block_copy(a2);
  [v9 lock];
  outlined init with copy of URL?(a1 + OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_presentedItemURL, v7, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v10 = type metadata accessor for URL();
  v11 = (*(*(v10 - 8) + 48))(v7, 1, v10);
  outlined destroy of URL?(v7, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if (v11 == 1)
  {
    [v9 unlock];
    a2[2](a2, 0);
  }

  else
  {
    v12 = swift_allocObject();
    *(v12 + 16) = thunk for @escaping @callee_unowned @convention(block) @Sendable (@unowned (@escaping @callee_unowned @convention(block) () -> ())?) -> ()partial apply;
    *(v12 + 24) = v8;
    v13 = OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_coordinationWriterCallers;
    v14 = *(a1 + OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_coordinationWriterCallers);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a1 + v13) = v14;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14[2] + 1, 1, v14);
      *(a1 + v13) = v14;
    }

    v17 = v14[2];
    v16 = v14[3];
    if (v17 >= v16 >> 1)
    {
      v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v14);
    }

    v14[2] = v17 + 1;
    v18 = &v14[2 * v17];
    v18[4] = _sIeg_SgIeghg_xRi_zRi0_zlyytIsegr_SgytIeghnr_TRTA_86;
    v18[5] = v12;
    *(a1 + v13) = v14;
    [v9 unlock];
  }
}

uint64_t specialized GameSyncedDirectoryHolder.relinquishPresentedItem(toReader:)(uint64_t a1, void (**a2)(void, void))
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v7 = 0;
  v5 = *(a1 + OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_lock);
  _Block_copy(a2);
  [v5 lock];
  closure #1 in GameSyncedDirectoryHolder.relinquishPresentedItem(toReader:)(a1, partial apply for thunk for @escaping @callee_unowned @convention(block) @Sendable (@unowned (@escaping @callee_unowned @convention(block) () -> ())?) -> (), v4, &v7);
  [v5 unlock];
  if (v7)
  {
    a2[2](a2, 0);
  }
}

uint64_t sub_2389850A8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed () -> (@out ())()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t outlined assign with take of URL?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of URL?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_238985210()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t partial apply for closure #1 in GameSyncedDirectoryHolder.allowReaders(for:)(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for URL() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = (v1 + v7);
  v12 = *v11;
  v13 = v11[1];
  v14 = *(v1 + v8);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = static GameSaveSyncedDirectory.cleanupDirectory(containerIdentifier:);

  return closure #1 in GameSyncedDirectoryHolder.allowReaders(for:)(a1, v9, v10, v1 + v6, v12, v13, v14);
}

uint64_t sub_238985434()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t partial apply for closure #1 in BundleUpdatesWaiter.waitForGatherComplete(duration:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = GameSaveSyncedDirectory.finishSyncing();

  return closure #1 in BundleUpdatesWaiter.waitForGatherComplete(duration:)(a1, v4, v5, v6, v7, v8);
}

Swift::String __swiftcall NSLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String_optional tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v5 = MEMORY[0x28211C320](_._countAndFlagsBits, _._object, tableName.value._countAndFlagsBits, tableName.value._object, bundle.super.isa, value._countAndFlagsBits, value._object, comment._countAndFlagsBits);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}