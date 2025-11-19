uint64_t storeEnumTagSinglePayload for MenuBarExtraConfiguration(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t PlaybackButton.Configuration.encode(to:)(void *a1)
{
  v3 = v1;
  type metadata accessor for KeyedEncodingContainer<PlaybackButton.State.PausedCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<PlaybackButton.Configuration.CodingKeys>, lazy protocol witness table accessor for type PlaybackButton.Configuration.CodingKeys and conformance PlaybackButton.Configuration.CodingKeys, &unk_1EFF98AD8, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PlaybackButton.Configuration.CodingKeys and conformance PlaybackButton.Configuration.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v15) = 0;
  type metadata accessor for ClosedRange<Date>();
  _sSNy10Foundation4DateVGSNyxGSesSeRzrlWlTm_0(&lazy protocol witness table cache variable for type ClosedRange<Date> and conformance <> ClosedRange<A>, lazy protocol witness table accessor for type Date and conformance Date);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v2)
  {
    v10 = type metadata accessor for PlaybackButton.Configuration(0);
    LOBYTE(v15) = 1;
    type metadata accessor for PlaybackButton.State(0);
    lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type PlaybackButton.State and conformance PlaybackButton.State, type metadata accessor for PlaybackButton.State);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v15) = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v15) = *(v3 + v10[7]);
    v19 = 3;
    lazy protocol witness table accessor for type PlaybackButton.Phase and conformance PlaybackButton.Phase();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v15) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = *(v3 + v10[9]);
    v19 = 5;
    lazy protocol witness table accessor for type CodableAlignment and conformance CodableAlignment();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v11 = (v3 + v10[10]);
    v12 = *(v11 + 16);
    v13 = *(v11 + 5);
    v15 = *v11;
    v16 = v12;
    v17 = *(v11 + 24);
    v18 = v13;
    v19 = 6;
    lazy protocol witness table accessor for type AppIntentAction and conformance AppIntentAction();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PlaybackButton.Configuration.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized PlaybackButton.Configuration.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PlaybackButton.Configuration.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PlaybackButton.Configuration.CodingKeys and conformance PlaybackButton.Configuration.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PlaybackButton.Configuration.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PlaybackButton.Configuration.CodingKeys and conformance PlaybackButton.Configuration.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PlaybackButton.State.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PlaybackButton.State.CodingKeys and conformance PlaybackButton.State.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PlaybackButton.State.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PlaybackButton.State.CodingKeys and conformance PlaybackButton.State.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PlaybackButton.State.PausedCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PlaybackButton.State.PausedCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PlaybackButton.State.PausedCodingKeys and conformance PlaybackButton.State.PausedCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PlaybackButton.State.PausedCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PlaybackButton.State.PausedCodingKeys and conformance PlaybackButton.State.PausedCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PlaybackButton.State.PlayingCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PlaybackButton.State.PlayingCodingKeys and conformance PlaybackButton.State.PlayingCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PlaybackButton.State.PlayingCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PlaybackButton.State.PlayingCodingKeys and conformance PlaybackButton.State.PlayingCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PlaybackButton.State.UnplayedCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PlaybackButton.State.UnplayedCodingKeys and conformance PlaybackButton.State.UnplayedCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PlaybackButton.State.UnplayedCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PlaybackButton.State.UnplayedCodingKeys and conformance PlaybackButton.State.UnplayedCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PlaybackButton.State.encode(to:)(void *a1)
{
  v2 = MEMORY[0x1E69E6F58];
  type metadata accessor for KeyedEncodingContainer<PlaybackButton.State.PausedCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<PlaybackButton.State.PausedCodingKeys>, lazy protocol witness table accessor for type PlaybackButton.State.PausedCodingKeys and conformance PlaybackButton.State.PausedCodingKeys, &unk_1EFF98998, MEMORY[0x1E69E6F58]);
  v38 = v3;
  v36 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v37 = &v30 - v4;
  v5 = type metadata accessor for Date();
  v40 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v39 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for KeyedEncodingContainer<PlaybackButton.State.PausedCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<PlaybackButton.State.PlayingCodingKeys>, lazy protocol witness table accessor for type PlaybackButton.State.PlayingCodingKeys and conformance PlaybackButton.State.PlayingCodingKeys, &unk_1EFF98908, v2);
  v34 = *(v7 - 8);
  v35 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v33 = &v30 - v8;
  type metadata accessor for KeyedEncodingContainer<PlaybackButton.State.PausedCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<PlaybackButton.State.UnplayedCodingKeys>, lazy protocol witness table accessor for type PlaybackButton.State.UnplayedCodingKeys and conformance PlaybackButton.State.UnplayedCodingKeys, &unk_1EFF988E8, v2);
  v31 = *(v9 - 8);
  v32 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v30 - v10;
  v12 = type metadata accessor for PlaybackButton.State(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for KeyedEncodingContainer<PlaybackButton.State.PausedCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<PlaybackButton.State.CodingKeys>, lazy protocol witness table accessor for type PlaybackButton.State.CodingKeys and conformance PlaybackButton.State.CodingKeys, &unk_1EFF988C8, v2);
  v42 = v15;
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v30 - v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PlaybackButton.State.CodingKeys and conformance PlaybackButton.State.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  outlined init with copy of PlaybackButton.State(v41, v14, type metadata accessor for PlaybackButton.State);
  v19 = v40;
  v20 = v5;
  v21 = (*(v40 + 48))(v14, 2, v5);
  if (v21)
  {
    if (v21 == 1)
    {
      v43 = 0;
      lazy protocol witness table accessor for type PlaybackButton.State.UnplayedCodingKeys and conformance PlaybackButton.State.UnplayedCodingKeys();
      v22 = v42;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v31 + 8))(v11, v32);
    }

    else
    {
      v44 = 1;
      lazy protocol witness table accessor for type PlaybackButton.State.PlayingCodingKeys and conformance PlaybackButton.State.PlayingCodingKeys();
      v29 = v33;
      v22 = v42;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v34 + 8))(v29, v35);
    }

    return (*(v16 + 8))(v18, v22);
  }

  else
  {
    v23 = v36;
    v24 = v19;
    (*(v19 + 32))(v39, v14, v20);
    v45 = 2;
    lazy protocol witness table accessor for type PlaybackButton.State.PausedCodingKeys and conformance PlaybackButton.State.PausedCodingKeys();
    v25 = v37;
    v26 = v42;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    lazy protocol witness table accessor for type Date and conformance Date();
    v27 = v38;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v23 + 8))(v25, v27);
    (*(v24 + 8))(v39, v20);
    return (*(v16 + 8))(v18, v26);
  }
}

uint64_t specialized Collection<>.popFirst()()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 5;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 6;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL specialized Collection<>.popFirst()()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24) >> 1;
  if (v1 != v2)
  {
    if (v1 >= v2)
    {
      __break(1u);
      return result;
    }

    *(v0 + 16) = v1 + 1;
  }

  return v1 == v2;
}

Swift::Void __swiftcall PlaybackButton.Phase.toggle()()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v0)
  {
    if (*v0 != 2)
    {
      return;
    }

    v5 = 3;
  }

  else
  {
    v5 = 1;
  }

  *v0 = v5;
  v15 = v5;
  v6 = String.init<A>(describing:)();
  v8 = v7;
  static Log.archivedPlaybackButton.getter();

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v14 = v12;
    *v11 = 136315138;
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v8, &v14);

    *(v11 + 4) = v13;
    _os_log_impl(&dword_18BD4A000, v9, v10, "Transitioning state to %s from button tap.", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x18D0110E0](v12, -1, -1);
    MEMORY[0x18D0110E0](v11, -1, -1);
  }

  else
  {
  }

  (*(v2 + 8))(v4, v1);
}

uint64_t PlaybackButton.Phase.encode(to:)(void *a1, int a2)
{
  v35 = a2;
  v3 = MEMORY[0x1E69E6F58];
  type metadata accessor for KeyedEncodingContainer<PlaybackButton.State.PausedCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<PlaybackButton.Phase.PendingPauseCodingKeys>, lazy protocol witness table accessor for type PlaybackButton.Phase.PendingPauseCodingKeys and conformance PlaybackButton.Phase.PendingPauseCodingKeys, &unk_1EFF98D08, MEMORY[0x1E69E6F58]);
  v33 = *(v4 - 8);
  v34 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v32 = &v24 - v5;
  type metadata accessor for KeyedEncodingContainer<PlaybackButton.State.PausedCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<PlaybackButton.Phase.PlayingCodingKeys>, lazy protocol witness table accessor for type PlaybackButton.Phase.PlayingCodingKeys and conformance PlaybackButton.Phase.PlayingCodingKeys, &unk_1EFF98CE8, v3);
  v30 = *(v6 - 8);
  v31 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v29 = &v24 - v7;
  type metadata accessor for KeyedEncodingContainer<PlaybackButton.State.PausedCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<PlaybackButton.Phase.PendingPlayCodingKeys>, lazy protocol witness table accessor for type PlaybackButton.Phase.PendingPlayCodingKeys and conformance PlaybackButton.Phase.PendingPlayCodingKeys, &unk_1EFF98CC8, v3);
  v27 = *(v8 - 8);
  v28 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24 - v9;
  type metadata accessor for KeyedEncodingContainer<PlaybackButton.State.PausedCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<PlaybackButton.Phase.PausedCodingKeys>, lazy protocol witness table accessor for type PlaybackButton.Phase.PausedCodingKeys and conformance PlaybackButton.Phase.PausedCodingKeys, &unk_1EFF98CA8, v3);
  v25 = *(v11 - 8);
  v26 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v24 - v12;
  type metadata accessor for KeyedEncodingContainer<PlaybackButton.State.PausedCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<PlaybackButton.Phase.CodingKeys>, lazy protocol witness table accessor for type PlaybackButton.Phase.CodingKeys and conformance PlaybackButton.Phase.CodingKeys, &unk_1EFF98C88, v3);
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PlaybackButton.Phase.CodingKeys and conformance PlaybackButton.Phase.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v19 = (v16 + 8);
  if (v35 > 1u)
  {
    if (v35 == 2)
    {
      v38 = 2;
      lazy protocol witness table accessor for type PlaybackButton.Phase.PlayingCodingKeys and conformance PlaybackButton.Phase.PlayingCodingKeys();
      v20 = v29;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v22 = v30;
      v21 = v31;
    }

    else
    {
      v39 = 3;
      lazy protocol witness table accessor for type PlaybackButton.Phase.PendingPauseCodingKeys and conformance PlaybackButton.Phase.PendingPauseCodingKeys();
      v20 = v32;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v22 = v33;
      v21 = v34;
    }

    (*(v22 + 8))(v20, v21);
  }

  else if (v35)
  {
    v37 = 1;
    lazy protocol witness table accessor for type PlaybackButton.Phase.PendingPlayCodingKeys and conformance PlaybackButton.Phase.PendingPlayCodingKeys();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v27 + 8))(v10, v28);
  }

  else
  {
    v36 = 0;
    lazy protocol witness table accessor for type PlaybackButton.Phase.PausedCodingKeys and conformance PlaybackButton.Phase.PausedCodingKeys();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v25 + 8))(v13, v26);
  }

  return (*v19)(v18, v15);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PlaybackButton.Phase.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PlaybackButton.Phase.CodingKeys and conformance PlaybackButton.Phase.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PlaybackButton.Phase.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PlaybackButton.Phase.CodingKeys and conformance PlaybackButton.Phase.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PlaybackButton.Phase.PausedCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PlaybackButton.Phase.PausedCodingKeys and conformance PlaybackButton.Phase.PausedCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PlaybackButton.Phase.PausedCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PlaybackButton.Phase.PausedCodingKeys and conformance PlaybackButton.Phase.PausedCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PlaybackButton.Phase.PendingPauseCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PlaybackButton.Phase.PendingPauseCodingKeys and conformance PlaybackButton.Phase.PendingPauseCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PlaybackButton.Phase.PendingPauseCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PlaybackButton.Phase.PendingPauseCodingKeys and conformance PlaybackButton.Phase.PendingPauseCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PlaybackButton.Phase.PendingPlayCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PlaybackButton.Phase.PendingPlayCodingKeys and conformance PlaybackButton.Phase.PendingPlayCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PlaybackButton.Phase.PendingPlayCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PlaybackButton.Phase.PendingPlayCodingKeys and conformance PlaybackButton.Phase.PendingPlayCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PlaybackButton.Phase.PlayingCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PlaybackButton.Phase.PlayingCodingKeys and conformance PlaybackButton.Phase.PlayingCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PlaybackButton.Phase.PlayingCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PlaybackButton.Phase.PlayingCodingKeys and conformance PlaybackButton.Phase.PlayingCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PlaybackButton.init(interval:state:systemImage:alignment:lnAction:perform:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  *a9 = swift_getKeyPath();
  *(a9 + 8) = 0;
  *(a9 + 16) = 0;
  *(a9 + 24) = swift_getKeyPath();
  *(a9 + 32) = 0;
  *(a9 + 40) = swift_getKeyPath();
  *(a9 + 48) = 0;
  KeyPath = swift_getKeyPath();
  v19 = a9 + *(type metadata accessor for PlaybackButton(0) + 28);
  outlined init with take of PlaybackButton.State(a1, v19, type metadata accessor for ClosedRange<Date>?);
  v20 = type metadata accessor for PlaybackButton.Configuration(0);
  result = outlined init with take of PlaybackButton.State(a2, v19 + v20[5], type metadata accessor for PlaybackButton.State);
  v22 = (v19 + v20[6]);
  *v22 = a3;
  v22[1] = a4;
  *(v19 + v20[7]) = 0;
  *(v19 + v20[8]) = 0;
  v23 = (v19 + v20[9]);
  *v23 = a5;
  v23[1] = a6;
  v24 = v19 + v20[10];
  *v24 = KeyPath;
  *(v24 + 8) = 0;
  *(v24 + 16) = 0;
  *(v24 + 24) = a7;
  *(v24 + 32) = a8;
  *(v24 + 40) = a10;
  return result;
}

uint64_t PlaybackButton.init(interval:state:playSystemImage:pauseSystemImage:lnAction:perform:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>, uint64_t a8)
{

  *a7 = swift_getKeyPath();
  *(a7 + 8) = 0;
  *(a7 + 16) = 0;
  *(a7 + 24) = swift_getKeyPath();
  *(a7 + 32) = 0;
  *(a7 + 40) = swift_getKeyPath();
  *(a7 + 48) = 0;
  v14 = a7 + *(type metadata accessor for PlaybackButton(0) + 28);
  outlined init with copy of PlaybackButton.State(a1, v14, type metadata accessor for ClosedRange<Date>);
  type metadata accessor for ClosedRange<Date>();
  (*(*(v15 - 8) + 56))(v14, 0, 1, v15);
  v16 = type metadata accessor for PlaybackButton.Configuration(0);
  outlined init with copy of PlaybackButton.State(a2, v14 + v16[5], type metadata accessor for PlaybackButton.State);
  v17 = static Alignment.center.getter();
  v19 = v18;
  outlined destroy of PlaybackButton.State(a2, type metadata accessor for PlaybackButton.State);
  outlined destroy of PlaybackButton.State(a1, type metadata accessor for ClosedRange<Date>);
  result = swift_getKeyPath();
  v21 = (v14 + v16[6]);
  *v21 = a3;
  v21[1] = a4;
  *(v14 + v16[7]) = 0;
  *(v14 + v16[8]) = 0;
  v22 = (v14 + v16[9]);
  *v22 = v17;
  v22[1] = v19;
  v23 = v14 + v16[10];
  *v23 = result;
  *(v23 + 8) = 0;
  *(v23 + 16) = 0;
  *(v23 + 24) = a5;
  *(v23 + 32) = a6;
  *(v23 + 40) = a8;
  return result;
}

double PlaybackButton.body.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PlaybackButton.State(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v25[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for PlaybackButton.Configuration(0);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v25[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for PlaybackButton(0);
  outlined init with copy of PlaybackButton.State(v1 + *(v10 + 28), v9, type metadata accessor for PlaybackButton.Configuration);
  specialized Environment.wrappedValue.getter(*v1, *(v1 + 8), *(v1 + 16) | (*(v1 + 17) << 8), v28);
  v11 = v28[0];
  v12 = v28[1];
  v26 = v29;
  v13 = specialized Environment.wrappedValue.getter(*(v1 + 24), *(v1 + 32));
  v14 = specialized Environment.wrappedValue.getter(*(v1 + 40), *(v1 + 48));
  outlined init with copy of PlaybackButton.State(&v9[*(v7 + 28)], v5, type metadata accessor for PlaybackButton.State);
  *a1 = specialized PlaybackButton.Phase.init(_:)(v5);
  *(a1 + 8) = 0;
  v15 = type metadata accessor for ResolvedPlaybackButton(0);
  outlined init with copy of PlaybackButton.State(v9, a1 + v15[5], type metadata accessor for PlaybackButton.Configuration);
  v16 = &v9[*(v7 + 48)];
  v17 = *v16;
  v18 = *(v16 + 1);
  v19 = v16[16];
  v20 = *(v16 + 5);
  *v27 = *(v16 + 24);
  outlined copy of Environment<AppIntentExecutor?>.Content(v17, v18, v19, outlined copy of AppIntentExecutor?);
  v21 = *&v27[0];

  outlined destroy of PlaybackButton.State(v9, type metadata accessor for PlaybackButton.Configuration);
  v22 = a1 + v15[6];
  *v22 = v17;
  *(v22 + 8) = v18;
  *(v22 + 16) = v19;
  result = v27[0];
  *(v22 + 24) = *v27;
  *(v22 + 40) = v20;
  v24 = a1 + v15[7];
  *v24 = v11;
  *(v24 + 8) = v12;
  *(v24 + 16) = v26;
  *(a1 + v15[9]) = v13;
  *(a1 + v15[8]) = v14;
  return result;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance PlaybackButton(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type PlaybackButton and conformance PlaybackButton, type metadata accessor for PlaybackButton);

  return MEMORY[0x1EEDE2370](a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance PlaybackButton(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type PlaybackButton and conformance PlaybackButton, type metadata accessor for PlaybackButton);

  return MEMORY[0x1EEDE2378](a1, a2, a3, v6);
}

int *PlaybackButton.archivedBody.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PlaybackButton.State(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PlaybackButton.Configuration(0);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = *(type metadata accessor for PlaybackButton(0) + 28);
  outlined init with copy of PlaybackButton.State(v1 + v39, v9, type metadata accessor for PlaybackButton.Configuration);
  specialized Environment.wrappedValue.getter(*v1, *(v1 + 8), *(v1 + 16) | (*(v1 + 17) << 8), &v41);
  v34 = v42;
  v35 = v41;
  v33 = v43;
  v38 = *(v1 + 24);
  v37 = *(v1 + 32);
  v32 = specialized Environment.wrappedValue.getter(v38, v37);
  v36 = *(v1 + 40);
  v10 = *(v1 + 48);
  v11 = specialized Environment.wrappedValue.getter(v36, v10);
  outlined init with copy of PlaybackButton.State(&v9[*(v7 + 28)], v5, type metadata accessor for PlaybackButton.State);
  *a1 = specialized PlaybackButton.Phase.init(_:)(v5);
  *(a1 + 8) = 0;
  v12 = type metadata accessor for ResolvedPlaybackButton(0);
  outlined init with copy of PlaybackButton.State(v9, a1 + v12[5], type metadata accessor for PlaybackButton.Configuration);
  v13 = &v9[*(v7 + 48)];
  v15 = *v13;
  v14 = *(v13 + 1);
  v16 = v13[16];
  v17 = *(v13 + 5);
  v40 = *(v13 + 24);
  outlined copy of Environment<AppIntentExecutor?>.Content(v15, v14, v16, outlined copy of AppIntentExecutor?);
  v18 = v40;

  outlined destroy of PlaybackButton.State(v9, type metadata accessor for PlaybackButton.Configuration);
  v19 = a1 + v12[6];
  *v19 = v15;
  *(v19 + 8) = v14;
  *(v19 + 16) = v16;
  *(v19 + 24) = v40;
  *(v19 + 40) = v17;
  v20 = a1 + v12[7];
  v21 = v34;
  *v20 = v35;
  *(v20 + 8) = v21;
  LOBYTE(v21) = v32;
  *(v20 + 16) = v33;
  *(a1 + v12[9]) = v21;
  *(a1 + v12[8]) = v11;
  type metadata accessor for ModifiedContent<ResolvedPlaybackButton, ArchivablePlaybackButtonViewModifier>(0, &lazy cache variable for type metadata for ModifiedContent<ResolvedPlaybackButton, ArchivablePlaybackButtonViewModifier>, type metadata accessor for ResolvedPlaybackButton, type metadata accessor for ArchivablePlaybackButtonViewModifier, MEMORY[0x1E697E830]);
  v23 = a1 + *(v22 + 36);
  outlined init with copy of PlaybackButton.State(v1 + v39, v23, type metadata accessor for PlaybackButton.Configuration);
  specialized Environment.wrappedValue.getter(*v1, *(v1 + 8), *(v1 + 16) | (*(v1 + 17) << 8), &v41);
  v24 = v41;
  v25 = v42;
  v26 = v43;
  v27 = specialized Environment.wrappedValue.getter(v38, v37);
  v28 = specialized Environment.wrappedValue.getter(v36, v10);
  result = type metadata accessor for ArchivablePlaybackButtonViewModifier(0);
  v30 = v23 + result[5];
  *v30 = v24;
  *(v30 + 8) = v25;
  *(v30 + 16) = v26;
  *(v23 + result[6]) = v27;
  *(v23 + result[7]) = v28;
  return result;
}

uint64_t ArchivablePlaybackButtonViewModifier.encode(to:)(void *a1)
{
  v3 = v1;
  type metadata accessor for KeyedEncodingContainer<PlaybackButton.State.PausedCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<ArchivablePlaybackButtonViewModifier.CodingKeys>, lazy protocol witness table accessor for type ArchivablePlaybackButtonViewModifier.CodingKeys and conformance ArchivablePlaybackButtonViewModifier.CodingKeys, &unk_1EFF98B68, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ArchivablePlaybackButtonViewModifier.CodingKeys and conformance ArchivablePlaybackButtonViewModifier.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v14) = 0;
  type metadata accessor for PlaybackButton.Configuration(0);
  lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type PlaybackButton.Configuration and conformance PlaybackButton.Configuration, type metadata accessor for PlaybackButton.Configuration);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v10 = type metadata accessor for ArchivablePlaybackButtonViewModifier(0);
    v11 = (v3 + v10[5]);
    v12 = *(v11 + 16);
    v14 = *v11;
    v15 = v12;
    v16 = 1;
    lazy protocol witness table accessor for type PlaybackButton._StyleStorage and conformance PlaybackButton._StyleStorage();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v14) = *(v3 + v10[6]);
    v16 = 2;
    lazy protocol witness table accessor for type CodableVisibility and conformance CodableVisibility();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    *&v14 = *(v3 + v10[7]);
    v16 = 3;
    lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ArchivablePlaybackButtonViewModifier.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized ArchivablePlaybackButtonViewModifier.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ArchivablePlaybackButtonViewModifier.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ArchivablePlaybackButtonViewModifier.CodingKeys and conformance ArchivablePlaybackButtonViewModifier.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ArchivablePlaybackButtonViewModifier.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ArchivablePlaybackButtonViewModifier.CodingKeys and conformance ArchivablePlaybackButtonViewModifier.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ResolvedPlaybackButton.performAction()()
{
  v1 = type metadata accessor for ResolvedPlaybackButton(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v39 - v5;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v39 - v12;
  if (*(v0 + v1[7] + 16) == 6)
  {
    v14 = *(v0 + 8);
    LOBYTE(v42[0]) = *v0;
    *(&v42[0] + 1) = v14;
    type metadata accessor for _EnvironmentKeyWritingModifier<CGFloat>(0, &lazy cache variable for type metadata for State<PlaybackButton.Phase>, &type metadata for PlaybackButton.Phase, MEMORY[0x1E6981790]);
    State.wrappedValue.getter();
    if ((v40 | 2) == 3)
    {
      static Log.archivedPlaybackButton.getter();
      outlined init with copy of PlaybackButton.State(v0, v3, type metadata accessor for ResolvedPlaybackButton);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        *&v42[0] = v18;
        *v17 = 136315138;
        v19 = [*&v3[v1[5] + 24 + *(type metadata accessor for PlaybackButton.Configuration(0) + 40)] debugDescription];
        v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v39 = v7;
        v22 = v21;

        outlined destroy of PlaybackButton.State(v3, type metadata accessor for ResolvedPlaybackButton);
        v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, v42);

        *(v17 + 4) = v23;
        _os_log_impl(&dword_18BD4A000, v15, v16, "Did not execute LNAction %s from playback button tap.", v17, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v18);
        MEMORY[0x18D0110E0](v18, -1, -1);
        MEMORY[0x18D0110E0](v17, -1, -1);

        return (*(v8 + 8))(v10, v39);
      }

      (*(v8 + 8))(v10, v7);
      v38 = v3;
      return outlined destroy of PlaybackButton.State(v38, type metadata accessor for ResolvedPlaybackButton);
    }
  }

  v25 = *(v0 + 8);
  LOBYTE(v42[0]) = *v0;
  *(&v42[0] + 1) = v25;
  type metadata accessor for _EnvironmentKeyWritingModifier<CGFloat>(0, &lazy cache variable for type metadata for State<PlaybackButton.Phase>, &type metadata for PlaybackButton.Phase, MEMORY[0x1E6981790]);
  State.wrappedValue.getter();
  PlaybackButton.Phase.toggle()();
  v41 = v40;
  if (v25)
  {
    dispatch thunk of AnyLocation.set(_:transaction:)();
  }

  v26 = (v0 + v1[6]);
  v27 = v26[1];
  v42[0] = *v26;
  v42[1] = v27;
  v42[2] = v26[2];
  type metadata accessor for MainActor();
  v28 = static Semantics.v7.getter();
  MEMORY[0x1EEE9AC00](v28);
  static MainActor.assumeIsolatedIfLinkedOnOrAfter<A>(_:context:_:file:line:)();
  static Log.archivedPlaybackButton.getter();
  outlined init with copy of PlaybackButton.State(v0, v6, type metadata accessor for ResolvedPlaybackButton);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.debug.getter();
  if (!os_log_type_enabled(v29, v30))
  {

    (*(v8 + 8))(v13, v7);
    v38 = v6;
    return outlined destroy of PlaybackButton.State(v38, type metadata accessor for ResolvedPlaybackButton);
  }

  v31 = swift_slowAlloc();
  v32 = swift_slowAlloc();
  v40 = v32;
  *v31 = 136315138;
  v33 = [*&v6[v1[5] + 24 + *(type metadata accessor for PlaybackButton.Configuration(0) + 40)] debugDescription];
  v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v39 = v7;
  v36 = v35;

  outlined destroy of PlaybackButton.State(v6, type metadata accessor for ResolvedPlaybackButton);
  v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v36, &v40);

  *(v31 + 4) = v37;
  _os_log_impl(&dword_18BD4A000, v29, v30, "Executed LNAction %s from playback button tap.", v31, 0xCu);
  __swift_destroy_boxed_opaque_existential_1(v32);
  MEMORY[0x18D0110E0](v32, -1, -1);
  MEMORY[0x18D0110E0](v31, -1, -1);

  return (*(v8 + 8))(v13, v39);
}

uint64_t EnvironmentValues.playbackButtonProgressVisibility.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<PlaybackButtonProgressVisibilityKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<PlaybackButtonProgressVisibilityKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<PlaybackButtonProgressVisibilityKey>);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<PlaybackButtonProgressVisibilityKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<PlaybackButtonProgressVisibilityKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<PlaybackButtonProgressVisibilityKey>);
    PropertyList.subscript.getter();
  }

  return v2;
}

uint64_t key path getter for EnvironmentValues.playbackButtonProgressVisibility : EnvironmentValues@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<PlaybackButtonProgressVisibilityKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<PlaybackButtonProgressVisibilityKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<PlaybackButtonProgressVisibilityKey>);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<PlaybackButtonProgressVisibilityKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<PlaybackButtonProgressVisibilityKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<PlaybackButtonProgressVisibilityKey>);
    result = PropertyList.subscript.getter();
  }

  *a2 = v4;
  return result;
}

uint64_t key path setter for EnvironmentValues.playbackButtonProgressVisibility : EnvironmentValues(uint64_t a1, uint64_t a2)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<PlaybackButtonProgressVisibilityKey>);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<PlaybackButtonProgressVisibilityKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<PlaybackButtonProgressVisibilityKey>);

  PropertyList.subscript.setter();
  if (*(a2 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

uint64_t View.playbackButtonTapArea(_:)()
{
  swift_getKeyPath();
  View.environment<A>(_:_:)();
}

double EnvironmentValues.playbackButtonTapArea.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<PlaybackButtonTapAreaKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<PlaybackButtonTapAreaKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<PlaybackButtonTapAreaKey>);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<PlaybackButtonTapAreaKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<PlaybackButtonTapAreaKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<PlaybackButtonTapAreaKey>);
    PropertyList.subscript.getter();
  }

  return v2;
}

double key path getter for EnvironmentValues.playbackButtonTapArea : EnvironmentValues@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<PlaybackButtonTapAreaKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<PlaybackButtonTapAreaKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<PlaybackButtonTapAreaKey>);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<PlaybackButtonTapAreaKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<PlaybackButtonTapAreaKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<PlaybackButtonTapAreaKey>);
    PropertyList.subscript.getter();
  }

  result = v4;
  *a2 = v4;
  return result;
}

uint64_t key path setter for EnvironmentValues.playbackButtonTapArea : EnvironmentValues(uint64_t a1, uint64_t a2)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<PlaybackButtonTapAreaKey>);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<PlaybackButtonTapAreaKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<PlaybackButtonTapAreaKey>);

  PropertyList.subscript.setter();
  if (*(a2 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

uint64_t View.playbackButtonProgress(_:)()
{
  swift_getKeyPath();
  View.environment<A>(_:_:)();
}

uint64_t specialized Environment.wrappedValue.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if ((a3 & 0x100) != 0)
  {
    *a4 = result;
    *(a4 + 8) = a2;
    *(a4 + 16) = a3;
  }

  else
  {
    v4 = result;
    outlined copy of Environment<PlaybackButton._StyleStorage>.Content(result, a2, a3, 0);
    v7 = static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v8, v7))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = v10;
      *v9 = 136315138;
      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x7453656C7974535FLL, 0xED0000656761726FLL, &v11);
      _os_log_impl(&dword_18BD4A000, v8, v7, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x18D0110E0](v10, -1, -1);
      MEMORY[0x18D0110E0](v9, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_18BF80400(v4, a2, a3, 0);
  }

  return result;
}

uint64_t specialized Environment.wrappedValue.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  if ((a3 & 0x100) != 0)
  {
    outlined copy of Binding<Int>?(a1, a2);
  }

  else
  {

    v6 = static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v7, v6))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v11 = v9;
      *v8 = 136315138;
      *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x800000018CD3F200, &v11);
      _os_log_impl(&dword_18BD4A000, v7, v6, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x18D0110E0](v9, -1, -1);
      MEMORY[0x18D0110E0](v8, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<Binding<Visibility>?>.Content(v5, a2, a3, 0);

    return v11;
  }

  return v5;
}

uint64_t specialized Environment.wrappedValue.getter@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  if (a2)
  {
    *a3 = result;
  }

  else
  {
    v10[8] = v3;
    v10[9] = v4;
    v5 = result;
    outlined copy of Environment<Selector?>.Content(result, 0);
    v6 = static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v7, v6))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10[0] = v9;
      *v8 = 136315138;
      *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x800000018CD3F2C0, v10);
      _os_log_impl(&dword_18BD4A000, v7, v6, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x18D0110E0](v9, -1, -1);
      MEMORY[0x18D0110E0](v8, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<Selector?>.Content(v5, 0);
  }

  return result;
}

{
  if (a2)
  {
    *a3 = result;
  }

  else
  {
    v10[8] = v3;
    v10[9] = v4;
    v5 = result;
    outlined copy of Environment<Selector?>.Content(result, 0);
    v6 = static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v7, v6))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10[0] = v9;
      *v8 = 136315138;
      *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x800000018CD3F570, v10);
      _os_log_impl(&dword_18BD4A000, v7, v6, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x18D0110E0](v9, -1, -1);
      MEMORY[0x18D0110E0](v8, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<Selector?>.Content(v5, 0);
  }

  return result;
}

uint64_t specialized Environment.wrappedValue.getter@<X0>(uint64_t result@<X0>, char a2@<W1>, _WORD *a3@<X8>)
{
  if (a2)
  {
    *a3 = result;
  }

  else
  {
    v10[8] = v3;
    v10[9] = v4;
    v5 = result;
    outlined copy of Environment<Selector?>.Content(result, 0);
    v6 = static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v7, v6))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10[0] = v9;
      *v8 = 136315138;
      *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x800000018CD3F690, v10);
      _os_log_impl(&dword_18BD4A000, v7, v6, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x18D0110E0](v9, -1, -1);
      MEMORY[0x18D0110E0](v8, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<Selector?>.Content(v5, 0);
  }

  return result;
}

