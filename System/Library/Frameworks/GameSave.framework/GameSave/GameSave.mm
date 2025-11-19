uint64_t getEnumTagSinglePayload for GameSaveFF(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for GameSaveFF(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GameSaveFF and conformance GameSaveFF()
{
  result = lazy protocol witness table cache variable for type GameSaveFF and conformance GameSaveFF;
  if (!lazy protocol witness table cache variable for type GameSaveFF and conformance GameSaveFF)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GameSaveFF and conformance GameSaveFF);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GameSaveFF and conformance GameSaveFF;
  if (!lazy protocol witness table cache variable for type GameSaveFF and conformance GameSaveFF)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GameSaveFF and conformance GameSaveFF);
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance GameSaveFF()
{
  Hasher.init(_seed:)();
  MEMORY[0x23EE6BC50](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance GameSaveFF()
{
  Hasher.init(_seed:)();
  MEMORY[0x23EE6BC50](0);
  return Hasher._finalize()();
}

BOOL _sSo35NSFileManagerItemReplacementOptionsVs10SetAlgebraSCsACP6insertySb8inserted_7ElementQz17memberAfterInserttAHnFTW_0(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance NSURLResourceKey(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance NSURLResourceKey(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance NSURLResourceKey@<X0>(uint64_t *a1@<X8>)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = MEMORY[0x23EE6B6E0](v2);

  *a1 = v3;
  return result;
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance NSProgressUserInfoKey()
{
  v1 = *v0;
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = MEMORY[0x23EE6B770](v2);

  return v3;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NSProgressUserInfoKey()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NSProgressUserInfoKey()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return v2;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance NSProgressUserInfoKey(uint64_t *a1, uint64_t *a2)
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

uint64_t _sSo21NSProgressUserInfoKeyaSYSCSY8rawValue03RawF0QzvgTW_0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance NSURLResourceKey(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NSURLResourceKey and conformance NSURLResourceKey(&lazy protocol witness table cache variable for type NSURLResourceKey and conformance NSURLResourceKey, type metadata accessor for NSURLResourceKey);
  v3 = lazy protocol witness table accessor for type NSURLResourceKey and conformance NSURLResourceKey(&lazy protocol witness table cache variable for type NSURLResourceKey and conformance NSURLResourceKey, type metadata accessor for NSURLResourceKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance NSProgressUserInfoKey(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NSURLResourceKey and conformance NSURLResourceKey(&lazy protocol witness table cache variable for type NSProgressUserInfoKey and conformance NSProgressUserInfoKey, type metadata accessor for NSProgressUserInfoKey);
  v3 = lazy protocol witness table accessor for type NSURLResourceKey and conformance NSURLResourceKey(&lazy protocol witness table cache variable for type NSProgressUserInfoKey and conformance NSProgressUserInfoKey, type metadata accessor for NSProgressUserInfoKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance NSURLResourceKey@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = MEMORY[0x23EE6B6E0](*a1, a1[1]);

  *a2 = v3;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance NSKeyValueChangeKey(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NSURLResourceKey and conformance NSURLResourceKey(&lazy protocol witness table cache variable for type NSKeyValueChangeKey and conformance NSKeyValueChangeKey, type metadata accessor for NSKeyValueChangeKey);
  v3 = lazy protocol witness table accessor for type NSURLResourceKey and conformance NSURLResourceKey(&lazy protocol witness table cache variable for type NSKeyValueChangeKey and conformance NSKeyValueChangeKey, type metadata accessor for NSKeyValueChangeKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

void type metadata accessor for CFErrorRef(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t lazy protocol witness table accessor for type NSURLResourceKey and conformance NSURLResourceKey(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t specialized static EntitlementsUtils.getEntitledContainerIdentifiers(for:logger:)(__SecTask *a1)
{
  error[1] = *MEMORY[0x277D85DE8];
  error[0] = 0;
  v2 = MEMORY[0x23EE6B6E0](0xD000000000000023, 0x800000023898BCF0);
  v3 = SecTaskCopyValueForEntitlement(a1, v2, error);

  if (v3)
  {
    swift_unknownObjectRetain();
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v18[0] = 0;
      static Array._conditionallyBridgeFromObjectiveC(_:result:)();
    }

    swift_unknownObjectRelease();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_238952000, v13, v14, "Couldn't convert cloudServicesArray to Array of Strings", v15, 2u);
      MEMORY[0x23EE6C260](v15, -1, -1);
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v4 = error[0];
    v5 = error[0];
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v18[0] = v9;
      *v8 = 136315394;
      *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000023, 0x800000023898BCF0, v18);
      *(v8 + 12) = 2082;
      v18[2] = v4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo10CFErrorRefaSgMd, "j#");
      v10 = Optional.debugDescription.getter();
      v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, v18);

      *(v8 + 14) = v12;
      _os_log_impl(&dword_238952000, v6, v7, "Couldn't lookup %s: %{public}s", v8, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EE6C260](v9, -1, -1);
      MEMORY[0x23EE6C260](v8, -1, -1);
    }

    else
    {
    }
  }

  result = 0;
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
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

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance GameSaveSyncedDirectoryError()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x23EE6BC50](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance GameSaveSyncedDirectoryError()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x23EE6BC50](v1);
  return Hasher._finalize()();
}

id RemoteProgressObserver.__deallocating_deinit()
{
  v1 = *&v0[OBJC_IVAR____TtC8GameSave22RemoteProgressObserver_remoteProgress];
  v2 = v0;
  v3 = MEMORY[0x23EE6B6E0](0xD000000000000011, 0x800000023898C250);
  [v1 removeObserver:v2 forKeyPath:v3];

  v5.receiver = v2;
  v5.super_class = type metadata accessor for RemoteProgressObserver();
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

id MyObserver.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MyObserver();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t GameSaveSyncedDirectory.State.description.getter()
{
  v1 = type metadata accessor for GameSaveSyncedDirectory.State(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of GameSaveSyncedDirectory.State(v0, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        outlined destroy of GameSaveSyncedDirectory.State(v4, type metadata accessor for GameSaveSyncedDirectory.State);
        return 0x656E696C66666FLL;
      }

      else
      {
        outlined destroy of GameSaveSyncedDirectory.State(v4, type metadata accessor for GameSaveSyncedDirectory.State);
        return 0x6C61636F6CLL;
      }
    }

    else
    {
      outlined destroy of GameSaveSyncedDirectory.State(v4, type metadata accessor for GameSaveSyncedDirectory.State);
      return 0x7964616572;
    }
  }

  else if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload == 5)
    {
      return 0x676E69636E7973;
    }

    else
    {
      return 0x6465736F6C63;
    }
  }

  else if (EnumCaseMultiPayload == 3)
  {
    outlined destroy of GameSaveSyncedDirectory.State(v4, type metadata accessor for GameSaveSyncedDirectory.State);
    return 0x7463696C666E6F63;
  }

  else
  {
    outlined destroy of GameSaveSyncedDirectory.State(v4, type metadata accessor for GameSaveSyncedDirectory.State);
    return 0x726F727265;
  }
}

BOOL GameSaveSyncedDirectory.State.hasSameStateAs(_:)(uint64_t a1)
{
  v2 = v1;
  v31 = a1;
  v3 = *(*(type metadata accessor for GameSaveSyncedDirectory.State(0) - 8) + 64);
  v4 = (MEMORY[0x28223BE20])();
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v30 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v30 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v30 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v30 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v30 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v30 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v30 - v25;
  outlined init with copy of GameSaveSyncedDirectory.State(v2, &v30 - v25);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        outlined init with copy of GameSaveSyncedDirectory.State(v31, v21);
        v28 = swift_getEnumCaseMultiPayload() == 1;
        outlined destroy of GameSaveSyncedDirectory.State(v21, type metadata accessor for GameSaveSyncedDirectory.State);
      }

      else
      {
        outlined init with copy of GameSaveSyncedDirectory.State(v31, v18);
        v28 = swift_getEnumCaseMultiPayload() == 2;
        outlined destroy of GameSaveSyncedDirectory.State(v18, type metadata accessor for GameSaveSyncedDirectory.State);
      }
    }

    else
    {
      outlined init with copy of GameSaveSyncedDirectory.State(v31, v24);
      v28 = swift_getEnumCaseMultiPayload() == 0;
      outlined destroy of GameSaveSyncedDirectory.State(v24, type metadata accessor for GameSaveSyncedDirectory.State);
    }
  }

  else if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload == 5)
    {
      outlined init with copy of GameSaveSyncedDirectory.State(v31, v15);
      v28 = swift_getEnumCaseMultiPayload() == 5;
      v26 = v15;
    }

    else
    {
      outlined init with copy of GameSaveSyncedDirectory.State(v31, v6);
      v28 = swift_getEnumCaseMultiPayload() == 6;
      v26 = v6;
    }
  }

  else if (EnumCaseMultiPayload == 3)
  {
    outlined destroy of GameSaveSyncedDirectory.State(v26, type metadata accessor for GameSaveSyncedDirectory.State);
    outlined init with copy of GameSaveSyncedDirectory.State(v31, v12);
    v28 = swift_getEnumCaseMultiPayload() == 3;
    v26 = v12;
  }

  else
  {
    outlined destroy of GameSaveSyncedDirectory.State(v26, type metadata accessor for GameSaveSyncedDirectory.State);
    outlined init with copy of GameSaveSyncedDirectory.State(v31, v9);
    v28 = swift_getEnumCaseMultiPayload() == 4;
    v26 = v9;
  }

  outlined destroy of GameSaveSyncedDirectory.State(v26, type metadata accessor for GameSaveSyncedDirectory.State);
  return v28;
}

uint64_t GameSaveSyncedDirectory.Version.localizedNameOfSavingComputer.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_localizedNameOfSavingComputer);
  v2 = *(v0 + OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_localizedNameOfSavingComputer + 8);

  return v1;
}

uint64_t key path setter for GameSaveSyncedDirectory.Version.modifiedDate : GameSaveSyncedDirectory.Version(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4);
  return (*(v5 + 40))(*a2 + OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_modifiedDate, v8, v4);
}

uint64_t GameSaveSyncedDirectory.Version.modifiedDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_modifiedDate;
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t GameSaveSyncedDirectory.Version.modifiedDate.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_modifiedDate;
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t GameSaveSyncedDirectory.Version.url.getter()
{
  v1 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v3 = &v18 - v2;
  v4 = type metadata accessor for UTType();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20]();
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v0 + OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_version);
  if (v14)
  {
    v15 = v14;
    v16 = [v15 URL];
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    static UTType.directory.getter();
    URL.appendingPathComponent(_:conformingTo:)();

    v3 = v13;
LABEL_5:
    (*(v5 + 8))(v8, v4);
    return (*(v10 + 8))(v3, v9);
  }

  outlined init with copy of URL?(v0 + OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_localURL, v3, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  result = (*(v10 + 48))(v3, 1, v9);
  if (result != 1)
  {
    static UTType.directory.getter();
    URL.appendingPathComponent(_:conformingTo:)();
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t GameSaveSyncedDirectory.Version.description.getter()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20]();
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20]();
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[0] = 0;
  v20[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(98);
  MEMORY[0x23EE6B750](0x203A6C7275, 0xE500000000000000);
  GameSaveSyncedDirectory.Version.url.getter();
  lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
  v11 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x23EE6B750](v11);

  (*(v7 + 8))(v10, v6);
  MEMORY[0x23EE6B750](0xD000000000000011, 0x800000023898BD60);
  if (*(v0 + OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_isLiveVersion))
  {
    v12 = 1702195828;
  }

  else
  {
    v12 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_isLiveVersion))
  {
    v13 = 0xE400000000000000;
  }

  else
  {
    v13 = 0xE500000000000000;
  }

  MEMORY[0x23EE6B750](v12, v13);

  MEMORY[0x23EE6B750](0xD000000000000021, 0x800000023898BD80);
  v14 = *(v0 + OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_localizedNameOfSavingComputer);
  v15 = *(v0 + OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_localizedNameOfSavingComputer + 8);

  MEMORY[0x23EE6B750](v14, v15);

  MEMORY[0x23EE6B750](0xD000000000000010, 0x800000023898BDB0);
  (*(v2 + 16))(v5, v0 + OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_modifiedDate, v1);
  lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
  v16 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x23EE6B750](v16);

  (*(v2 + 8))(v5, v1);
  MEMORY[0x23EE6B750](0xD000000000000011, 0x800000023898BDD0);
  v17 = *(v0 + OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_computerSymbol);
  v18 = *(v0 + OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_computerSymbol + 8);

  MEMORY[0x23EE6B750](v17, v18);

  return v20[0];
}

char *GameSaveSyncedDirectory.Version.init(liveFileURL:version:lastEditorDeviceName:devices:)(uint64_t a1, void *a2, uint64_t countAndFlagsBits, void *a4, unint64_t a5)
{
  v74 = a5;
  v71 = a4;
  v9 = type metadata accessor for UTType();
  v64 = *(v9 - 8);
  v65 = v9;
  v10 = *(v64 + 64);
  MEMORY[0x28223BE20](v9);
  v63 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v66 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v73 = &v62 - v16;
  v72 = type metadata accessor for Date();
  v17 = *(v72 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v72);
  v20 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_version;
  v22 = OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_localURL;
  v23 = type metadata accessor for URL();
  v24 = *(v23 - 8);
  (*(v24 + 56))(v5 + v22, 1, 1, v23);
  v67 = v24;
  v68 = v23;
  (*(v24 + 16))(v5 + OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_liveFileURL, a1, v23);
  *(v5 + v21) = a2;
  v25 = a2;
  *(v5 + OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_isLiveVersion) = 0;
  v70 = a1;
  if (a2 && (v26 = a2, (v27 = [v26 localizedNameOfSavingComputer]) != 0))
  {
    v28 = v27;
    countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
    object = v29;

    v31 = (v5 + OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_localizedNameOfSavingComputer);
    *v31 = countAndFlagsBits;
    v31[1] = object;
    v32 = v20;
    v34 = v72;
    v33 = v73;
  }

  else
  {
    v33 = v73;
    v32 = v20;
    if (v71)
    {
      object = v71;
      v34 = v72;
    }

    else
    {
      v34 = v72;
      if (one-time initialization token for bundleForGameSave != -1)
      {
        swift_once();
      }

      v75._object = 0x800000023898C2B0;
      v35._countAndFlagsBits = 0x7665442073696854;
      v35._object = 0xEB00000000656369;
      v36._countAndFlagsBits = 0;
      v36._object = 0xE000000000000000;
      v75._countAndFlagsBits = 0xD00000000000003DLL;
      v37 = NSLocalizedString(_:tableName:bundle:value:comment:)(v35, countAndFlagsBits, static GameSaveSyncedDirectory.bundleForGameSave, v36, v75);
      countAndFlagsBits = v37._countAndFlagsBits;
      object = v37._object;
    }

    v38 = (v5 + OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_localizedNameOfSavingComputer);
    *v38 = countAndFlagsBits;
    v38[1] = object;
    if (!v25)
    {
      (*(v17 + 56))(v33, 1, 1, v34);

      goto LABEL_17;
    }

    v26 = v25;
  }

  v39 = [v26 modificationDate];
  v40 = v66;
  if (v39)
  {
    v41 = v39;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v17 + 56))(v40, 0, 1, v34);
  }

  else
  {
    (*(v17 + 56))(v66, 1, 1, v34);
  }

  outlined init with take of URL?(v40, v33, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  if ((*(v17 + 48))(v33, 1, v34) != 1)
  {
    (*(v17 + 32))(v32, v33, v34);
    goto LABEL_19;
  }

LABEL_17:
  Date.init()();
  if ((*(v17 + 48))(v33, 1, v34) != 1)
  {
    outlined destroy of URL?(v33, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

LABEL_19:
  (*(v17 + 32))(v5 + OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_modifiedDate, v32, v34);
  v42 = v74;
  v69 = v25;
  if (v74 >> 62)
  {
    goto LABEL_40;
  }

  for (i = *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = MEMORY[0x23EE6BAE0](v61))
  {
    v73 = v5;
    v5 = v74;
    if (!i)
    {
      break;
    }

    v44 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v45 = MEMORY[0x23EE6BA40](v44, v5);
      }

      else
      {
        if (v44 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_39;
        }

        v45 = *(v5 + 8 * v44 + 32);
      }

      v46 = v45;
      v47 = v44 + 1;
      if (__OFADD__(v44, 1))
      {
        break;
      }

      v48 = &v45[OBJC_IVAR___DeviceInfo_name];
      v49 = *&v45[OBJC_IVAR___DeviceInfo_name];
      v50 = *v48 == countAndFlagsBits && *(v48 + 1) == object;
      if (v50 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        (*(v67 + 8))(v70, v68);

        v56 = *&v46[OBJC_IVAR___DeviceInfo_symbol];
        v58 = *&v46[OBJC_IVAR___DeviceInfo_symbol + 8];

        v53 = v73;
        goto LABEL_37;
      }

      ++v44;
      if (v47 == i)
      {
        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    if (v42 < 0)
    {
      v61 = v42;
    }

    else
    {
      v61 = v42 & 0xFFFFFFFFFFFFFF8;
    }
  }

LABEL_35:

  v51 = v63;
  static UTType._currentDevice.getter();
  UTType.identifier.getter();
  (*(v64 + 8))(v51, v65);
  type metadata accessor for UIAlertController(0, &lazy cache variable for type metadata for ISSymbol, 0x277D1B1D8);
  v52 = @nonobjc ISSymbol.__allocating_init(forTypeIdentifier:)();
  v53 = v73;
  v54 = v52;
  v55 = [v52 name];

  v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v58 = v57;

  (*(v67 + 8))(v70, v68);
LABEL_37:
  v59 = &v53[OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_computerSymbol];
  *v59 = v56;
  v59[1] = v58;
  return v53;
}

id @nonobjc ISSymbol.__allocating_init(forTypeIdentifier:)()
{
  v6[1] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x23EE6B6E0]();

  v6[0] = 0;
  v1 = [swift_getObjCClassFromMetadata() symbolForTypeIdentifier:v0 error:v6];

  if (v1)
  {
    v2 = v6[0];
  }

  else
  {
    v3 = v6[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v4 = *MEMORY[0x277D85DE8];
  return v1;
}

void GameSaveSyncedDirectory.Version.resolve()()
{
  v2 = v1;
  v3 = v0;
  v106[1] = *MEMORY[0x277D85DE8];
  v4 = type metadata accessor for UTType();
  v100 = *(v4 - 1);
  v101 = v4;
  v5 = *(v100 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v98 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v102 = (&v98 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v13 = &v98 - v12;
  v14 = type metadata accessor for URL();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v105 = &v98 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v104 = &v98 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = &v98 - v21;
  outlined init with copy of URL?(v3 + OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_localURL, v13, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v23 = (*(v15 + 48))(v13, 1, v14);
  v24 = &unk_27DF44000;
  v103 = v3;
  if (v23 != 1)
  {
    v35 = *(v15 + 32);
    v99 = v22;
    v35(v22, v13, v14);
    if (one-time initialization token for common == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_36;
  }

  v101 = v1;
  outlined destroy of URL?(v13, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if ((*(v3 + OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_isLiveVersion) & 1) != 0 || (v25 = *(v3 + OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_version)) == 0)
  {
    while (1)
    {
      while (1)
      {
LABEL_17:
        v2 = objc_opt_self();
        v3 = OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_liveFileURL;
        v7 = v103;
        v76 = v105;
        v102 = *(v15 + 16);
        v102(v105, &v103[OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_liveFileURL], v14);
        URL._bridgeToObjectiveC()(v77);
        v79 = v78;
        v100 = *(v15 + 8);
        (v100)(v76, v14);
        v106[0] = 0;
        v104 = v2;
        v80 = [v2 removeOtherVersionsOfItemAtURL:v79 error:v106];

        v81 = v106[0];
        if (!v80)
        {
          v90 = v106[0];
          _convertNSErrorToError(_:)();

          swift_willThrow();
          goto LABEL_42;
        }

        v102(v76, &v7[v3], v14);
        v82 = v81;
        URL._bridgeToObjectiveC()(v83);
        v85 = v84;
        (v100)(v76, v14);
        v86 = [v104 unresolvedConflictVersionsOfItemAtURL_];

        if (!v86)
        {
          goto LABEL_42;
        }

        type metadata accessor for UIAlertController(0, &lazy cache variable for type metadata for NSFileVersion, 0x277CCAA18);
        v87 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v87 >> 62)
        {
          if (v87 < 0)
          {
            v96 = v87;
          }

          else
          {
            v96 = v87 & 0xFFFFFFFFFFFFFF8;
          }

          v14 = MEMORY[0x23EE6BAE0](v96);
          if (!v14)
          {
LABEL_41:

            goto LABEL_42;
          }
        }

        else
        {
          v14 = *((v87 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v14)
          {
            goto LABEL_41;
          }
        }

        v88 = 0;
        v15 = v87 & 0xC000000000000001;
        v24 = (v87 & 0xFFFFFFFFFFFFFF8);
        while (1)
        {
          if (v15)
          {
            v89 = MEMORY[0x23EE6BA40](v88, v87);
          }

          else
          {
            if (v88 >= *((v87 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_35;
            }

            v89 = *(v87 + 8 * v88 + 32);
          }

          v7 = v89;
          v3 = v88 + 1;
          if (__OFADD__(v88, 1))
          {
            break;
          }

          [v89 setResolved_];

          ++v88;
          if (v3 == v14)
          {
            goto LABEL_41;
          }
        }

        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        swift_once();
LABEL_7:
        v36 = type metadata accessor for Logger();
        v98 = __swift_project_value_buffer(v36, static Logger.common);
        v37 = Logger.logObject.getter();
        v38 = static os_log_type_t.default.getter();
        v39 = v2;
        if (os_log_type_enabled(v37, v38))
        {
          v40 = swift_slowAlloc();
          *v40 = 0;
          _os_log_impl(&dword_238952000, v37, v38, "Resolving local version as main version", v40, 2u);
          v41 = v40;
          v39 = v2;
          v24 = &unk_27DF44000;
          MEMORY[0x23EE6C260](v41, -1, -1);
        }

        v42 = v105;
        (*(v15 + 16))(v105, v3 + v24[34], v14);
        static UTType.directory.getter();
        v43 = v15;
        v44 = v104;
        URL.appendingPathComponent(_:conformingTo:)();
        (*(v100 + 8))(v7, v101);
        v100 = v43;
        v45 = *(v43 + 8);
        v45(v42, v14);
        v101 = objc_opt_self();
        v46 = [v101 defaultManager];
        v47 = v102;
        v48 = v99;
        v49 = v39;
        NSFileManager.replaceItemAt(_:withItemAt:backupItemName:options:)();
        if (v39)
        {
          break;
        }

        v101 = 0;

        outlined destroy of URL?(v47, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        v45(v44, v14);
        v45(v48, v14);
        v15 = v100;
      }

      v102 = v45;

      v50 = v39;
      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        *v53 = 138412290;
        v55 = v49;
        v56 = _swift_stdlib_bridgeErrorToNSError();
        *(v53 + 4) = v56;
        *v54 = v56;
        _os_log_impl(&dword_238952000, v51, v52, "Got error %@ replacing local version with live one", v53, 0xCu);
        outlined destroy of URL?(v54, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x23EE6C260](v54, -1, -1);
        MEMORY[0x23EE6C260](v53, -1, -1);
      }

      else
      {
      }

      v15 = v100;
      v57 = v101;
      v58 = [v101 defaultManager];
      v59 = v104;
      URL._bridgeToObjectiveC()(v60);
      v62 = v61;
      v106[0] = 0;
      v63 = [v58 removeItemAtURL:v61 error:v106];

      if (!v63)
      {
        break;
      }

      v64 = v106[0];
      v65 = [v57 defaultManager];
      v66 = v99;
      URL._bridgeToObjectiveC()(v67);
      v69 = v68;
      URL._bridgeToObjectiveC()(v70);
      v72 = v71;
      v106[0] = 0;
      v73 = [v65 moveItemAtURL:v69 toURL:v71 error:v106];

      if (!v73)
      {
        v94 = v106[0];
        _convertNSErrorToError(_:)();

        swift_willThrow();
        v92 = v102;
        (v102)(v59, v14);
        v93 = v66;
        goto LABEL_32;
      }

      v74 = v106[0];
      v75 = v102;
      (v102)(v59, v14);
      v75(v66, v14);
      v101 = 0;
    }

    v91 = v106[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v92 = v102;
    (v102)(v59, v14);
    v93 = v99;
LABEL_32:
    v92(v93, v14);
    goto LABEL_42;
  }

  v26 = v105;
  (*(v15 + 16))(v105, v3 + OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_liveFileURL, v14);
  v27 = v25;
  URL._bridgeToObjectiveC()(v28);
  v30 = v29;
  v31 = *(v15 + 8);
  v31(v26, v14);
  v106[0] = 0;
  v32 = [v27 replaceItemAtURL:v30 options:0 error:v106];

  v33 = v106[0];
  if (v32)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;

    v31(v26, v14);
    goto LABEL_17;
  }

  v95 = v106[0];
  _convertNSErrorToError(_:)();

  swift_willThrow();
LABEL_42:
  v97 = *MEMORY[0x277D85DE8];
}

uint64_t GameSaveSyncedDirectory.Version.deinit()
{
  v1 = OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_liveFileURL;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  outlined destroy of URL?(v0 + OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_localURL, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v3 = *(v0 + OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_localizedNameOfSavingComputer + 8);

  v4 = OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_modifiedDate;
  v5 = type metadata accessor for Date();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = *(v0 + OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_computerSymbol + 8);

  return v0;
}

uint64_t GameSaveSyncedDirectory.Version.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_liveFileURL;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  outlined destroy of URL?(v0 + OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_localURL, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v3 = *(v0 + OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_localizedNameOfSavingComputer + 8);

  v4 = OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_modifiedDate;
  v5 = type metadata accessor for Date();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = *(v0 + OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_computerSymbol + 8);

  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v7, v8);
}

uint64_t GameSaveSyncedDirectory._state.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory, type metadata accessor for GameSaveSyncedDirectory);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return outlined init with copy of GameSaveSyncedDirectory.State(v1 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory___state, a1);
}

uint64_t key path getter for GameSaveSyncedDirectory._state : GameSaveSyncedDirectory@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory, type metadata accessor for GameSaveSyncedDirectory);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return outlined init with copy of GameSaveSyncedDirectory.State(v3 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory___state, a2);
}

uint64_t key path setter for GameSaveSyncedDirectory._state : GameSaveSyncedDirectory(uint64_t a1, uint64_t *a2)
{
  v4 = *(*(type metadata accessor for GameSaveSyncedDirectory.State(0) - 8) + 64);
  MEMORY[0x28223BE20]();
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  outlined init with copy of GameSaveSyncedDirectory.State(a1, v6);
  v7 = *a2;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  v12 = v7;
  lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory, type metadata accessor for GameSaveSyncedDirectory);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return outlined destroy of GameSaveSyncedDirectory.State(v6, type metadata accessor for GameSaveSyncedDirectory.State);
}

id key path getter for GameSaveSyncedDirectory.state : GameSaveSyncedDirectory@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(*a1 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory_lock);
  [v4 lock];
  swift_getKeyPath();
  lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory, type metadata accessor for GameSaveSyncedDirectory);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  outlined init with copy of GameSaveSyncedDirectory.State(v3 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory___state, a2);
  return [v4 unlock];
}

uint64_t key path setter for GameSaveSyncedDirectory.state : GameSaveSyncedDirectory(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for GameSaveSyncedDirectory.State(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of GameSaveSyncedDirectory.State(a1, v7);
  v8 = *a2;
  return GameSaveSyncedDirectory.state.setter(v7);
}

uint64_t GameSaveSyncedDirectory.state.setter(uint64_t a1)
{
  v3 = type metadata accessor for GameSaveSyncedDirectory.State(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v14[-v8];
  swift_getKeyPath();
  v17 = v1;
  lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory, type metadata accessor for GameSaveSyncedDirectory);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  outlined init with copy of GameSaveSyncedDirectory.State(v1 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory___state, v9);
  v10 = *(v1 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory_lock);
  [v10 lock];
  outlined init with copy of GameSaveSyncedDirectory.State(a1, v7);
  swift_getKeyPath();
  v15 = v1;
  v16 = v7;
  v17 = v1;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  outlined destroy of GameSaveSyncedDirectory.State(v7, type metadata accessor for GameSaveSyncedDirectory.State);
  [v10 unlock];
  v11 = *(v1 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory_onStateChange);
  if (v11)
  {
    v12 = *(v1 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory_onStateChange + 8);

    if (!GameSaveSyncedDirectory.State.hasSameStateAs(_:)(a1))
    {
      v11(a1);
    }

    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed GameSaveSyncedDirectory.State) -> ())?(v11);
  }

  outlined destroy of GameSaveSyncedDirectory.State(a1, type metadata accessor for GameSaveSyncedDirectory.State);
  return outlined destroy of GameSaveSyncedDirectory.State(v9, type metadata accessor for GameSaveSyncedDirectory.State);
}

id GameSaveSyncedDirectory.state.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory_lock);
  [v3 lock];
  swift_getKeyPath();
  lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory, type metadata accessor for GameSaveSyncedDirectory);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  outlined init with copy of GameSaveSyncedDirectory.State(v1 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory___state, a1);
  return [v3 unlock];
}

