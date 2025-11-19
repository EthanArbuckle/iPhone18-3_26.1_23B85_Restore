uint64_t ArchivableAppIntentToggle.AppIntentLocation.set(_:transaction:)(unsigned __int8 *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *a1;
  LOBYTE(v29) = v26;
  StoredLocationBase.set(_:transaction:)();
  type metadata accessor for MainActor();
  static Semantics.v7.getter();
  v27 = v1;
  _s7SwiftUI7BindingVySbGMaTm_1(0, &lazy cache variable for type metadata for ()?, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E6720]);
  static MainActor.assumeIsolatedIfLinkedOnOrAfter<A>(_:context:_:file:line:)();
  static Log.archivedToggle.getter();
  v8 = *(v1 + 40);
  v29 = *(v2 + 16);
  v30 = *(v2 + 32);

  outlined init with copy of Environment<AppIntentExecutor?>(&v29, v28);
  v9 = v8;

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();

  outlined destroy of Environment<AppIntentExecutor?>(&v29);

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v28[0] = v13;
    *v12 = 136315394;
    v14 = [v9 debugDescription];
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, v28);

    *(v12 + 4) = v18;
    *(v12 + 12) = 2080;
    v19 = 0xE300000000000000;
    v20 = 6710895;
    if (v26 != 1)
    {
      v20 = 0x646578696DLL;
      v19 = 0xE500000000000000;
    }

    if (v26)
    {
      v21 = v20;
    }

    else
    {
      v21 = 28271;
    }

    if (v26)
    {
      v22 = v19;
    }

    else
    {
      v22 = 0xE200000000000000;
    }

    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, v28);

    *(v12 + 14) = v23;
    _os_log_impl(&dword_18BD4A000, v10, v11, "Executed LNAction %s when setting value %s.", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x18D0110E0](v13, -1, -1);
    MEMORY[0x18D0110E0](v12, -1, -1);
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t closure #1 in ArchivableAppIntentToggle.AppIntentLocation.set(_:transaction:)@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v4 = *(a1 + 8);
  result = swift_beginAccess();
  v6 = *(v4 + 16);
  if (v6)
  {
    v7 = *(a1 + 40);

    v6(v7);
    result = outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v6);
  }

  *a2 = v6 == 0;
  return result;
}

uint64_t (*protocol witness for Location.wasRead.modify in conformance ArchivableAppIntentToggle.AppIntentLocation(uint64_t a1))()
{
  *a1 = *v1;
  *(a1 + 8) = StoredLocationBase.wasRead.getter() & 1;
  return protocol witness for Location.wasRead.modify in conformance ArchivableAppIntentToggle.AppIntentLocation;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance ArchivableAppIntentToggle.CodingKeys()
{
  if (*v0)
  {
    return 0x6E65746E49707061;
  }

  else
  {
    return 0x65756C6176;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ArchivableAppIntentToggle.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E65746E49707061 && a2 == 0xEF6E6F6974634174)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ArchivableAppIntentToggle.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ArchivableAppIntentToggle.CodingKeys and conformance ArchivableAppIntentToggle.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ArchivableAppIntentToggle.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ArchivableAppIntentToggle.CodingKeys and conformance ArchivableAppIntentToggle.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ArchivableAppIntentToggle.encode(to:)(void *a1)
{
  type metadata accessor for ToggleStyleModifier<DefaultToggleStyle>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<ArchivableAppIntentToggle.CodingKeys>, lazy protocol witness table accessor for type ArchivableAppIntentToggle.CodingKeys and conformance ArchivableAppIntentToggle.CodingKeys, &type metadata for ArchivableAppIntentToggle.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = *(v1 + 2);
  v14 = *(v1 + 3);
  v15 = v9;
  v23 = v1[32];
  v16 = *(v1 + 40);
  v13 = *(v1 + 7);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ArchivableAppIntentToggle.CodingKeys and conformance ArchivableAppIntentToggle.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v18) = v8;
  v24 = 0;
  lazy protocol witness table accessor for type ToggleState and conformance ToggleState();
  v10 = v17;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v10)
  {
    v18 = v15;
    v19 = v14;
    v20 = v23;
    v21 = v16;
    v22 = v13;
    v24 = 1;
    lazy protocol witness table accessor for type AppIntentAction and conformance AppIntentAction();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t ArchivableAppIntentToggle.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v42 = a2;
  type metadata accessor for ToggleStyleModifier<DefaultToggleStyle>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<ArchivableAppIntentToggle.CodingKeys>, lazy protocol witness table accessor for type ArchivableAppIntentToggle.CodingKeys and conformance ArchivableAppIntentToggle.CodingKeys, &type metadata for ArchivableAppIntentToggle.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ArchivableAppIntentToggle.CodingKeys and conformance ArchivableAppIntentToggle.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = v6;
  v10 = v42;
  LOBYTE(v21[0]) = 0;
  lazy protocol witness table accessor for type ToggleState and conformance ToggleState();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v11 = v25;
  v34 = 1;
  lazy protocol witness table accessor for type AppIntentAction and conformance AppIntentAction();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v9 + 8))(v8, v5);
  v12 = v35;
  v13 = v36;
  v14 = v38;
  v20 = v37;
  v19 = *(&v38 + 1);
  v40 = v36;
  LOBYTE(v21[0]) = v11;
  *(v21 + 1) = v41[0];
  HIDWORD(v21[0]) = *(v41 + 3);
  v21[1] = 0;
  v22 = v35;
  LOBYTE(v23) = v36;
  DWORD1(v23) = *&v39[3];
  *(&v23 + 1) = *v39;
  *(&v23 + 1) = v37;
  v24 = v38;
  v15 = v21[0];
  v16 = v35;
  v17 = v38;
  v10[2] = v23;
  v10[3] = v17;
  *v10 = v15;
  v10[1] = v16;
  outlined init with copy of ArchivableAppIntentToggle(v21, &v25);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v25 = v11;
  *v26 = v41[0];
  *&v26[3] = *(v41 + 3);
  v27 = 0;
  v28 = v12;
  v29 = v13;
  *v30 = *v39;
  *&v30[3] = *&v39[3];
  v31 = v20;
  v32 = v14;
  v33 = v19;
  return outlined destroy of ArchivableAppIntentToggle(&v25);
}

uint64_t destroy for ToggleStyleConfiguration.Effect(uint64_t result)
{
  v1 = *(result + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    outlined consume of Environment<AppIntentExecutor?>.Content(*result, *(result + 8), *(result + 16));
  }

  return result;
}

uint64_t assignWithCopy for ToggleStyleConfiguration.Effect(uint64_t a1, __int128 *a2)
{
  v4 = *(a2 + 3);
  if (*(a1 + 24) < 0xFFFFFFFFuLL)
  {
    if (v4 >= 0xFFFFFFFF)
    {
      v15 = *a2;
      v16 = *(a2 + 1);
      v17 = *(a2 + 16);
      outlined copy of Environment<AppIntentExecutor?>.Content(*a2, v16, v17);
      *a1 = v15;
      *(a1 + 8) = v16;
      *(a1 + 16) = v17;
      v18 = *(a2 + 3);
      *(a1 + 24) = v18;
      v19 = *(a2 + 4);
      v20 = *(a2 + 5);
      *(a1 + 32) = v19;
      *(a1 + 40) = v20;
      v21 = v18;

      return a1;
    }

LABEL_7:
    v22 = *a2;
    v23 = a2[2];
    *(a1 + 16) = a2[1];
    *(a1 + 32) = v23;
    *a1 = v22;
    return a1;
  }

  if (v4 < 0xFFFFFFFF)
  {
    outlined consume of Environment<AppIntentExecutor?>.Content(*a1, *(a1 + 8), *(a1 + 16));

    goto LABEL_7;
  }

  v5 = *a2;
  v6 = *(a2 + 1);
  v7 = *(a2 + 16);
  outlined copy of Environment<AppIntentExecutor?>.Content(*a2, v6, v7);
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  *a1 = v5;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;
  outlined consume of Environment<AppIntentExecutor?>.Content(v8, v9, v10);
  v11 = *(a2 + 3);
  v12 = *(a1 + 24);
  *(a1 + 24) = v11;
  v13 = v11;

  v14 = *(a2 + 5);
  *(a1 + 32) = *(a2 + 4);
  *(a1 + 40) = v14;

  return a1;
}

uint64_t assignWithTake for ToggleStyleConfiguration.Effect(uint64_t result, uint64_t a2)
{
  v3 = *(result + 24);
  if (v3 < 0xFFFFFFFF)
  {
    v10 = *(a2 + 16);
    *result = *a2;
    *(result + 16) = v10;
    *(result + 32) = *(a2 + 32);
  }

  else
  {
    v4 = *(a2 + 24);
    if (v4 < 0xFFFFFFFF)
    {
      v9 = result;
      outlined consume of Environment<AppIntentExecutor?>.Content(*result, *(result + 8), *(result + 16));

      v11 = *(a2 + 16);
      *v9 = *a2;
      *(v9 + 16) = v11;
      *(v9 + 32) = *(a2 + 32);
    }

    else
    {
      v5 = *(a2 + 16);
      v7 = *result;
      v6 = *(result + 8);
      v8 = *(result + 16);
      *result = *a2;
      *(result + 16) = v5;
      v9 = result;
      outlined consume of Environment<AppIntentExecutor?>.Content(v7, v6, v8);
      *(v9 + 24) = v4;

      *(v9 + 32) = *(a2 + 32);
    }

    return v9;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ToggleStyleConfiguration.Effect(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ToggleStyleConfiguration.Effect(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
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
      *(result + 24) = a2;
    }
  }

  return result;
}

double destructiveInjectEnumTag for ToggleStyleConfiguration.Effect(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    *(a1 + 40) = 0;
    result = 0.0;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 24) = (a2 - 1);
  }

  return result;
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance ToggleStyleModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDE4B8](a1, a2, a3, a4, a5, WitnessTable);
}

unint64_t lazy protocol witness table accessor for type ArchivableAppIntentToggle.CodingKeys and conformance ArchivableAppIntentToggle.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ArchivableAppIntentToggle.CodingKeys and conformance ArchivableAppIntentToggle.CodingKeys;
  if (!lazy protocol witness table cache variable for type ArchivableAppIntentToggle.CodingKeys and conformance ArchivableAppIntentToggle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivableAppIntentToggle.CodingKeys and conformance ArchivableAppIntentToggle.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArchivableAppIntentToggle.CodingKeys and conformance ArchivableAppIntentToggle.CodingKeys;
  if (!lazy protocol witness table cache variable for type ArchivableAppIntentToggle.CodingKeys and conformance ArchivableAppIntentToggle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivableAppIntentToggle.CodingKeys and conformance ArchivableAppIntentToggle.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArchivableAppIntentToggle.CodingKeys and conformance ArchivableAppIntentToggle.CodingKeys;
  if (!lazy protocol witness table cache variable for type ArchivableAppIntentToggle.CodingKeys and conformance ArchivableAppIntentToggle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivableAppIntentToggle.CodingKeys and conformance ArchivableAppIntentToggle.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArchivableAppIntentToggle.CodingKeys and conformance ArchivableAppIntentToggle.CodingKeys;
  if (!lazy protocol witness table cache variable for type ArchivableAppIntentToggle.CodingKeys and conformance ArchivableAppIntentToggle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivableAppIntentToggle.CodingKeys and conformance ArchivableAppIntentToggle.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ToggleState and conformance ToggleState()
{
  result = lazy protocol witness table cache variable for type ToggleState and conformance ToggleState;
  if (!lazy protocol witness table cache variable for type ToggleState and conformance ToggleState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToggleState and conformance ToggleState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ToggleState and conformance ToggleState;
  if (!lazy protocol witness table cache variable for type ToggleState and conformance ToggleState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToggleState and conformance ToggleState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ToggleState and conformance ToggleState;
  if (!lazy protocol witness table cache variable for type ToggleState and conformance ToggleState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToggleState and conformance ToggleState);
  }

  return result;
}

void outlined consume of ToggleStyleConfiguration.Effect(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  if (a4)
  {
    outlined consume of Environment<AppIntentExecutor?>.Content(a1, a2, a3 & 1);
  }
}

uint64_t initializeWithCopy for ArchivableToggleAppIntentModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  v5 = *(a2 + 24);
  v6 = *(a2 + 32);

  outlined copy of Environment<AppIntentExecutor?>.Content(v4, v5, v6);
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  v7 = *(a2 + 56);
  v8 = *(a2 + 40);
  *(a1 + 40) = v8;
  *(a1 + 56) = v7;
  *(a1 + 64) = *(a2 + 64);
  v9 = v8;

  return a1;
}

uint64_t assignWithCopy for ArchivableToggleAppIntentModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *(a2 + 32);
  outlined copy of Environment<AppIntentExecutor?>.Content(v4, v5, v6);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  outlined consume of Environment<AppIntentExecutor?>.Content(v7, v8, v9);
  v10 = *(a2 + 40);
  v11 = *(a1 + 40);
  *(a1 + 40) = v10;
  v12 = v10;

  v13 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v13;

  *(a1 + 64) = *(a2 + 64);
  return a1;
}

uint64_t assignWithTake for ArchivableToggleAppIntentModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  v4 = *(a2 + 32);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v4;
  outlined consume of Environment<AppIntentExecutor?>.Content(v5, v6, v7);

  v8 = *(a2 + 56);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = v8;

  *(a1 + 64) = *(a2 + 64);
  return a1;
}

uint64_t getEnumTagSinglePayload for ArchivableToggleAppIntentModifier(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ArchivableToggleAppIntentModifier(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t assignWithTake for ToggleStyleConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 41) = *(a2 + 41);
  v4 = *(a1 + 72);
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = *(a2 + 72);
  if (!v5)
  {
    outlined destroy of AppIntentAction(a1 + 48);
LABEL_5:
    v10 = *(a2 + 64);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 64) = v10;
    *(a1 + 80) = *(a2 + 80);
    return a1;
  }

  v6 = *(a2 + 64);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9 = *(a1 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v6;
  outlined consume of Environment<AppIntentExecutor?>.Content(v7, v8, v9);
  *(a1 + 72) = v5;

  *(a1 + 80) = *(a2 + 80);

  return a1;
}

uint64_t getEnumTagSinglePayload for ToggleStyleConfiguration(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t storeEnumTagSinglePayload for ToggleStyleConfiguration(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t destroy for ResolvedToggleStyleBody.ArchiveBody(uint64_t a1)
{

  v2 = *(a1 + 72);
  if (v2)
  {
    outlined consume of Environment<AppIntentExecutor?>.Content(*(a1 + 48), *(a1 + 56), *(a1 + 64));
  }

  v3 = *(a1 + 96);
  v4 = *(a1 + 104);

  return outlined consume of Environment<Bool>.Content(v3, v4);
}

uint64_t initializeWithCopy for ResolvedToggleStyleBody.ArchiveBody(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 16);
  v5 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v5;
  *(a1 + 40) = *(a2 + 40);
  v6 = *(a2 + 72);

  if (v6)
  {
    v7 = *(a2 + 48);
    v8 = *(a2 + 56);
    v9 = *(a2 + 64);
    outlined copy of Environment<AppIntentExecutor?>.Content(v7, v8, v9);
    *(a1 + 48) = v7;
    *(a1 + 56) = v8;
    *(a1 + 64) = v9;
    v10 = *(a2 + 80);
    v11 = *(a2 + 88);
    *(a1 + 72) = v6;
    *(a1 + 80) = v10;
    *(a1 + 88) = v11;
    v12 = v6;
  }

  else
  {
    v13 = *(a2 + 64);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 64) = v13;
    *(a1 + 80) = *(a2 + 80);
  }

  v14 = *(a2 + 96);
  v15 = *(a2 + 104);
  outlined copy of Environment<Bool>.Content(v14, v15);
  *(a1 + 96) = v14;
  *(a1 + 104) = v15;
  return a1;
}

uint64_t assignWithCopy for ResolvedToggleStyleBody.ArchiveBody(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 41) = *(a2 + 41);
  v4 = *(a2 + 72);
  if (*(a1 + 72))
  {
    if (v4)
    {
      v5 = *(a2 + 48);
      v6 = *(a2 + 56);
      v7 = *(a2 + 64);
      outlined copy of Environment<AppIntentExecutor?>.Content(v5, v6, v7);
      v8 = *(a1 + 48);
      v9 = *(a1 + 56);
      v10 = *(a1 + 64);
      *(a1 + 48) = v5;
      *(a1 + 56) = v6;
      *(a1 + 64) = v7;
      outlined consume of Environment<AppIntentExecutor?>.Content(v8, v9, v10);
      v11 = *(a2 + 72);
      v12 = *(a1 + 72);
      *(a1 + 72) = v11;
      v13 = v11;

      v14 = *(a2 + 88);
      *(a1 + 80) = *(a2 + 80);
      *(a1 + 88) = v14;
    }

    else
    {
      outlined destroy of AppIntentAction(a1 + 48);
      v22 = *(a2 + 64);
      v21 = *(a2 + 80);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 64) = v22;
      *(a1 + 80) = v21;
    }
  }

  else if (v4)
  {
    v15 = *(a2 + 48);
    v16 = *(a2 + 56);
    v17 = *(a2 + 64);
    outlined copy of Environment<AppIntentExecutor?>.Content(v15, v16, v17);
    *(a1 + 48) = v15;
    *(a1 + 56) = v16;
    *(a1 + 64) = v17;
    v18 = *(a2 + 72);
    *(a1 + 72) = v18;
    v19 = *(a2 + 88);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 88) = v19;
    v20 = v18;
  }

  else
  {
    v23 = *(a2 + 48);
    v24 = *(a2 + 80);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = v24;
    *(a1 + 48) = v23;
  }

  v25 = *(a2 + 96);
  v26 = *(a2 + 104);
  outlined copy of Environment<Bool>.Content(v25, v26);
  v27 = *(a1 + 96);
  v28 = *(a1 + 104);
  *(a1 + 96) = v25;
  *(a1 + 104) = v26;
  outlined consume of Environment<Bool>.Content(v27, v28);
  return a1;
}

uint64_t assignWithTake for ResolvedToggleStyleBody.ArchiveBody(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 41) = *(a2 + 41);
  v4 = *(a1 + 72);
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = *(a2 + 72);
  if (!v5)
  {
    outlined destroy of AppIntentAction(a1 + 48);
LABEL_5:
    v10 = *(a2 + 64);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 64) = v10;
    *(a1 + 80) = *(a2 + 80);
    goto LABEL_6;
  }

  v6 = *(a2 + 64);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9 = *(a1 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v6;
  outlined consume of Environment<AppIntentExecutor?>.Content(v7, v8, v9);
  *(a1 + 72) = v5;

  *(a1 + 80) = *(a2 + 80);

LABEL_6:
  v11 = *(a2 + 104);
  v12 = *(a1 + 96);
  v13 = *(a1 + 104);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = v11;
  outlined consume of Environment<Bool>.Content(v12, v13);
  return a1;
}

uint64_t getEnumTagSinglePayload for ResolvedToggleStyleBody.ArchiveBody(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 105))
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

uint64_t storeEnumTagSinglePayload for ResolvedToggleStyleBody.ArchiveBody(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 105) = 1;
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

    *(result + 105) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t destroy for ArchivableToggleAppIntentModifier(uint64_t a1)
{

  outlined consume of Environment<AppIntentExecutor?>.Content(*(a1 + 16), *(a1 + 24), *(a1 + 32));
}

uint64_t initializeWithCopy for ArchivableAppIntentToggle(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  v5 = *(a2 + 24);
  v6 = *(a2 + 32);

  outlined copy of Environment<AppIntentExecutor?>.Content(v4, v5, v6);
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  v7 = *(a2 + 56);
  v8 = *(a2 + 40);
  *(a1 + 40) = v8;
  *(a1 + 56) = v7;
  v9 = v8;

  return a1;
}

uint64_t assignWithCopy for ArchivableAppIntentToggle(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *(a2 + 32);
  outlined copy of Environment<AppIntentExecutor?>.Content(v4, v5, v6);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  outlined consume of Environment<AppIntentExecutor?>.Content(v7, v8, v9);
  v10 = *(a2 + 40);
  v11 = *(a1 + 40);
  *(a1 + 40) = v10;
  v12 = v10;

  v13 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v13;

  return a1;
}

uint64_t assignWithTake for ArchivableAppIntentToggle(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  v4 = *(a2 + 32);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v4;
  outlined consume of Environment<AppIntentExecutor?>.Content(v5, v6, v7);

  v8 = *(a2 + 56);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = v8;

  return a1;
}

unint64_t instantiation function for generic protocol witness table for ArchivableToggleAppIntentModifier(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type ArchivableToggleAppIntentModifier and conformance ArchivableToggleAppIntentModifier();
  a1[2] = lazy protocol witness table accessor for type ArchivableToggleAppIntentModifier and conformance ArchivableToggleAppIntentModifier();
  result = lazy protocol witness table accessor for type ArchivableToggleAppIntentModifier and conformance ArchivableToggleAppIntentModifier();
  a1[3] = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type ArchivableToggleAppIntentModifier.CodingKeys and conformance ArchivableToggleAppIntentModifier.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ArchivableToggleAppIntentModifier.CodingKeys and conformance ArchivableToggleAppIntentModifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type ArchivableToggleAppIntentModifier.CodingKeys and conformance ArchivableToggleAppIntentModifier.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivableToggleAppIntentModifier.CodingKeys and conformance ArchivableToggleAppIntentModifier.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArchivableToggleAppIntentModifier.CodingKeys and conformance ArchivableToggleAppIntentModifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type ArchivableToggleAppIntentModifier.CodingKeys and conformance ArchivableToggleAppIntentModifier.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivableToggleAppIntentModifier.CodingKeys and conformance ArchivableToggleAppIntentModifier.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArchivableToggleAppIntentModifier.CodingKeys and conformance ArchivableToggleAppIntentModifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type ArchivableToggleAppIntentModifier.CodingKeys and conformance ArchivableToggleAppIntentModifier.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivableToggleAppIntentModifier.CodingKeys and conformance ArchivableToggleAppIntentModifier.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArchivableToggleAppIntentModifier.CodingKeys and conformance ArchivableToggleAppIntentModifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type ArchivableToggleAppIntentModifier.CodingKeys and conformance ArchivableToggleAppIntentModifier.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivableToggleAppIntentModifier.CodingKeys and conformance ArchivableToggleAppIntentModifier.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ArchivableAppIntentToggle and conformance ArchivableAppIntentToggle()
{
  result = lazy protocol witness table cache variable for type ArchivableAppIntentToggle and conformance ArchivableAppIntentToggle;
  if (!lazy protocol witness table cache variable for type ArchivableAppIntentToggle and conformance ArchivableAppIntentToggle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivableAppIntentToggle and conformance ArchivableAppIntentToggle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArchivableAppIntentToggle and conformance ArchivableAppIntentToggle;
  if (!lazy protocol witness table cache variable for type ArchivableAppIntentToggle and conformance ArchivableAppIntentToggle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivableAppIntentToggle and conformance ArchivableAppIntentToggle);
  }

  return result;
}

uint64_t objectdestroy_29Tm()
{

  outlined consume of Environment<AppIntentExecutor?>.Content(*(v0 + 32), *(v0 + 40), *(v0 + 48));

  return swift_deallocObject();
}

uint64_t specialized static ArchivableAppIntentToggle._makeProperty<A>(in:container:fieldOffset:inputs:)()
{
  Attribute.init<A>(body:value:flags:update:)();
  AGCreateWeakAttribute();
  if (one-time initialization token for appIntentExecutor != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  _s7SwiftUI7BindingVySbGMaTm_1(0, &lazy cache variable for type metadata for AppIntentExecutor?, &type metadata for AppIntentExecutor, MEMORY[0x1E69E6720]);
  CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();
  type metadata accessor for MutableBox<AppIntentExecutor?>(0, &lazy cache variable for type metadata for MutableBox<AppIntentExecutor?>, MEMORY[0x1E697DAC0]);
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  lazy protocol witness table accessor for type ArchivableAppIntentToggle.Box and conformance ArchivableAppIntentToggle.Box();
  _DynamicPropertyBuffer.append<A>(_:fieldOffset:)();
}

unint64_t lazy protocol witness table accessor for type ArchivableAppIntentToggle.Box and conformance ArchivableAppIntentToggle.Box()
{
  result = lazy protocol witness table cache variable for type ArchivableAppIntentToggle.Box and conformance ArchivableAppIntentToggle.Box;
  if (!lazy protocol witness table cache variable for type ArchivableAppIntentToggle.Box and conformance ArchivableAppIntentToggle.Box)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivableAppIntentToggle.Box and conformance ArchivableAppIntentToggle.Box);
  }

  return result;
}

uint64_t initializeWithCopy for ArchivableAppIntentToggle.Box(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v3 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v3;

  return a1;
}

uint64_t assignWithCopy for ArchivableAppIntentToggle.Box(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t assignWithTake for ArchivableAppIntentToggle.Box(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t getEnumTagSinglePayload for ArchivableAppIntentToggle.Box(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t storeEnumTagSinglePayload for ArchivableAppIntentToggle.Box(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ButtonBehavior<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ArchivableToggleAppIntentModifier>, TemporalStateViewModifier<ToggleState>>, OpacityButtonHighlightModifier>, _ContentShapeModifier<Rectangle>>>, _EnvironmentKeyWritingModifier<Bool>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ButtonBehavior<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ArchivableToggleAppIntentModifier>, TemporalStateViewModifier<ToggleState>>, OpacityButtonHighlightModifier>, _ContentShapeModifier<Rectangle>>>, _EnvironmentKeyWritingModifier<Bool>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ButtonBehavior<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ArchivableToggleAppIntentModifier>, TemporalStateViewModifier<ToggleState>>, OpacityButtonHighlightModifier>, _ContentShapeModifier<Rectangle>>>, _EnvironmentKeyWritingModifier<Bool>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ButtonBehavior<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ArchivableToggleAppIntentModifier>, TemporalStateViewModifier<ToggleState>>, OpacityButtonHighlightModifier>, _ContentShapeModifier<Rectangle>>>, _EnvironmentKeyWritingModifier<Bool>>();
    lazy protocol witness table accessor for type ButtonBehavior<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ArchivableToggleAppIntentModifier>, TemporalStateViewModifier<ToggleState>>, OpacityButtonHighlightModifier>, _ContentShapeModifier<Rectangle>>> and conformance ButtonBehavior<A>(&lazy protocol witness table cache variable for type ButtonBehavior<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ArchivableToggleAppIntentModifier>, TemporalStateViewModifier<ToggleState>>, OpacityButtonHighlightModifier>, _ContentShapeModifier<Rectangle>>> and conformance ButtonBehavior<A>, type metadata accessor for ButtonBehavior<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ArchivableToggleAppIntentModifier>, TemporalStateViewModifier<ToggleState>>, OpacityButtonHighlightModifier>, _ContentShapeModifier<Rectangle>>>);
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Bool> and conformance _EnvironmentKeyWritingModifier<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ButtonBehavior<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ArchivableToggleAppIntentModifier>, TemporalStateViewModifier<ToggleState>>, OpacityButtonHighlightModifier>, _ContentShapeModifier<Rectangle>>>, _EnvironmentKeyWritingModifier<Bool>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ButtonBehavior<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ArchivableToggleAppIntentModifier>, TemporalStateViewModifier<ToggleState>>, OpacityButtonHighlightModifier>, _ContentShapeModifier<Rectangle>>>, _EnvironmentKeyWritingModifier<Bool>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ButtonBehavior<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ArchivableToggleAppIntentModifier>, TemporalStateViewModifier<ToggleState>>, OpacityButtonHighlightModifier>, _ContentShapeModifier<Rectangle>>>, _EnvironmentKeyWritingModifier<Bool>>)
  {
    type metadata accessor for ButtonBehavior<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ArchivableToggleAppIntentModifier>, TemporalStateViewModifier<ToggleState>>, OpacityButtonHighlightModifier>, _ContentShapeModifier<Rectangle>>>();
    _s7SwiftUI7BindingVySbGMaTm_1(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6980A08]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ButtonBehavior<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ArchivableToggleAppIntentModifier>, TemporalStateViewModifier<ToggleState>>, OpacityButtonHighlightModifier>, _ContentShapeModifier<Rectangle>>>, _EnvironmentKeyWritingModifier<Bool>>);
    }
  }
}