uint64_t specialized Environment.wrappedValue.getter(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x10000) != 0)
  {
    v10 = a2 & 0x1FF;
  }

  else
  {

    v4 = static os_log_type_t.fault.getter();
    v5 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v5, v4))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v9[0] = v7;
      *v6 = 136315138;
      *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000017, 0x800000018CD3F6B0, v9);
      _os_log_impl(&dword_18BD4A000, v5, v4, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v7);
      MEMORY[0x18D0110E0](v7, -1, -1);
      MEMORY[0x18D0110E0](v6, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<Color?>.Content(a1, a2);

    return v9[2];
  }

  return a1;
}

uint64_t specialized Environment.wrappedValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }

  else
  {

    v7 = static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v8, v7))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v12 = v10;
      *v9 = 136315138;
      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000024, 0x800000018CD3F7C0, &v12);
      _os_log_impl(&dword_18BD4A000, v8, v7, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x18D0110E0](v10, -1, -1);
      MEMORY[0x18D0110E0](v9, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<TabSidebarAccessoryViewConfiguration>.Content(a1, a2, a3, 0);

    return v12;
  }

  return a1;
}

uint64_t specialized Environment.wrappedValue.getter@<X0>(uint64_t (*a1)(void)@<X0>, void (*a2)(uint64_t, char *, double)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = v5;
  v11 = a1(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v21 - v13;
  a2(v9, &v21 - v13, v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = a3(0);
    return (*(*(v15 - 8) + 32))(a5, v14, v15);
  }

  else
  {
    v17 = static os_log_type_t.fault.getter();
    v18 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v18, v17))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21 = v20;
      *v19 = 136315138;
      *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a4, 0xE800000000000000, &v21);
      _os_log_impl(&dword_18BD4A000, v18, v17, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x18D0110E0](v20, -1, -1);
      MEMORY[0x18D0110E0](v19, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
  }
}

uint64_t specialized Environment.wrappedValue.getter@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  if (a2)
  {
    *a3 = a1;

    return outlined copy of ResolvedTableRowIDs.Storage(a1, 1);
  }

  else
  {
    v11[8] = v3;
    v11[9] = v4;
    outlined copy of ResolvedTableRowIDs.Storage(a1, 0);
    v7 = static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v8, v7))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11[0] = v10;
      *v9 = 136315138;
      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, 0x800000018CD3F8C0, v11);
      _os_log_impl(&dword_18BD4A000, v8, v7, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x18D0110E0](v10, -1, -1);
      MEMORY[0x18D0110E0](v9, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<[SceneID : KeyboardShortcut]>.Content(a1, 0);
  }
}

uint64_t specialized Environment.wrappedValue.getter(uint64_t result, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0x100) == 0)
  {
    v5 = result;

    v6 = static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v7, v6))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10 = v9;
      *v8 = 136315138;
      *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x800000018CD3F1E0, &v10);
      _os_log_impl(&dword_18BD4A000, v7, v6, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x18D0110E0](v9, -1, -1);
      MEMORY[0x18D0110E0](v8, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_18BF80400(v5, a2, a3, 0);

    return v10;
  }

  return result;
}

uint64_t specialized Environment.wrappedValue.getter(void *a1, char a2)
{
  v2 = a1;
  if (a2)
  {
    v3 = a1;
  }

  else
  {

    v4 = static os_log_type_t.fault.getter();
    v5 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v5, v4))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v12[0] = v7;
      *v6 = 136315138;
      type metadata accessor for UISceneSession?();
      v8 = _typeName(_:qualified:)();
      v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, v12);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_18BD4A000, v5, v4, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v7);
      MEMORY[0x18D0110E0](v7, -1, -1);
      MEMORY[0x18D0110E0](v6, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of ResolvableCLKTextProvider.FontStorage(v2, 0);

    return v12[2];
  }

  return v2;
}

uint64_t specialized Environment.wrappedValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if ((a3 & 0x100) != 0)
  {
    *a4 = a1;
    *(a4 + 8) = a2;
    *(a4 + 16) = a3 & 1;

    return outlined copy of Environment<DismissAction>.Content(a1, a2, a3, 1);
  }

  else
  {
    outlined copy of Environment<DismissAction>.Content(a1, a2, a3, 0);
    v8 = static os_log_type_t.fault.getter();
    v9 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v9, v8))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v13 = v11;
      *v10 = 136315138;
      *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x417373696D736944, 0xED00006E6F697463, &v13);
      _os_log_impl(&dword_18BD4A000, v9, v8, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x18D0110E0](v11, -1, -1);
      MEMORY[0x18D0110E0](v10, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<DismissAction>.Content(a1, a2, a3, 0);
  }
}

{
  if ((a3 & 0x100) != 0)
  {
    *a4 = a1;
    *(a4 + 8) = a2;
    *(a4 + 16) = a3;

    return outlined copy of Environment<Binding<EditMode>?>.Content(a1, a2, a3, 1);
  }

  else
  {
    outlined copy of Environment<Binding<EditMode>?>.Content(a1, a2, a3, 0);
    v8 = static os_log_type_t.fault.getter();
    v9 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v9, v8))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v13 = v11;
      *v10 = 136315138;
      *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001BLL, 0x800000018CD3F600, &v13);
      _os_log_impl(&dword_18BD4A000, v9, v8, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x18D0110E0](v11, -1, -1);
      MEMORY[0x18D0110E0](v10, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<Binding<Visibility>?>.Content(a1, a2, a3, 0);
  }
}

double key path getter for EnvironmentValues.playbackButtonStyle : EnvironmentValues@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.PlaybackButtonStyleKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.PlaybackButtonStyleKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.PlaybackButtonStyleKey>);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.PlaybackButtonStyleKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.PlaybackButtonStyleKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.PlaybackButtonStyleKey>);
    PropertyList.subscript.getter();
  }

  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  return result;
}

uint64_t key path setter for EnvironmentValues.playbackButtonStyle : EnvironmentValues(uint64_t a1, uint64_t a2)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.PlaybackButtonStyleKey>);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.PlaybackButtonStyleKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.PlaybackButtonStyleKey>);

  PropertyList.subscript.setter();
  if (*(a2 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

double key path getter for EnvironmentValues.appIntentExecutor : EnvironmentValues@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AppIntentExecutor.Key>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<AppIntentExecutor.Key> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<AppIntentExecutor.Key>);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AppIntentExecutor.Key>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<AppIntentExecutor.Key> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<AppIntentExecutor.Key>);
    PropertyList.subscript.getter();
  }

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t key path setter for EnvironmentValues.appIntentExecutor : EnvironmentValues(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AppIntentExecutor.Key>);

  outlined copy of AppIntentExecutor?(v3);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<AppIntentExecutor.Key> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<AppIntentExecutor.Key>);
  PropertyList.subscript.setter();
  if (*(a2 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

uint64_t specialized PlaybackButton.Configuration.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C61767265746E69 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D496D6574737973 && a2 == 0xEB00000000656761 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6573616870 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6573736572507369 && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E656D6E67696C61 && a2 == 0xE900000000000074 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000)
  {

    return 6;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t instantiation function for generic protocol witness table for PlaybackButton(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type PlaybackButton and conformance PlaybackButton, type metadata accessor for PlaybackButton);
  *(a1 + 8) = result;
  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for PlaybackButton(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v20 = *a2;
    *a1 = *a2;
    v3 = (v20 + ((v4 + 16) & ~v4));
  }

  else
  {
    v6 = *a2;
    v7 = *(a2 + 8);
    v8 = *(a2 + 17);
    v9 = *(a2 + 16);
    outlined copy of Environment<PlaybackButton._StyleStorage>.Content(*a2, v7, v9, v8);
    *v3 = v6;
    v3[1] = v7;
    *(v3 + 16) = v9;
    *(v3 + 17) = v8;
    v11 = *(a2 + 24);
    LOBYTE(v7) = *(a2 + 32);
    outlined copy of Environment<Selector?>.Content(v11, v7);
    v3[3] = v11;
    *(v3 + 32) = v7;
    v12 = *(a2 + 40);
    LOBYTE(v7) = *(a2 + 48);
    outlined copy of Environment<Selector?>.Content(v12, v7);
    v3[5] = v12;
    *(v3 + 48) = v7;
    v13 = *(a3 + 28);
    v14 = v3 + v13;
    v15 = (a2 + v13);
    type metadata accessor for ClosedRange<Date>();
    v17 = v16;
    v18 = *(v16 - 8);
    if ((*(v18 + 48))(v15, 1, v16))
    {
      type metadata accessor for ClosedRange<Date>?(0);
      memcpy(v14, v15, *(*(v19 - 8) + 64));
    }

    else
    {
      v21 = type metadata accessor for Date();
      v22 = *(*(v21 - 8) + 16);
      v22(v14, v15, v21);
      v22(&v14[*(v17 + 36)], &v15[*(v17 + 36)], v21);
      (*(v18 + 56))(v14, 0, 1, v17);
    }

    v23 = type metadata accessor for PlaybackButton.Configuration(0);
    v24 = v23[5];
    v25 = type metadata accessor for Date();
    v26 = *(v25 - 8);
    if ((*(v26 + 48))(&v15[v24], 2, v25))
    {
      v27 = type metadata accessor for PlaybackButton.State(0);
      memcpy(&v14[v24], &v15[v24], *(*(v27 - 8) + 64));
    }

    else
    {
      (*(v26 + 16))(&v14[v24], &v15[v24], v25);
      (*(v26 + 56))(&v14[v24], 0, 2, v25);
    }

    v28 = v23[6];
    v29 = &v14[v28];
    v30 = &v15[v28];
    v31 = *(v30 + 1);
    *v29 = *v30;
    *(v29 + 1) = v31;
    v14[v23[7]] = v15[v23[7]];
    v14[v23[8]] = v15[v23[8]];
    *&v14[v23[9]] = *&v15[v23[9]];
    v32 = v23[10];
    v33 = &v14[v32];
    v34 = &v15[v32];
    v35 = *&v15[v32];
    v36 = *&v15[v32 + 8];
    v37 = v34[16];

    outlined copy of Environment<AppIntentExecutor?>.Content(v35, v36, v37, outlined copy of AppIntentExecutor?);
    *v33 = v35;
    *(v33 + 1) = v36;
    v33[16] = v37;
    v38 = *(v34 + 5);
    v39 = *(v34 + 24);
    *(v33 + 24) = v39;
    *(v33 + 5) = v38;
    v40 = v39;
  }

  return v3;
}

uint64_t destroy for PlaybackButton(uint64_t a1, uint64_t a2)
{
  sub_18BF80400(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 17));
  outlined consume of Environment<Selector?>.Content(*(a1 + 24), *(a1 + 32));
  outlined consume of Environment<Selector?>.Content(*(a1 + 40), *(a1 + 48));
  v4 = a1 + *(a2 + 28);
  type metadata accessor for ClosedRange<Date>();
  v6 = v5;
  if (!(*(*(v5 - 8) + 48))(v4, 1, v5))
  {
    v7 = type metadata accessor for Date();
    v8 = *(*(v7 - 8) + 8);
    v8(v4, v7);
    v8(v4 + *(v6 + 36), v7);
  }

  v9 = type metadata accessor for PlaybackButton.Configuration(0);
  v10 = *(v9 + 20);
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v4 + v10, 2, v11))
  {
    (*(v12 + 8))(v4 + v10, v11);
  }

  v13 = v4 + *(v9 + 40);
  outlined consume of Environment<AppIntentExecutor?>.Content(*v13, *(v13 + 8), *(v13 + 16), outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?);
}

uint64_t initializeWithCopy for PlaybackButton(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 17);
  v9 = *(a2 + 16);
  outlined copy of Environment<PlaybackButton._StyleStorage>.Content(*a2, v7, v9, v8);
  *a1 = v6;
  *(a1 + 8) = v7;
  *(a1 + 16) = v9;
  *(a1 + 17) = v8;
  v10 = *(a2 + 24);
  LOBYTE(v7) = *(a2 + 32);
  outlined copy of Environment<Selector?>.Content(v10, v7);
  *(a1 + 24) = v10;
  *(a1 + 32) = v7;
  v11 = *(a2 + 40);
  LOBYTE(v7) = *(a2 + 48);
  outlined copy of Environment<Selector?>.Content(v11, v7);
  *(a1 + 40) = v11;
  *(a1 + 48) = v7;
  v12 = *(a3 + 28);
  v13 = (a1 + v12);
  v14 = (a2 + v12);
  type metadata accessor for ClosedRange<Date>();
  v16 = v15;
  v17 = *(v15 - 8);
  if ((*(v17 + 48))(v14, 1, v15))
  {
    type metadata accessor for ClosedRange<Date>?(0);
    memcpy(v13, v14, *(*(v18 - 8) + 64));
  }

  else
  {
    v19 = type metadata accessor for Date();
    v20 = *(*(v19 - 8) + 16);
    v20(v13, v14, v19);
    v20(&v13[*(v16 + 36)], &v14[*(v16 + 36)], v19);
    (*(v17 + 56))(v13, 0, 1, v16);
  }

  v21 = type metadata accessor for PlaybackButton.Configuration(0);
  v22 = v21[5];
  v23 = type metadata accessor for Date();
  v24 = *(v23 - 8);
  if ((*(v24 + 48))(&v14[v22], 2, v23))
  {
    v25 = type metadata accessor for PlaybackButton.State(0);
    memcpy(&v13[v22], &v14[v22], *(*(v25 - 8) + 64));
  }

  else
  {
    (*(v24 + 16))(&v13[v22], &v14[v22], v23);
    (*(v24 + 56))(&v13[v22], 0, 2, v23);
  }

  v26 = v21[6];
  v27 = &v13[v26];
  v28 = &v14[v26];
  v29 = *(v28 + 1);
  *v27 = *v28;
  *(v27 + 1) = v29;
  v13[v21[7]] = v14[v21[7]];
  v13[v21[8]] = v14[v21[8]];
  *&v13[v21[9]] = *&v14[v21[9]];
  v30 = v21[10];
  v31 = &v13[v30];
  v32 = &v14[v30];
  v33 = *&v14[v30];
  v34 = *&v14[v30 + 8];
  v35 = v32[16];

  outlined copy of Environment<AppIntentExecutor?>.Content(v33, v34, v35, outlined copy of AppIntentExecutor?);
  *v31 = v33;
  *(v31 + 1) = v34;
  v31[16] = v35;
  v36 = *(v32 + 5);
  v37 = *(v32 + 24);
  *(v31 + 24) = v37;
  *(v31 + 5) = v36;
  v38 = v37;

  return a1;
}

uint64_t assignWithCopy for PlaybackButton(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 17);
  v9 = *(a2 + 16);
  outlined copy of Environment<PlaybackButton._StyleStorage>.Content(*a2, v7, v9, v8);
  v10 = *a1;
  v11 = *(a1 + 8);
  v12 = *(a1 + 17);
  *a1 = v6;
  *(a1 + 8) = v7;
  v13 = *(a1 + 16);
  *(a1 + 16) = v9;
  *(a1 + 17) = v8;
  sub_18BF80400(v10, v11, v13, v12);
  v14 = *(a2 + 24);
  LOBYTE(v7) = *(a2 + 32);
  outlined copy of Environment<Selector?>.Content(v14, v7);
  v15 = *(a1 + 24);
  v16 = *(a1 + 32);
  *(a1 + 24) = v14;
  *(a1 + 32) = v7;
  outlined consume of Environment<Selector?>.Content(v15, v16);
  v17 = *(a2 + 40);
  LOBYTE(v7) = *(a2 + 48);
  outlined copy of Environment<Selector?>.Content(v17, v7);
  v18 = *(a1 + 40);
  v19 = *(a1 + 48);
  *(a1 + 40) = v17;
  *(a1 + 48) = v7;
  outlined consume of Environment<Selector?>.Content(v18, v19);
  v20 = *(a3 + 28);
  v21 = (a1 + v20);
  v22 = (a2 + v20);
  type metadata accessor for ClosedRange<Date>();
  v24 = v23;
  v25 = *(v23 - 8);
  v26 = *(v25 + 48);
  LODWORD(v7) = v26(v21, 1, v23);
  v27 = v26(v22, 1, v24);
  if (v7)
  {
    if (!v27)
    {
      v28 = type metadata accessor for Date();
      v29 = *(*(v28 - 8) + 16);
      v29(v21, v22, v28);
      v29(&v21[*(v24 + 36)], &v22[*(v24 + 36)], v28);
      (*(v25 + 56))(v21, 0, 1, v24);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v27)
  {
    outlined destroy of PlaybackButton.State(v21, type metadata accessor for ClosedRange<Date>);
LABEL_6:
    type metadata accessor for ClosedRange<Date>?(0);
    memcpy(v21, v22, *(*(v30 - 8) + 64));
    goto LABEL_7;
  }

  v59 = type metadata accessor for Date();
  v60 = *(*(v59 - 8) + 24);
  v60(v21, v22, v59);
  v60(&v21[*(v24 + 36)], &v22[*(v24 + 36)], v59);
LABEL_7:
  v31 = type metadata accessor for PlaybackButton.Configuration(0);
  v32 = v31[5];
  v33 = type metadata accessor for Date();
  v34 = *(v33 - 8);
  v35 = *(v34 + 48);
  v36 = v35(&v21[v32], 2, v33);
  v37 = v35(&v22[v32], 2, v33);
  if (!v36)
  {
    if (!v37)
    {
      (*(v34 + 24))(&v21[v32], &v22[v32], v33);
      goto LABEL_13;
    }

    (*(v34 + 8))(&v21[v32], v33);
    goto LABEL_12;
  }

  if (v37)
  {
LABEL_12:
    v38 = type metadata accessor for PlaybackButton.State(0);
    memcpy(&v21[v32], &v22[v32], *(*(v38 - 8) + 64));
    goto LABEL_13;
  }

  (*(v34 + 16))(&v21[v32], &v22[v32], v33);
  (*(v34 + 56))(&v21[v32], 0, 2, v33);
LABEL_13:
  v39 = v31[6];
  v40 = &v21[v39];
  v41 = &v22[v39];
  *v40 = *v41;
  *(v40 + 1) = *(v41 + 1);

  v21[v31[7]] = v22[v31[7]];
  v21[v31[8]] = v22[v31[8]];
  v42 = v31[9];
  v43 = &v21[v42];
  v44 = &v22[v42];
  *v43 = *v44;
  *(v43 + 1) = *(v44 + 1);
  v45 = v31[10];
  v46 = &v21[v45];
  v47 = &v22[v45];
  v48 = *&v22[v45];
  v49 = *&v22[v45 + 8];
  v50 = v47[16];
  outlined copy of Environment<AppIntentExecutor?>.Content(v48, v49, v50, outlined copy of AppIntentExecutor?);
  v51 = *v46;
  v52 = *(v46 + 1);
  v53 = v46[16];
  *v46 = v48;
  *(v46 + 1) = v49;
  v46[16] = v50;
  outlined consume of Environment<AppIntentExecutor?>.Content(v51, v52, v53, outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?);
  v54 = *(v47 + 3);
  v55 = *(v46 + 3);
  *(v46 + 3) = v54;
  v56 = v54;

  v57 = *(v47 + 5);
  *(v46 + 4) = *(v47 + 4);
  *(v46 + 5) = v57;

  return a1;
}

uint64_t initializeWithTake for PlaybackButton(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  v4 = *(a3 + 28);
  v5 = (a2 + v4);
  v6 = (a1 + v4);
  *(a1 + 48) = *(a2 + 48);
  type metadata accessor for ClosedRange<Date>();
  v8 = v7;
  v9 = *(v7 - 8);
  if ((*(v9 + 48))(v5, 1, v7))
  {
    type metadata accessor for ClosedRange<Date>?(0);
    memcpy(v6, v5, *(*(v10 - 8) + 64));
  }

  else
  {
    v11 = type metadata accessor for Date();
    v12 = *(*(v11 - 8) + 32);
    v12(v6, v5, v11);
    v12(&v6[*(v8 + 36)], &v5[*(v8 + 36)], v11);
    (*(v9 + 56))(v6, 0, 1, v8);
  }

  v13 = type metadata accessor for PlaybackButton.Configuration(0);
  v14 = v13[5];
  v15 = type metadata accessor for Date();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(&v5[v14], 2, v15))
  {
    v17 = type metadata accessor for PlaybackButton.State(0);
    memcpy(&v6[v14], &v5[v14], *(*(v17 - 8) + 64));
  }

  else
  {
    (*(v16 + 32))(&v6[v14], &v5[v14], v15);
    (*(v16 + 56))(&v6[v14], 0, 2, v15);
  }

  *&v6[v13[6]] = *&v5[v13[6]];
  v6[v13[7]] = v5[v13[7]];
  v6[v13[8]] = v5[v13[8]];
  *&v6[v13[9]] = *&v5[v13[9]];
  v18 = v13[10];
  v19 = &v6[v18];
  v20 = &v5[v18];
  v21 = *(v20 + 1);
  *v19 = *v20;
  *(v19 + 1) = v21;
  *(v19 + 2) = *(v20 + 2);
  return a1;
}

uint64_t assignWithTake for PlaybackButton(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 16);
  v7 = *(a2 + 17);
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 17);
  *a1 = *a2;
  v11 = *(a1 + 16);
  *(a1 + 16) = v6;
  *(a1 + 17) = v7;
  sub_18BF80400(v8, v9, v11, v10);
  v12 = *(a2 + 32);
  v13 = *(a1 + 24);
  v14 = *(a1 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v12;
  outlined consume of Environment<Selector?>.Content(v13, v14);
  v15 = *(a2 + 48);
  v16 = *(a1 + 40);
  v17 = *(a1 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v15;
  outlined consume of Environment<Selector?>.Content(v16, v17);
  v18 = *(a3 + 28);
  v19 = (a1 + v18);
  v20 = (a2 + v18);
  type metadata accessor for ClosedRange<Date>();
  v22 = v21;
  v23 = *(v21 - 8);
  v24 = *(v23 + 48);
  v25 = v24(v19, 1, v21);
  v26 = v24(v20, 1, v22);
  if (v25)
  {
    if (!v26)
    {
      v27 = type metadata accessor for Date();
      v28 = *(*(v27 - 8) + 32);
      v28(v19, v20, v27);
      v28(&v19[*(v22 + 36)], &v20[*(v22 + 36)], v27);
      (*(v23 + 56))(v19, 0, 1, v22);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v26)
  {
    outlined destroy of PlaybackButton.State(v19, type metadata accessor for ClosedRange<Date>);
LABEL_6:
    type metadata accessor for ClosedRange<Date>?(0);
    memcpy(v19, v20, *(*(v29 - 8) + 64));
    goto LABEL_7;
  }

  v51 = type metadata accessor for Date();
  v52 = *(*(v51 - 8) + 40);
  v52(v19, v20, v51);
  v52(&v19[*(v22 + 36)], &v20[*(v22 + 36)], v51);
LABEL_7:
  v30 = type metadata accessor for PlaybackButton.Configuration(0);
  v31 = v30[5];
  v32 = type metadata accessor for Date();
  v33 = *(v32 - 8);
  v34 = *(v33 + 48);
  v35 = v34(&v19[v31], 2, v32);
  v36 = v34(&v20[v31], 2, v32);
  if (!v35)
  {
    if (!v36)
    {
      (*(v33 + 40))(&v19[v31], &v20[v31], v32);
      goto LABEL_13;
    }

    (*(v33 + 8))(&v19[v31], v32);
    goto LABEL_12;
  }

  if (v36)
  {
LABEL_12:
    v37 = type metadata accessor for PlaybackButton.State(0);
    memcpy(&v19[v31], &v20[v31], *(*(v37 - 8) + 64));
    goto LABEL_13;
  }

  (*(v33 + 32))(&v19[v31], &v20[v31], v32);
  (*(v33 + 56))(&v19[v31], 0, 2, v32);
LABEL_13:
  v38 = v30[6];
  v39 = &v19[v38];
  v40 = &v20[v38];
  v42 = *v40;
  v41 = *(v40 + 1);
  *v39 = v42;
  *(v39 + 1) = v41;

  v19[v30[7]] = v20[v30[7]];
  v19[v30[8]] = v20[v30[8]];
  *&v19[v30[9]] = *&v20[v30[9]];
  v43 = v30[10];
  v44 = &v19[v43];
  v45 = &v20[v43];
  LOBYTE(v43) = v45[16];
  v46 = *v44;
  v47 = *(v44 + 1);
  v48 = v44[16];
  *v44 = *v45;
  v44[16] = v43;
  outlined consume of Environment<AppIntentExecutor?>.Content(v46, v47, v48, outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?);
  v49 = *(v44 + 3);
  *(v44 + 3) = *(v45 + 3);

  *(v44 + 2) = *(v45 + 2);

  return a1;
}

uint64_t type metadata completion function for PlaybackButton()
{
  result = type metadata accessor for PlaybackButton.Configuration(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for PlaybackButton.State(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *a1 = *a2;
    a1 = (v11 + ((v5 + 16) & ~v5));

    return a1;
  }

  v6 = *(a3 - 8);
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(a2, 2, v7))
  {
    (*(v8 + 16))(a1, a2, v7);
    (*(v8 + 56))(a1, 0, 2, v7);
    return a1;
  }

  v9 = *(v6 + 64);

  return memcpy(a1, a2, v9);
}

uint64_t destroy for PlaybackButton.State(uint64_t a1)
{
  v2 = type metadata accessor for Date();
  v5 = *(v2 - 8);
  result = (*(v5 + 48))(a1, 2, v2);
  if (!result)
  {
    v4 = *(v5 + 8);

    return v4(a1, v2);
  }

  return result;
}

void *initializeWithCopy for PlaybackButton.State(void *a1, const void *a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 2, v6))
  {
    v8 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v8);
  }

  else
  {
    (*(v7 + 16))(a1, a2, v6);
    (*(v7 + 56))(a1, 0, 2, v6);
    return a1;
  }
}

void *assignWithCopy for PlaybackButton.State(void *a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 2, v6);
  v10 = v8(a2, 2, v6);
  if (v9)
  {
    if (!v10)
    {
      (*(v7 + 16))(a1, a2, v6);
      (*(v7 + 56))(a1, 0, 2, v6);
      return a1;
    }
  }

  else
  {
    if (!v10)
    {
      (*(v7 + 24))(a1, a2, v6);
      return a1;
    }

    (*(v7 + 8))(a1, v6);
  }

  v11 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v11);
}

void *initializeWithTake for PlaybackButton.State(void *a1, const void *a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 2, v6))
  {
    v8 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v8);
  }

  else
  {
    (*(v7 + 32))(a1, a2, v6);
    (*(v7 + 56))(a1, 0, 2, v6);
    return a1;
  }
}

void *assignWithTake for PlaybackButton.State(void *a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 2, v6);
  v10 = v8(a2, 2, v6);
  if (v9)
  {
    if (!v10)
    {
      (*(v7 + 32))(a1, a2, v6);
      (*(v7 + 56))(a1, 0, 2, v6);
      return a1;
    }
  }

  else
  {
    if (!v10)
    {
      (*(v7 + 40))(a1, a2, v6);
      return a1;
    }

    (*(v7 + 8))(a1, v6);
  }

  v11 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v11);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ResolvedPlaybackButton, ArchivablePlaybackButtonViewModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ResolvedPlaybackButton, ArchivablePlaybackButtonViewModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ResolvedPlaybackButton, ArchivablePlaybackButtonViewModifier> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ResolvedPlaybackButton, ArchivablePlaybackButtonViewModifier>(255, &lazy cache variable for type metadata for ModifiedContent<ResolvedPlaybackButton, ArchivablePlaybackButtonViewModifier>, type metadata accessor for ResolvedPlaybackButton, type metadata accessor for ArchivablePlaybackButtonViewModifier, MEMORY[0x1E697E830]);
    lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type ResolvedPlaybackButton and conformance ResolvedPlaybackButton, type metadata accessor for ResolvedPlaybackButton);
    lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type ArchivablePlaybackButtonViewModifier and conformance ArchivablePlaybackButtonViewModifier, type metadata accessor for ArchivablePlaybackButtonViewModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ResolvedPlaybackButton, ArchivablePlaybackButtonViewModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyxAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAaBHPxAaBHD1__AjA0cI0HPyHCHCTm(uint64_t a1, unint64_t *a2, uint64_t a3, unint64_t *a4)
{
  type metadata accessor for _EnvironmentKeyWritingModifier<CGFloat>(255, a2, a3, MEMORY[0x1E6980A08]);
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<CGFloat> and conformance _EnvironmentKeyWritingModifier<A>(a4, a2, a3);
  return swift_getWitnessTable();
}

char *initializeBufferWithCopyOfBuffer for ArchivablePlaybackButtonViewModifier(char *a1, uint64_t *a2, int *a3)
{
  v4 = a1;
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *a1 = *a2;
    v4 = (v11 + ((v5 + 16) & ~v5));
  }

  else
  {
    type metadata accessor for ClosedRange<Date>();
    v8 = v7;
    v9 = *(v7 - 8);
    if ((*(v9 + 48))(a2, 1, v7))
    {
      type metadata accessor for ClosedRange<Date>?(0);
      memcpy(v4, a2, *(*(v10 - 8) + 64));
    }

    else
    {
      v12 = type metadata accessor for Date();
      v13 = *(*(v12 - 8) + 16);
      v13(v4, a2, v12);
      v13(&v4[*(v8 + 36)], (a2 + *(v8 + 36)), v12);
      (*(v9 + 56))(v4, 0, 1, v8);
    }

    v14 = type metadata accessor for PlaybackButton.Configuration(0);
    v15 = v14[5];
    v16 = type metadata accessor for Date();
    v17 = *(v16 - 8);
    if ((*(v17 + 48))(a2 + v15, 2, v16))
    {
      v18 = type metadata accessor for PlaybackButton.State(0);
      memcpy(&v4[v15], a2 + v15, *(*(v18 - 8) + 64));
    }

    else
    {
      (*(v17 + 16))(&v4[v15], a2 + v15, v16);
      (*(v17 + 56))(&v4[v15], 0, 2, v16);
    }

    v19 = v14[6];
    v20 = &v4[v19];
    v21 = (a2 + v19);
    v22 = v21[1];
    *v20 = *v21;
    *(v20 + 1) = v22;
    v4[v14[7]] = *(a2 + v14[7]);
    v4[v14[8]] = *(a2 + v14[8]);
    *&v4[v14[9]] = *(a2 + v14[9]);
    v23 = v14[10];
    v24 = &v4[v23];
    v25 = a2 + v23;
    v26 = *(a2 + v23);
    v27 = *(a2 + v23 + 8);
    v28 = *(a2 + v23 + 16);

    outlined copy of Environment<AppIntentExecutor?>.Content(v26, v27, v28, outlined copy of AppIntentExecutor?);
    *v24 = v26;
    *(v24 + 1) = v27;
    v24[16] = v28;
    v29 = *(v25 + 5);
    v30 = *(v25 + 24);
    *(v24 + 24) = v30;
    *(v24 + 5) = v29;
    v31 = a3[5];
    v32 = a3[6];
    v33 = &v4[v31];
    v34 = a2 + v31;
    *v33 = *v34;
    v33[16] = v34[16];
    v4[v32] = *(a2 + v32);
    *&v4[a3[7]] = *(a2 + a3[7]);
    v35 = v30;
  }

  return v4;
}

char *initializeWithTake for ArchivablePlaybackButtonViewModifier(char *a1, char *a2, int *a3)
{
  type metadata accessor for ClosedRange<Date>();
  v7 = v6;
  v8 = *(v6 - 8);
  if ((*(v8 + 48))(a2, 1, v6))
  {
    type metadata accessor for ClosedRange<Date>?(0);
    memcpy(a1, a2, *(*(v9 - 8) + 64));
  }

  else
  {
    v10 = type metadata accessor for Date();
    v11 = *(*(v10 - 8) + 32);
    v11(a1, a2, v10);
    v11(&a1[*(v7 + 36)], &a2[*(v7 + 36)], v10);
    (*(v8 + 56))(a1, 0, 1, v7);
  }

  v12 = type metadata accessor for PlaybackButton.Configuration(0);
  v13 = v12[5];
  v14 = type metadata accessor for Date();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(&a2[v13], 2, v14))
  {
    v16 = type metadata accessor for PlaybackButton.State(0);
    memcpy(&a1[v13], &a2[v13], *(*(v16 - 8) + 64));
  }

  else
  {
    (*(v15 + 32))(&a1[v13], &a2[v13], v14);
    (*(v15 + 56))(&a1[v13], 0, 2, v14);
  }

  *&a1[v12[6]] = *&a2[v12[6]];
  a1[v12[7]] = a2[v12[7]];
  a1[v12[8]] = a2[v12[8]];
  *&a1[v12[9]] = *&a2[v12[9]];
  v17 = v12[10];
  v18 = &a1[v17];
  v19 = &a2[v17];
  v20 = *(v19 + 1);
  *v18 = *v19;
  *(v18 + 1) = v20;
  *(v18 + 2) = *(v19 + 2);
  v21 = a3[5];
  v22 = a3[6];
  v23 = &a1[v21];
  v24 = &a2[v21];
  *v23 = *v24;
  v23[16] = v24[16];
  a1[v22] = a2[v22];
  *&a1[a3[7]] = *&a2[a3[7]];
  return a1;
}