void GameSaveSyncedDirectory.progress.setter(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__progress;
  v5 = *(v1 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__progress);
  type metadata accessor for UIAlertController(0, &lazy cache variable for type metadata for NSProgress, 0x277CCAC48);
  v6 = v5;
  v7 = static NSObject.== infix(_:_:)();

  if (v7)
  {
    v8 = *(v2 + v4);
    *(v2 + v4) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory, type metadata accessor for GameSaveSyncedDirectory);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t GameSaveSyncedDirectory.alertPresentedState.getter@<X0>(void *a1@<X1>, uint64_t *a2@<X2>, uint64_t *a3@<X3>, uint64_t a4@<X8>)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory, type metadata accessor for GameSaveSyncedDirectory);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return outlined init with copy of URL?(v4 + *a1, a4, a2, a3);
}

uint64_t key path getter for GameSaveSyncedDirectory.alertPresentedState : GameSaveSyncedDirectory@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, uint64_t *a3@<X5>, uint64_t *a4@<X6>, uint64_t a5@<X8>)
{
  v9 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory, type metadata accessor for GameSaveSyncedDirectory);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return outlined init with copy of URL?(v9 + *a2, a5, a3, a4);
}

id GameSaveSyncedDirectory.progress.getter(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory, type metadata accessor for GameSaveSyncedDirectory);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v2 + *a2);

  return v4;
}

id key path getter for GameSaveSyncedDirectory.progress : GameSaveSyncedDirectory@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory, type metadata accessor for GameSaveSyncedDirectory);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = *(v5 + *a2);
  *a3 = v6;

  return v6;
}

void GameSaveSyncedDirectory.gameSyncedDirectoryPresenter.setter(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__gameSyncedDirectoryPresenter;
  v5 = *(v1 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__gameSyncedDirectoryPresenter);
  type metadata accessor for GameSyncedDirectoryHolder();
  v6 = v5;
  v7 = static NSObject.== infix(_:_:)();

  if (v7)
  {
    v8 = *(v2 + v4);
    *(v2 + v4) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory, type metadata accessor for GameSaveSyncedDirectory);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

void GameSaveSyncedDirectory.remoteProgressObserver.setter(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__remoteProgressObserver;
  v5 = *(v1 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__remoteProgressObserver);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory, type metadata accessor for GameSaveSyncedDirectory);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  type metadata accessor for RemoteProgressObserver();
  v6 = v5;
  v7 = a1;
  v8 = static NSObject.== infix(_:_:)();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

uint64_t GameSaveSyncedDirectory.accountSigningInObserver.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory, type metadata accessor for GameSaveSyncedDirectory);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__accountSigningInObserver);
  return swift_unknownObjectRetain();
}

uint64_t key path getter for GameSaveSyncedDirectory.accountSigningInObserver : GameSaveSyncedDirectory@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory, type metadata accessor for GameSaveSyncedDirectory);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__accountSigningInObserver);
  return swift_unknownObjectRetain();
}

void GameSaveSyncedDirectory.lastResponse.setter(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__lastResponse;
  v5 = *(v1 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__lastResponse);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory, type metadata accessor for GameSaveSyncedDirectory);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  type metadata accessor for GameSyncedDirectoryResponse();
  v6 = v5;
  v7 = a1;
  v8 = static NSObject.== infix(_:_:)();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

uint64_t GameSaveSyncedDirectory.id.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory, type metadata accessor for GameSaveSyncedDirectory);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__containerIdentifier);
  v2 = *(v0 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__containerIdentifier + 8);

  return v1;
}

uint64_t key path getter for GameSaveSyncedDirectory.containerIdentifier : GameSaveSyncedDirectory@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory, type metadata accessor for GameSaveSyncedDirectory);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__containerIdentifier + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__containerIdentifier);
  a2[1] = v4;
}

uint64_t sub_2389588FC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return GameSaveSyncedDirectory.containerIdentifier.setter(v2, v3);
}

uint64_t GameSaveSyncedDirectory.containerIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__containerIdentifier);
  v6 = *(v2 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__containerIdentifier) == a1 && *(v2 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__containerIdentifier + 8) == a2;
  if (v6 || (v7 = *(v2 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__containerIdentifier + 8), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    *v5 = a1;
    v5[1] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory, type metadata accessor for GameSaveSyncedDirectory);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t GameSaveSyncedDirectory.init(containerIdentifier:)(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory_onStateChange);
  *v5 = 0;
  v5[1] = 0;
  v6 = OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory_lock;
  *(v2 + v6) = [objc_allocWithZone(MEMORY[0x277CCAC60]) init];
  v7 = OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__continuation;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
  (*(*(v8 - 8) + 56))(v2 + v7, 1, 1, v8);
  *(v2 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__gameSyncedDirectoryPresenter) = [objc_allocWithZone(type metadata accessor for GameSyncedDirectoryHolder()) init];
  *(v2 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__remoteProgressObserver) = 0;
  *(v2 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__accountSigningInObserver) = 0;
  *(v2 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__lastResponse) = 0;
  v9 = OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__directorySyncStartTime;
  *(v2 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__directorySyncStartTime) = 0;
  *(v2 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__stateObserver) = 0;
  *(v2 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__window) = 0;
  *(v2 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__alert) = 0;
  *(v2 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__showSyncAlertAfterTimeHeuristic) = 0x4010000000000000;
  v10 = OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__alertPresentedState;
  v11 = type metadata accessor for GameSaveSyncedDirectory.State(0);
  (*(*(v11 - 8) + 56))(v2 + v10, 1, 1, v11);
  ObservationRegistrar.init()();
  *(v2 + v9) = CFAbsoluteTimeGetCurrent();
  v12 = [objc_opt_self() progressWithTotalUnitCount_];
  *(v2 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__progress) = v12;
  swift_storeEnumTagMultiPayload();
  v13 = (v2 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__containerIdentifier);
  *v13 = a1;
  v13[1] = a2;
  return v2;
}

void *GameSaveSyncedDirectory.directorySyncStartTime.setter(void *result, double a2)
{
  if (*(v2 + *result) == a2)
  {
    *(v2 + *result) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory, type metadata accessor for GameSaveSyncedDirectory);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t GameSaveSyncedDirectory.init(error:)(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory_onStateChange);
  *v3 = 0;
  v3[1] = 0;
  v4 = OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory_lock;
  *(v1 + v4) = [objc_allocWithZone(MEMORY[0x277CCAC60]) init];
  v5 = OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__continuation;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
  (*(*(v6 - 8) + 56))(v1 + v5, 1, 1, v6);
  *(v1 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__gameSyncedDirectoryPresenter) = [objc_allocWithZone(type metadata accessor for GameSyncedDirectoryHolder()) init];
  *(v1 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__remoteProgressObserver) = 0;
  *(v1 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__accountSigningInObserver) = 0;
  *(v1 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__lastResponse) = 0;
  *(v1 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__directorySyncStartTime) = 0;
  *(v1 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__stateObserver) = 0;
  *(v1 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__window) = 0;
  *(v1 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__alert) = 0;
  *(v1 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__showSyncAlertAfterTimeHeuristic) = 0x4010000000000000;
  v7 = OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__alertPresentedState;
  v8 = type metadata accessor for GameSaveSyncedDirectory.State(0);
  (*(*(v8 - 8) + 56))(v1 + v7, 1, 1, v8);
  ObservationRegistrar.init()();
  v9 = [objc_opt_self() progressWithTotalUnitCount_];
  *(v1 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__progress) = v9;
  *(v1 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory___state) = a1;
  swift_storeEnumTagMultiPayload();
  v10 = (v1 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__containerIdentifier);
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  return v1;
}

id one-time initialization function for loadedDirectorysLock()
{
  result = [objc_allocWithZone(MEMORY[0x277CCAC60]) init];
  static GameSaveSyncedDirectory.loadedDirectorysLock = result;
  return result;
}

void *one-time initialization function for loadedDirectorys()
{
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_8GameSave0cD15SyncedDirectoryCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  static GameSaveSyncedDirectory.loadedDirectorys = result;
  return result;
}

uint64_t static GameSaveSyncedDirectory._openDirectory(containerIdentifier:fetchLatestData:)(uint64_t a1, uint64_t a2, char a3)
{
  v6 = type metadata accessor for CocoaError.Code();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = type metadata accessor for CocoaError();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v39[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39[3] = &type metadata for GameSaveFF;
  v39[4] = lazy protocol witness table accessor for type GameSaveFF and conformance GameSaveFF();
  v13 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_0(v39);
  if ((v13 & 1) == 0)
  {
    if (one-time initialization token for common != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Logger.common);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_238952000, v21, v22, "Feature is disabled", v23, 2u);
      MEMORY[0x23EE6C260](v23, -1, -1);
    }

    MEMORY[0x23EE6AD60]();
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
    lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type CocoaError and conformance CocoaError, MEMORY[0x277CC8620]);
    _BridgedStoredNSError.init(_:userInfo:)();
    v24 = CocoaError._nsError.getter();
    (*(v9 + 8))(v12, v8);
    v25 = type metadata accessor for GameSaveSyncedDirectory(0);
    v26 = *(v25 + 48);
    v27 = *(v25 + 52);
    swift_allocObject();
    v28 = v24;
    return GameSaveSyncedDirectory.init(error:)(v28);
  }

  v14 = specialized static GameSaveSyncedDirectory._resolveContainerIdentifier(_:)(a1, a2);
  if (!v15)
  {
    if (one-time initialization token for common != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    __swift_project_value_buffer(v29, static Logger.common);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_238952000, v30, v31, "Can't request Game Synced Directory without a valid containerIdentifier", v32, 2u);
      MEMORY[0x23EE6C260](v32, -1, -1);
    }

    lazy protocol witness table accessor for type GameSaveSyncedDirectoryError and conformance GameSaveSyncedDirectoryError();
    v33 = swift_allocError();
    *v34 = 3;
    v35 = type metadata accessor for GameSaveSyncedDirectory(0);
    v36 = *(v35 + 48);
    v37 = *(v35 + 52);
    swift_allocObject();
    v28 = v33;
    return GameSaveSyncedDirectory.init(error:)(v28);
  }

  v16 = v14;
  v17 = v15;
  if (one-time initialization token for loadedDirectorysLock != -1)
  {
    swift_once();
  }

  v18 = static GameSaveSyncedDirectory.loadedDirectorysLock;
  [static GameSaveSyncedDirectory.loadedDirectorysLock lock];
  closure #1 in static GameSaveSyncedDirectory._openDirectory(containerIdentifier:fetchLatestData:)(v16, v17, a3 & 1, v39);

  [v18 unlock];
  return v39[0];
}

void closure #1 in static GameSaveSyncedDirectory._openDirectory(containerIdentifier:fetchLatestData:)(uint64_t a1@<X1>, unint64_t a2@<X2>, int a3@<W3>, uint64_t *a4@<X8>)
{
  v40 = a3;
  v8 = type metadata accessor for GameSaveSyncedDirectory.State(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v37 - v13;
  if (one-time initialization token for loadedDirectorys != -1)
  {
    swift_once();
  }

  v15 = static GameSaveSyncedDirectory.loadedDirectorys;
  if (!*(static GameSaveSyncedDirectory.loadedDirectorys + 2))
  {
    goto LABEL_7;
  }

  v16 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if ((v17 & 1) == 0)
  {
    goto LABEL_7;
  }

  v38 = a4;
  v39 = v4;
  v18 = *(v15[7] + 8 * v16);
  v19 = *(v18 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory_lock);

  [v19 lock];
  swift_getKeyPath();
  v41 = v18;
  lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory, type metadata accessor for GameSaveSyncedDirectory);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  outlined init with copy of GameSaveSyncedDirectory.State(v18 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory___state, v14);
  [v19 unlock];
  outlined init with take of GameSaveSyncedDirectory.State(v14, v12);
  if (swift_getEnumCaseMultiPayload() == 6)
  {

    a4 = v38;
LABEL_7:
    if (one-time initialization token for common != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Logger.common);

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = a4;
      v25 = swift_slowAlloc();
      v41 = v25;
      *v23 = 136315138;
      *(v23 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v41);
      _os_log_impl(&dword_238952000, v21, v22, "Starting Game Synced Directory request for containerIdentifier %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);
      v26 = v25;
      a4 = v24;
      MEMORY[0x23EE6C260](v26, -1, -1);
      MEMORY[0x23EE6C260](v23, -1, -1);
    }

    v27 = type metadata accessor for GameSaveSyncedDirectory(0);
    v28 = *(v27 + 48);
    v29 = *(v27 + 52);
    swift_allocObject();

    v18 = GameSaveSyncedDirectory.init(containerIdentifier:)(a1, a2);
    if (v40)
    {
      v30 = 2;
    }

    else
    {
      v30 = 0;
    }

    GameSaveSyncedDirectory.startSyncing(mode:)(v30);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v41 = static GameSaveSyncedDirectory.loadedDirectorys;
    static GameSaveSyncedDirectory.loadedDirectorys = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v18, a1, a2, isUniquelyReferenced_nonNull_native);

    static GameSaveSyncedDirectory.loadedDirectorys = v41;
    goto LABEL_15;
  }

  outlined destroy of GameSaveSyncedDirectory.State(v12, type metadata accessor for GameSaveSyncedDirectory.State);
  if (one-time initialization token for common != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  __swift_project_value_buffer(v32, static Logger.common);

  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v41 = v36;
    *v35 = 136315138;
    *(v35 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v41);
    _os_log_impl(&dword_238952000, v33, v34, "Returning an existing directory for containerIdentifier %s", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v36);
    MEMORY[0x23EE6C260](v36, -1, -1);
    MEMORY[0x23EE6C260](v35, -1, -1);
  }

  a4 = v38;
LABEL_15:
  *a4 = v18;
}

uint64_t GameSaveSyncedDirectory.moveToLocalState()()
{
  v1 = type metadata accessor for CocoaError.Code();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = type metadata accessor for CocoaError();
  v23 = *(v3 - 8);
  v4 = *(v23 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for GameSaveSyncedDirectory.State(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (&v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v23 - v13;
  v15 = type metadata accessor for URL();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v0;
  GameSaveSyncedDirectory.getAndCreateLocalURL()(v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    v20 = outlined destroy of URL?(v14, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    MEMORY[0x23EE6AD70](v20);
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
    lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type CocoaError and conformance CocoaError, MEMORY[0x277CC8620]);
    _BridgedStoredNSError.init(_:userInfo:)();
    v21 = CocoaError._nsError.getter();
    (*(v23 + 8))(v6, v3);
    *v10 = v21;
    swift_storeEnumTagMultiPayload();
    GameSaveSyncedDirectory._moveToState(_:)(v10);
    GameSaveSyncedDirectory.sendDirectoryTelemetryLazy(from:)(v10);
    return outlined destroy of GameSaveSyncedDirectory.State(v10, type metadata accessor for GameSaveSyncedDirectory.State);
  }

  else
  {
    (*(v16 + 32))(v19, v14, v15);
    (*(v16 + 16))(v10, v19, v15);
    swift_storeEnumTagMultiPayload();
    GameSaveSyncedDirectory._moveToState(_:)(v10);
    GameSaveSyncedDirectory.sendDirectoryTelemetryLazy(from:)(v10);
    outlined destroy of GameSaveSyncedDirectory.State(v10, type metadata accessor for GameSaveSyncedDirectory.State);
    return (*(v16 + 8))(v19, v15);
  }
}

void GameSaveSyncedDirectory.sendDirectoryTelemetryLazy(from:)(uint64_t a1)
{
  v3 = type metadata accessor for GameSaveSyncedDirectory.State(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  Current = CFAbsoluteTimeGetCurrent();
  swift_getKeyPath();
  aBlock = v1;
  lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory, type metadata accessor for GameSaveSyncedDirectory);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v8 = *(v1 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__directorySyncStartTime);
  outlined init with copy of GameSaveSyncedDirectory.State(a1, v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload >= 5)
  {
    outlined destroy of GameSaveSyncedDirectory.State(v6, type metadata accessor for GameSaveSyncedDirectory.State);
  }

  else
  {
    v10 = EnumCaseMultiPayload;
    outlined destroy of GameSaveSyncedDirectory.State(v6, type metadata accessor for GameSaveSyncedDirectory.State);
    v11 = MEMORY[0x23EE6B6E0](0xD000000000000021, 0x800000023898C590);
    v12 = swift_allocObject();
    *(v12 + 16) = v10;
    v21 = partial apply for closure #1 in GameSaveSyncedDirectory.sendDirectoryTelemetryLazy(from:);
    v22 = v12;
    aBlock = MEMORY[0x277D85DD0];
    v18 = 1107296256;
    v19 = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
    v20 = &block_descriptor_339;
    v13 = _Block_copy(&aBlock);

    AnalyticsSendEventLazy();
    _Block_release(v13);

    v14 = MEMORY[0x23EE6B6E0](0xD00000000000001BLL, 0x800000023898C5E0);
    v15 = swift_allocObject();
    *(v15 + 16) = Current - v8;
    v21 = partial apply for closure #2 in GameSaveSyncedDirectory.sendDirectoryTelemetryLazy(from:);
    v22 = v15;
    aBlock = MEMORY[0x277D85DD0];
    v18 = 1107296256;
    v19 = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
    v20 = &block_descriptor_345;
    v16 = _Block_copy(&aBlock);

    AnalyticsSendEventLazy();
    _Block_release(v16);
  }
}

unint64_t closure #1 in GameSaveSyncedDirectory.sendDirectoryTelemetryLazy(from:)(unsigned __int8 a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMd, &_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_238987820;
  *(inited + 32) = 0xD00000000000001ALL;
  *(inited + 40) = 0x800000023898C600;
  type metadata accessor for UIAlertController(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
  *(inited + 48) = NSNumber.init(integerLiteral:)(a1);
  v3 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObjectCTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of URL?(inited + 32, &_sSS_So8NSObjectCtMd, &_sSS_So8NSObjectCtMR);
  return v3;
}

unint64_t closure #2 in GameSaveSyncedDirectory.sendDirectoryTelemetryLazy(from:)(Swift::Double a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMd, &_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_238987820;
  *(inited + 32) = 0x656D695464616F4CLL;
  *(inited + 40) = 0xE800000000000000;
  type metadata accessor for UIAlertController(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
  *(inited + 48) = NSNumber.init(floatLiteral:)(a1);
  v3 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObjectCTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of URL?(inited + 32, &_sSS_So8NSObjectCtMd, &_sSS_So8NSObjectCtMR);
  return v3;
}

uint64_t GameSaveSyncedDirectory._moveToState(_:)(uint64_t a1)
{
  v2 = v1;
  v63 = a1;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
  v65 = *(v67 - 8);
  v3 = *(v65 + 64);
  MEMORY[0x28223BE20](v67);
  v5 = &v56 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGSgMd, &_sScCyyts5NeverOGSgMR);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v62 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v59 = &v56 - v11;
  MEMORY[0x28223BE20](v10);
  v66 = &v56 - v12;
  v13 = type metadata accessor for GameSaveSyncedDirectory.State(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v61 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v60 = &v56 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v56 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v56 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v56 - v25;
  v27 = *(v1 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory_lock);
  [v27 lock];
  swift_getKeyPath();
  v28 = OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory___observationRegistrar;
  v68 = v2;
  v29 = lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory, type metadata accessor for GameSaveSyncedDirectory);
  v58 = v28;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  outlined init with copy of GameSaveSyncedDirectory.State(v2 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory___state, v26);
  v64 = v27;
  [v27 unlock];
  outlined init with take of GameSaveSyncedDirectory.State(v26, v24);
  result = swift_getEnumCaseMultiPayload();
  if (result == 6)
  {
    return result;
  }

  outlined destroy of GameSaveSyncedDirectory.State(v24, type metadata accessor for GameSaveSyncedDirectory.State);
  if (one-time initialization token for common != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  __swift_project_value_buffer(v31, static Logger.common);
  outlined init with copy of GameSaveSyncedDirectory.State(v63, v21);
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();
  v34 = os_log_type_enabled(v32, v33);
  v56 = v29;
  v57 = v5;
  if (v34)
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v68 = v36;
    *v35 = 136315138;
    v37 = GameSaveSyncedDirectory.State.description.getter();
    v39 = v38;
    outlined destroy of GameSaveSyncedDirectory.State(v21, type metadata accessor for GameSaveSyncedDirectory.State);
    v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v39, &v68);
    v41 = v65;

    *(v35 + 4) = v40;
    _os_log_impl(&dword_238952000, v32, v33, "Moving to state %s", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v36);
    MEMORY[0x23EE6C260](v36, -1, -1);
    MEMORY[0x23EE6C260](v35, -1, -1);
  }

  else
  {

    outlined destroy of GameSaveSyncedDirectory.State(v21, type metadata accessor for GameSaveSyncedDirectory.State);
    v41 = v65;
  }

  v42 = *(v41 + 56);
  v42(v66, 1, 1, v67);
  [v64 lock];
  v43 = v63;
  v44 = v60;
  outlined init with copy of GameSaveSyncedDirectory.State(v63, v60);
  GameSaveSyncedDirectory.state.setter(v44);
  v45 = v43;
  v46 = v61;
  outlined init with copy of GameSaveSyncedDirectory.State(v45, v61);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload >= 5)
  {
    if (EnumCaseMultiPayload == 5)
    {
      outlined destroy of GameSaveSyncedDirectory.State(v46, type metadata accessor for GameSaveSyncedDirectory.State);
      v51 = v57;
      v48 = v66;
      goto LABEL_10;
    }
  }

  else
  {
    outlined destroy of GameSaveSyncedDirectory.State(v46, type metadata accessor for GameSaveSyncedDirectory.State);
  }

  swift_getKeyPath();
  v68 = v2;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v48 = v66;
  outlined destroy of URL?(v66, &_sScCyyts5NeverOGSgMd, &_sScCyyts5NeverOGSgMR);
  outlined init with copy of URL?(v2 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__continuation, v48, &_sScCyyts5NeverOGSgMd, &_sScCyyts5NeverOGSgMR);
  v49 = v59;
  v42(v59, 1, 1, v67);
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  *(&v56 - 2) = v2;
  *(&v56 - 1) = v49;
  v68 = v2;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  outlined destroy of URL?(v49, &_sScCyyts5NeverOGSgMd, &_sScCyyts5NeverOGSgMR);
  v51 = v57;
LABEL_10:
  [v64 unlock];
  v52 = v62;
  outlined init with copy of URL?(v48, v62, &_sScCyyts5NeverOGSgMd, &_sScCyyts5NeverOGSgMR);
  v53 = v65;
  if ((*(v65 + 48))(v52, 1, v67) == 1)
  {
    outlined destroy of URL?(v48, &_sScCyyts5NeverOGSgMd, &_sScCyyts5NeverOGSgMR);
    v48 = v52;
  }

  else
  {
    v54 = v52;
    v55 = v67;
    (*(v53 + 32))(v51, v54, v67);
    CheckedContinuation.resume(returning:)();
    (*(v53 + 8))(v51, v55);
  }

  return outlined destroy of URL?(v48, &_sScCyyts5NeverOGSgMd, &_sScCyyts5NeverOGSgMR);
}

id one-time initialization function for connectionLock()
{
  result = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  static GameSaveSyncedDirectory.connectionLock = result;
  return result;
}

void thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ()(uint64_t a1, void *a2)
{
  thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ()(a1, a2);
}