void type metadata accessor for ButtonBehavior<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ArchivableToggleAppIntentModifier>, TemporalStateViewModifier<ToggleState>>, OpacityButtonHighlightModifier>, _ContentShapeModifier<Rectangle>>>()
{
  if (!lazy cache variable for type metadata for ButtonBehavior<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ArchivableToggleAppIntentModifier>, TemporalStateViewModifier<ToggleState>>, OpacityButtonHighlightModifier>, _ContentShapeModifier<Rectangle>>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ArchivableToggleAppIntentModifier>, TemporalStateViewModifier<ToggleState>>, OpacityButtonHighlightModifier>, _ContentShapeModifier<Rectangle>>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ResolvedToggleStyleBody.ArchiveBody, ArchivesInteractiveControlsEffect>, HandGestureShortcutInteractiveControl> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ArchivableToggleAppIntentModifier>, TemporalStateViewModifier<ToggleState>>, OpacityButtonHighlightModifier>, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ArchivableToggleAppIntentModifier>, TemporalStateViewModifier<ToggleState>>, OpacityButtonHighlightModifier>, _ContentShapeModifier<Rectangle>>, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<ArchivableToggleAppIntentModifier>, TemporalStateViewModifier<ToggleState>>, OpacityButtonHighlightModifier> and conformance <> ModifiedContent<A, B>, lazy protocol witness table accessor for type _ContentShapeModifier<Rectangle> and conformance _ContentShapeModifier<A>);
    v0 = type metadata accessor for ButtonBehavior();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ButtonBehavior<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ArchivableToggleAppIntentModifier>, TemporalStateViewModifier<ToggleState>>, OpacityButtonHighlightModifier>, _ContentShapeModifier<Rectangle>>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ArchivableToggleAppIntentModifier>, TemporalStateViewModifier<ToggleState>>, OpacityButtonHighlightModifier>, _ContentShapeModifier<Rectangle>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ArchivableToggleAppIntentModifier>, TemporalStateViewModifier<ToggleState>>, OpacityButtonHighlightModifier>, _ContentShapeModifier<Rectangle>>)
  {
    type metadata accessor for ModifiedContent<TemporalStack<[ToggleState], Toggle<ToggleStyleConfiguration.Label>>, ArchivableToggleAppIntentModifier>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewModifier_Content<ArchivableToggleAppIntentModifier>, TemporalStateViewModifier<ToggleState>>, OpacityButtonHighlightModifier>, type metadata accessor for ModifiedContent<_ViewModifier_Content<ArchivableToggleAppIntentModifier>, TemporalStateViewModifier<ToggleState>>);
    type metadata accessor for ToggleStyleModifier<DefaultToggleStyle>(255, &lazy cache variable for type metadata for _ContentShapeModifier<Rectangle>, lazy protocol witness table accessor for type Rectangle and conformance Rectangle, MEMORY[0x1E6981EF8], MEMORY[0x1E697FD48]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ArchivableToggleAppIntentModifier>, TemporalStateViewModifier<ToggleState>>, OpacityButtonHighlightModifier>, _ContentShapeModifier<Rectangle>>);
    }
  }
}

void type metadata accessor for ModifiedContent<TemporalStack<[ToggleState], Toggle<ToggleStyleConfiguration.Label>>, ArchivableToggleAppIntentModifier>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for ModifiedContent();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata accessor for ModifiedContent<_ViewModifier_Content<ArchivableToggleAppIntentModifier>, TemporalStateViewModifier<ToggleState>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<ArchivableToggleAppIntentModifier>, TemporalStateViewModifier<ToggleState>>)
  {
    type metadata accessor for ToggleStyleModifier<DefaultToggleStyle>(255, &lazy cache variable for type metadata for _ViewModifier_Content<ArchivableToggleAppIntentModifier>, lazy protocol witness table accessor for type ArchivableToggleAppIntentModifier and conformance ArchivableToggleAppIntentModifier, &type metadata for ArchivableToggleAppIntentModifier, MEMORY[0x1E697FDE8]);
    type metadata accessor for ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>(255, &lazy cache variable for type metadata for TemporalStateViewModifier<ToggleState>, MEMORY[0x1E697DD58], MEMORY[0x1E697DD50], type metadata accessor for TemporalStateViewModifier);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<ArchivableToggleAppIntentModifier>, TemporalStateViewModifier<ToggleState>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<ArchivableToggleAppIntentModifier>, TemporalStateViewModifier<ToggleState>>, OpacityButtonHighlightModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<ArchivableToggleAppIntentModifier>, TemporalStateViewModifier<ToggleState>>, OpacityButtonHighlightModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<ArchivableToggleAppIntentModifier>, TemporalStateViewModifier<ToggleState>>, OpacityButtonHighlightModifier> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<TemporalStack<[ToggleState], Toggle<ToggleStyleConfiguration.Label>>, ArchivableToggleAppIntentModifier>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewModifier_Content<ArchivableToggleAppIntentModifier>, TemporalStateViewModifier<ToggleState>>, OpacityButtonHighlightModifier>, type metadata accessor for ModifiedContent<_ViewModifier_Content<ArchivableToggleAppIntentModifier>, TemporalStateViewModifier<ToggleState>>);
    lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<ArchivableToggleAppIntentModifier>, TemporalStateViewModifier<ToggleState>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<ArchivableToggleAppIntentModifier>, TemporalStateViewModifier<ToggleState>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<_ViewModifier_Content<ArchivableToggleAppIntentModifier>, TemporalStateViewModifier<ToggleState>>, lazy protocol witness table accessor for type _ViewModifier_Content<ArchivableToggleAppIntentModifier> and conformance _ViewModifier_Content<A>);
    lazy protocol witness table accessor for type OpacityButtonHighlightModifier and conformance OpacityButtonHighlightModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<ArchivableToggleAppIntentModifier>, TemporalStateViewModifier<ToggleState>>, OpacityButtonHighlightModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ViewModifier_Content<ArchivableToggleAppIntentModifier> and conformance _ViewModifier_Content<A>()
{
  result = lazy protocol witness table cache variable for type _ViewModifier_Content<ArchivableToggleAppIntentModifier> and conformance _ViewModifier_Content<A>;
  if (!lazy protocol witness table cache variable for type _ViewModifier_Content<ArchivableToggleAppIntentModifier> and conformance _ViewModifier_Content<A>)
  {
    type metadata accessor for ToggleStyleModifier<DefaultToggleStyle>(255, &lazy cache variable for type metadata for _ViewModifier_Content<ArchivableToggleAppIntentModifier>, lazy protocol witness table accessor for type ArchivableToggleAppIntentModifier and conformance ArchivableToggleAppIntentModifier, &type metadata for ArchivableToggleAppIntentModifier, MEMORY[0x1E697FDE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewModifier_Content<ArchivableToggleAppIntentModifier> and conformance _ViewModifier_Content<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<Toggle<ToggleStyleConfiguration.Label>, ModifiedContent<TemporalStack<[ToggleState], Toggle<ToggleStyleConfiguration.Label>>, ArchivableToggleAppIntentModifier>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<Toggle<ToggleStyleConfiguration.Label>, ModifiedContent<TemporalStack<[ToggleState], Toggle<ToggleStyleConfiguration.Label>>, ArchivableToggleAppIntentModifier>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<Toggle<ToggleStyleConfiguration.Label>, ModifiedContent<TemporalStack<[ToggleState], Toggle<ToggleStyleConfiguration.Label>>, ArchivableToggleAppIntentModifier>> and conformance <> _ConditionalContent<A, B>)
  {
    type metadata accessor for _ConditionalContent<Toggle<ToggleStyleConfiguration.Label>, ModifiedContent<TemporalStack<[ToggleState], Toggle<ToggleStyleConfiguration.Label>>, ArchivableToggleAppIntentModifier>>();
    lazy protocol witness table accessor for type Toggle<ToggleStyleConfiguration.Label> and conformance Toggle<A>();
    lazy protocol witness table accessor for type ModifiedContent<TemporalStack<[ToggleState], Toggle<ToggleStyleConfiguration.Label>>, ArchivableToggleAppIntentModifier> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<Toggle<ToggleStyleConfiguration.Label>, ModifiedContent<TemporalStack<[ToggleState], Toggle<ToggleStyleConfiguration.Label>>, ArchivableToggleAppIntentModifier>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

void type metadata accessor for _ConditionalContent<Toggle<ToggleStyleConfiguration.Label>, ModifiedContent<TemporalStack<[ToggleState], Toggle<ToggleStyleConfiguration.Label>>, ArchivableToggleAppIntentModifier>>()
{
  if (!lazy cache variable for type metadata for _ConditionalContent<Toggle<ToggleStyleConfiguration.Label>, ModifiedContent<TemporalStack<[ToggleState], Toggle<ToggleStyleConfiguration.Label>>, ArchivableToggleAppIntentModifier>>)
  {
    type metadata accessor for ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>(255, &lazy cache variable for type metadata for Toggle<ToggleStyleConfiguration.Label>, &type metadata for ToggleStyleConfiguration.Label, &protocol witness table for ToggleStyleConfiguration.Label, type metadata accessor for Toggle);
    type metadata accessor for ModifiedContent<TemporalStack<[ToggleState], Toggle<ToggleStyleConfiguration.Label>>, ArchivableToggleAppIntentModifier>(255, &lazy cache variable for type metadata for ModifiedContent<TemporalStack<[ToggleState], Toggle<ToggleStyleConfiguration.Label>>, ArchivableToggleAppIntentModifier>, type metadata accessor for TemporalStack<[ToggleState], Toggle<ToggleStyleConfiguration.Label>>);
    v0 = type metadata accessor for _ConditionalContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ConditionalContent<Toggle<ToggleStyleConfiguration.Label>, ModifiedContent<TemporalStack<[ToggleState], Toggle<ToggleStyleConfiguration.Label>>, ArchivableToggleAppIntentModifier>>);
    }
  }
}

void type metadata accessor for TemporalStack<[ToggleState], Toggle<ToggleStyleConfiguration.Label>>()
{
  if (!lazy cache variable for type metadata for TemporalStack<[ToggleState], Toggle<ToggleStyleConfiguration.Label>>)
  {
    _s7SwiftUI7BindingVySbGMaTm_1(255, &lazy cache variable for type metadata for [ToggleState], MEMORY[0x1E697DD58], MEMORY[0x1E69E62F8]);
    type metadata accessor for ModifiedContent<ResolvedToggleStyleBody, AccessibilityAttachmentModifier>(255, &lazy cache variable for type metadata for Toggle<ToggleStyleConfiguration.Label>, &type metadata for ToggleStyleConfiguration.Label, &protocol witness table for ToggleStyleConfiguration.Label, type metadata accessor for Toggle);
    lazy protocol witness table accessor for type [ToggleState] and conformance [A]();
    lazy protocol witness table accessor for type Toggle<ToggleStyleConfiguration.Label> and conformance Toggle<A>();
    lazy protocol witness table accessor for type ToggleState and conformance ToggleState();
    v0 = type metadata accessor for TemporalStack();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TemporalStack<[ToggleState], Toggle<ToggleStyleConfiguration.Label>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type [ToggleState] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [ToggleState] and conformance [A];
  if (!lazy protocol witness table cache variable for type [ToggleState] and conformance [A])
  {
    _s7SwiftUI7BindingVySbGMaTm_1(255, &lazy cache variable for type metadata for [ToggleState], MEMORY[0x1E697DD58], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [ToggleState] and conformance [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<TemporalStack<[ToggleState], Toggle<ToggleStyleConfiguration.Label>>, ArchivableToggleAppIntentModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<TemporalStack<[ToggleState], Toggle<ToggleStyleConfiguration.Label>>, ArchivableToggleAppIntentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<TemporalStack<[ToggleState], Toggle<ToggleStyleConfiguration.Label>>, ArchivableToggleAppIntentModifier> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<TemporalStack<[ToggleState], Toggle<ToggleStyleConfiguration.Label>>, ArchivableToggleAppIntentModifier>(255, &lazy cache variable for type metadata for ModifiedContent<TemporalStack<[ToggleState], Toggle<ToggleStyleConfiguration.Label>>, ArchivableToggleAppIntentModifier>, type metadata accessor for TemporalStack<[ToggleState], Toggle<ToggleStyleConfiguration.Label>>);
    lazy protocol witness table accessor for type ArchivableToggleAppIntentModifier and conformance ArchivableToggleAppIntentModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<TemporalStack<[ToggleState], Toggle<ToggleStyleConfiguration.Label>>, ArchivableToggleAppIntentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ArchivableAppIntentToggle.AppIntentLocation and conformance ArchivableAppIntentToggle.AppIntentLocation()
{
  result = lazy protocol witness table cache variable for type ArchivableAppIntentToggle.AppIntentLocation and conformance ArchivableAppIntentToggle.AppIntentLocation;
  if (!lazy protocol witness table cache variable for type ArchivableAppIntentToggle.AppIntentLocation and conformance ArchivableAppIntentToggle.AppIntentLocation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivableAppIntentToggle.AppIntentLocation and conformance ArchivableAppIntentToggle.AppIntentLocation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArchivableAppIntentToggle.AppIntentLocation and conformance ArchivableAppIntentToggle.AppIntentLocation;
  if (!lazy protocol witness table cache variable for type ArchivableAppIntentToggle.AppIntentLocation and conformance ArchivableAppIntentToggle.AppIntentLocation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivableAppIntentToggle.AppIntentLocation and conformance ArchivableAppIntentToggle.AppIntentLocation);
  }

  return result;
}

uint64_t destroy for ArchivableAppIntentToggle.AppIntentLocation(uint64_t a1)
{

  outlined consume of Environment<AppIntentExecutor?>.Content(*(a1 + 16), *(a1 + 24), *(a1 + 32));
}

uint64_t initializeWithCopy for ArchivableAppIntentToggle.AppIntentLocation(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);

  outlined copy of Environment<AppIntentExecutor?>.Content(v5, v6, v7);
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  v8 = *(a2 + 56);
  v9 = *(a2 + 40);
  *(a1 + 40) = v9;
  *(a1 + 56) = v8;
  v10 = v9;

  return a1;
}

uint64_t assignWithCopy for ArchivableAppIntentToggle.AppIntentLocation(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *(a2 + 32);
  outlined copy of Environment<AppIntentExecutor?>.Content(v4, v5, v6);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  outlined consume of Environment<AppIntentExecutor?>.Content(v7, v8, v9);
  v10 = *(a2 + 40);
  v11 = *(a1 + 40);
  *(a1 + 40) = v10;
  v12 = v10;

  v13 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v13;

  return a1;
}

uint64_t assignWithTake for ArchivableAppIntentToggle.AppIntentLocation(uint64_t a1, uint64_t a2)
{

  *a1 = *a2;

  v4 = *(a2 + 32);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v4;
  outlined consume of Environment<AppIntentExecutor?>.Content(v5, v6, v7);

  v8 = *(a2 + 56);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = v8;

  return a1;
}

uint64_t outlined init with copy of Environment<AppIntentExecutor?>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for MutableBox<AppIntentExecutor?>(0, &lazy cache variable for type metadata for Environment<AppIntentExecutor?>, MEMORY[0x1E697DCC0]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for MutableBox<AppIntentExecutor?>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    _s7SwiftUI7BindingVySbGMaTm_1(255, &lazy cache variable for type metadata for AppIntentExecutor?, &type metadata for AppIntentExecutor, MEMORY[0x1E69E6720]);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t outlined destroy of Environment<AppIntentExecutor?>(uint64_t a1)
{
  type metadata accessor for MutableBox<AppIntentExecutor?>(0, &lazy cache variable for type metadata for Environment<AppIntentExecutor?>, MEMORY[0x1E697DCC0]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SegmentedButtonStepperStyle.makeBody(configuration:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v6 = a1[4];
  v5 = a1[5];
  v7 = a1[6];
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v6;
  *(a2 + 40) = v5;
  *(a2 + 48) = v7;
  *(a2 + 56) = 257;
  *(a2 + 58) = 2;

  outlined copy of AppIntentExecutor?(v2);
  outlined copy of AppIntentExecutor?(v4);
}

uint64_t UIKitStepper.updateUIView(_:context:)(void *a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  v6 = *v2;
  v5 = v2[1];
  v7 = v2[3];
  v8 = v2[4];
  v16 = v2[2];
  v17 = v2[5];
  v9 = v2[6];
  [a1 setValue_];
  v10 = -2.0;
  if (!v7)
  {
    v10 = 0.0;
  }

  [a1 setMinimumValue_];
  v11 = 2.0;
  if (!v5)
  {
    v11 = 0.0;
  }

  [a1 setMaximumValue_];
  [a1 setStepValue_];
  v12 = (v4 + OBJC_IVAR____TtC7SwiftUIP33_F1E9485F33A623EEFA647AA5EC4AE09411Coordinator_configuration);
  v13 = *(v4 + OBJC_IVAR____TtC7SwiftUIP33_F1E9485F33A623EEFA647AA5EC4AE09411Coordinator_configuration + 8);
  v14 = *(v4 + OBJC_IVAR____TtC7SwiftUIP33_F1E9485F33A623EEFA647AA5EC4AE09411Coordinator_configuration + 24);
  *v12 = v6;
  v12[1] = v5;
  v12[2] = v16;
  v12[3] = v7;
  v12[4] = v8;
  v12[5] = v17;
  v12[6] = v9;

  outlined copy of AppIntentExecutor?(v5);
  outlined copy of AppIntentExecutor?(v7);

  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v13);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v14);
}

id protocol witness for UIViewRepresentable.makeUIView(context:) in conformance UIKitStepper(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [objc_allocWithZone(MEMORY[0x1E69DCFB0]) init];
  [v2 addTarget:v1 action:sel_valueChanged_ forControlEvents:4096];
  [v2 addTarget:v1 action:sel_editingBegan_ forControlEvents:1];
  [v2 addTarget:v1 action:sel_editingEnded_ forControlEvents:448];
  return v2;
}

id protocol witness for UIViewRepresentable.makeCoordinator() in conformance UIKitStepper@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  v10 = type metadata accessor for Coordinator();
  v11 = objc_allocWithZone(v10);
  v12 = &v11[OBJC_IVAR____TtC7SwiftUIP33_F1E9485F33A623EEFA647AA5EC4AE09411Coordinator_configuration];
  *v12 = v3;
  *(v12 + 1) = v4;
  *(v12 + 2) = v5;
  *(v12 + 3) = v6;
  *(v12 + 4) = v7;
  *(v12 + 5) = v8;
  *(v12 + 6) = v9;

  outlined copy of AppIntentExecutor?(v4);
  outlined copy of AppIntentExecutor?(v6);
  v14.receiver = v11;
  v14.super_class = v10;

  result = objc_msgSendSuper2(&v14, sel_init);
  *a1 = result;
  return result;
}

id Coordinator.valueChanged(_:)(void *a1)
{
  v3 = [a1 value];
  if (v4 > 0.0)
  {
    v5 = *(v1 + OBJC_IVAR____TtC7SwiftUIP33_F1E9485F33A623EEFA647AA5EC4AE09411Coordinator_configuration + 8);
    if (v5)
    {
      MEMORY[0x1EEE9AC00](v3);

      static Update.dispatchImmediately<A>(reason:_:)();
      v6 = v5;
LABEL_7:
      outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v6);
      return [a1 setValue_];
    }
  }

  v7 = [a1 value];
  if (v8 < 0.0)
  {
    v9 = *(v1 + OBJC_IVAR____TtC7SwiftUIP33_F1E9485F33A623EEFA647AA5EC4AE09411Coordinator_configuration + 24);
    if (v9)
    {
      MEMORY[0x1EEE9AC00](v7);

      static Update.dispatchImmediately<A>(reason:_:)();
      v6 = v9;
      goto LABEL_7;
    }
  }

  return [a1 setValue_];
}

void @objc Coordinator.editingBegan(_:)(void *a1)
{
  v1 = a1;
  static Update.dispatchImmediately<A>(reason:_:)();
}

uint64_t Coordinator.__ivar_destroyer()
{
  v1 = *(v0 + OBJC_IVAR____TtC7SwiftUIP33_F1E9485F33A623EEFA647AA5EC4AE09411Coordinator_configuration + 8);
  v2 = *(v0 + OBJC_IVAR____TtC7SwiftUIP33_F1E9485F33A623EEFA647AA5EC4AE09411Coordinator_configuration + 24);

  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v1);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v2);
}

{
  v1 = *(v0 + OBJC_IVAR____TtC7SwiftUIP33_8AA246B2E0E916EFA5AD706DCC8A0FE811Coordinator_configuration + 112);
  v6[6] = *(v0 + OBJC_IVAR____TtC7SwiftUIP33_8AA246B2E0E916EFA5AD706DCC8A0FE811Coordinator_configuration + 96);
  v6[7] = v1;
  v6[8] = *(v0 + OBJC_IVAR____TtC7SwiftUIP33_8AA246B2E0E916EFA5AD706DCC8A0FE811Coordinator_configuration + 128);
  v2 = *(v0 + OBJC_IVAR____TtC7SwiftUIP33_8AA246B2E0E916EFA5AD706DCC8A0FE811Coordinator_configuration + 48);
  v6[2] = *(v0 + OBJC_IVAR____TtC7SwiftUIP33_8AA246B2E0E916EFA5AD706DCC8A0FE811Coordinator_configuration + 32);
  v6[3] = v2;
  v3 = *(v0 + OBJC_IVAR____TtC7SwiftUIP33_8AA246B2E0E916EFA5AD706DCC8A0FE811Coordinator_configuration + 80);
  v6[4] = *(v0 + OBJC_IVAR____TtC7SwiftUIP33_8AA246B2E0E916EFA5AD706DCC8A0FE811Coordinator_configuration + 64);
  v6[5] = v3;
  v4 = *(v0 + OBJC_IVAR____TtC7SwiftUIP33_8AA246B2E0E916EFA5AD706DCC8A0FE811Coordinator_configuration + 16);
  v6[0] = *(v0 + OBJC_IVAR____TtC7SwiftUIP33_8AA246B2E0E916EFA5AD706DCC8A0FE811Coordinator_configuration);
  v6[1] = v4;
  outlined destroy of SliderStyleConfiguration(v6);
}

{

  outlined destroy of _VariadicView_Children(v0 + OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF011Coordinator_children);
}

{
}

{
  _s7SwiftUI24SearchEnvironmentStorageC15BoundPropertiesVWOhTm_0(v0 + OBJC_IVAR____TtC7SwiftUIP33_87E15EBB5C00F49DEF8C638A73559D9211Coordinator_state, type metadata accessor for Binding<SearchFieldState>);
  return _s7SwiftUI24SearchEnvironmentStorageC15BoundPropertiesVWOhTm_0(v0 + OBJC_IVAR____TtC7SwiftUIP33_87E15EBB5C00F49DEF8C638A73559D9211Coordinator_selection, type metadata accessor for SearchBoundProperty<TextSelection?>?);
}

id Coordinator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

{
  return Coordinator.__deallocating_deinit(type metadata accessor for Coordinator);
}

{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Coordinator(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for Coordinator()
{
  return objc_opt_self();
}

{
  return objc_opt_self();
}

{
  return objc_opt_self();
}

{
  return objc_opt_self();
}

uint64_t partial apply for closure #1 in Coordinator.editingEnded(_:)()
{
  return partial apply for closure #1 in Coordinator.editingEnded(_:)(0);
}

{
  return partial apply for closure #1 in Coordinator.valueChanged(_:)(0);
}

uint64_t partial apply for closure #1 in Coordinator.editingEnded(_:)(uint64_t a1)
{
  v3 = *(*(v1 + 16) + OBJC_IVAR____TtC7SwiftUIP33_F1E9485F33A623EEFA647AA5EC4AE09411Coordinator_configuration + 40);

  v3(a1);
}

uint64_t destroy for UIKitStepper(uint64_t a1)
{

  if (*(a1 + 8))
  {
  }

  if (*(a1 + 24))
  {
  }
}

void *initializeWithCopy for UIKitStepper(void *a1, void *a2)
{
  *a1 = *a2;
  v5 = a2 + 1;
  v4 = a2[1];

  if (v4)
  {
    v6 = a2[2];
    a1[1] = v4;
    a1[2] = v6;
  }

  else
  {
    *(a1 + 1) = *v5;
  }

  v7 = a2[3];
  if (v7)
  {
    v8 = a2[4];
    a1[3] = v7;
    a1[4] = v8;
  }

  else
  {
    *(a1 + 3) = *(a2 + 3);
  }

  v9 = a2[6];
  a1[5] = a2[5];
  a1[6] = v9;

  return a1;
}

void *assignWithCopy for UIKitStepper(void *a1, void *a2)
{
  *a1 = *a2;

  v4 = a2[1];
  if (a1[1])
  {
    if (v4)
    {
      v5 = a2[2];
      a1[1] = v4;
      a1[2] = v5;

      goto LABEL_8;
    }
  }

  else if (v4)
  {
    v6 = a2[2];
    a1[1] = v4;
    a1[2] = v6;

    goto LABEL_8;
  }

  *(a1 + 1) = *(a2 + 1);
LABEL_8:
  v7 = a2[3];
  if (!a1[3])
  {
    if (v7)
    {
      v9 = a2[4];
      a1[3] = v7;
      a1[4] = v9;

      goto LABEL_15;
    }

LABEL_14:
    *(a1 + 3) = *(a2 + 3);
    goto LABEL_15;
  }

  if (!v7)
  {

    goto LABEL_14;
  }

  v8 = a2[4];
  a1[3] = v7;
  a1[4] = v8;

LABEL_15:
  v10 = a2[6];
  a1[5] = a2[5];
  a1[6] = v10;

  return a1;
}

uint64_t assignWithTake for UIKitStepper(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  v4 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (v4)
    {
      v5 = *(a2 + 16);
      *(a1 + 8) = v4;
      *(a1 + 16) = v5;

      goto LABEL_8;
    }
  }

  else if (v4)
  {
    v6 = *(a2 + 16);
    *(a1 + 8) = v4;
    *(a1 + 16) = v6;
    goto LABEL_8;
  }

  *(a1 + 8) = *(a2 + 8);
LABEL_8:
  v7 = *(a2 + 24);
  if (!*(a1 + 24))
  {
    if (v7)
    {
      v9 = *(a2 + 32);
      *(a1 + 24) = v7;
      *(a1 + 32) = v9;
      goto LABEL_15;
    }

LABEL_14:
    *(a1 + 24) = *(a2 + 24);
    goto LABEL_15;
  }

  if (!v7)
  {

    goto LABEL_14;
  }

  v8 = *(a2 + 32);
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;

LABEL_15:
  *(a1 + 40) = *(a2 + 40);

  return a1;
}

uint64_t getEnumTagSinglePayload for UIKitStepper(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for UIKitStepper(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<LabeledContent<StepperStyleConfiguration.Label, ModifiedContent<UIKitStepper, _FixedSizeLayout>>, ViewInputFlagModifier<ListLabeledContentPrefersHorizontalLayout>>, ViewInputFlagModifier<ListLabeledContentAllowsOutsetting>>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<LabeledContent<StepperStyleConfiguration.Label, ModifiedContent<UIKitStepper, _FixedSizeLayout>>, ViewInputFlagModifier<ListLabeledContentPrefersHorizontalLayout>>, ViewInputFlagModifier<ListLabeledContentAllowsOutsetting>>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<LabeledContent<StepperStyleConfiguration.Label, ModifiedContent<UIKitStepper, _FixedSizeLayout>>, ViewInputFlagModifier<ListLabeledContentPrefersHorizontalLayout>>, ViewInputFlagModifier<ListLabeledContentAllowsOutsetting>>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<LabeledContent<StepperStyleConfiguration.Label, ModifiedContent<UIKitStepper, _FixedSizeLayout>>, ViewInputFlagModifier<ListLabeledContentPrefersHorizontalLayout>>, ViewInputFlagModifier<ListLabeledContentAllowsOutsetting>>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<LabeledContent<StepperStyleConfiguration.Label, ModifiedContent<UIKitStepper, _FixedSizeLayout>>, ViewInputFlagModifier<ListLabeledContentPrefersHorizontalLayout>>, ViewInputFlagModifier<ListLabeledContentAllowsOutsetting>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ViewInputFlagModifier<ListLabeledContentPrefersHorizontalLayout> and conformance ViewInputFlagModifier<A>(&lazy protocol witness table cache variable for type ViewInputFlagModifier<AccessibilityCombinedLabeledContent> and conformance ViewInputFlagModifier<A>, &lazy cache variable for type metadata for ViewInputFlagModifier<AccessibilityCombinedLabeledContent>, lazy protocol witness table accessor for type AccessibilityCombinedLabeledContent and conformance AccessibilityCombinedLabeledContent);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<LabeledContent<StepperStyleConfiguration.Label, ModifiedContent<UIKitStepper, _FixedSizeLayout>>, ViewInputFlagModifier<ListLabeledContentPrefersHorizontalLayout>>, ViewInputFlagModifier<ListLabeledContentAllowsOutsetting>>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<LabeledContent<StepperStyleConfiguration.Label, ModifiedContent<UIKitStepper, _FixedSizeLayout>>, ViewInputFlagModifier<ListLabeledContentPrefersHorizontalLayout>>, ViewInputFlagModifier<ListLabeledContentAllowsOutsetting>>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<LabeledContent<StepperStyleConfiguration.Label, ModifiedContent<UIKitStepper, _FixedSizeLayout>>, ViewInputFlagModifier<ListLabeledContentPrefersHorizontalLayout>>, ViewInputFlagModifier<ListLabeledContentAllowsOutsetting>>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<LabeledContent<StepperStyleConfiguration.Label, ModifiedContent<UIKitStepper, _FixedSizeLayout>>, ViewInputFlagModifier<ListLabeledContentPrefersHorizontalLayout>>, ViewInputFlagModifier<ListLabeledContentAllowsOutsetting>>();
    type metadata accessor for ViewInputFlagModifier<ListLabeledContentPrefersHorizontalLayout>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<AccessibilityCombinedLabeledContent>, lazy protocol witness table accessor for type AccessibilityCombinedLabeledContent and conformance AccessibilityCombinedLabeledContent);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<LabeledContent<StepperStyleConfiguration.Label, ModifiedContent<UIKitStepper, _FixedSizeLayout>>, ViewInputFlagModifier<ListLabeledContentPrefersHorizontalLayout>>, ViewInputFlagModifier<ListLabeledContentAllowsOutsetting>>, ViewInputFlagModifier<AccessibilityCombinedLabeledContent>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<LabeledContent<StepperStyleConfiguration.Label, ModifiedContent<UIKitStepper, _FixedSizeLayout>>, ViewInputFlagModifier<ListLabeledContentPrefersHorizontalLayout>>, ViewInputFlagModifier<ListLabeledContentAllowsOutsetting>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<LabeledContent<StepperStyleConfiguration.Label, ModifiedContent<UIKitStepper, _FixedSizeLayout>>, ViewInputFlagModifier<ListLabeledContentPrefersHorizontalLayout>>, ViewInputFlagModifier<ListLabeledContentAllowsOutsetting>>)
  {
    type metadata accessor for ModifiedContent<LabeledContent<StepperStyleConfiguration.Label, ModifiedContent<UIKitStepper, _FixedSizeLayout>>, ViewInputFlagModifier<ListLabeledContentPrefersHorizontalLayout>>();
    type metadata accessor for ViewInputFlagModifier<ListLabeledContentPrefersHorizontalLayout>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<ListLabeledContentAllowsOutsetting>, lazy protocol witness table accessor for type ListLabeledContentAllowsOutsetting and conformance ListLabeledContentAllowsOutsetting);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<LabeledContent<StepperStyleConfiguration.Label, ModifiedContent<UIKitStepper, _FixedSizeLayout>>, ViewInputFlagModifier<ListLabeledContentPrefersHorizontalLayout>>, ViewInputFlagModifier<ListLabeledContentAllowsOutsetting>>);
    }
  }
}