char *assignWithTake for ArchivablePlaybackButtonViewModifier(char *a1, char *a2, int *a3)
{
  type metadata accessor for ClosedRange<Date>();
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 48);
  v10 = v9(a1, 1, v6);
  v11 = v9(a2, 1, v7);
  if (v10)
  {
    if (!v11)
    {
      v12 = type metadata accessor for Date();
      v13 = *(*(v12 - 8) + 32);
      v13(a1, a2, v12);
      v13(&a1[*(v7 + 36)], &a2[*(v7 + 36)], v12);
      (*(v8 + 56))(a1, 0, 1, v7);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v11)
  {
    outlined destroy of PlaybackButton.State(a1, type metadata accessor for ClosedRange<Date>);
LABEL_6:
    type metadata accessor for ClosedRange<Date>?(0);
    memcpy(a1, a2, *(*(v14 - 8) + 64));
    goto LABEL_7;
  }

  v40 = type metadata accessor for Date();
  v41 = *(*(v40 - 8) + 40);
  v41(a1, a2, v40);
  v41(&a1[*(v7 + 36)], &a2[*(v7 + 36)], v40);
LABEL_7:
  v15 = type metadata accessor for PlaybackButton.Configuration(0);
  v16 = v15[5];
  v17 = type metadata accessor for Date();
  v18 = *(v17 - 8);
  v19 = *(v18 + 48);
  v20 = v19(&a1[v16], 2, v17);
  v21 = v19(&a2[v16], 2, v17);
  if (!v20)
  {
    if (!v21)
    {
      (*(v18 + 40))(&a1[v16], &a2[v16], v17);
      goto LABEL_13;
    }

    (*(v18 + 8))(&a1[v16], v17);
    goto LABEL_12;
  }

  if (v21)
  {
LABEL_12:
    v22 = type metadata accessor for PlaybackButton.State(0);
    memcpy(&a1[v16], &a2[v16], *(*(v22 - 8) + 64));
    goto LABEL_13;
  }

  (*(v18 + 32))(&a1[v16], &a2[v16], v17);
  (*(v18 + 56))(&a1[v16], 0, 2, v17);
LABEL_13:
  v23 = v15[6];
  v24 = &a1[v23];
  v25 = &a2[v23];
  v27 = *v25;
  v26 = *(v25 + 1);
  *v24 = v27;
  *(v24 + 1) = v26;

  a1[v15[7]] = a2[v15[7]];
  a1[v15[8]] = a2[v15[8]];
  *&a1[v15[9]] = *&a2[v15[9]];
  v28 = v15[10];
  v29 = &a1[v28];
  v30 = &a2[v28];
  LOBYTE(v28) = a2[v28 + 16];
  v31 = *v29;
  v32 = *(v29 + 1);
  v33 = v29[16];
  *v29 = *v30;
  v29[16] = v28;
  outlined consume of Environment<AppIntentExecutor?>.Content(v31, v32, v33, outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?);
  v34 = *(v29 + 3);
  *(v29 + 3) = *(v30 + 3);

  *(v29 + 2) = *(v30 + 2);

  v35 = a3[5];
  v36 = a3[6];
  v37 = &a1[v35];
  v38 = &a2[v35];
  *v37 = *v38;
  v37[16] = v38[16];
  a1[v36] = a2[v36];
  *&a1[a3[7]] = *&a2[a3[7]];
  return a1;
}

void *initializeBufferWithCopyOfBuffer for ResolvedPlaybackButton(void *a1, void *a2, int *a3)
{
  v4 = a1;
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v15 = *a2;
    *a1 = *a2;
    v4 = (v15 + ((v5 + 16) & ~v5));
  }

  else
  {
    *a1 = *a2;
    a1[1] = a2[1];
    v7 = a3[5];
    v8 = a1 + v7;
    v9 = a2 + v7;
    type metadata accessor for ClosedRange<Date>();
    v11 = v10;
    v12 = *(v10 - 8);
    v13 = *(v12 + 48);

    if (v13(v9, 1, v11))
    {
      type metadata accessor for ClosedRange<Date>?(0);
      memcpy(v8, v9, *(*(v14 - 8) + 64));
    }

    else
    {
      v16 = type metadata accessor for Date();
      v17 = *(*(v16 - 8) + 16);
      v17(v8, v9, v16);
      v17(&v8[*(v11 + 36)], &v9[*(v11 + 36)], v16);
      (*(v12 + 56))(v8, 0, 1, v11);
    }

    v18 = type metadata accessor for PlaybackButton.Configuration(0);
    v19 = v18[5];
    v20 = type metadata accessor for Date();
    v21 = *(v20 - 8);
    if ((*(v21 + 48))(&v9[v19], 2, v20))
    {
      v22 = type metadata accessor for PlaybackButton.State(0);
      memcpy(&v8[v19], &v9[v19], *(*(v22 - 8) + 64));
    }

    else
    {
      (*(v21 + 16))(&v8[v19], &v9[v19], v20);
      (*(v21 + 56))(&v8[v19], 0, 2, v20);
    }

    v23 = v18[6];
    v24 = &v8[v23];
    v25 = &v9[v23];
    v26 = *(v25 + 1);
    *v24 = *v25;
    *(v24 + 1) = v26;
    v8[v18[7]] = v9[v18[7]];
    v8[v18[8]] = v9[v18[8]];
    *&v8[v18[9]] = *&v9[v18[9]];
    v27 = v18[10];
    v28 = &v8[v27];
    v29 = &v9[v27];
    v30 = *&v9[v27];
    v31 = *&v9[v27 + 8];
    v32 = v29[16];

    outlined copy of Environment<AppIntentExecutor?>.Content(v30, v31, v32, outlined copy of AppIntentExecutor?);
    *v28 = v30;
    *(v28 + 1) = v31;
    v28[16] = v32;
    v33 = *(v29 + 5);
    v34 = *(v29 + 24);
    *(v28 + 24) = v34;
    *(v28 + 5) = v33;
    v35 = a3[6];
    v36 = v4 + v35;
    v37 = a2 + v35;
    v38 = *(a2 + v35);
    v39 = *(a2 + v35 + 8);
    LOBYTE(v28) = *(a2 + v35 + 16);
    v40 = v34;

    outlined copy of Environment<AppIntentExecutor?>.Content(v38, v39, v28, outlined copy of AppIntentExecutor?);
    *v36 = v38;
    *(v36 + 1) = v39;
    v36[16] = v28;
    v41 = *(v37 + 5);
    v42 = *(v37 + 24);
    *(v36 + 24) = v42;
    *(v36 + 5) = v41;
    v43 = a3[7];
    v44 = a3[8];
    v45 = v4 + v43;
    v46 = a2 + v43;
    *v45 = *v46;
    v45[16] = v46[16];
    *(v4 + v44) = *(a2 + v44);
    *(v4 + a3[9]) = *(a2 + a3[9]);
    v47 = v42;
  }

  return v4;
}

_OWORD *initializeWithTake for ResolvedPlaybackButton(_OWORD *a1, _OWORD *a2, int *a3)
{
  *a1 = *a2;
  v6 = a3[5];
  v7 = a1 + v6;
  v8 = a2 + v6;
  type metadata accessor for ClosedRange<Date>();
  v10 = v9;
  v11 = *(v9 - 8);
  if ((*(v11 + 48))(v8, 1, v9))
  {
    type metadata accessor for ClosedRange<Date>?(0);
    memcpy(v7, v8, *(*(v12 - 8) + 64));
  }

  else
  {
    v13 = type metadata accessor for Date();
    v14 = *(*(v13 - 8) + 32);
    v14(v7, v8, v13);
    v14(&v7[*(v10 + 36)], &v8[*(v10 + 36)], v13);
    (*(v11 + 56))(v7, 0, 1, v10);
  }

  v15 = type metadata accessor for PlaybackButton.Configuration(0);
  v16 = v15[5];
  v17 = type metadata accessor for Date();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(&v8[v16], 2, v17))
  {
    v19 = type metadata accessor for PlaybackButton.State(0);
    memcpy(&v7[v16], &v8[v16], *(*(v19 - 8) + 64));
  }

  else
  {
    (*(v18 + 32))(&v7[v16], &v8[v16], v17);
    (*(v18 + 56))(&v7[v16], 0, 2, v17);
  }

  *&v7[v15[6]] = *&v8[v15[6]];
  v7[v15[7]] = v8[v15[7]];
  v7[v15[8]] = v8[v15[8]];
  *&v7[v15[9]] = *&v8[v15[9]];
  v20 = v15[10];
  v21 = &v7[v20];
  v22 = &v8[v20];
  v23 = *(v22 + 1);
  *v21 = *v22;
  *(v21 + 1) = v23;
  *(v21 + 2) = *(v22 + 2);
  v24 = a3[6];
  v25 = a3[7];
  v26 = (a1 + v24);
  v27 = (a2 + v24);
  v28 = v27[1];
  *v26 = *v27;
  v26[1] = v28;
  v26[2] = v27[2];
  v29 = a1 + v25;
  v30 = a2 + v25;
  *v29 = *v30;
  v29[16] = v30[16];
  v31 = a3[9];
  *(a1 + a3[8]) = *(a2 + a3[8]);
  *(a1 + v31) = *(a2 + v31);
  return a1;
}

uint64_t assignWithTake for ResolvedPlaybackButton(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  v52 = a3;
  v53 = a2;
  v6 = a3[5];
  v7 = (a1 + v6);
  v8 = (a2 + v6);
  type metadata accessor for ClosedRange<Date>();
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = *(v11 + 48);
  v13 = v12(v7, 1, v9);
  v14 = v12(v8, 1, v10);
  if (v13)
  {
    if (!v14)
    {
      v15 = type metadata accessor for Date();
      v16 = *(*(v15 - 8) + 32);
      v16(v7, v8, v15);
      v16(&v7[*(v10 + 36)], &v8[*(v10 + 36)], v15);
      (*(v11 + 56))(v7, 0, 1, v10);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v14)
  {
    outlined destroy of PlaybackButton.State(v7, type metadata accessor for ClosedRange<Date>);
LABEL_6:
    type metadata accessor for ClosedRange<Date>?(0);
    memcpy(v7, v8, *(*(v17 - 8) + 64));
    goto LABEL_7;
  }

  v50 = type metadata accessor for Date();
  v51 = *(*(v50 - 8) + 40);
  v51(v7, v8, v50);
  v51(&v7[*(v10 + 36)], &v8[*(v10 + 36)], v50);
LABEL_7:
  v18 = type metadata accessor for PlaybackButton.Configuration(0);
  v19 = v18[5];
  v20 = type metadata accessor for Date();
  v21 = *(v20 - 8);
  v22 = *(v21 + 48);
  v23 = v22(&v7[v19], 2, v20);
  v24 = v22(&v8[v19], 2, v20);
  if (!v23)
  {
    if (!v24)
    {
      (*(v21 + 40))(&v7[v19], &v8[v19], v20);
      goto LABEL_13;
    }

    (*(v21 + 8))(&v7[v19], v20);
    goto LABEL_12;
  }

  if (v24)
  {
LABEL_12:
    v25 = type metadata accessor for PlaybackButton.State(0);
    memcpy(&v7[v19], &v8[v19], *(*(v25 - 8) + 64));
    goto LABEL_13;
  }

  (*(v21 + 32))(&v7[v19], &v8[v19], v20);
  (*(v21 + 56))(&v7[v19], 0, 2, v20);
LABEL_13:
  v26 = v18[6];
  v27 = &v7[v26];
  v28 = &v8[v26];
  v30 = *v28;
  v29 = *(v28 + 1);
  *v27 = v30;
  *(v27 + 1) = v29;

  v7[v18[7]] = v8[v18[7]];
  v7[v18[8]] = v8[v18[8]];
  *&v7[v18[9]] = *&v8[v18[9]];
  v31 = v18[10];
  v32 = &v7[v31];
  v33 = &v8[v31];
  LOBYTE(v31) = v8[v31 + 16];
  v34 = *v32;
  v35 = *(v32 + 1);
  v36 = v32[16];
  *v32 = *v33;
  v32[16] = v31;
  outlined consume of Environment<AppIntentExecutor?>.Content(v34, v35, v36, outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?);
  v37 = *(v32 + 3);
  *(v32 + 3) = *(v33 + 3);

  *(v32 + 2) = *(v33 + 2);

  v38 = v52[6];
  v39 = a1 + v38;
  v40 = v53 + v38;
  LOBYTE(v38) = *(v53 + v38 + 16);
  v41 = *v39;
  v42 = *(v39 + 8);
  v43 = *(v39 + 16);
  *v39 = *v40;
  *(v39 + 16) = v38;
  outlined consume of Environment<AppIntentExecutor?>.Content(v41, v42, v43, outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?);
  v44 = *(v39 + 24);
  *(v39 + 24) = *(v40 + 24);

  *(v39 + 32) = *(v40 + 32);

  v45 = v52[7];
  v46 = v52[8];
  v47 = a1 + v45;
  v48 = v53 + v45;
  *v47 = *v48;
  *(v47 + 16) = *(v48 + 16);
  *(a1 + v46) = *(v53 + v46);
  *(a1 + v52[9]) = *(v53 + v52[9]);
  return a1;
}

char *initializeBufferWithCopyOfBuffer for PlaybackButton.Configuration(char *a1, uint64_t *a2, int *a3)
{
  v4 = a1;
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *a1 = *a2;
    v4 = (v11 + ((v5 + 16) & ~v5));
  }

  else
  {
    type metadata accessor for ClosedRange<Date>();
    v8 = v7;
    v9 = *(v7 - 8);
    if ((*(v9 + 48))(a2, 1, v7))
    {
      type metadata accessor for ClosedRange<Date>?(0);
      memcpy(v4, a2, *(*(v10 - 8) + 64));
    }

    else
    {
      v12 = type metadata accessor for Date();
      v13 = *(*(v12 - 8) + 16);
      v13(v4, a2, v12);
      v13(&v4[*(v8 + 36)], (a2 + *(v8 + 36)), v12);
      (*(v9 + 56))(v4, 0, 1, v8);
    }

    v14 = a3[5];
    v15 = type metadata accessor for Date();
    v16 = *(v15 - 8);
    if ((*(v16 + 48))(a2 + v14, 2, v15))
    {
      v17 = type metadata accessor for PlaybackButton.State(0);
      memcpy(&v4[v14], a2 + v14, *(*(v17 - 8) + 64));
    }

    else
    {
      (*(v16 + 16))(&v4[v14], a2 + v14, v15);
      (*(v16 + 56))(&v4[v14], 0, 2, v15);
    }

    v18 = a3[6];
    v19 = a3[7];
    v20 = &v4[v18];
    v21 = (a2 + v18);
    v22 = v21[1];
    *v20 = *v21;
    *(v20 + 1) = v22;
    v4[v19] = *(a2 + v19);
    v23 = a3[9];
    v4[a3[8]] = *(a2 + a3[8]);
    *&v4[v23] = *(a2 + v23);
    v24 = a3[10];
    v25 = &v4[v24];
    v26 = a2 + v24;
    v27 = *(a2 + v24);
    v28 = *(v26 + 1);
    v29 = v26[16];

    outlined copy of Environment<AppIntentExecutor?>.Content(v27, v28, v29, outlined copy of AppIntentExecutor?);
    *v25 = v27;
    *(v25 + 1) = v28;
    v25[16] = v29;
    v30 = *(v26 + 5);
    v31 = *(v26 + 24);
    *(v25 + 24) = v31;
    *(v25 + 5) = v30;
    v32 = v31;
  }

  return v4;
}

char *assignWithCopy for PlaybackButton.Configuration(char *a1, char *a2, int *a3)
{
  type metadata accessor for ClosedRange<Date>();
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 48);
  v10 = v9(a1, 1, v6);
  v11 = v9(a2, 1, v7);
  if (v10)
  {
    if (!v11)
    {
      v12 = type metadata accessor for Date();
      v13 = *(*(v12 - 8) + 16);
      v13(a1, a2, v12);
      v13(&a1[*(v7 + 36)], &a2[*(v7 + 36)], v12);
      (*(v8 + 56))(a1, 0, 1, v7);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v11)
  {
    outlined destroy of PlaybackButton.State(a1, type metadata accessor for ClosedRange<Date>);
LABEL_6:
    type metadata accessor for ClosedRange<Date>?(0);
    memcpy(a1, a2, *(*(v14 - 8) + 64));
    goto LABEL_7;
  }

  v42 = type metadata accessor for Date();
  v43 = *(*(v42 - 8) + 24);
  v43(a1, a2, v42);
  v43(&a1[*(v7 + 36)], &a2[*(v7 + 36)], v42);
LABEL_7:
  v15 = a3[5];
  v16 = type metadata accessor for Date();
  v17 = *(v16 - 8);
  v18 = *(v17 + 48);
  v19 = v18(&a1[v15], 2, v16);
  v20 = v18(&a2[v15], 2, v16);
  if (!v19)
  {
    if (!v20)
    {
      (*(v17 + 24))(&a1[v15], &a2[v15], v16);
      goto LABEL_13;
    }

    (*(v17 + 8))(&a1[v15], v16);
    goto LABEL_12;
  }

  if (v20)
  {
LABEL_12:
    v21 = type metadata accessor for PlaybackButton.State(0);
    memcpy(&a1[v15], &a2[v15], *(*(v21 - 8) + 64));
    goto LABEL_13;
  }

  (*(v17 + 16))(&a1[v15], &a2[v15], v16);
  (*(v17 + 56))(&a1[v15], 0, 2, v16);
LABEL_13:
  v22 = a3[6];
  v23 = &a1[v22];
  v24 = &a2[v22];
  *v23 = *v24;
  *(v23 + 1) = *(v24 + 1);

  a1[a3[7]] = a2[a3[7]];
  a1[a3[8]] = a2[a3[8]];
  v25 = a3[9];
  v26 = &a1[v25];
  v27 = &a2[v25];
  *v26 = *v27;
  *(v26 + 1) = *(v27 + 1);
  v28 = a3[10];
  v29 = &a1[v28];
  v30 = &a2[v28];
  v31 = *&a2[v28];
  v32 = *(v30 + 1);
  v33 = v30[16];
  outlined copy of Environment<AppIntentExecutor?>.Content(v31, v32, v33, outlined copy of AppIntentExecutor?);
  v34 = *v29;
  v35 = *(v29 + 1);
  v36 = v29[16];
  *v29 = v31;
  *(v29 + 1) = v32;
  v29[16] = v33;
  outlined consume of Environment<AppIntentExecutor?>.Content(v34, v35, v36, outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?);
  v37 = *(v30 + 3);
  v38 = *(v29 + 3);
  *(v29 + 3) = v37;
  v39 = v37;

  v40 = *(v30 + 5);
  *(v29 + 4) = *(v30 + 4);
  *(v29 + 5) = v40;

  return a1;
}

char *initializeWithTake for PlaybackButton.Configuration(char *a1, char *a2, int *a3)
{
  type metadata accessor for ClosedRange<Date>();
  v7 = v6;
  v8 = *(v6 - 8);
  if ((*(v8 + 48))(a2, 1, v6))
  {
    type metadata accessor for ClosedRange<Date>?(0);
    memcpy(a1, a2, *(*(v9 - 8) + 64));
  }

  else
  {
    v10 = type metadata accessor for Date();
    v11 = *(*(v10 - 8) + 32);
    v11(a1, a2, v10);
    v11(&a1[*(v7 + 36)], &a2[*(v7 + 36)], v10);
    (*(v8 + 56))(a1, 0, 1, v7);
  }

  v12 = a3[5];
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(&a2[v12], 2, v13))
  {
    v15 = type metadata accessor for PlaybackButton.State(0);
    memcpy(&a1[v12], &a2[v12], *(*(v15 - 8) + 64));
  }

  else
  {
    (*(v14 + 32))(&a1[v12], &a2[v12], v13);
    (*(v14 + 56))(&a1[v12], 0, 2, v13);
  }

  v16 = a3[7];
  *&a1[a3[6]] = *&a2[a3[6]];
  a1[v16] = a2[v16];
  v17 = a3[9];
  a1[a3[8]] = a2[a3[8]];
  *&a1[v17] = *&a2[v17];
  v18 = a3[10];
  v19 = &a1[v18];
  v20 = &a2[v18];
  v21 = *(v20 + 1);
  *v19 = *v20;
  *(v19 + 1) = v21;
  *(v19 + 2) = *(v20 + 2);
  return a1;
}

char *assignWithTake for PlaybackButton.Configuration(char *a1, char *a2, int *a3)
{
  type metadata accessor for ClosedRange<Date>();
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 48);
  v10 = v9(a1, 1, v6);
  v11 = v9(a2, 1, v7);
  if (v10)
  {
    if (!v11)
    {
      v12 = type metadata accessor for Date();
      v13 = *(*(v12 - 8) + 32);
      v13(a1, a2, v12);
      v13(&a1[*(v7 + 36)], &a2[*(v7 + 36)], v12);
      (*(v8 + 56))(a1, 0, 1, v7);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v11)
  {
    outlined destroy of PlaybackButton.State(a1, type metadata accessor for ClosedRange<Date>);
LABEL_6:
    type metadata accessor for ClosedRange<Date>?(0);
    memcpy(a1, a2, *(*(v14 - 8) + 64));
    goto LABEL_7;
  }

  v37 = type metadata accessor for Date();
  v38 = *(*(v37 - 8) + 40);
  v38(a1, a2, v37);
  v38(&a1[*(v7 + 36)], &a2[*(v7 + 36)], v37);
LABEL_7:
  v15 = a3[5];
  v16 = type metadata accessor for Date();
  v17 = *(v16 - 8);
  v18 = *(v17 + 48);
  v19 = v18(&a1[v15], 2, v16);
  v20 = v18(&a2[v15], 2, v16);
  if (!v19)
  {
    if (!v20)
    {
      (*(v17 + 40))(&a1[v15], &a2[v15], v16);
      goto LABEL_13;
    }

    (*(v17 + 8))(&a1[v15], v16);
    goto LABEL_12;
  }

  if (v20)
  {
LABEL_12:
    v21 = type metadata accessor for PlaybackButton.State(0);
    memcpy(&a1[v15], &a2[v15], *(*(v21 - 8) + 64));
    goto LABEL_13;
  }

  (*(v17 + 32))(&a1[v15], &a2[v15], v16);
  (*(v17 + 56))(&a1[v15], 0, 2, v16);
LABEL_13:
  v22 = a3[6];
  v23 = &a1[v22];
  v24 = &a2[v22];
  v26 = *v24;
  v25 = *(v24 + 1);
  *v23 = v26;
  *(v23 + 1) = v25;

  v27 = a3[8];
  a1[a3[7]] = a2[a3[7]];
  a1[v27] = a2[v27];
  v28 = a3[10];
  *&a1[a3[9]] = *&a2[a3[9]];
  v29 = &a1[v28];
  v30 = &a2[v28];
  v31 = v30[16];
  v32 = *&a1[v28];
  v33 = *&a1[v28 + 8];
  v34 = a1[v28 + 16];
  *v29 = *v30;
  v29[16] = v31;
  outlined consume of Environment<AppIntentExecutor?>.Content(v32, v33, v34, outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?);
  v35 = *(v29 + 3);
  *(v29 + 3) = *(v30 + 3);

  *(v29 + 2) = *(v30 + 2);

  return a1;
}

uint64_t instantiation function for generic protocol witness table for ArchivablePlaybackButtonViewModifier(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type ArchivablePlaybackButtonViewModifier and conformance ArchivablePlaybackButtonViewModifier, type metadata accessor for ArchivablePlaybackButtonViewModifier);
  a1[2] = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type ArchivablePlaybackButtonViewModifier and conformance ArchivablePlaybackButtonViewModifier, type metadata accessor for ArchivablePlaybackButtonViewModifier);
  result = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type ArchivablePlaybackButtonViewModifier and conformance ArchivablePlaybackButtonViewModifier, type metadata accessor for ArchivablePlaybackButtonViewModifier);
  a1[3] = result;
  return result;
}

void type metadata accessor for Environment<ToolbarItemPlacement?>.Content(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for _EnvironmentKeyWritingModifier<CGFloat>(255, a3, a4, MEMORY[0x1E69E6720]);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void type metadata accessor for Binding<String>?()
{
  if (!lazy cache variable for type metadata for Binding<String>?)
  {
    type metadata accessor for _EnvironmentKeyWritingModifier<CGFloat>(255, &lazy cache variable for type metadata for Binding<String>, MEMORY[0x1E69E6158], MEMORY[0x1E6981948]);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Binding<String>?);
    }
  }
}

uint64_t outlined copy of Binding<String>?(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t outlined copy of (Color, Color)?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void type metadata accessor for UISceneSession?()
{
  if (!lazy cache variable for type metadata for UISceneSession?)
  {
    type metadata accessor for NSObject(255, &lazy cache variable for type metadata for UISceneSession);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for UISceneSession?);
    }
  }
}

uint64_t outlined destroy of Environment<NavigationEventHandlers>(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  type metadata accessor for _EnvironmentKeyWritingModifier<CGFloat>(0, a2, a3, MEMORY[0x1E697DCC0]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t initializeBufferWithCopyOfBuffer for ResolvedPlaybackButtonContent(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v12 = *a2;
    *a1 = *a2;
    v3 = v12 + ((v4 + 16) & ~v4);
  }

  else
  {
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    v5 = *(a3 + 20);
    v6 = (a1 + v5);
    v7 = a2 + v5;
    type metadata accessor for ClosedRange<Date>();
    v9 = v8;
    v10 = *(v8 - 8);
    if ((*(v10 + 48))(v7, 1, v8))
    {
      type metadata accessor for ClosedRange<Date>?(0);
      memcpy(v6, v7, *(*(v11 - 8) + 64));
    }

    else
    {
      v13 = type metadata accessor for Date();
      v14 = *(*(v13 - 8) + 16);
      v14(v6, v7, v13);
      v14(&v6[*(v9 + 36)], &v7[*(v9 + 36)], v13);
      (*(v10 + 56))(v6, 0, 1, v9);
    }

    v15 = type metadata accessor for PlaybackButton.Configuration(0);
    v16 = v15[5];
    v17 = type metadata accessor for Date();
    v18 = *(v17 - 8);
    if ((*(v18 + 48))(&v7[v16], 2, v17))
    {
      v19 = type metadata accessor for PlaybackButton.State(0);
      memcpy(&v6[v16], &v7[v16], *(*(v19 - 8) + 64));
    }

    else
    {
      (*(v18 + 16))(&v6[v16], &v7[v16], v17);
      (*(v18 + 56))(&v6[v16], 0, 2, v17);
    }

    v20 = v15[6];
    v21 = &v6[v20];
    v22 = &v7[v20];
    v23 = *(v22 + 1);
    *v21 = *v22;
    *(v21 + 1) = v23;
    v6[v15[7]] = v7[v15[7]];
    v6[v15[8]] = v7[v15[8]];
    *&v6[v15[9]] = *&v7[v15[9]];
    v24 = v15[10];
    v25 = &v6[v24];
    v26 = &v7[v24];
    v27 = *&v7[v24];
    v28 = *&v7[v24 + 8];
    v29 = v26[16];

    outlined copy of Environment<AppIntentExecutor?>.Content(v27, v28, v29, outlined copy of AppIntentExecutor?);
    *v25 = v27;
    *(v25 + 1) = v28;
    v25[16] = v29;
    v30 = *(v26 + 5);
    v31 = *(v26 + 24);
    *(v25 + 24) = v31;
    *(v25 + 5) = v30;
    v32 = v31;
  }

  return v3;
}

uint64_t initializeWithTake for ResolvedPlaybackButtonContent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v4 = *(a3 + 20);
  v5 = (a1 + v4);
  v6 = (a2 + v4);
  type metadata accessor for ClosedRange<Date>();
  v8 = v7;
  v9 = *(v7 - 8);
  if ((*(v9 + 48))(v6, 1, v7))
  {
    type metadata accessor for ClosedRange<Date>?(0);
    memcpy(v5, v6, *(*(v10 - 8) + 64));
  }

  else
  {
    v11 = type metadata accessor for Date();
    v12 = *(*(v11 - 8) + 32);
    v12(v5, v6, v11);
    v12(&v5[*(v8 + 36)], &v6[*(v8 + 36)], v11);
    (*(v9 + 56))(v5, 0, 1, v8);
  }

  v13 = type metadata accessor for PlaybackButton.Configuration(0);
  v14 = v13[5];
  v15 = type metadata accessor for Date();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(&v6[v14], 2, v15))
  {
    v17 = type metadata accessor for PlaybackButton.State(0);
    memcpy(&v5[v14], &v6[v14], *(*(v17 - 8) + 64));
  }

  else
  {
    (*(v16 + 32))(&v5[v14], &v6[v14], v15);
    (*(v16 + 56))(&v5[v14], 0, 2, v15);
  }

  *&v5[v13[6]] = *&v6[v13[6]];
  v5[v13[7]] = v6[v13[7]];
  v5[v13[8]] = v6[v13[8]];
  *&v5[v13[9]] = *&v6[v13[9]];
  v18 = v13[10];
  v19 = &v5[v18];
  v20 = &v6[v18];
  v21 = *(v20 + 1);
  *v19 = *v20;
  *(v19 + 1) = v21;
  *(v19 + 2) = *(v20 + 2);
  return a1;
}

uint64_t assignWithTake for ResolvedPlaybackButtonContent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v4 = *(a3 + 20);
  v5 = (a1 + v4);
  v6 = (a2 + v4);
  type metadata accessor for ClosedRange<Date>();
  v8 = v7;
  v9 = *(v7 - 8);
  v10 = *(v9 + 48);
  v11 = v10(v5, 1, v7);
  v12 = v10(v6, 1, v8);
  if (v11)
  {
    if (!v12)
    {
      v13 = type metadata accessor for Date();
      v14 = *(*(v13 - 8) + 32);
      v14(v5, v6, v13);
      v14(&v5[*(v8 + 36)], &v6[*(v8 + 36)], v13);
      (*(v9 + 56))(v5, 0, 1, v8);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v12)
  {
    outlined destroy of PlaybackButton.State(v5, type metadata accessor for ClosedRange<Date>);
LABEL_6:
    type metadata accessor for ClosedRange<Date>?(0);
    memcpy(v5, v6, *(*(v15 - 8) + 64));
    goto LABEL_7;
  }

  v37 = type metadata accessor for Date();
  v38 = *(*(v37 - 8) + 40);
  v38(v5, v6, v37);
  v38(&v5[*(v8 + 36)], &v6[*(v8 + 36)], v37);
LABEL_7:
  v16 = type metadata accessor for PlaybackButton.Configuration(0);
  v17 = v16[5];
  v18 = type metadata accessor for Date();
  v19 = *(v18 - 8);
  v20 = *(v19 + 48);
  v21 = v20(&v5[v17], 2, v18);
  v22 = v20(&v6[v17], 2, v18);
  if (!v21)
  {
    if (!v22)
    {
      (*(v19 + 40))(&v5[v17], &v6[v17], v18);
      goto LABEL_13;
    }

    (*(v19 + 8))(&v5[v17], v18);
    goto LABEL_12;
  }

  if (v22)
  {
LABEL_12:
    v23 = type metadata accessor for PlaybackButton.State(0);
    memcpy(&v5[v17], &v6[v17], *(*(v23 - 8) + 64));
    goto LABEL_13;
  }

  (*(v19 + 32))(&v5[v17], &v6[v17], v18);
  (*(v19 + 56))(&v5[v17], 0, 2, v18);
LABEL_13:
  v24 = v16[6];
  v25 = &v5[v24];
  v26 = &v6[v24];
  v28 = *v26;
  v27 = *(v26 + 1);
  *v25 = v28;
  *(v25 + 1) = v27;

  v5[v16[7]] = v6[v16[7]];
  v5[v16[8]] = v6[v16[8]];
  *&v5[v16[9]] = *&v6[v16[9]];
  v29 = v16[10];
  v30 = &v5[v29];
  v31 = &v6[v29];
  LOBYTE(v29) = v31[16];
  v32 = *v30;
  v33 = *(v30 + 1);
  v34 = v30[16];
  *v30 = *v31;
  v30[16] = v29;
  outlined consume of Environment<AppIntentExecutor?>.Content(v32, v33, v34, outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?);
  v35 = *(v30 + 3);
  *(v30 + 3) = *(v31 + 3);

  *(v30 + 2) = *(v31 + 2);

  return a1;
}