{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t GameSaveSyncedDirectory.getLocalURL()@<X0>(uint64_t a1@<X8>)
{
  v48[1] = *MEMORY[0x277D85DE8];
  v3 = type metadata accessor for URL();
  v47 = *(v3 - 8);
  v4 = *(v47 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v43 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v43 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v43 - v18;
  if (_xpc_runtime_is_app_sandboxed())
  {
    v20 = [objc_opt_self() defaultManager];
    v48[0] = 0;
    v21 = [v20 URLForDirectory:14 inDomain:1 appropriateForURL:0 create:1 error:v48];

    v22 = v48[0];
    if (v21)
    {
      static URL._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = v22;

      v24 = 0;
    }

    else
    {
      v32 = v48[0];
      v33 = _convertNSErrorToError(_:)();

      swift_willThrow();
      v24 = 1;
    }

    v46 = *(v47 + 56);
    v46(v19, v24, 1, v3);
    outlined init with copy of URL?(v19, v17, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    if ((*(v47 + 48))(v17, 1, v3) == 1)
    {
      outlined destroy of URL?(v19, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      outlined destroy of URL?(v17, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v34 = a1;
      v35 = 1;
    }

    else
    {
      v44 = v12;
      v36 = v1;
      URL.appendingPathComponent(_:)();
      v45 = a1;
      v37 = *(v47 + 8);
      v47 += 8;
      v37(v17, v3);
      swift_getKeyPath();
      v48[0] = v1;
      lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory, type metadata accessor for GameSaveSyncedDirectory);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v38 = *&v1[OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__containerIdentifier];
      v39 = *&v36[OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__containerIdentifier + 8];

      URL.appendingPathComponent(_:)();

      v37(v7, v3);
      v40 = v44;
      URL.appendingPathComponent(_:)();
      v37(v10, v3);
      v41 = v45;
      URL.appendingPathComponent(_:)();
      v37(v40, v3);
      outlined destroy of URL?(v19, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v34 = v41;
      v35 = 0;
    }

    result = (v46)(v34, v35, 1, v3);
    v42 = *MEMORY[0x277D85DE8];
  }

  else
  {
    if (one-time initialization token for common != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static Logger.common);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_238952000, v26, v27, "App is not sandboxed, we can't return a local URL for the directory", v28, 2u);
      MEMORY[0x23EE6C260](v28, -1, -1);
    }

    v29 = *(v47 + 56);
    v30 = *MEMORY[0x277D85DE8];

    return v29(a1, 1, 1, v3);
  }

  return result;
}

id GameSaveSyncedDirectory.getAndCreateLocalURL()@<X0>(char *a1@<X8>)
{
  v24[1] = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v23 - v4;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  GameSaveSyncedDirectory.getLocalURL()(v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    outlined destroy of URL?(v5, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
LABEL_8:
    result = (*(v7 + 56))(a1, 1, 1, v6);
    v22 = *MEMORY[0x277D85DE8];
    return result;
  }

  v11 = *(v7 + 32);
  v11(v10, v5, v6);
  v12 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v13);
  v15 = v14;
  v24[0] = 0;
  v16 = [v12 createDirectoryAtURL:v14 withIntermediateDirectories:1 attributes:0 error:v24];

  v23[0] = v24[0];
  if (!v16)
  {
    v20 = v23[0];
    v21 = _convertNSErrorToError(_:)();

    swift_willThrow();
    (*(v7 + 8))(v10, v6);

    goto LABEL_8;
  }

  v11(a1, v10, v6);
  (*(v7 + 56))(a1, 0, 1, v6);
  v17 = *MEMORY[0x277D85DE8];
  v18 = v23[0];

  return v18;
}

void GameSaveSyncedDirectory.startSyncing(mode:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for CocoaError.Code();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = type metadata accessor for CocoaError();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for GameSaveSyncedDirectory.State(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = (&v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v51 = &type metadata for GameSaveFF;
  v52 = lazy protocol witness table accessor for type GameSaveFF and conformance GameSaveFF();
  v15 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_0(aBlock);
  if ((v15 & 1) == 0)
  {
    if (one-time initialization token for common != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    __swift_project_value_buffer(v42, static Logger.common);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_238952000, v43, v44, "Feature is disabled", v45, 2u);
      MEMORY[0x23EE6C260](v45, -1, -1);
    }

    MEMORY[0x23EE6AD60]();
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
    lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type CocoaError and conformance CocoaError, MEMORY[0x277CC8620]);
    _BridgedStoredNSError.init(_:userInfo:)();
    v46 = CocoaError._nsError.getter();
    (*(v7 + 8))(v10, v6);
    *v14 = v46;
    goto LABEL_14;
  }

  v16 = specialized static GameSaveSyncedDirectory.getGameSaveDaemonProxy(_:)(partial apply for closure #1 in GameSaveSyncedDirectory.startSyncing(mode:), v2);

  if (!v16)
  {
    lazy protocol witness table accessor for type GameSaveSyncedDirectoryError and conformance GameSaveSyncedDirectoryError();
    v47 = swift_allocError();
    *v48 = 0;
    *v14 = v47;
LABEL_14:
    swift_storeEnumTagMultiPayload();
    GameSaveSyncedDirectory._moveToState(_:)(v14);
    GameSaveSyncedDirectory.sendDirectoryTelemetryLazy(from:)(v14);
    outlined destroy of GameSaveSyncedDirectory.State(v14, type metadata accessor for GameSaveSyncedDirectory.State);
    return;
  }

  v17 = one-time initialization token for common;
  swift_unknownObjectRetain();
  if (v17 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static Logger.common);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_238952000, v19, v20, "Calling getSyncedDirectory", v21, 2u);
    MEMORY[0x23EE6C260](v21, -1, -1);
  }

  swift_getKeyPath();
  aBlock[0] = v2;
  lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory, type metadata accessor for GameSaveSyncedDirectory);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v23 = *(v2 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__containerIdentifier);
  v22 = *(v2 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__containerIdentifier + 8);
  v24 = type metadata accessor for GameSyncedDirectoryRequest();
  v25 = objc_allocWithZone(v24);
  *&v25[OBJC_IVAR___GameSyncedDirectoryRequest_mode] = a1;
  v26 = &v25[OBJC_IVAR___GameSyncedDirectoryRequest_containerIdentifier];
  *v26 = v23;
  *(v26 + 1) = v22;
  v54.receiver = v25;
  v54.super_class = v24;

  v27 = objc_msgSendSuper2(&v54, sel_init);
  v28 = swift_allocObject();
  *(v28 + 16) = v2;
  *(v28 + 24) = v16;
  v52 = partial apply for closure #2 in GameSaveSyncedDirectory.startSyncing(mode:);
  v53 = v28;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed GameSyncedDirectoryResponse?, @guaranteed Error?) -> ();
  v51 = &block_descriptor_246;
  v29 = _Block_copy(aBlock);

  swift_unknownObjectRetain();

  v30 = [v16 getSyncedDirectoryWithRequest:v27 completion:v29];
  _Block_release(v29);

  swift_getKeyPath();
  aBlock[0] = v2;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v31 = OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__progress;
  [*(v2 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__progress) addChild:v30 withPendingUnitCount:80];
  swift_getKeyPath();
  aBlock[0] = v2;
  v32 = v30;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v33 = *(v2 + v31);
  v34 = type metadata accessor for RemoteProgressObserver();
  v35 = objc_allocWithZone(v34);
  *&v35[OBJC_IVAR____TtC8GameSave22RemoteProgressObserver_remoteProgress] = v32;
  *&v35[OBJC_IVAR____TtC8GameSave22RemoteProgressObserver_localProgress] = v33;
  v49.receiver = v35;
  v49.super_class = v34;
  v36 = v33;
  v37 = v32;
  v38 = v36;
  v39 = objc_msgSendSuper2(&v49, sel_init);
  v40 = MEMORY[0x23EE6B6E0](0xD000000000000011, 0x800000023898C250);
  [v37 addObserver:v39 forKeyPath:v40 options:1 context:0];

  v41 = MEMORY[0x23EE6B6E0](0xD000000000000011, 0x800000023898C250);
  [v39 observeValueForKeyPath:v41 ofObject:v37 change:0 context:0];

  GameSaveSyncedDirectory.remoteProgressObserver.setter(v39);
  swift_unknownObjectRelease_n();
}

uint64_t closure #1 in GameSaveSyncedDirectory.startSyncing(mode:)(void *a1)
{
  v2 = type metadata accessor for GameSaveSyncedDirectory.State(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = (&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v5 = a1;
  swift_storeEnumTagMultiPayload();
  v6 = a1;
  GameSaveSyncedDirectory._moveToState(_:)(v5);
  GameSaveSyncedDirectory.sendDirectoryTelemetryLazy(from:)(v5);
  return outlined destroy of GameSaveSyncedDirectory.State(v5, type metadata accessor for GameSaveSyncedDirectory.State);
}

void closure #2 in GameSaveSyncedDirectory.startSyncing(mode:)(void *a1, void *a2, char *a3, uint64_t a4)
{
  v8 = type metadata accessor for GameSaveSyncedDirectory.State(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v54 - v14;
  if (!a1)
  {
    if (a2)
    {
      v32 = a2;
    }

    else
    {
      lazy protocol witness table accessor for type GameSaveSyncedDirectoryError and conformance GameSaveSyncedDirectoryError();
      v32 = swift_allocError();
      *v36 = 2;
    }

    v37 = a2;
    if (one-time initialization token for common != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    __swift_project_value_buffer(v38, static Logger.common);
    v39 = v32;
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *v42 = 138412290;
      v44 = v32;
      v45 = _swift_stdlib_bridgeErrorToNSError();
      *(v42 + 4) = v45;
      *v43 = v45;
      _os_log_impl(&dword_238952000, v40, v41, "Got nil url. Error: %@", v42, 0xCu);
      outlined destroy of URL?(v43, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x23EE6C260](v43, -1, -1);
      MEMORY[0x23EE6C260](v42, -1, -1);
    }

    swift_getKeyPath();
    v57 = a3;
    lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory, type metadata accessor for GameSaveSyncedDirectory);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    [*&a3[OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__progress] setCompletedUnitCount_];
    if (!a2)
    {
      goto LABEL_24;
    }

    v57 = a2;
    v46 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    type metadata accessor for UIAlertController(0, &lazy cache variable for type metadata for NSError, 0x277CCA9B8);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_24;
    }

    v47 = v59;
    v48 = [v59 domain];
    v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v51 = v50;

    if (v49 == 0xD000000000000013 && 0x800000023898C270 == v51)
    {
    }

    else
    {
      v52 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v52 & 1) == 0)
      {
LABEL_23:

LABEL_24:
        *v11 = v32;
        swift_storeEnumTagMultiPayload();
        v53 = v32;
        GameSaveSyncedDirectory._moveToState(_:)(v11);
        GameSaveSyncedDirectory.sendDirectoryTelemetryLazy(from:)(v11);

        outlined destroy of GameSaveSyncedDirectory.State(v11, type metadata accessor for GameSaveSyncedDirectory.State);
        return;
      }
    }

    if ([v47 code] == 1)
    {
      GameSaveSyncedDirectory.moveToLocalState()();

      return;
    }

    goto LABEL_23;
  }

  v16 = one-time initialization token for common;
  v17 = a1;
  if (v16 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static Logger.common);
  v19 = v17;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v56 = a3;
    v59 = v55;
    *v22 = 138412802;
    v24 = *&v19[OBJC_IVAR___GameSyncedDirectoryResponse_gameSavedDataFolderURL];
    *(v22 + 4) = v24;
    *v23 = v24;
    *(v22 + 12) = 1024;
    v25 = v19[OBJC_IVAR___GameSyncedDirectoryResponse_isOnline];
    v26 = v24;

    *(v22 + 14) = v25;
    *(v22 + 18) = 2080;
    v27 = v19[OBJC_IVAR___GameSyncedDirectoryResponse_numberOfConflicts + 8];
    v57 = *&v19[OBJC_IVAR___GameSyncedDirectoryResponse_numberOfConflicts];
    v58 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
    v28 = String.init<A>(describing:)();
    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, &v59);

    *(v22 + 20) = v30;
    _os_log_impl(&dword_238952000, v20, v21, "Got url: %@. Is online: %{BOOL}d. Number of conflicts: %s", v22, 0x1Cu);
    outlined destroy of URL?(v23, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x23EE6C260](v23, -1, -1);
    v31 = v55;
    __swift_destroy_boxed_opaque_existential_0(v55);
    a3 = v56;
    MEMORY[0x23EE6C260](v31, -1, -1);
    MEMORY[0x23EE6C260](v22, -1, -1);
  }

  else
  {
  }

  v33 = v19;
  GameSaveSyncedDirectory.lastResponse.setter(a1);
  v34 = type metadata accessor for TaskPriority();
  (*(*(v34 - 8) + 56))(v15, 1, 1, v34);
  v35 = swift_allocObject();
  v35[2] = 0;
  v35[3] = 0;
  v35[4] = a3;
  v35[5] = v33;
  v35[6] = a4;

  swift_unknownObjectRetain();
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v15, &async function pointer to partial apply for closure #1 in closure #2 in GameSaveSyncedDirectory.startSyncing(mode:), v35);
}

uint64_t closure #1 in closure #2 in GameSaveSyncedDirectory.startSyncing(mode:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = GameSaveSyncedDirectory.finishSyncing();

  return specialized GameSaveSyncedDirectory.checkForConflicts(_:_:)(a5);
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  outlined init with copy of URL?(a3, v27 - v11, &_sScPSgMd, &_sScPSgMR);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    outlined destroy of URL?(v12, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      outlined destroy of URL?(a3, &_sScPSgMd, &_sScPSgMR);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of URL?(a3, &_sScPSgMd, &_sScPSgMR);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCSb_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  outlined init with copy of URL?(a3, v27 - v11, &_sScPSgMd, &_sScPSgMR);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    outlined destroy of URL?(v12, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      outlined destroy of URL?(a3, &_sScPSgMd, &_sScPSgMR);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of URL?(a3, &_sScPSgMd, &_sScPSgMR);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

void thunk for @escaping @callee_guaranteed (@guaranteed GameSyncedDirectoryResponse?, @guaranteed Error?) -> ()(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t GameSaveSyncedDirectory.moveToLoadedState(response:)(uint64_t a1)
{
  v2 = type metadata accessor for GameSaveSyncedDirectory.State(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_opt_self() standardUserDefaults];
  v12 = MEMORY[0x23EE6B6E0](0xD000000000000041, 0x800000023898BDF0);
  [v11 removeObjectForKey_];

  v13 = [*(a1 + OBJC_IVAR___GameSyncedDirectoryResponse_gameSavedDataFolderURL) url];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v14 = *(a1 + OBJC_IVAR___GameSyncedDirectoryResponse_isOnline);
  (*(v7 + 16))(v5, v10, v6);
  swift_storeEnumTagMultiPayload();
  GameSaveSyncedDirectory._moveToState(_:)(v5);
  GameSaveSyncedDirectory.sendDirectoryTelemetryLazy(from:)(v5);
  outlined destroy of GameSaveSyncedDirectory.State(v5, type metadata accessor for GameSaveSyncedDirectory.State);
  return (*(v7 + 8))(v10, v6);
}

uint64_t closure #1 in GameSaveSyncedDirectory.checkForConflicts(_:_:)@<X0>(void **a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, char **a4@<X8>)
{
  v24 = a4;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v23 - v13;
  v15 = *a1;
  v16 = *(v8 + 16);
  v16(&v23 - v13, a2, v7);
  v16(v12, v14, v7);
  v17 = type metadata accessor for GameSaveSyncedDirectory.Version(0);
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  v20 = v15;

  v21 = GameSaveSyncedDirectory.Version.init(liveFileURL:version:lastEditorDeviceName:devices:)(v12, v15, 0, 0, a3);
  result = (*(v8 + 8))(v14, v7);
  *v24 = v21;
  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySo13NSFileVersionCG_8GameSave0fG15SyncedDirectoryC0E0Cs5NeverOTg5(void (*a1)(void **__return_ptr, id *), uint64_t a2, uint64_t a3)
{
  v5 = v3;
  if (a3 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = MEMORY[0x23EE6BAE0](v13))
  {
    result = MEMORY[0x277D84F90];
    if (!i)
    {
      break;
    }

    v17 = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    if (i < 0)
    {
      __break(1u);
LABEL_22:

      __break(1u);
      return result;
    }

    for (j = 0; ; ++j)
    {
      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      if ((a3 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x23EE6BA40](j, a3);
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v11 = *(a3 + 8 * j + 32);
      }

      v4 = v11;
      v15 = v11;
      a1(&v16, &v15);
      if (v5)
      {
        goto LABEL_22;
      }

      v5 = 0;

      v4 = v16;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v12 = *(v17 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      if (v10 == i)
      {
        return v17;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    if (a3 < 0)
    {
      v13 = a3;
    }

    else
    {
      v13 = a3 & 0xFFFFFFFFFFFFFF8;
    }
  }

  return result;
}

uint64_t GameSaveSyncedDirectory.triggerPendingUpload()()
{
  v1[4] = v0;
  v2 = type metadata accessor for GameSaveSyncedDirectory.State(0);
  v1[5] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](GameSaveSyncedDirectory.triggerPendingUpload(), 0, 0);
}

{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[4];
  v13 = v0[5];
  v4 = *(v3 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory_lock);
  [v4 lock];
  swift_getKeyPath();
  v0[2] = v3;
  lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory, type metadata accessor for GameSaveSyncedDirectory);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  outlined init with copy of GameSaveSyncedDirectory.State(v3 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory___state, v2);
  [v4 unlock];
  outlined init with take of GameSaveSyncedDirectory.State(v2, v1);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  outlined destroy of GameSaveSyncedDirectory.State(v1, type metadata accessor for GameSaveSyncedDirectory.State);
  if (EnumCaseMultiPayload > 1)
  {
    v11 = v0[6];
    v10 = v0[7];

    v12 = v0[1];

    return v12(0);
  }

  else
  {
    v6 = v0[4];
    swift_getKeyPath();
    v0[3] = v6;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v7 = *(v6 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__gameSyncedDirectoryPresenter);
    v0[8] = v7;
    v7;
    v8 = swift_task_alloc();
    v0[9] = v8;
    *v8 = v0;
    v8[1] = GameSaveSyncedDirectory.triggerPendingUpload();

    return GameSyncedDirectoryHolder.allowReaders(for:)(5000000000000000000, 0);
  }
}

uint64_t GameSaveSyncedDirectory.triggerPendingUpload()(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  v10 = *v1;

  v6 = *(v3 + 56);
  v7 = *(v3 + 48);

  v8 = *(v10 + 8);

  return v8(a1);
}

uint64_t GameSaveSyncedDirectory.resolveConflicts(with:)(unsigned int (*a1)(void, void, void))
{
  v86 = a1;
  v90[1] = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v85 = v77 - v4;
  v89 = type metadata accessor for URL();
  v84 = *(v89 - 8);
  v5 = *(v84 + 64);
  MEMORY[0x28223BE20](v89);
  v81 = v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v82 = v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v88 = v77 - v12;
  MEMORY[0x28223BE20](v11);
  v83 = v77 - v13;
  v14 = type metadata accessor for GameSaveSyncedDirectory.State(0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v87 = (v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = MEMORY[0x28223BE20](v16);
  v20 = (v77 - v19);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = v77 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = v77 - v24;
  v26 = *&v1[OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory_lock];
  [v26 lock];
  swift_getKeyPath();
  v27 = OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory___observationRegistrar;
  v90[0] = v1;
  v28 = lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory, type metadata accessor for GameSaveSyncedDirectory);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v29 = OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory___state;
  outlined init with copy of GameSaveSyncedDirectory.State(&v1[OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory___state], v25);
  [v26 unlock];
  outlined init with take of GameSaveSyncedDirectory.State(v25, v23);
  result = swift_getEnumCaseMultiPayload();
  if (result == 6)
  {
    goto LABEL_43;
  }

  outlined destroy of GameSaveSyncedDirectory.State(v23, type metadata accessor for GameSaveSyncedDirectory.State);
  [v26 lock];
  swift_getKeyPath();
  v90[0] = v1;
  v79 = v28;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v78 = v1;
  outlined init with copy of GameSaveSyncedDirectory.State(&v1[v29], v20);
  [v26 0x278A5B178];
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    result = outlined destroy of GameSaveSyncedDirectory.State(v20, type metadata accessor for GameSaveSyncedDirectory.State);
    goto LABEL_43;
  }

  v31 = v27;
  v80 = *v20;
  if (one-time initialization token for common != -1)
  {
LABEL_30:
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  __swift_project_value_buffer(v32, static Logger.common);
  v33 = v86;

  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = v31;
    v38 = swift_slowAlloc();
    v90[0] = v38;
    *v36 = 136315138;
    v39 = GameSaveSyncedDirectory.Version.description.getter();
    v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, v90);

    *(v36 + 4) = v41;
    _os_log_impl(&dword_238952000, v34, v35, "resolving conflict %s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v38);
    v42 = v38;
    v31 = v37;
    MEMORY[0x23EE6C260](v42, -1, -1);
    MEMORY[0x23EE6C260](v36, -1, -1);
  }

  v43 = v78;
  swift_getKeyPath();
  v90[0] = v43;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v44 = *&v43[OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__lastResponse];
  if (v44)
  {
    v45 = (v44 + OBJC_IVAR___GameSyncedDirectoryResponse_directorySandboxExtension);
    v46 = *v45;
    v47 = v45[1];
    String.utf8CString.getter();
  }

  v48 = sandbox_extension_consume();
  swift_unknownObjectRelease();
  GameSaveSyncedDirectory.Version.resolve()();
  v50 = v83;
  outlined init with copy of URL?(v33 + OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_localURL, v83, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v86 = *(v84 + 48);
  if (v86(v50, 1, v89) == 1)
  {
    outlined destroy of URL?(v50, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v51 = v80;
    v77[2] = v31;
    v77[3] = v14;
    v78 = v48;
    v77[1] = 0;
    if (v80 >> 62)
    {
      v69 = v80;
      if (v80 >= 0)
      {
        v51 = v80 & 0xFFFFFFFFFFFFFF8;
      }

      v83 = MEMORY[0x23EE6BAE0](v51);
      v51 = v69;
      if (v83)
      {
LABEL_12:
        v52 = 0;
        v14 = v51 & 0xC000000000000001;
        v48 = v51 & 0xFFFFFFFFFFFFFF8;
        while (1)
        {
          if (v14)
          {
            v31 = MEMORY[0x23EE6BA40](v52, v51);
            v50 = v52 + 1;
            if (__OFADD__(v52, 1))
            {
LABEL_21:
              __break(1u);
              goto LABEL_22;
            }
          }

          else
          {
            if (v52 >= *(v48 + 16))
            {
              __break(1u);
              goto LABEL_30;
            }

            v31 = *(v51 + 8 * v52 + 32);

            v50 = v52 + 1;
            if (__OFADD__(v52, 1))
            {
              goto LABEL_21;
            }
          }

          v53 = v88;
          outlined init with copy of URL?(v31 + OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_localURL, v88, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
          if (v86(v53, 1, v89) != 1)
          {
            break;
          }

          outlined destroy of URL?(v53, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
          ++v52;
          v51 = v80;
          if (v50 == v83)
          {
            goto LABEL_34;
          }
        }

        outlined destroy of URL?(v53, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        if (!v31)
        {
          goto LABEL_35;
        }

        v55 = v82;
        outlined init with copy of URL?(v31 + OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_localURL, v82, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        v56 = v89;
        v57 = v86(v55, 1, v89);
        v48 = v78;
        v58 = v84;
        if (v57 == 1)
        {

          v54 = v87;
          goto LABEL_36;
        }

        v59 = v81;
        (*(v84 + 32))(v81, v55, v56);
        v60 = [objc_opt_self() defaultManager];
        URL._bridgeToObjectiveC()(v61);
        v63 = v62;
        v90[0] = 0;
        v64 = [v60 removeItemAtURL:v62 error:v90];

        if (v64)
        {
          v65 = *(v58 + 8);
          v66 = v90[0];
          v65(v59, v56);

          v54 = v87;
          goto LABEL_37;
        }

        v67 = v90[0];
        v68 = _convertNSErrorToError(_:)();

        swift_willThrow();

        (*(v58 + 8))(v59, v56);
        v54 = v87;
        *v87 = v68;
        swift_storeEnumTagMultiPayload();
        v49 = v68;
        GameSaveSyncedDirectory._moveToState(_:)(v54);
        GameSaveSyncedDirectory.sendDirectoryTelemetryLazy(from:)(v54);

        goto LABEL_41;
      }
    }

    else
    {
      v83 = *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v83)
      {
        goto LABEL_12;
      }
    }

LABEL_34:

LABEL_35:
    v55 = v82;
    (*(v84 + 56))(v82, 1, 1, v89);
    v54 = v87;
    v48 = v78;
LABEL_36:
    outlined destroy of URL?(v55, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  }

  else
  {
LABEL_22:

    outlined destroy of URL?(v50, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v54 = v87;
  }

LABEL_37:
  Current = CFAbsoluteTimeGetCurrent();
  if (*&v43[OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__directorySyncStartTime] == Current)
  {
    *&v43[OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__directorySyncStartTime] = Current;
  }

  else
  {
    v71 = Current;
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v77[-2] = v43;
    *&v77[-1] = v71;
    v90[0] = v43;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    v54 = v87;
  }

  swift_storeEnumTagMultiPayload();
  GameSaveSyncedDirectory._moveToState(_:)(v54);
  GameSaveSyncedDirectory.sendDirectoryTelemetryLazy(from:)(v54);
LABEL_41:
  outlined destroy of GameSaveSyncedDirectory.State(v54, type metadata accessor for GameSaveSyncedDirectory.State);
  v73 = type metadata accessor for TaskPriority();
  v74 = v85;
  (*(*(v73 - 8) + 56))(v85, 1, 1, v73);
  v75 = swift_allocObject();
  v75[2] = 0;
  v75[3] = 0;
  v75[4] = v43;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v74, &async function pointer to partial apply for closure #2 in GameSaveSyncedDirectory.resolveConflicts(with:), v75);

  if (v48 != -1)
  {
    result = sandbox_extension_release();
  }

LABEL_43:
  v76 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t closure #2 in GameSaveSyncedDirectory.resolveConflicts(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = type metadata accessor for GameSaveSyncedDirectory.State(0);
  v4[6] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[7] = swift_task_alloc();
  v4[8] = swift_task_alloc();
  v7 = type metadata accessor for ContinuousClock();
  v4[9] = v7;
  v8 = *(v7 - 8);
  v4[10] = v8;
  v9 = *(v8 + 64) + 15;
  v4[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #2 in GameSaveSyncedDirectory.resolveConflicts(with:), 0, 0);
}

uint64_t closure #2 in GameSaveSyncedDirectory.resolveConflicts(with:)()
{
  v1 = *(v0 + 88);
  static Clock<>.continuous.getter();
  v2 = swift_task_alloc();
  *(v0 + 96) = v2;
  *v2 = v0;
  v2[1] = closure #2 in GameSaveSyncedDirectory.resolveConflicts(with:);
  v3 = *(v0 + 88);

  return specialized Clock.sleep(for:tolerance:)(100000000000000000, 0, 0, 0, 1);
}

{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *v1;

  v5 = v2[11];
  v6 = v2[10];
  v7 = v2[9];
  if (v0)
  {

    (*(v6 + 8))(v5, v7);
    v8 = closure #2 in GameSaveSyncedDirectory.resolveConflicts(with:);
  }

  else
  {
    (*(v6 + 8))(v5, v7);
    v8 = closure #2 in GameSaveSyncedDirectory.resolveConflicts(with:);
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[5];
  v18 = v0[6];
  swift_getKeyPath();
  v0[2] = v3;
  lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory, type metadata accessor for GameSaveSyncedDirectory);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__gameSyncedDirectoryPresenter);
  v5 = *&v4[OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_lock];
  v6 = v4;
  [v5 lock];
  v7 = *&v6[OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_coordinationReaderCallers];
  *&v6[OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_coordinationReaderCallers] = MEMORY[0x277D84F90];
  [v5 unlock];
  specialized GameSyncedDirectoryHolder._drainCoordinationCallers(type:callers:wait:)(0x726564616572, 0xE600000000000000, v7, 1);

  v8 = *(v3 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory_lock);
  [v8 lock];
  swift_getKeyPath();
  v0[3] = v3;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  outlined init with copy of GameSaveSyncedDirectory.State(v3 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory___state, v2);
  [v8 unlock];
  outlined init with take of GameSaveSyncedDirectory.State(v2, v1);
  if (swift_getEnumCaseMultiPayload() != 6)
  {
    v9 = v0[5];
    outlined destroy of GameSaveSyncedDirectory.State(v0[7], type metadata accessor for GameSaveSyncedDirectory.State);
    swift_getKeyPath();
    v0[4] = v9;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v10 = *(v9 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__lastResponse);
    v11 = v0[5];
    if (v10)
    {
      v12 = v10;
      GameSaveSyncedDirectory.moveToLoadedState(response:)(v12);
    }

    else
    {
      GameSaveSyncedDirectory.retry(options:)(0);
    }
  }

  v13 = v0[11];
  v14 = v0[7];
  v15 = v0[8];

  v16 = v0[1];

  return v16();
}

uint64_t GameSaveSyncedDirectory.retryIfSignedIn(retryBlock:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v23[0] = type metadata accessor for GameSaveSyncedDirectory.State(0);
  v6 = *(*(v23[0] - 8) + 64);
  MEMORY[0x28223BE20](v23[0]);
  v8 = (v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_getKeyPath();
  aBlock[0] = v2;
  lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory, type metadata accessor for GameSaveSyncedDirectory);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v9 = *(v2 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__accountSigningInObserver);
  if (v9)
  {
    v10 = objc_opt_self();
    swift_unknownObjectRetain();
    v11 = [v10 defaultCenter];
    [v11 removeObserver_];
    swift_unknownObjectRelease();
  }

  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  v13 = [objc_opt_self() defaultCenter];
  v14 = *MEMORY[0x277CFAB58];
  v15 = swift_allocObject();
  v15[2] = v12;
  v15[3] = v3;
  v15[4] = a1;
  v15[5] = a2;
  aBlock[4] = partial apply for closure #1 in GameSaveSyncedDirectory.retryIfSignedIn(retryBlock:);
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed Notification) -> ();
  aBlock[3] = &block_descriptor;
  v16 = _Block_copy(aBlock);

  v17 = [v13 addObserverForName:v14 object:0 queue:0 usingBlock:v16];
  _Block_release(v16);

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  v23[-2] = v3;
  v23[-1] = v17;
  aBlock[0] = v3;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_unknownObjectRelease();
  [objc_opt_self() startAccountTokenChangeObserverIfNeeded];

  v19 = specialized static GameSaveSyncedDirectory.getGameSaveDaemonProxy(_:)(partial apply for closure #2 in GameSaveSyncedDirectory.retryIfSignedIn(retryBlock:), v3);

  if (v19)
  {
    [v19 openICloudDriveSettingsPage];

    return swift_unknownObjectRelease();
  }

  else
  {
    lazy protocol witness table accessor for type GameSaveSyncedDirectoryError and conformance GameSaveSyncedDirectoryError();
    v21 = swift_allocError();
    *v22 = 0;
    *v8 = v21;
    swift_storeEnumTagMultiPayload();
    GameSaveSyncedDirectory._moveToState(_:)(v8);
    GameSaveSyncedDirectory.sendDirectoryTelemetryLazy(from:)(v8);
    outlined destroy of GameSaveSyncedDirectory.State(v8, type metadata accessor for GameSaveSyncedDirectory.State);
  }
}

void closure #1 in GameSaveSyncedDirectory.retryIfSignedIn(retryBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v7 = type metadata accessor for GameSaveSyncedDirectory.State(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - v12;
  if ((*(a2 + 16) & 1) == 0)
  {
    v14 = *(a3 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory_lock);
    [v14 lock];
    swift_getKeyPath();
    v16[1] = a3;
    lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory, type metadata accessor for GameSaveSyncedDirectory);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    outlined init with copy of GameSaveSyncedDirectory.State(a3 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory___state, v13);
    [v14 unlock];
    outlined init with take of GameSaveSyncedDirectory.State(v13, v11);
    if (swift_getEnumCaseMultiPayload() != 6)
    {
      v15 = outlined destroy of GameSaveSyncedDirectory.State(v11, type metadata accessor for GameSaveSyncedDirectory.State);
      *(a2 + 16) = 1;
      a4(v15);
      GameSaveSyncedDirectory.retry(options:)(1);
    }
  }
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed Notification) -> ()(uint64_t a1)
{
  v2 = type metadata accessor for Notification();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  v8(v6);

  return (*(v3 + 8))(v6, v2);
}

uint64_t closure #2 in GameSaveSyncedDirectory.retryIfSignedIn(retryBlock:)()
{
  v0 = type metadata accessor for GameSaveSyncedDirectory.State(0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v3 = (&v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  lazy protocol witness table accessor for type GameSaveSyncedDirectoryError and conformance GameSaveSyncedDirectoryError();
  v4 = swift_allocError();
  *v5 = 0;
  *v3 = v4;
  swift_storeEnumTagMultiPayload();
  GameSaveSyncedDirectory._moveToState(_:)(v3);
  GameSaveSyncedDirectory.sendDirectoryTelemetryLazy(from:)(v3);
  return outlined destroy of GameSaveSyncedDirectory.State(v3, type metadata accessor for GameSaveSyncedDirectory.State);
}

void GameSaveSyncedDirectory.retry(options:)(uint64_t a1)
{
  v3 = type metadata accessor for GameSaveSyncedDirectory.State(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v15 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v15 - v11;
  v13 = *(v1 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory_lock);
  [v13 lock];
  swift_getKeyPath();
  v16 = v1;
  lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory, type metadata accessor for GameSaveSyncedDirectory);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  outlined init with copy of GameSaveSyncedDirectory.State(v1 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory___state, v12);
  [v13 unlock];
  outlined init with take of GameSaveSyncedDirectory.State(v12, v10);
  if (swift_getEnumCaseMultiPayload() != 6)
  {
    outlined destroy of GameSaveSyncedDirectory.State(v10, type metadata accessor for GameSaveSyncedDirectory.State);
    v14 = [objc_opt_self() progressWithTotalUnitCount_];
    GameSaveSyncedDirectory.progress.setter(v14);
    swift_storeEnumTagMultiPayload();
    GameSaveSyncedDirectory._moveToState(_:)(v7);
    GameSaveSyncedDirectory.sendDirectoryTelemetryLazy(from:)(v7);
    outlined destroy of GameSaveSyncedDirectory.State(v7, type metadata accessor for GameSaveSyncedDirectory.State);
    GameSaveSyncedDirectory.startSyncing(mode:)(a1);
  }
}

uint64_t GameSaveSyncedDirectory._waitForDirectorySync(ui:)(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 40) = a1;
  return MEMORY[0x2822009F8](GameSaveSyncedDirectory._waitForDirectorySync(ui:), 0, 0);
}

uint64_t GameSaveSyncedDirectory._waitForDirectorySync(ui:)()
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
    _os_log_impl(&dword_238952000, v2, v3, "Waiting for directory sync", v4, 2u);
    MEMORY[0x23EE6C260](v4, -1, -1);
  }

  v5 = *(v0 + 16);
  v6 = *(v0 + 40);

  v7 = swift_task_alloc();
  *(v0 + 24) = v7;
  *(v7 + 16) = v5;
  *(v7 + 24) = v6;
  v8 = *(MEMORY[0x277D859E0] + 4);
  v9 = swift_task_alloc();
  *(v0 + 32) = v9;
  *v9 = v0;
  v9[1] = GameSaveSyncedDirectory._waitForDirectorySync(ui:);

  return MEMORY[0x2822007B8]();
}

{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v4 = *v0;

  return MEMORY[0x2822009F8](GameSaveSyncedDirectory._waitForDirectorySync(ui:), 0, 0);
}

{
  return (*(v0 + 8))();
}

id closure #1 in GameSaveSyncedDirectory._waitForDirectorySync(ui:)(uint64_t a1, uint64_t a2, int a3)
{
  v6 = *(a2 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory_lock);
  [v6 lock];
  closure #1 in closure #1 in GameSaveSyncedDirectory._waitForDirectorySync(ui:)(a2, a3, a1);

  return [v6 unlock];
}

uint64_t closure #1 in closure #1 in GameSaveSyncedDirectory._waitForDirectorySync(ui:)(uint64_t a1, int a2, uint64_t a3)
{
  v34 = a3;
  v31 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGSgMd, &_sScCyyts5NeverOGSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v30 - v6;
  v8 = type metadata accessor for GameSaveSyncedDirectory.State(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v30 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v30 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v30 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v30 - v18;
  v20 = *(a1 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory_lock);
  [v20 lock];
  swift_getKeyPath();
  v21 = OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory___observationRegistrar;
  v35 = a1;
  v32 = lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory, type metadata accessor for GameSaveSyncedDirectory);
  v33 = v21;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v22 = OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory___state;
  outlined init with copy of GameSaveSyncedDirectory.State(a1 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory___state, v19);
  [v20 unlock];
  outlined init with take of GameSaveSyncedDirectory.State(v19, v17);
  if (swift_getEnumCaseMultiPayload() == 5)
  {
    goto LABEL_2;
  }

  outlined destroy of GameSaveSyncedDirectory.State(v17, type metadata accessor for GameSaveSyncedDirectory.State);
  if (v31)
  {
    [v20 lock];
    swift_getKeyPath();
    v35 = a1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    outlined init with copy of GameSaveSyncedDirectory.State(a1 + v22, v14);
    [v20 0x278A5B178];
    v27 = v30;
    outlined init with copy of GameSaveSyncedDirectory.State(v14, v30);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 2:
        v29 = specialized static GameSaveSyncedDirectory.shouldDismissSignedOutError()();
        outlined destroy of GameSaveSyncedDirectory.State(v14, type metadata accessor for GameSaveSyncedDirectory.State);
        outlined destroy of GameSaveSyncedDirectory.State(v27, type metadata accessor for GameSaveSyncedDirectory.State);
        if ((v29 & 1) == 0)
        {
          goto LABEL_2;
        }

        break;
      case 5:
        v27 = v14;
        goto LABEL_9;
      case 3:
        outlined destroy of GameSaveSyncedDirectory.State(v14, type metadata accessor for GameSaveSyncedDirectory.State);
LABEL_9:
        outlined destroy of GameSaveSyncedDirectory.State(v27, type metadata accessor for GameSaveSyncedDirectory.State);
LABEL_2:
        v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
        v24 = *(v23 - 8);
        (*(v24 + 16))(v7, v34, v23);
        (*(v24 + 56))(v7, 0, 1, v23);
        KeyPath = swift_getKeyPath();
        MEMORY[0x28223BE20](KeyPath);
        *(&v30 - 2) = a1;
        *(&v30 - 1) = v7;
        v35 = a1;
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

        return outlined destroy of URL?(v7, &_sScCyyts5NeverOGSgMd, &_sScCyyts5NeverOGSgMR);
      default:
        outlined destroy of GameSaveSyncedDirectory.State(v14, type metadata accessor for GameSaveSyncedDirectory.State);
        outlined destroy of GameSaveSyncedDirectory.State(v27, type metadata accessor for GameSaveSyncedDirectory.State);
        break;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
  return CheckedContinuation.resume(returning:)();
}

uint64_t GameSaveSyncedDirectory.stateObserver.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory, type metadata accessor for GameSaveSyncedDirectory);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__stateObserver);
}

uint64_t key path getter for GameSaveSyncedDirectory.stateObserver : GameSaveSyncedDirectory@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory, type metadata accessor for GameSaveSyncedDirectory);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__stateObserver);
}

uint64_t key path setter for GameSaveSyncedDirectory.accountSigningInObserver : GameSaveSyncedDirectory(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory, type metadata accessor for GameSaveSyncedDirectory);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

void GameSaveSyncedDirectory.window.setter(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__window;
  v5 = *(v1 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__window);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory, type metadata accessor for GameSaveSyncedDirectory);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  type metadata accessor for UIAlertController(0, &lazy cache variable for type metadata for UIWindow, 0x277D75DA0);
  v6 = v5;
  v7 = a1;
  v8 = static NSObject.== infix(_:_:)();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

void *GameSaveSyncedDirectory.remoteProgressObserver.getter(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory, type metadata accessor for GameSaveSyncedDirectory);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v2 + *a2);
  v5 = v4;
  return v4;
}

void GameSaveSyncedDirectory.alert.setter(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__alert;
  v5 = *(v1 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__alert);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory, type metadata accessor for GameSaveSyncedDirectory);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  type metadata accessor for UIAlertController(0, &lazy cache variable for type metadata for UIAlertController, 0x277D75110);
  v6 = v5;
  v7 = a1;
  v8 = static NSObject.== infix(_:_:)();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

double GameSaveSyncedDirectory.directorySyncStartTime.getter(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory, type metadata accessor for GameSaveSyncedDirectory);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v2 + *a2);
}