void type metadata accessor for ModifiedContent<LabeledContent<StepperStyleConfiguration.Label, ModifiedContent<UIKitStepper, _FixedSizeLayout>>, ViewInputFlagModifier<ListLabeledContentPrefersHorizontalLayout>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<LabeledContent<StepperStyleConfiguration.Label, ModifiedContent<UIKitStepper, _FixedSizeLayout>>, ViewInputFlagModifier<ListLabeledContentPrefersHorizontalLayout>>)
  {
    type metadata accessor for LabeledContent<StepperStyleConfiguration.Label, ModifiedContent<UIKitStepper, _FixedSizeLayout>>();
    type metadata accessor for ViewInputFlagModifier<ListLabeledContentPrefersHorizontalLayout>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<ListLabeledContentPrefersHorizontalLayout>, lazy protocol witness table accessor for type ListLabeledContentPrefersHorizontalLayout and conformance ListLabeledContentPrefersHorizontalLayout);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<LabeledContent<StepperStyleConfiguration.Label, ModifiedContent<UIKitStepper, _FixedSizeLayout>>, ViewInputFlagModifier<ListLabeledContentPrefersHorizontalLayout>>);
    }
  }
}

void type metadata accessor for LabeledContent<StepperStyleConfiguration.Label, ModifiedContent<UIKitStepper, _FixedSizeLayout>>()
{
  if (!lazy cache variable for type metadata for LabeledContent<StepperStyleConfiguration.Label, ModifiedContent<UIKitStepper, _FixedSizeLayout>>)
  {
    type metadata accessor for ModifiedContent<UIKitStepper, _FixedSizeLayout>();
    v0 = type metadata accessor for LabeledContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for LabeledContent<StepperStyleConfiguration.Label, ModifiedContent<UIKitStepper, _FixedSizeLayout>>);
    }
  }
}

void type metadata accessor for ModifiedContent<UIKitStepper, _FixedSizeLayout>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<UIKitStepper, _FixedSizeLayout>)
  {
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<UIKitStepper, _FixedSizeLayout>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<LabeledContent<StepperStyleConfiguration.Label, ModifiedContent<UIKitStepper, _FixedSizeLayout>>, ViewInputFlagModifier<ListLabeledContentPrefersHorizontalLayout>>, ViewInputFlagModifier<ListLabeledContentAllowsOutsetting>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<LabeledContent<StepperStyleConfiguration.Label, ModifiedContent<UIKitStepper, _FixedSizeLayout>>, ViewInputFlagModifier<ListLabeledContentPrefersHorizontalLayout>>, ViewInputFlagModifier<ListLabeledContentAllowsOutsetting>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<LabeledContent<StepperStyleConfiguration.Label, ModifiedContent<UIKitStepper, _FixedSizeLayout>>, ViewInputFlagModifier<ListLabeledContentPrefersHorizontalLayout>>, ViewInputFlagModifier<ListLabeledContentAllowsOutsetting>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<LabeledContent<StepperStyleConfiguration.Label, ModifiedContent<UIKitStepper, _FixedSizeLayout>>, ViewInputFlagModifier<ListLabeledContentPrefersHorizontalLayout>>, ViewInputFlagModifier<ListLabeledContentAllowsOutsetting>>();
    lazy protocol witness table accessor for type ModifiedContent<LabeledContent<StepperStyleConfiguration.Label, ModifiedContent<UIKitStepper, _FixedSizeLayout>>, ViewInputFlagModifier<ListLabeledContentPrefersHorizontalLayout>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ViewInputFlagModifier<ListLabeledContentPrefersHorizontalLayout> and conformance ViewInputFlagModifier<A>(&lazy protocol witness table cache variable for type ViewInputFlagModifier<ListLabeledContentAllowsOutsetting> and conformance ViewInputFlagModifier<A>, &lazy cache variable for type metadata for ViewInputFlagModifier<ListLabeledContentAllowsOutsetting>, lazy protocol witness table accessor for type ListLabeledContentAllowsOutsetting and conformance ListLabeledContentAllowsOutsetting);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<LabeledContent<StepperStyleConfiguration.Label, ModifiedContent<UIKitStepper, _FixedSizeLayout>>, ViewInputFlagModifier<ListLabeledContentPrefersHorizontalLayout>>, ViewInputFlagModifier<ListLabeledContentAllowsOutsetting>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<LabeledContent<StepperStyleConfiguration.Label, ModifiedContent<UIKitStepper, _FixedSizeLayout>>, ViewInputFlagModifier<ListLabeledContentPrefersHorizontalLayout>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<LabeledContent<StepperStyleConfiguration.Label, ModifiedContent<UIKitStepper, _FixedSizeLayout>>, ViewInputFlagModifier<ListLabeledContentPrefersHorizontalLayout>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<LabeledContent<StepperStyleConfiguration.Label, ModifiedContent<UIKitStepper, _FixedSizeLayout>>, ViewInputFlagModifier<ListLabeledContentPrefersHorizontalLayout>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<LabeledContent<StepperStyleConfiguration.Label, ModifiedContent<UIKitStepper, _FixedSizeLayout>>, ViewInputFlagModifier<ListLabeledContentPrefersHorizontalLayout>>();
    lazy protocol witness table accessor for type LabeledContent<StepperStyleConfiguration.Label, ModifiedContent<UIKitStepper, _FixedSizeLayout>> and conformance <> LabeledContent<A, B>();
    lazy protocol witness table accessor for type ViewInputFlagModifier<ListLabeledContentPrefersHorizontalLayout> and conformance ViewInputFlagModifier<A>(&lazy protocol witness table cache variable for type ViewInputFlagModifier<ListLabeledContentPrefersHorizontalLayout> and conformance ViewInputFlagModifier<A>, &lazy cache variable for type metadata for ViewInputFlagModifier<ListLabeledContentPrefersHorizontalLayout>, lazy protocol witness table accessor for type ListLabeledContentPrefersHorizontalLayout and conformance ListLabeledContentPrefersHorizontalLayout);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<LabeledContent<StepperStyleConfiguration.Label, ModifiedContent<UIKitStepper, _FixedSizeLayout>>, ViewInputFlagModifier<ListLabeledContentPrefersHorizontalLayout>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LabeledContent<StepperStyleConfiguration.Label, ModifiedContent<UIKitStepper, _FixedSizeLayout>> and conformance <> LabeledContent<A, B>()
{
  result = lazy protocol witness table cache variable for type LabeledContent<StepperStyleConfiguration.Label, ModifiedContent<UIKitStepper, _FixedSizeLayout>> and conformance <> LabeledContent<A, B>;
  if (!lazy protocol witness table cache variable for type LabeledContent<StepperStyleConfiguration.Label, ModifiedContent<UIKitStepper, _FixedSizeLayout>> and conformance <> LabeledContent<A, B>)
  {
    type metadata accessor for LabeledContent<StepperStyleConfiguration.Label, ModifiedContent<UIKitStepper, _FixedSizeLayout>>();
    lazy protocol witness table accessor for type ModifiedContent<UIKitStepper, _FixedSizeLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LabeledContent<StepperStyleConfiguration.Label, ModifiedContent<UIKitStepper, _FixedSizeLayout>> and conformance <> LabeledContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<UIKitStepper, _FixedSizeLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<UIKitStepper, _FixedSizeLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<UIKitStepper, _FixedSizeLayout> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<UIKitStepper, _FixedSizeLayout>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<UIKitStepper, _FixedSizeLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ViewInputFlagModifier<ListLabeledContentPrefersHorizontalLayout> and conformance ViewInputFlagModifier<A>(unint64_t *a1, unint64_t *a2, void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ViewInputFlagModifier<ListLabeledContentPrefersHorizontalLayout>(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RemoteScenes.VersionNegotiation(unsigned __int16 *a1, int a2)
{
  if (a2)
  {
    if ((a2 + 0xFFFF) <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if ((a2 + 0xFFFF) < 0xFF0000)
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
        return (*a1 | (v4 << 16)) - 0xFFFF;
      }
    }

    else if (v3 == 2)
    {
      v4 = a1[1];
      if (a1[1])
      {
        return (*a1 | (v4 << 16)) - 0xFFFF;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (*(a1 + 2))
      {
        return (*a1 | (v4 << 16)) - 0xFFFF;
      }
    }
  }

  return 0;
}

_WORD *storeEnumTagSinglePayload for RemoteScenes.VersionNegotiation(_WORD *result, int a2, int a3)
{
  if ((a3 + 0xFFFF) <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if ((a3 + 0xFFFF) < 0xFF0000)
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
    v5 = ((a2 - 1) >> 16) + 1;
    *result = a2 - 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      result[1] = 0;
    }

    else
    {
      *(result + 1) = 0;
    }
  }

  else if (v4)
  {
    *(result + 2) = 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RemoteScenes.DeploymentVersion and conformance RemoteScenes.DeploymentVersion()
{
  result = lazy protocol witness table cache variable for type RemoteScenes.DeploymentVersion and conformance RemoteScenes.DeploymentVersion;
  if (!lazy protocol witness table cache variable for type RemoteScenes.DeploymentVersion and conformance RemoteScenes.DeploymentVersion)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RemoteScenes.DeploymentVersion and conformance RemoteScenes.DeploymentVersion);
  }

  return result;
}

uint64_t _ScrollableContentProvider.root(scrollView:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for _ScrollView.Main();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - v7;
  (*(v5 + 16))(&v10 - v7, a1, v4, v6);
  return (*(v5 + 32))(a2, v8, v4);
}

uint64_t one-time initialization function for indicatorColor()
{
  result = Color.init(_:white:opacity:)();
  indicatorColor = result;
  return result;
}

uint64_t _ScrollViewRoot.body.getter()
{
  static Alignment.center.getter();
  type metadata accessor for _ScrollView.Main();
  lazy protocol witness table accessor for type _ScrollOverlayView and conformance _ScrollOverlayView();
  return View.overlayPreferenceValue<A, B>(_:alignment:_:)();
}

uint64_t closure #1 in _ScrollViewRoot.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *a1;
  if (result)
  {
    v4 = *(a1 + 8);
    *a2 = result;
    *(a2 + 8) = v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ScrollOverlayView and conformance _ScrollOverlayView()
{
  result = lazy protocol witness table cache variable for type _ScrollOverlayView and conformance _ScrollOverlayView;
  if (!lazy protocol witness table cache variable for type _ScrollOverlayView and conformance _ScrollOverlayView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ScrollOverlayView and conformance _ScrollOverlayView);
  }

  return result;
}

uint64_t type metadata completion function for _ScrollViewRoot()
{
  result = type metadata accessor for _ScrollView();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for _ScrollViewRoot(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 168 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    v10 = (v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    v11 = (a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    v12 = *v11;
    v13 = *(v11 + 8);
    v14 = *(v11 + 16);
    v15 = *(v11 + 24);
    v16 = *(v11 + 32);
    outlined copy of _ScrollViewConfig.ContentOffset(*v11, v13, v14, v15, v16);
    *v10 = v12;
    *(v10 + 8) = v13;
    *(v10 + 16) = v14;
    *(v10 + 24) = v15;
    *(v10 + 32) = v16;
    v17 = *(v11 + 40);
    *(v10 + 56) = *(v11 + 56);
    *(v10 + 40) = v17;
    *(v10 + 72) = *(v11 + 72);
    *(v10 + 80) = *(v11 + 80);
    *(v10 + 81) = *(v11 + 81);
    v18 = *(v11 + 112);
    *(v10 + 112) = v18;
    *(v10 + 120) = *(v11 + 120);
    (**(v18 - 8))(v10 + 88, v11 + 88);
    *(v10 + 128) = *(v11 + 128);
    *(v10 + 129) = *(v11 + 129);
    *(v10 + 130) = *(v11 + 130);
    *(v10 + 131) = *(v11 + 131);
    v19 = *(v11 + 136);
    *(v10 + 152) = *(v11 + 152);
    *(v10 + 136) = v19;
  }

  return v3;
}

uint64_t outlined copy of _ScrollViewConfig.ContentOffset(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
  }

  return result;
}

uint64_t destroy for _ScrollViewRoot(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 16) - 8) + 8;
  (*v3)();
  v4 = (a1 + *(v3 + 56) + 7) & 0xFFFFFFFFFFFFFFF8;
  outlined consume of _ScrollViewConfig.ContentOffset(*v4, *(v4 + 8), *(v4 + 16), *(v4 + 24), *(v4 + 32));

  return __swift_destroy_boxed_opaque_existential_1(v4 + 88);
}

uint64_t outlined consume of _ScrollViewConfig.ContentOffset(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
  }

  return result;
}

uint64_t initializeWithCopy for _ScrollViewRoot(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = *(v8 + 16);
  v12 = *(v8 + 24);
  v13 = *(v8 + 32);
  outlined copy of _ScrollViewConfig.ContentOffset(*v8, v10, v11, v12, v13);
  *v7 = v9;
  *(v7 + 8) = v10;
  *(v7 + 16) = v11;
  *(v7 + 24) = v12;
  *(v7 + 32) = v13;
  v14 = *(v8 + 40);
  *(v7 + 56) = *(v8 + 56);
  *(v7 + 40) = v14;
  *(v7 + 72) = *(v8 + 72);
  *(v7 + 80) = *(v8 + 80);
  *(v7 + 81) = *(v8 + 81);
  v15 = *(v8 + 112);
  *(v7 + 112) = v15;
  *(v7 + 120) = *(v8 + 120);
  (**(v15 - 8))(v7 + 88, v8 + 88);
  *(v7 + 128) = *(v8 + 128);
  *(v7 + 129) = *(v8 + 129);
  *(v7 + 130) = *(v8 + 130);
  *(v7 + 131) = *(v8 + 131);
  v16 = *(v8 + 136);
  *(v7 + 152) = *(v8 + 152);
  *(v7 + 136) = v16;
  return a1;
}

uint64_t assignWithCopy for _ScrollViewRoot(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = *(v8 + 16);
  v12 = *(v8 + 24);
  v13 = *(v8 + 32);
  outlined copy of _ScrollViewConfig.ContentOffset(*v8, v10, v11, v12, v13);
  v14 = *v7;
  v15 = *(v7 + 8);
  v16 = *(v7 + 16);
  v17 = *(v7 + 24);
  v18 = *(v7 + 32);
  *v7 = v9;
  *(v7 + 8) = v10;
  *(v7 + 16) = v11;
  *(v7 + 24) = v12;
  *(v7 + 32) = v13;
  outlined consume of _ScrollViewConfig.ContentOffset(v14, v15, v16, v17, v18);
  *(v7 + 40) = *(v8 + 40);
  *(v7 + 48) = *(v8 + 48);
  *(v7 + 56) = *(v8 + 56);
  *(v7 + 64) = *(v8 + 64);
  *(v7 + 72) = *(v8 + 72);
  *(v7 + 80) = *(v8 + 80);
  *(v7 + 81) = *(v8 + 81);
  __swift_assign_boxed_opaque_existential_1((v7 + 88), (v8 + 88));
  *(v7 + 128) = *(v8 + 128);
  *(v7 + 129) = *(v8 + 129);
  *(v7 + 130) = *(v8 + 130);
  *(v7 + 131) = *(v8 + 131);
  *(v7 + 136) = *(v8 + 136);
  *(v7 + 144) = *(v8 + 144);
  *(v7 + 152) = *(v8 + 152);
  *(v7 + 160) = *(v8 + 160);
  return a1;
}

uint64_t initializeWithTake for _ScrollViewRoot(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v8 + 16);
  v9 = *(v8 + 32);
  *v7 = *v8;
  *(v7 + 16) = v10;
  *(v7 + 32) = v9;
  v11 = *(v8 + 96);
  v13 = *(v8 + 48);
  v12 = *(v8 + 64);
  *(v7 + 80) = *(v8 + 80);
  *(v7 + 96) = v11;
  *(v7 + 48) = v13;
  *(v7 + 64) = v12;
  v15 = *(v8 + 128);
  v14 = *(v8 + 144);
  v16 = *(v8 + 112);
  *(v7 + 160) = *(v8 + 160);
  *(v7 + 128) = v15;
  *(v7 + 144) = v14;
  *(v7 + 112) = v16;
  return a1;
}

uint64_t assignWithTake for _ScrollViewRoot(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v7 + 32);
  v9 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v10 = *v9;
  v11 = *(v9 + 8);
  v12 = *(v9 + 16);
  v13 = *(v9 + 24);
  v14 = *(v9 + 32);
  v15 = *(v7 + 16);
  *v9 = *v7;
  *(v9 + 16) = v15;
  *(v9 + 32) = v8;
  outlined consume of _ScrollViewConfig.ContentOffset(v10, v11, v12, v13, v14);
  *(v9 + 40) = *(v7 + 40);
  *(v9 + 48) = *(v7 + 48);
  *(v9 + 56) = *(v7 + 56);
  *(v9 + 64) = *(v7 + 64);
  *(v9 + 72) = *(v7 + 72);
  *(v9 + 80) = *(v7 + 80);
  *(v9 + 81) = *(v7 + 81);
  __swift_destroy_boxed_opaque_existential_1(v9 + 88);
  v16 = *(v7 + 88);
  v17 = *(v7 + 104);
  *(v9 + 120) = *(v7 + 120);
  *(v9 + 104) = v17;
  *(v9 + 88) = v16;
  *(v9 + 128) = *(v7 + 128);
  *(v9 + 129) = *(v7 + 129);
  *(v9 + 130) = *(v7 + 130);
  *(v9 + 131) = *(v7 + 131);
  *(v9 + 136) = *(v7 + 136);
  *(v9 + 144) = *(v7 + 144);
  *(v9 + 152) = *(v7 + 152);
  *(v9 + 160) = *(v7 + 160);
  return a1;
}

uint64_t getEnumTagSinglePayload for _ScrollViewRoot(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 168;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 112);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

double storeEnumTagSinglePayload for _ScrollViewRoot(_DWORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 168;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFF58)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFF58)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFF58)
    {
      v15 = ~v7 + a2;
      v16 = a1;
      bzero(a1, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 168);
      a1 = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(a1 + v9) = v14;
      }

      else
      {
        *(a1 + v9) = v14;
      }
    }

    else if (v13)
    {
      *(a1 + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(a1 + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(a1 + v9) = 0;
  }

  else if (v13)
  {
    *(a1 + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v19 = (a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
    if ((a2 & 0x80000000) != 0)
    {
      result = 0.0;
      *(v19 + 136) = 0u;
      *(v19 + 152) = 0u;
      *(v19 + 120) = 0u;
      *(v19 + 104) = 0u;
      *(v19 + 88) = 0u;
      *(v19 + 72) = 0u;
      *(v19 + 56) = 0u;
      *(v19 + 40) = 0u;
      *(v19 + 24) = 0u;
      *(v19 + 8) = 0u;
      *v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      *(v19 + 112) = a2 - 1;
    }
  }

  else
  {
    v18 = *(v5 + 56);

    v18();
  }

  return result;
}

void type metadata accessor for _OverlayPreferenceModifier<_ContainedScrollViewKey, _ScrollOverlayView>()
{
  if (!lazy cache variable for type metadata for _OverlayPreferenceModifier<_ContainedScrollViewKey, _ScrollOverlayView>)
  {
    lazy protocol witness table accessor for type _ScrollOverlayView and conformance _ScrollOverlayView();
    v0 = type metadata accessor for _OverlayPreferenceModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _OverlayPreferenceModifier<_ContainedScrollViewKey, _ScrollOverlayView>);
    }
  }
}

uint64_t _ScrollOverlayView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 2);
  swift_beginAccess();
  outlined init with copy of _ScrollViewConfig(v3 + 168, v30);
  v6 = *(v3 + 336);
  v5 = *(v3 + 344);
  CGSize.inset(by:)();
  v8 = v7;
  v10 = v9;
  *a1 = v3;
  *(a1 + 8) = v4;

  v11 = static HorizontalAlignment.center.getter();
  if (v30[130] != 1)
  {
LABEL_9:
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    goto LABEL_10;
  }

  swift_beginAccess();
  v12 = *(v3 + 146) >> 6;
  if (v12)
  {
    if (v12 != 1)
    {
      goto LABEL_9;
    }

    v13 = *(v3 + 136);
    if (*(v13 + 16) < 2uLL)
    {
      __break(1u);
      goto LABEL_36;
    }

    if (fabs(*(v13 + 48)) <= 2.5 || v8 >= v6)
    {
      goto LABEL_9;
    }

LABEL_22:
    if (one-time initialization token for indicatorColor == -1)
    {
      goto LABEL_23;
    }

    goto LABEL_37;
  }

  v15 = 0;
  if (*(v3 + 145))
  {
    v16 = 0;
    v17 = 0;
    v18 = 0;
    if (v8 >= v6)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

  v16 = 0;
  v17 = 0;
  v18 = 0;
  while (1)
  {
LABEL_10:
    v29 = static HorizontalAlignment.center.getter();
    if ((v30[131] & 1) == 0)
    {
      goto LABEL_18;
    }

    swift_beginAccess();
    v19 = *(v3 + 145) >> 14;
    if (!v19)
    {
      break;
    }

    if (v19 != 1)
    {
      goto LABEL_18;
    }

    v20 = *(v3 + 136);
    if (*(v20 + 16) >= 2uLL)
    {
      if (fabs(*(v20 + 136)) <= 2.5 || v10 >= v5)
      {
LABEL_18:
        v22 = 0;
        v23 = 0;
        v24 = 0;
        v25 = 0;
        goto LABEL_19;
      }

      goto LABEL_28;
    }

LABEL_36:
    __break(1u);
LABEL_37:
    swift_once();
LABEL_23:
    v16 = indicatorColor;
    v27 = one-time initialization token for visibleIndicatorTransition;

    if (v27 != -1)
    {
      swift_once();
    }

    v18 = visibleIndicatorTransition;

    v17 = 256;
    v15 = 1;
  }

  v22 = 0;
  if ((*(v3 + 144) & 1) == 0)
  {
    v23 = 0;
    v24 = 0;
    v25 = 0;
    goto LABEL_19;
  }

  v23 = 0;
  v24 = 0;
  v25 = 0;
  if (v10 >= v5)
  {
    goto LABEL_19;
  }

LABEL_28:
  if (one-time initialization token for indicatorColor != -1)
  {
    swift_once();
  }

  v23 = indicatorColor;
  v28 = one-time initialization token for visibleIndicatorTransition;

  if (v28 != -1)
  {
    swift_once();
  }

  v25 = visibleIndicatorTransition;

  v24 = 256;
  v22 = 1;
LABEL_19:
  outlined copy of ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>?(v15, v16);
  outlined copy of ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>?(v22, v23);
  outlined consume of ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>?(v22, v23);
  outlined consume of ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>?(v15, v16);
  *(a1 + 16) = v11;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  *(a1 + 40) = v15;
  *(a1 + 48) = v16;
  *(a1 + 56) = v17;
  *(a1 + 64) = v18;
  *(a1 + 72) = v29;
  *(a1 + 80) = 0;
  *(a1 + 88) = 1;
  *(a1 + 96) = v22;
  *(a1 + 104) = v23;
  *(a1 + 112) = v24;
  *(a1 + 120) = v25;
  return outlined destroy of _ScrollViewConfig(v30);
}

uint64_t outlined copy of ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>?(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t outlined consume of ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>?(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

double protocol witness for Layout.sizeThatFits(proposal:subviews:cache:) in conformance ScrollOverlayLayout(uint64_t a1, char a2)
{
  result = *&a1;
  if (a2)
  {
    return 10.0;
  }

  return result;
}

uint64_t one-time initialization function for visibleIndicatorTransition()
{
  static AnyTransition.opacity.getter();
  v0 = AnyTransition.transaction(_:)();

  visibleIndicatorTransition = v0;
  return result;
}

uint64_t closure #1 in variable initialization expression of visibleIndicatorTransition(uint64_t a1, char a2)
{
  if (a2 == 2)
  {
    static Animation.easeInOut(duration:)();
  }

  return Transaction.animation.setter();
}

unint64_t lazy protocol witness table accessor for type _VariadicView.Tree<_LayoutRoot<ScrollOverlayLayout>, TupleView<(VStack<ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>?>, VStack<ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>?>)>> and conformance <> _VariadicView.Tree<A, B>()
{
  result = lazy protocol witness table cache variable for type _VariadicView.Tree<_LayoutRoot<ScrollOverlayLayout>, TupleView<(VStack<ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>?>, VStack<ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>?>)>> and conformance <> _VariadicView.Tree<A, B>;
  if (!lazy protocol witness table cache variable for type _VariadicView.Tree<_LayoutRoot<ScrollOverlayLayout>, TupleView<(VStack<ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>?>, VStack<ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>?>)>> and conformance <> _VariadicView.Tree<A, B>)
  {
    type metadata accessor for _VariadicView.Tree<_LayoutRoot<ScrollOverlayLayout>, TupleView<(VStack<ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>?>, VStack<ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>?>)>>();
    lazy protocol witness table accessor for type _OverlayPreferenceModifier<_ContainedScrollViewKey, _ScrollOverlayView> and conformance _OverlayPreferenceModifier<A, B>(&lazy protocol witness table cache variable for type _LayoutRoot<ScrollOverlayLayout> and conformance _LayoutRoot<A>, type metadata accessor for _LayoutRoot<ScrollOverlayLayout>);
    lazy protocol witness table accessor for type TupleView<(VStack<ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>?>, VStack<ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>?>)> and conformance TupleView<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _VariadicView.Tree<_LayoutRoot<ScrollOverlayLayout>, TupleView<(VStack<ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>?>, VStack<ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>?>)>> and conformance <> _VariadicView.Tree<A, B>);
  }

  return result;
}

void type metadata accessor for _VariadicView.Tree<_LayoutRoot<ScrollOverlayLayout>, TupleView<(VStack<ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>?>, VStack<ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>?>)>>()
{
  if (!lazy cache variable for type metadata for _VariadicView.Tree<_LayoutRoot<ScrollOverlayLayout>, TupleView<(VStack<ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>?>, VStack<ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>?>)>>)
  {
    type metadata accessor for _LayoutRoot<ScrollOverlayLayout>();
    type metadata accessor for TupleView<(VStack<ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>?>, VStack<ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>?>)>(255, &lazy cache variable for type metadata for TupleView<(VStack<ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>?>, VStack<ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>?>)>, type metadata accessor for (VStack<ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>?>, VStack<ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>?>), MEMORY[0x1E6981F40]);
    lazy protocol witness table accessor for type _OverlayPreferenceModifier<_ContainedScrollViewKey, _ScrollOverlayView> and conformance _OverlayPreferenceModifier<A, B>(&lazy protocol witness table cache variable for type _LayoutRoot<ScrollOverlayLayout> and conformance _LayoutRoot<A>, type metadata accessor for _LayoutRoot<ScrollOverlayLayout>);
    v0 = type metadata accessor for _VariadicView.Tree();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _VariadicView.Tree<_LayoutRoot<ScrollOverlayLayout>, TupleView<(VStack<ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>?>, VStack<ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>?>)>>);
    }
  }
}