uint64_t outlined copy of Environment<DismissAction>.Content(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }
}

uint64_t outlined consume of Environment<DismissAction>.Content(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {

    v4 = vars8;
  }
}

uint64_t specialized ArchivablePlaybackButtonViewModifier.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x72756769666E6F63 && a2 == 0xED00006E6F697461;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C797473 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x800000018CD3F6F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x61657241706174 && a2 == 0xE700000000000000)
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

uint64_t outlined copy of Environment<EnvironmentValues>.Content(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {

    v3 = vars8;
  }
}

uint64_t outlined consume of Environment<EnvironmentValues>.Content(uint64_t a1, uint64_t a2, char a3)
{

  if (a3)
  {
  }

  return result;
}

uint64_t outlined consume of Environment<TabSidebarAccessoryViewConfiguration>.Content(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{

  if (a4)
  {
  }

  return result;
}

uint64_t outlined destroy of Environment<ToolbarItemMetrics?>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  type metadata accessor for Environment<ToolbarItemPlacement?>.Content(0, a2, a3, a4, MEMORY[0x1E697DCC0]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t outlined init with copy of Environment<DismissSearchAccessoryAction>.Content(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  type metadata accessor for ClosedRange<Date>?(0, a3, a4, MEMORY[0x1E697DCB8]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t ValidatingTextAttributeResolver.definition(of:)@<X0>(uint64_t a1@<X2>, uint64_t *a2@<X8>)
{
  (*(a1 + 32))(v8);
  v3 = v9;
  v4 = v10;
  v5 = __swift_project_boxed_opaque_existential_1(v8, v9);
  a2[3] = v3;
  a2[4] = *(v4 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_1, v5, v3);
  return __swift_destroy_boxed_opaque_existential_1(v8);
}

uint64_t ValidatingTextAttributeDefinition.fixup(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v6 = type metadata accessor for TextAttributeValidationRecord();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v12 - v9;
  (*(a3 + 32))(a1, a2, a3, v8);
  return (*(v7 + 8))(v10, v6);
}

uint64_t TextAttributeValidationRecord.init()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  v4 = *(type metadata accessor for TextAttributeValidationRecord() + 40);
  v7 = *(*(a1 - 8) + 56);
  v7(a2 + v4, 1, 1, a1);
  AttributedString.AttributeDependencies.init()();
  *(a2 + 8) = v8;
  v5 = type metadata accessor for Optional();
  (*(*(v5 - 8) + 8))(a2 + v4, v5);

  return (v7)(a2 + v4, 1, 1, a1);
}

BOOL static TextAttributeValidationRecord.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Optional();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v41 = v35 - v13;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v17 = v35 - v16;
  if (*a1 != *a2)
  {
    return 0;
  }

  v39 = v10;
  v40 = v15;
  v18 = *(a1 + 1);
  v42 = *(a2 + 1);
  v43 = v18;

  v19 = static AttributedString.AttributeDependencies.== infix(_:_:)();

  if ((v19 & 1) == 0)
  {
    return 0;
  }

  v35[1] = a4;
  v20 = type metadata accessor for TextAttributeValidationRecord();
  v37 = v8;
  v21 = v12;
  v22 = *(v20 + 40);
  v23 = *(TupleTypeMetadata2 + 48);
  v36 = v21;
  v24 = *(v21 + 16);
  v24(v17, &a1[v22], v11);
  v38 = v23;
  v25 = &a2[v22];
  v26 = v37;
  v24(&v17[v23], v25, v11);
  v27 = *(v26 + 48);
  if (v27(v17, 1, a3) == 1)
  {
    if (v27(&v17[v38], 1, a3) == 1)
    {
      (*(v36 + 8))(v17, v11);
      return 1;
    }

    goto LABEL_8;
  }

  v28 = v41;
  v24(v41, v17, v11);
  v29 = v38;
  if (v27(&v17[v38], 1, a3) == 1)
  {
    (*(v26 + 8))(v28, a3);
LABEL_8:
    (*(v40 + 8))(v17, TupleTypeMetadata2);
    return 0;
  }

  v31 = v28;
  v32 = v39;
  (*(v26 + 32))(v39, &v17[v29], a3);
  v33 = dispatch thunk of static Equatable.== infix(_:_:)();
  v34 = *(v26 + 8);
  v34(v32, a3);
  v34(v31, a3);
  (*(v36 + 8))(v17, v11);
  return (v33 & 1) != 0;
}

uint64_t TextAttributeValidationRecord.hash(into:)()
{
  Hasher._combine(_:)(*v0);
  AttributedString.AttributeDependencies.hash(into:)();
  type metadata accessor for Optional();
  return Optional<A>.hash(into:)();
}

Swift::Int TextAttributeValidationRecord.hashValue.getter()
{
  Hasher.init(_seed:)();
  TextAttributeValidationRecord.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TextAttributeValidationRecord<A>()
{
  Hasher.init(_seed:)();
  TextAttributeValidationRecord.hash(into:)();
  return Hasher._finalize()();
}

uint64_t AttributedTextFormatting.Constraints.constrain<A>(_:in:)@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  AttributedTextFormatting.Constraints.constrain<A>(_:in:)();
  *a1 = 0;
  *(a1 + 8) = v6;

  result = outlined consume of AttributedTextFormatting.Constraints?(0);
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  return result;
}

uint64_t EmptyTextAttributeDefinition.dependencies.getter()
{
  type metadata accessor for _ContiguousArrayStorage<AttributedStringKey.Type>(0, &lazy cache variable for type metadata for [AttributedStringKey.Type], MEMORY[0x1E69E62F8]);
  lazy protocol witness table accessor for type [AttributedStringKey.Type] and conformance [A]();
  return AttributedString.Keys.init<A>(_:)();
}

uint64_t static AttributedStringKey.definition(constraintedBy:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  a2[3] = type metadata accessor for AttributedStringKeyDefinition();
  a2[4] = swift_getWitnessTable();
  *a2 = v3;
  a2[1] = v4;
}

uint64_t AttributedStringKeyDefinition.dependencies.getter(uint64_t a1)
{
  type metadata accessor for _ContiguousArrayStorage<AttributedStringKey.Type>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<AttributedStringKey.Type>, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  v3 = *(a1 + 16);
  *(v2 + 16) = xmmword_18CD63400;
  *(v2 + 32) = v3;
  type metadata accessor for _ContiguousArrayStorage<AttributedStringKey.Type>(0, &lazy cache variable for type metadata for [AttributedStringKey.Type], MEMORY[0x1E69E62F8]);
  lazy protocol witness table accessor for type [AttributedStringKey.Type] and conformance [A]();
  return AttributedString.Keys.init<A>(_:)();
}

uint64_t AttributedStringKeyDefinition.fixup(_:)@<X0>(uint64_t a1@<X8>)
{

  AttributedTextFormatting.Constraints.constrain<A>(_:in:)(a1);
}

uint64_t AttributedStringKeyDefinition.nsValue(in:)@<X0>(uint64_t a1@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = type metadata accessor for Optional();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - v5;
  AttributeContainer.subscript.getter();
  v7 = *(AssociatedTypeWitness - 8);
  if ((*(v7 + 48))(v6, 1, AssociatedTypeWitness) == 1)
  {
    result = (*(v4 + 8))(v6, v3);
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  else
  {
    *(a1 + 24) = AssociatedTypeWitness;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
    return (*(v7 + 32))(boxed_opaque_existential_1, v6, AssociatedTypeWitness);
  }

  return result;
}

BOOL AttributedStringKeyDefinition.update(with:)()
{
  EnvironmentValues.attributeScopeContext.getter();
  *v0 = v3;
  v0[1] = v4;

  v1 = static AttributedTextFormatting.Constraints.== infix(_:_:)();

  return (v1 & 1) == 0;
}

uint64_t protocol witness for TextAttributeResolver.definition(of:) in conformance RichTextAttributeResolver<A>@<X0>(uint64_t *a1@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  return ValidatingTextAttributeResolver.definition(of:)(WitnessTable, a1);
}

uint64_t protocol witness for TextAttributeResolver.definition(of:) in conformance DefaultConversionTextAttributeResolver@<X0>(uint64_t *a1@<X8>)
{
  DefaultConversionTextAttributeResolver.definition(of:)(v7);
  v2 = v8;
  v3 = v9;
  v4 = __swift_project_boxed_opaque_existential_1(v7, v8);
  a1[3] = v2;
  a1[4] = *(v3 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  (*(*(v2 - 8) + 16))(boxed_opaque_existential_1, v4, v2);
  return __swift_destroy_boxed_opaque_existential_1(v7);
}

uint64_t type metadata completion function for TextAttributeValidationRecord()
{
  result = type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for TextAttributeValidationRecord(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = v5;
  v7 = *(v5 + 80);
  if (*(v5 + 84))
  {
    v8 = *(v5 + 64);
  }

  else
  {
    v8 = *(v5 + 64) + 1;
  }

  if (v7 <= 7u && (v7 & 0x100000) == 0 && ((-17 - v7) | v7) - v8 >= 0xFFFFFFFFFFFFFFE7)
  {
    *a1 = *a2;
    v12 = a1 & 0xFFFFFFFFFFFFFFF8;
    v13 = a2 & 0xFFFFFFFFFFFFFFF8;
    *((a1 & 0xFFFFFFFFFFFFFFF8) + 8) = *((a2 & 0xFFFFFFFFFFFFFFF8) + 8);
    v14 = *(v5 + 48);

    if (v14(v13 + 16, 1, v4))
    {
      memcpy((v12 + 16), (v13 + 16), v8);
    }

    else
    {
      (*(v6 + 16))(v12 + 16, v13 + 16, v4);
      (*(v6 + 56))(v12 + 16, 0, 1, v4);
    }
  }

  else
  {
    v11 = *a2;
    *v3 = *a2;
    v3 = (v11 + ((v7 & 0xF8 ^ 0x1F8u) & (v7 + 16)));
  }

  return v3;
}

uint64_t destroy for TextAttributeValidationRecord(uint64_t a1, uint64_t a2)
{
  v3 = a1 & 0xFFFFFFFFFFFFFFF8;

  v4 = *(a2 + 16);
  v9 = *(v4 - 8);
  v5 = *(v9 + 80);
  v6 = v3 + v5 + 16;
  result = (*(v9 + 48))(v6 & ~v5, 1, v4);
  if (!result)
  {
    v8 = *(v9 + 8);

    return v8(v6 & ~v5, v4);
  }

  return result;
}

unint64_t initializeWithCopy for TextAttributeValidationRecord(unint64_t a1, unint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *((a1 & 0xFFFFFFFFFFFFFFF8) + 8) = *((a2 & 0xFFFFFFFFFFFFFFF8) + 8);
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = v6 + 16 + (a1 & 0xFFFFFFFFFFFFFFF8);
  v8 = v6 + 16 + (a2 & 0xFFFFFFFFFFFFFFF8);
  v9 = *(v5 + 48);

  if (v9(v8 & ~v6, 1, v4))
  {
    if (*(v5 + 84))
    {
      v10 = *(v5 + 64);
    }

    else
    {
      v10 = *(v5 + 64) + 1;
    }

    memcpy((v7 & ~v6), (v8 & ~v6), v10);
  }

  else
  {
    (*(v5 + 16))(v7 & ~v6, v8 & ~v6, v4);
    (*(v5 + 56))(v7 & ~v6, 0, 1, v4);
  }

  return a1;
}

unint64_t assignWithCopy for TextAttributeValidationRecord(unint64_t a1, unint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = a1 & 0xFFFFFFFFFFFFFFF8;
  v6 = a2 & 0xFFFFFFFFFFFFFFF8;
  *((a1 & 0xFFFFFFFFFFFFFFF8) + 8) = *((a2 & 0xFFFFFFFFFFFFFFF8) + 8);

  v7 = *(a3 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = v9 + 16 + v5;
  v11 = v9 + 16 + v6;
  v12 = *(v8 + 48);
  v13 = v12(v10 & ~v9, 1, v7);
  v14 = v12(v11 & ~v9, 1, v7);
  if (v13)
  {
    if (!v14)
    {
      (*(v8 + 16))(v10 & ~v9, v11 & ~v9, v7);
      (*(v8 + 56))(v10 & ~v9, 0, 1, v7);
      return a1;
    }

    v15 = *(v8 + 84);
    v16 = *(v8 + 64);
  }

  else
  {
    if (!v14)
    {
      (*(v8 + 24))(v10 & ~v9, v11 & ~v9, v7);
      return a1;
    }

    v18 = *(v8 + 8);
    v17 = v8 + 8;
    v18(v10 & ~v9, v7);
    v15 = *(v17 + 76);
    v16 = *(v17 + 56);
  }

  if (v15)
  {
    v19 = v16;
  }

  else
  {
    v19 = v16 + 1;
  }

  memcpy((v10 & ~v9), (v11 & ~v9), v19);
  return a1;
}

unint64_t initializeWithTake for TextAttributeValidationRecord(unint64_t a1, unint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *((a1 & 0xFFFFFFFFFFFFFFF8) + 8) = *((a2 & 0xFFFFFFFFFFFFFFF8) + 8);
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = v6 + 16 + (a1 & 0xFFFFFFFFFFFFFFF8);
  v8 = v6 + 16 + (a2 & 0xFFFFFFFFFFFFFFF8);
  if ((*(v5 + 48))(v8 & ~v6, 1, v4))
  {
    if (*(v5 + 84))
    {
      v9 = *(v5 + 64);
    }

    else
    {
      v9 = *(v5 + 64) + 1;
    }

    memcpy((v7 & ~v6), (v8 & ~v6), v9);
  }

  else
  {
    (*(v5 + 32))(v7 & ~v6, v8 & ~v6, v4);
    (*(v5 + 56))(v7 & ~v6, 0, 1, v4);
  }

  return a1;
}

unint64_t assignWithTake for TextAttributeValidationRecord(unint64_t a1, unint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = a1 & 0xFFFFFFFFFFFFFFF8;
  v6 = a2 & 0xFFFFFFFFFFFFFFF8;
  *((a1 & 0xFFFFFFFFFFFFFFF8) + 8) = *((a2 & 0xFFFFFFFFFFFFFFF8) + 8);

  v7 = *(a3 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = v9 + 16 + v5;
  v11 = v9 + 16 + v6;
  v12 = *(v8 + 48);
  LODWORD(v5) = v12(v10 & ~v9, 1, v7);
  v13 = v12(v11 & ~v9, 1, v7);
  if (v5)
  {
    if (!v13)
    {
      (*(v8 + 32))(v10 & ~v9, v11 & ~v9, v7);
      (*(v8 + 56))(v10 & ~v9, 0, 1, v7);
      return a1;
    }

    v14 = *(v8 + 84);
    v15 = *(v8 + 64);
  }

  else
  {
    if (!v13)
    {
      (*(v8 + 40))(v10 & ~v9, v11 & ~v9, v7);
      return a1;
    }

    v17 = *(v8 + 8);
    v16 = v8 + 8;
    v17(v10 & ~v9, v7);
    v14 = *(v16 + 76);
    v15 = *(v16 + 56);
  }

  if (v14)
  {
    v18 = v15;
  }

  else
  {
    v18 = v15 + 1;
  }

  memcpy((v10 & ~v9), (v11 & ~v9), v18);
  return a1;
}

uint64_t getEnumTagSinglePayload for TextAttributeValidationRecord(unint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  v9 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v9;
  }

  if (!a2)
  {
    return 0;
  }

  v10 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_31;
  }

  v11 = v9 + ((v8 + 16) & ~v8);
  v12 = 8 * v11;
  if (v11 <= 3)
  {
    v15 = ((v10 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v15))
    {
      v13 = *(a1 + v11);
      if (!v13)
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v15 > 0xFF)
    {
      v13 = *(a1 + v11);
      if (!*(a1 + v11))
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v15 < 2)
    {
LABEL_31:
      v17 = a1 & 0xFFFFFFFFFFFFFFF8;
      if ((v6 & 0x80000000) != 0)
      {
        v19 = (*(v4 + 48))((v17 + v8 + 16) & ~v8);
        if (v19 >= 2)
        {
          return v19 - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v18 = *(v17 + 8);
        if (v18 >= 0xFFFFFFFF)
        {
          LODWORD(v18) = -1;
        }

        return (v18 + 1);
      }
    }
  }

  v13 = *(a1 + v11);
  if (!*(a1 + v11))
  {
    goto LABEL_31;
  }

LABEL_20:
  v16 = (v13 - 1) << v12;
  if (v11 > 3)
  {
    v16 = 0;
  }

  if (v11)
  {
    if (v11 > 3)
    {
      LODWORD(v11) = 4;
    }

    if (v11 > 2)
    {
      if (v11 == 3)
      {
        LODWORD(v11) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v11) = *a1;
      }
    }

    else if (v11 == 1)
    {
      LODWORD(v11) = *a1;
    }

    else
    {
      LODWORD(v11) = *a1;
    }
  }

  return v7 + (v11 | v16) + 1;
}

void storeEnumTagSinglePayload for TextAttributeValidationRecord(unint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(v7 + 80);
  v12 = *(*(*(a4 + 16) - 8) + 64);
  if (!v8)
  {
    ++v12;
  }

  v13 = ((v11 + 16) & ~v11) + v12;
  v14 = a3 >= v10;
  v15 = a3 - v10;
  if (v15 == 0 || !v14)
  {
LABEL_20:
    if (v10 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  if (v13 > 3)
  {
    v6 = 1;
    if (v10 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  v16 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
  if (!HIWORD(v16))
  {
    if (v16 < 0x100)
    {
      v17 = 1;
    }

    else
    {
      v17 = 2;
    }

    if (v16 >= 2)
    {
      v6 = v17;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_20;
  }

  v6 = 4;
  if (v10 < a2)
  {
LABEL_21:
    v18 = ~v10 + a2;
    if (v13 < 4)
    {
      v19 = (v18 >> (8 * v13)) + 1;
      if (v13)
      {
        v20 = v18 & ~(-1 << (8 * v13));
        bzero(a1, v13);
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *a1 = v20;
            if (v6 > 1)
            {
LABEL_63:
              if (v6 == 2)
              {
                *(a1 + v13) = v19;
              }

              else
              {
                *(a1 + v13) = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v6 > 1)
            {
              goto LABEL_63;
            }
          }

          goto LABEL_60;
        }

        *a1 = v20;
        *(a1 + 2) = BYTE2(v20);
      }

      if (v6 > 1)
      {
        goto LABEL_63;
      }
    }

    else
    {
      bzero(a1, v13);
      *a1 = v18;
      v19 = 1;
      if (v6 > 1)
      {
        goto LABEL_63;
      }
    }

LABEL_60:
    if (v6)
    {
      *(a1 + v13) = v19;
    }

    return;
  }

LABEL_30:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *(a1 + v13) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *(a1 + v13) = 0;
LABEL_36:
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!v6)
  {
    goto LABEL_36;
  }

  *(a1 + v13) = 0;
  if (!a2)
  {
    return;
  }

LABEL_37:
  v21 = a1 & 0xFFFFFFFFFFFFFFF8;
  if ((v9 & 0x80000000) != 0)
  {
    v23 = ((v21 + v11 + 16) & ~v11);
    if (v9 >= a2)
    {
      v27 = *(v7 + 56);
      v28 = a2 + 1;

      v27((v21 + v11 + 16) & ~v11, v28);
    }

    else
    {
      if (v12 <= 3)
      {
        v24 = ~(-1 << (8 * v12));
      }

      else
      {
        v24 = -1;
      }

      if (v12)
      {
        v25 = v24 & (~v9 + a2);
        if (v12 <= 3)
        {
          v26 = v12;
        }

        else
        {
          v26 = 4;
        }

        bzero(v23, v12);
        if (v26 > 2)
        {
          if (v26 == 3)
          {
            *v23 = v25;
            v23[2] = BYTE2(v25);
          }

          else
          {
            *v23 = v25;
          }
        }

        else if (v26 == 1)
        {
          *v23 = v25;
        }

        else
        {
          *v23 = v25;
        }
      }
    }
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v22 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v22 = a2 - 1;
    }

    *(v21 + 8) = v22;
  }
}

unint64_t lazy protocol witness table accessor for type AttributedTextFormatting.Constraints and conformance AttributedTextFormatting.Constraints()
{
  result = lazy protocol witness table cache variable for type AttributedTextFormatting.Constraints and conformance AttributedTextFormatting.Constraints;
  if (!lazy protocol witness table cache variable for type AttributedTextFormatting.Constraints and conformance AttributedTextFormatting.Constraints)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributedTextFormatting.Constraints and conformance AttributedTextFormatting.Constraints);
  }

  return result;
}

uint64_t outlined consume of AttributedTextFormatting.Constraints?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t type metadata accessor for AttributedStringKey.Type()
{
  result = lazy cache variable for type metadata for AttributedStringKey.Type;
  if (!lazy cache variable for type metadata for AttributedStringKey.Type)
  {
    type metadata accessor for AttributedStringKey();
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for AttributedStringKey.Type);
  }

  return result;
}

unint64_t type metadata accessor for AttributedStringKey()
{
  result = lazy cache variable for type metadata for AttributedStringKey;
  if (!lazy cache variable for type metadata for AttributedStringKey)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for AttributedStringKey);
  }

  return result;
}

void type metadata accessor for _ContiguousArrayStorage<AttributedStringKey.Type>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, unint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for AttributedStringKey.Type();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type [AttributedStringKey.Type] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [AttributedStringKey.Type] and conformance [A];
  if (!lazy protocol witness table cache variable for type [AttributedStringKey.Type] and conformance [A])
  {
    type metadata accessor for _ContiguousArrayStorage<AttributedStringKey.Type>(255, &lazy cache variable for type metadata for [AttributedStringKey.Type], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [AttributedStringKey.Type] and conformance [A]);
  }

  return result;
}

uint64_t protocol witness for ViewModifier.body(content:) in conformance ToolbarItemTintColorModifier@<X0>(uint64_t *a1@<X8>)
{
  result = specialized Environment.wrappedValue.getter(*v1, *(v1 + 8));
  if (!result)
  {
    result = static Color.accentColor.getter();
  }

  *a1 = result;
  return result;
}

void *protocol witness for static PreferenceKey.reduce(value:nextValue:) in conformance ToolbarItemTintColorKey(void *result, void *(*a2)(uint64_t *__return_ptr))
{
  v2 = result;
  v3 = *result;
  if (!*result)
  {
    result = a2(&v4);
    v3 = v4;
  }

  *v2 = v3;
  return result;
}

uint64_t *assignWithTake for ToolbarItemTintColorModifier(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *a1;
  v6 = *(a1 + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  outlined consume of Environment<Color?>.Content(v5, v6);
  return a1;
}

{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of Environment<Color?>.Content(v6, v7);
  *(a1 + 9) = *(a2 + 9);
  return a1;
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(listInputs:) in conformance ToolbarItemWritesTintColorPredicate(_OWORD *a1)
{
  v1 = a1[1];
  v9[0] = *a1;
  v9[1] = v1;
  v3 = *a1;
  v2 = a1[1];
  v9[2] = a1[2];
  v6 = v3;
  v7 = v2;
  v8 = a1[2];
  outlined init with copy of _GraphInputs(v9, v10);
  v4 = specialized static ToolbarItemWritesTintColorPredicate.evaluate(inputs:)(&v6);
  v10[0] = v6;
  v10[1] = v7;
  v10[2] = v8;
  outlined destroy of _GraphInputs(v10);
  return v4 & 1;
}

uint64_t associated type witness table accessor for ViewModifier.Body : View in ToolbarItemTintColorModifier()
{
  return swift_getOpaqueTypeConformance2();
}

{
  return swift_getOpaqueTypeConformance2();
}

uint64_t specialized static ToolbarItemWritesTintColorPredicate.evaluate(inputs:)(uint64_t a1)
{
  v2 = *a1;
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 24);
  v9 = *(a1 + 40);
  if ((MEMORY[0x18D00B1E0](&v6) & 1) != 0 && (lazy protocol witness table accessor for type EffectiveButtonStyleInput and conformance EffectiveButtonStyleInput(), PropertyList.subscript.getter(), v3 = v6, lazy protocol witness table accessor for type BorderedProminentButtonStyle and conformance BorderedProminentButtonStyle(), v3 == &type metadata for BorderedProminentButtonStyle))
  {
    v6 = v2;
    v7 = *(a1 + 8);
    v8 = *(a1 + 24);
    v9 = *(a1 + 40);
    v4 = static StyleContextAcceptsPredicate.evaluate(inputs:)();
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<ToolbarItemTintColorModifier>, _PreferenceWritingModifier<ToolbarItemTintColorKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<ToolbarItemTintColorModifier>, _PreferenceWritingModifier<ToolbarItemTintColorKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<ToolbarItemTintColorModifier>, _PreferenceWritingModifier<ToolbarItemTintColorKey>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<_ViewModifier_Content<ToolbarItemTintColorModifier>, _PreferenceWritingModifier<ToolbarItemTintColorKey>>();
    lazy protocol witness table accessor for type _ViewModifier_Content<ToolbarItemTintColorModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<ToolbarItemTintColorModifier> and conformance _ViewModifier_Content<A>, type metadata accessor for _ViewModifier_Content<ToolbarItemTintColorModifier>);
    lazy protocol witness table accessor for type _ViewModifier_Content<ToolbarItemTintColorModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _PreferenceWritingModifier<ToolbarItemTintColorKey> and conformance _PreferenceWritingModifier<A>, type metadata accessor for _PreferenceWritingModifier<ToolbarItemTintColorKey>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<ToolbarItemTintColorModifier>, _PreferenceWritingModifier<ToolbarItemTintColorKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<_ViewModifier_Content<ToolbarItemTintColorModifier>, _PreferenceWritingModifier<ToolbarItemTintColorKey>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<ToolbarItemTintColorModifier>, _PreferenceWritingModifier<ToolbarItemTintColorKey>>)
  {
    type metadata accessor for _ViewModifier_Content<ToolbarItemTintColorModifier>();
    type metadata accessor for _PreferenceWritingModifier<ToolbarItemTintColorKey>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<ToolbarItemTintColorModifier>, _PreferenceWritingModifier<ToolbarItemTintColorKey>>);
    }
  }
}

void type metadata accessor for _ViewModifier_Content<ToolbarItemTintColorModifier>()
{
  if (!lazy cache variable for type metadata for _ViewModifier_Content<ToolbarItemTintColorModifier>)
  {
    lazy protocol witness table accessor for type ToolbarItemTintColorModifier and conformance ToolbarItemTintColorModifier();
    v0 = type metadata accessor for _ViewModifier_Content();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ViewModifier_Content<ToolbarItemTintColorModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ToolbarItemTintColorModifier and conformance ToolbarItemTintColorModifier()
{
  result = lazy protocol witness table cache variable for type ToolbarItemTintColorModifier and conformance ToolbarItemTintColorModifier;
  if (!lazy protocol witness table cache variable for type ToolbarItemTintColorModifier and conformance ToolbarItemTintColorModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolbarItemTintColorModifier and conformance ToolbarItemTintColorModifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ToolbarItemTintColorModifier and conformance ToolbarItemTintColorModifier;
  if (!lazy protocol witness table cache variable for type ToolbarItemTintColorModifier and conformance ToolbarItemTintColorModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolbarItemTintColorModifier and conformance ToolbarItemTintColorModifier);
  }

  return result;
}

void type metadata accessor for _PreferenceWritingModifier<ToolbarItemTintColorKey>()
{
  if (!lazy cache variable for type metadata for _PreferenceWritingModifier<ToolbarItemTintColorKey>)
  {
    v0 = type metadata accessor for _PreferenceWritingModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _PreferenceWritingModifier<ToolbarItemTintColorKey>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type _ViewModifier_Content<ToolbarItemTintColorModifier> and conformance _ViewModifier_Content<A>(unint64_t *a1, void (*a2)(uint64_t))
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

void type metadata accessor for _TraitWritingModifier<ListRowPlatterColorTraitKey>()
{
  if (!lazy cache variable for type metadata for _TraitWritingModifier<ListRowPlatterColorTraitKey>)
  {
    v0 = type metadata accessor for _TraitWritingModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _TraitWritingModifier<ListRowPlatterColorTraitKey>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _TraitWritingModifier<ListRowPlatterColorTraitKey> and conformance _TraitWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _TraitWritingModifier<ListRowPlatterColorTraitKey> and conformance _TraitWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _TraitWritingModifier<ListRowPlatterColorTraitKey> and conformance _TraitWritingModifier<A>)
  {
    type metadata accessor for _TraitWritingModifier<ListRowPlatterColorTraitKey>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _TraitWritingModifier<ListRowPlatterColorTraitKey> and conformance _TraitWritingModifier<A>);
  }

  return result;
}

void static ShouldExpandAllTraitKey.defaultValue.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

uint64_t ExpansionState.description.getter()
{
  v1 = 0x65736C6166;
  if (*v0 != 1)
  {
    v1 = 7104878;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1702195828;
  }
}

Swift::Int ExpansionState.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](v1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type ExpansionState and conformance ExpansionState()
{
  result = lazy protocol witness table cache variable for type ExpansionState and conformance ExpansionState;
  if (!lazy protocol witness table cache variable for type ExpansionState and conformance ExpansionState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExpansionState and conformance ExpansionState);
  }

  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ExpansionState()
{
  v1 = 0x65736C6166;
  if (*v0 != 1)
  {
    v1 = 7104878;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1702195828;
  }
}

uint64_t BalancedNavigationSplitViewStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v2;
  v3 = *(a1 + 16);
  v6[2] = *(a1 + 32);
  v7 = *(a1 + 48);
  *a2 = implicit closure #2 in implicit closure #1 in variable initialization expression of NavigationSplitReader._stateHost;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = *a1;
  *(a2 + 48) = v3;
  *(a2 + 64) = *(a1 + 32);
  *(a2 + 80) = *(a1 + 48);
  return outlined init with copy of NavigationSplitViewStyleConfiguration(v6, &v5);
}

uint64_t ColumnsFormStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X8>)
{
  result = static HorizontalAlignment.formDetailLeading.getter();
  *a1 = result;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  return result;
}

uint64_t protocol witness for FormStyle.makeBody(configuration:) in conformance ColumnsFormStyle@<X0>(uint64_t a1@<X8>)
{
  result = static HorizontalAlignment.formDetailLeading.getter();
  *a1 = result;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  return result;
}

BOOL protocol witness for static StyleContext.accepts<A>(_:at:) in conformance ColumnsFormStyleContext(uint64_t a1, uint64_t a2, ValueMetadata *a3, ValueMetadata *a4)
{
  lazy protocol witness table accessor for type ColumnsFormStyleContext and conformance ColumnsFormStyleContext();

  return specialized static FormStyleContext.accepts<A>(_:at:)(a4, a3);
}

uint64_t protocol witness for static StyleContext.acceptsAny<A>(_:) in conformance ColumnsFormStyleContext(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  if (v3)
  {
    memcpy(&v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), v2, v1);
  }

  return static StyleContext.acceptsAny<A>(_:)() & 1;
}

unint64_t instantiation function for generic protocol witness table for ColumnsFormStyleContext(uint64_t a1)
{
  result = lazy protocol witness table accessor for type ColumnsFormStyleContext and conformance ColumnsFormStyleContext();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type ColumnsFormStyleContext and conformance ColumnsFormStyleContext()
{
  result = lazy protocol witness table cache variable for type ColumnsFormStyleContext and conformance ColumnsFormStyleContext;
  if (!lazy protocol witness table cache variable for type ColumnsFormStyleContext and conformance ColumnsFormStyleContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ColumnsFormStyleContext and conformance ColumnsFormStyleContext);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ColumnsFormStyleContext and conformance ColumnsFormStyleContext;
  if (!lazy protocol witness table cache variable for type ColumnsFormStyleContext and conformance ColumnsFormStyleContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ColumnsFormStyleContext and conformance ColumnsFormStyleContext);
  }

  return result;
}