double key path getter for GameSaveSyncedDirectory.directorySyncStartTime : GameSaveSyncedDirectory@<D0>(uint64_t *a1@<X0>, void *a2@<X4>, double *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory, type metadata accessor for GameSaveSyncedDirectory);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v5 + *a2);
  *a3 = result;
  return result;
}

uint64_t GameSaveSyncedDirectory.StateObserver.selectedVersion.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

Swift::Void __swiftcall GameSaveSyncedDirectory.StateObserver.cancel()()
{
  v1 = v0;
  v2 = type metadata accessor for GameSaveSyncedDirectory.State(0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - v7;
  v9 = OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory13StateObserver_directory;
  v10 = *(v0 + OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory13StateObserver_directory);
  v11 = *(v10 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory_lock);

  [v11 lock];
  swift_getKeyPath();
  v19 = v10;
  lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory, type metadata accessor for GameSaveSyncedDirectory);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  outlined init with copy of GameSaveSyncedDirectory.State(v10 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory___state, v8);
  [v11 unlock];

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload >= 2)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v13 = [objc_opt_self() standardUserDefaults];
      v14 = MEMORY[0x23EE6B6E0](0xD000000000000041, 0x800000023898BDF0);
      [v13 setBool:1 forKey:v14];

      v15 = *(v1 + v9);
      v16 = *(v15 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory_lock);

      [v16 lock];
      swift_getKeyPath();
      v19 = v15;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      outlined init with copy of GameSaveSyncedDirectory.State(v15 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory___state, v6);
      [v16 unlock];
      GameSaveSyncedDirectory._moveToState(_:)(v6);

      outlined destroy of GameSaveSyncedDirectory.State(v6, type metadata accessor for GameSaveSyncedDirectory.State);
    }

    else
    {
      v17 = *(v0 + v9);

      GameSaveSyncedDirectory.cancel()();
    }
  }

  outlined destroy of GameSaveSyncedDirectory.State(v8, type metadata accessor for GameSaveSyncedDirectory.State);
}

uint64_t GameSaveSyncedDirectory.StateObserver.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory13StateObserver__selectedVersion;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy8GameSave0cD15SyncedDirectoryC7VersionCSgGMd, &_s7Combine9PublishedVy8GameSave0cD15SyncedDirectoryC7VersionCSgGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory13StateObserver__alertAction;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo17UIAlertControllerCSgGMd, &_s7Combine9PublishedVySo17UIAlertControllerCSgGMR);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory13StateObserver_directory);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v6, v7);
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance GameSaveSyncedDirectory.StateObserver@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for GameSaveSyncedDirectory.StateObserver(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t key path setter for GameSaveSyncedDirectory.continuation : GameSaveSyncedDirectory(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v16[-v12];
  outlined init with copy of URL?(a1, &v16[-v12], a5, a6);
  v14 = *a2;
  swift_getKeyPath();
  v17 = v14;
  v18 = v13;
  v19 = v14;
  lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory, type metadata accessor for GameSaveSyncedDirectory);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return outlined destroy of URL?(v13, a5, a6);
}

BOOL GameSaveSyncedDirectory.checkSameAlertState(as:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8GameSave0aB15SyncedDirectoryC5StateOSgMd, &_s8GameSave0aB15SyncedDirectoryC5StateOSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v16 - v3;
  v5 = type metadata accessor for GameSaveSyncedDirectory.State(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v16 - v11;
  swift_getKeyPath();
  v17 = v0;
  lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory, type metadata accessor for GameSaveSyncedDirectory);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  outlined init with copy of URL?(v0 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__alertPresentedState, v4, &_s8GameSave0aB15SyncedDirectoryC5StateOSgMd, &_s8GameSave0aB15SyncedDirectoryC5StateOSgMR);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    outlined destroy of URL?(v4, &_s8GameSave0aB15SyncedDirectoryC5StateOSgMd, &_s8GameSave0aB15SyncedDirectoryC5StateOSgMR);
    return 0;
  }

  else
  {
    outlined init with take of GameSaveSyncedDirectory.State(v4, v12);
    v14 = *(v0 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory_lock);
    [v14 lock];
    swift_getKeyPath();
    v17 = v0;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    outlined init with copy of GameSaveSyncedDirectory.State(v0 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory___state, v10);
    [v14 unlock];
    v13 = GameSaveSyncedDirectory.State.hasSameStateAs(_:)(v10);
    outlined destroy of GameSaveSyncedDirectory.State(v10, type metadata accessor for GameSaveSyncedDirectory.State);
    outlined destroy of GameSaveSyncedDirectory.State(v12, type metadata accessor for GameSaveSyncedDirectory.State);
  }

  return v13;
}

void static GameSaveSyncedDirectory.showedDismissSignedOutError()()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = MEMORY[0x23EE6B6E0](0xD000000000000041, 0x800000023898BDF0);
  [v0 setBool:1 forKey:v1];
}

void static GameSaveSyncedDirectory.clearDismissSignedOutErrorState()()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = MEMORY[0x23EE6B6E0](0xD000000000000041, 0x800000023898BDF0);
  [v0 removeObjectForKey_];
}

id one-time initialization function for bundleForGameSave()
{
  type metadata accessor for GameSaveSyncedDirectory(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  static GameSaveSyncedDirectory.bundleForGameSave = result;
  return result;
}

void one-time initialization function for syncSaveDataTitleLocalized()
{
  if (one-time initialization token for bundleForGameSave != -1)
  {
    swift_once();
  }

  v0 = static GameSaveSyncedDirectory.bundleForGameSave;
  v4._object = 0xE000000000000000;
  v1._object = 0x800000023898C480;
  v1._countAndFlagsBits = 0xD000000000000017;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  static GameSaveSyncedDirectory.syncSaveDataTitleLocalized = v3;
}

void one-time initialization function for syncingContinueButtonTitleLocalized()
{
  if (one-time initialization token for bundleForGameSave != -1)
  {
    swift_once();
  }

  v0 = static GameSaveSyncedDirectory.bundleForGameSave;
  v4._object = 0xE000000000000000;
  v1._object = 0x800000023898C460;
  v1._countAndFlagsBits = 0xD000000000000018;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  static GameSaveSyncedDirectory.syncingContinueButtonTitleLocalized = v3;
}

void one-time initialization function for turnOnICloudDriveTitleLocalized()
{
  if (one-time initialization token for bundleForGameSave != -1)
  {
    swift_once();
  }

  v0 = static GameSaveSyncedDirectory.bundleForGameSave;
  v4._object = 0xE000000000000000;
  v1._object = 0x800000023898C4F0;
  v1._countAndFlagsBits = 0xD000000000000014;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  static GameSaveSyncedDirectory.turnOnICloudDriveTitleLocalized = v3;
}

void one-time initialization function for turnOnICloudDriveInfoLocalized()
{
  if (one-time initialization token for bundleForGameSave != -1)
  {
    swift_once();
  }

  v0 = static GameSaveSyncedDirectory.bundleForGameSave;
  v4._object = 0xE000000000000000;
  v1._object = 0x800000023898C4A0;
  v1._countAndFlagsBits = 0xD00000000000004DLL;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  static GameSaveSyncedDirectory.turnOnICloudDriveInfoLocalized = v3;
}

void one-time initialization function for chooseSaveDataLocalized()
{
  if (one-time initialization token for bundleForGameSave != -1)
  {
    swift_once();
  }

  v0 = static GameSaveSyncedDirectory.bundleForGameSave;
  v4._object = 0xE000000000000000;
  v1._object = 0x800000023898C570;
  v1._countAndFlagsBits = 0xD000000000000016;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  static GameSaveSyncedDirectory.chooseSaveDataLocalized = v3;
}

void one-time initialization function for chooseSaveDataInfoLocalized()
{
  if (one-time initialization token for bundleForGameSave != -1)
  {
    swift_once();
  }

  v0 = static GameSaveSyncedDirectory.bundleForGameSave;
  v4._object = 0xE000000000000000;
  v1._object = 0x800000023898C510;
  v1._countAndFlagsBits = 0xD000000000000057;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  static GameSaveSyncedDirectory.chooseSaveDataInfoLocalized = v3;
}

void one-time initialization function for notNowButtonTitleLocalized(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, void **a5)
{
  if (one-time initialization token for bundleForGameSave != -1)
  {
    swift_once();
  }

  v9 = static GameSaveSyncedDirectory.bundleForGameSave;
  v13._object = 0xE000000000000000;
  v10._countAndFlagsBits = a2;
  v10._object = a3;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  v13._countAndFlagsBits = 0;
  v12 = NSLocalizedString(_:tableName:bundle:value:comment:)(v10, 0, v9, v11, v13);

  *a4 = v12._countAndFlagsBits;
  *a5 = v12._object;
}

Swift::Void __swiftcall GameSaveSyncedDirectory.drawStateUI(window:)(UIWindow *window)
{
  v2 = v1;
  v4 = *v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v14 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  type metadata accessor for MainActor();

  v10 = window;
  v11 = static MainActor.shared.getter();
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  v12[2] = v11;
  v12[3] = v13;
  v12[4] = v2;
  v12[5] = v10;
  v12[6] = v4;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v8, &closure #1 in GameSaveSyncedDirectory.drawStateUI(window:)partial apply, v12);
}

uint64_t closure #1 in GameSaveSyncedDirectory.drawStateUI(window:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[68] = a6;
  v6[67] = a5;
  v6[66] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo17UIAlertControllerCSgGMd, &_s7Combine9PublishedVySo17UIAlertControllerCSgGMR);
  v6[69] = v7;
  v8 = *(v7 - 8);
  v6[70] = v8;
  v9 = *(v8 + 64) + 15;
  v6[71] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy8GameSave0cD15SyncedDirectoryC7VersionCSgGMd, &_s7Combine9PublishedVy8GameSave0cD15SyncedDirectoryC7VersionCSgGMR);
  v6[72] = v10;
  v11 = *(v10 - 8);
  v6[73] = v11;
  v12 = *(v11 + 64) + 15;
  v6[74] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8GameSave0aB15SyncedDirectoryC5StateOSgMd, &_s8GameSave0aB15SyncedDirectoryC5StateOSgMR) - 8) + 64) + 15;
  v6[75] = swift_task_alloc();
  v14 = type metadata accessor for DispatchWorkItemFlags();
  v6[76] = v14;
  v15 = *(v14 - 8);
  v6[77] = v15;
  v16 = *(v15 + 64) + 15;
  v6[78] = swift_task_alloc();
  v17 = type metadata accessor for DispatchQoS();
  v6[79] = v17;
  v18 = *(v17 - 8);
  v6[80] = v18;
  v19 = *(v18 + 64) + 15;
  v6[81] = swift_task_alloc();
  v20 = type metadata accessor for DispatchTime();
  v6[82] = v20;
  v21 = *(v20 - 8);
  v6[83] = v21;
  v22 = *(v21 + 64) + 15;
  v6[84] = swift_task_alloc();
  v6[85] = swift_task_alloc();
  v23 = type metadata accessor for GameSaveSyncedDirectory.State(0);
  v6[86] = v23;
  v24 = *(v23 - 8);
  v6[87] = v24;
  v25 = *(v24 + 64) + 15;
  v6[88] = swift_task_alloc();
  v6[89] = swift_task_alloc();
  v6[90] = swift_task_alloc();
  v6[91] = swift_task_alloc();
  type metadata accessor for MainActor();
  v6[92] = static MainActor.shared.getter();
  v27 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in GameSaveSyncedDirectory.drawStateUI(window:), v27, v26);
}