void type metadata accessor for _LayoutRoot<ScrollOverlayLayout>()
{
  if (!lazy cache variable for type metadata for _LayoutRoot<ScrollOverlayLayout>)
  {
    lazy protocol witness table accessor for type ScrollOverlayLayout and conformance ScrollOverlayLayout();
    v0 = type metadata accessor for _LayoutRoot();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _LayoutRoot<ScrollOverlayLayout>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ScrollOverlayLayout and conformance ScrollOverlayLayout()
{
  result = lazy protocol witness table cache variable for type ScrollOverlayLayout and conformance ScrollOverlayLayout;
  if (!lazy protocol witness table cache variable for type ScrollOverlayLayout and conformance ScrollOverlayLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollOverlayLayout and conformance ScrollOverlayLayout);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ScrollOverlayLayout and conformance ScrollOverlayLayout;
  if (!lazy protocol witness table cache variable for type ScrollOverlayLayout and conformance ScrollOverlayLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollOverlayLayout and conformance ScrollOverlayLayout);
  }

  return result;
}

void type metadata accessor for (VStack<ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>?>, VStack<ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>?>)()
{
  if (!lazy cache variable for type metadata for (VStack<ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>?>, VStack<ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>?>))
  {
    type metadata accessor for VStack<ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>?>();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (VStack<ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>?>, VStack<ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>?>));
    }
  }
}

void type metadata accessor for VStack<ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>?>()
{
  if (!lazy cache variable for type metadata for VStack<ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>?>)
  {
    type metadata accessor for TupleView<(VStack<ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>?>, VStack<ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>?>)>(255, &lazy cache variable for type metadata for ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>?, type metadata accessor for ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>, MEMORY[0x1E69E6720]);
    lazy protocol witness table accessor for type ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>? and conformance <A> A?();
    v0 = type metadata accessor for VStack();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for VStack<ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>?>);
    }
  }
}

void type metadata accessor for TupleView<(VStack<ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>?>, VStack<ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>?>)>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void type metadata accessor for ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>)
  {
    type metadata accessor for _ShapeView<Capsule, Color>();
    type metadata accessor for _TraitWritingModifier<TransitionTraitKey>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>);
    }
  }
}

void type metadata accessor for _ShapeView<Capsule, Color>()
{
  if (!lazy cache variable for type metadata for _ShapeView<Capsule, Color>)
  {
    lazy protocol witness table accessor for type Capsule and conformance Capsule();
    v0 = type metadata accessor for _ShapeView();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ShapeView<Capsule, Color>);
    }
  }
}

void type metadata accessor for _TraitWritingModifier<TransitionTraitKey>()
{
  if (!lazy cache variable for type metadata for _TraitWritingModifier<TransitionTraitKey>)
  {
    v0 = type metadata accessor for _TraitWritingModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _TraitWritingModifier<TransitionTraitKey>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>? and conformance <A> A?)
  {
    type metadata accessor for TupleView<(VStack<ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>?>, VStack<ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>?>)>(255, &lazy cache variable for type metadata for ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>?, type metadata accessor for ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>, MEMORY[0x1E69E6720]);
    lazy protocol witness table accessor for type ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>();
    lazy protocol witness table accessor for type _OverlayPreferenceModifier<_ContainedScrollViewKey, _ScrollOverlayView> and conformance _OverlayPreferenceModifier<A, B>(&lazy protocol witness table cache variable for type _ShapeView<Capsule, Color> and conformance _ShapeView<A, B>, type metadata accessor for _ShapeView<Capsule, Color>);
    lazy protocol witness table accessor for type _OverlayPreferenceModifier<_ContainedScrollViewKey, _ScrollOverlayView> and conformance _OverlayPreferenceModifier<A, B>(&lazy protocol witness table cache variable for type _TraitWritingModifier<TransitionTraitKey> and conformance _TraitWritingModifier<A>, type metadata accessor for _TraitWritingModifier<TransitionTraitKey>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _OverlayPreferenceModifier<_ContainedScrollViewKey, _ScrollOverlayView> and conformance _OverlayPreferenceModifier<A, B>(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type TupleView<(VStack<ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>?>, VStack<ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>?>)> and conformance TupleView<A>()
{
  result = lazy protocol witness table cache variable for type TupleView<(VStack<ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>?>, VStack<ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>?>)> and conformance TupleView<A>;
  if (!lazy protocol witness table cache variable for type TupleView<(VStack<ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>?>, VStack<ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>?>)> and conformance TupleView<A>)
  {
    type metadata accessor for TupleView<(VStack<ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>?>, VStack<ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>?>)>(255, &lazy cache variable for type metadata for TupleView<(VStack<ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>?>, VStack<ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>?>)>, type metadata accessor for (VStack<ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>?>, VStack<ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>?>), MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TupleView<(VStack<ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>?>, VStack<ModifiedContent<_ShapeView<Capsule, Color>, _TraitWritingModifier<TransitionTraitKey>>?>)> and conformance TupleView<A>);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for ScrollOverlayLayout(uint64_t a1)
{
  result = lazy protocol witness table accessor for type ScrollOverlayLayout and conformance ScrollOverlayLayout();
  *(a1 + 8) = result;
  return result;
}

uint64_t specialized ScrollOverlayLayout.placeSubviews(in:proposal:subviews:cache:)()
{
  swift_beginAccess();
  swift_beginAccess();
  CGSize.inset(by:)();
  EdgeInsets.init(_all:)();
  LayoutSubviews.subscript.getter();
  static UnitPoint.topLeading.getter();
  LayoutSubview.place(at:anchor:proposal:)();
  LayoutSubviews.subscript.getter();
  static UnitPoint.topLeading.getter();
  return LayoutSubview.place(at:anchor:proposal:)();
}

uint64_t protocol witness for MenuStyle.makeBody(configuration:) in conformance _BorderedButtonMenuStyle@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = a1[3];
  KeyPath = swift_getKeyPath();
  v10 = swift_getKeyPath();
  *a2 = KeyPath;
  *(a2 + 8) = 0;
  *(a2 + 16) = v10;
  *(a2 + 24) = 0;
  *(a2 + 32) = v5;
  *(a2 + 40) = v6;
  *(a2 + 48) = v7;
  *(a2 + 56) = v8;
  *(a2 + 64) = v4;
  outlined copy of AppIntentExecutor?(v5);

  return outlined copy of AppIntentExecutor?(v7);
}

double BorderedButtonMenuStyleBody.body.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);
  v8 = specialized Environment.wrappedValue.getter(*(v1 + 16), *(v1 + 24));
  outlined copy of AppIntentExecutor?(v3);
  outlined copy of AppIntentExecutor?(v5);
  KeyPath = swift_getKeyPath();
  v10 = swift_getKeyPath();
  outlined consume of Glass?(0, 0, 0, 1);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = 0;
  *(a1 + 18) = v8;
  *(a1 + 19) = 2;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = 0;
  *(a1 + 48) = v7;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 56) = 0;
  *&result = 1;
  *(a1 + 80) = xmmword_18CD6A6D0;
  *(a1 + 96) = 0;
  *(a1 + 104) = KeyPath;
  *(a1 + 112) = 0;
  *(a1 + 120) = v10;
  *(a1 + 128) = 0;
  return result;
}

SwiftUI::BorderedButtonMenuStyle __swiftcall BorderedButtonMenuStyle.init()()
{
  result.isProminent = _diagnoseUnavailableCodeReached()();
  __break(1u);
  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for _ServicesButtonMenuStyle(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Environment<Bool>.Content(*a2, v5);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = a2[2];
  return a1;
}

uint64_t *assignWithCopy for _ServicesButtonMenuStyle(uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Environment<Bool>.Content(*a2, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of Environment<Bool>.Content(v6, v7);
  a1[2] = a2[2];
  return a1;
}

uint64_t *assignWithTake for _ServicesButtonMenuStyle(uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of Environment<Bool>.Content(v6, v7);
  a1[2] = a2[2];
  return a1;
}

uint64_t getEnumTagSinglePayload for _ServicesButtonMenuStyle(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 24))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for _ServicesButtonMenuStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BorderedButtonMenuStyleBody and conformance BorderedButtonMenuStyleBody()
{
  result = lazy protocol witness table cache variable for type BorderedButtonMenuStyleBody and conformance BorderedButtonMenuStyleBody;
  if (!lazy protocol witness table cache variable for type BorderedButtonMenuStyleBody and conformance BorderedButtonMenuStyleBody)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BorderedButtonMenuStyleBody and conformance BorderedButtonMenuStyleBody);
  }

  return result;
}

uint64_t destroy for BorderedButtonMenuStyleBody(uint64_t a1)
{
  outlined consume of Environment<Bool>.Content(*a1, *(a1 + 8));
  result = outlined consume of Environment<Bool>.Content(*(a1 + 16), *(a1 + 24));
  if (*(a1 + 32))
  {
  }

  if (*(a1 + 48))
  {
  }

  return result;
}

uint64_t initializeWithCopy for BorderedButtonMenuStyleBody(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Environment<Bool>.Content(*a2, v5);
  *a1 = v4;
  *(a1 + 8) = v5;
  v6 = a2[2];
  v7 = *(a2 + 24);
  outlined copy of Environment<Bool>.Content(v6, v7);
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  v8 = a2[4];
  if (v8)
  {
    v9 = a2[5];
    *(a1 + 32) = v8;
    *(a1 + 40) = v9;
  }

  else
  {
    *(a1 + 32) = *(a2 + 2);
  }

  v10 = a2[6];
  if (v10)
  {
    v11 = a2[7];
    *(a1 + 48) = v10;
    *(a1 + 56) = v11;
  }

  else
  {
    *(a1 + 48) = *(a2 + 3);
  }

  *(a1 + 64) = *(a2 + 64);
  return a1;
}

uint64_t *assignWithCopy for BorderedButtonMenuStyleBody(uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Environment<Bool>.Content(*a2, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of Environment<Bool>.Content(v6, v7);
  v8 = a2[2];
  v9 = *(a2 + 24);
  outlined copy of Environment<Bool>.Content(v8, v9);
  v10 = a1[2];
  v11 = *(a1 + 24);
  a1[2] = v8;
  *(a1 + 24) = v9;
  outlined consume of Environment<Bool>.Content(v10, v11);
  v12 = a2[4];
  if (a1[4])
  {
    if (v12)
    {
      v13 = a2[5];
      a1[4] = v12;
      a1[5] = v13;

      goto LABEL_8;
    }
  }

  else if (v12)
  {
    v14 = a2[5];
    a1[4] = v12;
    a1[5] = v14;

    goto LABEL_8;
  }

  *(a1 + 2) = *(a2 + 2);
LABEL_8:
  v15 = a2[6];
  if (!a1[6])
  {
    if (v15)
    {
      v17 = a2[7];
      a1[6] = v15;
      a1[7] = v17;

      goto LABEL_15;
    }

LABEL_14:
    *(a1 + 3) = *(a2 + 3);
    goto LABEL_15;
  }

  if (!v15)
  {

    goto LABEL_14;
  }

  v16 = a2[7];
  a1[6] = v15;
  a1[7] = v16;

LABEL_15:
  *(a1 + 64) = *(a2 + 64);
  return a1;
}

uint64_t *assignWithTake for BorderedButtonMenuStyleBody(uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of Environment<Bool>.Content(v6, v7);
  v8 = *(a2 + 24);
  v9 = a1[2];
  v10 = *(a1 + 24);
  a1[2] = a2[2];
  *(a1 + 24) = v8;
  outlined consume of Environment<Bool>.Content(v9, v10);
  v11 = a2[4];
  if (a1[4])
  {
    if (v11)
    {
      v12 = a2[5];
      a1[4] = v11;
      a1[5] = v12;

      goto LABEL_8;
    }
  }

  else if (v11)
  {
    v13 = a2[5];
    a1[4] = v11;
    a1[5] = v13;
    goto LABEL_8;
  }

  *(a1 + 2) = *(a2 + 2);
LABEL_8:
  v14 = a2[6];
  if (!a1[6])
  {
    if (v14)
    {
      v16 = a2[7];
      a1[6] = v14;
      a1[7] = v16;
      goto LABEL_15;
    }

LABEL_14:
    *(a1 + 3) = *(a2 + 3);
    goto LABEL_15;
  }

  if (!v14)
  {

    goto LABEL_14;
  }

  v15 = a2[7];
  a1[6] = v14;
  a1[7] = v15;

LABEL_15:
  *(a1 + 64) = *(a2 + 64);
  return a1;
}

uint64_t getEnumTagSinglePayload for BorderedButtonMenuStyleBody(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 65))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
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

uint64_t storeEnumTagSinglePayload for BorderedButtonMenuStyleBody(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<UIKitMenuButton<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, UIKitButtonStyleModifier<BorderedButtonStyle_Phone>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<UIKitMenuButton<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, UIKitButtonStyleModifier<BorderedButtonStyle_Phone>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<UIKitMenuButton<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, UIKitButtonStyleModifier<BorderedButtonStyle_Phone>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<UIKitMenuButton<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, UIKitButtonStyleModifier<BorderedButtonStyle_Phone>>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<UIKitMenuButton<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, UIKitButtonStyleModifier<BorderedButtonStyle_Phone>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<UIKitMenuButton<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, UIKitButtonStyleModifier<BorderedButtonStyle_Phone>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<UIKitMenuButton<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, UIKitButtonStyleModifier<BorderedButtonStyle_Phone>>)
  {
    type metadata accessor for UIKitMenuButton<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>();
    type metadata accessor for UIKitButtonStyleModifier<BorderedButtonStyle_Phone>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<UIKitMenuButton<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>, UIKitButtonStyleModifier<BorderedButtonStyle_Phone>>);
    }
  }
}

void type metadata accessor for UIKitMenuButton<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>()
{
  if (!lazy cache variable for type metadata for UIKitMenuButton<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>)
  {
    v0 = type metadata accessor for UIKitMenuButton();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for UIKitMenuButton<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>);
    }
  }
}

void type metadata accessor for UIKitButtonStyleModifier<BorderedButtonStyle_Phone>()
{
  if (!lazy cache variable for type metadata for UIKitButtonStyleModifier<BorderedButtonStyle_Phone>)
  {
    lazy protocol witness table accessor for type BorderedButtonStyle_Phone and conformance BorderedButtonStyle_Phone();
    v0 = type metadata accessor for UIKitButtonStyleModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for UIKitButtonStyleModifier<BorderedButtonStyle_Phone>);
    }
  }
}

uint64_t AttributedTextFormatting.Transferable.init(text:in:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = a2[1];
  type metadata accessor for (AttributedString, EnvironmentValues)(0, &lazy cache variable for type metadata for (AttributedString, EnvironmentValues), MEMORY[0x1E6968848]);
  v8 = (a3 + *(v7 + 48));
  v9 = type metadata accessor for AttributedString();
  (*(*(v9 - 8) + 32))(a3, a1, v9);
  *v8 = v5;
  v8[1] = v6;
  type metadata accessor for AttributedTextFormatting.Transferable.Storage(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t static AttributedTextFormatting.Transferable.transferRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  type metadata accessor for (DataRepresentation<AttributedTextFormatting.Transferable>, DataRepresentation<AttributedTextFormatting.Transferable>)();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UTType();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DataRepresentation<AttributedTextFormatting.Transferable>();
  v25 = v8;
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v23 - v13;
  static UTType.rtfd.getter();
  v15 = type metadata accessor for AttributedTextFormatting.Transferable(0);
  v16 = lazy protocol witness table accessor for type AttributedTextFormatting.Transferable and conformance AttributedTextFormatting.Transferable(&lazy protocol witness table cache variable for type AttributedTextFormatting.Transferable and conformance AttributedTextFormatting.Transferable, type metadata accessor for AttributedTextFormatting.Transferable);
  v24 = v14;
  MEMORY[0x18D000CA0](v7, &async function pointer to closure #1 in static AttributedTextFormatting.Transferable.transferRepresentation.getter, 0, &async function pointer to closure #2 in static AttributedTextFormatting.Transferable.transferRepresentation.getter, 0, v15, v16);
  static UTType.rtf.getter();
  MEMORY[0x18D000CA0](v7, &async function pointer to closure #3 in static AttributedTextFormatting.Transferable.transferRepresentation.getter, 0, &async function pointer to closure #4 in static AttributedTextFormatting.Transferable.transferRepresentation.getter, 0, v15, v16);
  v17 = *(v2 + 48);
  v18 = *(v9 + 16);
  v19 = v14;
  v20 = v25;
  v18(v4, v19, v25);
  v18(&v4[v17], v11, v20);
  TupleTransferRepresentation.init(_:)();
  v21 = *(v9 + 8);
  v21(v11, v20);
  return (v21)(v24, v20);
}

void type metadata accessor for (DataRepresentation<AttributedTextFormatting.Transferable>, DataRepresentation<AttributedTextFormatting.Transferable>)()
{
  if (!lazy cache variable for type metadata for (DataRepresentation<AttributedTextFormatting.Transferable>, DataRepresentation<AttributedTextFormatting.Transferable>))
  {
    type metadata accessor for DataRepresentation<AttributedTextFormatting.Transferable>();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (DataRepresentation<AttributedTextFormatting.Transferable>, DataRepresentation<AttributedTextFormatting.Transferable>));
    }
  }
}

void type metadata accessor for DataRepresentation<AttributedTextFormatting.Transferable>()
{
  if (!lazy cache variable for type metadata for DataRepresentation<AttributedTextFormatting.Transferable>)
  {
    type metadata accessor for AttributedTextFormatting.Transferable(255);
    lazy protocol witness table accessor for type AttributedTextFormatting.Transferable and conformance AttributedTextFormatting.Transferable(&lazy protocol witness table cache variable for type AttributedTextFormatting.Transferable and conformance AttributedTextFormatting.Transferable, type metadata accessor for AttributedTextFormatting.Transferable);
    v0 = type metadata accessor for DataRepresentation();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for DataRepresentation<AttributedTextFormatting.Transferable>);
    }
  }
}

uint64_t closure #1 in static AttributedTextFormatting.Transferable.transferRepresentation.getter()
{
  v1 = AttributedTextFormatting.Transferable.dataRepresentation(for:)(*MEMORY[0x1E69DB698]);
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t AttributedTextFormatting.Transferable.dataRepresentation(for:)(void *a1)
{
  v3 = v1;
  v42 = a1;
  v49[13] = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for AttributedString();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v38 - v9;
  v11 = type metadata accessor for AttributedTextFormatting.Transferable.Storage(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of AttributedTextFormatting.Transferable.Storage(v3, v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = *v13;
  }

  else
  {
    type metadata accessor for (AttributedString, EnvironmentValues)(0, &lazy cache variable for type metadata for (AttributedString, EnvironmentValues), MEMORY[0x1E6968848]);
    v16 = (v13 + *(v15 + 48));
    v18 = *v16;
    v17 = v16[1];
    (*(v5 + 32))(v10, v13, v4);
    AttributedString.init(stringLiteral:)();
    v49[2] = v18;
    v49[3] = v17;
    v39 = v18;
    v40 = v17;
    EnvironmentValues.attributeScopeContext.getter();
    v41 = v2;
    v43 = v46;
    v38 = v47;
    v44 = v47;
    v45 = v48;
    AttributeScopeContext.scope.getter();
    v19 = v10;

    v49[0] = v18;
    v49[1] = v17;
    v14 = static AttributeScope.storage(wrapping:in:)(v7, v49);
    v21 = v20;
    v22 = *(v5 + 8);
    v22(v7, v4);
    ObjectType = swift_getObjectType();
    (*(v5 + 16))(v7, v19, v4);
    (*(v21 + 24))(v7, ObjectType, v21);

    v22(v19, v4);
  }

  v24 = v14;
  v25 = [v24 length];
  type metadata accessor for _ContiguousArrayStorage<(NSAttributedStringDocumentReadingOptionKey, Any)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(NSAttributedStringDocumentAttributeKey, Any)>, &lazy cache variable for type metadata for (NSAttributedStringDocumentAttributeKey, Any), type metadata accessor for NSAttributedStringDocumentAttributeKey);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18CD63400;
  v27 = *MEMORY[0x1E69DB628];
  *(inited + 32) = *MEMORY[0x1E69DB628];
  type metadata accessor for NSAttributedStringDocumentType(0);
  *(inited + 64) = v28;
  v29 = v42;
  *(inited + 40) = v42;
  v30 = v27;
  v31 = v29;
  v32 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo38NSAttributedStringDocumentAttributeKeya_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of (NSAttributedStringDocumentAttributeKey, Any)(inited + 32, &lazy cache variable for type metadata for (NSAttributedStringDocumentAttributeKey, Any), type metadata accessor for NSAttributedStringDocumentAttributeKey);
  type metadata accessor for NSAttributedStringDocumentAttributeKey(0);
  lazy protocol witness table accessor for type AttributedTextFormatting.Transferable and conformance AttributedTextFormatting.Transferable(&lazy protocol witness table cache variable for type NSAttributedStringDocumentAttributeKey and conformance NSAttributedStringDocumentAttributeKey, type metadata accessor for NSAttributedStringDocumentAttributeKey);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v46 = 0;
  v34 = [v24 dataFromRange:0 documentAttributes:v25 error:{isa, &v46}];

  v35 = v46;
  if (v34)
  {
    v32 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v36 = v35;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v32;
}

uint64_t closure #2 in static AttributedTextFormatting.Transferable.transferRepresentation.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[12] = a2;
  v3[13] = a3;
  v3[11] = a1;
  return MEMORY[0x1EEE6DFA0](closure #2 in static AttributedTextFormatting.Transferable.transferRepresentation.getter, 0, 0);
}

uint64_t closure #2 in static AttributedTextFormatting.Transferable.transferRepresentation.getter()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = *MEMORY[0x1E69DB698];
  type metadata accessor for _ContiguousArrayStorage<(NSAttributedStringDocumentReadingOptionKey, Any)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(NSAttributedStringDocumentReadingOptionKey, Any)>, &lazy cache variable for type metadata for (NSAttributedStringDocumentReadingOptionKey, Any), type metadata accessor for NSAttributedStringDocumentReadingOptionKey);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18CD63400;
  v5 = *MEMORY[0x1E69DB630];
  *(inited + 32) = *MEMORY[0x1E69DB630];
  type metadata accessor for NSAttributedStringDocumentType(0);
  *(inited + 64) = v6;
  *(inited + 40) = v3;
  v7 = v5;
  v8 = v3;
  v9 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo42NSAttributedStringDocumentReadingOptionKeya_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of (NSAttributedStringDocumentAttributeKey, Any)(inited + 32, &lazy cache variable for type metadata for (NSAttributedStringDocumentReadingOptionKey, Any), type metadata accessor for NSAttributedStringDocumentReadingOptionKey);
  v10 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  outlined copy of Data._Representation(v1, v2);
  v11 = specialized @nonobjc NSAttributedString.init(data:options:documentAttributes:)(v1, v2, v9, 0);
  v12 = v0[11];
  outlined consume of Data._Representation(v0[12], v0[13]);
  *v12 = v11;
  type metadata accessor for AttributedTextFormatting.Transferable.Storage(0);
  swift_storeEnumTagMultiPayload();
  v13 = v0[1];

  return v13();
}

uint64_t closure #3 in static AttributedTextFormatting.Transferable.transferRepresentation.getter()
{
  v1 = AttributedTextFormatting.Transferable.dataRepresentation(for:)(*MEMORY[0x1E69DB6A0]);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t closure #4 in static AttributedTextFormatting.Transferable.transferRepresentation.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[12] = a2;
  v3[13] = a3;
  v3[11] = a1;
  return MEMORY[0x1EEE6DFA0](closure #4 in static AttributedTextFormatting.Transferable.transferRepresentation.getter, 0, 0);
}

uint64_t closure #4 in static AttributedTextFormatting.Transferable.transferRepresentation.getter()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = *MEMORY[0x1E69DB6A0];
  type metadata accessor for _ContiguousArrayStorage<(NSAttributedStringDocumentReadingOptionKey, Any)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(NSAttributedStringDocumentReadingOptionKey, Any)>, &lazy cache variable for type metadata for (NSAttributedStringDocumentReadingOptionKey, Any), type metadata accessor for NSAttributedStringDocumentReadingOptionKey);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18CD63400;
  v5 = *MEMORY[0x1E69DB630];
  *(inited + 32) = *MEMORY[0x1E69DB630];
  type metadata accessor for NSAttributedStringDocumentType(0);
  *(inited + 64) = v6;
  *(inited + 40) = v3;
  v7 = v5;
  v8 = v3;
  v9 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo42NSAttributedStringDocumentReadingOptionKeya_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of (NSAttributedStringDocumentAttributeKey, Any)(inited + 32, &lazy cache variable for type metadata for (NSAttributedStringDocumentReadingOptionKey, Any), type metadata accessor for NSAttributedStringDocumentReadingOptionKey);
  v10 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  outlined copy of Data._Representation(v1, v2);
  v11 = specialized @nonobjc NSAttributedString.init(data:options:documentAttributes:)(v1, v2, v9, 0);
  v12 = v0[11];
  outlined consume of Data._Representation(v0[12], v0[13]);
  *v12 = v11;
  type metadata accessor for AttributedTextFormatting.Transferable.Storage(0);
  swift_storeEnumTagMultiPayload();
  v13 = v0[1];

  return v13();
}

void AttributedTextFormatting.Transferable.export(in:)(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v5 = type metadata accessor for AttributedString();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  *&v43 = &v37 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - v12;
  v14 = type metadata accessor for AttributedTextFormatting.Transferable.Storage(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *a1;
  v18 = a1[1];
  outlined init with copy of AttributedTextFormatting.Transferable.Storage(v2, v16);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = *v16;
    AttributedString.init(stringLiteral:)();
    *v46 = v17;
    *&v46[8] = v18;
    EnvironmentValues.attributeScopeContext.getter();
    *v51 = *v53;
    v43 = *&v53[8];
    *&v51[8] = *&v53[8];
    v52 = v54;
    AttributeScopeContext.scope.getter();

    *v44 = v17;
    *&v44[8] = v18;
    v20 = static AttributeScope.storage(wrapping:in:)(v8, v44);
    v22 = v21;
    (*(v6 + 8))(v8, v5);
    ObjectType = swift_getObjectType();
    [v20 appendAttributedString_];
    (*(v22 + 16))(ObjectType, v22);
  }

  else
  {
    v42 = a2;
    type metadata accessor for (AttributedString, EnvironmentValues)(0, &lazy cache variable for type metadata for (AttributedString, EnvironmentValues), MEMORY[0x1E6968848]);
    v25 = (v16 + *(v24 + 48));
    v27 = *v25;
    v26 = v25[1];
    v28 = v18;
    v41 = *(v6 + 32);
    v40 = v6 + 32;
    v41(v13, v16, v5);
    v39 = v27;
    v49 = v27;
    v50 = v26;
    v29 = v26;
    EnvironmentValues.attributeScopeContext.getter();
    *v51 = *v53;
    v37 = *&v53[8];
    *&v51[8] = *&v53[8];
    v52 = v54;
    v30 = AttributeScopeContext.scope.getter();

    *&v48 = v17;
    *(&v48 + 1) = v28;
    EnvironmentValues.attributeScopeContext.getter();
    *v44 = *v46;
    v37 = *&v46[8];
    *&v44[8] = *&v46[8];
    v45 = v47;
    v31 = AttributeScopeContext.scope.getter();

    v38 = v5;
    if (v30 == v31)
    {
      (*(v6 + 16))(v43, v13, v5);
    }

    else
    {
      *v46 = v17;
      *&v46[8] = v28;
      EnvironmentValues.attributeScopeContext.getter();
      *v51 = *v53;
      v37 = *&v53[8];
      *&v51[8] = *&v53[8];
      v52 = v54;
      AttributeScopeContext.scope.getter();

      (*(v6 + 16))(v8, v13, v5);
      lazy protocol witness table accessor for type AttributedTextFormatting.Transferable and conformance AttributedTextFormatting.Transferable(&lazy protocol witness table cache variable for type AttributedString and conformance AttributedString, MEMORY[0x1E6968848]);
      AttributedString.init<A, B>(_:including:)();
    }

    v32 = v6;
    *v46 = v39;
    *&v46[8] = v29;
    EnvironmentValues.attributeScopeContext.getter();
    *v44 = *v53;
    v49 = v17;
    v50 = v28;
    EnvironmentValues.attributeScopeContext.getter();
    v48 = *v51;
    v33 = static AttributedTextFormatting.Constraints.== infix(_:_:)();

    v34 = v42;
    if (v33)
    {
      v35 = v38;
      (*(v6 + 8))(v13, v38);

      v36 = v43;
    }

    else
    {
      *v51 = v17;
      *&v51[8] = v28;
      EnvironmentValues.attributeScopeContext.getter();
      *v46 = *v53;
      v36 = v43;
      AttributedTextFormatting.Constraints.constrain(_:)();

      v35 = v38;
      (*(v32 + 8))(v13, v38);
    }

    v41(v34, v36, v35);
  }
}