uint64_t closure #1 in ColumnarLabeledContentStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X8>)
{
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v2 = v14;
  v3 = v16;
  v4 = v18;
  v21 = 1;
  v20 = v15;
  v19 = v17;
  v5 = static HorizontalAlignment.formDetailLeading.getter();
  v6 = v15;
  v7 = v17;
  *&v22 = 0;
  BYTE8(v22) = 1;
  *&v23 = v14;
  BYTE8(v23) = v15;
  *&v24 = v16;
  BYTE8(v24) = v17;
  v25 = v18;
  *&v26 = v5;
  *(&v26 + 1) = closure #3 in closure #1 in ColumnarLabeledContentStyle.makeBody(configuration:);
  v27 = 0;
  *a1 = 0x3FF0000000000000;
  v8 = v22;
  *(a1 + 24) = v23;
  *(a1 + 8) = v8;
  v9 = v24;
  v10 = v25;
  v11 = v26;
  *(a1 + 88) = 0;
  *(a1 + 72) = v11;
  *(a1 + 56) = v10;
  *(a1 + 40) = v9;
  v28 = 0;
  v29 = 1;
  v30 = v2;
  v31 = v6;
  v32 = v3;
  v33 = v7;
  v34 = v4;
  v35 = v5;
  v36 = closure #3 in closure #1 in ColumnarLabeledContentStyle.makeBody(configuration:);
  v37 = 0;
  outlined init with copy of TupleView<(StaticIf<_SemanticFeature<Semantics_v3>, ModifiedContent<LabeledContentStyleConfiguration.Label, _TraitWritingModifier<LayoutPriorityTraitKey>>, LabeledContentStyleConfiguration.Label>, ModifiedContent<ModifiedContent<Spacer, _FrameLayout>, _AlignmentWritingModifier>, LabeledContentStyleConfiguration.Content)>(&v22, &v13, type metadata accessor for ModifiedContent<ModifiedContent<Spacer, _FrameLayout>, _AlignmentWritingModifier>);
  return outlined destroy of TupleView<(StaticIf<_SemanticFeature<Semantics_v3>, ModifiedContent<LabeledContentStyleConfiguration.Label, _TraitWritingModifier<LayoutPriorityTraitKey>>, LabeledContentStyleConfiguration.Label>, ModifiedContent<ModifiedContent<Spacer, _FrameLayout>, _AlignmentWritingModifier>, LabeledContentStyleConfiguration.Content)>(&v28, type metadata accessor for ModifiedContent<ModifiedContent<Spacer, _FrameLayout>, _AlignmentWritingModifier>);
}

double protocol witness for LabeledContentStyle.makeBody(configuration:) in conformance ColumnarLabeledContentStyle@<D0>(uint64_t a1@<X8>)
{
  v2 = static VerticalAlignment.firstTextBaseline.getter();
  v16 = 0;
  closure #1 in ColumnarLabeledContentStyle.makeBody(configuration:)(&v9);
  v19 = v11;
  v20 = v12;
  v21 = v13;
  v22 = v14;
  v17 = v9;
  v18 = v10;
  v23[2] = v11;
  v23[3] = v12;
  v23[4] = v13;
  v23[5] = v14;
  v23[0] = v9;
  v23[1] = v10;
  outlined init with copy of TupleView<(StaticIf<_SemanticFeature<Semantics_v3>, ModifiedContent<LabeledContentStyleConfiguration.Label, _TraitWritingModifier<LayoutPriorityTraitKey>>, LabeledContentStyleConfiguration.Label>, ModifiedContent<ModifiedContent<Spacer, _FrameLayout>, _AlignmentWritingModifier>, LabeledContentStyleConfiguration.Content)>(&v17, &v8, type metadata accessor for TupleView<(StaticIf<_SemanticFeature<Semantics_v3>, ModifiedContent<LabeledContentStyleConfiguration.Label, _TraitWritingModifier<LayoutPriorityTraitKey>>, LabeledContentStyleConfiguration.Label>, ModifiedContent<ModifiedContent<Spacer, _FrameLayout>, _AlignmentWritingModifier>, LabeledContentStyleConfiguration.Content)>);
  outlined destroy of TupleView<(StaticIf<_SemanticFeature<Semantics_v3>, ModifiedContent<LabeledContentStyleConfiguration.Label, _TraitWritingModifier<LayoutPriorityTraitKey>>, LabeledContentStyleConfiguration.Label>, ModifiedContent<ModifiedContent<Spacer, _FrameLayout>, _AlignmentWritingModifier>, LabeledContentStyleConfiguration.Content)>(v23, type metadata accessor for TupleView<(StaticIf<_SemanticFeature<Semantics_v3>, ModifiedContent<LabeledContentStyleConfiguration.Label, _TraitWritingModifier<LayoutPriorityTraitKey>>, LabeledContentStyleConfiguration.Label>, ModifiedContent<ModifiedContent<Spacer, _FrameLayout>, _AlignmentWritingModifier>, LabeledContentStyleConfiguration.Content)>);
  *&v15[39] = v19;
  *&v15[55] = v20;
  *&v15[71] = v21;
  *&v15[87] = v22;
  *&v15[7] = v17;
  *&v15[23] = v18;
  v3 = *&v15[32];
  *(a1 + 65) = *&v15[48];
  v4 = *&v15[80];
  *(a1 + 81) = *&v15[64];
  *(a1 + 97) = v4;
  v6 = *v15;
  result = *&v15[16];
  *(a1 + 33) = *&v15[16];
  *(a1 + 49) = v3;
  v7 = v16;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 112) = *&v15[95];
  *(a1 + 17) = v6;
  return result;
}

void type metadata accessor for TupleView<(StaticIf<_SemanticFeature<Semantics_v3>, ModifiedContent<LabeledContentStyleConfiguration.Label, _TraitWritingModifier<LayoutPriorityTraitKey>>, LabeledContentStyleConfiguration.Label>, ModifiedContent<ModifiedContent<Spacer, _FrameLayout>, _AlignmentWritingModifier>, LabeledContentStyleConfiguration.Content)>()
{
  if (!lazy cache variable for type metadata for TupleView<(StaticIf<_SemanticFeature<Semantics_v3>, ModifiedContent<LabeledContentStyleConfiguration.Label, _TraitWritingModifier<LayoutPriorityTraitKey>>, LabeledContentStyleConfiguration.Label>, ModifiedContent<ModifiedContent<Spacer, _FrameLayout>, _AlignmentWritingModifier>, LabeledContentStyleConfiguration.Content)>)
  {
    type metadata accessor for (StaticIf<_SemanticFeature<Semantics_v3>, ModifiedContent<LabeledContentStyleConfiguration.Label, _TraitWritingModifier<LayoutPriorityTraitKey>>, LabeledContentStyleConfiguration.Label>, ModifiedContent<ModifiedContent<Spacer, _FrameLayout>, _AlignmentWritingModifier>, LabeledContentStyleConfiguration.Content)();
    v0 = type metadata accessor for TupleView();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TupleView<(StaticIf<_SemanticFeature<Semantics_v3>, ModifiedContent<LabeledContentStyleConfiguration.Label, _TraitWritingModifier<LayoutPriorityTraitKey>>, LabeledContentStyleConfiguration.Label>, ModifiedContent<ModifiedContent<Spacer, _FrameLayout>, _AlignmentWritingModifier>, LabeledContentStyleConfiguration.Content)>);
    }
  }
}

void type metadata accessor for (StaticIf<_SemanticFeature<Semantics_v3>, ModifiedContent<LabeledContentStyleConfiguration.Label, _TraitWritingModifier<LayoutPriorityTraitKey>>, LabeledContentStyleConfiguration.Label>, ModifiedContent<ModifiedContent<Spacer, _FrameLayout>, _AlignmentWritingModifier>, LabeledContentStyleConfiguration.Content)()
{
  if (!lazy cache variable for type metadata for (StaticIf<_SemanticFeature<Semantics_v3>, ModifiedContent<LabeledContentStyleConfiguration.Label, _TraitWritingModifier<LayoutPriorityTraitKey>>, LabeledContentStyleConfiguration.Label>, ModifiedContent<ModifiedContent<Spacer, _FrameLayout>, _AlignmentWritingModifier>, LabeledContentStyleConfiguration.Content))
  {
    type metadata accessor for StaticIf<_SemanticFeature<Semantics_v3>, ModifiedContent<LabeledContentStyleConfiguration.Label, _TraitWritingModifier<LayoutPriorityTraitKey>>, LabeledContentStyleConfiguration.Label>();
    type metadata accessor for ModifiedContent<ModifiedContent<Spacer, _FrameLayout>, _AlignmentWritingModifier>();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &lazy cache variable for type metadata for (StaticIf<_SemanticFeature<Semantics_v3>, ModifiedContent<LabeledContentStyleConfiguration.Label, _TraitWritingModifier<LayoutPriorityTraitKey>>, LabeledContentStyleConfiguration.Label>, ModifiedContent<ModifiedContent<Spacer, _FrameLayout>, _AlignmentWritingModifier>, LabeledContentStyleConfiguration.Content));
    }
  }
}

void type metadata accessor for StaticIf<_SemanticFeature<Semantics_v3>, ModifiedContent<LabeledContentStyleConfiguration.Label, _TraitWritingModifier<LayoutPriorityTraitKey>>, LabeledContentStyleConfiguration.Label>()
{
  if (!lazy cache variable for type metadata for StaticIf<_SemanticFeature<Semantics_v3>, ModifiedContent<LabeledContentStyleConfiguration.Label, _TraitWritingModifier<LayoutPriorityTraitKey>>, LabeledContentStyleConfiguration.Label>)
  {
    type metadata accessor for _SemanticFeature<Semantics_v3>(255, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v3>, MEMORY[0x1E697DF30], MEMORY[0x1E697DF28], MEMORY[0x1E697EC20]);
    type metadata accessor for ModifiedContent<LabeledContentStyleConfiguration.Label, _TraitWritingModifier<LayoutPriorityTraitKey>>();
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<_SemanticFeature<Semantics_v3>, ModifiedContent<LabeledContentStyleConfiguration.Label, _TraitWritingModifier<LayoutPriorityTraitKey>>, LabeledContentStyleConfiguration.Label>);
    }
  }
}

void type metadata accessor for ModifiedContent<LabeledContentStyleConfiguration.Label, _TraitWritingModifier<LayoutPriorityTraitKey>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<LabeledContentStyleConfiguration.Label, _TraitWritingModifier<LayoutPriorityTraitKey>>)
  {
    type metadata accessor for _SemanticFeature<Semantics_v3>(255, &lazy cache variable for type metadata for _TraitWritingModifier<LayoutPriorityTraitKey>, MEMORY[0x1E697FEB0], MEMORY[0x1E697FEA0], MEMORY[0x1E697FDB8]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<LabeledContentStyleConfiguration.Label, _TraitWritingModifier<LayoutPriorityTraitKey>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<Spacer, _FrameLayout>, _AlignmentWritingModifier>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Spacer, _FrameLayout>, _AlignmentWritingModifier>)
  {
    type metadata accessor for _SemanticFeature<Semantics_v3>(255, &lazy cache variable for type metadata for ModifiedContent<Spacer, _FrameLayout>, MEMORY[0x1E6981840], MEMORY[0x1E697E048], MEMORY[0x1E697E830]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Spacer, _FrameLayout>, _AlignmentWritingModifier>);
    }
  }
}

void type metadata accessor for _SemanticFeature<Semantics_v3>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t outlined init with copy of TupleView<(StaticIf<_SemanticFeature<Semantics_v3>, ModifiedContent<LabeledContentStyleConfiguration.Label, _TraitWritingModifier<LayoutPriorityTraitKey>>, LabeledContentStyleConfiguration.Label>, ModifiedContent<ModifiedContent<Spacer, _FrameLayout>, _AlignmentWritingModifier>, LabeledContentStyleConfiguration.Content)>(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of TupleView<(StaticIf<_SemanticFeature<Semantics_v3>, ModifiedContent<LabeledContentStyleConfiguration.Label, _TraitWritingModifier<LayoutPriorityTraitKey>>, LabeledContentStyleConfiguration.Label>, ModifiedContent<ModifiedContent<Spacer, _FrameLayout>, _AlignmentWritingModifier>, LabeledContentStyleConfiguration.Content)>(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void type metadata accessor for HStack<TupleView<(StaticIf<_SemanticFeature<Semantics_v3>, ModifiedContent<LabeledContentStyleConfiguration.Label, _TraitWritingModifier<LayoutPriorityTraitKey>>, LabeledContentStyleConfiguration.Label>, ModifiedContent<ModifiedContent<Spacer, _FrameLayout>, _AlignmentWritingModifier>, LabeledContentStyleConfiguration.Content)>>()
{
  if (!lazy cache variable for type metadata for HStack<TupleView<(StaticIf<_SemanticFeature<Semantics_v3>, ModifiedContent<LabeledContentStyleConfiguration.Label, _TraitWritingModifier<LayoutPriorityTraitKey>>, LabeledContentStyleConfiguration.Label>, ModifiedContent<ModifiedContent<Spacer, _FrameLayout>, _AlignmentWritingModifier>, LabeledContentStyleConfiguration.Content)>>)
  {
    type metadata accessor for TupleView<(StaticIf<_SemanticFeature<Semantics_v3>, ModifiedContent<LabeledContentStyleConfiguration.Label, _TraitWritingModifier<LayoutPriorityTraitKey>>, LabeledContentStyleConfiguration.Label>, ModifiedContent<ModifiedContent<Spacer, _FrameLayout>, _AlignmentWritingModifier>, LabeledContentStyleConfiguration.Content)>();
    lazy protocol witness table accessor for type HStack<TupleView<(StaticIf<_SemanticFeature<Semantics_v3>, ModifiedContent<LabeledContentStyleConfiguration.Label, _TraitWritingModifier<LayoutPriorityTraitKey>>, LabeledContentStyleConfiguration.Label>, ModifiedContent<ModifiedContent<Spacer, _FrameLayout>, _AlignmentWritingModifier>, LabeledContentStyleConfiguration.Content)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type TupleView<(StaticIf<_SemanticFeature<Semantics_v3>, ModifiedContent<LabeledContentStyleConfiguration.Label, _TraitWritingModifier<LayoutPriorityTraitKey>>, LabeledContentStyleConfiguration.Label>, ModifiedContent<ModifiedContent<Spacer, _FrameLayout>, _AlignmentWritingModifier>, LabeledContentStyleConfiguration.Content)> and conformance TupleView<A>, type metadata accessor for TupleView<(StaticIf<_SemanticFeature<Semantics_v3>, ModifiedContent<LabeledContentStyleConfiguration.Label, _TraitWritingModifier<LayoutPriorityTraitKey>>, LabeledContentStyleConfiguration.Label>, ModifiedContent<ModifiedContent<Spacer, _FrameLayout>, _AlignmentWritingModifier>, LabeledContentStyleConfiguration.Content)>);
    v0 = type metadata accessor for HStack();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for HStack<TupleView<(StaticIf<_SemanticFeature<Semantics_v3>, ModifiedContent<LabeledContentStyleConfiguration.Label, _TraitWritingModifier<LayoutPriorityTraitKey>>, LabeledContentStyleConfiguration.Label>, ModifiedContent<ModifiedContent<Spacer, _FrameLayout>, _AlignmentWritingModifier>, LabeledContentStyleConfiguration.Content)>>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type HStack<TupleView<(StaticIf<_SemanticFeature<Semantics_v3>, ModifiedContent<LabeledContentStyleConfiguration.Label, _TraitWritingModifier<LayoutPriorityTraitKey>>, LabeledContentStyleConfiguration.Label>, ModifiedContent<ModifiedContent<Spacer, _FrameLayout>, _AlignmentWritingModifier>, LabeledContentStyleConfiguration.Content)>> and conformance HStack<A>(unint64_t *a1, void (*a2)(uint64_t))
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

void View.textSelection<A>(_:)()
{
  type metadata accessor for TextSelectabilityModifier();

  JUMPOUT(0x18D00A570);
}

uint64_t specialized static TextSelectabilityModifier._makeInputs(modifier:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 8))(a2, a3);
  PropertyList.subscript.setter();
  lazy protocol witness table accessor for type UIKitTextSelectionRepresentation and conformance UIKitTextSelectionRepresentation();
  return _GraphInputs.textSelectionRepresentation.setter();
}

unint64_t lazy protocol witness table accessor for type UIKitTextSelectionRepresentation and conformance UIKitTextSelectionRepresentation()
{
  result = lazy protocol witness table cache variable for type UIKitTextSelectionRepresentation and conformance UIKitTextSelectionRepresentation;
  if (!lazy protocol witness table cache variable for type UIKitTextSelectionRepresentation and conformance UIKitTextSelectionRepresentation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UIKitTextSelectionRepresentation and conformance UIKitTextSelectionRepresentation);
  }

  return result;
}

uint64_t static LazyPageTabViewStyle._makeView<A>(value:inputs:)()
{
  type metadata accessor for TabViewStyleConfiguration.Content();
  type metadata accessor for LazyPageTabView();
  type metadata accessor for _TabViewValue();
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  type metadata accessor for LazyPageTabViewStyle.Body();
  swift_getWitnessTable();
  _GraphValue.init<A>(_:)();
  swift_getWitnessTable();
  return static View.makeDebuggableView(view:inputs:)();
}

uint64_t static LazyPageTabViewStyle._makeViewList<A>(value:inputs:)()
{
  type metadata accessor for TabViewStyleConfiguration.Content();
  type metadata accessor for LazyPageTabView();
  type metadata accessor for _TabViewValue();
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  type metadata accessor for LazyPageTabViewStyle.Body();
  swift_getWitnessTable();
  _GraphValue.init<A>(_:)();
  swift_getWitnessTable();
  return static View.makeDebuggableViewList(view:inputs:)();
}

uint64_t LazyPageTabViewStyle.Body.base.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for _TabViewValue();
  Value = AGGraphGetValue();
  return (*(*(v2 - 8) + 16))(a1, Value, v2);
}

uint64_t LazyPageTabViewStyle.Body.value.getter@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  type metadata accessor for Binding();
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16[-v10];
  v20 = &type metadata for LazyPageTabViewStyle;
  v21 = a2;
  v22 = &protocol witness table for LazyPageTabViewStyle;
  v23 = a3;
  v12 = type metadata accessor for _TabViewValue();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v16[-v13];
  LazyPageTabViewStyle.Body.base.getter(&v16[-v13]);
  (*(v9 + 32))(v11, v14, v8);
  v17 = a2;
  v18 = a3;
  v19 = a1;
  type metadata accessor for TabViewStyleConfiguration.Content();
  return LazyPageTabView.init(selection:content:)(v11, partial apply for closure #1 in LazyPageTabViewStyle.Body.value.getter, a4);
}

uint64_t closure #1 in LazyPageTabViewStyle.Body.value.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[0] = &type metadata for LazyPageTabViewStyle;
  v10[1] = a2;
  v10[2] = &protocol witness table for LazyPageTabViewStyle;
  v10[3] = a3;
  v3 = type metadata accessor for _TabViewValue();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v10 - v5;
  LazyPageTabViewStyle.Body.base.getter(v10 - v5);
  (*(v4 + 8))(v6, v3);
  v7 = type metadata accessor for TabViewStyleConfiguration.Content();
  v8 = static ViewBuilder.buildExpression<A>(_:)(v7, v7, &protocol witness table for TabViewStyleConfiguration<A>.Content);
  return static ViewBuilder.buildExpression<A>(_:)(v8, v7, &protocol witness table for TabViewStyleConfiguration<A>.Content);
}

uint64_t LazyPageTabView.init(selection:content:)@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for Binding();
  v6 = type metadata accessor for Optional();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  v7 = type metadata accessor for LazyPageTabView();
  return a2(v7, v8, v9, v10);
}

uint64_t protocol witness for static Rule.initialValue.getter in conformance LazyPageTabViewStyle.Body<A>@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for TabViewStyleConfiguration.Content();
  v2 = type metadata accessor for LazyPageTabView();
  return (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
}

uint64_t type metadata completion function for LazyPageTabView()
{
  type metadata accessor for Binding();
  result = type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for LazyPageTabView(void *__dst, void *__src, uint64_t a3)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = ((v8 + 16) & ~v8) + *(v7 + 64);
  v10 = *(v5 - 8);
  v11 = *(v10 + 80);
  v12 = v9 + v11;
  if ((v11 | v8) <= 7 && ((*(v10 + 80) | *(v7 + 80)) & 0x100000) == 0 && ((v9 + v11) & ~v11) + *(*(v5 - 8) + 64) <= 0x18)
  {
    v16 = ((__src + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((*(v7 + 84) & 0x80000000) != 0)
    {
      v18 = ~v11;
      if ((*(v7 + 48))(v16 + 1))
      {
LABEL_14:
        memcpy(__dst, __src, v9);
LABEL_17:
        (*(v10 + 16))((__dst + v12) & v18, (__src + v12) & v18, v5);
        return __dst;
      }
    }

    else
    {
      v17 = *v16;
      if (*v16 >= 0xFFFFFFFF)
      {
        LODWORD(v17) = -1;
      }

      v18 = ~v11;
      if (v17 != -1)
      {
        goto LABEL_14;
      }
    }

    *__dst = *__src;
    v19 = ((__dst + 15) & 0xFFFFFFFFFFFFFFF8);
    *v19 = *v16;
    v20 = *(v7 + 16);

    v20(v19 + 1, v16 + 1, v6);
    goto LABEL_17;
  }

  v15 = *__src;
  *__dst = *__src;
  __dst = (v15 + (((v11 | v8) & 0xF8 ^ 0x1F8) & ((v11 | v8) + 16)));

  return __dst;
}

uint64_t destroy for LazyPageTabView(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = ~v6;
  v8 = *(v5 + 64);
  v9 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((*(v5 + 84) & 0x80000000) != 0)
  {
    if (!(*(v5 + 48))((v9 + v6 + 8) & v7))
    {
LABEL_5:

      (*(v5 + 8))((v9 + v6 + 8) & v7, v4);
    }
  }

  else
  {
    v10 = *v9;
    if (*v9 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    if (v10 == -1)
    {
      goto LABEL_5;
    }
  }

  v11 = *(*(a2 + 24) - 8);
  v12 = *(v11 + 8);
  v13 = (v8 + a1 + ((v6 + 16) & v7) + *(v11 + 80)) & ~*(v11 + 80);

  return v12(v13);
}

void *initializeWithCopy for LazyPageTabView(void *__dst, void *__src, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = ~v8;
  v10 = (v8 + 16) & ~v8;
  v11 = *(v7 + 64);
  v12 = ((__src + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((*(v7 + 84) & 0x80000000) == 0)
  {
    v13 = *v12;
    if (*v12 >= 0xFFFFFFFF)
    {
      LODWORD(v13) = -1;
    }

    v14 = v10 + v11;
    if (v13 != -1)
    {
      goto LABEL_5;
    }

LABEL_7:
    *__dst = *__src;
    v15 = ((__dst + 15) & 0xFFFFFFFFFFFFFFF8);
    *v15 = *v12;
    v19 = v15 + v8 + 8;
    v16 = *(v7 + 16);

    v16(v19 & v9, (v12 + v8 + 8) & v9, v6);
    goto LABEL_8;
  }

  v14 = v10 + v11;
  if (!(*(v7 + 48))((v12 + v8 + 8) & v9))
  {
    goto LABEL_7;
  }

LABEL_5:
  memcpy(__dst, __src, v14);
LABEL_8:
  v17 = *(*(a3 + 24) - 8);
  (*(v17 + 16))((__dst + v14 + *(v17 + 80)) & ~*(v17 + 80), (__src + v14 + *(v17 + 80)) & ~*(v17 + 80));
  return __dst;
}

void *assignWithCopy for LazyPageTabView(void *a1, void *a2, uint64_t a3)
{
  v3 = a3;
  v4 = a2;
  v5 = a1;
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  v10 = *(v7 + 64);
  v11 = ((v9 + 16) & ~v9) + v10;
  v12 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v31 = ~v9;
  if ((v8 & 0x80000000) != 0)
  {
    v29 = ((v9 + 16) & ~v9) + v10;
    v17 = *(v7 + 48);
    v27 = v17((v12 + v9 + 8) & ~v9, v8, v6);
    v13 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
    v5 = a1;
    v15 = v17((v13 + v9 + 8) & ~v9, v8, v6);
    v4 = a2;
    v11 = v29;
    v3 = a3;
    if (!v27)
    {
LABEL_5:
      if (!v15)
      {
        *v5 = *v4;

        *v12 = *v13;

        (*(v7 + 24))((v12 + v9 + 8) & v31, (v13 + v9 + 8) & v31, v6);
        goto LABEL_12;
      }

      (*(v7 + 8))((v12 + v9 + 8) & v31, v6);
      goto LABEL_9;
    }
  }

  else
  {
    v13 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
    v14 = *v13;
    if (*v13 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v14) = -1;
    }

    v15 = v14 + 1;
    if (*v12 > 0xFFFFFFFEuLL)
    {
      goto LABEL_5;
    }
  }

  if (!v15)
  {
    *v5 = *v4;
    *v12 = *v13;
    v18 = v9 + 8;
    v19 = v12 + v9 + 8;
    v20 = v11;
    v21 = v4;
    v22 = v13 + v18;
    v23 = *(v7 + 16);

    v24 = v22 & v31;
    v4 = v21;
    v11 = v20;
    v23(v19 & v31, v24, v6);
    goto LABEL_12;
  }

LABEL_9:
  memcpy(v5, v4, v11);
LABEL_12:
  v25 = *(*(v3 + 24) - 8);
  (*(v25 + 24))((v5 + v11 + *(v25 + 80)) & ~*(v25 + 80), (v4 + v11 + *(v25 + 80)) & ~*(v25 + 80));
  return v5;
}

void *initializeWithTake for LazyPageTabView(void *__dst, void *__src, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = ~v8;
  v10 = (v8 + 16) & ~v8;
  v11 = *(v7 + 64);
  v12 = ((__src + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((*(v7 + 84) & 0x80000000) == 0)
  {
    v13 = *v12;
    if (*v12 >= 0xFFFFFFFF)
    {
      LODWORD(v13) = -1;
    }

    v14 = v10 + v11;
    if (v13 != -1)
    {
      goto LABEL_5;
    }

LABEL_7:
    *__dst = *__src;
    v15 = ((__dst + 15) & 0xFFFFFFFFFFFFFFF8);
    *v15 = *v12;
    (*(v7 + 32))((v15 + v8 + 8) & v9, (v12 + v8 + 8) & v9, v6);
    goto LABEL_8;
  }

  v14 = v10 + v11;
  if (!(*(v7 + 48))((v12 + v8 + 8) & v9))
  {
    goto LABEL_7;
  }

LABEL_5:
  memcpy(__dst, __src, v14);
LABEL_8:
  v16 = *(*(a3 + 24) - 8);
  (*(v16 + 32))((__dst + v14 + *(v16 + 80)) & ~*(v16 + 80), (__src + v14 + *(v16 + 80)) & ~*(v16 + 80));
  return __dst;
}

void *assignWithTake for LazyPageTabView(void *a1, void *a2, uint64_t a3)
{
  v3 = a3;
  v4 = a2;
  v5 = a1;
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  v10 = *(v7 + 64);
  v11 = ((v9 + 16) & ~v9) + v10;
  v12 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v24 = ~v9;
  if ((v8 & 0x80000000) != 0)
  {
    v21 = ((v9 + 16) & ~v9) + v10;
    v16 = *(v7 + 48);
    v19 = v16((v12 + v9 + 8) & ~v9, v8, v6);
    v13 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
    v5 = a1;
    v15 = v16((v13 + v9 + 8) & ~v9, v8, v6);
    v3 = a3;
    v4 = a2;
    v11 = v21;
    if (!v19)
    {
LABEL_5:
      if (!v15)
      {
        *v5 = *v4;

        *v12 = *v13;

        (*(v7 + 40))((v12 + v9 + 8) & v24, (v13 + v9 + 8) & v24, v6);
        goto LABEL_12;
      }

      (*(v7 + 8))((v12 + v9 + 8) & v24, v6);
      goto LABEL_9;
    }
  }

  else
  {
    v13 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
    v14 = *v13;
    if (*v13 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v14) = -1;
    }

    v15 = v14 + 1;
    if (*v12 > 0xFFFFFFFEuLL)
    {
      goto LABEL_5;
    }
  }

  if (!v15)
  {
    *v5 = *v4;
    *v12 = *v13;
    (*(v7 + 32))((v12 + v9 + 8) & v24, (v13 + v9 + 8) & v24, v6);
    goto LABEL_12;
  }

LABEL_9:
  memcpy(v5, v4, v11);
LABEL_12:
  v17 = *(*(v3 + 24) - 8);
  (*(v17 + 40))((v5 + v11 + *(v17 + 80)) & ~*(v17 + 80), (v4 + v11 + *(v17 + 80)) & ~*(v17 + 80));
  return v5;
}

uint64_t getEnumTagSinglePayload for LazyPageTabView(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = v7 - 1;
  v9 = *(a3 + 24);
  v10 = *(v9 - 8);
  v11 = *(v10 + 84);
  v12 = *(v5 + 80);
  v13 = *(v10 + 80);
  if (v11 <= v8)
  {
    v14 = v8;
  }

  else
  {
    v14 = *(v10 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v15 = ((v12 + 16) & ~v12) + *(*(*(a3 + 16) - 8) + 64) + v13;
  v16 = a2 - v14;
  if (a2 <= v14)
  {
    goto LABEL_31;
  }

  v17 = (v15 & ~v13) + *(*(v9 - 8) + 64);
  v18 = 8 * v17;
  if (v17 <= 3)
  {
    v21 = ((v16 + ~(-1 << v18)) >> v18) + 1;
    if (HIWORD(v21))
    {
      v19 = *(a1 + v17);
      if (!v19)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v21 > 0xFF)
    {
      v19 = *(a1 + v17);
      if (!*(a1 + v17))
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v21 < 2)
    {
LABEL_31:
      if (v8 >= v11)
      {
        v28 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
        if ((v6 & 0x80000000) != 0)
        {
          v30 = (*(v5 + 48))((v28 + v12 + 8) & ~v12);
        }

        else
        {
          v29 = *v28;
          if (v29 >= 0xFFFFFFFF)
          {
            LODWORD(v29) = -1;
          }

          v30 = v29 + 1;
        }

        if (v30 >= 2)
        {
          return v30 - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v25 = ~v13;
        v26 = *(v10 + 48);
        v27 = (a1 + v15) & v25;

        return v26(v27, v11, v9);
      }
    }
  }

  v19 = *(a1 + v17);
  if (!*(a1 + v17))
  {
    goto LABEL_31;
  }

LABEL_18:
  v22 = (v19 - 1) << v18;
  if (v17 > 3)
  {
    v22 = 0;
  }

  if (v17)
  {
    if (v17 <= 3)
    {
      v23 = v17;
    }

    else
    {
      v23 = 4;
    }

    if (v23 > 2)
    {
      if (v23 == 3)
      {
        v24 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v24 = *a1;
      }
    }

    else if (v23 == 1)
    {
      v24 = *a1;
    }

    else
    {
      v24 = *a1;
    }
  }

  else
  {
    v24 = 0;
  }

  return v14 + (v24 | v22) + 1;
}

void storeEnumTagSinglePayload for LazyPageTabView(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(a4 + 24) - 8);
  v10 = *(v9 + 84);
  v11 = *(v6 + 80);
  v12 = *(v9 + 80);
  v13 = v8 - 1;
  if (v10 <= v8 - 1)
  {
    v14 = v8 - 1;
  }

  else
  {
    v14 = *(v9 + 84);
  }

  v15 = ((v11 + 16) & ~v11) + *(*(*(a4 + 16) - 8) + 64);
  v16 = ((v15 + v12) & ~v12) + *(v9 + 64);
  v17 = a3 >= v14;
  v18 = a3 - v14;
  if (v18 != 0 && v17)
  {
    if (v16 <= 3)
    {
      v22 = ((v18 + ~(-1 << (8 * v16))) >> (8 * v16)) + 1;
      if (HIWORD(v22))
      {
        v19 = 4;
      }

      else
      {
        if (v22 < 0x100)
        {
          v23 = 1;
        }

        else
        {
          v23 = 2;
        }

        if (v22 >= 2)
        {
          v19 = v23;
        }

        else
        {
          v19 = 0;
        }
      }
    }

    else
    {
      v19 = 1;
    }
  }

  else
  {
    v19 = 0;
  }

  if (v14 < a2)
  {
    v20 = ~v14 + a2;
    if (v16 >= 4)
    {
      bzero(a1, v16);
      *a1 = v20;
      v21 = 1;
      if (v19 > 1)
      {
        goto LABEL_14;
      }

      goto LABEL_60;
    }

    v21 = (v20 >> (8 * v16)) + 1;
    if (v16)
    {
      v24 = v20 & ~(-1 << (8 * v16));
      bzero(a1, v16);
      if (v16 != 3)
      {
        if (v16 == 2)
        {
          *a1 = v24;
          if (v19 > 1)
          {
            goto LABEL_14;
          }
        }

        else
        {
          *a1 = v20;
          if (v19 > 1)
          {
LABEL_14:
            if (v19 == 2)
            {
              *&a1[v16] = v21;
            }

            else
            {
              *&a1[v16] = v21;
            }

            return;
          }
        }

LABEL_60:
        if (v19)
        {
          a1[v16] = v21;
        }

        return;
      }

      *a1 = v24;
      a1[2] = BYTE2(v24);
    }

    if (v19 > 1)
    {
      goto LABEL_14;
    }

    goto LABEL_60;
  }

  if (v19 > 1)
  {
    if (v19 != 2)
    {
      *&a1[v16] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_35;
    }

    *&a1[v16] = 0;
  }

  else if (v19)
  {
    a1[v16] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_35;
  }

  if (!a2)
  {
    return;
  }

LABEL_35:
  if (v13 < v10)
  {
    v25 = *(v9 + 56);

    v25(&a1[v15 + v12] & ~v12);
    return;
  }

  if (v13 < a2)
  {
    if (v15 <= 3)
    {
      v26 = ~(-1 << (8 * v15));
    }

    else
    {
      v26 = -1;
    }

    if (!v15)
    {
      return;
    }

    v27 = v26 & (a2 - v8);
    if (v15 <= 3)
    {
      v28 = v15;
    }

    else
    {
      v28 = 4;
    }

    bzero(a1, v15);
    if (v28 <= 2)
    {
      if (v28 == 1)
      {
LABEL_49:
        *a1 = v27;
        return;
      }

LABEL_74:
      *a1 = v27;
      return;
    }

    goto LABEL_75;
  }

  if (a2 >= v8)
  {
    if (v15 <= 3)
    {
      v30 = ~(-1 << (8 * v15));
    }

    else
    {
      v30 = -1;
    }

    if (!v15)
    {
      return;
    }

    v27 = v30 & (a2 - v8);
    if (v15 <= 3)
    {
      v28 = v15;
    }

    else
    {
      v28 = 4;
    }

    bzero(a1, v15);
    if (v28 <= 2)
    {
      if (v28 == 1)
      {
        goto LABEL_49;
      }

      goto LABEL_74;
    }

LABEL_75:
    if (v28 == 3)
    {
      *a1 = v27;
      a1[2] = BYTE2(v27);
    }

    else
    {
      *a1 = v27;
    }

    return;
  }

  v29 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((v7 & 0x80000000) != 0)
  {
    v31 = *(v6 + 56);
    v32 = a2 + 1;

    v31((v29 + v11 + 8) & ~v11, v32);
  }

  else if (((a2 + 1) & 0x80000000) != 0)
  {
    *v29 = a2 - 0x7FFFFFFF;
  }

  else
  {
    *v29 = a2;
  }
}

uint64_t LazyPageTabView.body.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](a1);
  v5 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v4);
  v6 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = *(a1 + 16);
  v19 = *(a1 + 24);
  *(v7 + 24) = v19;
  v8 = *(a1 + 40);
  *(v7 + 40) = v8;
  (*(v2 + 32))(v7 + v6, v5, a1);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  v33 = v8;
  v34 = &protocol witness table for ContainerRelativeFrameModifier;
  WitnessTable = swift_getWitnessTable();
  v10 = lazy protocol witness table accessor for type LazyPageTabModifier and conformance LazyPageTabModifier();
  v31 = WitnessTable;
  v32 = v10;
  swift_getWitnessTable();
  type metadata accessor for LazyHStack();
  type metadata accessor for TransformScrollStorageModifier<TransformScrollIndicators>(255, &lazy cache variable for type metadata for TransformScrollStorageModifier<TransformScrollIndicators>, &type metadata for TransformScrollIndicators, &protocol witness table for TransformScrollIndicators, type metadata accessor for TransformScrollStorageModifier);
  type metadata accessor for ModifiedContent();
  v29 = swift_getWitnessTable();
  v30 = &protocol witness table for TransformScrollStorageModifier<A>;
  swift_getWitnessTable();
  type metadata accessor for PagingScrollView();
  type metadata accessor for ModifiedContent();
  v11 = type metadata accessor for ModifiedContent();
  v27 = swift_getWitnessTable();
  v28 = &protocol witness table for TransformScrollStorageModifier<A>;
  v25 = swift_getWitnessTable();
  v26 = MEMORY[0x1E6980950];
  v12 = swift_getWitnessTable();
  *&v38 = ScrollViewReader.init(content:)(partial apply for closure #1 in LazyPageTabView.body.getter, v7, v11, v12);
  *(&v38 + 1) = v13;
  swift_getKeyPath();
  LOBYTE(v22) = 4;
  type metadata accessor for ScrollViewReader();
  v14 = swift_getWitnessTable();
  View.environment<A>(_:_:)();

  v22 = v35;
  v23 = v36;
  v24 = v37;
  type metadata accessor for _EnvironmentKeyWritingModifier<TabBarPlacement?>();
  v15 = type metadata accessor for ModifiedContent();
  v16 = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<TabBarPlacement?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<TabBarPlacement?> and conformance _EnvironmentKeyWritingModifier<A>, type metadata accessor for _EnvironmentKeyWritingModifier<TabBarPlacement?>);
  v20 = v14;
  v21 = v16;
  v17 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(&v22, v15, v17);

  v35 = v38;
  v36 = v39;
  v37 = v40;
  static ViewBuilder.buildExpression<A>(_:)(&v35, v15, v17);
}

uint64_t closure #1 in LazyPageTabView.body.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v43 = a4;
  v42 = a1;
  v47 = a6;
  v34 = a2;
  type metadata accessor for Optional();
  v46 = type metadata accessor for Binding();
  v45 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v44 = &v34 - v9;
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  v57[8] = a5;
  v57[9] = &protocol witness table for ContainerRelativeFrameModifier;
  v10 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable();
  v12 = lazy protocol witness table accessor for type LazyPageTabModifier and conformance LazyPageTabModifier();
  v57[6] = WitnessTable;
  v57[7] = v12;
  v41 = v10;
  swift_getWitnessTable();
  type metadata accessor for LazyHStack();
  type metadata accessor for TransformScrollStorageModifier<TransformScrollIndicators>(255, &lazy cache variable for type metadata for TransformScrollStorageModifier<TransformScrollIndicators>, &type metadata for TransformScrollIndicators, &protocol witness table for TransformScrollIndicators, type metadata accessor for TransformScrollStorageModifier);
  type metadata accessor for ModifiedContent();
  v57[4] = swift_getWitnessTable();
  v57[5] = &protocol witness table for TransformScrollStorageModifier<A>;
  v36 = swift_getWitnessTable();
  v13 = type metadata accessor for PagingScrollView();
  v37 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v34 - v14;
  v16 = type metadata accessor for ModifiedContent();
  v39 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v34 - v17;
  v19 = type metadata accessor for ModifiedContent();
  v40 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v35 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v38 = &v34 - v22;
  LOBYTE(v57[0]) = 1;
  v48 = a2;
  v49 = a3;
  v23 = v43;
  v50 = v43;
  v51 = a5;
  v52 = v42;
  PagingScrollView.init(behavior:axis:content:)(v57, 0, partial apply for closure #1 in closure #1 in LazyPageTabView.body.getter, v15);
  LOBYTE(v57[0]) = 3;
  v24 = swift_getWitnessTable();
  View.scrollIndicators(_:axes:)(v57, 1, v13, v24);
  (*(v37 + 8))(v15, v13);
  v25 = v34;
  v57[0] = v34;
  v57[1] = a3;
  v57[2] = v23;
  v57[3] = a5;
  v26 = type metadata accessor for LazyPageTabView();
  v27 = v44;
  LazyPageTabView.scrollStateBinding.getter(v26, v44);
  v55 = v24;
  v56 = &protocol witness table for TransformScrollStorageModifier<A>;
  v28 = swift_getWitnessTable();
  v29 = v35;
  View.scrollPosition<A>(id:anchor:)(v27, 0, 0, 1, v16, v25, v28);
  (*(v45 + 8))(v27, v46);
  (*(v39 + 8))(v18, v16);
  v53 = v28;
  v54 = MEMORY[0x1E6980950];
  v30 = swift_getWitnessTable();
  v31 = v38;
  static ViewBuilder.buildExpression<A>(_:)(v29, v19, v30);
  v32 = *(v40 + 8);
  v32(v29, v19);
  static ViewBuilder.buildExpression<A>(_:)(v31, v19, v30);
  return (v32)(v31, v19);
}

uint64_t closure #1 in closure #1 in LazyPageTabView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v22 = a5;
  v23 = a3;
  v25 = a1;
  v26 = a4;
  v24 = a2;
  v27 = a6;
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  v38 = a5;
  v39 = &protocol witness table for ContainerRelativeFrameModifier;
  WitnessTable = swift_getWitnessTable();
  v37 = lazy protocol witness table accessor for type LazyPageTabModifier and conformance LazyPageTabModifier();
  swift_getWitnessTable();
  v7 = type metadata accessor for LazyHStack();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v22 - v9;
  type metadata accessor for TransformScrollStorageModifier<TransformScrollIndicators>(255, &lazy cache variable for type metadata for TransformScrollStorageModifier<TransformScrollIndicators>, &type metadata for TransformScrollIndicators, &protocol witness table for TransformScrollIndicators, type metadata accessor for TransformScrollStorageModifier);
  v11 = type metadata accessor for ModifiedContent();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v22 - v16;
  v28 = v24;
  v29 = v23;
  v30 = v26;
  v31 = v22;
  v32 = v25;
  static VerticalAlignment.center.getter();
  v35 = 0;
  LazyHStack.init(alignment:spacing:pinnedViews:content:)();
  LOBYTE(v35) = 0;
  v18 = swift_getWitnessTable();
  View.scrollIndicators(_:axes:)(&v35, 1, v7, v18);
  (*(v8 + 8))(v10, v7);
  v33 = v18;
  v34 = &protocol witness table for TransformScrollStorageModifier<A>;
  v19 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v14, v11, v19);
  v20 = *(v12 + 8);
  v20(v14, v11);
  static ViewBuilder.buildExpression<A>(_:)(v17, v11, v19);
  return (v20)(v17, v11);
}

uint64_t closure #1 in closure #1 in closure #1 in LazyPageTabView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v27[1] = a1;
  v29 = a6;
  v10 = type metadata accessor for ModifiedContent();
  v28 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v27 - v11;
  v13 = type metadata accessor for ModifiedContent();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v27 - v18;
  v34 = a2;
  v35 = a3;
  v36 = a4;
  v37 = a5;
  type metadata accessor for LazyPageTabView();
  v20 = static Alignment.center.getter();
  View.containerRelativeFrame(_:alignment:)(3, v20, v21, a3, a5);
  LOBYTE(v34) = 1;
  v35 = 0;
  v32 = a5;
  v33 = &protocol witness table for ContainerRelativeFrameModifier;
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x18D00A570](&v34, v10, &unk_1EFF99330, WitnessTable);
  (*(v28 + 8))(v12, v10);
  v23 = lazy protocol witness table accessor for type LazyPageTabModifier and conformance LazyPageTabModifier();
  v30 = WitnessTable;
  v31 = v23;
  v24 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v16, v13, v24);
  v25 = *(v14 + 8);
  v25(v16, v13);
  static ViewBuilder.buildExpression<A>(_:)(v19, v13, v24);
  return (v25)(v19, v13);
}