id closure #1 in GameSaveSyncedDirectory.drawStateUI(window:)()
{
  v185 = v0;
  v1 = v0[91];
  v2 = v0[67];
  v3 = v0[66];
  v4 = v2;
  GameSaveSyncedDirectory.window.setter(v2);
  v5 = *(v3 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory_lock);
  [v5 lock];
  swift_getKeyPath();
  v0[50] = v3;
  lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory, type metadata accessor for GameSaveSyncedDirectory);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory___state;
  outlined init with copy of GameSaveSyncedDirectory.State(v3 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory___state, v1);
  [v5 unlock];
  LOBYTE(v2) = GameSaveSyncedDirectory.checkSameAlertState(as:)();
  outlined destroy of GameSaveSyncedDirectory.State(v1, type metadata accessor for GameSaveSyncedDirectory.State);
  if ((v2 & 1) == 0)
  {
    v8 = v0[66];
    swift_getKeyPath();
    v0[65] = v8;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v9 = *(v8 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__alert);
    if (v9)
    {
      v10 = v0[92];
      v11 = v0[67];
      v12 = v0[66];
      v13 = v9;

      v14 = swift_allocObject();
      *(v14 + 16) = v12;
      *(v14 + 24) = v11;
      v0[13] = partial apply for closure #1 in closure #1 in GameSaveSyncedDirectory.drawStateUI(window:);
      v0[14] = v14;
      v0[9] = MEMORY[0x277D85DD0];
      v0[10] = 1107296256;
      v0[11] = thunk for @escaping @callee_guaranteed () -> ();
      v0[12] = &block_descriptor_302;
      v15 = _Block_copy(v0 + 9);
      v16 = v0[14];
      v17 = v11;

      [v13 dismissViewControllerAnimated:0 completion:v15];
      _Block_release(v15);

      goto LABEL_5;
    }

    v178 = OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__alert;
    v180 = v8;
    v30 = v0[90];
    v31 = v0[86];
    v32 = v0[66];
    [v5 lock];
    swift_getKeyPath();
    v0[63] = v32;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    outlined init with copy of GameSaveSyncedDirectory.State(v3 + v6, v30);
    [v5 unlock];
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 3)
    {
      if (EnumCaseMultiPayload == 4)
      {
        v57 = v0[92];
        v58 = v0[90];

        goto LABEL_5;
      }

      if (EnumCaseMultiPayload == 5)
      {
        v36 = v0[92];
        v37 = v0[85];
        v38 = v0[84];
        v39 = v0[83];
        v40 = v0[82];
        v158 = v0[81];
        v176 = v0[80];
        v179 = v0[79];
        v172 = v0[77];
        v166 = v0[78];
        v169 = v0[76];
        v41 = v0[66];
        v181 = *(v0 + 67);

        type metadata accessor for UIAlertController(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
        v163 = static OS_dispatch_queue.main.getter();
        static DispatchTime.now()();
        swift_getKeyPath();
        v0[62] = v41;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v42 = *(v41 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__showSyncAlertAfterTimeHeuristic);
        + infix(_:_:)();
        v43 = *(v39 + 8);
        v43(v38, v40);
        v44 = swift_allocObject();
        *(v44 + 16) = v41;
        *(v44 + 24) = v181;
        v0[25] = partial apply for closure #2 in closure #1 in GameSaveSyncedDirectory.drawStateUI(window:);
        v0[26] = v44;
        v0[21] = MEMORY[0x277D85DD0];
        v0[22] = 1107296256;
        v0[23] = thunk for @escaping @callee_guaranteed () -> ();
        v0[24] = &block_descriptor_296;
        v45 = _Block_copy(v0 + 21);
        v46 = v181;

        static DispatchQoS.unspecified.getter();
        v0[64] = MEMORY[0x277D84F90];
        lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
        lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
        dispatch thunk of SetAlgebra.init<A>(_:)();
        MEMORY[0x23EE6B950](v37, v158, v166, v45);
        _Block_release(v45);

        (*(v172 + 8))(v166, v169);
        (*(v176 + 8))(v158, v179);
        v43(v37, v40);
        v47 = v0[26];

        goto LABEL_5;
      }

LABEL_15:
      v48 = v0[92];
      v49 = v0[90];

      v50 = v49;
LABEL_57:
      outlined destroy of GameSaveSyncedDirectory.State(v50, type metadata accessor for GameSaveSyncedDirectory.State);
      goto LABEL_5;
    }

    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        v34 = *v0[90];

        v184 = specialized Array._copyToContiguousArray()(v35);
        specialized MutableCollection<>.sort(by:)(&v184);
        v59 = v0[87];
        v60 = v0[75];
        v159 = v0[86];
        v161 = v0[74];
        v164 = v0[73];
        v167 = v0[72];
        v61 = v0[71];
        v170 = v61;
        v174 = v0[70];
        v177 = v0[69];
        v62 = v0[66];
        v156 = v184;
        [v5 lock];
        swift_getKeyPath();
        v0[61] = v62;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        outlined init with copy of GameSaveSyncedDirectory.State(v3 + v6, v60);
        [v5 unlock];
        (*(v59 + 56))(v60, 0, 1, v159);
        swift_getKeyPath();
        v63 = swift_task_alloc();
        *(v63 + 16) = v62;
        *(v63 + 24) = v60;
        v0[60] = v62;
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

        outlined destroy of URL?(v60, &_s8GameSave0aB15SyncedDirectoryC5StateOSgMd, &_s8GameSave0aB15SyncedDirectoryC5StateOSgMR);
        v64 = type metadata accessor for GameSaveSyncedDirectory.StateObserver(0);
        v65 = *(v64 + 48);
        v66 = *(v64 + 52);
        v67 = swift_allocObject();
        v68 = OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory13StateObserver__selectedVersion;
        v0[51] = 0;

        __swift_instantiateConcreteTypeFromMangledNameV2(&_s8GameSave0aB15SyncedDirectoryC7VersionCSgMd, &_s8GameSave0aB15SyncedDirectoryC7VersionCSgMR);
        Published.init(initialValue:)();
        (*(v164 + 32))(v67 + v68, v161, v167);
        v69 = OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory13StateObserver__alertAction;
        v0[48] = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17UIAlertControllerCSgMd, &_sSo17UIAlertControllerCSgMR);
        Published.init(initialValue:)();
        (*(v174 + 32))(v67 + v69, v170, v177);
        *(v67 + OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory13StateObserver_directory) = v62;
        swift_getKeyPath();
        v70 = swift_task_alloc();
        *(v70 + 16) = v62;
        *(v70 + 24) = v67;
        v0[46] = v62;
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

        if (one-time initialization token for chooseSaveDataLocalized != -1)
        {
          swift_once();
        }

        if (one-time initialization token for chooseSaveDataInfoLocalized != -1)
        {
          swift_once();
        }

        v71 = v0[66];
        v72 = static GameSaveSyncedDirectory.chooseSaveDataInfoLocalized;
        v73 = MEMORY[0x23EE6B6E0]();
        v74 = MEMORY[0x23EE6B6E0](v72, *(&v72 + 1));
        v75 = [objc_opt_self() alertControllerWithTitle:v73 message:v74 preferredStyle:1];

        GameSaveSyncedDirectory.alert.setter(v75);
        swift_getKeyPath();
        v0[44] = v71;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v76 = *(v180 + v178);
        if (!v76)
        {
          goto LABEL_28;
        }

        result = [v76 view];
        if (result)
        {
          v77 = result;
          v78 = MEMORY[0x23EE6B6E0](0xD000000000000019, 0x800000023898C350);
          [v77 setAccessibilityIdentifier_];

LABEL_28:
          v79 = v0[66];
          swift_getKeyPath();
          v0[45] = v79;
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          v80 = *(v180 + v178);
          if (!v80)
          {
            v155 = v0[92];

            goto LABEL_5;
          }

          v81 = v80;
          result = [v81 view];
          if (result)
          {
            v82 = result;
            v83 = v0[92];

            [v82 setTranslatesAutoresizingMaskIntoConstraints_];

            if (one-time initialization token for conflictContinueButtonTitleLocalized != -1)
            {
              swift_once();
            }

            v84 = v0[66];
            v85 = static GameSaveSyncedDirectory.conflictContinueButtonTitleLocalized;
            v86 = *algn_27DF41F78;

            v87 = MEMORY[0x23EE6B6E0](v85, v86);
            v0[19] = partial apply for closure #6 in closure #1 in GameSaveSyncedDirectory.drawStateUI(window:);
            v0[20] = v84;
            v0[15] = MEMORY[0x277D85DD0];
            v0[16] = 1107296256;
            v0[17] = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
            v0[18] = &block_descriptor_282;
            v88 = _Block_copy(v0 + 15);
            v89 = v0[20];

            v90 = [objc_opt_self() actionWithTitle:v87 style:0 handler:v88];
            _Block_release(v88);

            v91 = MEMORY[0x23EE6B6E0](0xD00000000000001BLL, 0x800000023898C390);
            [v90 setAccessibilityIdentifier_];

            [v90 setEnabled_];
            [v81 addAction_];
            swift_getKeyPath();
            v0[47] = v84;
            ObservationRegistrar.access<A, B>(_:keyPath:)();

            if (*(v84 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__stateObserver))
            {
              v183 = v0[67];
              lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type GameSaveSyncedDirectory.StateObserver and conformance GameSaveSyncedDirectory.StateObserver, type metadata accessor for GameSaveSyncedDirectory.StateObserver);
              swift_retain_n();
              v92 = v90;
              v93 = ObservedObject.init(wrappedValue:)();
              v95 = v94;
              v0[49] = v156;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8GameSave0aB15SyncedDirectoryC7VersionCGMd, &_sSay8GameSave0aB15SyncedDirectoryC7VersionCGMR);
              State.init(wrappedValue:)();
              v96 = v0[41];
              v97 = v0[42];
              v0[43] = 0;
              State.init(wrappedValue:)();
              v99 = v0[39];
              v98 = v0[40];
              v0[2] = v93;
              v0[3] = v95;
              v0[4] = v96;
              v0[5] = v97;
              v0[6] = v99;
              v0[7] = v98;
              v0[8] = v92;
              specialized GameSaveSyncedDirectory._customizeAlert<A>(_:with:)(v81, (v0 + 2));

              v100 = [v183 rootViewController];
              if (v100)
              {
                v101 = v100;
                [v100 presentViewController:v81 animated:1 completion:0];
              }

              else
              {
              }
            }

            else
            {
            }

            goto LABEL_5;
          }

LABEL_64:
          __break(1u);
          return result;
        }

LABEL_63:
        __break(1u);
        goto LABEL_64;
      }

      goto LABEL_15;
    }

    v173 = v0 + 89;
    v51 = v0[89];
    v52 = v0 + 88;
    v53 = v0[88];
    v54 = v0[86];
    v55 = v0[66];
    [v5 lock];
    swift_getKeyPath();
    v0[52] = v55;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    outlined init with copy of GameSaveSyncedDirectory.State(v3 + v6, v51);
    [v5 unlock];
    outlined init with copy of GameSaveSyncedDirectory.State(v51, v53);
    v56 = swift_getEnumCaseMultiPayload();
    if (v56 == 2)
    {
      v148 = *v173;
      v149 = *v52;
      v150 = specialized static GameSaveSyncedDirectory.shouldDismissSignedOutError()();
      outlined destroy of GameSaveSyncedDirectory.State(v148, type metadata accessor for GameSaveSyncedDirectory.State);
      outlined destroy of GameSaveSyncedDirectory.State(v149, type metadata accessor for GameSaveSyncedDirectory.State);
      if (v150)
      {
LABEL_53:
        v151 = v0[92];

LABEL_56:
        v50 = v0[90];
        goto LABEL_57;
      }
    }

    else
    {
      if (v56 == 5)
      {
        v52 = v0 + 89;
      }

      else
      {
        if (v56 != 3)
        {
          v152 = v0[92];
          v153 = v0[89];
          v154 = v0[88];

          outlined destroy of GameSaveSyncedDirectory.State(v153, type metadata accessor for GameSaveSyncedDirectory.State);
          outlined destroy of GameSaveSyncedDirectory.State(v154, type metadata accessor for GameSaveSyncedDirectory.State);
          goto LABEL_56;
        }

        outlined destroy of GameSaveSyncedDirectory.State(*v173, type metadata accessor for GameSaveSyncedDirectory.State);
      }

      outlined destroy of GameSaveSyncedDirectory.State(*v52, type metadata accessor for GameSaveSyncedDirectory.State);
    }

    v102 = v0[87];
    v103 = v0[75];
    v157 = v0[86];
    v160 = v0[74];
    v162 = v0[73];
    v165 = v0[72];
    v104 = v0[71];
    v168 = v104;
    v171 = v0[70];
    v175 = v0[69];
    v105 = v0[66];
    [v5 lock];
    swift_getKeyPath();
    v0[53] = v105;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    outlined init with copy of GameSaveSyncedDirectory.State(v3 + v6, v103);
    [v5 unlock];
    (*(v102 + 56))(v103, 0, 1, v157);
    swift_getKeyPath();
    v106 = swift_task_alloc();
    *(v106 + 16) = v105;
    *(v106 + 24) = v103;
    v0[54] = v105;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    outlined destroy of URL?(v103, &_s8GameSave0aB15SyncedDirectoryC5StateOSgMd, &_s8GameSave0aB15SyncedDirectoryC5StateOSgMR);
    v107 = type metadata accessor for GameSaveSyncedDirectory.StateObserver(0);
    v108 = *(v107 + 48);
    v109 = *(v107 + 52);
    v110 = swift_allocObject();
    v111 = OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory13StateObserver__selectedVersion;
    v0[55] = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8GameSave0aB15SyncedDirectoryC7VersionCSgMd, &_s8GameSave0aB15SyncedDirectoryC7VersionCSgMR);
    Published.init(initialValue:)();
    (*(v162 + 32))(v110 + v111, v160, v165);
    v112 = OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory13StateObserver__alertAction;
    v0[56] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17UIAlertControllerCSgMd, &_sSo17UIAlertControllerCSgMR);
    Published.init(initialValue:)();
    (*(v171 + 32))(v110 + v112, v168, v175);
    *(v110 + OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory13StateObserver_directory) = v105;
    swift_getKeyPath();
    v113 = swift_task_alloc();
    *(v113 + 16) = v105;
    *(v113 + 24) = v110;
    v0[57] = v105;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    if (one-time initialization token for turnOnICloudDriveTitleLocalized != -1)
    {
      swift_once();
    }

    if (one-time initialization token for turnOnICloudDriveInfoLocalized != -1)
    {
      swift_once();
    }

    v114 = v0[66];
    v115 = static GameSaveSyncedDirectory.turnOnICloudDriveInfoLocalized;
    v116 = MEMORY[0x23EE6B6E0]();
    v117 = MEMORY[0x23EE6B6E0](v115, *(&v115 + 1));
    v118 = [objc_opt_self() alertControllerWithTitle:v116 message:v117 preferredStyle:1];

    GameSaveSyncedDirectory.alert.setter(v118);
    swift_getKeyPath();
    v0[58] = v114;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v119 = *(v180 + v178);
    if (v119)
    {
      result = [v119 view];
      if (!result)
      {
        __break(1u);
        goto LABEL_62;
      }

      v120 = result;
      v121 = MEMORY[0x23EE6B6E0](0xD000000000000023, 0x800000023898C3B0);
      [v120 setAccessibilityIdentifier_];
    }

    v122 = v0[66];
    swift_getKeyPath();
    v0[59] = v122;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v123 = *(v180 + v178);
    if (v123)
    {
      v124 = v123;
      result = [v124 view];
      if (result)
      {
        v125 = result;
        v126 = v0[92];

        [v125 setTranslatesAutoresizingMaskIntoConstraints_];

        if (one-time initialization token for notNowButtonTitleLocalized != -1)
        {
          swift_once();
        }

        v127 = v0[66];
        v128 = static GameSaveSyncedDirectory.notNowButtonTitleLocalized;
        v129 = *algn_27DF41F38;

        v130 = MEMORY[0x23EE6B6E0](v128, v129);
        v0[37] = partial apply for closure #3 in closure #1 in GameSaveSyncedDirectory.drawStateUI(window:);
        v0[38] = v127;
        v0[33] = MEMORY[0x277D85DD0];
        v0[34] = 1107296256;
        v0[35] = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
        v0[36] = &block_descriptor_287;
        v131 = _Block_copy(v0 + 33);
        v132 = v0[38];

        v133 = objc_opt_self();
        v134 = [v133 actionWithTitle:v130 style:0 handler:v131];
        _Block_release(v131);

        v135 = MEMORY[0x23EE6B6E0](0xD00000000000001ELL, 0x800000023898C3E0);
        [v134 setAccessibilityIdentifier_];

        if (one-time initialization token for settingsButtonTitleLocalized != -1)
        {
          swift_once();
        }

        v136 = v0[67];
        v137 = v0[66];
        v138 = static GameSaveSyncedDirectory.settingsButtonTitleLocalized;
        v139 = *algn_27DF41F48;

        v140 = MEMORY[0x23EE6B6E0](v138, v139);
        v0[31] = partial apply for closure #4 in closure #1 in GameSaveSyncedDirectory.drawStateUI(window:);
        v0[32] = v137;
        v0[27] = MEMORY[0x277D85DD0];
        v0[28] = 1107296256;
        v0[29] = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
        v0[30] = &block_descriptor_290;
        v141 = _Block_copy(v0 + 27);
        v142 = v0[32];

        v143 = [v133 actionWithTitle:v140 style:0 handler:v141];
        _Block_release(v141);

        v144 = MEMORY[0x23EE6B6E0](0xD000000000000017, 0x800000023898C400);
        [v143 setAccessibilityIdentifier_];

        v145 = MEMORY[0x23EE6B6E0](0xD00000000000001ELL, 0x800000023898C3E0);
        [v134 setAccessibilityIdentifier_];

        [v124 addAction_];
        [v124 addAction_];
        [v124 setPreferredAction_];
        v146 = [v136 rootViewController];
        if (v146)
        {
          v147 = v146;
          [v146 presentViewController:v124 animated:1 completion:0];
        }

        else
        {
        }

        goto LABEL_56;
      }

LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    goto LABEL_53;
  }

  v7 = v0[92];

LABEL_5:
  v18 = v0[91];
  v19 = v0[90];
  v20 = v0[89];
  v21 = v0[88];
  v22 = v0[85];
  v23 = v0[84];
  v24 = v0[81];
  v25 = v0[78];
  v26 = v0[75];
  v27 = v0[74];
  v182 = v0[71];

  v28 = v0[1];

  return v28();
}

uint64_t closure #1 in closure #1 in GameSaveSyncedDirectory.drawStateUI(window:)(uint64_t a1, UIWindow *a2)
{
  v12 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8GameSave0aB15SyncedDirectoryC5StateOSgMd, &_s8GameSave0aB15SyncedDirectoryC5StateOSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v11 - v5;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = type metadata accessor for GameSaveSyncedDirectory.State(0);
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  *(&v11 - 2) = a1;
  *(&v11 - 1) = v6;
  v13 = a1;
  lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory, type metadata accessor for GameSaveSyncedDirectory);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  outlined destroy of URL?(v6, &_s8GameSave0aB15SyncedDirectoryC5StateOSgMd, &_s8GameSave0aB15SyncedDirectoryC5StateOSgMR);
  if (*(a1 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__alert))
  {
    v9 = swift_getKeyPath();
    MEMORY[0x28223BE20](v9);
    *(&v11 - 2) = a1;
    *(&v11 - 1) = 0;
    v13 = a1;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  GameSaveSyncedDirectory.drawStateUI(window:)(v12);
}

void closure #2 in closure #1 in GameSaveSyncedDirectory.drawStateUI(window:)(char *a1, void *a2)
{
  v46 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo17UIAlertControllerCSgGMd, &_s7Combine9PublishedVySo17UIAlertControllerCSgGMR);
  v52 = *(v3 - 8);
  v53 = v3;
  v4 = *(v52 + 64);
  MEMORY[0x28223BE20](v3);
  v51 = &v46 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy8GameSave0cD15SyncedDirectoryC7VersionCSgGMd, &_s7Combine9PublishedVy8GameSave0cD15SyncedDirectoryC7VersionCSgGMR);
  v49 = *(v6 - 8);
  v50 = v6;
  v7 = *(v49 + 64);
  MEMORY[0x28223BE20](v6);
  v48 = &v46 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8GameSave0aB15SyncedDirectoryC5StateOSgMd, &_s8GameSave0aB15SyncedDirectoryC5StateOSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v46 - v11;
  v13 = type metadata accessor for GameSaveSyncedDirectory.State(0);
  v47 = *(v13 - 8);
  v14 = *(v47 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MainActor();
  v54 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v17 = *&a1[OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory_lock];
  [v17 lock];
  swift_getKeyPath();
  aBlock[0] = a1;
  lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory, type metadata accessor for GameSaveSyncedDirectory);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v18 = OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory___state;
  outlined init with copy of GameSaveSyncedDirectory.State(&a1[OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory___state], v16);
  [v17 unlock];
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  outlined destroy of GameSaveSyncedDirectory.State(v16, type metadata accessor for GameSaveSyncedDirectory.State);
  if (EnumCaseMultiPayload != 5)
  {

    return;
  }

  [v17 lock];
  swift_getKeyPath();
  aBlock[0] = a1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  outlined init with copy of GameSaveSyncedDirectory.State(&a1[v18], v12);
  [v17 unlock];
  (*(v47 + 56))(v12, 0, 1, v13);
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  *(&v46 - 2) = a1;
  *(&v46 - 1) = v12;
  aBlock[0] = a1;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  outlined destroy of URL?(v12, &_s8GameSave0aB15SyncedDirectoryC5StateOSgMd, &_s8GameSave0aB15SyncedDirectoryC5StateOSgMR);
  v21 = type metadata accessor for GameSaveSyncedDirectory.StateObserver(0);
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  v24 = swift_allocObject();
  v25 = OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory13StateObserver__selectedVersion;
  aBlock[0] = 0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8GameSave0aB15SyncedDirectoryC7VersionCSgMd, &_s8GameSave0aB15SyncedDirectoryC7VersionCSgMR);
  v26 = v48;
  Published.init(initialValue:)();
  (*(v49 + 32))(&v24[v25], v26, v50);
  v27 = OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory13StateObserver__alertAction;
  aBlock[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17UIAlertControllerCSgMd, &_sSo17UIAlertControllerCSgMR);
  v28 = v51;
  Published.init(initialValue:)();
  (*(v52 + 32))(&v24[v27], v28, v53);
  *&v24[OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory13StateObserver_directory] = a1;
  v29 = swift_getKeyPath();
  MEMORY[0x28223BE20](v29);
  *(&v46 - 2) = a1;
  *(&v46 - 1) = v24;
  aBlock[0] = a1;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  if (one-time initialization token for syncSaveDataTitleLocalized != -1)
  {
    swift_once();
  }

  v30 = MEMORY[0x23EE6B6E0](static GameSaveSyncedDirectory.syncSaveDataTitleLocalized, *(&static GameSaveSyncedDirectory.syncSaveDataTitleLocalized + 1));
  v31 = MEMORY[0x23EE6B6E0](0, 0xE000000000000000);
  v32 = [objc_opt_self() alertControllerWithTitle:v30 message:v31 preferredStyle:1];

  GameSaveSyncedDirectory.alert.setter(v32);
  swift_getKeyPath();
  aBlock[0] = a1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v33 = OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__alert;
  v34 = *&a1[OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__alert];
  if (v34)
  {
    v35 = [v34 view];
    if (!v35)
    {
      __break(1u);
      return;
    }

    v36 = v35;
    v37 = MEMORY[0x23EE6B6E0](0xD000000000000017, 0x800000023898C440);
    [v36 setAccessibilityIdentifier_];
  }

  if (one-time initialization token for syncingContinueButtonTitleLocalized != -1)
  {
    swift_once();
  }

  v38 = static GameSaveSyncedDirectory.syncingContinueButtonTitleLocalized;

  v39 = MEMORY[0x23EE6B6E0](v38, *(&v38 + 1));
  aBlock[4] = partial apply for closure #1 in closure #2 in closure #1 in GameSaveSyncedDirectory.drawStateUI(window:);
  aBlock[5] = a1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
  aBlock[3] = &block_descriptor_309;
  v40 = _Block_copy(aBlock);

  v41 = [objc_opt_self() actionWithTitle:v39 style:0 handler:v40];
  _Block_release(v40);

  swift_getKeyPath();
  aBlock[0] = a1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  [*&a1[v33] addAction_];
  swift_getKeyPath();
  aBlock[0] = a1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v42 = *&a1[v33];
  if (v42)
  {
    v43 = v42;
    specialized GameSaveSyncedDirectory._customizeAlert<A>(_:with:)(v43);
    v44 = [v46 rootViewController];
    if (v44)
    {
      v45 = v44;
      [v44 presentViewController:v43 animated:1 completion:0];
    }

    else
    {
    }
  }

  else
  {
  }
}

uint64_t closure #1 in closure #2 in closure #1 in GameSaveSyncedDirectory.drawStateUI(window:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_getKeyPath();
  lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory, type metadata accessor for GameSaveSyncedDirectory);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(a2 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__stateObserver))
  {
    v3 = *(a2 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__stateObserver);

    GameSaveSyncedDirectory.StateObserver.cancel()();
  }
}

uint64_t closure #1 in closure #4 in closure #1 in GameSaveSyncedDirectory.drawStateUI(window:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a4;
  type metadata accessor for MainActor();
  *(v4 + 32) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in closure #4 in closure #1 in GameSaveSyncedDirectory.drawStateUI(window:), v6, v5);
}

uint64_t closure #1 in closure #4 in closure #1 in GameSaveSyncedDirectory.drawStateUI(window:)()
{
  v2 = v0[3];
  v1 = v0[4];

  swift_getKeyPath();
  v0[2] = v2;
  lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory, type metadata accessor for GameSaveSyncedDirectory);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = *(v2 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__stateObserver);
  if (v3)
  {
    v4 = objc_opt_self();

    v5 = [v4 standardUserDefaults];
    v6 = MEMORY[0x23EE6B6E0](0xD000000000000041, 0x800000023898BDF0);
    [v5 setBool:1 forKey:v6];

    v7 = *(v3 + OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory13StateObserver_directory);

    GameSaveSyncedDirectory.retryIfSignedIn(retryBlock:)(destructiveProjectEnumData for GameSaveFF, 0);
  }

  v8 = v0[1];

  return v8();
}

uint64_t closure #4 in closure #1 in GameSaveSyncedDirectory.drawStateUI(window:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v16 - v9;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  v11 = MEMORY[0x277D85700];
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v10, 1, 1, v12);

  v13 = static MainActor.shared.getter();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = v11;
  v14[4] = a2;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v10, a5, v14);
}

uint64_t closure #1 in closure #6 in closure #1 in GameSaveSyncedDirectory.drawStateUI(window:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a4;
  type metadata accessor for MainActor();
  *(v4 + 32) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in closure #6 in closure #1 in GameSaveSyncedDirectory.drawStateUI(window:), v6, v5);
}

uint64_t closure #1 in closure #6 in closure #1 in GameSaveSyncedDirectory.drawStateUI(window:)()
{
  v2 = v0[3];
  v1 = v0[4];

  swift_getKeyPath();
  v0[2] = v2;
  lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory, type metadata accessor for GameSaveSyncedDirectory);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = *(v2 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__stateObserver);
  if (v3)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    v4 = v0[2];
    if (v4)
    {
      v5 = *(v3 + OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory13StateObserver_directory);

      GameSaveSyncedDirectory.resolveConflicts(with:)(v4);
    }
  }

  v6 = v0[1];

  return v6();
}

uint64_t GameSaveSyncedDirectory.finishSyncing(statusDisplay:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v2[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](GameSaveSyncedDirectory.finishSyncing(statusDisplay:), 0, 0);
}

uint64_t GameSaveSyncedDirectory.finishSyncing(statusDisplay:)()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v1, 1, 1, v5);
  type metadata accessor for MainActor();

  v6 = v4;
  v7 = static MainActor.shared.getter();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = v3;
  v8[5] = v6;
  v8[6] = v2;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v1, &async function pointer to partial apply for closure #1 in GameSaveSyncedDirectory.drawStateUI(window:), v8);

  v10 = swift_allocObject();
  *(v10 + 16) = v3;
  *(v10 + 24) = v6;
  v11 = (v3 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory_onStateChange);
  v12 = *(v3 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory_onStateChange);
  v13 = *(v3 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory_onStateChange + 8);
  *v11 = partial apply for closure #1 in GameSaveSyncedDirectory.showUI(window:);
  v11[1] = v10;

  v14 = v6;
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed GameSaveSyncedDirectory.State) -> ())?(v12);
  v15 = swift_task_alloc();
  v0[6] = v15;
  *v15 = v0;
  v15[1] = GameSaveSyncedDirectory.finishSyncing(statusDisplay:);
  v16 = v0[3];

  return GameSaveSyncedDirectory.waitWithUI()();
}

{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t GameSaveSyncedDirectory.waitWithUI()()
{
  v1[3] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v1[4] = swift_task_alloc();
  v3 = type metadata accessor for GameSaveSyncedDirectory.State(0);
  v1[5] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v1[6] = swift_task_alloc();
  v5 = swift_task_alloc();
  v6 = OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory_lock;
  v7 = OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory___observationRegistrar;
  v1[7] = v5;
  v1[8] = v7;
  v1[9] = OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory___state;
  v1[10] = *(v0 + v6);
  v8 = swift_task_alloc();
  v1[11] = v8;
  *v8 = v1;
  v8[1] = GameSaveSyncedDirectory.waitWithUI();
  v9 = v1[3];

  return GameSaveSyncedDirectory._waitForDirectorySync(ui:)(1);
}

{
  v1 = *(*v0 + 88);
  v3 = *v0;

  return MEMORY[0x2822009F8](GameSaveSyncedDirectory.waitWithUI(), 0, 0);
}

{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];
  v5 = v0 + 7;
  v4 = v0[7];
  v7 = v0 + 6;
  v6 = v0[6];
  v26 = v1;
  v27 = v0[5];
  v8 = v0[3];
  [v2 lock];
  swift_getKeyPath();
  v0[2] = v8;
  lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory, type metadata accessor for GameSaveSyncedDirectory);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  outlined init with copy of GameSaveSyncedDirectory.State(v8 + v26, v4);
  [v2 unlock];
  outlined init with copy of GameSaveSyncedDirectory.State(v4, v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:
      v13 = *v5;
      v14 = *v7;
      v15 = specialized static GameSaveSyncedDirectory.shouldDismissSignedOutError()();
      outlined destroy of GameSaveSyncedDirectory.State(v13, type metadata accessor for GameSaveSyncedDirectory.State);
      outlined destroy of GameSaveSyncedDirectory.State(v14, type metadata accessor for GameSaveSyncedDirectory.State);
      if ((v15 & 1) == 0)
      {
        goto LABEL_7;
      }

      break;
    case 3:
      outlined destroy of GameSaveSyncedDirectory.State(*v5, type metadata accessor for GameSaveSyncedDirectory.State);
      goto LABEL_6;
    case 5:
      v7 = v0 + 7;
LABEL_6:
      outlined destroy of GameSaveSyncedDirectory.State(*v7, type metadata accessor for GameSaveSyncedDirectory.State);
LABEL_7:
      v10 = swift_task_alloc();
      v0[11] = v10;
      *v10 = v0;
      v10[1] = GameSaveSyncedDirectory.waitWithUI();
      v11 = v0[3];

      return GameSaveSyncedDirectory._waitForDirectorySync(ui:)(1);
    default:
      v16 = *v7;
      outlined destroy of GameSaveSyncedDirectory.State(*v5, type metadata accessor for GameSaveSyncedDirectory.State);
      outlined destroy of GameSaveSyncedDirectory.State(v16, type metadata accessor for GameSaveSyncedDirectory.State);
      break;
  }

  v17 = v0[6];
  v18 = v0[7];
  v20 = v0[3];
  v19 = v0[4];
  v21 = type metadata accessor for TaskPriority();
  (*(*(v21 - 8) + 56))(v19, 1, 1, v21);
  type metadata accessor for MainActor();

  v22 = static MainActor.shared.getter();
  v23 = swift_allocObject();
  v24 = MEMORY[0x277D85700];
  v23[2] = v22;
  v23[3] = v24;
  v23[4] = v20;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v19, &async function pointer to partial apply for closure #1 in GameSaveSyncedDirectory.waitWithUI(), v23);

  v25 = v0[1];

  return v25();
}