uint64_t AttributedString.init(transferable:in:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, char *a3@<X8>)
{
  v4 = a2[1];
  v6[0] = *a2;
  v6[1] = v4;
  AttributedTextFormatting.Transferable.export(in:)(v6, a3);
  outlined destroy of AttributedTextFormatting.Transferable(a1, type metadata accessor for AttributedTextFormatting.Transferable);
}

char *initializeBufferWithCopyOfBuffer for AttributedTextFormatting.Transferable(char *a1, char **a2)
{
  v4 = *(*(type metadata accessor for AttributedTextFormatting.Transferable.Storage(0) - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v7 = *a2;
    *a1 = *a2;
    a1 = &v7[(v4 + 16) & ~v4];
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v5 = *a2;
      *a1 = *a2;
      v6 = v5;
    }

    else
    {
      v8 = type metadata accessor for AttributedString();
      (*(*(v8 - 8) + 16))(a1, a2, v8);
      type metadata accessor for (AttributedString, EnvironmentValues)(0, &lazy cache variable for type metadata for (AttributedString, EnvironmentValues), MEMORY[0x1E6968848]);
      v10 = *(v9 + 48);
      v11 = &a1[v10];
      v12 = (a2 + v10);
      v13 = v12[1];
      *v11 = *v12;
      *(v11 + 1) = v13;
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

void destroy for AttributedTextFormatting.Transferable(void **a1)
{
  type metadata accessor for AttributedTextFormatting.Transferable.Storage(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = *a1;
  }

  else
  {
    v3 = type metadata accessor for AttributedString();
    (*(*(v3 - 8) + 8))(a1, v3);
    type metadata accessor for (AttributedString, EnvironmentValues)(0, &lazy cache variable for type metadata for (AttributedString, EnvironmentValues), MEMORY[0x1E6968848]);
  }
}

void **initializeWithCopy for AttributedTextFormatting.Transferable(void **a1, void **a2)
{
  type metadata accessor for AttributedTextFormatting.Transferable.Storage(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = *a2;
    *a1 = *a2;
    v5 = v4;
  }

  else
  {
    v6 = type metadata accessor for AttributedString();
    (*(*(v6 - 8) + 16))(a1, a2, v6);
    type metadata accessor for (AttributedString, EnvironmentValues)(0, &lazy cache variable for type metadata for (AttributedString, EnvironmentValues), MEMORY[0x1E6968848]);
    v8 = *(v7 + 48);
    v9 = (a1 + v8);
    v10 = (a2 + v8);
    v11 = v10[1];
    *v9 = *v10;
    v9[1] = v11;
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

void **assignWithCopy for AttributedTextFormatting.Transferable(void **a1, void **a2)
{
  if (a1 != a2)
  {
    outlined destroy of AttributedTextFormatting.Transferable(a1, type metadata accessor for AttributedTextFormatting.Transferable.Storage);
    type metadata accessor for AttributedTextFormatting.Transferable.Storage(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v4 = *a2;
      *a1 = *a2;
      v5 = v4;
    }

    else
    {
      v6 = type metadata accessor for AttributedString();
      (*(*(v6 - 8) + 16))(a1, a2, v6);
      type metadata accessor for (AttributedString, EnvironmentValues)(0, &lazy cache variable for type metadata for (AttributedString, EnvironmentValues), MEMORY[0x1E6968848]);
      v8 = *(v7 + 48);
      v9 = (a1 + v8);
      v10 = (a2 + v8);
      *v9 = *v10;
      v9[1] = v10[1];
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t outlined destroy of AttributedTextFormatting.Transferable(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

char *initializeWithTake for AttributedTextFormatting.Transferable(char *a1, char *a2)
{
  v4 = type metadata accessor for AttributedTextFormatting.Transferable.Storage(0);
  if (swift_getEnumCaseMultiPayload())
  {
    v5 = *(*(v4 - 8) + 64);

    return memcpy(a1, a2, v5);
  }

  else
  {
    v7 = type metadata accessor for AttributedString();
    (*(*(v7 - 8) + 32))(a1, a2, v7);
    type metadata accessor for (AttributedString, EnvironmentValues)(0, &lazy cache variable for type metadata for (AttributedString, EnvironmentValues), MEMORY[0x1E6968848]);
    *&a1[*(v8 + 48)] = *&a2[*(v8 + 48)];
    swift_storeEnumTagMultiPayload();
    return a1;
  }
}

char *assignWithTake for AttributedTextFormatting.Transferable(char *a1, char *a2)
{
  if (a1 == a2)
  {
    return a1;
  }

  outlined destroy of AttributedTextFormatting.Transferable(a1, type metadata accessor for AttributedTextFormatting.Transferable.Storage);
  v4 = type metadata accessor for AttributedTextFormatting.Transferable.Storage(0);
  if (!swift_getEnumCaseMultiPayload())
  {
    v7 = type metadata accessor for AttributedString();
    (*(*(v7 - 8) + 32))(a1, a2, v7);
    type metadata accessor for (AttributedString, EnvironmentValues)(0, &lazy cache variable for type metadata for (AttributedString, EnvironmentValues), MEMORY[0x1E6968848]);
    *&a1[*(v8 + 48)] = *&a2[*(v8 + 48)];
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v5 = *(*(v4 - 8) + 64);

  return memcpy(a1, a2, v5);
}

uint64_t type metadata completion function for AttributedTextFormatting.Transferable()
{
  result = type metadata accessor for AttributedTextFormatting.Transferable.Storage(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void type metadata accessor for TupleTransferRepresentation<AttributedTextFormatting.Transferable, (DataRepresentation<AttributedTextFormatting.Transferable>, DataRepresentation<AttributedTextFormatting.Transferable>)>()
{
  if (!lazy cache variable for type metadata for TupleTransferRepresentation<AttributedTextFormatting.Transferable, (DataRepresentation<AttributedTextFormatting.Transferable>, DataRepresentation<AttributedTextFormatting.Transferable>)>)
  {
    type metadata accessor for AttributedTextFormatting.Transferable(255);
    type metadata accessor for (DataRepresentation<AttributedTextFormatting.Transferable>, DataRepresentation<AttributedTextFormatting.Transferable>)();
    lazy protocol witness table accessor for type AttributedTextFormatting.Transferable and conformance AttributedTextFormatting.Transferable(&lazy protocol witness table cache variable for type AttributedTextFormatting.Transferable and conformance AttributedTextFormatting.Transferable, type metadata accessor for AttributedTextFormatting.Transferable);
    v0 = type metadata accessor for TupleTransferRepresentation();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TupleTransferRepresentation<AttributedTextFormatting.Transferable, (DataRepresentation<AttributedTextFormatting.Transferable>, DataRepresentation<AttributedTextFormatting.Transferable>)>);
    }
  }
}

char *initializeBufferWithCopyOfBuffer for AttributedTextFormatting.Transferable.Storage(char *a1, char **a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v8 = *a2;
    *a1 = *a2;
    a1 = &v8[(v5 + 16) & ~v5];
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v6 = *a2;
      *a1 = *a2;
      v7 = v6;
    }

    else
    {
      v9 = type metadata accessor for AttributedString();
      (*(*(v9 - 8) + 16))(a1, a2, v9);
      type metadata accessor for (AttributedString, EnvironmentValues)(0, &lazy cache variable for type metadata for (AttributedString, EnvironmentValues), MEMORY[0x1E6968848]);
      v11 = *(v10 + 48);
      v12 = &a1[v11];
      v13 = (a2 + v11);
      v14 = v13[1];
      *v12 = *v13;
      *(v12 + 1) = v14;
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

void destroy for AttributedTextFormatting.Transferable.Storage(void **a1)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = *a1;
  }

  else
  {
    v3 = type metadata accessor for AttributedString();
    (*(*(v3 - 8) + 8))(a1, v3);
    type metadata accessor for (AttributedString, EnvironmentValues)(0, &lazy cache variable for type metadata for (AttributedString, EnvironmentValues), MEMORY[0x1E6968848]);
  }
}

void **initializeWithCopy for AttributedTextFormatting.Transferable.Storage(void **a1, void **a2)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = *a2;
    *a1 = *a2;
    v5 = v4;
  }

  else
  {
    v6 = type metadata accessor for AttributedString();
    (*(*(v6 - 8) + 16))(a1, a2, v6);
    type metadata accessor for (AttributedString, EnvironmentValues)(0, &lazy cache variable for type metadata for (AttributedString, EnvironmentValues), MEMORY[0x1E6968848]);
    v8 = *(v7 + 48);
    v9 = (a1 + v8);
    v10 = (a2 + v8);
    v11 = v10[1];
    *v9 = *v10;
    v9[1] = v11;
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

void **assignWithCopy for AttributedTextFormatting.Transferable.Storage(void **a1, void **a2)
{
  if (a1 != a2)
  {
    outlined destroy of AttributedTextFormatting.Transferable(a1, type metadata accessor for AttributedTextFormatting.Transferable.Storage);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v4 = *a2;
      *a1 = *a2;
      v5 = v4;
    }

    else
    {
      v6 = type metadata accessor for AttributedString();
      (*(*(v6 - 8) + 16))(a1, a2, v6);
      type metadata accessor for (AttributedString, EnvironmentValues)(0, &lazy cache variable for type metadata for (AttributedString, EnvironmentValues), MEMORY[0x1E6968848]);
      v8 = *(v7 + 48);
      v9 = (a1 + v8);
      v10 = (a2 + v8);
      *v9 = *v10;
      v9[1] = v10[1];
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

char *initializeWithTake for AttributedTextFormatting.Transferable.Storage(char *a1, char *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload())
  {
    v6 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v6);
  }

  else
  {
    v8 = type metadata accessor for AttributedString();
    (*(*(v8 - 8) + 32))(a1, a2, v8);
    type metadata accessor for (AttributedString, EnvironmentValues)(0, &lazy cache variable for type metadata for (AttributedString, EnvironmentValues), MEMORY[0x1E6968848]);
    *&a1[*(v9 + 48)] = *&a2[*(v9 + 48)];
    swift_storeEnumTagMultiPayload();
    return a1;
  }
}

char *assignWithTake for AttributedTextFormatting.Transferable.Storage(char *a1, char *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  outlined destroy of AttributedTextFormatting.Transferable(a1, type metadata accessor for AttributedTextFormatting.Transferable.Storage);
  if (!swift_getEnumCaseMultiPayload())
  {
    v8 = type metadata accessor for AttributedString();
    (*(*(v8 - 8) + 32))(a1, a2, v8);
    type metadata accessor for (AttributedString, EnvironmentValues)(0, &lazy cache variable for type metadata for (AttributedString, EnvironmentValues), MEMORY[0x1E6968848]);
    *&a1[*(v9 + 48)] = *&a2[*(v9 + 48)];
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v6 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v6);
}

uint64_t type metadata completion function for AttributedTextFormatting.Transferable.Storage()
{
  result = type metadata accessor for AttributedString();
  if (v1 <= 0x3F)
  {
    swift_getTupleTypeLayout2();
    v2[4] = v2;
    v2[5] = MEMORY[0x1E69E5CE0] + 64;
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

uint64_t outlined init with copy of AttributedTextFormatting.Transferable.Storage(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttributedTextFormatting.Transferable.Storage(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of (NSAttributedStringDocumentAttributeKey, Any)(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  type metadata accessor for (AttributedString, EnvironmentValues)(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

id specialized @nonobjc NSAttributedString.init(data:options:documentAttributes:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v13[1] = *MEMORY[0x1E69E9840];
  isa = Data._bridgeToObjectiveC()().super.isa;
  type metadata accessor for NSAttributedStringDocumentReadingOptionKey(0);
  lazy protocol witness table accessor for type AttributedTextFormatting.Transferable and conformance AttributedTextFormatting.Transferable(&lazy protocol witness table cache variable for type NSAttributedStringDocumentReadingOptionKey and conformance NSAttributedStringDocumentReadingOptionKey, type metadata accessor for NSAttributedStringDocumentReadingOptionKey);
  v8 = Dictionary._bridgeToObjectiveC()().super.isa;

  v13[0] = 0;
  v9 = [v5 initWithData:isa options:v8 documentAttributes:a4 error:v13];

  if (v9)
  {
    v10 = v13[0];
  }

  else
  {
    v11 = v13[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v9;
}

void type metadata accessor for _ContiguousArrayStorage<(NSAttributedStringDocumentReadingOptionKey, Any)>(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for (AttributedString, EnvironmentValues)(255, a3, a4);
    v5 = type metadata accessor for _ContiguousArrayStorage();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void *UIKitEventBindingBridge.eventSources.getter()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = v1;
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v5 = v3[2];
    v4 = v3[3];
    if (v5 >= v4 >> 1)
    {
      v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v5 + 1, 1, v3);
    }

    v6 = lazy protocol witness table accessor for type UIKitHoverGestureRecognizer and conformance UIKitHoverGestureRecognizer(&lazy protocol witness table cache variable for type UIKitGestureRecognizer and conformance UIKitGestureRecognizer, type metadata accessor for UIKitGestureRecognizer);
    v3[2] = v5 + 1;
    v7 = &v3[2 * v5];
    v7[4] = v2;
    v7[5] = v6;
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  v8 = *(v0 + 40);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3[2] + 1, 1, v3);
  }

  v10 = v3[2];
  v9 = v3[3];
  if (v10 >= v9 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v3);
  }

  v11 = lazy protocol witness table accessor for type UIKitHoverGestureRecognizer and conformance UIKitHoverGestureRecognizer(&lazy protocol witness table cache variable for type UIKitHoverGestureRecognizer and conformance UIKitHoverGestureRecognizer, type metadata accessor for UIKitHoverGestureRecognizer);
  v3[2] = v10 + 1;
  v12 = &v3[2 * v10];
  v12[4] = v8;
  v12[5] = v11;
  return v3;
}

uint64_t UIKitEventBindingBridge.source(for:)(_BYTE *a1)
{
  if (!*a1)
  {
    v2 = *(v1 + 32);
    if (!v2)
    {
      return v2;
    }

    v3 = &lazy protocol witness table cache variable for type UIKitGestureRecognizer and conformance UIKitGestureRecognizer;
    v4 = type metadata accessor for UIKitGestureRecognizer;
LABEL_6:
    lazy protocol witness table accessor for type UIKitHoverGestureRecognizer and conformance UIKitHoverGestureRecognizer(v3, v4);
    v5 = v2;
    return v2;
  }

  if (*a1 == 1)
  {
    v2 = *(v1 + 40);
    v3 = &lazy protocol witness table cache variable for type UIKitHoverGestureRecognizer and conformance UIKitHoverGestureRecognizer;
    v4 = type metadata accessor for UIKitHoverGestureRecognizer;
    goto LABEL_6;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void UIKitEventBindingBridge.__ivar_destroyer()
{
  v1 = *(v0 + 48);
}

uint64_t lazy protocol witness table accessor for type UIKitHoverGestureRecognizer and conformance UIKitHoverGestureRecognizer(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t FetchController.refreshResults()()
{
  v1 = *v0;
  v2 = MEMORY[0x1E69E7D40];
  v3 = *MEMORY[0x1E69E7D40];
  v4 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x60);
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - v7;
  v9 = type metadata accessor for Binding();
  v10 = type metadata accessor for Optional();
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v17 - v12;
  (*(v14 + 16))(&v17 - v12, &v0[*((v3 & v1) + 0x88)], v11);
  v15 = *(v9 - 8);
  result = (*(v15 + 48))(v13, 1, v9);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*&v0[*((*v2 & *v0) + 0x68)])(v0);
    (*(*(v4 - 8) + 56))(v8, 0, 1, v4);
    specialized Binding.wrappedValue.setter();
    (*(v6 + 8))(v8, v5);
    return (*(v15 + 8))(v13, v9);
  }

  return result;
}

void FetchController.controllerDidChangeContent(_:)()
{
  v1 = *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x80));
  if (v1)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSObject);
    v2 = v1;
    v3 = static NSObject.== infix(_:_:)();

    if (v3)
    {

      FetchController.refreshResults()();
    }
  }
}

void @objc FetchController.controllerDidChangeContent(_:)(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  FetchController.controllerDidChangeContent(_:)();
}

uint64_t @objc FetchController.__ivar_destroyer(char *a1)
{
  v2 = MEMORY[0x1E69E7D40];

  v3 = *((*v2 & *a1) + 0x88);
  type metadata accessor for Optional();
  type metadata accessor for Binding();
  v4 = type metadata accessor for Optional();
  v5 = *(*(v4 - 8) + 8);

  return v5(&a1[v3], v4);
}

uint64_t partial apply for closure #1 in FetchController.update(in:)()
{
  result = FetchController.fetchIfNeeded()();
  if (result)
  {
    return FetchController.refreshResults()();
  }

  return result;
}

Swift::Int _sSh2eeoiySbShyxG_ABtFZ7SwiftUI8UniqueIDV_Tt1g5(Swift::Int result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + 8 * (v10 | (v4 << 6)));
    Hasher.init(_seed:)();
    MEMORY[0x18D00F6F0](v13);
    result = Hasher._finalize()();
    v14 = -1 << *(a2 + 32);
    v15 = result & ~v14;
    if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      return 0;
    }

    v16 = ~v14;
    while (*(*(a2 + 48) + 8 * v15) != v13)
    {
      v15 = (v15 + 1) & v16;
      if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        return 0;
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

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSh2eeoiySbShyxG_ABtFZ7SwiftUI16ToolbarPlacementV4RoleO_Tt1g5(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v18 = result;
  if (!v7)
  {
    goto LABEL_8;
  }

  do
  {
    v10 = __clz(__rbit64(v7));
    v19 = (v7 - 1) & v7;
LABEL_13:
    outlined init with copy of ToolbarPlacement.Role(*(result + 48) + 40 * (v10 | (v3 << 6)), v31);
    v29[0] = v31[0];
    v29[1] = v31[1];
    v30 = v32;
    Hasher.init(_seed:)();
    ToolbarPlacement.Role.hash(into:)();
    v13 = Hasher._finalize()();
    v14 = -1 << *(a2 + 32);
    v15 = v13 & ~v14;
    if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
LABEL_46:
      outlined destroy of ToolbarPlacement.Role(v29);
      return 0;
    }

    v16 = ~v14;
    while (1)
    {
      outlined init with copy of ToolbarPlacement.Role(*(a2 + 48) + 40 * v15, v28);
      outlined init with copy of ToolbarPlacement.Role(v28, v23);
      outlined init with copy of ToolbarPlacement.Role(v29, &v25);
      if (v24 <= 2)
      {
        switch(v24)
        {
          case 0:
            outlined destroy of ToolbarPlacement.Role(v28);
            if (!*(&v26 + 1))
            {
              goto LABEL_43;
            }

            goto LABEL_38;
          case 1:
            outlined destroy of ToolbarPlacement.Role(v28);
            if (*(&v26 + 1) == 1)
            {
              goto LABEL_43;
            }

            goto LABEL_38;
          case 2:
            outlined destroy of ToolbarPlacement.Role(v28);
            if (*(&v26 + 1) == 2)
            {
              goto LABEL_43;
            }

            goto LABEL_38;
        }
      }

      else
      {
        if (v24 <= 4)
        {
          if (v24 == 3)
          {
            outlined destroy of ToolbarPlacement.Role(v28);
            if (*(&v26 + 1) == 3)
            {
              goto LABEL_43;
            }
          }

          else
          {
            outlined destroy of ToolbarPlacement.Role(v28);
            if (*(&v26 + 1) == 4)
            {
              goto LABEL_43;
            }
          }

          goto LABEL_38;
        }

        if (v24 == 5)
        {
          outlined destroy of ToolbarPlacement.Role(v28);
          if (*(&v26 + 1) == 5)
          {
            goto LABEL_43;
          }

          goto LABEL_38;
        }

        if (v24 == 6)
        {
          outlined destroy of ToolbarPlacement.Role(v28);
          if (*(&v26 + 1) == 6)
          {
            goto LABEL_43;
          }

          goto LABEL_38;
        }
      }

      outlined init with copy of ToolbarPlacement.Role(v23, v22);
      if (*(&v26 + 1) >= 7uLL)
      {
        break;
      }

      outlined destroy of ToolbarPlacement.Role(v28);
      outlined destroy of AnyHashable(v22);
LABEL_38:
      outlined destroy of (ToolbarPlacement.Role, ToolbarPlacement.Role)(v23, type metadata accessor for (ToolbarPlacement.Role, ToolbarPlacement.Role));
LABEL_39:
      v15 = (v15 + 1) & v16;
      if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        goto LABEL_46;
      }
    }

    v20[0] = v25;
    v20[1] = v26;
    v21 = v27;
    v17 = MEMORY[0x18D00E7E0](v22, v20);
    outlined destroy of AnyHashable(v20);
    outlined destroy of ToolbarPlacement.Role(v28);
    outlined destroy of AnyHashable(v22);
    if ((v17 & 1) == 0)
    {
      outlined destroy of ToolbarPlacement.Role(v23);
      goto LABEL_39;
    }

LABEL_43:
    outlined destroy of ToolbarPlacement.Role(v23);
    outlined destroy of ToolbarPlacement.Role(v29);
    result = v18;
    v7 = v19;
  }

  while (v19);
LABEL_8:
  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v19 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSh2eeoiySbShyxG_ABtFZSo21NSAttributedStringKeya_Tt1g5(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v24 = v8;
  v25 = result;
  if (v7)
  {
    while (1)
    {
      v10 = __clz(__rbit64(v7));
      v26 = (v7 - 1) & v7;
LABEL_13:
      v13 = *(*(result + 48) + 8 * (v10 | (v3 << 6)));
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v27 = v13;
      String.hash(into:)();
      v14 = Hasher._finalize()();

      v15 = -1 << *(a2 + 32);
      v16 = v14 & ~v15;
      if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        break;
      }

      v17 = ~v15;
      while (1)
      {
        v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = v19;
        if (v18 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v20 == v21)
        {

          goto LABEL_24;
        }

        v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v23)
        {
          break;
        }

        v16 = (v16 + 1) & v17;
        if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
        {
          goto LABEL_27;
        }
      }

LABEL_24:
      v8 = v24;
      result = v25;
      v7 = v26;
      if (!v26)
      {
        goto LABEL_8;
      }
    }

LABEL_27:

    return 0;
  }

LABEL_8:
  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v26 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

Swift::Int _sSh2eeoiySbShyxG_ABtFZ7SwiftUI7EventIDV_Tt1g5(Swift::Int result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = (*(v3 + 48) + 16 * (v10 | (v4 << 6)));
    v14 = *v13;
    v15 = v13[1];
    Hasher.init(_seed:)();
    MEMORY[0x18D00F6F0](v14);
    MEMORY[0x18D00F6F0](v15);
    result = Hasher._finalize()();
    v16 = -1 << *(a2 + 32);
    v17 = result & ~v16;
    if (((*(v9 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
    {
      return 0;
    }

    v18 = ~v16;
    while (1)
    {
      v19 = (*(a2 + 48) + 16 * v17);
      if (v19[1] == v15 && *v19 == v14)
      {
        break;
      }

      v17 = (v17 + 1) & v18;
      if (((*(v9 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        return 0;
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

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSh2eeoiySbShyxG_ABtFZ7SwiftUI18PresentationDetentV_Tt1g5(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) == *(a2 + 16))
  {
    v4 = 0;
    v5 = 1 << *(result + 32);
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    else
    {
      v6 = -1;
    }

    v7 = v6 & *(result + 56);
    v8 = (v5 + 63) >> 6;
    v9 = a2 + 56;
LABEL_7:
    if (v7)
    {
      v10 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      goto LABEL_14;
    }

    v11 = v4;
    do
    {
      v4 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
        return result;
      }

      if (v4 >= v8)
      {
        return 1;
      }

      v12 = *(v3 + 56 + 8 * v4);
      ++v11;
    }

    while (!v12);
    v10 = __clz(__rbit64(v12));
    v7 = (v12 - 1) & v12;
LABEL_14:
    v13 = *(v3 + 48) + 16 * (v10 | (v4 << 6));
    v14 = *v13;
    v15 = *(v13 + 8);
    Hasher.init(_seed:)();
    PresentationDetent.Identifier.hash(into:)(v31, v14, v15);
    v16 = Hasher._finalize()();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if ((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
    {
      v19 = ~v17;
      v20 = v15 != 0xC000000000000000 || v14 != 2;
      v21 = v15 != 0xC000000000000000 || v14 != 1;
      v22 = v15 != 0xC000000000000000 || v14 != 0;
      v23 = v15 & 0xC000000000000000;
      v24 = v15 >> 62 != 3 || v20;
      v25 = v15 >> 62 != 3 || v21;
      v26 = v15 >> 62 != 3 || v22;
      do
      {
        v27 = *(a2 + 48) + 16 * v18;
        v28 = *v27;
        v29 = *(v27 + 8);
        result = v29 >> 62;
        if ((v29 >> 62) > 1)
        {
          if (result == 2)
          {
            if (v23 == 0x8000000000000000 && *&v28 == v14)
            {
              goto LABEL_7;
            }
          }

          else
          {
            result = *&v28 | v29 ^ 0xC000000000000000;
            if (result)
            {
              if (v29 == 0xC000000000000000 && *&v28 == 1)
              {
                if ((v25 & 1) == 0)
                {
                  goto LABEL_7;
                }
              }

              else if (!v24)
              {
                goto LABEL_7;
              }
            }

            else if ((v26 & 1) == 0)
            {
              goto LABEL_7;
            }
          }
        }

        else if (result)
        {
          if (v23 == 0x4000000000000000)
          {
LABEL_34:
            if (v28 == *&v14)
            {
              goto LABEL_7;
            }
          }
        }

        else if (!(v15 >> 62))
        {
          goto LABEL_34;
        }

        v18 = (v18 + 1) & v19;
      }

      while (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) != 0);
    }
  }

  return 0;
}

Swift::Int _sSh2eeoiySbShyxG_ABtFZ7SwiftUI22ToolbarDefaultItemKindV0G0O_Tt1g5(Swift::Int result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + (v10 | (v4 << 6)));
    Hasher.init(_seed:)();
    MEMORY[0x18D00F6F0](v13);
    result = Hasher._finalize()();
    v14 = -1 << *(a2 + 32);
    v15 = result & ~v14;
    if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      return 0;
    }

    v16 = ~v14;
    while (*(*(a2 + 48) + v15) != v13)
    {
      v15 = (v15 + 1) & v16;
      if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        return 0;
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

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

Swift::Int one-time initialization function for defaultValue()
{
  result = specialized static ViewGraphBridgeProperties.defaultRequestedBars.getter();
  static ViewGraphBridgeProperties.defaultValue = 0uLL;
  qword_1ED5A7320 = MEMORY[0x1E69E7CD0];
  unk_1ED5A7328 = result;
  return result;
}

{
  result = specialized static ViewGraphBridgeProperties.defaultRequestedBars.getter();
  static EnvironmentValues.BridgePropertiesEnvironmentKey.defaultValue = 0uLL;
  qword_1ED57B3E0 = MEMORY[0x1E69E7CD0];
  unk_1ED57B3E8 = result;
  return result;
}

uint64_t protocol witness for static UserDefaultKeyedFeature.cachedValue.setter in conformance ViewGraphBridgePropertiesAreInput(char a1)
{
  result = swift_beginAccess();
  static ViewGraphBridgePropertiesAreInput.cachedValue = a1;
  return result;
}

uint64_t protocol witness for static Feature.isEnabled.getter in conformance ViewGraphBridgePropertiesAreInput()
{
  lazy protocol witness table accessor for type ViewGraphBridgePropertiesAreInput and conformance ViewGraphBridgePropertiesAreInput();

  return static UserDefaultKeyedFeature.isEnabled.getter();
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(inputs:) in conformance ViewGraphBridgePropertiesAreInput()
{
  lazy protocol witness table accessor for type ViewGraphBridgePropertiesAreInput and conformance ViewGraphBridgePropertiesAreInput();
  PropertyList.subscript.getter();
  return v1;
}

uint64_t protocol witness for static PropertyKey.defaultValue.getter in conformance ViewGraphBridgePropertiesAreInput@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = lazy protocol witness table accessor for type ViewGraphBridgePropertiesAreInput and conformance ViewGraphBridgePropertiesAreInput();
  result = (*(v4 + 16))(a1, v4);
  *a2 = result & 1;
  return result;
}

uint64_t protocol witness for static EnvironmentKey.defaultValue.getter in conformance EnvironmentValues.BridgePropertiesEnvironmentKey@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = qword_1ED57B3E0;
  v2 = unk_1ED57B3E8;
  *a1 = static EnvironmentValues.BridgePropertiesEnvironmentKey.defaultValue;
  *(a1 + 16) = v1;
  *(a1 + 24) = v2;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ViewGraphBridgeProperties(void *a1, void *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  v3 = a2[3];
  v4 = a1[3];
  if ((_sSh2eeoiySbShyxG_ABtFZ7SwiftUI16ToolbarPlacementV4RoleO_Tt1g5(a1[2], a2[2]) & 1) == 0)
  {
    return 0;
  }

  return _sSh2eeoiySbShyxG_ABtFZ7SwiftUI16ToolbarPlacementV4RoleO_Tt1g5(v4, v3);
}

uint64_t specialized Set._Variant.insert(_:)(_OWORD *a1, uint64_t a2)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  AnyHashable.hash(into:)();
  v6 = *(a2 + 40);
  MEMORY[0x18D00F6F0](v6);
  v7 = Hasher._finalize()();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    do
    {
      outlined init with copy of AccessibilityRelationshipScope.Key(*(v5 + 48) + 48 * v9, v16);
      if (MEMORY[0x18D00E7E0](v16, a2))
      {
        v11 = v17;
        outlined destroy of AccessibilityRelationshipScope.Key(v16);
        if (v11 == v6)
        {
          outlined destroy of AccessibilityRelationshipScope.Key(a2);
          outlined init with copy of AccessibilityRelationshipScope.Key(*(v5 + 48) + 48 * v9, a1);
          return 0;
        }
      }

      else
      {
        outlined destroy of AccessibilityRelationshipScope.Key(v16);
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  outlined init with copy of AccessibilityRelationshipScope.Key(a2, v16);
  v15 = *v2;
  specialized _NativeSet.insertNew(_:at:isUnique:)(v16, v9, isUniquelyReferenced_nonNull_native);
  *v2 = v15;
  v14 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v14;
  a1[2] = *(a2 + 32);
  return 1;
}

uint64_t specialized Set._Variant.insert(_:)(uint64_t a1, Swift::Int a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  v8 = *v2;
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](v4);
  v25 = v5;
  if (v7 == 6)
  {
    v9 = v6;
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x18D00F6F0](v5);
    MEMORY[0x18D00F6F0](v7);
    v9 = v6;
    MEMORY[0x18D00F6F0](v6);
  }

  v10 = *(a2 + 32);
  Hasher._combine(_:)(v10 & 1);
  v11 = Hasher._finalize()();
  v12 = -1 << *(v8 + 32);
  v13 = v11 & ~v12;
  if (((*(v8 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_23:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v13, isUniquelyReferenced_nonNull_native);
    *v2 = v27;
    v22 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v22;
    *(a1 + 32) = *(a2 + 32);
    return 1;
  }

  v14 = ~v12;
  v15 = v25;
  while (1)
  {
    v16 = *(v8 + 48) + 48 * v13;
    if (*v16 != v4)
    {
      goto LABEL_6;
    }

    v17 = *(v16 + 16);
    v18 = *(v16 + 32);
    if (v17 == 6)
    {
      break;
    }

    if (v7 != 6)
    {
      v19 = *(v16 + 8) == v25 && (v17 ^ v7) == 0;
      v20 = v19 && *(v16 + 24) == v9;
      if (v20 && ((v18 ^ v10) & 1) == 0)
      {
        goto LABEL_25;
      }
    }

LABEL_6:
    v13 = (v13 + 1) & v14;
    if (((*(v8 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  if (v7 != 6 || ((v18 ^ v10) & 1) != 0)
  {
    goto LABEL_6;
  }

  v15 = *(v16 + 8);
  v9 = *(v16 + 24);
LABEL_25:
  result = 0;
  v24 = *(v16 + 40);
  *a1 = v4;
  *(a1 + 8) = v15;
  *(a1 + 16) = v17;
  *(a1 + 24) = v9;
  *(a1 + 32) = v18;
  *(a1 + 40) = v24;
  return result;
}

uint64_t specialized Set._Variant.insert(_:)(_BYTE *a1, Swift::Int a2)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](a2);
  v6 = Hasher._finalize()();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t specialized Set._Variant.insert(_:)(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for UTType();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  lazy protocol witness table accessor for type HashableCommandGroupPlacementWrapper and conformance HashableCommandGroupPlacementWrapper(&lazy protocol witness table cache variable for type UTType and conformance UTType, MEMORY[0x1E69E8450]);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      lazy protocol witness table accessor for type HashableCommandGroupPlacementWrapper and conformance HashableCommandGroupPlacementWrapper(&lazy protocol witness table cache variable for type UTType and conformance UTType, MEMORY[0x1E69E8450]);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

{
  v3 = v2;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  lazy protocol witness table accessor for type HashableCommandGroupPlacementWrapper and conformance HashableCommandGroupPlacementWrapper(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0]);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      lazy protocol witness table accessor for type HashableCommandGroupPlacementWrapper and conformance HashableCommandGroupPlacementWrapper(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0]);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

{
  v3 = v2;
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  lazy protocol witness table accessor for type HashableCommandGroupPlacementWrapper and conformance HashableCommandGroupPlacementWrapper(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x1E6969C28]);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      lazy protocol witness table accessor for type HashableCommandGroupPlacementWrapper and conformance HashableCommandGroupPlacementWrapper(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x1E6969C28]);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

{
  v3 = v2;
  v6 = type metadata accessor for DateComponents();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  lazy protocol witness table accessor for type HashableCommandGroupPlacementWrapper and conformance HashableCommandGroupPlacementWrapper(&lazy protocol witness table cache variable for type DateComponents and conformance DateComponents, MEMORY[0x1E6968278]);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      lazy protocol witness table accessor for type HashableCommandGroupPlacementWrapper and conformance HashableCommandGroupPlacementWrapper(&lazy protocol witness table cache variable for type DateComponents and conformance DateComponents, MEMORY[0x1E6968278]);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t specialized Set._Variant.insert(_:)(_DWORD *a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v9 = HIDWORD(a2);
  v10 = HIDWORD(a3);
  v11 = HIDWORD(a4);
  v12 = *v4;
  Hasher.init(_seed:)();
  Hasher.combine(bytes:)();
  Hasher._combine(_:)(v11);
  v13 = Hasher._finalize()();
  v14 = -1 << *(v12 + 32);
  v15 = v13 & ~v14;
  if ((*(v12 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v16 = ~v14;
    while (1)
    {
      v17 = (*(v12 + 48) + 24 * v15);
      v18 = *v17;
      v19 = v17[1];
      v20 = v17[2];
      v21 = v17[3];
      v23 = v17[4];
      v22 = v17[5];
      v24 = v18 == a2 && v19 == v9;
      v25 = v24 && v20 == a3;
      v26 = v25 && v21 == v10;
      v27 = v26 && v23 == a4;
      if (v27 && v22 == v11)
      {
        break;
      }

      v15 = (v15 + 1) & v16;
      if (((*(v12 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    result = 0;
  }

  else
  {
LABEL_20:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32 = *v31;
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, a3, a4, v15, isUniquelyReferenced_nonNull_native);
    *v31 = v32;
    result = 1;
  }

  *a1 = a2;
  a1[1] = v9;
  a1[2] = a3;
  a1[3] = v10;
  a1[4] = a4;
  a1[5] = v11;
  return result;
}

uint64_t specialized Set._Variant.insert(_:)(void *a1, uint64_t a2)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  dispatch thunk of AnyColorBox.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {

      v10 = dispatch thunk of AnyShapeStyleBox.isEqual(to:)();

      if (v10)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    *a1 = *(*(v5 + 48) + 8 * v8);

    return 0;
  }

  else
  {
LABEL_6:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;

    specialized _NativeSet.insertNew(_:at:isUnique:)(v12, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    *a1 = a2;
    return 1;
  }
}

uint64_t specialized Set._Variant.insert(_:)(uint64_t a1, uint64_t a2, Swift::Int a3)
{
  v4 = v3;
  v23 = a2;
  v24 = a3;
  v6 = *v3;
  Hasher.init(_seed:)();
  _ViewList_ID.Canonical.hash(into:)();
  v7 = Hasher._finalize()();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = (*(v6 + 48) + 16 * v9);
      v12 = v11[1];
      v22[0] = *v11;
      v22[1] = v12;

      v13 = MEMORY[0x18D003E10](v22, &v23);

      if (v13)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    v20 = (*(v6 + 48) + 16 * v9);
    v21 = v20[1];
    *a1 = *v20;
    *(a1 + 8) = v21;

    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = v24;
    v16 = v23;
    v17 = HIDWORD(v23);
    v22[0] = *v4;
    v18 = v23 | (HIDWORD(v23) << 32);

    specialized _NativeSet.insertNew(_:at:isUnique:)(v18, v15, v9, isUniquelyReferenced_nonNull_native);
    *v4 = v22[0];
    *a1 = v16;
    *(a1 + 4) = v17;
    *(a1 + 8) = v15;
    return 1;
  }
}

Swift::Int _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC7SwiftUI32NavigationStackHostingControllerCyAG7AnyViewVG_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    type metadata accessor for _SetStorage<NavigationStackHostingController<AnyView>>();
    v2 = static _SetStorage.convert(_:capacity:)();
    v14 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v5VGMaTm_0(0, &lazy cache variable for type metadata for NavigationStackHostingController<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for NavigationStackHostingController);
      do
      {
        swift_dynamicCast();
        if (*(v2 + 24) <= *(v2 + 16))
        {
          specialized _NativeSet.resize(capacity:)();
        }

        v2 = v14;
        result = NSObject._rawHashValue(seed:)(*(v14 + 40));
        v4 = v14 + 56;
        v5 = -1 << *(v14 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v9 = 0;
          v10 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v10 && (v9 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v11 = v7 == v10;
            if (v7 == v10)
            {
              v7 = 0;
            }

            v9 |= v11;
            v12 = *(v4 + 8 * v7);
          }

          while (v12 == -1);
          v8 = __clz(__rbit64(~v12)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v14 + 48) + 8 * v8) = v13;
        ++*(v14 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

Swift::Int _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfCSo16UIOpenURLContextC_Tt1g5Tm(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t a5, unint64_t *a6)
{
  if (a2)
  {
    type metadata accessor for _SetStorage<UIScene>(0, a3, a4, a5, a6);
    v10 = static _SetStorage.convert(_:capacity:)();
    v23 = v10;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for NSObject(0, a4);
      do
      {
        swift_dynamicCast();
        v17 = *(v10 + 16);
        if (*(v10 + 24) <= v17)
        {
          specialized _NativeSet.resize(capacity:)(v17 + 1, a3, a4, a5, a6);
        }

        v10 = v23;
        result = NSObject._rawHashValue(seed:)(*(v23 + 40));
        v12 = v23 + 56;
        v13 = -1 << *(v23 + 32);
        v14 = result & ~v13;
        v15 = v14 >> 6;
        if (((-1 << v14) & ~*(v23 + 56 + 8 * (v14 >> 6))) != 0)
        {
          v16 = __clz(__rbit64((-1 << v14) & ~*(v23 + 56 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v18 = 0;
          v19 = (63 - v13) >> 6;
          do
          {
            if (++v15 == v19 && (v18 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v20 = v15 == v19;
            if (v15 == v19)
            {
              v15 = 0;
            }

            v18 |= v20;
            v21 = *(v12 + 8 * v15);
          }

          while (v21 == -1);
          v16 = __clz(__rbit64(~v21)) + (v15 << 6);
        }

        *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
        *(*(v23 + 48) + 8 * v16) = v22;
        ++*(v23 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v10;
}

uint64_t specialized _NativeSet.resize(capacity:)(uint64_t a1)
{
  return specialized _NativeSet.resize(capacity:)(a1, &lazy cache variable for type metadata for _SetStorage<UIOpenURLContext>, &lazy cache variable for type metadata for UIOpenURLContext, 0x1E69DCD08, &lazy protocol witness table cache variable for type UIOpenURLContext and conformance NSObject);
}

{
  return specialized _NativeSet.resize(capacity:)(a1, &lazy cache variable for type metadata for _SetStorage<UIScene>, &lazy cache variable for type metadata for UIScene, 0x1E69DCE70, &lazy protocol witness table cache variable for type UIScene and conformance NSObject);
}

uint64_t specialized _NativeSet.resize(capacity:)(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, unint64_t *a5)
{
  v6 = v5;
  v7 = *v5;
  type metadata accessor for _SetStorage<UIScene>(0, a2, a3, a4, a5);
  result = static _SetStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 56);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 56);
    v15 = (v12 + 63) >> 6;
    v16 = result + 56;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = *(*(v7 + 48) + 8 * (v18 | (v10 << 6)));
      result = NSObject._rawHashValue(seed:)(*(v9 + 40));
      v22 = -1 << *(v9 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v16 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v16 + 8 * v24);
          if (v28 != -1)
          {
            v17 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v23) & ~*(v16 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v21;
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v7 + 32);
    if (v29 >= 64)
    {
      bzero((v7 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v29;
    }

    *(v7 + 16) = 0;
  }

  *v6 = v9;
  return result;
}

unint64_t specialized _NativeSet._unsafeInsertNew(_:)(uint64_t a1, void *a2)
{
  NSObject._rawHashValue(seed:)(a2[5]);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << result;
  *(a2[6] + 8 * result) = a1;
  ++a2[2];
  return result;
}

unint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(unint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, char a5)
{
  v6 = a3;
  v7 = a2;
  v8 = result;
  v9 = HIDWORD(result);
  v10 = HIDWORD(a2);
  v11 = HIDWORD(a3);
  v12 = *(*v5 + 16);
  v13 = *(*v5 + 24);
  if (v13 > v12 && (a5 & 1) != 0)
  {
LABEL_27:
    v30 = *v5;
    *(*v5 + 8 * (a4 >> 6) + 56) |= 1 << a4;
    v31 = (*(v30 + 48) + 24 * a4);
    *v31 = v8;
    v31[1] = v9;
    v31[2] = v7;
    v31[3] = v10;
    v31[4] = v6;
    v31[5] = v11;
    v32 = *(v30 + 16);
    v33 = __OFADD__(v32, 1);
    v34 = v32 + 1;
    if (v33)
    {
      __break(1u);
    }

    *(v30 + 16) = v34;
    return result;
  }

  if (a5)
  {
    specialized _NativeSet.resize(capacity:)();
    goto LABEL_8;
  }

  if (v13 > v12)
  {
    v14 = a4;
    result = specialized _NativeSet.copy()();
    a4 = v14;
    goto LABEL_27;
  }

  specialized _NativeSet.copyAndResize(capacity:)();
LABEL_8:
  v15 = *v5;
  Hasher.init(_seed:)();
  Hasher.combine(bytes:)();
  Hasher._combine(_:)(v11);
  result = Hasher._finalize()();
  v16 = -1 << *(v15 + 32);
  a4 = result & ~v16;
  if (((*(v15 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) == 0)
  {
    goto LABEL_27;
  }

  v17 = ~v16;
  while (1)
  {
    v18 = (*(v15 + 48) + 24 * a4);
    v19 = *v18;
    v20 = v18[1];
    v21 = v18[2];
    v22 = v18[3];
    v24 = v18[4];
    v23 = v18[5];
    v25 = v19 == v8 && v20 == v9;
    v26 = v25 && v21 == v7;
    v27 = v26 && v22 == v10;
    v28 = v27 && v24 == v6;
    if (v28 && v23 == v11)
    {
      break;
    }

    a4 = (a4 + 1) & v17;
    if (((*(v15 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void specialized _NativeSet.insertNew(_:at:isUnique:)(void *a1, unint64_t a2, char a3)
{
  v4 = v3;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_19;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)();
  }

  else
  {
    if (v8 > v7)
    {
      specialized _NativeSet.copy()();
      goto LABEL_19;
    }

    specialized _NativeSet.copyAndResize(capacity:)();
  }

  v9 = *v3;
  Hasher.init(_seed:)();
  if (a1)
  {
    Hasher._combine(_:)(1u);
    v10 = a1;
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v11 = Hasher._finalize()();
  v12 = -1 << *(v9 + 32);
  a2 = v11 & ~v12;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v13 = ~v12;
    do
    {
      v14 = *(*(v9 + 48) + 8 * a2);
      if (v14)
      {
        if (a1)
        {
          type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIColor);
          v15 = a1;
          v16 = v14;
          v17 = static NSObject.== infix(_:_:)();

          if (v17)
          {
LABEL_18:
            type metadata accessor for UIColor?();
            ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            break;
          }
        }
      }

      else if (!a1)
      {
        goto LABEL_18;
      }

      a2 = (a2 + 1) & v13;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_19:
  v18 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v18 + 48) + 8 * a2) = a1;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v21;
  }
}

void *specialized _NativeSet.copy()(unint64_t *a1, void (*a2)(void))
{
  v3 = v2;
  type metadata accessor for _SetStorage<ToolbarPlacement.Role>(0, a1, a2);
  v4 = *v2;
  v5 = static _SetStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 56);
    for (i = (v11 + 63) >> 6; v13; *(*(v6 + 48) + 8 * v16) = *(*(v4 + 48) + 8 * v16))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v16 = v15 | (v10 << 6);
LABEL_17:
      ;
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= i)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v13 = (v18 - 1) & v18;
        v16 = __clz(__rbit64(v18)) | (v10 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

id specialized _NativeSet.copy()()
{
  return specialized _NativeSet.copy()(&lazy cache variable for type metadata for _SetStorage<UIOpenURLContext>, &lazy cache variable for type metadata for UIOpenURLContext, 0x1E69DCD08, &lazy protocol witness table cache variable for type UIOpenURLContext and conformance NSObject);
}

{
  v1 = v0;
  type metadata accessor for _SetStorage<NavigationStackHostingController<AnyView>>();
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

      v16 = *(v2 + 56 + 8 * v8);
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

{
  v1 = v0;
  type metadata accessor for _SetStorage<UITextFormattingViewControllerComponentKey>();
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

      v16 = *(v2 + 56 + 8 * v8);
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

{
  v1 = v0;
  type metadata accessor for _SetStorage<UIColor?>();
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *specialized _NativeSet.copy()(uint64_t (*a1)(void), void (*a2)(void, double))
{
  v4 = v2;
  v5 = a1(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v25 - v8;
  a2(0, v7);
  v10 = *v2;
  v11 = static _SetStorage.copy(original:)();
  v12 = v11;
  if (*(v10 + 16))
  {
    v26 = v4;
    result = (v11 + 56);
    v14 = ((1 << *(v12 + 32)) + 63) >> 6;
    if (v12 != v10 || result >= v10 + 56 + 8 * v14)
    {
      result = memmove(result, (v10 + 56), 8 * v14);
    }

    v16 = 0;
    *(v12 + 16) = *(v10 + 16);
    v17 = 1 << *(v10 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(v10 + 56);
    v20 = (v17 + 63) >> 6;
    v27 = v6 + 32;
    for (i = v6 + 16; v19; result = (*(v6 + 32))(*(v12 + 48) + v24, v9, v5))
    {
      v21 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v24 = *(v6 + 72) * (v21 | (v16 << 6));
      (*(v6 + 16))(v9, *(v10 + 48) + v24, v5);
    }

    v22 = v16;
    while (1)
    {
      v16 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v16 >= v20)
      {

        v4 = v26;
        goto LABEL_21;
      }

      v23 = *(v10 + 56 + 8 * v16);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v19 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v4 = v12;
  }

  return result;
}

id specialized _NativeSet.copy()(unint64_t *a1, unint64_t *a2, uint64_t a3, unint64_t *a4)
{
  v5 = v4;
  type metadata accessor for _SetStorage<UIScene>(0, a1, a2, a3, a4);
  v6 = *v4;
  v7 = static _SetStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v6 + 56 + 8 * v10)
    {
      result = memmove(result, (v6 + 56), 8 * v10);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_17:
        v21 = v18 | (v12 << 6);
        v22 = *(*(v6 + 48) + 8 * v21);
        *(*(v8 + 48) + 8 * v21) = v22;
        result = v22;
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_19;
      }

      v20 = *(v6 + 56 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v5 = v8;
  }

  return result;
}

Swift::Int specialized static ViewGraphBridgeProperties.defaultRequestedBars.getter()
{
  type metadata accessor for _ContiguousArrayStorage<ToolbarPlacement.Role>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ToolbarPlacement.Role>, &type metadata for ToolbarPlacement.Role, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18CD63400;
  *(inited + 48) = 0u;
  *(inited + 64) = 0;
  *(inited + 32) = 0u;
  v1 = inited + 32;
  v2 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7SwiftUI16ToolbarPlacementV4RoleO_Tt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of ToolbarPlacement.Role(v1);
  v7 = v2;
  _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v5VGMaTm_0(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v5>, MEMORY[0x1E697DF50], MEMORY[0x1E697DF48], MEMORY[0x1E697EC20]);
  lazy protocol witness table accessor for type _SemanticFeature<Semantics_v5> and conformance _SemanticFeature<A>();
  if (static SemanticFeature.isEnabled.getter())
  {
    memset(v4, 0, sizeof(v4));
    v5 = xmmword_18CD7DD20;
    specialized Set._Variant.insert(_:)(v6, v4);
    outlined destroy of ToolbarPlacement.Role(v6);
  }

  return v7;
}

unint64_t lazy protocol witness table accessor for type ArchivedViewState.ID and conformance ArchivedViewState.ID()
{
  result = lazy protocol witness table cache variable for type ArchivedViewState.ID and conformance ArchivedViewState.ID;
  if (!lazy protocol witness table cache variable for type ArchivedViewState.ID and conformance ArchivedViewState.ID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivedViewState.ID and conformance ArchivedViewState.ID);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArchivedViewState.ID and conformance ArchivedViewState.ID;
  if (!lazy protocol witness table cache variable for type ArchivedViewState.ID and conformance ArchivedViewState.ID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivedViewState.ID and conformance ArchivedViewState.ID);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SceneRequestCache.Item and conformance SceneRequestCache.Item()
{
  result = lazy protocol witness table cache variable for type SceneRequestCache.Item and conformance SceneRequestCache.Item;
  if (!lazy protocol witness table cache variable for type SceneRequestCache.Item and conformance SceneRequestCache.Item)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SceneRequestCache.Item and conformance SceneRequestCache.Item);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SceneRequestCache.Item and conformance SceneRequestCache.Item;
  if (!lazy protocol witness table cache variable for type SceneRequestCache.Item and conformance SceneRequestCache.Item)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SceneRequestCache.Item and conformance SceneRequestCache.Item);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TextEditorModification and conformance TextEditorModification()
{
  result = lazy protocol witness table cache variable for type TextEditorModification and conformance TextEditorModification;
  if (!lazy protocol witness table cache variable for type TextEditorModification and conformance TextEditorModification)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextEditorModification and conformance TextEditorModification);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TextEditorModification and conformance TextEditorModification;
  if (!lazy protocol witness table cache variable for type TextEditorModification and conformance TextEditorModification)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextEditorModification and conformance TextEditorModification);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TextEditorModification and conformance TextEditorModification;
  if (!lazy protocol witness table cache variable for type TextEditorModification and conformance TextEditorModification)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextEditorModification and conformance TextEditorModification);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TextEditorModification and conformance TextEditorModification;
  if (!lazy protocol witness table cache variable for type TextEditorModification and conformance TextEditorModification)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextEditorModification and conformance TextEditorModification);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TextEditorModification and conformance TextEditorModification;
  if (!lazy protocol witness table cache variable for type TextEditorModification and conformance TextEditorModification)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextEditorModification and conformance TextEditorModification);
  }

  return result;
}

void type metadata accessor for UIColor?()
{
  if (!lazy cache variable for type metadata for UIColor?)
  {
    type metadata accessor for NSObject(255, &lazy cache variable for type metadata for UIColor);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for UIColor?);
    }
  }
}

void type metadata accessor for _SetStorage<UIColor?>()
{
  if (!lazy cache variable for type metadata for _SetStorage<UIColor?>)
  {
    type metadata accessor for UIColor?();
    lazy protocol witness table accessor for type UIColor? and conformance <A> A?();
    v0 = type metadata accessor for _SetStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _SetStorage<UIColor?>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type UIColor? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type UIColor? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type UIColor? and conformance <A> A?)
  {
    type metadata accessor for UIColor?();
    lazy protocol witness table accessor for type UIScene and conformance NSObject(&lazy protocol witness table cache variable for type UIColor and conformance NSObject, &lazy cache variable for type metadata for UIColor);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UIColor? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Color and conformance Color()
{
  result = lazy protocol witness table cache variable for type Color and conformance Color;
  if (!lazy protocol witness table cache variable for type Color and conformance Color)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color and conformance Color);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Color and conformance Color;
  if (!lazy protocol witness table cache variable for type Color and conformance Color)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Color and conformance Color);
  }

  return result;
}

void type metadata accessor for _SetStorage<UITextFormattingViewControllerComponentKey>()
{
  if (!lazy cache variable for type metadata for _SetStorage<UITextFormattingViewControllerComponentKey>)
  {
    type metadata accessor for UITextFormattingViewControllerComponentKey(255);
    lazy protocol witness table accessor for type HashableCommandGroupPlacementWrapper and conformance HashableCommandGroupPlacementWrapper(&lazy protocol witness table cache variable for type UITextFormattingViewControllerComponentKey and conformance UITextFormattingViewControllerComponentKey, type metadata accessor for UITextFormattingViewControllerComponentKey);
    v0 = type metadata accessor for _SetStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _SetStorage<UITextFormattingViewControllerComponentKey>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type HashableCommandGroupPlacementWrapper and conformance HashableCommandGroupPlacementWrapper(unint64_t *a1, void (*a2)(uint64_t))
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

void type metadata accessor for _SetStorage<DateComponents>()
{
  if (!lazy cache variable for type metadata for _SetStorage<DateComponents>)
  {
    type metadata accessor for DateComponents();
    lazy protocol witness table accessor for type HashableCommandGroupPlacementWrapper and conformance HashableCommandGroupPlacementWrapper(&lazy protocol witness table cache variable for type DateComponents and conformance DateComponents, MEMORY[0x1E6968278]);
    v0 = type metadata accessor for _SetStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _SetStorage<DateComponents>);
    }
  }
}

void type metadata accessor for _SetStorage<IndexPath>()
{
  if (!lazy cache variable for type metadata for _SetStorage<IndexPath>)
  {
    type metadata accessor for IndexPath();
    lazy protocol witness table accessor for type HashableCommandGroupPlacementWrapper and conformance HashableCommandGroupPlacementWrapper(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x1E6969C28]);
    v0 = type metadata accessor for _SetStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _SetStorage<IndexPath>);
    }
  }
}

void type metadata accessor for _SetStorage<UIScene>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, unint64_t *a5)
{
  if (!*a2)
  {
    type metadata accessor for NSObject(255, a3);
    lazy protocol witness table accessor for type UIScene and conformance NSObject(a5, a3);
    v8 = type metadata accessor for _SetStorage();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void type metadata accessor for _SetStorage<URL>()
{
  if (!lazy cache variable for type metadata for _SetStorage<URL>)
  {
    type metadata accessor for URL();
    lazy protocol witness table accessor for type HashableCommandGroupPlacementWrapper and conformance HashableCommandGroupPlacementWrapper(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0]);
    v0 = type metadata accessor for _SetStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _SetStorage<URL>);
    }
  }
}

void type metadata accessor for _SetStorage<UTType>()
{
  if (!lazy cache variable for type metadata for _SetStorage<UTType>)
  {
    type metadata accessor for UTType();
    lazy protocol witness table accessor for type HashableCommandGroupPlacementWrapper and conformance HashableCommandGroupPlacementWrapper(&lazy protocol witness table cache variable for type UTType and conformance UTType, MEMORY[0x1E69E8450]);
    v0 = type metadata accessor for _SetStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _SetStorage<UTType>);
    }
  }
}

uint64_t outlined init with copy of HashableCommandGroupPlacementWrapper(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HashableCommandGroupPlacementWrapper(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of HashableCommandGroupPlacementWrapper(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HashableCommandGroupPlacementWrapper(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void type metadata accessor for _SetStorage<HashableCommandGroupPlacementWrapper>()
{
  if (!lazy cache variable for type metadata for _SetStorage<HashableCommandGroupPlacementWrapper>)
  {
    type metadata accessor for HashableCommandGroupPlacementWrapper(255);
    lazy protocol witness table accessor for type HashableCommandGroupPlacementWrapper and conformance HashableCommandGroupPlacementWrapper(&lazy protocol witness table cache variable for type HashableCommandGroupPlacementWrapper and conformance HashableCommandGroupPlacementWrapper, type metadata accessor for HashableCommandGroupPlacementWrapper);
    v0 = type metadata accessor for _SetStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _SetStorage<HashableCommandGroupPlacementWrapper>);
    }
  }
}

uint64_t destroy for ViewGraphBridgeProperties()
{
}

uint64_t initializeWithCopy for ViewGraphBridgeProperties(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v3;

  return a1;
}

void *assignWithCopy for ViewGraphBridgeProperties(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  a1[2] = a2[2];

  a1[3] = a2[3];

  return a1;
}

_OWORD *assignWithTake for ViewGraphBridgeProperties(_OWORD *a1, _OWORD *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  return a1;
}

unint64_t lazy protocol witness table accessor for type _GraphInputs.ViewGraphBridgePropertiesKey and conformance _GraphInputs.ViewGraphBridgePropertiesKey()
{
  result = lazy protocol witness table cache variable for type _GraphInputs.ViewGraphBridgePropertiesKey and conformance _GraphInputs.ViewGraphBridgePropertiesKey;
  if (!lazy protocol witness table cache variable for type _GraphInputs.ViewGraphBridgePropertiesKey and conformance _GraphInputs.ViewGraphBridgePropertiesKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _GraphInputs.ViewGraphBridgePropertiesKey and conformance _GraphInputs.ViewGraphBridgePropertiesKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _GraphInputs.ViewGraphBridgePropertiesKey and conformance _GraphInputs.ViewGraphBridgePropertiesKey;
  if (!lazy protocol witness table cache variable for type _GraphInputs.ViewGraphBridgePropertiesKey and conformance _GraphInputs.ViewGraphBridgePropertiesKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _GraphInputs.ViewGraphBridgePropertiesKey and conformance _GraphInputs.ViewGraphBridgePropertiesKey);
  }

  return result;
}

void _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v5VGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t AnyWindowToolbarStyle.init<A>(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v9 = *(v4 + 16);
  v9(v13 - v10, a1, a2, v8);
  if (swift_dynamicCast())
  {
    v11 = v13[1];
  }

  else
  {
    type metadata accessor for AnyWindowToolbarStyleStorage();
    (v9)(v6, a1, a2);
    v11 = LimitedAvailabilityCommandContentStorage.__allocating_init(_:)(v6);
  }

  (*(v4 + 8))(a1, a2);
  return v11;
}

uint64_t DragSession.Phase.hash(into:)()
{
  v1 = *v0;
  if (v1 >> 6)
  {
    if (v1 >> 6 != 1)
    {
      v3 = qword_18CD7E2D0[v1 ^ 0x1FFFFFFFFFFFFF80];
      return MEMORY[0x18D00F6F0](v3);
    }

    v1 &= 0x3Fu;
    v2 = 3;
  }

  else
  {
    v2 = 2;
  }

  MEMORY[0x18D00F6F0](v2);
  if (v1 < 2)
  {
    if (v1)
    {
      v3 = 1;
    }

    else
    {
      v3 = v1;
    }

    return MEMORY[0x18D00F6F0](v3);
  }

  if (v1 <= 2)
  {
    v3 = 2;
    return MEMORY[0x18D00F6F0](v3);
  }

  if (v1 == 3)
  {
    v3 = 3;
    return MEMORY[0x18D00F6F0](v3);
  }

  result = _diagnoseUnavailableCodeReached()();
  __break(1u);
  return result;
}

Swift::Int DragSession.Phase.hashValue.getter()
{
  Hasher.init(_seed:)();
  DragSession.Phase.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DragSession.Phase()
{
  Hasher.init(_seed:)();
  DragSession.Phase.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DragSession.Phase()
{
  Hasher.init(_seed:)();
  DragSession.Phase.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int DragSession.ID.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](v1);
  return Hasher._finalize()();
}

double DragSession.location(in:)()
{
  type metadata accessor for _ContiguousArrayStorage<Any>();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_18CD63400;
  *(v0 + 56) = MEMORY[0x1E69E6158];
  *(v0 + 32) = 0xD000000000000020;
  *(v0 + 40) = 0x800000018CD42A30;
  print(_:separator:terminator:)();

  return 0.0;
}

uint64_t DragSession.draggedItemIDs<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for Logger?();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(v3 + 24))
  {
    return static Array._allocateUninitialized(_:)();
  }

  v35[0] = a2;
  v35[1] = a2;
  v35[2] = a3;
  v35[3] = a3;
  v9 = type metadata accessor for DraggingItem.Identifier();
  v10 = _arrayConditionalCast<A, B>(_:)();
  if (!v10)
  {
    return static Array._allocateUninitialized(_:)();
  }

  v11 = v10;
  static Log.dragAndDrop.getter();
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    v14 = outlined destroy of Logger?(v8);
  }

  else
  {

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v32 = v18;
      v34 = swift_slowAlloc();
      v35[0] = v34;
      *v18 = 136315138;
      v19 = MEMORY[0x18D00CC60](v11, v9);
      v33 = v16;
      v20 = v19;
      v22 = v21;

      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, v35);

      v24 = v32;
      v25 = v33;
      *(v32 + 1) = v23;
      v26 = v24;
      _os_log_impl(&dword_18BD4A000, v25, v17, "DragSession has successfully obtained local objects: %s", v24, 0xCu);
      v27 = v34;
      __swift_destroy_boxed_opaque_existential_1(v34);
      MEMORY[0x18D0110E0](v27, -1, -1);
      MEMORY[0x18D0110E0](v26, -1, -1);
    }

    else
    {
    }

    v14 = (*(v13 + 8))(v8, v12);
  }

  v35[0] = v11;
  MEMORY[0x1EEE9AC00](v14);
  *(&v32 - 2) = a2;
  *(&v32 - 1) = a3;
  v28 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  v31 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in DragSession.draggedItemIDs<A>(for:), (&v32 - 4), v28, a2, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v30);

  return v31;
}

uint64_t DragSession.Phase.description.getter()
{
  v1 = *v0;
  if (!(v1 >> 6))
  {
    _StringGuts.grow(_:)(24);
    v3 = 0xD000000000000016;
    v2 = 0x800000018CD42AA0;
    goto LABEL_5;
  }

  if (v1 >> 6 == 1)
  {
    _StringGuts.grow(_:)(23);
    v2 = 0x800000018CD42A80;
    v3 = 0xD000000000000015;
LABEL_5:
    MEMORY[0x18D00C9B0](v3, v2);
    _print_unlocked<A, B>(_:_:)();
    return 0;
  }

  v5 = 0x657669746361;
  if (v1 != 129)
  {
    v5 = 0xD000000000000017;
  }

  if (v1 == 128)
  {
    return 0x6C616974696E69;
  }

  else
  {
    return v5;
  }
}

unint64_t DragSession.ID.debugDescription.getter()
{
  _StringGuts.grow(_:)(25);

  v0 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x18D00C9B0](v0);

  MEMORY[0x18D00C9B0](41, 0xE100000000000000);
  return 0xD000000000000016;
}

uint64_t specialized static DragSession.Phase.== infix(_:_:)(unsigned __int8 *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 >> 6)
  {
    if (v2 >> 6 == 1)
    {
      if ((v3 & 0xC0) == 0x40)
      {
        v4 = v2 & 0x3F;
        if (v4 < 2)
        {
          v5 = v4 == 0;
          v6 = 0;
          v7 = !v5;
          v8 = v5;
          v9 = 0;
LABEL_37:
          v3 &= 0x3Fu;
          v11 = v3 <= 2;
          if (v3 < 2)
          {
            if (!v3)
            {
              return (v8 & 1) != 0;
            }

            return (v7 & 1) != 0;
          }

          goto LABEL_46;
        }

        if (v4 <= 2)
        {
          v6 = 0;
          v7 = 0;
          v8 = 0;
          v9 = 1;
          goto LABEL_37;
        }

        if (v4 == 3)
        {
          v9 = 0;
          v7 = 0;
          v8 = 0;
          v6 = 1;
          goto LABEL_37;
        }

LABEL_53:
        _diagnoseUnavailableCodeReached()();
        __break(1u);
        goto LABEL_54;
      }
    }

    else if (v2 == 128)
    {
      if (v3 == 128)
      {
        return 1;
      }
    }

    else if (v2 == 129)
    {
      if (v3 == 129)
      {
        return 1;
      }
    }

    else if (v3 == 130)
    {
      return 1;
    }

    return 0;
  }

  if (v3 > 0x3F)
  {
    return 0;
  }

  if (*a1 < 2u)
  {
    v10 = v2 == 0;
    v6 = 0;
    v7 = !v10;
    v8 = v10;
    v9 = 0;
    v11 = *a2 <= 2u;
    if (*a2 >= 2u)
    {
      goto LABEL_46;
    }

LABEL_43:
    if (!*a2)
    {
      return (v8 & 1) != 0;
    }

    return (v7 & 1) != 0;
  }

  if (*a1 > 2u)
  {
    if (v2 != 3)
    {
      goto LABEL_53;
    }

    v9 = 0;
    v7 = 0;
    v8 = 0;
    v6 = 1;
    v11 = *a2 <= 2u;
    if (*a2 < 2u)
    {
      goto LABEL_43;
    }
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 1;
    v11 = *a2 <= 2u;
    if (*a2 < 2u)
    {
      goto LABEL_43;
    }
  }

LABEL_46:
  if (v11)
  {
    return (v9 & 1) != 0;
  }

  if (v3 == 3)
  {
    return (v6 & 1) != 0;
  }

LABEL_54:
  result = _diagnoseUnavailableCodeReached()();
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type DragSession.Phase and conformance DragSession.Phase()
{
  result = lazy protocol witness table cache variable for type DragSession.Phase and conformance DragSession.Phase;
  if (!lazy protocol witness table cache variable for type DragSession.Phase and conformance DragSession.Phase)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DragSession.Phase and conformance DragSession.Phase);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DragSession.ID and conformance DragSession.ID()
{
  result = lazy protocol witness table cache variable for type DragSession.ID and conformance DragSession.ID;
  if (!lazy protocol witness table cache variable for type DragSession.ID and conformance DragSession.ID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DragSession.ID and conformance DragSession.ID);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DragSession.ID and conformance DragSession.ID;
  if (!lazy protocol witness table cache variable for type DragSession.ID and conformance DragSession.ID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DragSession.ID and conformance DragSession.ID);
  }

  return result;
}

uint64_t initializeWithCopy for DragSession(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v3 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v3;
  *(a1 + 32) = *(a2 + 32);

  return a1;
}

uint64_t assignWithCopy for DragSession(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t assignWithTake for DragSession(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v4;

  *(a1 + 32) = *(a2 + 32);
  return a1;
}

uint64_t getEnumTagSinglePayload for DragSession(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
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

uint64_t storeEnumTagSinglePayload for DragSession(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DragSession.Phase(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x1E)
  {
    goto LABEL_17;
  }

  if (a2 + 226 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 226) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 226;
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

      return (*a1 | (v4 << 8)) - 226;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 226;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 1) & 0x1C | (*a1 >> 6)) ^ 0x1F;
  if (v6 >= 0x1D)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for DragSession.Phase(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 226 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 226) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x1E)
  {
    v4 = 0;
  }

  if (a2 > 0x1D)
  {
    v5 = ((a2 - 30) >> 8) + 1;
    *result = a2 - 30;
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
    *result = 8 * (((-a2 >> 2) & 7) - 8 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTag for DragSession.Phase(_BYTE *a1)
{
  v1 = *a1;
  if (v1 >= 0)
  {
    return *a1 >> 6;
  }

  else
  {
    return (v1 & 7u) + 2;
  }
}

_BYTE *destructiveInjectEnumTag for DragSession.Phase(_BYTE *result, unsigned int a2)
{
  if (a2 < 2)
  {
    *result = *result & 7 | (a2 << 6);
  }

  else
  {
    *result = (a2 + 6) & 7 | 0x80;
  }

  return result;
}

uint64_t assignWithTake for NavigationSplitCore(uint64_t a1, uint64_t a2)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  v5 = *(a2 + 40);
  v6 = *(a1 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v5;

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  __swift_destroy_boxed_opaque_existential_1(a1 + 64);
  v7 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v7;
  v8 = *(a2 + 104);
  v9 = *(a1 + 104);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = v8;

  *(a1 + 112) = *(a2 + 112);

  *(a1 + 120) = *(a2 + 120);
  __swift_destroy_boxed_opaque_existential_1(a1 + 128);
  v10 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v10;
  v11 = *(a2 + 168);
  v12 = *(a1 + 168);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 168) = v11;

  *(a1 + 176) = *(a2 + 176);

  v13 = *(a2 + 192);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 192) = v13;

  *(a1 + 200) = *(a2 + 200);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 216) = *(a2 + 216);

  *(a1 + 224) = *(a2 + 224);
  *(a1 + 225) = *(a2 + 225);
  *(a1 + 226) = *(a2 + 226);
  *(a1 + 232) = *(a2 + 232);

  *(a1 + 240) = *(a2 + 240);

  *(a1 + 248) = *(a2 + 248);
  swift_weakTakeAssign();
  *(a1 + 264) = *(a2 + 264);

  *(a1 + 272) = *(a2 + 272);

  *(a1 + 280) = *(a2 + 280);
  *(a1 + 288) = *(a2 + 288);

  if (*(a1 + 320))
  {
    __swift_destroy_boxed_opaque_existential_1(a1 + 296);
  }

  *(a1 + 328) = *(a2 + 328);
  v14 = *(a2 + 312);
  *(a1 + 296) = *(a2 + 296);
  *(a1 + 312) = v14;
  return a1;
}

uint64_t getEnumTagSinglePayload for NavigationSplitCore(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 336))
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

uint64_t storeEnumTagSinglePayload for NavigationSplitCore(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 328) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 336) = 1;
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

    *(result + 336) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t View.ignoresNonTabBarSafeArea()(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  v6 = 0;
  MEMORY[0x18D00A570](&KeyPath, a1, &type metadata for IgnoresNonTabBarSafeArea, a2);
  return outlined consume of Environment<Selector?>.Content(KeyPath, v6);
}

uint64_t key path getter for EnvironmentValues.isNavigationSplitViewTransparent : EnvironmentValues@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for ModifiedContent<NavigationSplitRepresentable, IgnoresNonTabBarSafeArea>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ContainerBackgroundKeys.TransparentNavigationSplitViewKey>, &type metadata for ContainerBackgroundKeys.TransparentNavigationSplitViewKey, &protocol witness table for ContainerBackgroundKeys.TransparentNavigationSplitViewKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ContainerBackgroundKeys.TransparentNavigationSplitViewKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for ModifiedContent<NavigationSplitRepresentable, IgnoresNonTabBarSafeArea>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ContainerBackgroundKeys.TransparentNavigationSplitViewKey>, &type metadata for ContainerBackgroundKeys.TransparentNavigationSplitViewKey, &protocol witness table for ContainerBackgroundKeys.TransparentNavigationSplitViewKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ContainerBackgroundKeys.TransparentNavigationSplitViewKey> and conformance EnvironmentPropertyKey<A>();
    result = PropertyList.subscript.getter();
  }

  *a2 = v4;
  return result;
}

uint64_t key path setter for EnvironmentValues.isNavigationSplitViewTransparent : EnvironmentValues(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ModifiedContent<NavigationSplitRepresentable, IgnoresNonTabBarSafeArea>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ContainerBackgroundKeys.TransparentNavigationSplitViewKey>, &type metadata for ContainerBackgroundKeys.TransparentNavigationSplitViewKey, &protocol witness table for ContainerBackgroundKeys.TransparentNavigationSplitViewKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<ContainerBackgroundKeys.TransparentNavigationSplitViewKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (*(a2 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

uint64_t IgnoresNonTabBarSafeArea.ignoredSafeAreaEdges.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = static Edge.Set.all.getter();
  specialized Environment.wrappedValue.getter(v1, v2, &v7);
  if (v7 != 5 && !v7)
  {
    return v3 & 0xFFFFFFFE;
  }

  specialized Environment.wrappedValue.getter(v1, v2, &v6);
  v4 = v3 & 0xFFFFFFFD;
  if (v6 != 1)
  {
    v4 = v3;
  }

  if (v6 == 5)
  {
    return v3;
  }

  else
  {
    return v4;
  }
}

uint64_t protocol witness for ViewModifier.body(content:) in conformance IgnoresNonTabBarSafeArea@<X0>(uint64_t a1@<X8>)
{
  result = IgnoresNonTabBarSafeArea.ignoredSafeAreaEdges.getter();
  *a1 = -1;
  *(a1 + 8) = result;
  return result;
}

uint64_t outlined init with copy of ModifiedContent<NavigationSplitRepresentable, IgnoresNonTabBarSafeArea>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ModifiedContent<NavigationSplitRepresentable, IgnoresNonTabBarSafeArea>(0, &lazy cache variable for type metadata for ModifiedContent<NavigationSplitRepresentable, IgnoresNonTabBarSafeArea>, &type metadata for NavigationSplitRepresentable, &type metadata for IgnoresNonTabBarSafeArea, MEMORY[0x1E697E830]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of ModifiedContent<NavigationSplitRepresentable, IgnoresNonTabBarSafeArea>(uint64_t a1)
{
  type metadata accessor for ModifiedContent<NavigationSplitRepresentable, IgnoresNonTabBarSafeArea>(0, &lazy cache variable for type metadata for ModifiedContent<NavigationSplitRepresentable, IgnoresNonTabBarSafeArea>, &type metadata for NavigationSplitRepresentable, &type metadata for IgnoresNonTabBarSafeArea, MEMORY[0x1E697E830]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitRepresentable, IgnoresNonTabBarSafeArea>, ContainerBackgroundRendererModifier<ContainerBackgroundKeys.NavigationSplitViewKey>>, _BackgroundPreferenceModifier<ContainerBackgroundKeys.NavigationSplitViewKey, ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitRepresentable, IgnoresNonTabBarSafeArea>, ContainerBackgroundRendererModifier<ContainerBackgroundKeys.NavigationSplitViewKey>>, _BackgroundPreferenceModifier<ContainerBackgroundKeys.NavigationSplitViewKey, ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitRepresentable, IgnoresNonTabBarSafeArea>, ContainerBackgroundRendererModifier<ContainerBackgroundKeys.NavigationSplitViewKey>>, _BackgroundPreferenceModifier<ContainerBackgroundKeys.NavigationSplitViewKey, ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>?>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitRepresentable, IgnoresNonTabBarSafeArea>, ContainerBackgroundRendererModifier<ContainerBackgroundKeys.NavigationSplitViewKey>>, _BackgroundPreferenceModifier<ContainerBackgroundKeys.NavigationSplitViewKey, ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>?>>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<NavigationSplitRepresentable, IgnoresNonTabBarSafeArea>, ContainerBackgroundRendererModifier<ContainerBackgroundKeys.NavigationSplitViewKey>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _ViewModifier_Content<IgnoresNonTabBarSafeArea> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _BackgroundPreferenceModifier<ContainerBackgroundKeys.NavigationSplitViewKey, ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>?> and conformance _BackgroundPreferenceModifier<A, B>, type metadata accessor for _BackgroundPreferenceModifier<ContainerBackgroundKeys.NavigationSplitViewKey, ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>?>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitRepresentable, IgnoresNonTabBarSafeArea>, ContainerBackgroundRendererModifier<ContainerBackgroundKeys.NavigationSplitViewKey>>, _BackgroundPreferenceModifier<ContainerBackgroundKeys.NavigationSplitViewKey, ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitRepresentable, IgnoresNonTabBarSafeArea>, ContainerBackgroundRendererModifier<ContainerBackgroundKeys.NavigationSplitViewKey>>, _BackgroundPreferenceModifier<ContainerBackgroundKeys.NavigationSplitViewKey, ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>?>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitRepresentable, IgnoresNonTabBarSafeArea>, ContainerBackgroundRendererModifier<ContainerBackgroundKeys.NavigationSplitViewKey>>, _BackgroundPreferenceModifier<ContainerBackgroundKeys.NavigationSplitViewKey, ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>?>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<NavigationSplitRepresentable, IgnoresNonTabBarSafeArea>, ContainerBackgroundRendererModifier<ContainerBackgroundKeys.NavigationSplitViewKey>>();
    type metadata accessor for _BackgroundPreferenceModifier<ContainerBackgroundKeys.NavigationSplitViewKey, ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>?>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitRepresentable, IgnoresNonTabBarSafeArea>, ContainerBackgroundRendererModifier<ContainerBackgroundKeys.NavigationSplitViewKey>>, _BackgroundPreferenceModifier<ContainerBackgroundKeys.NavigationSplitViewKey, ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>?>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<NavigationSplitRepresentable, IgnoresNonTabBarSafeArea>, ContainerBackgroundRendererModifier<ContainerBackgroundKeys.NavigationSplitViewKey>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<NavigationSplitRepresentable, IgnoresNonTabBarSafeArea>, ContainerBackgroundRendererModifier<ContainerBackgroundKeys.NavigationSplitViewKey>>)
  {
    type metadata accessor for ModifiedContent<NavigationSplitRepresentable, IgnoresNonTabBarSafeArea>(255, &lazy cache variable for type metadata for ModifiedContent<NavigationSplitRepresentable, IgnoresNonTabBarSafeArea>, &type metadata for NavigationSplitRepresentable, &type metadata for IgnoresNonTabBarSafeArea, MEMORY[0x1E697E830]);
    type metadata accessor for ModifiedContent<NavigationSplitRepresentable, IgnoresNonTabBarSafeArea>(255, &lazy cache variable for type metadata for ContainerBackgroundRendererModifier<ContainerBackgroundKeys.NavigationSplitViewKey>, &type metadata for ContainerBackgroundKeys.NavigationSplitViewKey, &protocol witness table for ContainerBackgroundKeys.NavigationSplitViewKey, type metadata accessor for ContainerBackgroundRendererModifier);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<NavigationSplitRepresentable, IgnoresNonTabBarSafeArea>, ContainerBackgroundRendererModifier<ContainerBackgroundKeys.NavigationSplitViewKey>>);
    }
  }
}

void type metadata accessor for ModifiedContent<NavigationSplitRepresentable, IgnoresNonTabBarSafeArea>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<NavigationSplitRepresentable, IgnoresNonTabBarSafeArea>, ContainerBackgroundRendererModifier<ContainerBackgroundKeys.NavigationSplitViewKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<NavigationSplitRepresentable, IgnoresNonTabBarSafeArea>, ContainerBackgroundRendererModifier<ContainerBackgroundKeys.NavigationSplitViewKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<NavigationSplitRepresentable, IgnoresNonTabBarSafeArea>, ContainerBackgroundRendererModifier<ContainerBackgroundKeys.NavigationSplitViewKey>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<NavigationSplitRepresentable, IgnoresNonTabBarSafeArea>, ContainerBackgroundRendererModifier<ContainerBackgroundKeys.NavigationSplitViewKey>>();
    lazy protocol witness table accessor for type ModifiedContent<NavigationSplitRepresentable, IgnoresNonTabBarSafeArea> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<NavigationSplitRepresentable, IgnoresNonTabBarSafeArea>, ContainerBackgroundRendererModifier<ContainerBackgroundKeys.NavigationSplitViewKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<NavigationSplitRepresentable, IgnoresNonTabBarSafeArea> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<NavigationSplitRepresentable, IgnoresNonTabBarSafeArea> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<NavigationSplitRepresentable, IgnoresNonTabBarSafeArea> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<NavigationSplitRepresentable, IgnoresNonTabBarSafeArea>(255, &lazy cache variable for type metadata for ModifiedContent<NavigationSplitRepresentable, IgnoresNonTabBarSafeArea>, &type metadata for NavigationSplitRepresentable, &type metadata for IgnoresNonTabBarSafeArea, MEMORY[0x1E697E830]);
    lazy protocol witness table accessor for type IgnoresNonTabBarSafeArea and conformance IgnoresNonTabBarSafeArea();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<NavigationSplitRepresentable, IgnoresNonTabBarSafeArea> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type IgnoresNonTabBarSafeArea and conformance IgnoresNonTabBarSafeArea()
{
  result = lazy protocol witness table cache variable for type IgnoresNonTabBarSafeArea and conformance IgnoresNonTabBarSafeArea;
  if (!lazy protocol witness table cache variable for type IgnoresNonTabBarSafeArea and conformance IgnoresNonTabBarSafeArea)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IgnoresNonTabBarSafeArea and conformance IgnoresNonTabBarSafeArea);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _ViewModifier_Content<IgnoresNonTabBarSafeArea> and conformance _ViewModifier_Content<A>(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<IgnoresNonTabBarSafeArea>, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<IgnoresNonTabBarSafeArea>, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<IgnoresNonTabBarSafeArea>, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<_ViewModifier_Content<IgnoresNonTabBarSafeArea>, _SafeAreaRegionsIgnoringLayout>();
    lazy protocol witness table accessor for type _ViewModifier_Content<IgnoresNonTabBarSafeArea> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<IgnoresNonTabBarSafeArea> and conformance _ViewModifier_Content<A>, type metadata accessor for _ViewModifier_Content<IgnoresNonTabBarSafeArea>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<IgnoresNonTabBarSafeArea>, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<_ViewModifier_Content<IgnoresNonTabBarSafeArea>, _SafeAreaRegionsIgnoringLayout>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<IgnoresNonTabBarSafeArea>, _SafeAreaRegionsIgnoringLayout>)
  {
    type metadata accessor for _ViewModifier_Content<IgnoresNonTabBarSafeArea>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<IgnoresNonTabBarSafeArea>, _SafeAreaRegionsIgnoringLayout>);
    }
  }
}

void type metadata accessor for _ViewModifier_Content<IgnoresNonTabBarSafeArea>()
{
  if (!lazy cache variable for type metadata for _ViewModifier_Content<IgnoresNonTabBarSafeArea>)
  {
    lazy protocol witness table accessor for type IgnoresNonTabBarSafeArea and conformance IgnoresNonTabBarSafeArea();
    v0 = type metadata accessor for _ViewModifier_Content();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ViewModifier_Content<IgnoresNonTabBarSafeArea>);
    }
  }
}

uint64_t OutlineGroup.$expandedElements.getter()
{
  type metadata accessor for Set();
  type metadata accessor for StateOrBinding();
  StateOrBinding.projectedValue.getter();
  return v1;
}

uint64_t OutlineGroup.init(base:id:children:parentContent:leafContent:grouping:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v18 = *(*a2 + *MEMORY[0x1E69E77B0] + 8);
  v19 = static Array._allocateUninitialized(_:)();
  if (MEMORY[0x18D00CDF0](v19, v18))
  {
    specialized Set.init(_nonEmptyArrayLiteral:)(v19, v18, a17);
  }

  type metadata accessor for Set();
  StateOrBinding.init(wrappedValue:)();
  *a9 = v36;
  *(a9 + 16) = v37;
  *(a9 + 24) = v38;
  v20 = type metadata accessor for OutlineGroup();
  v21 = v20[19];
  v22 = type metadata accessor for OutlinePrimitive.Base();
  result = (*(*(v22 - 8) + 32))(a9 + v21, a1, v22);
  *(a9 + v20[20]) = a2;
  v24 = (a9 + v20[21]);
  *v24 = a3;
  v24[1] = a4;
  v25 = (a9 + v20[22]);
  *v25 = a5;
  v25[1] = a6;
  v26 = (a9 + v20[23]);
  *v26 = a7;
  v26[1] = a8;
  v27 = (a9 + v20[24]);
  *v27 = a10;
  v27[1] = a11;
  return result;
}

uint64_t OutlineGroup.init(base:id:children:parentContent:leafContent:grouping:expandedElements:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v21 = *(*a2 + *MEMORY[0x1E69E77B0] + 8);
  v22 = static Array._allocateUninitialized(_:)();
  if (MEMORY[0x18D00CDF0](v22, v21))
  {
    specialized Set.init(_nonEmptyArrayLiteral:)(v22, v21, a20);
  }

  type metadata accessor for Set();
  StateOrBinding.init(wrappedValue:)();
  *a9 = v39;
  *(a9 + 16) = v40;
  *(a9 + 24) = v41;
  v23 = type metadata accessor for OutlineGroup();
  v24 = v23[19];
  v25 = type metadata accessor for OutlinePrimitive.Base();
  (*(*(v25 - 8) + 32))(a9 + v24, a1, v25);
  *(a9 + v23[20]) = a2;
  v26 = (a9 + v23[21]);
  *v26 = a3;
  v26[1] = a4;
  v27 = (a9 + v23[22]);
  *v27 = a5;
  v27[1] = a6;
  v28 = (a9 + v23[23]);
  *v28 = a7;
  v28[1] = a8;
  v29 = (a9 + v23[24]);
  *v29 = a10;
  v29[1] = a11;
  result = outlined consume of StateOrBinding<Set<B>><A, B, C, D, E><A1>(*a9, *(a9 + 8), *(a9 + 16), *(a9 + 24));
  *a9 = a12;
  *(a9 + 8) = a13;
  *(a9 + 16) = a14;
  *(a9 + 24) = 1;
  return result;
}

uint64_t (*static OutlineGroup.ChildPath.state(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7))()
{
  v14 = swift_allocObject();
  v14[2] = a2;
  v14[3] = a3;
  v14[4] = a4;
  v14[5] = a5;
  v14[6] = a6;
  v14[7] = a7;
  v14[8] = a1;

  return partial apply for implicit closure #1 in TabForEach<>._identifiedView.getter;
}

uint64_t (*static OutlineGroup.ChildPath.binding<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8))@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16 = swift_allocObject();
  v16[2] = a2;
  v16[3] = a3;
  v16[4] = a4;
  v16[5] = a5;
  v16[6] = a6;
  v16[7] = a7;
  v16[8] = a8;
  v16[9] = a1;
  type metadata accessor for Binding();
  swift_getWitnessTable();

  return partial apply for closure #1 in static OutlineGroup.ChildPath.binding<A>(_:);
}

uint64_t closure #1 in static OutlineGroup.ChildPath.binding<A>(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v66 = a7;
  v67 = a8;
  v62 = a6;
  v63 = a3;
  v64 = a4;
  v65 = a5;
  v68 = a9;
  v12 = (*a2 + *MEMORY[0x1E69E6CE8]);
  v13 = *v12;
  v14 = type metadata accessor for Binding();
  v60 = *(v14 - 8);
  v15 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v58 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v61 = &v53 - v17;
  v18 = v12[1];
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v53 - v21;
  v23 = *(v13 - 8);
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = &v53 - v26;
  v59 = v28;
  v29 = a1;
  MEMORY[0x18D00ACC0](v25);
  swift_getAtKeyPath();
  (*(v23 + 8))(v27, v13);
  v30 = *(v18 + 16);
  v31 = 1;
  LODWORD(a1) = (*(*(v30 - 8) + 48))(v22, 1, v30);
  (*(v19 + 8))(v22, v18);
  if (a1 != 1)
  {
    v56 = v29;
    v57 = a10;
    v32 = v60;
    v55 = *(v60 + 16);
    v33 = v59;
    v55(v61, v29, v59);
    v34 = (*(v32 + 80) + 96) & ~*(v32 + 80);
    v54 = v34;
    v35 = (v15 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
    v36 = swift_allocObject();
    *(v36 + 2) = 0;
    *(v36 + 3) = 0;
    v37 = v64;
    *(v36 + 4) = v63;
    *(v36 + 5) = v37;
    v38 = v61;
    v39 = v62;
    *(v36 + 6) = v65;
    *(v36 + 7) = v39;
    v40 = v66;
    v41 = v67;
    *(v36 + 8) = v30;
    *(v36 + 9) = v40;
    v42 = v57;
    *(v36 + 10) = v41;
    *(v36 + 11) = v42;
    v43 = *(v32 + 32);
    v43(&v36[v34], v38, v33);
    *&v36[v35] = a2;
    v44 = v58;
    v55(v58, v56, v33);
    v45 = swift_allocObject();
    *(v45 + 2) = 0;
    *(v45 + 3) = 0;
    v46 = v64;
    *(v45 + 4) = v63;
    *(v45 + 5) = v46;
    v47 = v62;
    *(v45 + 6) = v65;
    *(v45 + 7) = v47;
    v48 = v66;
    v49 = v67;
    *(v45 + 8) = v30;
    *(v45 + 9) = v48;
    v50 = v57;
    *(v45 + 10) = v49;
    *(v45 + 11) = v50;
    v43(&v45[v54], v44, v33);
    *&v45[v35] = a2;
    swift_retain_n();
    Binding.init(get:set:)();
    v31 = 0;
  }

  v51 = type metadata accessor for Binding();
  return (*(*(v51 - 8) + 56))(v68, v31, 1, v51);
}

uint64_t closure #1 in closure #1 in static OutlineGroup.ChildPath.binding<A>(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = *(*a2 + *MEMORY[0x1E69E6CE8] + 8) - 8;
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v17 - v5;
  v8 = *v7;
  v9 = *(*v7 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v17 - v11;
  v13 = type metadata accessor for Binding();
  MEMORY[0x18D00ACC0](v13);
  swift_getAtKeyPath();
  (*(v9 + 8))(v12, v8);
  v14 = *(v4 + 24);
  v15 = *(v14 - 8);
  result = (*(v15 + 48))(v6, 1, v14);
  if (result != 1)
  {
    return (*(v15 + 32))(a3, v6, v14);
  }

  __break(1u);
  return result;
}

uint64_t closure #2 in closure #1 in static OutlineGroup.ChildPath.binding<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = (*a5 + *MEMORY[0x1E69E6CE8]);
  v6 = *v5;
  v7 = *(*v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v18 - v8;
  v11.n128_f64[0] = MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - v12;
  v15 = *(v14 + 24);
  v16 = *(v15 - 8);
  (*(v16 + 16))(&v18 - v12, v11);
  (*(v16 + 56))(v13, 0, 1, v15);
  type metadata accessor for Binding();
  MEMORY[0x18D00ACC0]();
  swift_setAtWritableKeyPath();
  specialized Binding.wrappedValue.setter();
  return (*(v7 + 8))(v9, v6);
}

uint64_t OutlineGroup<>.init<A>(_:children:content:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, ValueMetadata *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, void *a10)
{
  v36 = a2;
  v37 = a4;
  v39 = a3;
  v40 = a1;
  v38 = a9;
  KeyPath = a10;
  v14 = (*a2 + *MEMORY[0x1E69E77B0]);
  v15 = *(v14[1] + 16);
  v48 = a6;
  v49 = &type metadata for OutlineSubgroupChildren;
  v50 = a8;
  v51 = &protocol witness table for OutlineSubgroupChildren;
  v16 = type metadata accessor for DisclosureGroup();
  v17 = *v14;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v48 = v15;
  v49 = a5;
  v50 = a6;
  v51 = a6;
  v52 = v16;
  v53 = a7;
  v54 = AssociatedConformanceWitness;
  v18 = type metadata accessor for OutlinePrimitive.Base();
  v19.n128_f64[0] = MEMORY[0x1EEE9AC00](v18);
  v21 = &v31 - v20;
  v35 = *(v17 - 8);
  v22 = *(v35 + 16);
  v34 = v17;
  v22(&v31 - v20, v40, v17, v19);
  swift_storeEnumTagMultiPayload();
  v41 = v15;
  v42 = a5;
  v43 = a6;
  v44 = v17;
  v23 = a7;
  v45 = a7;
  v46 = a8;
  v47 = KeyPath;
  KeyPath = swift_getKeyPath();
  v24 = swift_checkMetadataState();
  v25 = swift_allocObject();
  v25[2] = a5;
  v25[3] = a6;
  v25[4] = a6;
  v25[5] = v24;
  v25[6] = a7;
  v26 = AssociatedConformanceWitness;
  v27 = v36;
  v25[7] = AssociatedConformanceWitness;
  v25[8] = v27;
  v28 = swift_allocObject();
  *(v28 + 16) = a6;
  *(v28 + 24) = a8;
  v29 = v37;

  OutlineGroup.init(base:id:children:parentContent:leafContent:grouping:)(v21, KeyPath, partial apply for implicit closure #1 in TabForEach<>._identifiedView.getter, v25, v39, v29, v39, v29, v38, partial apply for defaultGrouping<A>(isExpanded:parent:), v28, v15, a6, a6, v24, v23, v26);

  return (*(v35 + 8))(v40, v34);
}

{
  v39 = a2;
  v40 = a4;
  v42 = a3;
  v43 = a1;
  v41 = a9;
  KeyPath = a10;
  v13 = (*a2 + *MEMORY[0x1E69E77B0]);
  v14 = *(v13[1] + 16);
  v51 = a6;
  v52 = &type metadata for OutlineSubgroupChildren;
  v53 = a8;
  v54 = &protocol witness table for OutlineSubgroupChildren;
  v35 = a8;
  v16 = type metadata accessor for DisclosureGroup();
  v17 = *v13;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v51 = v14;
  v52 = a5;
  v53 = a6;
  v54 = a6;
  v55 = v16;
  v56 = a7;
  v57 = AssociatedConformanceWitness;
  v18 = type metadata accessor for OutlinePrimitive.Base();
  v19.n128_f64[0] = MEMORY[0x1EEE9AC00](v18);
  v21 = &v34 - v20;
  v22 = *(v14 - 8);
  v23 = *(v22 + 16);
  v37 = v14;
  v23(&v34 - v20, v43, v14, v19);
  swift_storeEnumTagMultiPayload();
  v44 = v14;
  v45 = a5;
  v46 = a6;
  v47 = v17;
  v48 = a7;
  v49 = a8;
  v50 = KeyPath;
  KeyPath = swift_getKeyPath();
  v24 = swift_checkMetadataState();
  v25 = swift_allocObject();
  v25[2] = a5;
  v25[3] = a6;
  v25[4] = a6;
  v25[5] = v24;
  v26 = a7;
  v27 = AssociatedConformanceWitness;
  v25[6] = a7;
  v25[7] = v27;
  v25[8] = v39;
  v28 = swift_allocObject();
  v29 = v35;
  *(v28 + 16) = a6;
  *(v28 + 24) = v29;
  v30 = v40;

  v33 = v26;
  v31 = v37;
  OutlineGroup.init(base:id:children:parentContent:leafContent:grouping:)(v21, KeyPath, partial apply for implicit closure #1 in TabForEach<>._identifiedView.getter, v25, v42, v30, v42, v30, v41, defaultGrouping<A>(isExpanded:parent:)partial apply, v28, v37, a6, a6, v24, v33, v27);

  return (*(v22 + 8))(v43, v31);
}

uint64_t defaultGrouping<A>(isExpanded:parent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v22 = a3;
  v23 = a7;
  v12 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v21[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = lazy protocol witness table accessor for type OutlineSubgroupChildren and conformance OutlineSubgroupChildren();
  v24 = a5;
  v25 = &type metadata for OutlineSubgroupChildren;
  v26 = a6;
  v27 = v15;
  v16 = type metadata accessor for DisclosureGroupConfiguration();
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v21[-v18];
  (*(v12 + 16))(v14, a4, a5, v17);

  DisclosureGroupConfiguration.init(isExpanded:label:)(a1, a2, v22, v14, a5, &type metadata for OutlineSubgroupChildren, v15, v19);
  return DisclosureGroup<>.init(configuration:)(v19, a5, &type metadata for OutlineSubgroupChildren, a6, v15, v23);
}

uint64_t OutlineGroup<>.init<A>(_:children:expandedElements:content:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v14 = *a2;
  v15 = static Array._allocateUninitialized(_:)();
  v16 = MEMORY[0x18D00CDF0](v15, a8);
  v17 = MEMORY[0x1E69E77B0];
  if (v16)
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    specialized Set.init(_nonEmptyArrayLiteral:)(v15, a8, AssociatedConformanceWitness);
  }

  v19 = *(*(v14 + *v17 + 8) + 16);
  *&v42 = a10;
  *(&v42 + 1) = &type metadata for OutlineSubgroupChildren;
  v20 = type metadata accessor for DisclosureGroup();
  v21 = swift_getAssociatedConformanceWitness();
  type metadata accessor for Set();
  StateOrBinding.init(wrappedValue:)();
  *a9 = v42;
  *(a9 + 16) = a12;
  *(a9 + 24) = &protocol witness table for OutlineSubgroupChildren;
  v22 = type metadata accessor for OutlineGroup();
  v23 = *(v19 - 8);
  (*(v23 + 16))(a9 + v22[19], a1, v19);
  type metadata accessor for OutlinePrimitive.Base();
  v24 = swift_storeEnumTagMultiPayload();
  MEMORY[0x1EEE9AC00](v24);
  *(a9 + v22[20]) = swift_getKeyPath();
  v25 = swift_allocObject();
  *(v25 + 2) = a8;
  *(v25 + 3) = a10;
  *(v25 + 4) = a10;
  *(v25 + 5) = v20;
  *(v25 + 6) = a11;
  *(v25 + 7) = v21;
  *(v25 + 8) = a2;
  (*(v23 + 8))(a1, v19);
  v26 = (a9 + v22[21]);
  *v26 = partial apply for implicit closure #1 in TabForEach<>._identifiedView.getter;
  v26[1] = v25;
  v27 = (a9 + v22[22]);
  *v27 = a6;
  v27[1] = a7;
  v28 = (a9 + v22[23]);
  *v28 = a6;
  v28[1] = a7;
  v29 = swift_allocObject();
  *(v29 + 16) = a10;
  *(v29 + 24) = a12;
  v30 = (a9 + v22[24]);
  *v30 = defaultGrouping<A>(isExpanded:parent:)partial apply;
  v30[1] = v29;
  v31 = *a9;
  v32 = *(a9 + 8);
  v33 = *(a9 + 16);
  LOBYTE(v22) = *(a9 + 24);

  result = outlined consume of StateOrBinding<Set<B>><A, B, C, D, E><A1>(v31, v32, v33, v22);
  *a9 = a3;
  *(a9 + 8) = a4;
  *(a9 + 16) = a5;
  *(a9 + 24) = 1;
  return result;
}

uint64_t OutlineGroup<>.init<A>(_:id:children:content:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v38 = a5;
  v39 = a2;
  v40 = a9;
  v41 = a4;
  v34 = a1;
  v35 = a3;
  v14 = *a2;
  v15 = *MEMORY[0x1E69E77B0];
  v16 = *MEMORY[0x1E69E77B0] + 8;
  v17 = *(*(*a3 + v16) + 16);
  v36 = a10;
  v37 = v17;
  v18 = *(v14 + v16);
  v42 = v17;
  v43 = v18;
  v44 = a6;
  v45 = a6;
  v46 = type metadata accessor for DisclosureGroup();
  v47 = a7;
  v19 = a7;
  v48 = a8;
  v20 = a8;
  v21 = type metadata accessor for OutlinePrimitive.Base();
  v22.n128_f64[0] = MEMORY[0x1EEE9AC00](v21);
  v24 = &v33 - v23;
  v33 = *(v14 + v15);
  v25 = *(v33 - 8);
  (*(v25 + 16))(&v33 - v23, a1, v33, v22);
  swift_storeEnumTagMultiPayload();
  v26 = swift_checkMetadataState();
  v27 = swift_allocObject();
  v27[2] = v18;
  v27[3] = a6;
  v27[4] = a6;
  v27[5] = v26;
  v27[6] = v19;
  v27[7] = v20;
  v28 = v20;
  v27[8] = v35;
  v29 = swift_allocObject();
  v30 = v36;
  *(v29 + 16) = a6;
  *(v29 + 24) = v30;
  v31 = v38;

  OutlineGroup.init(base:id:children:parentContent:leafContent:grouping:)(v24, v39, partial apply for implicit closure #1 in TabForEach<>._identifiedView.getter, v27, v41, v31, v41, v31, v40, defaultGrouping<A>(isExpanded:parent:)partial apply, v29, v37, a6, a6, v26, v19, v28);

  return (*(v25 + 8))(v34, v33);
}

{
  v35 = a8;
  v36 = a1;
  v38 = a5;
  v39 = a2;
  v40 = a9;
  v41 = a4;
  v15 = *a2;
  v16 = *MEMORY[0x1E69E77B0] + 8;
  v17 = *(*a3 + v16);
  v37 = a10;
  v18 = *(v15 + v16);
  v42 = *(v17 + 16);
  v43 = v18;
  v44 = a6;
  v45 = a6;
  v46 = type metadata accessor for DisclosureGroup();
  v47 = a7;
  v48 = a8;
  v19 = type metadata accessor for OutlinePrimitive.Base();
  v20.n128_f64[0] = MEMORY[0x1EEE9AC00](v19);
  v22 = &v33 - v21;
  v34 = v42;
  v23 = *(v42 - 8);
  (*(v23 + 16))(&v33 - v21, a1, v42, v20);
  swift_storeEnumTagMultiPayload();
  v24 = swift_checkMetadataState();
  v25 = swift_allocObject();
  v25[2] = v18;
  v25[3] = a6;
  v25[4] = a6;
  v25[5] = v24;
  v26 = v35;
  v25[6] = a7;
  v25[7] = v26;
  v25[8] = a3;
  v27 = swift_allocObject();
  v28 = v37;
  v29 = v38;
  *(v27 + 16) = a6;
  *(v27 + 24) = v28;

  v32 = v24;
  v30 = v34;
  OutlineGroup.init(base:id:children:parentContent:leafContent:grouping:)(v22, v39, partial apply for implicit closure #1 in TabForEach<>._identifiedView.getter, v25, v41, v29, v41, v29, v40, defaultGrouping<A>(isExpanded:parent:)partial apply, v27, v34, a6, a6, v32, a7, v26);

  return (*(v23 + 8))(v36, v30);
}

uint64_t OutlineGroup<>.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v55 = a3;
  v56 = a4;
  v54 = a2;
  v57 = a5;
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v12 = *(a1 + 64);
  v62 = *(a1 + 16);
  v63 = v7;
  v51 = v8;
  v52 = v62;
  v64 = v8;
  v65 = v9;
  v13 = v8;
  v14 = v9;
  v49 = v10;
  v50 = v9;
  v66 = v10;
  v67 = v11;
  v15 = v10;
  v16 = v11;
  v48 = v11;
  v68 = v12;
  v47 = v12;
  v46 = type metadata accessor for OutlinePrimitive.Base();
  v17 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v58 = &v42 - v18;
  v63 = v7;
  v64 = v13;
  v65 = v14;
  v66 = v15;
  v67 = v16;
  v68 = v12;
  v19 = type metadata accessor for OutlinePrimitive();
  v53 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v42 - v24;
  (*(v17 + 16))(v58, v5 + *(a1 + 76), v46, v23);
  v26 = *(v5 + *(a1 + 80));
  v27 = (v5 + *(a1 + 84));
  v28 = v27[1];
  v46 = *v27;

  v45 = OutlineGroup.$expandedElements.getter();
  v44 = v29;
  v43 = v30;
  v31 = *(a1 + 92);
  v32 = (v5 + *(a1 + 88));
  v33 = v32[1];
  v42 = *v32;
  v34 = *(v5 + v31);
  v35 = *(v5 + v31 + 8);
  v36 = (v5 + *(a1 + 96));
  v38 = *v36;
  v37 = v36[1];

  OutlinePrimitive.init(base:id:children:expandedElements:parentContent:leafContent:grouping:)(v58, v26, v46, v28, v45, v44, v43, v42, v21, v33, v34, v35, v38, v37);
  v59 = v54;
  v60 = v55;
  v61 = v56;
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v21, v19, WitnessTable);
  v40 = *(v53 + 8);
  v40(v21, v19);
  static ViewBuilder.buildExpression<A>(_:)(v25, v19, WitnessTable);
  return (v40)(v25, v19);
}

uint64_t OutlineGroup<>.init<A, B>(_:children:content:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, ValueMetadata *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t (*a8)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v38 = a8;
  v39 = a7;
  v45 = a4;
  v47 = a3;
  v48 = a1;
  v44 = a2;
  v46 = a9;
  v15 = *a2;
  v37 = a10;
  v16 = (v15 + *MEMORY[0x1E69E6CE8]);
  KeyPath = *(v16[1] + 16);
  v42 = type metadata accessor for Binding();
  v57 = a6;
  v58 = &type metadata for OutlineSubgroupChildren;
  v59 = a7;
  v60 = &protocol witness table for OutlineSubgroupChildren;
  v17 = type metadata accessor for DisclosureGroup();
  v64 = a8;
  v65 = a10;
  WitnessTable = swift_getWitnessTable();
  v18 = *v16;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v57 = v42;
  v58 = a5;
  v59 = a6;
  v60 = a6;
  v61 = v17;
  v62 = WitnessTable;
  v63 = AssociatedConformanceWitness;
  v19 = type metadata accessor for OutlinePrimitive.Base();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v35 - v20;
  v41 = type metadata accessor for Binding();
  v22 = *(v41 - 8);
  (*(v22 + 16))(v21, v48, v41);
  swift_storeEnumTagMultiPayload();
  v49 = a5;
  v50 = a6;
  v51 = KeyPath;
  v52 = v18;
  v23 = v39;
  v24 = v38;
  v53 = v39;
  v54 = v38;
  v25 = v37;
  v55 = v37;
  v56 = a11;
  KeyPath = swift_getKeyPath();
  v26 = swift_checkMetadataState();
  v27 = a5;
  v28 = AssociatedConformanceWitness;
  v38 = static OutlineGroup.ChildPath.binding<A>(_:)(v44, v27, a6, a6, v26, AssociatedConformanceWitness, v24, v25);
  v30 = v29;
  v31 = swift_allocObject();
  *(v31 + 16) = a6;
  *(v31 + 24) = v23;
  v32 = v45;
  swift_retain_n();
  v33 = swift_checkMetadataState();
  OutlineGroup.init(base:id:children:parentContent:leafContent:grouping:)(v21, KeyPath, v38, v30, v47, v32, v47, v32, v46, defaultGrouping<A>(isExpanded:parent:)partial apply, v31, v33, a6, a6, v26, WitnessTable, v28);

  return (*(v22 + 8))(v48, v41);
}

uint64_t OutlineGroup<>.init<A, B>(_:children:content:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, void *a11)
{
  v38 = a8;
  v39 = a7;
  v41 = a4;
  v43 = a3;
  v44 = a2;
  v45 = a1;
  v42 = a9;
  v15 = *a2;
  KeyPath = a11;
  v16 = (v15 + *MEMORY[0x1E69E6CE8]);
  v17 = *(v16[1] + 16);
  v18 = type metadata accessor for Binding();
  v54 = a6;
  v55 = &type metadata for OutlineSubgroupChildren;
  v56 = a7;
  v57 = &protocol witness table for OutlineSubgroupChildren;
  v19 = type metadata accessor for DisclosureGroup();
  v61 = a8;
  v62 = a10;
  WitnessTable = swift_getWitnessTable();
  v20 = *v16;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v54 = v18;
  v55 = a5;
  v56 = a6;
  v57 = a6;
  v58 = v19;
  v59 = WitnessTable;
  v60 = AssociatedConformanceWitness;
  v21 = type metadata accessor for OutlinePrimitive.Base();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &KeyPath - v22;
  v24 = swift_checkMetadataState();
  v25 = *(v24 - 8);
  (*(v25 + 16))(v23, v45, v24);
  swift_storeEnumTagMultiPayload();
  v46 = a5;
  v47 = a6;
  v48 = v17;
  v49 = v20;
  v26 = v39;
  v27 = v38;
  v50 = v39;
  v51 = v38;
  v52 = a10;
  v53 = KeyPath;
  KeyPath = swift_getKeyPath();
  v28 = swift_checkMetadataState();
  v29 = AssociatedConformanceWitness;
  v30 = static OutlineGroup.ChildPath.binding<A>(_:)(v44, a5, a6, a6, v28, AssociatedConformanceWitness, v27, a10);
  v32 = v31;
  v33 = swift_allocObject();
  *(v33 + 16) = a6;
  *(v33 + 24) = v26;
  v34 = v41;
  swift_retain_n();
  OutlineGroup.init(base:id:children:parentContent:leafContent:grouping:)(v23, KeyPath, v30, v32, v43, v34, v43, v34, v42, defaultGrouping<A>(isExpanded:parent:)partial apply, v33, v24, a6, a6, v28, WitnessTable, v29);

  return (*(v25 + 8))(v45, v24);
}

uint64_t OutlineGroup<>.init<A, B>(_:id:children:content:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v39 = a5;
  v41 = a4;
  v42 = a2;
  v43 = a1;
  v40 = a9;
  v14 = *a2;
  v38 = a3;
  v15 = *(*(*a3 + *MEMORY[0x1E69E6CE8] + 8) + 16);
  v36 = type metadata accessor for Binding();
  v16 = (v14 + *MEMORY[0x1E69E77B0]);
  v17 = v16[1];
  v33 = a8;
  v34 = type metadata accessor for DisclosureGroup();
  v59 = a10;
  v60 = a11;
  WitnessTable = swift_getWitnessTable();
  v52 = v36;
  v53 = v17;
  v54 = a6;
  v55 = a6;
  v56 = v34;
  v57 = WitnessTable;
  v32 = a7;
  v58 = a7;
  v18 = type metadata accessor for OutlinePrimitive.Base();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v32 - v19;
  v44 = v17;
  v45 = a6;
  v46 = v15;
  v47 = *v16;
  v48 = a7;
  v49 = a8;
  v50 = a10;
  v51 = a11;
  swift_getKeyPath();
  v35 = _AppendKeyPath.appending<A, B, C>(path:)();

  v21 = type metadata accessor for Binding();
  v22 = *(v21 - 8);
  (*(v22 + 16))(v20, v43, v21);
  swift_storeEnumTagMultiPayload();
  v23 = swift_checkMetadataState();
  v24 = v32;
  v34 = static OutlineGroup.ChildPath.binding<A>(_:)(v38, v17, a6, a6, v23, v32, a10, a11);
  v26 = v25;
  v27 = swift_allocObject();
  v28 = v33;
  *(v27 + 16) = a6;
  *(v27 + 24) = v28;
  v29 = v39;
  swift_retain_n();
  v30 = swift_checkMetadataState();
  OutlineGroup.init(base:id:children:parentContent:leafContent:grouping:)(v20, v35, v34, v26, v41, v29, v41, v29, v40, defaultGrouping<A>(isExpanded:parent:)partial apply, v27, v30, a6, a6, v23, WitnessTable, v24);

  return (*(v22 + 8))(v43, v21);
}

{
  v42 = a5;
  v44 = a4;
  v45 = a2;
  v46 = a1;
  v43 = a9;
  v14 = *a2;
  v41 = a3;
  v15 = *a3;
  v34[1] = a11;
  v16 = *(*(v15 + *MEMORY[0x1E69E6CE8] + 8) + 16);
  v17 = type metadata accessor for Binding();
  v18 = (v14 + *MEMORY[0x1E69E77B0]);
  v19 = v18[1];
  v20 = a8;
  v38 = a8;
  v39 = type metadata accessor for DisclosureGroup();
  v62 = a10;
  v63 = a11;
  v35 = a10;
  WitnessTable = swift_getWitnessTable();
  v55 = v17;
  v56 = v19;
  v36 = v19;
  v57 = a6;
  v58 = a6;
  v59 = v39;
  v60 = WitnessTable;
  v61 = a7;
  v21 = type metadata accessor for OutlinePrimitive.Base();
  MEMORY[0x1EEE9AC00](v21);
  v23 = v34 - v22;
  v47 = v19;
  v48 = a6;
  v49 = v16;
  v50 = *v18;
  v51 = a7;
  v52 = v20;
  v53 = a10;
  v54 = a11;
  swift_getKeyPath();
  v37 = _AppendKeyPath.appending<A, B, C>(path:)();

  v24 = swift_checkMetadataState();
  v25 = *(v24 - 8);
  (*(v25 + 16))(v23, v46, v24);
  swift_storeEnumTagMultiPayload();
  v26 = swift_checkMetadataState();
  v27 = a7;
  v39 = static OutlineGroup.ChildPath.binding<A>(_:)(v41, v36, a6, a6, v26, a7, v35, a11);
  v29 = v28;
  v30 = swift_allocObject();
  v31 = v38;
  *(v30 + 16) = a6;
  *(v30 + 24) = v31;
  v32 = v42;
  swift_retain_n();
  OutlineGroup.init(base:id:children:parentContent:leafContent:grouping:)(v23, v37, v39, v29, v44, v32, v44, v32, v43, defaultGrouping<A>(isExpanded:parent:)partial apply, v30, v24, a6, a6, v26, WitnessTable, v27);

  return (*(v25 + 8))(v46, v24);
}