uint64_t LazyPageTabView.scrollStateBinding.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v2 = *(a1 + 16);
  v3 = type metadata accessor for Optional();
  v21 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v20 - v4;
  v6 = type metadata accessor for Binding();
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v20 - v9;
  v11 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v20 - v17;
  (*(v8 + 16))(v10, v22, v7, v16);
  if ((*(v11 + 48))(v10, 1, v6) == 1)
  {
    (*(v8 + 8))(v10, v7);
    (*(*(v2 - 8) + 56))(v5, 1, 1, v2);
    static Binding.constant(_:)();
    return (*(v21 + 8))(v5, v3);
  }

  else
  {
    (*(v11 + 32))(v18, v10, v6);
    (*(v11 + 16))(v14, v18, v6);
    Binding.init<A>(_:)();
    return (*(v11 + 8))(v18, v6);
  }
}

uint64_t partial apply for closure #1 in LazyPageTabView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = *(type metadata accessor for LazyPageTabView() - 8);
  v8 = v1 + ((*(v7 + 80) + 48) & ~*(v7 + 80));

  return closure #1 in LazyPageTabView.body.getter(v8, v3, v4, v5, v6, a1);
}

unint64_t lazy protocol witness table accessor for type LazyPageTabModifier and conformance LazyPageTabModifier()
{
  result = lazy protocol witness table cache variable for type LazyPageTabModifier and conformance LazyPageTabModifier;
  if (!lazy protocol witness table cache variable for type LazyPageTabModifier and conformance LazyPageTabModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LazyPageTabModifier and conformance LazyPageTabModifier);
  }

  return result;
}

void type metadata accessor for _EnvironmentKeyWritingModifier<TabBarPlacement?>()
{
  if (!lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<TabBarPlacement?>)
  {
    type metadata accessor for TabBarPlacement?(255, &lazy cache variable for type metadata for TabBarPlacement?, &type metadata for TabBarPlacement, MEMORY[0x1E69E6720]);
    v0 = type metadata accessor for _EnvironmentKeyWritingModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<TabBarPlacement?>);
    }
  }
}

uint64_t assignWithCopy for LazyPageTabModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

uint64_t assignWithTake for LazyPageTabModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

uint64_t LazyPageTabModifier.body(content:)@<X0>(char a1@<W1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  if (one-time initialization token for contain != -1)
  {
    swift_once();
  }

  v6 = static AccessibilityChildBehavior.contain;
  AccessibilityProperties.init(reserving:)();
  static AccessibilityAttachment.properties(_:)();
  outlined destroy of AccessibilityProperties(v14);
  type metadata accessor for TabBarPlacement?(0, &lazy cache variable for type metadata for MutableBox<AccessibilityAttachment>, MEMORY[0x1E697FFF0], MEMORY[0x1E697DAC0]);
  v7 = swift_allocObject();
  memcpy((v7 + 16), __src, 0x128uLL);
  v8 = a1 & 1;
  LOBYTE(__src[0]) = a1 & 1;
  __src[1] = a2;
  type metadata accessor for TabBarPlacement?(0, &lazy cache variable for type metadata for State<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);

  State.wrappedValue.getter();
  v9 = v14[0];
  swift_beginAccess();
  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = 4;
  }

  closure #1 in ModifiedContent<>.accessibilityVisibility(_:)(v7 + 16, v10);
  v11 = swift_allocObject();
  *(v11 + 16) = v8;
  *(v11 + 24) = a2;
  *a3 = v7;
  a3[1] = v6;
  a3[2] = closure #1 in LazyPageTabModifier.body(content:);
  a3[3] = 0;
  a3[4] = partial apply for closure #2 in LazyPageTabModifier.body(content:);
  a3[5] = v11;
}

uint64_t closure #1 in LazyPageTabModifier.body(content:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  v5[3] = *a1;
  v5[4] = v3;
  v5[5] = *(a1 + 32);
  v6 = *(a1 + 48);
  static CoordinateSpaceProtocol<>.scrollView.getter();
  GeometryProxy.bounds(of:)();
  result = outlined destroy of NamedCoordinateSpace(v5);
  *a2 = v9 & 1 | (fabs(v7) <= v8 * 0.5);
  return result;
}

void type metadata accessor for TabBarPlacement?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t partial apply for closure #2 in LazyPageTabModifier.body(content:)()
{
  if (*(v0 + 24))
  {
    return dispatch thunk of AnyLocation.set(_:transaction:)();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<LazyPageTabModifier>, AccessibilityAttachmentModifier>, _GeometryActionModifier<Bool>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<LazyPageTabModifier>, AccessibilityAttachmentModifier>, _GeometryActionModifier<Bool>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<LazyPageTabModifier>, AccessibilityAttachmentModifier>, _GeometryActionModifier<Bool>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<LazyPageTabModifier>, AccessibilityAttachmentModifier>, _GeometryActionModifier<Bool>>();
    lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<LazyPageTabModifier>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _GeometryActionModifier<Bool> and conformance _GeometryActionModifier<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<LazyPageTabModifier>, AccessibilityAttachmentModifier>, _GeometryActionModifier<Bool>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<LazyPageTabModifier>, AccessibilityAttachmentModifier>, _GeometryActionModifier<Bool>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewModifier_Content<LazyPageTabModifier>, AccessibilityAttachmentModifier>, _GeometryActionModifier<Bool>>)
  {
    type metadata accessor for ModifiedContent<_ViewModifier_Content<LazyPageTabModifier>, AccessibilityAttachmentModifier>();
    type metadata accessor for TransformScrollStorageModifier<TransformScrollIndicators>(255, &lazy cache variable for type metadata for _GeometryActionModifier<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E69E6388], MEMORY[0x1E69802D8]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewModifier_Content<LazyPageTabModifier>, AccessibilityAttachmentModifier>, _GeometryActionModifier<Bool>>);
    }
  }
}

void type metadata accessor for ModifiedContent<_ViewModifier_Content<LazyPageTabModifier>, AccessibilityAttachmentModifier>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<LazyPageTabModifier>, AccessibilityAttachmentModifier>)
  {
    type metadata accessor for _ViewModifier_Content<LazyPageTabModifier>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<LazyPageTabModifier>, AccessibilityAttachmentModifier>);
    }
  }
}

void type metadata accessor for _ViewModifier_Content<LazyPageTabModifier>()
{
  if (!lazy cache variable for type metadata for _ViewModifier_Content<LazyPageTabModifier>)
  {
    lazy protocol witness table accessor for type LazyPageTabModifier and conformance LazyPageTabModifier();
    v0 = type metadata accessor for _ViewModifier_Content();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ViewModifier_Content<LazyPageTabModifier>);
    }
  }
}

void type metadata accessor for TransformScrollStorageModifier<TransformScrollIndicators>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<LazyPageTabModifier>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<LazyPageTabModifier>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<LazyPageTabModifier>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<_ViewModifier_Content<LazyPageTabModifier>, AccessibilityAttachmentModifier>();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<TabBarPlacement?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<LazyPageTabModifier> and conformance _ViewModifier_Content<A>, type metadata accessor for _ViewModifier_Content<LazyPageTabModifier>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<LazyPageTabModifier>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<TabBarPlacement?> and conformance _EnvironmentKeyWritingModifier<A>(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type _GeometryActionModifier<Bool> and conformance _GeometryActionModifier<A>()
{
  result = lazy protocol witness table cache variable for type _GeometryActionModifier<Bool> and conformance _GeometryActionModifier<A>;
  if (!lazy protocol witness table cache variable for type _GeometryActionModifier<Bool> and conformance _GeometryActionModifier<A>)
  {
    type metadata accessor for TransformScrollStorageModifier<TransformScrollIndicators>(255, &lazy cache variable for type metadata for _GeometryActionModifier<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E69E6388], MEMORY[0x1E69802D8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _GeometryActionModifier<Bool> and conformance _GeometryActionModifier<A>);
  }

  return result;
}

Swift::Int AccessibilityAdjustmentDirection.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](v1);
  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance AccessibilityAdjustableAction(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 != 2)
  {
    return v3 != 2 && ((v3 ^ v2) & 1) == 0;
  }

  return v3 == 2;
}

uint64_t ModifiedContent<>.accessibilityAdjustableAction(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v10 = 2;
  v8 = lazy protocol witness table accessor for type AccessibilityAdjustableAction and conformance AccessibilityAdjustableAction();
  return ModifiedContent<>.accessibilityAction<A>(_:label:image:_:)(&v10, 0, 0, 0, 0, 0, a1, a2, a4, a3, &type metadata for AccessibilityAdjustableAction, v8);
}

unint64_t lazy protocol witness table accessor for type AccessibilityAdjustmentDirection and conformance AccessibilityAdjustmentDirection()
{
  result = lazy protocol witness table cache variable for type AccessibilityAdjustmentDirection and conformance AccessibilityAdjustmentDirection;
  if (!lazy protocol witness table cache variable for type AccessibilityAdjustmentDirection and conformance AccessibilityAdjustmentDirection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityAdjustmentDirection and conformance AccessibilityAdjustmentDirection);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AccessibilityAdjustableAction(unsigned __int8 *a1, unsigned int a2)
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
  if (v6 >= 2)
  {
    v7 = ((v6 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v7 = -2;
  }

  if (v7 < 0)
  {
    v7 = -1;
  }

  return (v7 + 1);
}

uint64_t specialized AccessibilityAdjustableAction.matches<A>(_:)(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  (*(v3 + 16))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v1);
  return swift_dynamicCast();
}

uint64_t Text.accessibilityTextContentType(_:)(char *a1)
{
  v1 = *a1;
  type metadata accessor for AccessibilityTextModifier();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 17) = 519;
  *(v2 + 24) = 0u;
  *(v2 + 40) = 0u;
  outlined copy of Text?(0, 0, 0, 0);
  v3 = Text.modified(with:)();

  outlined consume of Text?(0, 0, 0, 0);
  return v3;
}

uint64_t Text.accessibilityHeading(_:)(char a1)
{
  type metadata accessor for AccessibilityTextModifier();
  v2 = swift_allocObject();
  *(v2 + 16) = 8;
  *(v2 + 17) = a1;
  *(v2 + 18) = 2;
  *(v2 + 24) = 0u;
  *(v2 + 40) = 0u;
  outlined copy of Text?(0, 0, 0, 0);
  v3 = Text.modified(with:)();

  outlined consume of Text?(0, 0, 0, 0);
  return v3;
}

uint64_t Text.accessibilityLabel(_:)()
{

  v0 = Text.init(_:tableName:bundle:comment:)();
  v2 = v1;
  v4 = v3;
  v6 = Text.accessibilityLabel(_:)(v0, v1, v3 & 1, v5);
  outlined consume of Text.Storage(v0, v2, v4 & 1);

  return v6;
}

void *PlatformItem.accessibilityResolvedAttributedLabel.getter()
{
  v1 = v0;
  outlined init with copy of AnyAccessibilityValue?(v0 + 328, &v33, &lazy cache variable for type metadata for PlatformItem.AccessibilityContent?);
  if (v48)
  {
    if (*(&v34 + 1))
    {

      PlatformItem.AccessibilityContent.environment.getter();
      *v16 = v18;
      static AccessibilityCore.TextResolutionOptions.defaultAttributedText.getter();
      v2 = static AccessibilityCore.textsResolvedToAttributedText(_:in:options:idiom:separator:)();

      outlined destroy of PlatformItem.AccessibilityContent(&v33);
      result = v2;
      if (v2)
      {
        return result;
      }
    }

    else
    {
      outlined destroy of PlatformItem.AccessibilityContent(&v33);
    }
  }

  else
  {
    outlined destroy of AnyAccessibilityValue?(&v33, &lazy cache variable for type metadata for PlatformItem.AccessibilityContent?);
  }

  v4 = v1[15];
  v30 = v1[14];
  v31 = v4;
  v32 = v1[16];
  v5 = v1[11];
  v26 = v1[10];
  v27 = v5;
  v6 = v1[13];
  v28 = v1[12];
  v29 = v6;
  v7 = v1[7];
  v22 = v1[6];
  v23 = v7;
  v8 = v1[9];
  v24 = v1[8];
  v25 = v8;
  v9 = v1[3];
  v18 = v1[2];
  v19 = v9;
  v10 = v1[5];
  v20 = v1[4];
  v21 = v10;
  if (_s7SwiftUI12PlatformItemV14PrimaryContentVSgWOg(&v18) == 1)
  {
    return 0;
  }

  v45 = v30;
  v46 = v31;
  v47 = v32;
  v41 = v26;
  v42 = v27;
  v43 = v28;
  v44 = v29;
  v37 = v22;
  v38 = v23;
  v39 = v24;
  v40 = v25;
  v33 = v18;
  v34 = v19;
  v35 = v20;
  v36 = v21;
  v11 = PlatformItem.PrimaryContent.text.getter();
  if (!v11)
  {
    return 0;
  }

  v12 = v11;
  outlined init with copy of AnyAccessibilityValue?(v1 + 328, &v33, &lazy cache variable for type metadata for PlatformItem.AccessibilityContent?);
  if (v48)
  {
    PlatformItem.AccessibilityContent.environment.getter();
    v14 = v16[1];
    v13 = v16[0];
    outlined destroy of PlatformItem.AccessibilityContent(&v33);
  }

  else
  {
    outlined destroy of AnyAccessibilityValue?(&v33, &lazy cache variable for type metadata for PlatformItem.AccessibilityContent?);
    if (one-time initialization token for configuredForPlatform != -1)
    {
      swift_once();
    }

    v14 = *(&static EnvironmentValues.configuredForPlatform + 1);
    v13 = static EnvironmentValues.configuredForPlatform;
  }

  v17 = v12;
  *&v33 = v13;
  *(&v33 + 1) = v14;
  v15 = static AccessibilityCore.resolveAttributedTextAttributes(in:environment:options:)();

  result = v17;
  if ((v15 & 1) == 0)
  {

    return 0;
  }

  return result;
}

id PlatformItem.accessibilityEffectiveText.getter()
{
  v1 = v0;
  outlined init with copy of AnyAccessibilityValue?(v0 + 328, &v35, &lazy cache variable for type metadata for PlatformItem.AccessibilityContent?);
  if (v50)
  {
    PlatformItem.AccessibilityContent.environment.getter();
    v2 = *(&v18 + 1);
    v3 = v18;
    outlined destroy of PlatformItem.AccessibilityContent(&v35);
  }

  else
  {
    outlined destroy of AnyAccessibilityValue?(&v35, &lazy cache variable for type metadata for PlatformItem.AccessibilityContent?);
    if (one-time initialization token for configuredForPlatform != -1)
    {
      swift_once();
    }

    v2 = *(&static EnvironmentValues.configuredForPlatform + 1);
    v3 = static EnvironmentValues.configuredForPlatform;
  }

  outlined init with copy of AnyAccessibilityValue?(v0 + 328, &v35, &lazy cache variable for type metadata for PlatformItem.AccessibilityContent?);
  if (v50)
  {
    outlined init with copy of AccessibilityProperties(&v35, &v18);
    outlined destroy of PlatformItem.AccessibilityContent(&v35);
    v4 = *(&v19 + 1);
    v5 = v20;

    outlined destroy of AccessibilityProperties(&v18);
    if (v4)
    {

      if (v5 != 3)
      {
        goto LABEL_15;
      }
    }
  }

  else
  {
    outlined destroy of AnyAccessibilityValue?(&v35, &lazy cache variable for type metadata for PlatformItem.AccessibilityContent?);
  }

  v6 = v1[15];
  v47 = v1[14];
  v48 = v6;
  v49 = v1[16];
  v7 = v1[11];
  v43 = v1[10];
  v44 = v7;
  v8 = v1[13];
  v45 = v1[12];
  v46 = v8;
  v9 = v1[7];
  v39 = v1[6];
  v40 = v9;
  v10 = v1[9];
  v41 = v1[8];
  v42 = v10;
  v11 = v1[3];
  v35 = v1[2];
  v36 = v11;
  v12 = v1[5];
  v37 = v1[4];
  v38 = v12;
  if (_s7SwiftUI12PlatformItemV14PrimaryContentVSgWOg(&v35) == 1 || (v30 = v47, v31 = v48, v32 = v49, v26 = v43, v27 = v44, v28 = v45, v29 = v46, v22 = v39, v23 = v40, v24 = v41, v25 = v42, v18 = v35, v19 = v36, v20 = v37, v21 = v38, (v13 = PlatformItem.PrimaryContent.text.getter()) == 0))
  {
LABEL_15:
    v14 = PlatformItem.accessibilityResolvedAttributedLabel.getter();

    return v14;
  }

  v14 = v13;
  v34 = v13;
  *&v18 = v3;
  *(&v18 + 1) = v2;
  v33 = 0;
  v15 = v13;
  v16 = static AccessibilityCore.resolveAttributedTextAttributes(in:environment:options:)();

  if (v16)
  {

    return v34;
  }

  else
  {
  }

  return v14;
}

uint64_t one-time initialization function for comma()
{
  LocalizedStringKey.init(stringLiteral:)();
  type metadata accessor for SwiftUIClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  result = Text.init(_:tableName:bundle:comment:)();
  static Text.Accessibility.comma = result;
  *algn_1ED5A7348 = v3;
  byte_1ED5A7350 = v4 & 1;
  qword_1ED5A7358 = v5;
  return result;
}

uint64_t one-time initialization function for remove()
{
  LocalizedStringKey.init(stringLiteral:)();
  type metadata accessor for SwiftUIClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  result = Text.init(_:tableName:bundle:comment:)();
  static Text.Accessibility.remove = result;
  unk_1EAB09B30 = v3;
  byte_1EAB09B38 = v4 & 1;
  qword_1EAB09B40 = v5;
  return result;
}

uint64_t one-time initialization function for insert()
{
  LocalizedStringKey.init(stringLiteral:)();
  type metadata accessor for SwiftUIClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  result = Text.init(_:tableName:bundle:comment:)();
  static Text.Accessibility.insert = result;
  unk_1EAB09B50 = v3;
  byte_1EAB09B58 = v4 & 1;
  qword_1EAB09B60 = v5;
  return result;
}

uint64_t specialized AccessibilityNode.withLayoutManager<A>(_:_:)@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  result = _s7SwiftUI17AccessibilityNodeC13viewResponder6ofTypexSgxm_tAA04ViewF0CRbzlFAA010StyledTextF0C_Ttg5();
  v9 = 0uLL;
  v10 = 0.0;
  if (result)
  {
    AccessibilityNode.attachment.getter(&v55);
    outlined init with copy of AccessibilityProperties(&v55, v65);
    outlined destroy of AccessibilityAttachment(&v55);
    v82 = v72;
    v83 = v73;
    v84 = v74;
    v85 = v75;
    v78 = v68;
    v79 = v69;
    v80 = v70;
    v81 = v71;
    v76 = v66;
    v77 = v67;
    outlined init with copy of AnyAccessibilityValue?(&v76, &v55, &lazy cache variable for type metadata for AccessibilityTextLayoutProperties?);
    outlined destroy of AccessibilityProperties(v65);
    v92 = v82;
    v93 = v83;
    v94 = v84;
    v95 = v85;
    v88 = v78;
    v89 = v79;
    v90 = v80;
    v91 = v81;
    v86 = v76;
    v87 = v77;
    if (_s7SwiftUI33AccessibilityTextLayoutPropertiesOSgWOg(&v86) == 1 || (v61 = v92, v62 = v93, v63 = v94, v64 = v95, v57 = v88, v58 = v89, v59 = v90, v60 = v91, v55 = v86, v56 = v87, _s7SwiftUI33AccessibilityTextLayoutPropertiesOWOg(&v55) == 1))
    {

      v11 = 1;
      v12 = 0;
      v9 = 0uLL;
    }

    else
    {
      v52 = 0u;
      v53 = 0u;
      v54 = 6;
      *&v96[0] = 1;
      *&v44 = 0;
      v42 = 0u;
      v43 = 0u;
      BYTE8(v44) = 2;
      StyledTextResponder.addContentPath(to:kind:in:observer:)();
      outlined destroy of CoordinateSpace(&v42);
      v96[0] = v52;
      v96[1] = v53;
      v97 = v54;
      Path.boundingRect.getter();
      v14 = v13;
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v48 = v61;
      v49 = v62;
      v50 = v63;
      v51 = v64;
      v44 = v57;
      v45 = v58;
      v46 = v59;
      v47 = v60;
      v42 = v55;
      v43 = v56;
      TextLayoutProperties.minScaleFactor.getter();
      v21 = v55;
      v22 = BYTE8(v55);
      if ((BYTE8(v55) & 1) != 0 || v55 != 1)
      {
        isa = NSAttributedString.replacingLineBreakModes(_:)(NSLineBreakByWordWrapping).super.isa;
      }

      else
      {
        isa = a1;
      }

      v24 = isa;
      v25 = NSAttributedString.scaled(by:)();

      v26 = [objc_allocWithZone(SwiftUITextStorage) initWithAttributedString_];
      v27 = [objc_allocWithZone(MEMORY[0x1E69DB7C0]) init];
      [v27 setUsesFontLeading_];
      [v27 setAllowsOriginalFontMetricsOverride_];
      [v26 addLayoutManager_];
      [v26 _setForceWordWrapping_];
      v28 = [objc_allocWithZone(MEMORY[0x1E69DB800]) initWithSize_];
      [v28 setLineFragmentPadding_];
      if (v21 <= 1)
      {
        v29 = 1;
      }

      else
      {
        v29 = v21;
      }

      if (v22)
      {
        v30 = 0;
      }

      else
      {
        v30 = v29;
      }

      [v28 setMaximumNumberOfLines_];
      [v28 setLineBreakMode_];
      [v27 addTextContainer_];
      v31 = [v27 glyphRangeForCharacterRange:a2 actualCharacterRange:{a3, 0}];
      [v27 boundingRectForGlyphRange:v31 inTextContainer:{v32, v28}];
      v34 = v33;
      v36 = v35;
      v40 = v37;
      v12 = v38;

      outlined destroy of AnyAccessibilityValue?(&v76, &lazy cache variable for type metadata for AccessibilityTextLayoutProperties?);

      *&v39 = v16 + v36;
      v10 = v14 + v34;
      *(&v39 + 1) = v40;
      v41 = v39;
      result = outlined destroy of Path(v96);
      v9 = v41;
      v11 = 0;
    }
  }

  else
  {
    v11 = 1;
    v12 = 0;
  }

  *a4 = v10;
  *(a4 + 8) = v9;
  *(a4 + 24) = v12;
  *(a4 + 32) = v11;
  return result;
}