uint64_t closure #1 in GameSaveSyncedDirectory.waitWithUI()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8GameSave0aB15SyncedDirectoryC5StateOSgMd, &_s8GameSave0aB15SyncedDirectoryC5StateOSgMR) - 8) + 64) + 15;
  v4[7] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[8] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in GameSaveSyncedDirectory.waitWithUI(), v7, v6);
}

uint64_t closure #1 in GameSaveSyncedDirectory.waitWithUI()()
{
  v1 = v0[8];
  v2 = v0[6];

  swift_getKeyPath();
  v0[2] = v2;
  lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory, type metadata accessor for GameSaveSyncedDirectory);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v15 = OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__alert;
  v3 = *(v2 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__alert);
  if (v3)
  {
    [v3 dismissViewControllerAnimated:0 completion:0];
  }

  v4 = v0[6];
  v5 = v0[7];
  v6 = type metadata accessor for GameSaveSyncedDirectory.State(0);
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  swift_getKeyPath();
  v7 = swift_task_alloc();
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  v0[3] = v4;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  outlined destroy of URL?(v5, &_s8GameSave0aB15SyncedDirectoryC5StateOSgMd, &_s8GameSave0aB15SyncedDirectoryC5StateOSgMR);
  if (*(v2 + v15))
  {
    v8 = v0[6];
    swift_getKeyPath();
    v9 = swift_task_alloc();
    *(v9 + 16) = v8;
    *(v9 + 24) = 0;
    v0[5] = v8;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  v10 = v0[6];
  if (*(v10 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__window))
  {
    swift_getKeyPath();
    v11 = swift_task_alloc();
    *(v11 + 16) = v10;
    *(v11 + 24) = 0;
    v0[4] = v10;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  v12 = v0[7];

  v13 = v0[1];

  return v13();
}

uint64_t GameSaveSyncedDirectory.finishSyncing()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = GameSaveSyncedDirectory.finishSyncing();

  return GameSaveSyncedDirectory._waitForDirectorySync(ui:)(0);
}

Swift::Void __swiftcall GameSaveSyncedDirectory.cancel()()
{
  v1 = type metadata accessor for GameSaveSyncedDirectory.State(0);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v9 - v6;
  v8 = *(v0 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory_lock);
  [v8 lock];
  swift_getKeyPath();
  v10 = v0;
  lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory, type metadata accessor for GameSaveSyncedDirectory);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  outlined init with copy of GameSaveSyncedDirectory.State(v0 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory___state, v7);
  [v8 unlock];
  outlined init with take of GameSaveSyncedDirectory.State(v7, v5);
  if (swift_getEnumCaseMultiPayload() == 5)
  {
    swift_getKeyPath();
    v10 = v0;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    [*(v0 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__progress) cancel];
  }

  else
  {
    outlined destroy of GameSaveSyncedDirectory.State(v5, type metadata accessor for GameSaveSyncedDirectory.State);
  }
}

Swift::Void __swiftcall GameSaveSyncedDirectory.close()()
{
  v1 = v0;
  v2 = type metadata accessor for GameSaveSyncedDirectory.State(0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v28 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v28 - v10;
  v12 = *(v0 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory_lock);
  [v12 lock];
  swift_getKeyPath();
  v29 = v0;
  lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory, type metadata accessor for GameSaveSyncedDirectory);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  outlined init with copy of GameSaveSyncedDirectory.State(v0 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory___state, v11);
  v13 = 0x278A5B000uLL;
  [v12 unlock];
  outlined init with take of GameSaveSyncedDirectory.State(v11, v9);
  if (swift_getEnumCaseMultiPayload() != 6)
  {
    outlined destroy of GameSaveSyncedDirectory.State(v9, type metadata accessor for GameSaveSyncedDirectory.State);
    GameSaveSyncedDirectory.cancel()();
    if (one-time initialization token for common != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Logger.common);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_238952000, v15, v16, "Close GameSaveSyncedDirectory", v17, 2u);
      MEMORY[0x23EE6C260](v17, -1, -1);
    }

    swift_getKeyPath();
    v29 = v1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v18 = *(v1 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__accountSigningInObserver);
    if (v18)
    {
      v19 = objc_opt_self();
      swift_unknownObjectRetain();
      v20 = [v19 defaultCenter];
      [v20 removeObserver_];

      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      *(&v28 - 2) = v1;
      *(&v28 - 1) = 0;
      v29 = v1;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      swift_unknownObjectRelease();
      v13 = 0x278A5B000;
    }

    swift_storeEnumTagMultiPayload();
    GameSaveSyncedDirectory._moveToState(_:)(v6);
    GameSaveSyncedDirectory.sendDirectoryTelemetryLazy(from:)(v6);
    outlined destroy of GameSaveSyncedDirectory.State(v6, type metadata accessor for GameSaveSyncedDirectory.State);
    if (*(v1 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__lastResponse))
    {
      v22 = swift_getKeyPath();
      MEMORY[0x28223BE20](v22);
      *(&v28 - 2) = v1;
      *(&v28 - 1) = 0;
      v29 = v1;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    swift_getKeyPath();
    v29 = v1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v23 = OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__gameSyncedDirectoryPresenter;
    v24 = *(v1 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__gameSyncedDirectoryPresenter);
    v25 = *&v24[OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_lock];
    v26 = v24;
    [v25 lock];
    closure #1 in GameSyncedDirectoryHolder.stopAccessingSecurityScopedResource()(v26);
    [v25 *(v13 + 2040)];

    swift_getKeyPath();
    v29 = v1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v27 = *(v1 + v23);
    GameSyncedDirectoryHolder.stopHoldingItem()();
  }
}

uint64_t static GameSaveSyncedDirectory.cleanupDirectory(containerIdentifier:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = static GameSaveSyncedDirectory.cleanupDirectory(containerIdentifier:);

  return (specialized static GameSaveSyncedDirectory.cleanupDirectory(containerIdentifier:))(a1, a2);
}

uint64_t static GameSaveSyncedDirectory.cleanupDirectory(containerIdentifier:)()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t GameSaveSyncedDirectory.runBlockWithDirectoryURL(_:)(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = type metadata accessor for GameSaveSyncedDirectory.State(0);
  v3[7] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[8] = swift_task_alloc();
  v6 = type metadata accessor for URL();
  v3[9] = v6;
  v7 = *(v6 - 8);
  v3[10] = v7;
  v8 = *(v7 + 64) + 15;
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR) - 8) + 64) + 15;
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](GameSaveSyncedDirectory.runBlockWithDirectoryURL(_:), 0, 0);
}

uint64_t GameSaveSyncedDirectory.runBlockWithDirectoryURL(_:)()
{
  if (!os_variant_has_internal_content())
  {
    goto LABEL_21;
  }

  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v4 = *(v0[10] + 56);
  v4(v0[15], 1, 1, v0[9]);
  v5 = *(v3 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory_lock);
  [v5 lock];
  swift_getKeyPath();
  v0[2] = v3;
  lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory, type metadata accessor for GameSaveSyncedDirectory);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  outlined init with copy of GameSaveSyncedDirectory.State(v3 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory___state, v1);
  [v5 unlock];
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload >= 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v13 = *v0[8];
      if (v13 >> 62)
      {
        goto LABEL_32;
      }

      for (i = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = MEMORY[0x23EE6BAE0](v52))
      {
        v15 = 0;
        v53 = v4;
        while ((v13 & 0xC000000000000001) != 0)
        {
          v16 = MEMORY[0x23EE6BA40](v15, v13);
          v4 = (v15 + 1);
          if (__OFADD__(v15, 1))
          {
            goto LABEL_30;
          }

LABEL_14:
          if (*(v16 + OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_isLiveVersion))
          {
            v28 = v0[15];
            v30 = v0[9];
            v29 = v0[10];
            v31 = v16;
            outlined destroy of URL?(v28, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);

            (*(v29 + 16))(v28, v31 + OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_liveFileURL, v30);

            v53(v28, 0, 1, v30);
            goto LABEL_19;
          }

          ++v15;
          if (v4 == i)
          {
            goto LABEL_16;
          }
        }

        if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_31;
        }

        v17 = *(v13 + 8 * v15 + 32);

        v4 = (v15 + 1);
        if (!__OFADD__(v15, 1))
        {
          goto LABEL_14;
        }

LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        if (v13 < 0)
        {
          v52 = v13;
        }

        else
        {
          v52 = v13 & 0xFFFFFFFFFFFFFF8;
        }
      }

LABEL_16:
      __break(1u);
    }

    v18 = v0[15];
    v19 = v0[8];
    lazy protocol witness table accessor for type GameSaveSyncedDirectoryError and conformance GameSaveSyncedDirectoryError();
    swift_allocError();
    *v20 = 2;
    swift_willThrow();
    outlined destroy of URL?(v18, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    outlined destroy of GameSaveSyncedDirectory.State(v19, type metadata accessor for GameSaveSyncedDirectory.State);
    v22 = v0[14];
    v21 = v0[15];
    v24 = v0[12];
    v23 = v0[13];
    v25 = v0[11];
    v26 = v0[8];

    v27 = v0[1];
LABEL_22:

    return v27();
  }

  v8 = v0[14];
  v7 = v0[15];
  v9 = v0[12];
  v10 = v4;
  v12 = v0[9];
  v11 = v0[10];
  (*(v11 + 32))(v9, v0[8], v12);
  URL.deletingLastPathComponent()();
  (*(v11 + 8))(v9, v12);
  outlined destroy of URL?(v7, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v10(v8, 0, 1, v12);
  outlined init with take of URL?(v8, v7, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
LABEL_19:
  v32 = v0[13];
  v34 = v0[9];
  v33 = v0[10];
  outlined init with copy of URL?(v0[15], v32, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if ((*(v33 + 48))(v32, 1, v34) == 1)
  {
    outlined destroy of URL?(v0[15], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    outlined destroy of URL?(v0[13], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
LABEL_21:
    v36 = v0[14];
    v35 = v0[15];
    v38 = v0[12];
    v37 = v0[13];
    v39 = v0[11];
    v40 = v0[8];

    v27 = v0[1];
    goto LABEL_22;
  }

  v42 = v0[6];
  (*(v0[10] + 32))(v0[11], v0[13], v0[9]);
  swift_getKeyPath();
  v0[3] = v42;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v43 = *(v42 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__lastResponse);
  if (v43)
  {
    v44 = (v43 + OBJC_IVAR___GameSyncedDirectoryResponse_directorySandboxExtension);
    v45 = *v44;
    v46 = v44[1];
    String.utf8CString.getter();
  }

  v47 = v0[4];
  v0[16] = sandbox_extension_consume();
  swift_unknownObjectRelease();
  v54 = (v47 + *v47);
  v48 = v47[1];
  v49 = swift_task_alloc();
  v0[17] = v49;
  *v49 = v0;
  v49[1] = GameSaveSyncedDirectory.runBlockWithDirectoryURL(_:);
  v50 = v0[11];
  v51 = v0[5];

  return v54(v50);
}

{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = GameSaveSyncedDirectory.runBlockWithDirectoryURL(_:);
  }

  else
  {
    v3 = GameSaveSyncedDirectory.runBlockWithDirectoryURL(_:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  if (v0[16] != -1)
  {
    sandbox_extension_release();
  }

  (*(v0[10] + 8))(v0[11], v0[9]);
  outlined destroy of URL?(v0[15], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v2 = v0[14];
  v1 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[11];
  v6 = v0[8];

  v7 = v0[1];

  return v7();
}

{
  if (v0[16] != -1)
  {
    sandbox_extension_release();
  }

  v1 = v0[15];
  (*(v0[10] + 8))(v0[11], v0[9]);
  outlined destroy of URL?(v1, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v2 = v0[18];
  v4 = v0[14];
  v3 = v0[15];
  v6 = v0[12];
  v5 = v0[13];
  v7 = v0[11];
  v8 = v0[8];

  v9 = v0[1];

  return v9();
}

uint64_t GameSaveSyncedDirectory.deinit()
{
  outlined destroy of GameSaveSyncedDirectory.State(v0 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory___state, type metadata accessor for GameSaveSyncedDirectory.State);
  v1 = *(v0 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory_onStateChange + 8);
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed GameSaveSyncedDirectory.State) -> ())?(*(v0 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory_onStateChange));

  outlined destroy of URL?(v0 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__continuation, &_sScCyyts5NeverOGSgMd, &_sScCyyts5NeverOGSgMR);
  v2 = *(v0 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__accountSigningInObserver);
  swift_unknownObjectRelease();

  v3 = *(v0 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__containerIdentifier + 8);

  v4 = *(v0 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__stateObserver);

  outlined destroy of URL?(v0 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__alertPresentedState, &_s8GameSave0aB15SyncedDirectoryC5StateOSgMd, &_s8GameSave0aB15SyncedDirectoryC5StateOSgMR);
  v5 = OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory___observationRegistrar;
  v6 = type metadata accessor for ObservationRegistrar();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

uint64_t GameSaveSyncedDirectory.__deallocating_deinit()
{
  GameSaveSyncedDirectory.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t protocol witness for Identifiable.id.getter in conformance GameSaveSyncedDirectory@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory, type metadata accessor for GameSaveSyncedDirectory);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__containerIdentifier + 8);
  *a1 = *(v3 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__containerIdentifier);
  a1[1] = v4;
}

uint64_t key path getter for GameSaveSyncedDirectory.StateObserver.selectedVersion : GameSaveSyncedDirectory.StateObserver@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t key path setter for GameSaveSyncedDirectory.StateObserver.selectedVersion : GameSaveSyncedDirectory.StateObserver(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t serialize(_:at:)(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v6);
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

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_;

  return v7(a1);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC8GameSave0hI15SyncedDirectoryC7VersionC_Tt1g5(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
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

uint64_t closure #1 in OSLogArguments.append(_:)(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
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
    return MEMORY[0x277D84F90];
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
          return MEMORY[0x277D84F90];
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySnySiGGMd, &_ss23_ContiguousArrayStorageCySnySiGGMR);
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
    v10 = MEMORY[0x277D84F90];
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

_BYTE **closure #1 in OSLogArguments.append(_:)(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:privacy:)(uint64_t (*a1)(void))
{
  return a1() & 1;
}

{
  return a1();
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned Int32)@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS8GameSave0cD15SyncedDirectoryCGMd, &_ss18_DictionaryStorageCySS8GameSave0cD15SyncedDirectoryCGMR);
  v38 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
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
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
      v20 = *v5;
      v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

void *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS8GameSave0cD15SyncedDirectoryCGMd, &_ss18_DictionaryStorageCySS8GameSave0cD15SyncedDirectoryCGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

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

Swift::Int specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for GameSaveSyncedDirectory.Version(0);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v8, v9, a1, v4);
      *(v7 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }

  return result;
}

uint64_t specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v36 = type metadata accessor for Date();
  v8 = *(v36 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v36);
  v38 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v10);
  v37 = &v28 - v13;
  v29 = a2;
  if (a3 != a2)
  {
    v14 = *a4;
    v15 = type metadata accessor for MainActor();
    v34 = (v8 + 16);
    v35 = v15;
    v33 = (v8 + 8);
    v39 = v14;
    v16 = (v14 + 8 * a3 - 8);
    v17 = a1 - a3;
LABEL_5:
    v31 = v16;
    v32 = a3;
    v18 = *(v39 + 8 * a3);
    v30 = v17;
    while (1)
    {
      v19 = *v16;

      v41 = static MainActor.shared.getter();
      dispatch thunk of Actor.unownedExecutor.getter();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v20 = *v34;
      v21 = v36;
      v22 = v37;
      (*v34)(v37, v18 + OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_modifiedDate, v36);
      v23 = v19 + OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_modifiedDate;
      v40 = v19;
      v24 = v38;
      v20(v38, v23, v21);
      LOBYTE(v20) = static Date.< infix(_:_:)();
      v25 = *v33;
      (*v33)(v24, v21);
      v25(v22, v21);

      if ((v20 & 1) == 0)
      {
LABEL_4:
        a3 = v32 + 1;
        v16 = v31 + 1;
        v17 = v30 - 1;
        if (v32 + 1 == v29)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v39)
      {
        break;
      }

      v26 = *v16;
      v18 = v16[1];
      *v16 = v18;
      v16[1] = v26;
      --v16;
      if (__CFADD__(v17++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v128 = type metadata accessor for Date();
  v10 = *(*(v128 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v128);
  v127 = &v110 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v11);
  v126 = &v110 - v15;
  v16 = a3[1];
  if (v16 < 1)
  {
    v18 = MEMORY[0x277D84F90];
LABEL_96:
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_134;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_128:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v18);
      v18 = result;
    }

    v131 = v18;
    v106 = *(v18 + 2);
    if (v106 >= 2)
    {
      while (*a3)
      {
        v107 = *&v18[16 * v106];
        v108 = *&v18[16 * v106 + 24];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * v107), (*a3 + 8 * *&v18[16 * v106 + 16]), (*a3 + 8 * v108), v5);
        if (v6)
        {
        }

        if (v108 < v107)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = specialized _ArrayBuffer._consumeAndCreateNew()(v18);
        }

        if (v106 - 2 >= *(v18 + 2))
        {
          goto LABEL_122;
        }

        v109 = &v18[16 * v106];
        *v109 = v107;
        *(v109 + 1) = v108;
        v131 = v18;
        result = specialized Array.remove(at:)(v106 - 1);
        v18 = v131;
        v106 = *(v131 + 2);
        if (v106 <= 1)
        {
        }
      }

      goto LABEL_132;
    }
  }

  v111 = a4;
  v17 = 0;
  v125 = (v14 + 16);
  v18 = MEMORY[0x277D84F90];
  v124 = (v14 + 8);
  v112 = a3;
  v115 = a1;
  while (1)
  {
    v19 = v17 + 1;
    if (v17 + 1 < v16)
    {
      v121 = v17 + 1;
      v122 = v16;
      v113 = v18;
      v20 = *(*a3 + 8 * v19);
      v129 = *a3;
      v21 = *(v129 + 8 * v17);
      v22 = type metadata accessor for MainActor();
      v5 = v20;

      v130 = v21;

      v23 = static MainActor.shared.getter();
      v119 = v22;
      v120 = v23;
      dispatch thunk of Actor.unownedExecutor.getter();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v24 = v126;
      v25 = *v125;
      v26 = v128;
      (*v125)(v126, &v20[OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_modifiedDate], v128);
      v27 = v127;
      v118 = v25;
      v25(v127, v130 + OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_modifiedDate, v26);
      LODWORD(v123) = static Date.< infix(_:_:)();
      a3 = v124;
      v28 = *v124;
      (*v124)(v27, v26);
      v117 = v28;
      v28(v24, v26);

      v114 = v17;
      v29 = 8 * v17;
      v30 = (v129 + 8 * v17 + 16);
      v129 = v29;
      v31 = (v29 + 8);
      v19 = v121;
      do
      {
        v38 = v19;
        v18 = v31;
        ++v19;
        v116 = v38;
        if (v19 >= v122)
        {
          break;
        }

        v120 = v6;
        v121 = v19;
        v39 = *(v30 - 1);
        v5 = *v30;

        v130 = static MainActor.shared.getter();
        dispatch thunk of Actor.unownedExecutor.getter();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v32 = v126;
        v33 = v128;
        v34 = v118;
        (v118)(v126, &v5[OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_modifiedDate], v128);
        v35 = v127;
        v34(v127, v39 + OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_modifiedDate, v33);
        v36 = static Date.< infix(_:_:)() & 1;
        a3 = v117;
        (v117)(v35, v33);
        (a3)(v32, v33);

        ++v30;
        v31 = v18 + 8;
        v37 = (v123 & 1) == v36;
        v6 = v120;
        v19 = v121;
      }

      while (v37);
      if (v123)
      {
        v17 = v114;
        if (v19 < v114)
        {
          goto LABEL_125;
        }

        a3 = v112;
        if (v114 >= v19)
        {
          v18 = v113;
          a1 = v115;
        }

        else
        {
          v40 = v114;
          a1 = v115;
          v41 = v116;
          do
          {
            if (v40 != v41)
            {
              v44 = *a3;
              if (!*a3)
              {
                goto LABEL_131;
              }

              v42 = *(v44 + v129);
              *(v44 + v129) = *&v18[v44];
              *&v18[v44] = v42;
            }

            ++v40;
            v18 -= 8;
            v129 += 8;
          }

          while (v40 < v41--);
          v18 = v113;
        }
      }

      else
      {
        a3 = v112;
        v18 = v113;
        v17 = v114;
        a1 = v115;
      }
    }

    v45 = a3[1];
    if (v19 < v45)
    {
      if (__OFSUB__(v19, v17))
      {
        goto LABEL_124;
      }

      if (v19 - v17 < v111)
      {
        if (__OFADD__(v17, v111))
        {
          goto LABEL_126;
        }

        if (v17 + v111 >= v45)
        {
          v46 = a3[1];
        }

        else
        {
          v46 = (v17 + v111);
        }

        if (v46 < v17)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v19 != v46)
        {
          break;
        }
      }
    }

LABEL_45:
    if (v19 < v17)
    {
      goto LABEL_123;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v18 + 2) + 1, 1, v18);
      v18 = result;
    }

    v61 = *(v18 + 2);
    v60 = *(v18 + 3);
    v62 = v61 + 1;
    if (v61 >= v60 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v60 > 1), v61 + 1, 1, v18);
      v18 = result;
    }

    *(v18 + 2) = v62;
    v63 = &v18[16 * v61];
    *(v63 + 4) = v17;
    *(v63 + 5) = v19;
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_133;
    }

    v17 = v19;
    if (v61)
    {
      while (1)
      {
        v64 = v62 - 1;
        if (v62 >= 4)
        {
          break;
        }

        if (v62 == 3)
        {
          v65 = *(v18 + 4);
          v66 = *(v18 + 5);
          v75 = __OFSUB__(v66, v65);
          v67 = v66 - v65;
          v68 = v75;
LABEL_65:
          if (v68)
          {
            goto LABEL_112;
          }

          v81 = &v18[16 * v62];
          v83 = *v81;
          v82 = *(v81 + 1);
          v84 = __OFSUB__(v82, v83);
          v85 = v82 - v83;
          v86 = v84;
          if (v84)
          {
            goto LABEL_115;
          }

          v87 = &v18[16 * v64 + 32];
          v89 = *v87;
          v88 = *(v87 + 1);
          v75 = __OFSUB__(v88, v89);
          v90 = v88 - v89;
          if (v75)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v85, v90))
          {
            goto LABEL_119;
          }

          if (v85 + v90 >= v67)
          {
            if (v67 < v90)
            {
              v64 = v62 - 2;
            }

            goto LABEL_86;
          }

          goto LABEL_79;
        }

        v91 = &v18[16 * v62];
        v93 = *v91;
        v92 = *(v91 + 1);
        v75 = __OFSUB__(v92, v93);
        v85 = v92 - v93;
        v86 = v75;
LABEL_79:
        if (v86)
        {
          goto LABEL_114;
        }

        v94 = &v18[16 * v64];
        v96 = *(v94 + 4);
        v95 = *(v94 + 5);
        v75 = __OFSUB__(v95, v96);
        v97 = v95 - v96;
        if (v75)
        {
          goto LABEL_117;
        }

        if (v97 < v85)
        {
          goto LABEL_3;
        }

LABEL_86:
        v102 = v64 - 1;
        if (v64 - 1 >= v62)
        {
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
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
          goto LABEL_127;
        }

        if (!*a3)
        {
          goto LABEL_130;
        }

        v103 = *&v18[16 * v102 + 32];
        v104 = *&v18[16 * v64 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * v103), (*a3 + 8 * *&v18[16 * v64 + 32]), (*a3 + 8 * v104), v5);
        if (v6)
        {
        }

        if (v104 < v103)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = specialized _ArrayBuffer._consumeAndCreateNew()(v18);
        }

        if (v102 >= *(v18 + 2))
        {
          goto LABEL_109;
        }

        v105 = &v18[16 * v102];
        *(v105 + 4) = v103;
        *(v105 + 5) = v104;
        v131 = v18;
        result = specialized Array.remove(at:)(v64);
        v18 = v131;
        v62 = *(v131 + 2);
        if (v62 <= 1)
        {
          goto LABEL_3;
        }
      }

      v69 = &v18[16 * v62 + 32];
      v70 = *(v69 - 64);
      v71 = *(v69 - 56);
      v75 = __OFSUB__(v71, v70);
      v72 = v71 - v70;
      if (v75)
      {
        goto LABEL_110;
      }

      v74 = *(v69 - 48);
      v73 = *(v69 - 40);
      v75 = __OFSUB__(v73, v74);
      v67 = v73 - v74;
      v68 = v75;
      if (v75)
      {
        goto LABEL_111;
      }

      v76 = &v18[16 * v62];
      v78 = *v76;
      v77 = *(v76 + 1);
      v75 = __OFSUB__(v77, v78);
      v79 = v77 - v78;
      if (v75)
      {
        goto LABEL_113;
      }

      v75 = __OFADD__(v67, v79);
      v80 = v67 + v79;
      if (v75)
      {
        goto LABEL_116;
      }

      if (v80 >= v72)
      {
        v98 = &v18[16 * v64 + 32];
        v100 = *v98;
        v99 = *(v98 + 1);
        v75 = __OFSUB__(v99, v100);
        v101 = v99 - v100;
        if (v75)
        {
          goto LABEL_120;
        }

        if (v67 < v101)
        {
          v64 = v62 - 2;
        }

        goto LABEL_86;
      }

      goto LABEL_65;
    }

LABEL_3:
    v16 = a3[1];
    a1 = v115;
    if (v17 >= v16)
    {
      goto LABEL_96;
    }
  }

  v113 = v18;
  v120 = v6;
  v47 = *a3;
  v122 = type metadata accessor for MainActor();
  v123 = v47;
  v48 = (v47 + 8 * v19 - 8);
  v114 = v17;
  v49 = (v17 - v19);
  v117 = v46;
LABEL_36:
  v121 = v19;
  v50 = *(v123 + 8 * v19);
  v118 = v49;
  v119 = v48;
  v51 = v49;
  while (1)
  {
    v129 = v51;
    v52 = *v48;

    v130 = static MainActor.shared.getter();
    dispatch thunk of Actor.unownedExecutor.getter();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v53 = v126;
    v54 = *v125;
    v55 = v128;
    (*v125)(v126, v50 + OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_modifiedDate, v128);
    v5 = v127;
    v54(v127, v52 + OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_modifiedDate, v55);
    LOBYTE(v54) = static Date.< infix(_:_:)();
    v56 = *v124;
    (*v124)(v5, v55);
    v56(v53, v55);

    if ((v54 & 1) == 0)
    {
LABEL_35:
      v19 = v121 + 1;
      v48 = v119 + 1;
      v49 = v118 - 1;
      if ((v121 + 1) != v117)
      {
        goto LABEL_36;
      }

      v19 = v117;
      v6 = v120;
      a3 = v112;
      v18 = v113;
      v17 = v114;
      a1 = v115;
      goto LABEL_45;
    }

    v57 = v129;
    if (!v123)
    {
      break;
    }

    v58 = *v48;
    v50 = v48[1];
    *v48 = v50;
    v48[1] = v58;
    --v48;
    v59 = __CFADD__(v57, 1);
    v51 = (v57 + 1);
    if (v59)
    {
      goto LABEL_35;
    }
  }

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
  return result;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(char *a1, char *a2, char *a3, char *a4)
{
  v9 = type metadata accessor for Date();
  v52 = *(v9 - 8);
  v53 = v9;
  v10 = *(v52 + 8);
  v11 = MEMORY[0x28223BE20](v9);
  v55 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v54 = &v45 - v13;
  v14 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v14 = a2 - a1;
  }

  v15 = v14 >> 3;
  v16 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v16 = a3 - a2;
  }

  v17 = v16 >> 3;
  v58 = a4;
  if (v15 >= v16 >> 3)
  {
    v56 = a1;
    v18 = a4;
    if (a4 != a2 || &a2[8 * v17] <= a4)
    {
      memmove(a4, a2, 8 * v17);
      v18 = v58;
    }

    v59 = &v18[8 * v17];
    if (a3 - a2 < 8)
    {
      a1 = a2;
    }

    else
    {
      a1 = a2;
      if (a2 > v56)
      {
        v30 = type metadata accessor for MainActor();
        v48 = (v52 + 16);
        v49 = v30;
        v46 = v4;
        v47 = (v52 + 8);
LABEL_28:
        v52 = a1;
        v31 = a1 - 8;
        v32 = a3 - 8;
        v33 = v59;
        v50 = a1 - 8;
        do
        {
          v57 = v32;
          v35 = *(v33 - 1);
          v33 -= 8;
          v34 = v35;
          v36 = *v31;

          v51 = static MainActor.shared.getter();
          dispatch thunk of Actor.unownedExecutor.getter();
          if ((swift_task_isCurrentExecutor() & 1) == 0)
          {
            swift_task_reportUnexpectedExecutor();
          }

          v37 = *v48;
          v38 = v53;
          v39 = v54;
          (*v48)(v54, v34 + OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_modifiedDate, v53);
          v40 = v55;
          v37(v55, v36 + OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_modifiedDate, v38);
          LOBYTE(v37) = static Date.< infix(_:_:)();
          v41 = *v47;
          (*v47)(v40, v38);
          v41(v39, v38);

          if (v37)
          {
            a3 = v57;
            v18 = v58;
            v43 = v50;
            if (v57 + 8 != v52)
            {
              *v57 = *v50;
            }

            if (v59 <= v18 || (a1 = v43, v43 <= v56))
            {
              a1 = v43;
              goto LABEL_42;
            }

            goto LABEL_28;
          }

          v42 = v57;
          v18 = v58;
          if (v57 + 8 != v59)
          {
            *v57 = *v33;
          }

          v32 = v42 - 8;
          v59 = v33;
          v31 = v50;
        }

        while (v33 > v18);
        v59 = v33;
        a1 = v52;
      }
    }
  }

  else
  {
    v18 = a4;
    if (a4 != a1 || &a1[8 * v15] <= a4)
    {
      memmove(a4, a1, 8 * v15);
      v18 = v58;
    }

    v59 = &v18[8 * v15];
    if (a2 - a1 >= 8 && a2 < a3)
    {
      v57 = a3;
      v46 = v4;
      v19 = type metadata accessor for MainActor();
      v18 = v58;
      v50 = v52 + 16;
      v51 = v19;
      v20 = (v52 + 8);
      while (1)
      {
        v56 = a1;
        v52 = a2;
        v21 = *a2;
        v58 = v18;
        v22 = *v18;

        static MainActor.shared.getter();
        dispatch thunk of Actor.unownedExecutor.getter();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v23 = *v50;
        v25 = v53;
        v24 = v54;
        (*v50)(v54, v21 + OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_modifiedDate, v53);
        v26 = v55;
        v23(v55, v22 + OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_modifiedDate, v25);
        LOBYTE(v23) = static Date.< infix(_:_:)();
        v27 = *v20;
        (*v20)(v26, v25);
        v27(v24, v25);

        if ((v23 & 1) == 0)
        {
          break;
        }

        v28 = v52;
        a2 = v52 + 8;
        v29 = v56;
        v18 = v58;
        if (v56 != v52)
        {
          goto LABEL_18;
        }

LABEL_19:
        a1 = v29 + 8;
        if (v18 >= v59 || a2 >= v57)
        {
          goto LABEL_42;
        }
      }

      v28 = v58;
      v18 = v58 + 8;
      v29 = v56;
      a2 = v52;
      if (v56 == v58)
      {
        goto LABEL_19;
      }

LABEL_18:
      *v29 = *v28;
      goto LABEL_19;
    }
  }

LABEL_42:
  if (a1 != v18 || a1 >= &v18[(v59 - v18 + (v59 - v18 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(a1, v18, 8 * ((v59 - v18) / 8));
  }

  return 1;
}

uint64_t specialized Array.remove(at:)(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t specialized Array._copyToContiguousArray()(uint64_t a1)
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v2 = a1;
  if (a1 >= 0)
  {
    a1 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  v3 = MEMORY[0x23EE6BAE0](a1);
  if (!v3)
  {
LABEL_9:

    return MEMORY[0x277D84F90];
  }

  v4 = v3;
  v5 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC8GameSave0hI15SyncedDirectoryC7VersionC_Tt1g5(v3, 0);
  specialized Array._copyContents(initializing:)((v5 + 4), v4, v2);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_9;
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
    result = MEMORY[0x23EE6BAE0](v13);
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
      result = MEMORY[0x23EE6BAE0](v7);
      if (result <= v8)
      {
        if (v6 >= 1)
        {
          lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [GameSaveSyncedDirectory.Version] and conformance [A], &_sSay8GameSave0aB15SyncedDirectoryC7VersionCGMd, &_sSay8GameSave0aB15SyncedDirectoryC7VersionCGMR);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8GameSave0aB15SyncedDirectoryC7VersionCGMd, &_sSay8GameSave0aB15SyncedDirectoryC7VersionCGMR);
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
        type metadata accessor for GameSaveSyncedDirectory.Version(0);
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

uint64_t (*specialized protocol witness for Collection.subscript.read in conformance [A](uint64_t (*result)(uint64_t *a1), unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x23EE6BA40](a2, a3);
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
    *v3 = v5;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRSb_TG5(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRSb_TG5TQ0_;

  return v6(v2 + 32);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRSb_TG5TQ0_()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

id specialized closure #1 in closure #1 in static GameSaveSyncedDirectory.getGameSaveDaemonProxy(_:)()
{
  if (one-time initialization token for common != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.common);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_238952000, v1, v2, "Interruption handler called", v3, 2u);
    MEMORY[0x23EE6C260](v3, -1, -1);
  }

  v4 = static GameSaveSyncedDirectory.connectionToService;

  return [v4 invalidate];
}

void specialized closure #2 in closure #1 in static GameSaveSyncedDirectory.getGameSaveDaemonProxy(_:)()
{
  if (one-time initialization token for common != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.common);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_238952000, v1, v2, "Invalidation handler called", v3, 2u);
    MEMORY[0x23EE6C260](v3, -1, -1);
  }

  v4 = static GameSaveSyncedDirectory.connectionToService;
  static GameSaveSyncedDirectory.connectionToService = 0;
}

uint64_t specialized static GameSaveSyncedDirectory.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory, type metadata accessor for GameSaveSyncedDirectory);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *(a1 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__containerIdentifier);
  v4 = *(a1 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__containerIdentifier + 8);
  swift_getKeyPath();

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (v5 == *(a2 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__containerIdentifier) && v4 == *(a2 + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__containerIdentifier + 8))
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

uint64_t outlined init with copy of GameSaveSyncedDirectory.State(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GameSaveSyncedDirectory.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void specialized RemoteProgressObserver.observeValue(forKeyPath:of:change:context:)()
{
  v1 = v0;
  v2 = [*&v0[OBJC_IVAR____TtC8GameSave22RemoteProgressObserver_remoteProgress] userInfo];
  type metadata accessor for NSProgressUserInfoKey(0);
  lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type NSProgressUserInfoKey and conformance NSProgressUserInfoKey, type metadata accessor for NSProgressUserInfoKey);
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (*(v3 + 16) && (v4 = specialized __RawDictionaryStorage.find<A>(_:)(*MEMORY[0x277CCAED8]), (v5 & 1) != 0))
  {
    outlined init with copy of Any(*(v3 + 56) + 32 * v4, v21);

    if (swift_dynamicCast())
    {
      v6 = *&v1[OBJC_IVAR____TtC8GameSave22RemoteProgressObserver_localProgress];
      v7 = MEMORY[0x23EE6B6E0]();

      [v6 setLocalizedDescription_];
    }
  }

  else
  {
  }

  if (one-time initialization token for common != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.common);
  v9 = v1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v10, v11))
  {

    goto LABEL_12;
  }

  v12 = swift_slowAlloc();
  v13 = swift_slowAlloc();
  v21[0] = v13;
  *v12 = 136315394;
  v14 = *&v9[OBJC_IVAR____TtC8GameSave22RemoteProgressObserver_localProgress];
  v15 = [v14 localizedDescription];

  if (v15)
  {
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, v21);

    *(v12 + 4) = v19;
    *(v12 + 12) = 2048;
    [v14 fractionCompleted];
    *(v12 + 14) = v20;
    _os_log_impl(&dword_238952000, v10, v11, "Progress %s %f%%", v12, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x23EE6C260](v13, -1, -1);
    MEMORY[0x23EE6C260](v12, -1, -1);
LABEL_12:

    return;
  }

  __break(1u);
}

uint64_t specialized static GameSaveSyncedDirectory._resolveContainerIdentifier(_:)(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v3 = SecTaskCreateFromSelf(0);
    if (v3)
    {
      v4 = v3;
      if (one-time initialization token for common != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for Logger();
      __swift_project_value_buffer(v5, static Logger.common);
      v6 = specialized static EntitlementsUtils.getEntitledContainerIdentifiers(for:logger:)(v4);
      if (v6)
      {
        if (v6[2])
        {
          a1 = v6[4];
          v7 = v6[5];

          goto LABEL_11;
        }
      }
    }

    a1 = 0;
  }

LABEL_11:

  return a1;
}

uint64_t specialized static GameSaveSyncedDirectory.getGameSaveDaemonProxy(_:)(void *a1, uint64_t a2)
{
  if (one-time initialization token for connectionLock != -1)
  {
    swift_once();
  }

  v4 = static GameSaveSyncedDirectory.connectionLock;
  [static GameSaveSyncedDirectory.connectionLock lock];
  if (!static GameSaveSyncedDirectory.connectionToService)
  {
    v5 = objc_allocWithZone(MEMORY[0x277CCAE80]);
    v6 = MEMORY[0x23EE6B6E0](0xD000000000000013, 0x800000023898C1D0);
    v7 = [v5 initWithMachServiceName:v6 options:0];

    v8 = static GameSaveSyncedDirectory.connectionToService;
    static GameSaveSyncedDirectory.connectionToService = v7;
    v9 = v7;

    if (v9)
    {
      isa = gameSaveXPCInterface()().super.isa;
      [v9 setRemoteObjectInterface_];
      v23 = specialized closure #1 in closure #1 in static GameSaveSyncedDirectory.getGameSaveDaemonProxy(_:);
      v24 = 0;
      aBlock = MEMORY[0x277D85DD0];
      v20 = 1107296256;
      v21 = thunk for @escaping @callee_guaranteed () -> ();
      v22 = &block_descriptor_237;
      v11 = _Block_copy(&aBlock);

      [v9 setInterruptionHandler_];
      _Block_release(v11);
      v23 = specialized closure #2 in closure #1 in static GameSaveSyncedDirectory.getGameSaveDaemonProxy(_:);
      v24 = 0;
      aBlock = MEMORY[0x277D85DD0];
      v20 = 1107296256;
      v21 = thunk for @escaping @callee_guaranteed () -> ();
      v22 = &block_descriptor_240;
      v12 = _Block_copy(&aBlock);

      [v9 setInvalidationHandler_];
      _Block_release(v12);
      [v9 resume];
    }
  }

  [v4 unlock];
  v13 = static GameSaveSyncedDirectory.connectionToService;
  if (!static GameSaveSyncedDirectory.connectionToService)
  {
    return 0;
  }

  v23 = a1;
  v24 = a2;
  aBlock = MEMORY[0x277D85DD0];
  v20 = 1107296256;
  v21 = thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ();
  v22 = &block_descriptor_234;
  v14 = _Block_copy(&aBlock);
  v15 = v13;

  v16 = [v15 remoteObjectProxyWithErrorHandler_];
  _Block_release(v14);

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8GameSave0aB14DaemonProtocol_pMd, &_s8GameSave0aB14DaemonProtocol_pMR);
  if (swift_dynamicCast())
  {
    return v18;
  }

  else
  {
    return 0;
  }
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of URL?(v4, &v13, &_sSS_yptMd, _sSS_yptMR);
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

unint64_t lazy protocol witness table accessor for type GameSaveSyncedDirectoryError and conformance GameSaveSyncedDirectoryError()
{
  result = lazy protocol witness table cache variable for type GameSaveSyncedDirectoryError and conformance GameSaveSyncedDirectoryError;
  if (!lazy protocol witness table cache variable for type GameSaveSyncedDirectoryError and conformance GameSaveSyncedDirectoryError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GameSaveSyncedDirectoryError and conformance GameSaveSyncedDirectoryError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GameSaveSyncedDirectoryError and conformance GameSaveSyncedDirectoryError;
  if (!lazy protocol witness table cache variable for type GameSaveSyncedDirectoryError and conformance GameSaveSyncedDirectoryError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GameSaveSyncedDirectoryError and conformance GameSaveSyncedDirectoryError);
  }

  return result;
}

uint64_t outlined init with take of GameSaveSyncedDirectory.State(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GameSaveSyncedDirectory.State(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_238969C68(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  GameSaveSyncedDirectory.lastResponse.setter(v2);
}

uint64_t partial apply for closure #2 in GameSaveSyncedDirectory.resolveConflicts(with:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = GameSaveSyncedDirectory.finishSyncing();

  return closure #2 in GameSaveSyncedDirectory.resolveConflicts(with:)(a1, v4, v5, v6);
}

double partial apply for closure #1 in GameSaveSyncedDirectory.directorySyncStartTime.setter()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__directorySyncStartTime) = result;
  return result;
}

uint64_t _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo16NSURLResourceKeya_Tt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo16NSURLResourceKeyaGMd, &_ss11_SetStorageCySo16NSURLResourceKeyaGMR);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v27 = v1;
    v28 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v28 + 8 * v4);
      v8 = *(v3 + 40);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v29 = v7;
      String.hash(into:)();
      v9 = Hasher._finalize()();

      v11 = -1 << *(v3 + 32);
      v12 = v9 & ~v11;
      v13 = v12 >> 6;
      v14 = *(v5 + 8 * (v12 >> 6));
      v15 = 1 << v12;
      if (((1 << v12) & v14) == 0)
      {
        goto LABEL_15;
      }

      v16 = ~v11;
      do
      {
        v17 = *(*(v3 + 48) + 8 * v12);
        v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = v19;
        if (v18 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v20 == v21)
        {

LABEL_4:
          v6 = v27;
          goto LABEL_5;
        }

        v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v23)
        {

          goto LABEL_4;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *(v5 + 8 * (v12 >> 6));
        v15 = 1 << v12;
      }

      while (((1 << v12) & v14) != 0);
      v6 = v27;
LABEL_15:
      *(v5 + 8 * v13) = v15 | v14;
      *(*(v3 + 48) + 8 * v12) = v29;
      v24 = *(v3 + 16);
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v26;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t specialized GameSaveSyncedDirectory.checkForConflicts(_:_:)(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2[18] = a1;
  v2[19] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8) + 64) + 15;
  v2[20] = swift_task_alloc();
  v4 = type metadata accessor for Date();
  v2[21] = v4;
  v5 = *(v4 - 8);
  v2[22] = v5;
  v6 = *(v5 + 64) + 15;
  v2[23] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation17URLResourceValuesVSgMd, &_s10Foundation17URLResourceValuesVSgMR) - 8) + 64) + 15;
  v2[24] = swift_task_alloc();
  v8 = type metadata accessor for URLResourceValues();
  v2[25] = v8;
  v9 = *(v8 - 8);
  v2[26] = v9;
  v10 = *(v9 + 64) + 15;
  v2[27] = swift_task_alloc();
  v11 = type metadata accessor for GameSaveSyncedDirectory.State(0);
  v2[28] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v2[29] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR) - 8) + 64) + 15;
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v14 = type metadata accessor for URL();
  v2[32] = v14;
  v15 = *(v14 - 8);
  v2[33] = v15;
  v16 = *(v15 + 64) + 15;
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();
  v2[42] = swift_task_alloc();
  v17 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](specialized GameSaveSyncedDirectory.checkForConflicts(_:_:), 0, 0);
}