uint64_t closure #1 in NSAttributedString.hasAccessibilityLinks.getter(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4, _BYTE *a5)
{
  if (*(result + 24))
  {
    *a5 = 1;
    *a4 = 1;
  }

  return result;
}

uint64_t _s7SwiftUI12PlatformItemV14PrimaryContentVSgWOg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t _s7SwiftUI17AccessibilityNodeC13viewResponder6ofTypexSgxm_tAA04ViewF0CRbzlFAA010StyledTextF0C_Ttg5()
{
  v1 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_attachmentsStorage;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = *(v2 + 16);
  if (!v3)
  {
    return 0;
  }

  v4 = v2 + 32;

  v18 = v2 + 32;
  v19 = v2;
  while (1)
  {
    if (v3 > *(v2 + 16))
    {
      goto LABEL_28;
    }

    --v3;
    outlined init with copy of AccessibilityAttachmentStorage(v4 + 320 * v3, v24);
    v5 = v24[37];

    outlined destroy of AccessibilityAttachmentStorage(v24);
    if (!v5)
    {
      goto LABEL_5;
    }

    v6 = AGGraphClearUpdate();
    MEMORY[0x1EEE9AC00](v6);
    type metadata accessor for (value: AccessibilityGeometryStorage.Responders, changed: Bool)?();
    static Update.ensure<A>(_:)();
    AGGraphSetUpdate();
    if (v21)
    {
      break;
    }

LABEL_4:

LABEL_5:
    if (!v3)
    {
      goto LABEL_29;
    }
  }

  v20 = v3;
  if (((v22 | (v23 << 32)) & 0x100000000) != 0)
  {
    v7 = *(v5 + 56);
    v8 = *(v5 + 64);
    v9 = *(v5 + 72);
    v10 = *(v5 + 80);
    *(v5 + 56) = 0u;
    *(v5 + 72) = 0u;
    v11 = *(v5 + 88);
    *(v5 + 88) = -1;
    outlined consume of Path?(v7, v8, v9, v10, v11);
  }

  if (!(v21 >> 62))
  {
    v12 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_13;
    }

    goto LABEL_3;
  }

  v12 = __CocoaSet.count.getter();
  if (!v12)
  {
LABEL_3:

    v2 = v19;
    v3 = v20;
    v4 = v18;
    goto LABEL_4;
  }

LABEL_13:
  v13 = 0;
  while ((v21 & 0xC000000000000001) != 0)
  {
    MEMORY[0x18D00E9C0](v13);
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      goto LABEL_26;
    }

LABEL_17:
    type metadata accessor for StyledTextResponder();
    v15 = swift_dynamicCastClass();
    if (v15)
    {
      v16 = v15;

      return v16;
    }

    ++v13;
    if (v14 == v12)
    {
      goto LABEL_3;
    }
  }

  if (v13 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_27;
  }

  v14 = v13 + 1;
  if (!__OFADD__(v13, 1))
  {
    goto LABEL_17;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:

  return 0;
}

uint64_t _s7SwiftUI33AccessibilityTextLayoutPropertiesOWOg(uint64_t a1)
{
  v1 = *(a1 + 112);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *specialized closure #1 in closure #1 in AccessibilityGeometryStorage.withoutDependencies<A>(body:)@<X0>(void *(*a1)(uint64_t *__return_ptr)@<X0>, uint64_t a2@<X8>)
{
  result = a1(&v6);
  v4 = v7;
  v5 = v8;
  *a2 = v6;
  *(a2 + 12) = v5;
  *(a2 + 8) = v4;
  return result;
}

void *partial apply for specialized closure #1 in closure #1 in AccessibilityGeometryStorage.withoutDependencies<A>(body:)@<X0>(uint64_t a1@<X8>)
{
  result = (*(v1 + 16))(&v6);
  v4 = v7;
  v5 = v8;
  *a1 = v6;
  *(a1 + 12) = v5;
  *(a1 + 8) = v4;
  return result;
}

void type metadata accessor for (value: AccessibilityGeometryStorage.Responders, changed: Bool)?()
{
  if (!lazy cache variable for type metadata for (value: AccessibilityGeometryStorage.Responders, changed: Bool)?)
  {
    type metadata accessor for (value: AccessibilityGeometryStorage.Responders, changed: Bool)();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for (value: AccessibilityGeometryStorage.Responders, changed: Bool)?);
    }
  }
}

void type metadata accessor for (value: AccessibilityGeometryStorage.Responders, changed: Bool)()
{
  if (!lazy cache variable for type metadata for (value: AccessibilityGeometryStorage.Responders, changed: Bool))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (value: AccessibilityGeometryStorage.Responders, changed: Bool));
    }
  }
}

uint64_t outlined consume of Path.Storage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 - 2 <= 3)
  {
  }

  return result;
}

uint64_t outlined destroy of PlaybackButton.State(uint64_t a1)
{
  v2 = type metadata accessor for PlaybackButton.State(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id UIKitSearchBarAdaptor.makeUIView(context:)(uint64_t a1)
{
  v1 = *(a1 + 40);
  type metadata accessor for UIKitSearchBar();
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  swift_unknownObjectWeakAssign();
  [v2 setDelegate_];
  v3 = [v2 searchTextField];
  [v3 setDelegate_];

  v4 = [v2 searchTextField];
  [v4 addTarget:v1 action:sel_primaryActionTriggered_ forControlEvents:0x2000];

  return v2;
}

void protocol witness for UIViewRepresentable.updateUIView(_:context:) in conformance UIKitSearchBarAdaptor(unsigned __int8 *a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5[1] = *(a2 + 16);
  v6 = v4;
  RepresentableContextValues.environment.getter();
  v5[0] = v7;
  UIKitSearchBarCoordinator.updateSearchBar(_:to:in:)(a1, v2, v5);

  UIKitSearchBarCoordinator.updateIsFirstResponder(_:to:)(a1);
}

uint64_t protocol witness for UIViewRepresentable._resetUIView(_:coordinator:destroy:) in conformance UIKitSearchBarAdaptor(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  lazy protocol witness table accessor for type ReuseFirstPartyRepresentablesByDefault and conformance ReuseFirstPartyRepresentablesByDefault();
  result = static UserDefaultKeyedFeature.isEnabled.getter();
  if ((result & 1) == 0)
  {
    return a3();
  }

  return result;
}

id protocol witness for UIViewRepresentable.makeCoordinator() in conformance UIKitSearchBarAdaptor@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(type metadata accessor for UIKitSearchBarCoordinator(0)) init];
  *a1 = result;
  return result;
}

void protocol witness for UIViewRepresentable._overrideLayoutTraits(_:for:) in conformance UIKitSearchBarAdaptor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(v3 + *(a3 + 20)) & 1) == 0)
  {
    v4 = _LayoutTraits.idealSize.modify();
    *v5 = 0x4070000000000000;
    v4(&v6, 0);
  }
}

uint64_t UIKitSearchBarCoordinator.RepresentedToken.__deallocating_deinit()
{
  outlined destroy of AnyToken(v0 + 16);
  outlined destroy of Binding<SearchFieldState>(v0 + OBJC_IVAR____TtCC7SwiftUI25UIKitSearchBarCoordinatorP33_9E78780A6F2626BA9019200B48F4A36B16RepresentedToken_platformItem, type metadata accessor for PlatformItemList.Item);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance UIKitSearchBarCoordinator.RepresentedToken()
{
  outlined init with copy of AnyHashable(*v0 + 48, v3);
  v1 = AnyHashable.description.getter();
  outlined destroy of AnyHashable(v3);
  return v1;
}

__n128 UIKitSearchBarCoordinator.SearchToken.init(platformToken:)@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PlatformItemList.Item();
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 representedObject])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v38 = 0u;
    v39 = 0u;
  }

  v49 = v38;
  v50 = v39;
  if (!*(&v39 + 1))
  {

    outlined destroy of AnyAccessibilityValue?(&v49, &lazy cache variable for type metadata for Any?);
LABEL_12:
    *(a2 + 64) = 0;
    result.n128_u64[0] = 0;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return result;
  }

  type metadata accessor for UIKitSearchBarCoordinator.RepresentedToken(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:

    goto LABEL_12;
  }

  v8 = *&v30[0];
  v9 = OBJC_IVAR____TtCC7SwiftUI25UIKitSearchBarCoordinatorP33_9E78780A6F2626BA9019200B48F4A36B16RepresentedToken_platformItem;
  v10 = *(*&v30[0] + OBJC_IVAR____TtCC7SwiftUI25UIKitSearchBarCoordinatorP33_9E78780A6F2626BA9019200B48F4A36B16RepresentedToken_platformItem);
  if (!v10)
  {

    goto LABEL_11;
  }

  v11 = [v10 string];
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  *&v57 = v12;
  *(&v57 + 1) = v14;
  outlined init with copy of Binding<SearchFieldState>(v8 + v9, v7, type metadata accessor for PlatformItemList.Item);
  v15 = *(v7 + 13);
  v16 = *(v7 + 11);
  v46 = *(v7 + 12);
  v47 = v15;
  v17 = *(v7 + 13);
  v48[0] = *(v7 + 14);
  *(v48 + 11) = *(v7 + 235);
  v18 = *(v7 + 9);
  v19 = *(v7 + 7);
  v42 = *(v7 + 8);
  v43 = v18;
  v20 = *(v7 + 9);
  v21 = *(v7 + 11);
  v44 = *(v7 + 10);
  v45 = v21;
  v22 = *(v7 + 5);
  v38 = *(v7 + 4);
  v39 = v22;
  v23 = *(v7 + 7);
  v25 = *(v7 + 4);
  v24 = *(v7 + 5);
  v40 = *(v7 + 6);
  v41 = v23;
  v54[3] = v46;
  v55 = v17;
  v56[0] = *(v7 + 14);
  *(v56 + 11) = *(v7 + 235);
  v53 = v42;
  v54[0] = v20;
  v54[1] = v44;
  v54[2] = v16;
  v49 = v25;
  v50 = v24;
  v51 = v40;
  v52 = v19;
  if (_s7SwiftUI5ImageVAAE8ResolvedVSgWOg(&v49) == 1)
  {
    v26 = 0;
  }

  else if (v55)
  {
    swift_unknownObjectRetain();
    objc_opt_self();
    v26 = swift_dynamicCastObjCClassUnconditional();
  }

  else
  {
    v36 = v53;
    v37[0] = v54[0];
    *(v37 + 12) = *(v54 + 12);
    v32 = v49;
    v33 = v50;
    v34 = v51;
    v35 = v52;
    v28 = *(v7 + 6);
    outlined init with copy of AnyAccessibilityValue?(&v38, v30, &lazy cache variable for type metadata for Image.Resolved?);
    outlined init with copy of GraphicsImage(&v49, v30);
    v26 = GraphicsImage.makePlatformImage(fixedSymbolConfiguration:flattenMaskColor:colorResolver:)(0, 0, v28);
    outlined destroy of AnyAccessibilityValue?(&v38, &lazy cache variable for type metadata for Image.Resolved?);
    v30[4] = v36;
    v31[0] = v37[0];
    *(v31 + 12) = *(v37 + 12);
    v30[0] = v32;
    v30[1] = v33;
    v30[2] = v34;
    v30[3] = v35;
    outlined destroy of GraphicsImage(v30);
  }

  outlined destroy of Binding<SearchFieldState>(v7, type metadata accessor for PlatformItemList.Item);
  *&v58[0] = v26;
  outlined init with copy of AnyHashable(v8 + 48, v58 + 8);

  *(a2 + 64) = a1;
  result = v58[0];
  v29 = v58[2];
  *(a2 + 32) = v58[1];
  *(a2 + 48) = v29;
  *a2 = v57;
  *(a2 + 16) = result;
  return result;
}

uint64_t UIKitSearchBarCoordinator.resolvedScopes.getter()
{
  v1 = type metadata accessor for PlatformItemList.Item();
  v2 = (v1 - 8);
  v3 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v30[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *(v0 + OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_scopes);
  _s7SwiftUI5ImageVAAE8ResolvedVSgWOi0_(&v31);
  memset(v30, 0, sizeof(v30));
  v5[32] = 0;
  *(v5 + 3) = 0;
  *(v5 + 8) = 0u;
  *(v5 + 5) = -1;
  v5[56] = 1;
  v7 = v40;
  *(v5 + 12) = v39;
  *(v5 + 13) = v7;
  *(v5 + 14) = v41[0];
  *(v5 + 235) = *(v41 + 11);
  v8 = v36;
  *(v5 + 8) = v35;
  *(v5 + 9) = v8;
  v9 = v38;
  *(v5 + 10) = v37;
  *(v5 + 11) = v9;
  v10 = v32;
  *(v5 + 4) = v31;
  *(v5 + 5) = v10;
  v11 = v34;
  *(v5 + 6) = v33;
  *(v5 + 7) = v11;
  *(v5 + 19) = 0u;
  *(v5 + 20) = 0u;
  *(v5 + 17) = 0u;
  *(v5 + 18) = 0u;
  *(v5 + 16) = 0u;
  *(v5 + 42) = 0x3FFFFFFFCLL;
  *(v5 + 344) = 0u;
  *(v5 + 360) = 0u;
  *(v5 + 376) = 0u;
  *(v5 + 392) = 0u;
  *(v5 + 51) = 0;
  *(v5 + 52) = 1;
  *(v5 + 424) = 0u;
  *(v5 + 440) = 0u;
  *(v5 + 456) = 0u;
  v5[472] = 0;
  *(v5 + 60) = 0;
  *(v5 + 488) = 0u;
  v5[504] = 0;
  *(v5 + 32) = 0u;
  v5[528] = 4;
  *(v5 + 536) = 0u;
  *(v5 + 552) = 0u;
  *(v5 + 568) = 0u;
  *(v5 + 584) = 0u;
  *(v5 + 600) = 0u;
  *(v5 + 616) = 0u;
  *(v5 + 632) = 0u;
  *(v5 + 648) = 0u;
  *(v5 + 664) = 0u;
  *(v5 + 680) = 0u;
  *(v5 + 696) = 0u;
  *(v5 + 712) = 0u;
  *(v5 + 728) = 0u;
  *(v5 + 744) = 0u;
  *(v5 + 760) = 0u;
  *(v5 + 776) = 0u;
  *(v5 + 792) = 0u;
  *(v5 + 808) = 0u;
  *(v5 + 824) = 0u;
  *(v5 + 840) = 0u;
  *(v5 + 107) = 0;
  *(v5 + 108) = 1;
  *(v5 + 118) = 0;
  *(v5 + 872) = 0u;
  *(v5 + 888) = 0u;
  *(v5 + 904) = 0u;
  *(v5 + 920) = 0u;
  *(v5 + 476) = 1283;
  v5[954] = 3;
  v12 = v2[30];
  v13 = type metadata accessor for CommandOperation();
  (*(*(v13 - 8) + 56))(&v5[v12], 1, 1, v13);
  v5[v2[31]] = 0;
  v5[v2[32]] = 0;
  v5[v2[33]] = 2;
  v5[v2[34]] = 0;
  v5[v2[35]] = 0;
  v14 = v2[36];
  *v5 = 0;
  v15 = *(v5 + 13);
  v42[8] = *(v5 + 12);
  v42[9] = v15;
  v43[0] = *(v5 + 14);
  *(v43 + 11) = *(v5 + 235);
  v16 = *(v5 + 9);
  v42[4] = *(v5 + 8);
  v42[5] = v16;
  v17 = *(v5 + 11);
  v42[6] = *(v5 + 10);
  v42[7] = v17;
  v18 = *(v5 + 5);
  v42[0] = *(v5 + 4);
  v42[1] = v18;
  v19 = *(v5 + 7);
  v42[2] = *(v5 + 6);
  v42[3] = v19;

  outlined destroy of AnyAccessibilityValue?(v42, &lazy cache variable for type metadata for Image.Resolved?);
  v20 = v40;
  *(v5 + 12) = v39;
  *(v5 + 13) = v20;
  *(v5 + 14) = v41[0];
  *(v5 + 235) = *(v41 + 11);
  v21 = v36;
  *(v5 + 8) = v35;
  *(v5 + 9) = v21;
  v22 = v38;
  *(v5 + 10) = v37;
  *(v5 + 11) = v22;
  v23 = v32;
  *(v5 + 4) = v31;
  *(v5 + 5) = v23;
  v24 = v34;
  *(v5 + 6) = v33;
  *(v5 + 7) = v24;
  v25 = *(v5 + 456);
  v44[2] = *(v5 + 440);
  v44[3] = v25;
  v45 = v5[472];
  v26 = *(v5 + 424);
  v44[0] = *(v5 + 408);
  v44[1] = v26;
  outlined destroy of AnyAccessibilityValue?(v44, &lazy cache variable for type metadata for PlatformItemList.Item.SelectionBehavior?);
  *(v5 + 408) = xmmword_18CD633F0;
  *(v5 + 424) = 0u;
  *(v5 + 440) = 0u;
  *(v5 + 456) = 0u;
  v5[472] = 0;
  outlined assign with take of PlatformItemList.Item.Accessibility?(v30, (v5 + 536));
  *&v5[v14] = 0;
  *(v5 + 6) = 0;
  *(v5 + 117) = v6;
  type metadata accessor for SearchFieldConfiguration?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<PlatformItemList.Item>, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6F90]);
  v27 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_18CD63400;
  outlined init with take of PlatformItemList.Item(v5, v28 + v27, type metadata accessor for PlatformItemList.Item);
  return v28;
}

id specialized UIKitTextInput<>.update(in:)(uint64_t a1, uint64_t a2)
{
  v15 = a1;
  v16 = a2;
  LOBYTE(v14[0]) = 0;

  v5 = specialized NSTextAlignment.init(in:fallbackAlignment:)(&v15, v14);
  [v2 setTextAlignment_];
  v15 = a1;
  v16 = a2;
  EnvironmentValues.minimumScaleFactor.getter();
  v7 = v6;
  static MinimumScaleFactorKey.defaultValue.getter();
  v9 = v8;
  if (v7 < v8)
  {
    v15 = a1;
    v16 = a2;
    EnvironmentValues.effectiveFont.getter();
    v14[0] = a1;
    v14[1] = a2;
    v10 = Font.platformFont(in:)();

    CTFontRef.pointSize.getter();
    v12 = v11;

    [v2 setMinimumFontSize_];
  }

  result = [v2 adjustsFontSizeToFitWidth];
  if (v7 < v9 != result)
  {

    return [v2 setAdjustsFontSizeToFitWidth_];
  }

  return result;
}

uint64_t closure #1 in UIKitSearchBarCoordinator.primaryActionTriggered(_:)(uint64_t a1)
{
  v2 = type metadata accessor for SearchFieldState(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v14 - v6;
  v8 = type metadata accessor for SearchFieldConfiguration(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_configuration;
  swift_beginAccess();
  result = (*(v9 + 48))(a1 + v12, 1, v8);
  if (!result)
  {
    outlined init with copy of Binding<SearchFieldState>(a1 + v12, v11, type metadata accessor for SearchFieldConfiguration);
    type metadata accessor for Binding<SearchFieldState>(0);
    MEMORY[0x18D00ACC0]();
    outlined init with copy of Binding<SearchFieldState>(v7, v4, type metadata accessor for SearchFieldState);
    if (*v4 != 2)
    {
      *v4 = 0;
    }

    if (!specialized static SearchFieldState.== infix(_:_:)(v7, v4))
    {
      dispatch thunk of AnyLocation.set(_:transaction:)();
    }

    outlined destroy of Binding<SearchFieldState>(v4, type metadata accessor for SearchFieldState);
    outlined destroy of Binding<SearchFieldState>(v7, type metadata accessor for SearchFieldState);
    return outlined destroy of Binding<SearchFieldState>(v11, type metadata accessor for SearchFieldConfiguration);
  }

  return result;
}

uint64_t closure #1 in UIKitSearchBarCoordinator.searchBar(_:textDidChange:)(char *a1, uint64_t a2, void *a3, void *a4)
{
  v75 = type metadata accessor for AttributedString.CharacterView();
  v74 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v73 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SearchAttributedString();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v68 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for AttributedString();
  v69 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v79 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v71 = &v65 - v13;
  v67 = type metadata accessor for SearchFieldState(0);
  MEMORY[0x1EEE9AC00](v67);
  v78 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Binding<SearchFieldState>(0);
  v66 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v77 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for SearchFieldConfiguration(0);
  v80 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v76 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = &a1[OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_oldText];
  v70._countAndFlagsBits = a2;
  *v18 = a2;
  v18[1] = a3;
  v70._object = a3;

  v19 = [a4 searchTextField];
  v20 = [v19 tokens];

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UISearchToken);
  v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v21 >> 62)
  {
    goto LABEL_55;
  }

  for (i = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v82 = a1;
    if (!i)
    {
      break;
    }

    v23 = 0;
    v24 = v21 & 0xC000000000000001;
    v25 = MEMORY[0x1E69E7CC0];
    do
    {
      if (v24)
      {
        v26 = MEMORY[0x18D00E9C0](v23, v21);
        a1 = (v23 + 1);
        if (__OFADD__(v23, 1))
        {
          goto LABEL_51;
        }
      }

      else
      {
        if (v23 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_52;
        }

        v26 = *(v21 + 8 * v23 + 32);
        a1 = (v23 + 1);
        if (__OFADD__(v23, 1))
        {
LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
          goto LABEL_53;
        }
      }

      UIKitSearchBarCoordinator.SearchToken.init(platformToken:)(v26, &v86);
      if (*(&v86 + 1))
      {
        v92 = v87;
        v93 = v88;
        v94 = v89;
        v95 = v90;
        v91 = v86;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v25 + 2) + 1, 1, v25);
        }

        v28 = *(v25 + 2);
        v27 = *(v25 + 3);
        if (v28 >= v27 >> 1)
        {
          v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1, v25);
        }

        *(v25 + 2) = v28 + 1;
        v29 = &v25[72 * v28];
        *(v29 + 2) = v91;
        v30 = v92;
        v31 = v93;
        v32 = v94;
        *(v29 + 12) = v95;
        *(v29 + 4) = v31;
        *(v29 + 5) = v32;
        *(v29 + 3) = v30;
      }

      else
      {
        outlined destroy of AnyAccessibilityValue?(&v86, &lazy cache variable for type metadata for UIKitSearchBarCoordinator.SearchToken?);
      }

      ++v23;
    }

    while (a1 != i);
    *&v82[OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_oldTokens] = v25;

    v33 = 0;
    v34 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v24)
      {
        v35 = MEMORY[0x18D00E9C0](v33, v21);
      }

      else
      {
        if (v33 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_54;
        }

        v35 = *(v21 + 8 * v33 + 32);
      }

      a1 = v35;
      v36 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      if ([v35 representedObject])
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {

        v85 = 0u;
        v84 = 0u;
      }

      v92 = v85;
      v91 = v84;
      if (*(&v85 + 1))
      {
        type metadata accessor for UIKitSearchBarCoordinator.RepresentedToken(0);
        if (swift_dynamicCast())
        {
          outlined init with copy of AnyToken(v83 + 16, &v86);

          v92 = v87;
          v93 = v88;
          v94 = v89;
          v95 = v90;
          v91 = v86;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v34 + 2) + 1, 1, v34);
          }

          v38 = *(v34 + 2);
          v37 = *(v34 + 3);
          a1 = (v38 + 1);
          if (v38 >= v37 >> 1)
          {
            v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v38 + 1, 1, v34);
          }

          *(v34 + 2) = a1;
          v39 = &v34[72 * v38];
          *(v39 + 2) = v91;
          v40 = v92;
          v41 = v93;
          v42 = v94;
          *(v39 + 12) = v95;
          *(v39 + 4) = v41;
          *(v39 + 5) = v42;
          *(v39 + 3) = v40;
        }
      }

      else
      {
        outlined destroy of AnyAccessibilityValue?(&v91, &lazy cache variable for type metadata for Any?);
      }

      ++v33;
      if (v36 == i)
      {
        goto LABEL_38;
      }
    }

LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    ;
  }

  v34 = MEMORY[0x1E69E7CC0];
  *&a1[OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_oldTokens] = MEMORY[0x1E69E7CC0];

LABEL_38:

  v43 = OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_configuration;
  v44 = v82;
  swift_beginAccess();
  if ((*(v80 + 48))(&v44[v43], 1, v81))
  {
  }

  v46 = &v44[v43];
  v47 = v76;
  outlined init with copy of Binding<SearchFieldState>(v46, v76, type metadata accessor for SearchFieldConfiguration);
  outlined init with copy of Binding<SearchFieldState>(v47, v77, type metadata accessor for Binding<SearchFieldState>);
  v48 = v78;
  MEMORY[0x18D00ACC0](v66);
  v49 = *(v67 + 36);
  v50 = v69;
  v51 = *(v69 + 16);
  v52 = v71;
  v53 = v72;
  (v51)(v71, &v48[v49], v72);
  v54 = v68;
  (v51)(v68, v52, v53);
  SearchAttributedString.update(tokens:text:)(v34, v70);

  v82 = *(v50 + 8);
  (v82)(v52, v53);
  (*(v50 + 32))(v52, v54, v53);
  v51();
  (*(v50 + 24))(&v48[v49], v52, v53);
  v55 = v73;
  AttributedString.characters.getter();
  v81 = AttributedString.CharacterView._count.getter();
  v56 = *(v74 + 8);
  v57 = v75;
  v56(v55, v75);
  AttributedString.characters.getter();
  v58 = AttributedString.CharacterView._count.getter();
  v56(v55, v57);
  v59 = v82;
  (v82)(v79, v53);
  result = v59(v52, v53);
  v60 = v58 - v81;
  if (__OFSUB__(v58, v81))
  {
    __break(1u);
LABEL_57:
    __break(1u);
    return result;
  }

  v61 = v78;
  if (v60 < 0)
  {
    v62 = __OFSUB__(0, v60);
    v60 = v81 - v58;
    if (v62)
    {
      goto LABEL_57;
    }
  }

  if (v60 == 1 && v58 >= 1 && *v78 != 2)
  {
    v63 = v78[2];
    if (v63 != 2 || (v63 = v78[3], v63 != 2))
    {
      if (v63)
      {
        *v78 = 1;
      }
    }
  }

  v64 = v77;
  dispatch thunk of AnyLocation.set(_:transaction:)();
  outlined destroy of Binding<SearchFieldState>(v76, type metadata accessor for SearchFieldConfiguration);
  outlined destroy of Binding<SearchFieldState>(v61, type metadata accessor for SearchFieldState);
  return outlined destroy of Binding<SearchFieldState>(v64, type metadata accessor for Binding<SearchFieldState>);
}

Swift::Void __swiftcall UIKitSearchBarCoordinator.searchBarTextDidBeginEditing(_:)(UISearchBar *a1)
{
  v2 = v1;
  v4 = v1 + OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    v7 = (*(v5 + 8))(v2, ObjectType, v5);
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 1;
  }

  v8 = [(UISearchBar *)a1 traitCollection];
  v9 = [v8 horizontalSizeClass];

  v10 = [(UISearchBar *)a1 traitCollection];
  v11 = [v10 userInterfaceIdiom];

  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = v9;
  *(v13 + 32) = v11;
  *(v13 + 40) = v7 & 1;

  static Update.enqueueAction(reason:_:)();
}

uint64_t closure #1 in UIKitSearchBarCoordinator.searchBarTextDidBeginEditing(_:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = type metadata accessor for SearchFieldState(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v27 - v11;
  type metadata accessor for SearchFieldConfiguration?(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for SearchFieldConfiguration(0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v21 = result;
    v27[0] = a3;
    v22 = OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_configuration;
    swift_beginAccess();
    outlined init with copy of Binding<SearchFieldState>(v21 + v22, v15, type metadata accessor for SearchFieldConfiguration?);
    if ((*(v17 + 48))(v15, 1, v16) == 1)
    {

      v23 = type metadata accessor for SearchFieldConfiguration?;
      v24 = v15;
    }

    else
    {
      outlined init with take of PlatformItemList.Item(v15, v19, type metadata accessor for SearchFieldConfiguration);
      v25 = *(v21 + OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_placement);
      type metadata accessor for Binding<SearchFieldState>(0);
      MEMORY[0x18D00ACC0]();
      v26 = outlined init with copy of Binding<SearchFieldState>(v12, v9, type metadata accessor for SearchFieldState);
      if ((*(v21 + OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_usingExplicitSuggestionPlacement) & 1) == 0)
      {
        v26 = specialized SearchSuggestionsPlacement.Role.init(sizeClass:idiom:placement:)(a2, v27[0], v25);
        if (v26 != 2)
        {
          v9[1] = v26 & 1;
        }
      }

      if (a4)
      {
        v26 = static Animation.easeInOut.getter();
      }

      MEMORY[0x1EEE9AC00](v26);
      v27[-2] = v9;
      withAnimation<A>(_:_:)();

      if (specialized static SearchFieldState.== infix(_:_:)(v12, v9))
      {
        outlined destroy of Binding<SearchFieldState>(v12, type metadata accessor for SearchFieldState);
      }

      else
      {
        dispatch thunk of AnyLocation.set(_:transaction:)();

        outlined destroy of Binding<SearchFieldState>(v12, type metadata accessor for SearchFieldState);
      }

      outlined destroy of Binding<SearchFieldState>(v9, type metadata accessor for SearchFieldState);
      v23 = type metadata accessor for SearchFieldConfiguration;
      v24 = v19;
    }

    return outlined destroy of Binding<SearchFieldState>(v24, v23);
  }

  return result;
}

unsigned __int8 *closure #1 in closure #1 in closure #1 in UIKitSearchBarCoordinator.searchBarTextDidBeginEditing(_:)(unsigned __int8 *result)
{
  v1 = result;
  v2 = *result;
  if (v2 == 2 || (v2 & 1) == 0)
  {
    v3 = result[2];
    if (v3 == 2)
    {
      v3 = result[3];
      if (v3 == 2)
      {
        LOBYTE(v3) = 0;
      }
    }

    *result = v3 & 1;
    result = type metadata accessor for SearchFieldState(0);
    v1[*(result + 10)] = 1;
  }

  return result;
}

uint64_t closure #1 in UIKitSearchBarCoordinator.searchBarTextDidEndEditing(_:)(uint64_t a1, char a2)
{
  type metadata accessor for SearchFieldConfiguration?(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v17[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for SearchFieldConfiguration(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    (*(v7 + 56))(v5, 1, 1, v6);
    goto LABEL_6;
  }

  v11 = OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_configuration;
  v12 = Strong;
  swift_beginAccess();
  outlined init with copy of Binding<SearchFieldState>(v12 + v11, v5, type metadata accessor for SearchFieldConfiguration?);

  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
LABEL_6:
    v14 = type metadata accessor for SearchFieldConfiguration?;
    v15 = v5;
    return outlined destroy of Binding<SearchFieldState>(v15, v14);
  }

  v13 = outlined init with take of PlatformItemList.Item(v5, v9, type metadata accessor for SearchFieldConfiguration);
  if (a2)
  {
    v13 = static Animation.easeInOut.getter();
  }

  MEMORY[0x1EEE9AC00](v13);
  *&v17[-16] = v9;
  withAnimation<A>(_:_:)();

  v14 = type metadata accessor for SearchFieldConfiguration;
  v15 = v9;
  return outlined destroy of Binding<SearchFieldState>(v15, v14);
}

uint64_t closure #1 in closure #1 in UIKitSearchBarCoordinator.searchBarTextDidEndEditing(_:)()
{
  v0 = type metadata accessor for SearchFieldState(0);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v11 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v11 - v4;
  type metadata accessor for Binding<SearchFieldState>(0);
  MEMORY[0x18D00ACC0]();
  outlined init with copy of Binding<SearchFieldState>(v5, v2, type metadata accessor for SearchFieldState);
  v6 = *v2;
  v7 = v2[2];
  if (v7 != 2 || (v7 = v2[3], v7 != 2))
  {
    if (v7)
    {
      v8 = v2[1] != 1 || v6 == 2;
      if (!v8 && (v6 & 1) != 0)
      {
        if (AttributedString.isEmpty.getter())
        {
          v9 = 2;
        }

        else
        {
          v9 = 0;
        }

        *v2 = v9;
      }
    }
  }

  v2[*(v0 + 40)] = 0;
  if (!specialized static SearchFieldState.== infix(_:_:)(v5, v2))
  {
    dispatch thunk of AnyLocation.set(_:transaction:)();
  }

  outlined destroy of Binding<SearchFieldState>(v2, type metadata accessor for SearchFieldState);
  return outlined destroy of Binding<SearchFieldState>(v5, type metadata accessor for SearchFieldState);
}

uint64_t closure #1 in UIKitSearchBarCoordinator.searchBarCancelButtonClicked(_:)()
{
  type metadata accessor for SearchFieldConfiguration?(0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v14[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = type metadata accessor for SearchFieldConfiguration(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    (*(v4 + 56))(v2, 1, 1, v3);
    goto LABEL_5;
  }

  v8 = OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_configuration;
  v9 = Strong;
  swift_beginAccess();
  outlined init with copy of Binding<SearchFieldState>(v9 + v8, v2, type metadata accessor for SearchFieldConfiguration?);

  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
LABEL_5:
    v11 = type metadata accessor for SearchFieldConfiguration?;
    v12 = v2;
    return outlined destroy of Binding<SearchFieldState>(v12, v11);
  }

  outlined init with take of PlatformItemList.Item(v2, v6, type metadata accessor for SearchFieldConfiguration);
  v10 = static Animation.easeInOut.getter();
  MEMORY[0x1EEE9AC00](v10);
  *&v14[-16] = v6;
  withAnimation<A>(_:_:)();

  v11 = type metadata accessor for SearchFieldConfiguration;
  v12 = v6;
  return outlined destroy of Binding<SearchFieldState>(v12, v11);
}

uint64_t closure #1 in closure #1 in UIKitSearchBarCoordinator.searchBarCancelButtonClicked(_:)(uint64_t a1)
{
  v2 = type metadata accessor for AttributedString.CharacterView();
  v29 = *(v2 - 8);
  v30 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AttributedString();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v26 - v10;
  v12 = type metadata accessor for SearchFieldState(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v26 - v16;
  type metadata accessor for Binding<SearchFieldState>(0);
  v26[1] = a1;
  MEMORY[0x18D00ACC0]();
  v32 = v17;
  outlined init with copy of Binding<SearchFieldState>(v17, v14, type metadata accessor for SearchFieldState);
  *v14 = 2;
  v28 = v11;
  AttributedString.init(stringLiteral:)();
  v31 = v12;
  v18 = *(v12 + 36);
  v19 = *(v6 + 16);
  v27 = v8;
  v20 = v5;
  v19(v8, &v14[v18], v5);
  (*(v6 + 24))(&v14[v18], v11, v5);
  AttributedString.characters.getter();
  AttributedString.CharacterView._count.getter();
  v21 = v30;
  v22 = *(v29 + 8);
  v22(v4, v30);
  AttributedString.characters.getter();
  AttributedString.CharacterView._count.getter();
  v22(v4, v21);
  v23 = *(v6 + 8);
  v23(v27, v20);
  v23(v28, v20);
  if ((v14[8] & 1) == 0)
  {
    *(v14 + 1) = 0;
    v14[8] = 1;
  }

  v24 = v32;
  v14[*(v31 + 40)] = 0;
  if (!specialized static SearchFieldState.== infix(_:_:)(v24, v14))
  {
    dispatch thunk of AnyLocation.set(_:transaction:)();
  }

  outlined destroy of Binding<SearchFieldState>(v24, type metadata accessor for SearchFieldState);
  return outlined destroy of Binding<SearchFieldState>(v14, type metadata accessor for SearchFieldState);
}

uint64_t specialized UIKitSearchScopeCoordinating<>.onChange(selectedScope:)(uint64_t result)
{
  v2 = result;
  v3 = *(v1 + OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_tokenScopes);
  v4 = *(v3 + 16);
  if (!v4)
  {
    v3 = *(v1 + OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_scopes);
    v4 = *(v3 + 16);
  }

  if ((result & 0x8000000000000000) == 0 && v4 > result)
  {
    v5 = type metadata accessor for PlatformItemList.Item();
    v6 = *(v5 - 8);
    result = v5 - 8;
    v7 = v3 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v2;
    v14[0] = *(v7 + 408);
    v9 = *(v7 + 440);
    v8 = *(v7 + 456);
    v10 = *(v7 + 424);
    v15 = *(v7 + 472);
    v14[2] = v9;
    v14[3] = v8;
    v14[1] = v10;
    v11 = *(&v14[0] + 1);
    if (*(&v14[0] + 1) >= 2uLL)
    {
      MEMORY[0x1EEE9AC00](result);
      v13[71] = 17;
      MEMORY[0x1EEE9AC00](v12);
      outlined init with copy of AnyAccessibilityValue?(v14, v13, &lazy cache variable for type metadata for PlatformItemList.Item.SelectionBehavior?);
      outlined copy of AppIntentExecutor?(v11);
      static Update.dispatchImmediately<A>(reason:_:)();
      outlined destroy of AnyAccessibilityValue?(v14, &lazy cache variable for type metadata for PlatformItemList.Item.SelectionBehavior?);
      return outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v11);
    }
  }

  return result;
}

uint64_t closure #1 in UIKitSearchBarCoordinator.searchBarShouldClear(_:)@<X0>(uint64_t result@<X0>, BOOL *a2@<X8>)
{
  v3 = *(result + OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_clearAction);
  if (v3)
  {

    v3(v4);
    result = outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v3);
  }

  *a2 = v3 == 0;
  return result;
}

Swift::Void __swiftcall UIKitSearchBarCoordinator.textFieldDidChangeSelection(_:)(UITextField *a1)
{
  v2 = v1;
  type metadata accessor for TextSelection?(0);
  v60 = *(v4 - 8);
  v5 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v61 = (&v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v62 = &v57 - v7;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_triggerSubmission>(0, &lazy cache variable for type metadata for SelectionRanges<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E697E8A8]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v63 = (&v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v64 = &v57 - v11;
  type metadata accessor for SearchBoundProperty<TextSelection?>?();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SearchBoundProperty<TextSelection?>();
  v16 = v15;
  v17 = *(v15 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v57 - v21;
  v23 = OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_selection;
  swift_beginAccess();
  outlined init with copy of Binding<SearchFieldState>(v2 + v23, v14, type metadata accessor for SearchBoundProperty<TextSelection?>?);
  if ((*(v17 + 48))(v14, 1, v16) == 1)
  {
    v24 = type metadata accessor for SearchBoundProperty<TextSelection?>?;
    v25 = v14;
  }

  else
  {
    outlined init with take of PlatformItemList.Item(v14, v22, type metadata accessor for SearchBoundProperty<TextSelection?>);
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v59 = v17;
      type metadata accessor for SearchFieldConfiguration?(0, &lazy cache variable for type metadata for Binding<TextSelection?>, type metadata accessor for TextSelection?, MEMORY[0x1E6981948]);
      v27 = v26;
      v28 = a1;
      v29 = v62;
      MEMORY[0x18D00ACC0](v27);
      v30 = v64;
      SelectionRanges<>.init(_:)(v29, v64);
      v31 = UISearchTextField.textOnlySelectedRange.getter();
      v33 = v63;
      _s7SwiftUI15SelectionRangesOyACyxGSnyxGSgcfCSS5IndexV_Tt1g5(v31, v34, v32 & 1, v63);
      if (_s7SwiftUI15SelectionRangesO2eeoiySbACyxG_AEtFZSS5IndexV_Tt1g5(v30, v33))
      {

        outlined destroy of SelectionRanges<String.Index>(v33);
        v35 = v30;
      }

      else
      {
        v58 = v28;
        v36 = UISearchTextField.textOnlySelectedRange.getter();
        if (v38)
        {
          v39 = type metadata accessor for TextSelection(0);
          v40 = v61;
          (*(*(v39 - 8) + 56))(v61, 1, 1, v39);
        }

        else
        {
          v40 = v61;
          *v61 = v36;
          *(v40 + 8) = v37;
          type metadata accessor for TextSelection.Indices(0);
          swift_storeEnumTagMultiPayload();
          v41 = type metadata accessor for TextSelection(0);
          *(v40 + *(v41 + 20)) = 0;
          (*(*(v41 - 8) + 56))(v40, 0, 1, v41);
        }

        v42 = v59;
        LOBYTE(v66[0]) = 17;
        outlined init with copy of Binding<SearchFieldState>(v22, v19, type metadata accessor for SearchBoundProperty<TextSelection?>);
        v43 = v62;
        outlined init with copy of Binding<SearchFieldState>(v40, v62, type metadata accessor for TextSelection?);
        v44 = (*(v42 + 80) + 16) & ~*(v42 + 80);
        v45 = (v18 + *(v60 + 80) + v44) & ~*(v60 + 80);
        v46 = swift_allocObject();
        outlined init with take of PlatformItemList.Item(v19, v46 + v44, type metadata accessor for SearchBoundProperty<TextSelection?>);
        outlined init with take of PlatformItemList.Item(v43, v46 + v45, type metadata accessor for TextSelection?);
        static Update.enqueueAction(reason:_:)();

        outlined destroy of Binding<SearchFieldState>(v40, type metadata accessor for TextSelection?);
        outlined destroy of SelectionRanges<String.Index>(v63);
        v35 = v64;
      }

      outlined destroy of SelectionRanges<String.Index>(v35);
    }

    v24 = type metadata accessor for SearchBoundProperty<TextSelection?>;
    v25 = v22;
  }

  outlined destroy of Binding<SearchFieldState>(v25, v24);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v48 = Strong;
    v49 = UIKitSearchBarCoordinator.resolvedScopes.getter();
    UIKitSearchBarCoordinator.resolvedTokenScopes.getter();
    v51 = v50;
    v53 = v52;
    v54 = *(v2 + OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_customScopeBar + 48);
    v66[2] = *(v2 + OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_customScopeBar + 32);
    v66[3] = v54;
    v66[4] = *(v2 + OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_customScopeBar + 64);
    v67 = *(v2 + OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_customScopeBar + 80);
    v55 = *(v2 + OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_customScopeBar + 16);
    v66[0] = *(v2 + OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_customScopeBar);
    v66[1] = v55;
    v56 = v48;
    outlined init with copy of AnyAccessibilityValue?(v66, v65, &lazy cache variable for type metadata for BoundInputsView?);
    specialized UIKitSearchScopeCoordinating<>.updateScopes(_:newScopes:newTokenScopes:customScopeBar:customScopeBarUpdate:)(v56, v49, 1, v51, v53, v66, v2, v56);

    outlined consume of PlatformItemCollection?(v51, v53);
    outlined consume of PlatformItemCollection?(v49, 1);
    outlined destroy of AnyAccessibilityValue?(v66, &lazy cache variable for type metadata for BoundInputsView?);
  }
}

uint64_t UIKitSearchBarCoordinator.__ivar_destroyer()
{
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(*(v0 + OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_triggerSubmission));
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(*(v0 + OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_clearAction));
  outlined destroy of Binding<SearchFieldState>(v0 + OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_configuration, type metadata accessor for SearchFieldConfiguration?);

  outlined consume of BoundInputsView?(*(v0 + OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_customScopeBar), *(v0 + OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_customScopeBar + 8), *(v0 + OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_customScopeBar + 16), *(v0 + OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_customScopeBar + 24), *(v0 + OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_customScopeBar + 32));
  outlined destroy of Binding<SearchFieldState>(v0 + OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_selection, type metadata accessor for SearchBoundProperty<TextSelection?>?);
  outlined destroy of weak FallbackResponderProvider?(v0 + OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_delegate);
  MEMORY[0x18D011290](v0 + OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_searchBar);

  v1 = *(v0 + OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_oldSuffix);
  v2 = *(v0 + OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_oldSuffix + 8);
  v3 = *(v0 + OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_oldSuffix + 16);

  return outlined consume of Text.Suffix.Storage(v1, v2, v3);
}

uint64_t type metadata completion function for UIKitSearchBarCoordinator.RepresentedToken()
{
  result = type metadata accessor for PlatformItemList.Item();
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

void destroy for UIKitSearchBarCoordinator.SearchToken(uint64_t a1)
{

  __swift_destroy_boxed_opaque_existential_1(a1 + 24);
  v2 = *(a1 + 64);
}

uint64_t initializeWithCopy for UIKitSearchBarCoordinator.SearchToken(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  v5 = *(a2 + 16);
  *(a1 + 16) = v5;
  v6 = *(a2 + 48);
  *(a1 + 48) = v6;
  v7 = v6;
  v8 = **(v6 - 8);

  v9 = v5;
  v8(a1 + 24, a2 + 24, v7);
  v10 = *(a2 + 64);
  *(a1 + 64) = v10;
  v11 = v10;
  return a1;
}

void *assignWithCopy for UIKitSearchBarCoordinator.SearchToken(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  v4 = a1[2];
  v5 = a2[2];
  a1[2] = v5;
  v6 = v5;

  __swift_assign_boxed_opaque_existential_1(a1 + 3, a2 + 3);
  v7 = a2[8];
  v8 = a1[8];
  a1[8] = v7;
  v9 = v7;

  return a1;
}

uint64_t assignWithTake for UIKitSearchBarCoordinator.SearchToken(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  v5 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);

  __swift_destroy_boxed_opaque_existential_1(a1 + 24);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  v6 = *(a2 + 64);
  v7 = *(a1 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v6;

  return a1;
}

uint64_t storeEnumTagSinglePayload for UIKitSearchBarCoordinator.SearchToken(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t specialized static UIKitSearchBarCoordinator.SearchToken.== infix(_:_:)(void *a1, void *a2)
{
  if ((MEMORY[0x18D00E7E0](a1 + 3, a2 + 3) & 1) == 0)
  {
    return 0;
  }

  v4 = a1[2];
  v5 = a2[2];
  if (!v4)
  {
    if (!v5)
    {
      goto LABEL_5;
    }

    return 0;
  }

  if (!v5)
  {
    return 0;
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage);
  v6 = v5;
  v7 = v4;
  v8 = static NSObject.== infix(_:_:)();

  if ((v8 & 1) == 0)
  {
    return 0;
  }

LABEL_5:
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t specialized UIKitSearchBarCoordinator.updateTextSelectionIfNeeded(_:selection:)(void *a1)
{
  type metadata accessor for TextSelection?(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_triggerSubmission>(0, &lazy cache variable for type metadata for SelectionRanges<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E697E8A8]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = (&v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - v9;
  type metadata accessor for SearchFieldConfiguration?(0, &lazy cache variable for type metadata for Binding<TextSelection?>, type metadata accessor for TextSelection?, MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0]();
  SelectionRanges<>.init(_:)(v4, v10);
  v11 = [a1 searchTextField];
  v12 = UISearchTextField.textOnlySelectedRange.getter();
  v14 = v13;
  v16 = v15;

  _s7SwiftUI15SelectionRangesOyACyxGSnyxGSgcfCSS5IndexV_Tt1g5(v12, v14, v16 & 1, v7);
  if ((_s7SwiftUI15SelectionRangesO2eeoiySbACyxG_AEtFZSS5IndexV_Tt1g5(v10, v7) & 1) == 0)
  {
    v17 = specialized SelectionRanges.union.getter();
    if ((v19 & 1) == 0)
    {
      v20 = v17;
      v21 = a1;
      v22 = v18;
      v23 = [v21 searchTextField];
      UISearchTextField.textOnlySelectedRange.setter(v20, v22, 0);
    }
  }

  outlined destroy of SelectionRanges<String.Index>(v7);
  return outlined destroy of SelectionRanges<String.Index>(v10);
}

uint64_t specialized UIKitSearchBarCoordinator.primaryActionTriggered(_:)(uint64_t result)
{
  if ((*(v1 + OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_isViewUpdating) & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](result);
    MEMORY[0x1EEE9AC00](v2);
    result = static Update.dispatchImmediately<A>(reason:_:)();
    v3 = *(v1 + OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_triggerSubmission);
    if (v3)
    {
      MEMORY[0x1EEE9AC00](result);
      MEMORY[0x1EEE9AC00](v4);

      static Update.dispatchImmediately<A>(reason:_:)();
      return outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v3);
    }
  }

  return result;
}

uint64_t specialized UIKitSearchBarCoordinator.searchBarTextDidEndEditing(_:)()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    v5 = (*(v3 + 8))(v1, ObjectType, v3);
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 1;
  }

  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5 & 1;

  static Update.enqueueAction(reason:_:)();
}

void specialized UIKitSearchScopeCoordinating<>.updateScopes(_:newScopes:newTokenScopes:customScopeBar:customScopeBarUpdate:)(void *a1, uint64_t a2, int a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v101 = a1;
  v102 = a8;
  v104 = a7;
  v8 = a6;
  v100 = a3;
  v99 = a2;
  v11 = *(a6 + 48);
  v12 = ~a5;
  v132 = *(a6 + 32);
  v133 = v11;
  v134 = *(a6 + 64);
  v135 = *(a6 + 80);
  v13 = *(a6 + 16);
  v130 = *a6;
  v131 = v13;
  v14 = type metadata accessor for PlatformItemList.Item();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v103 = &v94 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v107 = &v94 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v96 = &v94 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = (&v94 - v22);
  MEMORY[0x1EEE9AC00](v24);
  v108 = (&v94 - v25);
  MEMORY[0x1EEE9AC00](v26);
  v28 = (&v94 - v27);
  type metadata accessor for PlatformItemList.Item?(0);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v97 = &v94 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v94 - v32;
  v109 = v15;
  v106 = v23;
  v98 = v14;
  if (!v12)
  {
    goto LABEL_4;
  }

  specialized Collection.first.getter(a4, a5 & 1, &v94 - v32);
  if ((*(v15 + 48))(v33, 1, v14) == 1)
  {
    outlined destroy of Binding<SearchFieldState>(v33, type metadata accessor for PlatformItemList.Item?);
LABEL_4:
    v34 = 0;
    v35 = v104;
    v36 = v108;
LABEL_5:
    v37 = v100;
    goto LABEL_6;
  }

  v39 = *(v33 + 117);

  outlined destroy of Binding<SearchFieldState>(v33, type metadata accessor for PlatformItemList.Item);
  v36 = v108;
  if (!v39)
  {
    v34 = 0;
    v35 = v104;
    goto LABEL_5;
  }

  v40 = v39;
  v95 = v8;
  v105 = *(v39 + 16);
  if (v105)
  {
    v41 = 0;
    v34 = MEMORY[0x1E69E7CC0];
    v42 = v103;
    while (v41 < *(v40 + 16))
    {
      v43 = (*(v15 + 80) + 32) & ~*(v15 + 80);
      v44 = *(v15 + 72);
      v45 = v40;
      outlined init with copy of Binding<SearchFieldState>(v40 + v43 + v44 * v41, v28, type metadata accessor for PlatformItemList.Item);
      if (*v28)
      {

        outlined init with take of PlatformItemList.Item(v28, v42, type metadata accessor for PlatformItemList.Item);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v124 = v34;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v34 + 2) + 1, 1);
          v42 = v103;
          v34 = v124;
        }

        v48 = *(v34 + 2);
        v47 = *(v34 + 3);
        if (v48 >= v47 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v47 > 1, v48 + 1, 1);
          v42 = v103;
          v34 = v124;
        }

        *(v34 + 2) = v48 + 1;
        outlined init with take of PlatformItemList.Item(v42, &v34[v43 + v48 * v44], type metadata accessor for PlatformItemList.Item);
        v36 = v108;
        v15 = v109;
      }

      else
      {
        outlined destroy of Binding<SearchFieldState>(v28, type metadata accessor for PlatformItemList.Item);
      }

      ++v41;
      v40 = v45;
      if (v105 == v41)
      {
        goto LABEL_73;
      }
    }

    __break(1u);
    goto LABEL_82;
  }

  v34 = MEMORY[0x1E69E7CC0];
LABEL_73:

  if (!*(v34 + 2))
  {

    v34 = 0;
  }

  v8 = v95;
  v35 = v104;
  v23 = v106;
  v37 = v100;
LABEL_6:
  v105 = v34;
  if (v37 != -1)
  {
    v38 = v97;
    specialized Collection.first.getter(v99, v37 & 1, v97);
    if ((*(v15 + 48))(v38, 1, v98) == 1)
    {
      outlined destroy of Binding<SearchFieldState>(v38, type metadata accessor for PlatformItemList.Item?);
      goto LABEL_33;
    }

    v49 = *(v38 + 936);

    outlined destroy of Binding<SearchFieldState>(v38, type metadata accessor for PlatformItemList.Item);
    if (!v49)
    {
      goto LABEL_33;
    }

    v50 = v8;
    v51 = *(v49 + 16);
    if (!v51)
    {
      v53 = MEMORY[0x1E69E7CC0];
LABEL_77:

      if (*(v53 + 16))
      {
        v59 = v53;
      }

      else
      {

        v59 = 0;
      }

      v8 = v50;
      v35 = v104;
      v23 = v106;
      goto LABEL_34;
    }

    v52 = 0;
    v53 = MEMORY[0x1E69E7CC0];
    while (v52 < *(v49 + 16))
    {
      v54 = (*(v15 + 80) + 32) & ~*(v15 + 80);
      v55 = *(v15 + 72);
      outlined init with copy of Binding<SearchFieldState>(v49 + v54 + v55 * v52, v36, type metadata accessor for PlatformItemList.Item);
      if (*v36)
      {

        outlined init with take of PlatformItemList.Item(v36, v107, type metadata accessor for PlatformItemList.Item);
        v56 = swift_isUniquelyReferenced_nonNull_native();
        v124 = v53;
        if ((v56 & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v53 + 16) + 1, 1);
          v53 = v124;
        }

        v58 = *(v53 + 16);
        v57 = *(v53 + 24);
        if (v58 >= v57 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v57 > 1, v58 + 1, 1);
          v53 = v124;
        }

        *(v53 + 16) = v58 + 1;
        outlined init with take of PlatformItemList.Item(v107, v53 + v54 + v58 * v55, type metadata accessor for PlatformItemList.Item);
        v36 = v108;
        v15 = v109;
      }

      else
      {
        outlined destroy of Binding<SearchFieldState>(v36, type metadata accessor for PlatformItemList.Item);
      }

      if (v51 == ++v52)
      {
        goto LABEL_77;
      }
    }

LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

LABEL_33:
  v59 = 0;
LABEL_34:
  if (*v8)
  {

LABEL_36:
    v60 = OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_scopes;
    if (*(*(v35 + OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_scopes) + 16))
    {
      [v101 setScopeButtonTitles_];
      *(v35 + v60) = MEMORY[0x1E69E7CC0];
    }

    if (*v8)
    {
      v124 = *v8;
      v61 = *(v8 + 8);
      v126 = *(v8 + 24);
      v62 = *(v8 + 56);
      v127 = *(v8 + 40);
      v128 = v62;
      v129 = *(v8 + 72);
      v125 = v61;
      v63 = *(v8 + 48);
      v112 = *(v8 + 32);
      v113 = v63;
      v114 = *(v8 + 64);
      v115 = *(v8 + 80);
      v64 = *(v8 + 16);
      v110 = *v8;
      v111 = v64;
      v116[0] = v130;
      v116[1] = v131;
      v117 = v135;
      v116[3] = v133;
      v116[4] = v134;
      v116[2] = v132;
      outlined init with copy of BoundInputsView(v116, &v118);
      outlined init with copy of BoundInputsView(&v124, &v118);
      UIKitSearchBar.updateCustomScopeBarView(_:)(&v110);
      v120 = v112;
      v121 = v113;
      v122 = v114;
      v123 = v115;
      v118 = v110;
      v119 = v111;
      outlined destroy of AnyAccessibilityValue?(&v118, &lazy cache variable for type metadata for BoundInputsView?);
      outlined destroy of AnyAccessibilityValue?(v8, &lazy cache variable for type metadata for BoundInputsView?);
    }

LABEL_68:
    v89 = v35 + OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_customScopeBar;
    v90 = *(v35 + OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_customScopeBar + 48);
    v120 = *(v35 + OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_customScopeBar + 32);
    v121 = v90;
    v122 = *(v35 + OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_customScopeBar + 64);
    v123 = *(v35 + OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_customScopeBar + 80);
    v91 = *(v35 + OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_customScopeBar + 16);
    v118 = *(v35 + OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_customScopeBar);
    v119 = v91;
    v92 = *(v8 + 16);
    *v89 = *v8;
    *(v89 + 16) = v92;
    v93 = *(v8 + 48);
    *(v89 + 32) = *(v8 + 32);
    *(v89 + 48) = v93;
    *(v89 + 64) = *(v8 + 64);
    *(v89 + 80) = *(v8 + 80);
    outlined destroy of AnyAccessibilityValue?(&v118, &lazy cache variable for type metadata for BoundInputsView?);
    outlined init with copy of AnyAccessibilityValue?(v8, v116, &lazy cache variable for type metadata for BoundInputsView?);
    return;
  }

  if (v105)
  {
    v65 = v105;
  }

  else
  {
    if (!v59)
    {
      goto LABEL_36;
    }

    v65 = v59;
  }

  v107 = v59;
  v108 = v65;
  v95 = v8;
  v66 = v65[2];
  if (v66)
  {
    v67 = v65 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v68 = *(v15 + 72);

    v69 = MEMORY[0x1E69E7CC0];
    v70 = v66;
    do
    {
      outlined init with copy of Binding<SearchFieldState>(v67, v23, type metadata accessor for PlatformItemList.Item);
      if (*v23)
      {
        v71 = [*v23 string];
        v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v74 = v73;

        outlined destroy of Binding<SearchFieldState>(v23, type metadata accessor for PlatformItemList.Item);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v69 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v69 + 2) + 1, 1, v69);
        }

        v76 = *(v69 + 2);
        v75 = *(v69 + 3);
        if (v76 >= v75 >> 1)
        {
          v69 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v75 > 1), v76 + 1, 1, v69);
        }

        *(v69 + 2) = v76 + 1;
        v77 = &v69[16 * v76];
        *(v77 + 4) = v72;
        *(v77 + 5) = v74;
        v23 = v106;
      }

      else
      {
        outlined destroy of Binding<SearchFieldState>(v23, type metadata accessor for PlatformItemList.Item);
      }

      v67 += v68;
      --v66;
    }

    while (v66);
  }

  else
  {
    v70 = 0;

    v69 = MEMORY[0x1E69E7CC0];
  }

  v78 = [v101 scopeButtonTitles];
  if (v78 && (v79 = v78, v80 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v79, LOBYTE(v79) = _sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v69, v80), , (v79 & 1) != 0))
  {
  }

  else
  {
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v101 setScopeButtonTitles_];
  }

  v8 = v95;
  v82 = v96;
  v35 = v104;
  v83 = v108;
  if (!v70)
  {
LABEL_64:

    v88 = v107;
    if (v107)
    {
LABEL_65:
      *(v35 + OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_scopes) = v88;
    }

LABEL_66:
    if (v105)
    {
      *(v35 + OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_tokenScopes) = v105;
    }

    goto LABEL_68;
  }

  v84 = 0;
  v85 = v109;
  v86 = v108 + ((*(v109 + 80) + 32) & ~*(v109 + 80));
  while (v84 < v83[2])
  {
    outlined init with copy of Binding<SearchFieldState>(&v86[*(v85 + 72) * v84], v82, type metadata accessor for PlatformItemList.Item);
    v87 = *(v82 + 954);
    outlined destroy of Binding<SearchFieldState>(v82, type metadata accessor for PlatformItemList.Item);
    if (!v87)
    {

      [v101 setSelectedScopeButtonIndex_];
      v88 = v107;
      if (v107)
      {
        goto LABEL_65;
      }

      goto LABEL_66;
    }

    ++v84;
    v85 = v109;
    if (v70 == v84)
    {
      goto LABEL_64;
    }
  }

LABEL_83:
  __break(1u);
}

uint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_searchToolbarBehavior> and conformance EnvironmentPropertyKey<A>(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_triggerSubmission>(255, a2, a3, a4, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined assign with take of SearchBoundProperty<TextSelection?>?(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

void type metadata accessor for (PlatformSearchPopoverAnchor?, PlatformSearchPopoverAnchor?)()
{
  if (!lazy cache variable for type metadata for (PlatformSearchPopoverAnchor?, PlatformSearchPopoverAnchor?))
  {
    type metadata accessor for AnyAccessibilityValue?(255, &lazy cache variable for type metadata for PlatformSearchPopoverAnchor?);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (PlatformSearchPopoverAnchor?, PlatformSearchPopoverAnchor?));
    }
  }
}

uint64_t outlined destroy of SelectionRanges<String.Index>(uint64_t a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_triggerSubmission>(0, &lazy cache variable for type metadata for SelectionRanges<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E697E8A8]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined copy of PlatformItemCollection.Storage(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  return result;
}

void type metadata accessor for (offset: Int, element: AnyToken)()
{
  if (!lazy cache variable for type metadata for (offset: Int, element: AnyToken))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (offset: Int, element: AnyToken));
    }
  }
}

uint64_t _s7SwiftUI13TextSelectionVACSQAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined consume of BoundInputsView?(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (result)
  {
  }

  return result;
}

uint64_t outlined consume of PlatformItemCollection.Storage(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  return result;
}

void type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_triggerSubmission>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t partial apply for closure #2 in UIKitSearchBarCoordinator.textFieldDidChangeSelection(_:)()
{
  type metadata accessor for SearchBoundProperty<TextSelection?>();
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  type metadata accessor for TextSelection?(0);
  return specialized SearchBoundProperty.update(external:)(v0 + ((v2 + v3 + *(*(v4 - 8) + 80)) & ~*(*(v4 - 8) + 80)));
}

uint64_t partial apply for specialized closure #1 in SubmitTriggerSource.updateTriggersIfNeeded()()
{
  v1 = *(v0 + 16);
  v3 = 4;
  return v1(&v3);
}

{
  v1 = *(v0 + 16);
  v3 = 1;
  return v1(&v3);
}

void *initializeBufferWithCopyOfBuffer for UIKitSearchBarAdaptor(void *a1, void *a2, uint64_t a3)
{
  v3 = *(*(a3 - 8) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v6 = (v4 + ((v3 + 16) & ~v3));
  }

  else
  {
    v6 = a1;
    a1[1] = a2[1];
    type metadata accessor for Binding<SearchFieldState>(0);
    v8 = *(v7 + 32);
    v9 = v6 + v8;
    v10 = a2 + v8;
    *v9 = *(a2 + v8);
    v9[1] = *(a2 + v8 + 1);
    *(v9 + 1) = *(a2 + v8 + 2);
    v9[8] = *(a2 + v8 + 8);
    *(v9 + 1) = *(a2 + v8 + 4);
    v11 = type metadata accessor for SearchFieldState(0);
    v12 = v11[9];
    v13 = type metadata accessor for AttributedString();
    v14 = *(*(v13 - 8) + 16);

    v14(&v9[v12], &v10[v12], v13);
    v9[v11[10]] = v10[v11[10]];
    v15 = v11[11];
    v16 = &v9[v15];
    v17 = &v10[v15];
    v16[4] = v17[4];
    *v16 = *v17;
    v18 = type metadata accessor for SearchFieldConfiguration(0);
    v19 = v18[6];
    v20 = v6 + v19;
    v21 = a2 + v19;
    v22 = v21[8];
    if (v22 == 255)
    {
      *v20 = *v21;
      v20[8] = v21[8];
    }

    else
    {
      v23 = *v21;
      v24 = v22 & 1;
      outlined copy of PlatformItemCollection.Storage(*v21, v22 & 1);
      *v20 = v23;
      v20[8] = v24;
    }

    *(v6 + v18[7]) = *(a2 + v18[7]);
    v25 = v18[8];
    v26 = v6 + v25;
    v27 = a2 + v25;
    v28 = *(a2 + v25);
    v29 = *(a2 + v25 + 8);
    v30 = *(a2 + v25 + 16);
    outlined copy of Text.Storage(v28, v29, v30);
    *v26 = v28;
    *(v26 + 1) = v29;
    v26[16] = v30;
    *(v26 + 3) = *(v27 + 3);
    *(v6 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  }

  return v6;
}

void *initializeWithTake for UIKitSearchBarAdaptor(void *a1, void *a2, uint64_t a3)
{
  v6 = a2[1];
  *a1 = *a2;
  a1[1] = v6;
  type metadata accessor for Binding<SearchFieldState>(0);
  v8 = *(v7 + 32);
  v9 = a1 + v8;
  v10 = a2 + v8;
  *v9 = *(a2 + v8);
  v9[1] = *(a2 + v8 + 1);
  *(v9 + 1) = *(a2 + v8 + 2);
  v9[8] = *(a2 + v8 + 8);
  *(v9 + 1) = *(a2 + v8 + 4);
  v11 = type metadata accessor for SearchFieldState(0);
  v12 = v11[9];
  v13 = type metadata accessor for AttributedString();
  (*(*(v13 - 8) + 32))(&v9[v12], &v10[v12], v13);
  v9[v11[10]] = v10[v11[10]];
  v14 = v11[11];
  v15 = &v9[v14];
  v16 = &v10[v14];
  v15[4] = v16[4];
  *v15 = *v16;
  v17 = type metadata accessor for SearchFieldConfiguration(0);
  v18 = v17[6];
  v19 = a1 + v18;
  v20 = a2 + v18;
  *v19 = *v20;
  v19[8] = v20[8];
  *(a1 + v17[7]) = *(a2 + v17[7]);
  v21 = v17[8];
  v22 = (a1 + v21);
  v23 = (a2 + v21);
  v24 = v23[1];
  *v22 = *v23;
  v22[1] = v24;
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}