void specialized GameSaveSyncedDirectory.checkForConflicts(_:_:)()
{
  v282 = v0;
  v1 = v0;
  v281 = *MEMORY[0x277D85DE8];
  v2 = *(v0 + 336);
  v269 = *(v1 + 328);
  v3 = *(v1 + 264);
  v4 = *(v1 + 144);
  v5 = *(v1 + 152);
  v256 = v4;
  v260 = *(v1 + 256);
  *(v1 + 344) = v1;
  swift_getKeyPath();
  *(v1 + 352) = OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory___observationRegistrar;
  *(v1 + 88) = v5;
  *(v1 + 360) = lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory, type metadata accessor for GameSaveSyncedDirectory);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__gameSyncedDirectoryPresenter;
  v264 = OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__gameSyncedDirectoryPresenter;
  *(v1 + 368) = OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__gameSyncedDirectoryPresenter;
  v7 = *(v4 + OBJC_IVAR___GameSyncedDirectoryResponse_gameSavedDataFolderURL);
  v8 = *(v5 + v6);
  v9 = [v7 url];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v10 = *&v8[OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_lock];
  [v10 lock];
  v8[OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_shouldStopAccessingSecurityScopedResource] = URL.startAccessingSecurityScopedResource()();
  v11 = OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_securityScopedURL;
  outlined destroy of URL?(&v8[OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_securityScopedURL], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v12 = v3[2];
  *(v1 + 376) = v12;
  *(v1 + 384) = (v3 + 2) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v13 = v260;
  v12(&v8[v11], v2, v260);
  v14 = v3[7];
  *(v1 + 392) = v14;
  *(v1 + 400) = (v3 + 7) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v14(&v8[v11], 0, 1, v260);
  [v10 unlock];
  v15 = v3[1];
  *(v1 + 408) = v15;
  *(v1 + 416) = (v3 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v254 = v15;
  v15(v2, v260);

  v16 = *(v256 + OBJC_IVAR___GameSyncedDirectoryResponse_directorySandboxExtension);
  v17 = *(v256 + OBJC_IVAR___GameSyncedDirectoryResponse_directorySandboxExtension + 8);
  String.utf8CString.getter();
  v252 = sandbox_extension_consume();
  *(v1 + 424) = v252;

  v261 = v12;
  v12(v269, v256 + OBJC_IVAR___GameSyncedDirectoryResponse_directoryURL, v13);
  swift_getKeyPath();
  *(v1 + 96) = v5;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v18 = *(v5 + v264);
  v19 = *&v18[OBJC_IVAR____TtC8GameSave25GameSyncedDirectoryHolder_lock];
  v20 = v18;
  [v19 lock];
  closure #1 in GameSyncedDirectoryHolder.startHoldingItem(at:)(v20, v269);
  *(v1 + 432) = 0;
  v270 = v1 + 96;
  v21 = *(v1 + 256);
  v22 = *(v1 + 264);
  v23 = *(v1 + 248);
  v24 = *(v1 + 152);
  [v19 unlock];

  GameSaveSyncedDirectory.getLocalURL()(v23);
  v25 = *(v22 + 48);
  *(v1 + 440) = v25;
  *(v1 + 448) = (v22 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v26 = v1;
  if (v25(v23, 1, v21) != 1)
  {
    (*(*(v1 + 264) + 32))(*(v1 + 320), *(v1 + 248), *(v1 + 256));
    *(v1 + 504) = 0;
    v30 = objc_opt_self();
    v31 = [v30 defaultManager];
    countAndFlagsBits = URL.path(percentEncoded:)(0)._countAndFlagsBits;
    v33 = MEMORY[0x23EE6B6E0](countAndFlagsBits);

    v34 = [v31 fileExistsAtPath:v33 isDirectory:v1 + 504];

    v29 = v1 + 96;
    if (!v34 || *(v1 + 504) != 1)
    {
      v28 = v254;
      v254(*(v1 + 320), *(v1 + 256));
      v27 = 0;
      goto LABEL_9;
    }

    v35 = (v1 + 56);
    v36 = *(v1 + 320);
    v37 = [v30 defaultManager];
    v38 = NSFileManager.enumerator(at:includingPropertiesForKeys:options:errorHandler:)();

    v39 = v252;
    if (v38)
    {
      v40 = [v38 nextObject];
      v41 = v26[40];
      v42 = v26[32];
      if (v40)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();

        v28 = v254;
        v254(v41, v42);
      }

      else
      {
        v28 = v254;
        v254(v26[40], v26[32]);

        v279 = 0u;
        v280 = 0u;
      }

      v197 = v280;
      *v35 = v279;
      *(v270 - 24) = v197;
      if (v26[10])
      {
        v27 = 1;
LABEL_73:
        outlined destroy of URL?(v270 - 40, &_sypSgMd, &_sypSgMR);
        goto LABEL_10;
      }
    }

    else
    {
      v28 = v254;
      v254(v26[40], v26[32]);
      *v35 = 0u;
      *(v270 - 24) = 0u;
    }

    v27 = 0;
    goto LABEL_73;
  }

  outlined destroy of URL?(*(v1 + 248), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v27 = 0;
  v28 = v254;
  v29 = v1 + 96;
LABEL_9:
  v39 = v252;
LABEL_10:
  *(v29 + 409) = v27;
  v43 = v26[18] + OBJC_IVAR___GameSyncedDirectoryResponse_numberOfConflicts;
  v44 = *v43;
  v26[57] = *v43;
  v45 = *(v43 + 8);
  *(v29 + 410) = v45;
  if ((v27 & 1) == 0 && (v45 & 1) == 0 && !v44)
  {
    if (one-time initialization token for common != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    __swift_project_value_buffer(v46, static Logger.common);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      v50 = "No conflicts for for directory";
LABEL_17:
      _os_log_impl(&dword_238952000, v47, v48, v50, v49, 2u);
      MEMORY[0x23EE6C260](v49, -1, -1);
      goto LABEL_18;
    }

    goto LABEL_18;
  }

  v69 = v26[19];
  swift_getKeyPath();
  v26[13] = v69;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v70 = OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__progress;
  v26[58] = OBJC_IVAR____TtC8GameSave23GameSaveSyncedDirectory__progress;
  if ([*(v69 + v70) isCancelled] && (*(v26[18] + OBJC_IVAR___GameSyncedDirectoryResponse_isOnline) & 1) == 0)
  {
    if (one-time initialization token for common != -1)
    {
      swift_once();
    }

    v133 = type metadata accessor for Logger();
    __swift_project_value_buffer(v133, static Logger.common);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      v50 = "User canceled the sync";
      goto LABEL_17;
    }

LABEL_18:
    v51 = v26[41];
    v52 = v26[32];
    v54 = v26[18];
    v53 = v26[19];

    GameSaveSyncedDirectory.moveToLoadedState(response:)(v54);
    v28(v51, v52);
    v277 = v26;
    if (v39 == -1)
    {
LABEL_20:
      v57 = v26[41];
      v56 = v26[42];
      v59 = v26[39];
      v58 = v26[40];
      v61 = v26[37];
      v60 = v26[38];
      v62 = v26[35];
      v63 = v26[36];
      v64 = v26[34];
      v65 = v26[31];
      v257 = v26[30];
      v262 = v26[29];
      v265 = v26[27];
      v271 = v26[24];
      v272 = v26[23];
      v66 = v26[20];

      v67 = v277[1];
      v68 = *MEMORY[0x277D85DE8];

      v67();
      return;
    }

LABEL_19:
    v55 = v26[53];
    sandbox_extension_release();
    goto LABEL_20;
  }

  v71 = v26[19];
  swift_getKeyPath();
  v26[14] = v71;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v72 = *(v69 + v70);
  v73 = MEMORY[0x23EE6B6E0](0xD000000000000018, 0x800000023898C290);
  [v72 setLocalizedDescription_];

  if (one-time initialization token for common != -1)
  {
    swift_once();
  }

  v74 = v26[41];
  v75 = v26[39];
  v76 = v26[32];
  v77 = type metadata accessor for Logger();
  v26[59] = __swift_project_value_buffer(v77, static Logger.common);
  v261(v75, v74, v76);
  v78 = Logger.logObject.getter();
  v79 = static os_log_type_t.default.getter();
  v80 = os_log_type_enabled(v78, v79);
  v81 = v26[39];
  v82 = v26[32];
  if (v80)
  {
    v83 = swift_slowAlloc();
    v84 = swift_slowAlloc();
    *&v279 = v84;
    *v83 = 136315138;
    lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
    v85 = dispatch thunk of CustomStringConvertible.description.getter();
    v86 = v28;
    v87 = v85;
    v89 = v88;
    v86(v81, v82);
    v90 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v87, v89, &v279);

    *(v83 + 4) = v90;
    _os_log_impl(&dword_238952000, v78, v79, "Checking for conflicts at %s", v83, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v84);
    MEMORY[0x23EE6C260](v84, -1, -1);
    MEMORY[0x23EE6C260](v83, -1, -1);
  }

  else
  {

    v28(v81, v82);
  }

  v91 = v26[41];
  v92 = objc_opt_self();
  v26[60] = v92;
  URL._bridgeToObjectiveC()(v93);
  v95 = v94;
  v96 = [v92 unresolvedConflictVersionsOfItemAtURL_];

  if (!v96)
  {
    v123 = v26[52];
    v124 = v26[53];
    v125 = v26[51];
    v126 = v26[41];
    v127 = v26[32];
    v129 = v26[28];
    v128 = v26[29];
    v130 = v26[19];
    lazy protocol witness table accessor for type GameSaveSyncedDirectoryError and conformance GameSaveSyncedDirectoryError();
    v131 = swift_allocError();
    *v132 = 1;
    *v128 = v131;
    swift_storeEnumTagMultiPayload();
    GameSaveSyncedDirectory._moveToState(_:)(v128);
    GameSaveSyncedDirectory.sendDirectoryTelemetryLazy(from:)(v128);
    outlined destroy of GameSaveSyncedDirectory.State(v128, type metadata accessor for GameSaveSyncedDirectory.State);
    v125(v126, v127);
    v277 = v26;
    if (v124 == -1)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v97 = *(v270 + 410);
  type metadata accessor for UIAlertController(0, &lazy cache variable for type metadata for NSFileVersion, 0x277CCAA18);
  v98 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v99 = v98 >> 62;
  if (v97 == 1)
  {
    v100 = v26[43];
    goto LABEL_33;
  }

  if (v99)
  {
    if (v98 < 0)
    {
      v248 = v98;
    }

    else
    {
      v248 = v98 & 0xFFFFFFFFFFFFFF8;
    }

    v249 = MEMORY[0x23EE6BAE0](v248);
    v100 = v26;
    if (v249)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v100 = v26;
    if (*((v98 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_33;
    }
  }

  v100 = v26;
  if (v26[57] < 1)
  {
LABEL_33:
    v277 = v100;
    if (v99)
    {
      if (v98 < 0)
      {
        v247 = v98;
      }

      else
      {
        v247 = v98 & 0xFFFFFFFFFFFFFF8;
      }

      v101 = MEMORY[0x23EE6BAE0](v247);
    }

    else
    {
      v101 = *((v98 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v102 = *(v270 + 409);
    v103 = (v26[57] == 0) & ~*(v270 + 410);
    if (!v101)
    {
      v103 = 1;
    }

    v104 = v26[59];
    v106 = v26[47];
    v105 = v26[48];
    v107 = v26[41];
    v108 = v26[32];
    if (!v101 && (v102 & 1) == 0)
    {
      v109 = v26[38];

      v106(v109, v107, v108);
      v110 = Logger.logObject.getter();
      v111 = static os_log_type_t.default.getter();
      v112 = os_log_type_enabled(v110, v111);
      v114 = v26[51];
      v113 = v26[52];
      v115 = v26[38];
      v116 = v26[32];
      if (v112)
      {
        v117 = swift_slowAlloc();
        v118 = swift_slowAlloc();
        *&v279 = v118;
        *v117 = 136315138;
        lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
        v119 = dispatch thunk of CustomStringConvertible.description.getter();
        v121 = v120;
        v114(v115, v116);
        v122 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v119, v121, &v279);

        *(v117 + 4) = v122;
        _os_log_impl(&dword_238952000, v110, v111, "No conflicts found for %s", v117, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v118);
        MEMORY[0x23EE6C260](v118, -1, -1);
        MEMORY[0x23EE6C260](v117, -1, -1);
      }

      else
      {

        v114(v115, v116);
      }

      v192 = v26[58];
      v193 = v26[44];
      v194 = v26[45];
      v196 = v26[18];
      v195 = v26[19];
      swift_getKeyPath();
      v26[16] = v195;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      [*(v195 + v192) setCompletedUnitCount_];
      GameSaveSyncedDirectory.moveToLoadedState(response:)(v196);
      goto LABEL_87;
    }

    v273 = v102 | v103;
    v106(v26[37], v107, v108);
    v145 = Logger.logObject.getter();
    v146 = static os_log_type_t.default.getter();
    v147 = os_log_type_enabled(v145, v146);
    v148 = v26[51];
    v149 = v26[52];
    v150 = v26[37];
    v151 = v26[32];
    if (v147)
    {
      v152 = swift_slowAlloc();
      v266 = swift_slowAlloc();
      *&v279 = v266;
      *v152 = 136315138;
      lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
      v153 = dispatch thunk of CustomStringConvertible.description.getter();
      v155 = v154;
      v148(v150, v151);
      v156 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v153, v155, &v279);

      *(v152 + 4) = v156;
      _os_log_impl(&dword_238952000, v145, v146, "Found conflicts for %s", v152, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v266);
      MEMORY[0x23EE6C260](v266, -1, -1);
      MEMORY[0x23EE6C260](v152, -1, -1);
    }

    else
    {

      v148(v150, v151);
    }

    v157 = v26[54];
    v158 = v26[41];
    if (*(v26[18] + OBJC_IVAR___GameSyncedDirectoryResponse_devices))
    {
      v159 = *(v26[18] + OBJC_IVAR___GameSyncedDirectoryResponse_devices);
    }

    else
    {
      v159 = MEMORY[0x277D84F90];
    }

    v160 = swift_task_alloc();
    *(v160 + 16) = v158;
    *(v160 + 24) = v159;

    v161 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySo13NSFileVersionCG_8GameSave0fG15SyncedDirectoryC0E0Cs5NeverOTg5(partial apply for closure #1 in GameSaveSyncedDirectory.checkForConflicts(_:_:), v160, v98);

    v278 = v161;
    if (v273)
    {
      v274 = v157;
      v163 = v26[55];
      v162 = v26[56];
      v164 = v26[48];
      v165 = v26[32];
      v166 = v26[30];
      v167 = v26[19];
      (v26[47])(v26[36], v26[41], v165);
      GameSaveSyncedDirectory.getLocalURL()(v166);
      if (v163(v166, 1, v165) == 1)
      {
        goto LABEL_99;
      }

      v168 = v26[49];
      v258 = v26[50];
      v170 = v26[47];
      v169 = v26[48];
      v171 = v26[42];
      v172 = v26[36];
      v173 = v26[32];
      v174 = v26[30];
      v267 = v26[24];

      v170(v171, v172, v173);
      v175 = type metadata accessor for GameSaveSyncedDirectory.Version(0);
      v176 = *(v175 + 48);
      v177 = *(v175 + 52);
      swift_allocObject();

      v178 = GameSaveSyncedDirectory.Version.init(liveFileURL:version:lastEditorDeviceName:devices:)(v171, 0, 0, 0, v159);
      v179 = OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_localURL;

      outlined destroy of URL?(v180 + v179, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v170(&v178[v179], v174, v173);
      v168(&v178[v179], 0, 1, v173);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo16NSURLResourceKeyaGMd, &_ss23_ContiguousArrayStorageCySo16NSURLResourceKeyaGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_238987820;
      v182 = *MEMORY[0x277CBE7B0];
      *(inited + 32) = *MEMORY[0x277CBE7B0];
      v183 = v182;
      _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo16NSURLResourceKeya_Tt0g5Tf4g_n(inited);
      swift_setDeallocating();
      outlined destroy of GameSaveSyncedDirectory.State(inited + 32, type metadata accessor for NSURLResourceKey);
      URL.resourceValues(forKeys:)();
      v184 = v274;
      v186 = v26[51];
      v185 = v26[52];
      v268 = v26[36];
      v187 = v26[32];
      v275 = v26[30];
      if (v184)
      {
        v188 = v26[25];
        v189 = v26[26];
        v190 = v26[24];

        v186(v268, v187);
        v186(v275, v187);
        (*(v189 + 56))(v190, 1, 1, v188);
        v191 = outlined destroy of URL?(v190, &_s10Foundation17URLResourceValuesVSgMd, &_s10Foundation17URLResourceValuesVSgMR);
      }

      else
      {
        v253 = v159;
        v199 = v26[26];
        v198 = v26[27];
        v200 = v26[24];
        v201 = v26[25];
        v259 = v26[22];
        v263 = v26[21];
        v255 = v26[20];

        (*(v199 + 56))(v200, 0, 1, v201);
        (*(v199 + 32))(v198, v200, v201);
        URLResourceValues.contentModificationDate.getter();
        (*(v199 + 8))(v198, v201);
        v186(v268, v187);
        v186(v275, v187);
        if ((*(v259 + 48))(v255, 1, v263) == 1)
        {
          v191 = outlined destroy of URL?(v26[20], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        }

        else
        {
          v203 = v26[22];
          v202 = v26[23];
          v204 = v26[21];
          (*(v203 + 32))(v202, v26[20], v204);
          v191 = (*(v203 + 40))(&v178[OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_modifiedDate], v202, v204);
        }

        v159 = v253;
      }

      MEMORY[0x23EE6B780](v191);
      if (*((v278 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v278 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v251 = *((v278 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    else
    {
    }

    v205 = v26[60];
    v207 = v26[47];
    v206 = v26[48];
    v209 = v26[34];
    v208 = v26[35];
    v210 = v26[32];
    v211 = v26[18];
    v207(v208, v26[41], v210);
    v212 = v211 + OBJC_IVAR___GameSyncedDirectoryResponse_lastEditorDeviceName;
    v213 = *(v211 + OBJC_IVAR___GameSyncedDirectoryResponse_lastEditorDeviceName);
    v214 = *(v212 + 8);
    v207(v209, v208, v210);

    URL._bridgeToObjectiveC()(v215);
    v217 = v216;
    v218 = [v205 currentVersionOfItemAtURL_];

    if (v218)
    {
      v220 = v26[51];
      v219 = v26[52];
      v222 = v26[34];
      v221 = v26[35];
      v223 = v26[32];
      v224 = type metadata accessor for GameSaveSyncedDirectory.Version(0);
      v225 = *(v224 + 48);
      v226 = *(v224 + 52);
      v276 = v224;
      swift_allocObject();
      v227 = GameSaveSyncedDirectory.Version.init(liveFileURL:version:lastEditorDeviceName:devices:)(v222, v218, v213, v214, v159);
      v228 = v220(v221, v223);
      v227[OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_isLiveVersion] = 1;
      MEMORY[0x23EE6B780](v228);
      if (*((v278 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v278 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v250 = *((v278 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v229 = v26[59];
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v230 = Logger.logObject.getter();
      v231 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v230, v231))
      {
        v232 = swift_slowAlloc();
        v233 = swift_slowAlloc();
        *&v279 = v233;
        *v232 = 136315138;

        v235 = MEMORY[0x23EE6B7C0](v234, v276);
        v237 = v236;

        v238 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v235, v237, &v279);

        *(v232 + 4) = v238;
        _os_log_impl(&dword_238952000, v230, v231, "Versions: %s", v232, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v233);
        MEMORY[0x23EE6C260](v233, -1, -1);
        MEMORY[0x23EE6C260](v232, -1, -1);
      }

      v239 = v26[58];
      v240 = v26[44];
      v241 = v26[45];
      v243 = v26[28];
      v242 = v26[29];
      v244 = v26[19];
      swift_getKeyPath();
      v26[15] = v244;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      [*(v244 + v239) setCompletedUnitCount_];
      *v242 = v278;
      swift_storeEnumTagMultiPayload();

      GameSaveSyncedDirectory._moveToState(_:)(v242);
      GameSaveSyncedDirectory.sendDirectoryTelemetryLazy(from:)(v242);
      outlined destroy of GameSaveSyncedDirectory.State(v242, type metadata accessor for GameSaveSyncedDirectory.State);

LABEL_87:
      v245 = v26[52];
      v246 = v26[53];
      (v26[51])(v26[41], v26[32]);
      if (v246 == -1)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

    __break(1u);
LABEL_99:
    __break(1u);
    return;
  }

  v134 = v26[59];

  v135 = Logger.logObject.getter();
  v136 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v135, v136))
  {
    v137 = swift_slowAlloc();
    *v137 = 0;
    _os_log_impl(&dword_238952000, v135, v136, "Waiting for conflicting version to be populated...", v137, 2u);
    MEMORY[0x23EE6C260](v137, -1, -1);
  }

  v138 = v26[46];
  v140 = v26[44];
  v139 = v26[45];
  v141 = v26[19];

  swift_getKeyPath();
  v26[17] = v141;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v142 = *(v141 + v138);
  v26[61] = v142;
  v142;
  v143 = swift_task_alloc();
  v26[62] = v143;
  *v143 = v26;
  v143[1] = specialized GameSaveSyncedDirectory.checkForConflicts(_:_:);
  v144 = *MEMORY[0x277D85DE8];

  GameSyncedDirectoryHolder.waitForGainedVersion()();
}

{
  v202 = v0;
  v201 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 480);
  v2 = *(v0 + 328);
  URL._bridgeToObjectiveC()(v201);
  v4 = v3;
  v5 = [v1 unresolvedConflictVersionsOfItemAtURL_];

  if (!v5)
  {
    v10 = *(v0 + 416);
    v11 = *(v0 + 424);
    v12 = *(v0 + 408);
    v13 = *(v0 + 328);
    v14 = *(v0 + 256);
    v16 = *(v0 + 224);
    v15 = *(v0 + 232);
    v17 = *(v0 + 152);
    lazy protocol witness table accessor for type GameSaveSyncedDirectoryError and conformance GameSaveSyncedDirectoryError();
    v18 = swift_allocError();
    *v19 = 1;
    *v15 = v18;
    swift_storeEnumTagMultiPayload();
    GameSaveSyncedDirectory._moveToState(_:)(v15);
    GameSaveSyncedDirectory.sendDirectoryTelemetryLazy(from:)(v15);
    outlined destroy of GameSaveSyncedDirectory.State(v15, type metadata accessor for GameSaveSyncedDirectory.State);
    v12(v13, v14);
    v198 = v0;
    if (v11 == -1)
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

  v6 = *(v0 + 506);
  type metadata accessor for UIAlertController(0, &lazy cache variable for type metadata for NSFileVersion, 0x277CCAA18);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v8 = v7 >> 62;
  if (v6 == 1)
  {
    v9 = *(v0 + 344);
    goto LABEL_13;
  }

  if (v8)
  {
    if (v7 < 0)
    {
      v180 = v7;
    }

    else
    {
      v180 = v7 & 0xFFFFFFFFFFFFFF8;
    }

    v20 = MEMORY[0x23EE6BAE0](v180);
  }

  else
  {
    v20 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v20)
  {
    v21 = 1;
  }

  else
  {
    v21 = *(v0 + 456) < 1;
  }

  v9 = v0;
  if (v21)
  {
LABEL_13:
    v198 = v9;
    if (v8)
    {
      if (v7 < 0)
      {
        v179 = v7;
      }

      else
      {
        v179 = v7 & 0xFFFFFFFFFFFFFF8;
      }

      v22 = MEMORY[0x23EE6BAE0](v179);
    }

    else
    {
      v22 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v23 = *(v0 + 505);
    v24 = (*(v0 + 456) == 0) & ~*(v0 + 506);
    if (!v22)
    {
      v24 = 1;
    }

    v25 = *(v0 + 472);
    v27 = *(v0 + 376);
    v26 = *(v0 + 384);
    v28 = *(v0 + 328);
    v29 = *(v0 + 256);
    if (!v22 && (v23 & 1) == 0)
    {
      v30 = *(v0 + 304);

      v27(v30, v28, v29);
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.default.getter();
      v33 = os_log_type_enabled(v31, v32);
      v34 = *(v0 + 408);
      v35 = *(v0 + 416);
      v36 = *(v0 + 304);
      v37 = *(v0 + 256);
      if (v33)
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v200 = v39;
        *v38 = 136315138;
        lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
        v40 = dispatch thunk of CustomStringConvertible.description.getter();
        v42 = v41;
        v34(v36, v37);
        v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v42, &v200);

        *(v38 + 4) = v43;
        _os_log_impl(&dword_238952000, v31, v32, "No conflicts found for %s", v38, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v39);
        MEMORY[0x23EE6C260](v39, -1, -1);
        MEMORY[0x23EE6C260](v38, -1, -1);
      }

      else
      {

        v34(v36, v37);
      }

      v110 = *(v0 + 464);
      v111 = *(v0 + 352);
      v112 = *(v0 + 360);
      v114 = *(v0 + 144);
      v113 = *(v0 + 152);
      swift_getKeyPath();
      *(v0 + 128) = v113;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      [*(v113 + v110) setCompletedUnitCount_];
      GameSaveSyncedDirectory.moveToLoadedState(response:)(v114);
      goto LABEL_51;
    }

    v44 = v23 | v24;
    v27(*(v0 + 296), *(v0 + 328), *(v0 + 256));
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.default.getter();
    v47 = os_log_type_enabled(v45, v46);
    v49 = *(v0 + 408);
    v48 = *(v0 + 416);
    v50 = *(v0 + 296);
    v51 = *(v0 + 256);
    if (v47)
    {
      v52 = swift_slowAlloc();
      v195 = swift_slowAlloc();
      v200 = v195;
      *v52 = 136315138;
      lazy protocol witness table accessor for type GameSaveSyncedDirectory and conformance GameSaveSyncedDirectory(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260]);
      v53 = v44;
      v54 = dispatch thunk of CustomStringConvertible.description.getter();
      v191 = v46;
      v56 = v55;
      v49(v50, v51);
      v57 = v54;
      v44 = v53;
      v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v56, &v200);

      *(v52 + 4) = v58;
      _os_log_impl(&dword_238952000, v45, v191, "Found conflicts for %s", v52, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v195);
      MEMORY[0x23EE6C260](v195, -1, -1);
      MEMORY[0x23EE6C260](v52, -1, -1);
    }

    else
    {

      v49(v50, v51);
    }

    v71 = *(v0 + 432);
    v72 = *(v0 + 328);
    if (*(*(v0 + 144) + OBJC_IVAR___GameSyncedDirectoryResponse_devices))
    {
      v73 = *(*(v0 + 144) + OBJC_IVAR___GameSyncedDirectoryResponse_devices);
    }

    else
    {
      v73 = MEMORY[0x277D84F90];
    }

    v74 = swift_task_alloc();
    *(v74 + 16) = v72;
    *(v74 + 24) = v73;
    v196 = v73;

    v75 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySo13NSFileVersionCG_8GameSave0fG15SyncedDirectoryC0E0Cs5NeverOTg5(partial apply for closure #1 in GameSaveSyncedDirectory.checkForConflicts(_:_:), v74, v7);

    v199 = v75;
    if (!v44)
    {

LABEL_45:
      v120 = *(v0 + 480);
      v122 = *(v0 + 376);
      v121 = *(v0 + 384);
      v124 = *(v0 + 272);
      v123 = *(v0 + 280);
      v125 = *(v0 + 256);
      v126 = *(v0 + 144);
      v122(v123, *(v0 + 328), v125);
      v127 = v126 + OBJC_IVAR___GameSyncedDirectoryResponse_lastEditorDeviceName;
      v128 = *(v126 + OBJC_IVAR___GameSyncedDirectoryResponse_lastEditorDeviceName);
      v129 = *(v127 + 8);
      v122(v124, v123, v125);

      URL._bridgeToObjectiveC()(v130);
      v132 = v131;
      v133 = [v120 currentVersionOfItemAtURL_];

      if (v133)
      {
        v135 = *(v0 + 408);
        v134 = *(v0 + 416);
        v137 = *(v0 + 272);
        v136 = *(v0 + 280);
        v138 = *(v0 + 256);
        v139 = type metadata accessor for GameSaveSyncedDirectory.Version(0);
        v140 = *(v139 + 48);
        v141 = *(v139 + 52);
        swift_allocObject();
        v142 = GameSaveSyncedDirectory.Version.init(liveFileURL:version:lastEditorDeviceName:devices:)(v137, v133, v128, v129, v196);
        v143 = v135(v136, v138);
        v142[OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_isLiveVersion] = 1;
        MEMORY[0x23EE6B780](v143);
        if (*((v199 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v199 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v181 = *((v199 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        v144 = *(v0 + 472);
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v145 = Logger.logObject.getter();
        v146 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v145, v146))
        {
          v147 = swift_slowAlloc();
          v148 = swift_slowAlloc();
          v200 = v148;
          *v147 = 136315138;

          v150 = MEMORY[0x23EE6B7C0](v149, v139);
          v152 = v151;

          v153 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v150, v152, &v200);

          *(v147 + 4) = v153;
          _os_log_impl(&dword_238952000, v145, v146, "Versions: %s", v147, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v148);
          MEMORY[0x23EE6C260](v148, -1, -1);
          MEMORY[0x23EE6C260](v147, -1, -1);
        }

        v154 = *(v0 + 464);
        v156 = *(v0 + 352);
        v155 = *(v0 + 360);
        v158 = *(v0 + 224);
        v157 = *(v0 + 232);
        v159 = *(v0 + 152);
        swift_getKeyPath();
        *(v0 + 120) = v159;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        [*(v159 + v154) setCompletedUnitCount_];
        *v157 = v199;
        swift_storeEnumTagMultiPayload();

        GameSaveSyncedDirectory._moveToState(_:)(v157);
        GameSaveSyncedDirectory.sendDirectoryTelemetryLazy(from:)(v157);
        outlined destroy of GameSaveSyncedDirectory.State(v157, type metadata accessor for GameSaveSyncedDirectory.State);

LABEL_51:
        v160 = *(v0 + 416);
        v161 = *(v0 + 424);
        (*(v0 + 408))(*(v0 + 328), *(v0 + 256));
        if (v161 == -1)
        {
LABEL_53:
          v164 = *(v0 + 328);
          v163 = *(v0 + 336);
          v166 = *(v0 + 312);
          v165 = *(v0 + 320);
          v168 = *(v0 + 296);
          v167 = *(v0 + 304);
          v170 = *(v0 + 280);
          v169 = *(v0 + 288);
          v171 = *(v0 + 272);
          v172 = *(v0 + 248);
          v185 = *(v0 + 240);
          v187 = *(v0 + 232);
          v190 = *(v0 + 216);
          v194 = *(v0 + 192);
          v197 = *(v0 + 184);
          v173 = *(v0 + 160);

          v174 = *(v198 + 8);
          v175 = *MEMORY[0x277D85DE8];

          v174();
          return;
        }

LABEL_52:
        v162 = *(v0 + 424);
        sandbox_extension_release();
        goto LABEL_53;
      }

      __break(1u);
LABEL_66:
      __break(1u);
      return;
    }

    v192 = v71;
    v77 = *(v0 + 440);
    v76 = *(v0 + 448);
    v78 = *(v0 + 384);
    v79 = *(v0 + 256);
    v80 = *(v0 + 240);
    v81 = *(v0 + 152);
    (*(v0 + 376))(*(v0 + 288), *(v0 + 328), v79);
    GameSaveSyncedDirectory.getLocalURL()(v80);
    if (v77(v80, 1, v79) == 1)
    {
      goto LABEL_66;
    }

    v83 = *(v0 + 392);
    v82 = *(v0 + 400);
    v84 = *(v0 + 376);
    v85 = *(v0 + 384);
    v86 = *(v0 + 336);
    v87 = *(v0 + 288);
    v88 = *(v0 + 256);
    v89 = *(v0 + 240);
    v188 = *(v0 + 192);

    v84(v86, v87, v88);
    v90 = type metadata accessor for GameSaveSyncedDirectory.Version(0);
    v91 = *(v90 + 48);
    v92 = *(v90 + 52);
    swift_allocObject();

    v93 = GameSaveSyncedDirectory.Version.init(liveFileURL:version:lastEditorDeviceName:devices:)(v86, 0, 0, 0, v196);
    v94 = OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_localURL;

    outlined destroy of URL?(v95 + v94, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v84(&v93[v94], v89, v88);
    v83(&v93[v94], 0, 1, v88);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo16NSURLResourceKeyaGMd, &_ss23_ContiguousArrayStorageCySo16NSURLResourceKeyaGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_238987820;
    v97 = *MEMORY[0x277CBE7B0];
    *(inited + 32) = *MEMORY[0x277CBE7B0];
    v98 = v97;
    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo16NSURLResourceKeya_Tt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of GameSaveSyncedDirectory.State(inited + 32, type metadata accessor for NSURLResourceKey);
    URL.resourceValues(forKeys:)();
    v99 = v192;
    v101 = *(v0 + 408);
    v100 = *(v0 + 416);
    v193 = *(v0 + 288);
    v102 = *(v0 + 256);
    v103 = *(v0 + 240);
    if (v99)
    {
      v104 = *(v0 + 200);
      v105 = *(v0 + 208);
      v106 = *(v0 + 192);

      v101(v193, v102);
      v101(v103, v102);
      (*(v105 + 56))(v106, 1, 1, v104);
      v107 = &_s10Foundation17URLResourceValuesVSgMd;
      v108 = &_s10Foundation17URLResourceValuesVSgMR;
      v109 = v106;
    }

    else
    {
      v116 = *(v0 + 208);
      v115 = *(v0 + 216);
      v184 = *(v0 + 240);
      v118 = *(v0 + 192);
      v117 = *(v0 + 200);
      v186 = *(v0 + 176);
      v189 = *(v0 + 168);
      v183 = *(v0 + 160);

      (*(v116 + 56))(v118, 0, 1, v117);
      (*(v116 + 32))(v115, v118, v117);
      URLResourceValues.contentModificationDate.getter();
      (*(v116 + 8))(v115, v117);
      v101(v193, v102);
      v101(v184, v102);
      if ((*(v186 + 48))(v183, 1, v189) != 1)
      {
        v177 = *(v0 + 176);
        v176 = *(v0 + 184);
        v178 = *(v0 + 168);
        (*(v177 + 32))(v176, *(v0 + 160), v178);
        v119 = (*(v177 + 40))(&v93[OBJC_IVAR____TtCC8GameSave23GameSaveSyncedDirectory7Version_modifiedDate], v176, v178);
        goto LABEL_42;
      }

      v109 = *(v0 + 160);
      v107 = &_s10Foundation4DateVSgMd;
      v108 = &_s10Foundation4DateVSgMR;
    }

    v119 = outlined destroy of URL?(v109, v107, v108);
LABEL_42:
    MEMORY[0x23EE6B780](v119);
    if (*((v199 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v199 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v182 = *((v199 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    goto LABEL_45;
  }

  v59 = *(v0 + 472);

  v60 = Logger.logObject.getter();
  v61 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v60, v61))
  {
    v63 = swift_slowAlloc();
    *v63 = 0;
    _os_log_impl(&dword_238952000, v60, v61, "Waiting for conflicting version to be populated...", v63, 2u);
    MEMORY[0x23EE6C260](v63, -1, -1);
  }

  v64 = *(v0 + 360);
  v65 = *(v0 + 368);
  v66 = *(v0 + 352);
  v67 = *(v0 + 152);

  swift_getKeyPath();
  *(v0 + 136) = v67;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v68 = *(v67 + v65);
  *(v0 + 488) = v68;
  v68;
  v69 = swift_task_alloc();
  *(v0 + 496) = v69;
  *v69 = v0;
  v69[1] = specialized GameSaveSyncedDirectory.checkForConflicts(_:_:);
  v70 = *MEMORY[0x277D85DE8];

  GameSyncedDirectoryHolder.waitForGainedVersion()();
}