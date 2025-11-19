uint64_t AnyGroupActivity.tuConversationActivity.getter()
{
  v1 = type metadata accessor for AnyGroupActivity(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  outlined init with copy of GroupActivityMetadata(v0, &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AnyGroupActivity);
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  outlined init with take of AnyGroupActivity.MetadataProvider(&v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4, type metadata accessor for AnyGroupActivity);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCySo22TUConversationActivityCs5Error_pGMd, &_s7Combine6FutureCySo22TUConversationActivityCs5Error_pGMR);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  return Future.init(_:)();
}

uint64_t AnyGroupActivity.init(tuConversationActivity:metadataProvider:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v37 = type metadata accessor for UUID();
  v6 = *(v37 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AnyGroupActivity.MetadataProvider(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a1 activityIdentifier];
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v16;
  v36 = v15;

  outlined init with copy of GroupActivityMetadata(a2, v13, type metadata accessor for AnyGroupActivity.MetadataProvider);
  v17 = [a1 applicationContext];
  v18 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = v19;
  v34 = v18;

  v20 = [a1 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v21 = [a1 staticIdentifier];
  if (v21)
  {
    v22 = v21;
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    outlined destroy of GroupActivityMetadata(a2, type metadata accessor for AnyGroupActivity.MetadataProvider);
  }

  else
  {
    outlined destroy of GroupActivityMetadata(a2, type metadata accessor for AnyGroupActivity.MetadataProvider);

    v23 = 0;
    v25 = 0;
  }

  v26 = v35;
  *a3 = v36;
  *(a3 + 1) = v26;
  v27 = type metadata accessor for AnyGroupActivity(0);
  outlined init with take of AnyGroupActivity.MetadataProvider(v13, &a3[v27[5]], type metadata accessor for AnyGroupActivity.MetadataProvider);
  v28 = &a3[v27[6]];
  v29 = v33;
  *v28 = v34;
  v28[1] = v29;
  result = (*(v6 + 32))(&a3[v27[7]], v9, v37);
  v31 = &a3[v27[8]];
  *v31 = v23;
  v31[1] = v25;
  return result;
}

uint64_t AnyGroupActivity.activityIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t AnyGroupActivity.activityIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t AnyGroupActivity.metadataProvider.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for AnyGroupActivity(0) + 20);

  return outlined assign with take of AnyGroupActivity.MetadataProvider(a1, v3);
}

uint64_t AnyGroupActivity.content.getter()
{
  v1 = v0 + *(type metadata accessor for AnyGroupActivity(0) + 24);
  v2 = *v1;
  outlined copy of Data._Representation(*v1, *(v1 + 8));
  return v2;
}

uint64_t AnyGroupActivity.content.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for AnyGroupActivity(0) + 24);
  result = outlined consume of Data._Representation(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t AnyGroupActivity.uuid.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AnyGroupActivity(0) + 28);
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AnyGroupActivity.uuid.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AnyGroupActivity(0) + 28);
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AnyGroupActivity.staticIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for AnyGroupActivity(0) + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t AnyGroupActivity.staticIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for AnyGroupActivity(0) + 32));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t default argument 1 of AnyGroupActivity.init(activityIdentifier:metadataProvider:content:uuid:staticIdentifier:)@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for generic != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for GroupActivityMetadata.ActivityType(0);
  v3 = __swift_project_value_buffer(v2, static GroupActivityMetadata.ActivityType.generic);
  outlined init with copy of GroupActivityMetadata(v3, a1, type metadata accessor for GroupActivityMetadata.ActivityType);
  v4 = type metadata accessor for GroupActivityMetadata(0);
  v5 = (a1 + v4[5]);
  *v5 = 0;
  v5[1] = 0;
  v6 = (a1 + v4[6]);
  *v6 = 0;
  v6[1] = 0;
  *(a1 + v4[7]) = 0;
  v7 = v4[8];
  v8 = type metadata accessor for URL();
  v9 = *(*(v8 - 8) + 56);
  v9(a1 + v7, 1, 1, v8);
  *(a1 + v4[9]) = 0;
  *(a1 + v4[10]) = dyld_program_sdk_at_least() ^ 1;
  v9(a1 + v4[11], 1, 1, v8);
  v10 = v4[12];
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v11 = a1 + v10;
  v12 = qword_1EDADC9F0;
  v13 = qword_1EDADCA08;
  *v11 = static SceneAssociationBehavior.default;
  *(v11 + 8) = v12;
  *(v11 + 16) = xmmword_1EDADC9F8;
  *(v11 + 32) = v13;
  *(a1 + v4[13]) = 0;
  *(a1 + v4[14]) = 2;
  type metadata accessor for AnyGroupActivity.MetadataProvider(0);
  swift_storeEnumTagMultiPayload();
}

uint64_t AnyGroupActivity.init(activityIdentifier:metadataProvider:content:uuid:staticIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  *a9 = a1;
  *(a9 + 1) = a2;
  v16 = type metadata accessor for AnyGroupActivity(0);
  outlined init with take of AnyGroupActivity.MetadataProvider(a3, &a9[v16[5]], type metadata accessor for AnyGroupActivity.MetadataProvider);
  v17 = &a9[v16[6]];
  *v17 = a4;
  *(v17 + 1) = a5;
  v18 = v16[7];
  v19 = type metadata accessor for UUID();
  result = (*(*(v19 - 8) + 32))(&a9[v18], a6, v19);
  v21 = &a9[v16[8]];
  *v21 = a7;
  *(v21 + 1) = a8;
  return result;
}

unint64_t lazy protocol witness table accessor for type GroupActivityError and conformance GroupActivityError()
{
  result = lazy protocol witness table cache variable for type GroupActivityError and conformance GroupActivityError;
  if (!lazy protocol witness table cache variable for type GroupActivityError and conformance GroupActivityError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GroupActivityError and conformance GroupActivityError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GroupActivityError and conformance GroupActivityError;
  if (!lazy protocol witness table cache variable for type GroupActivityError and conformance GroupActivityError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GroupActivityError and conformance GroupActivityError);
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AnyGroupActivity.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AnyGroupActivity.CodingKeys()
{
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AnyGroupActivity.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance AnyGroupActivity.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized AnyGroupActivity.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance AnyGroupActivity.CodingKeys(unint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x746E65746E6F63;
  v4 = 0xE400000000000000;
  v5 = 1684632949;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000010;
    v4 = 0x80000001AF01A310;
  }

  if (!*v1)
  {
    v3 = 0xD000000000000012;
    v2 = 0x80000001AF01A2F0;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance AnyGroupActivity.CodingKeys()
{
  v1 = 0x746E65746E6F63;
  v2 = 1684632949;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000012;
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

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance AnyGroupActivity.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized AnyGroupActivity.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AnyGroupActivity.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnyGroupActivity.CodingKeys and conformance AnyGroupActivity.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AnyGroupActivity.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnyGroupActivity.CodingKeys and conformance AnyGroupActivity.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AnyGroupActivity.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15GroupActivities03AnyD8ActivityV10CodingKeys33_D46ABB58E9B03CFAE65C32ADA8FDC96CLLOGMd, &_ss22KeyedEncodingContainerVy15GroupActivities03AnyD8ActivityV10CodingKeys33_D46ABB58E9B03CFAE65C32ADA8FDC96CLLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AnyGroupActivity.CodingKeys and conformance AnyGroupActivity.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v22) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v13 = type metadata accessor for AnyGroupActivity(0);
    v14 = (v3 + v13[6]);
    v15 = v14[1];
    v22 = *v14;
    v23 = v15;
    v21[15] = 1;
    outlined copy of Data._Representation(v22, v15);
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    outlined consume of Data._Representation(v22, v23);
    v16 = v13[7];
    LOBYTE(v22) = 2;
    type metadata accessor for UUID();
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v17 = (v3 + v13[8]);
    v18 = *v17;
    v19 = v17[1];
    LOBYTE(v22) = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t AnyGroupActivity.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = type metadata accessor for UUID();
  v47 = *(v3 - 8);
  v48 = v3;
  v4 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v46 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15GroupActivities03AnyD8ActivityV10CodingKeys33_D46ABB58E9B03CFAE65C32ADA8FDC96CLLOGMd, &_ss22KeyedDecodingContainerVy15GroupActivities03AnyD8ActivityV10CodingKeys33_D46ABB58E9B03CFAE65C32ADA8FDC96CLLOGMR);
  v50 = *(v6 - 8);
  v51 = v6;
  v7 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v44 - v8;
  v10 = type metadata accessor for AnyGroupActivity(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = (&v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v49 = v12;
  v15 = v14 + *(v12 + 20);
  if (one-time initialization token for generic != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for GroupActivityMetadata.ActivityType(0);
  v17 = __swift_project_value_buffer(v16, static GroupActivityMetadata.ActivityType.generic);
  outlined init with copy of GroupActivityMetadata(v17, v15, type metadata accessor for GroupActivityMetadata.ActivityType);
  v18 = type metadata accessor for GroupActivityMetadata(0);
  v19 = (v15 + v18[5]);
  *v19 = 0;
  v19[1] = 0;
  v20 = (v15 + v18[6]);
  *v20 = 0;
  v20[1] = 0;
  *(v15 + v18[7]) = 0;
  v21 = v18[8];
  v22 = type metadata accessor for URL();
  v23 = *(*(v22 - 8) + 56);
  v23(v15 + v21, 1, 1, v22);
  *(v15 + v18[9]) = 0;
  *(v15 + v18[10]) = dyld_program_sdk_at_least() ^ 1;
  v23(v15 + v18[11], 1, 1, v22);
  v24 = v15 + v18[12];
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v25 = qword_1EDADC9F0;
  v26 = qword_1EDADCA08;
  *v24 = static SceneAssociationBehavior.default;
  *(v24 + 8) = v25;
  v52 = xmmword_1EDADC9F8;
  *(v24 + 16) = xmmword_1EDADC9F8;
  *(v24 + 32) = v26;
  *(v15 + v18[13]) = 0;
  *(v15 + v18[14]) = 2;
  type metadata accessor for AnyGroupActivity.MetadataProvider(0);
  swift_storeEnumTagMultiPayload();
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AnyGroupActivity.CodingKeys and conformance AnyGroupActivity.CodingKeys();

  v28 = v53;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v28)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    v42 = type metadata accessor for AnyGroupActivity.MetadataProvider;
    v43 = v15;
  }

  else
  {
    LOBYTE(v54) = 0;
    v29 = v51;
    v30 = KeyedDecodingContainer.decode(_:forKey:)();
    v33 = v32;
    *v14 = v30;
    v14[1] = v32;
    v55 = 1;
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v53 = v33;
    *(v14 + v49[6]) = v54;
    LOBYTE(v54) = 2;
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v34 = v46;
    v35 = v48;
    *&v52 = 0;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v47 + 32))(v14 + v49[7], v34, v35);
    LOBYTE(v54) = 3;
    v36 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v37 = v29;
    v38 = v36;
    v40 = v39;
    v41 = (v14 + v49[8]);
    (*(v50 + 8))(v9, v37);
    *v41 = v38;
    v41[1] = v40;
    outlined init with copy of GroupActivityMetadata(v14, v45, type metadata accessor for AnyGroupActivity);
    __swift_destroy_boxed_opaque_existential_0(a1);
    v42 = type metadata accessor for AnyGroupActivity;
    v43 = v14;
  }

  return outlined destroy of GroupActivityMetadata(v43, v42);
}

uint64_t AnyGroupActivity.metadata.getter(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for AnyGroupActivity.MetadataProvider(0);
  v2[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities03AnyA8ActivityVSgMd, &_s15GroupActivities03AnyA8ActivityVSgMR) - 8) + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v6 = type metadata accessor for AnyGroupActivity(0);
  v2[8] = v6;
  v7 = *(v6 - 8);
  v2[9] = v7;
  v8 = *(v7 + 64) + 15;
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](AnyGroupActivity.metadata.getter, 0, 0);
}

uint64_t AnyGroupActivity.metadata.getter()
{
  v39 = v0;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v1 = v0[12];
  v2 = v0[3];
  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Log.default);
  outlined init with copy of GroupActivityMetadata(v2, v1, type metadata accessor for AnyGroupActivity);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[12];
  if (v6)
  {
    v8 = v0[8];
    v9 = v0[9];
    v11 = v0[6];
    v10 = v0[7];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v38 = v13;
    *v12 = 136315138;
    outlined init with copy of GroupActivityMetadata(v7, v10, type metadata accessor for AnyGroupActivity);
    (*(v9 + 56))(v10, 0, 1, v8);
    outlined init with copy of AnyGroupActivity?(v10, v11);
    if ((*(v9 + 48))(v11, 1, v8) == 1)
    {
      v14 = 0xE300000000000000;
      v15 = 7104878;
    }

    else
    {
      v16 = v0[10];
      v17 = v0[11];
      v18 = v0[8];
      outlined init with take of AnyGroupActivity.MetadataProvider(v0[6], v17, type metadata accessor for AnyGroupActivity);
      outlined init with copy of GroupActivityMetadata(v17, v16, type metadata accessor for AnyGroupActivity);
      v15 = String.init<A>(reflecting:)();
      v14 = v19;
      outlined destroy of GroupActivityMetadata(v17, type metadata accessor for AnyGroupActivity);
    }

    v20 = v0[12];
    outlined destroy of NSObject?(v0[7], &_s15GroupActivities03AnyA8ActivityVSgMd, &_s15GroupActivities03AnyA8ActivityVSgMR);
    outlined destroy of GroupActivityMetadata(v20, type metadata accessor for AnyGroupActivity);
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v14, &v38);

    *(v12 + 4) = v21;
    _os_log_impl(&dword_1AEE80000, v4, v5, "Requesting metadata from GroupActivity %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x1B2715BA0](v13, -1, -1);
    MEMORY[0x1B2715BA0](v12, -1, -1);
  }

  else
  {

    outlined destroy of GroupActivityMetadata(v7, type metadata accessor for AnyGroupActivity);
  }

  v22 = v0[4];
  outlined init with copy of GroupActivityMetadata(v0[3] + *(v0[8] + 20), v0[5], type metadata accessor for AnyGroupActivity.MetadataProvider);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v24 = v0[5];
  if (EnumCaseMultiPayload == 1)
  {
    v25 = *v24;
    v0[13] = *v24;
    v26 = *(MEMORY[0x1E69E88D0] + 4);
    v27 = swift_task_alloc();
    v0[14] = v27;
    v28 = type metadata accessor for GroupActivityMetadata(0);
    *v27 = v0;
    v27[1] = AnyGroupActivity.metadata.getter;
    v29 = v0[2];

    return MEMORY[0x1EEE6DDE0](v29, 0, 0, 0x617461646174656DLL, 0xE800000000000000, partial apply for closure #1 in AnyGroupActivity.metadata.getter, v25, v28);
  }

  else
  {
    outlined init with take of AnyGroupActivity.MetadataProvider(v24, v0[2], type metadata accessor for GroupActivityMetadata);
    v31 = v0[11];
    v30 = v0[12];
    v32 = v0[10];
    v34 = v0[6];
    v33 = v0[7];
    v35 = v0[5];

    v36 = v0[1];

    return v36();
  }
}

{
  v1 = *(*v0 + 112);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](AnyGroupActivity.metadata.getter, 0, 0);
}

{
  v1 = v0[13];

  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[10];
  v6 = v0[6];
  v5 = v0[7];
  v7 = v0[5];

  v8 = v0[1];

  return v8();
}

uint64_t closure #1 in AnyGroupActivity.metadata.getter(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy15GroupActivities0A16ActivityMetadataVs5NeverOGMd, &_sScCy15GroupActivities0A16ActivityMetadataVs5NeverOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v14 - v8;
  v14[1] = a2;
  (*(v6 + 16))(v14 - v8, a1, v5);
  v10 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v11 = swift_allocObject();
  (*(v6 + 32))(v11 + v10, v9, v5);
  v12 = lazy protocol witness table accessor for type Future<TUConversationActivity, Error> and conformance Future<A, B>(&lazy protocol witness table cache variable for type Future<GroupActivityMetadata, Never> and conformance Future<A, B>, &_s7Combine6FutureCy15GroupActivities0C16ActivityMetadataVs5NeverOGMd, &_s7Combine6FutureCy15GroupActivities0C16ActivityMetadataVs5NeverOGMR);
  MEMORY[0x1B2713D50](partial apply for closure #1 in closure #1 in AnyGroupActivity.metadata.getter, v11, v4, v12);
}

uint64_t closure #1 in closure #1 in AnyGroupActivity.metadata.getter(uint64_t a1)
{
  v2 = type metadata accessor for GroupActivityMetadata(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  outlined init with copy of GroupActivityMetadata(a1, &v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GroupActivityMetadata);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy15GroupActivities0A16ActivityMetadataVs5NeverOGMd, &_sScCy15GroupActivities0A16ActivityMetadataVs5NeverOGMR);
  return CheckedContinuation.resume(returning:)();
}

uint64_t protocol witness for GroupActivity.metadata.getter in conformance AnyGroupActivity(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for AnyTransportSession.removeAttachment(id:) in conformance GroupSession<A>;

  return AnyGroupActivity.metadata.getter(a1);
}

uint64_t closure #1 in AnyGroupActivity.tuConversationActivity.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v6 = type metadata accessor for AnyGroupActivity(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  v23 = v10;
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v21 = type metadata accessor for AnyGroupActivity;
  outlined init with copy of GroupActivityMetadata(a3, v9, type metadata accessor for AnyGroupActivity);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  outlined init with take of AnyGroupActivity.MetadataProvider(v9, v12 + v11, type metadata accessor for AnyGroupActivity);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCy15GroupActivities0C16ActivityMetadataVs5NeverOGMd, &_s7Combine6FutureCy15GroupActivities0C16ActivityMetadataVs5NeverOGMR);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();

  v24 = Future.init(_:)();
  outlined init with copy of GroupActivityMetadata(v22, v9, v21);
  v16 = swift_allocObject();
  outlined init with take of AnyGroupActivity.MetadataProvider(v9, v16 + v11, type metadata accessor for AnyGroupActivity);
  v17 = (v16 + ((v11 + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  v18 = v23;
  *v17 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Result<TUConversationActivity, Error>) -> ();
  v17[1] = v18;
  v19 = lazy protocol witness table accessor for type Future<TUConversationActivity, Error> and conformance Future<A, B>(&lazy protocol witness table cache variable for type Future<GroupActivityMetadata, Never> and conformance Future<A, B>, &_s7Combine6FutureCy15GroupActivities0C16ActivityMetadataVs5NeverOGMd, &_s7Combine6FutureCy15GroupActivities0C16ActivityMetadataVs5NeverOGMR);
  MEMORY[0x1B2713D50](partial apply for closure #1 in closure #1 in AnyGroupActivity.tuConversationActivity.getter, v16, v13, v19);
}

uint64_t outlined init with copy of GroupActivityMetadata(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of AnyGroupActivity.MetadataProvider(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of GroupActivityMetadata(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined assign with take of AnyGroupActivity.MetadataProvider(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnyGroupActivity.MetadataProvider(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void closure #1 in closure #1 in AnyGroupActivity.tuConversationActivity.getter(uint64_t a1, uint64_t *a2, void (*a3)(id, void))
{
  v5 = GroupActivityMetadata.tuMetadata.getter();
  v6 = type metadata accessor for AnyGroupActivity(0);
  v7 = *(v6 + 28);
  v8 = (a2 + *(v6 + 24));
  v9 = *v8;
  v10 = v8[1];
  v11 = *a2;
  v12 = a2[1];
  v13 = objc_allocWithZone(MEMORY[0x1E69D8B28]);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v15 = UUID._bridgeToObjectiveC()().super.isa;
  v16 = MEMORY[0x1B2714130](v11, v12);
  v17 = [v13 initWithMetadata:v5 applicationContext:isa uuid:v15 activityIdentifier:v16];

  v18 = v17;
  a3(v17, 0);
}

uint64_t AnyGroupActivity.tuConversationActivityCreateSessionRequest.getter()
{
  *(v1 + 16) = v0;
  v2 = *(*(type metadata accessor for GroupActivityMetadata(0) - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](AnyGroupActivity.tuConversationActivityCreateSessionRequest.getter, 0, 0);
}

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
    _os_log_impl(&dword_1AEE80000, v2, v3, "Creating sessionCreationRequest with AnyGroupActivity", v4, 2u);
    MEMORY[0x1B2715BA0](v4, -1, -1);
  }

  v5 = swift_task_alloc();
  v0[4] = v5;
  *v5 = v0;
  v5[1] = AnyGroupActivity.tuConversationActivityCreateSessionRequest.getter;
  v7 = v0[2];
  v6 = v0[3];

  return AnyGroupActivity.metadata.getter(v6);
}

{
  v1 = *(*v0 + 32);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](AnyGroupActivity.tuConversationActivityCreateSessionRequest.getter, 0, 0);
}

{
  v2 = v0[2];
  v1 = v0[3];
  v3 = GroupActivityMetadata.tuMetadata.getter();
  outlined destroy of GroupActivityMetadata(v1, type metadata accessor for GroupActivityMetadata);
  v4 = type metadata accessor for AnyGroupActivity(0);
  v5 = v4[7];
  v6 = (v2 + v4[6]);
  v8 = *v6;
  v7 = v6[1];
  v9 = *v2;
  v10 = v2[1];
  v11 = (v2 + v4[8]);
  v12 = *v11;
  v13 = v11[1];
  v14.super.isa = Data._bridgeToObjectiveC()().super.isa;
  v15 = MEMORY[0x1B2714130](v9, v10);
  v16.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  if (v13)
  {
    v17 = MEMORY[0x1B2714130](v12, v13);
  }

  else
  {
    v17 = 0;
  }

  v18 = v0[3];
  v19 = [objc_allocWithZone(MEMORY[0x1E69D8B38]) initWithMetadata:v3 applicationContext:v14.super.isa activityIdentifier:v15 uuid:v16.super.isa staticIdentifier:v17];

  v20 = v0[1];

  return v20(v19);
}

uint64_t AnyGroupActivity.tuConversationActivity<A>(as:)(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x1EEE6DFA0](AnyGroupActivity.tuConversationActivity<A>(as:), 0, 0);
}

uint64_t AnyGroupActivity.tuConversationActivity<A>(as:)()
{
  v1 = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *(v2 + 16) = *(v0 + 32);
  *(v2 + 32) = v1;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = AnyGroupActivity.tuConversationActivity<A>(as:);
  v5 = *(v0 + 32);

  return MEMORY[0x1EEE6DE38](v0 + 16, 0, 0, 0xD00000000000001BLL, 0x80000001AF01B030, partial apply for closure #1 in AnyGroupActivity.tuConversationActivity<A>(as:), v2, v5);
}

{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = AnyGroupActivity.tuConversationActivity<A>(as:);
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = AnyGroupActivity.tuConversationActivity<A>(as:);
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

{
  return (*(v0 + 8))(*(v0 + 16));
}

{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

uint64_t closure #1 in AnyGroupActivity.tuConversationActivity<A>(as:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a4;
  v31 = a3;
  v27 = a1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v6 = type metadata accessor for CheckedContinuation();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v25 - v9;
  v11 = type metadata accessor for AnyGroupActivity(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  outlined init with copy of GroupActivityMetadata(a2, &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AnyGroupActivity);
  v14 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v15 = swift_allocObject();
  outlined init with take of AnyGroupActivity.MetadataProvider(&v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for AnyGroupActivity);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCySo22TUConversationActivityCs5Error_pGMd, &_s7Combine6FutureCySo22TUConversationActivityCs5Error_pGMR);
  v16 = *(v29 + 48);
  v17 = *(v29 + 52);
  swift_allocObject();
  v28 = Future.init(_:)();
  v32 = v28;
  v26 = *(v7 + 16);
  v26(v10, a1, v6);
  v18 = *(v7 + 80);
  v19 = swift_allocObject();
  v21 = v30;
  v20 = v31;
  *(v19 + 16) = v30;
  *(v19 + 24) = v20;
  v22 = *(v7 + 32);
  v22(v19 + ((v18 + 32) & ~v18), v10, v6);
  v26(v10, v27, v6);
  v23 = swift_allocObject();
  *(v23 + 16) = v21;
  v22(v23 + ((v18 + 24) & ~v18), v10, v6);
  lazy protocol witness table accessor for type Future<TUConversationActivity, Error> and conformance Future<A, B>(&lazy protocol witness table cache variable for type Future<TUConversationActivity, Error> and conformance Future<A, B>, &_s7Combine6FutureCySo22TUConversationActivityCs5Error_pGMd, &_s7Combine6FutureCySo22TUConversationActivityCs5Error_pGMR);
  Publisher.sinkOnce(_:onError:)();
}

uint64_t closure #1 in closure #1 in AnyGroupActivity.tuConversationActivity<A>(as:)(void **a1)
{
  v1 = *a1;
  type metadata accessor for TUConversationActivity();
  v2 = v1;
  result = swift_dynamicCast();
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
    type metadata accessor for CheckedContinuation();
    return CheckedContinuation.resume(returning:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #2 in closure #1 in AnyGroupActivity.tuConversationActivity<A>(as:)(id *a1)
{
  v1 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  type metadata accessor for CheckedContinuation();
  return CheckedContinuation.resume(throwing:)();
}

uint64_t specialized closure #1 in GroupActivity.awaitMetadataValue()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AnyGroupActivity(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v17 - v11;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  outlined init with copy of GroupActivityMetadata(a3, &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AnyGroupActivity);
  v14 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = a1;
  v15[5] = a2;
  outlined init with take of AnyGroupActivity.MetadataProvider(&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for AnyGroupActivity);

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v12, &async function pointer to partial apply for specialized closure #1 in closure #1 in GroupActivity.awaitMetadataValue(), v15);
}

uint64_t specialized closure #1 in closure #1 in GroupActivity.awaitMetadataValue()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy15GroupActivities0B16ActivityMetadataVs5NeverOGMd, &_ss6ResultOy15GroupActivities0B16ActivityMetadataVs5NeverOGMR);
  v5[4] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v8 = swift_task_alloc();
  v5[5] = v8;
  v9 = swift_task_alloc();
  v5[6] = v9;
  *v9 = v5;
  v9[1] = specialized closure #1 in closure #1 in GroupActivity.awaitMetadataValue();

  return AnyGroupActivity.metadata.getter(v8);
}

uint64_t specialized closure #1 in closure #1 in GroupActivity.awaitMetadataValue()()
{
  v1 = *(*v0 + 48);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](specialized closure #1 in closure #1 in GroupActivity.awaitMetadataValue(), 0, 0);
}

{
  v1 = v0[4];
  v2 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  swift_storeEnumTagMultiPayload();
  v4(v2);
  outlined destroy of NSObject?(v2, &_ss6ResultOy15GroupActivities0B16ActivityMetadataVs5NeverOGMd, &_ss6ResultOy15GroupActivities0B16ActivityMetadataVs5NeverOGMR);

  v5 = v0[1];

  return v5();
}

unint64_t lazy protocol witness table accessor for type AnyGroupActivity.CodingKeys and conformance AnyGroupActivity.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AnyGroupActivity.CodingKeys and conformance AnyGroupActivity.CodingKeys;
  if (!lazy protocol witness table cache variable for type AnyGroupActivity.CodingKeys and conformance AnyGroupActivity.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnyGroupActivity.CodingKeys and conformance AnyGroupActivity.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnyGroupActivity.CodingKeys and conformance AnyGroupActivity.CodingKeys;
  if (!lazy protocol witness table cache variable for type AnyGroupActivity.CodingKeys and conformance AnyGroupActivity.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnyGroupActivity.CodingKeys and conformance AnyGroupActivity.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnyGroupActivity.CodingKeys and conformance AnyGroupActivity.CodingKeys;
  if (!lazy protocol witness table cache variable for type AnyGroupActivity.CodingKeys and conformance AnyGroupActivity.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnyGroupActivity.CodingKeys and conformance AnyGroupActivity.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnyGroupActivity.CodingKeys and conformance AnyGroupActivity.CodingKeys;
  if (!lazy protocol witness table cache variable for type AnyGroupActivity.CodingKeys and conformance AnyGroupActivity.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnyGroupActivity.CodingKeys and conformance AnyGroupActivity.CodingKeys);
  }

  return result;
}

uint64_t outlined init with copy of AnyGroupActivity?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities03AnyA8ActivityVSgMd, &_s15GroupActivities03AnyA8ActivityVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for AnyGroupActivity.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AnyGroupActivity.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t specialized AnyGroupActivity.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of AnyGroupActivity.CodingKeys.init(rawValue:), v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t objectdestroyTm_0()
{
  v1 = v0;
  v2 = type metadata accessor for AnyGroupActivity(0);
  v3 = *(*(v2 - 1) + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(*(v2 - 1) + 64);
  v6 = v0 + v4;
  v7 = *(v0 + v4 + 8);

  v8 = (v0 + v4 + v2[5]);
  type metadata accessor for AnyGroupActivity.MetadataProvider(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = *v8;
  }

  else
  {
    v26 = v5;
    v27 = v0;
    v10 = type metadata accessor for GroupActivityDescription();
    (*(*(v10 - 8) + 8))(v8, v10);
    v11 = type metadata accessor for GroupActivityMetadata(0);
    v12 = *&v8[v11[5] + 8];

    v13 = *&v8[v11[6] + 8];

    v14 = v11[8];
    v15 = type metadata accessor for URL();
    v16 = *(v15 - 8);
    v17 = *(v16 + 48);
    if (!v17(&v8[v14], 1, v15))
    {
      (*(v16 + 8))(&v8[v14], v15);
    }

    v18 = v11[11];
    if (!v17(&v8[v18], 1, v15))
    {
      (*(v16 + 8))(&v8[v18], v15);
    }

    v19 = &v8[v11[12]];
    v20 = *(v19 + 2);

    v21 = *(v19 + 4);

    v4 = (v3 + 16) & ~v3;
    v1 = v27;
    v5 = v26;
  }

  outlined consume of Data._Representation(*(v6 + v2[6]), *(v6 + v2[6] + 8));
  v22 = v2[7];
  v23 = type metadata accessor for UUID();
  (*(*(v23 - 8) + 8))(v6 + v22, v23);
  v24 = *(v6 + v2[8] + 8);

  return MEMORY[0x1EEE6BDD0](v1, v4 + v5, v3 | 7);
}

uint64_t partial apply for closure #1 in AnyGroupActivity.tuConversationActivity.getter(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for AnyGroupActivity(0) - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2, v7);
}

uint64_t partial apply for closure #1 in closure #1 in AnyGroupActivity.tuConversationActivity<A>(as:)(void **a1)
{
  v3 = *(v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v4 = *(*(type metadata accessor for CheckedContinuation() - 8) + 80);
  v5 = *(v1 + 24);

  return closure #1 in closure #1 in AnyGroupActivity.tuConversationActivity<A>(as:)(a1);
}

uint64_t partial apply for closure #2 in closure #1 in AnyGroupActivity.tuConversationActivity<A>(as:)(id *a1)
{
  v3 = *(v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v4 = *(*(type metadata accessor for CheckedContinuation() - 8) + 80);

  return closure #2 in closure #1 in AnyGroupActivity.tuConversationActivity<A>(as:)(a1);
}

unint64_t type metadata accessor for TUConversationActivity()
{
  result = lazy cache variable for type metadata for TUConversationActivity;
  if (!lazy cache variable for type metadata for TUConversationActivity)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for TUConversationActivity);
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in AnyGroupActivity.metadata.getter(uint64_t a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy15GroupActivities0A16ActivityMetadataVs5NeverOGMd, &_sScCy15GroupActivities0A16ActivityMetadataVs5NeverOGMR) - 8) + 80);

  return closure #1 in closure #1 in AnyGroupActivity.metadata.getter(a1);
}

uint64_t lazy protocol witness table accessor for type Future<TUConversationActivity, Error> and conformance Future<A, B>(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Result<TUConversationActivity, Error>) -> ()(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = a1;
  v7 = a2 & 1;
  return v3(&v6);
}

void partial apply for closure #1 in closure #1 in AnyGroupActivity.tuConversationActivity.getter(uint64_t a1)
{
  v3 = *(type metadata accessor for AnyGroupActivity(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);

  closure #1 in closure #1 in AnyGroupActivity.tuConversationActivity.getter(a1, (v1 + v4), v6);
}

uint64_t partial apply for specialized closure #1 in closure #1 in GroupActivity.awaitMetadataValue()(uint64_t a1)
{
  v4 = *(type metadata accessor for AnyGroupActivity(0) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = protocol witness for AnyTransportSession.removeAttachment(id:) in conformance GroupSession<A>;

  return specialized closure #1 in closure #1 in GroupActivity.awaitMetadataValue()(a1, v6, v7, v8, v9);
}

uint64_t PresenceGroupSessionProviderObserver.groupSessionService.getter()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v2 = *(v0 + 24);
  return result;
}

uint64_t PresenceGroupSessionProviderObserver.groupSessionService.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*PresenceGroupSessionProviderObserver.groupSessionService.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return PresenceGroupSessionProviderObserver.groupSessionService.modify;
}

void PresenceGroupSessionProviderObserver.groupSessionService.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + 24) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t PresenceGroupSessionProviderObserver.provider.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return swift_unknownObjectRetain();
}

uint64_t PresenceGroupSessionProviderObserver.cancellables.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 56);
}

uint64_t PresenceGroupSessionProviderObserver.cancellables.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 56);
  *(v1 + 56) = a1;
}

void *PresenceGroupSessionProviderObserver.__allocating_init(provider:groupSessionService:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[3] = 0;
  swift_unknownObjectWeakInit();
  v8[7] = MEMORY[0x1E69E7CD0];
  v8[4] = a1;
  v8[5] = a2;
  swift_beginAccess();
  v8[3] = a4;
  swift_unknownObjectWeakAssign();
  v9 = type metadata accessor for PresenceSession(0);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  v12 = swift_allocObject();
  ObjectType = swift_getObjectType();
  v14 = swift_unknownObjectRetain();
  v15 = specialized PresenceSession.init(provider:serviceProvider:)(v14, a2, a3, v12, ObjectType, a4);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v8[6] = v15;
  return v8;
}

void *PresenceGroupSessionProviderObserver.init(provider:groupSessionService:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = 0;
  swift_unknownObjectWeakInit();
  v4[7] = MEMORY[0x1E69E7CD0];
  v4[4] = a1;
  v4[5] = a2;
  swift_beginAccess();
  v4[3] = a4;
  swift_unknownObjectWeakAssign();
  v9 = type metadata accessor for PresenceSession(0);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  v12 = swift_allocObject();
  ObjectType = swift_getObjectType();
  v14 = swift_unknownObjectRetain();
  v15 = specialized PresenceSession.init(provider:serviceProvider:)(v14, a2, a3, v12, ObjectType, a4);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v4[6] = v15;
  return v4;
}

uint64_t PresenceGroupSessionProviderObserver.join()()
{
  v1[14] = v0;
  v1[15] = *v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v1[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](PresenceGroupSessionProviderObserver.join(), 0, 0);
}

{
  v35 = v0;
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  v32 = *(*v3 + 152);
  v4 = v32(v0 + 2);
  v6 = v5;
  v7 = *v5;

  *v6 = MEMORY[0x1E69E7CD0];
  v4(v0 + 2, 0);
  v8 = type metadata accessor for TaskPriority();
  v30 = *(*(v8 - 8) + 56);
  v9 = v30(v1, 1, 1, v8);
  v10 = v3[6];
  v11 = (*(*v10 + 272))(v9);
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v11;
  v13[5] = v12;
  v13[6] = v2;
  v0[17] = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v1, &async function pointer to partial apply for closure #1 in PresenceGroupSessionProviderObserver.join(), v13);
  v14 = type metadata accessor for AnyCancellable();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();

  v17 = AnyCancellable.init(_:)();
  v18 = v32(v0 + 6);
  specialized Set._Variant.insert(_:)(&v34, v17);

  v18(v0 + 6, 0);
  v19 = v30(v1, 1, 1, v8);
  v20 = (*(*v10 + 184))(v19);
  v21 = swift_allocObject();
  swift_weakInit();
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = v20;
  v22[5] = v21;
  v0[18] = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v1, &async function pointer to partial apply for closure #3 in PresenceGroupSessionProviderObserver.join(), v22);
  v23 = *(v14 + 48);
  v24 = *(v14 + 52);
  swift_allocObject();

  v25 = AnyCancellable.init(_:)();
  v26 = v32(v0 + 10);
  specialized Set._Variant.insert(_:)(&v34, v25);

  v26(v0 + 10, 0);
  v31 = (*v10 + 360);
  v33 = (*v31 + **v31);
  v27 = (*v31)[1];
  v28 = swift_task_alloc();
  v0[19] = v28;
  *v28 = v0;
  v28[1] = PresenceGroupSessionProviderObserver.join();

  return v33();
}

{
  v2 = *(*v1 + 152);
  v5 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = PresenceGroupSessionProviderObserver.join();
  }

  else
  {
    v3 = PresenceGroupSessionProviderObserver.join();
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];

  v4 = v0[1];

  return v4();
}

{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];

  v4 = v0[1];
  v5 = v0[20];

  return v4();
}

uint64_t closure #1 in PresenceGroupSessionProviderObserver.join()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[70] = a5;
  v5[69] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA19CurrentValueSubjectCy15GroupActivities19PresenceSessionInfoVs5NeverOGGMd, &_s7Combine14AsyncPublisherVyAA19CurrentValueSubjectCy15GroupActivities19PresenceSessionInfoVs5NeverOGGMR);
  v5[71] = v6;
  v7 = *(v6 - 8);
  v5[72] = v7;
  v8 = *(v7 + 64) + 15;
  v5[73] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCy15GroupActivities19PresenceSessionInfoVs5NeverOG_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCy15GroupActivities19PresenceSessionInfoVs5NeverOG_GMR);
  v5[74] = v9;
  v10 = *(v9 - 8);
  v5[75] = v10;
  v11 = *(v10 + 64) + 15;
  v5[76] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in PresenceGroupSessionProviderObserver.join(), 0, 0);
}

uint64_t closure #1 in PresenceGroupSessionProviderObserver.join()()
{
  v1 = v0[76];
  v2 = v0[73];
  v3 = v0[72];
  v4 = v0[71];
  v5 = v0[70];
  v0[58] = v0[69];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy15GroupActivities19PresenceSessionInfoVs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy15GroupActivities19PresenceSessionInfoVs5NeverOGMR);
  v7 = lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type CurrentValueSubject<PresenceSessionInfo, Never> and conformance CurrentValueSubject<A, B>, &_s7Combine19CurrentValueSubjectCy15GroupActivities19PresenceSessionInfoVs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy15GroupActivities19PresenceSessionInfoVs5NeverOGMR);
  MEMORY[0x1B2713ED0](v6, v7);
  AsyncPublisher.makeAsyncIterator()();
  (*(v3 + 8))(v2, v4);
  swift_beginAccess();
  v8 = lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AsyncPublisher<CurrentValueSubject<PresenceSessionInfo, Never>>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCy15GroupActivities19PresenceSessionInfoVs5NeverOG_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCy15GroupActivities19PresenceSessionInfoVs5NeverOG_GMR);
  v9 = *(MEMORY[0x1E69E85A8] + 4);
  v10 = swift_task_alloc();
  v0[77] = v10;
  *v10 = v0;
  v10[1] = closure #1 in PresenceGroupSessionProviderObserver.join();
  v11 = v0[76];
  v12 = v0[74];

  return MEMORY[0x1EEE6D8C8](v0 + 62, v12, v8);
}

{
  v2 = *(*v1 + 616);
  v5 = *v1;
  *(*v1 + 624) = v0;

  if (v0)
  {
    v3 = closure #1 in PresenceGroupSessionProviderObserver.join();
  }

  else
  {
    v3 = closure #1 in PresenceGroupSessionProviderObserver.join();
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  return MEMORY[0x1EEE6DFA0](closure #1 in PresenceGroupSessionProviderObserver.join(), 0, 0);
}

{
  v50 = v0;
  v1 = *(v0 + 496);
  if (v1)
  {
    v2 = *(v0 + 560);
    Strong = swift_weakLoadStrong();
    *(v0 + 632) = Strong;
    if (Strong)
    {
      v4 = Strong;
      v5 = *(v0 + 624);
      v6 = *(Strong + 32);
      v7 = *(Strong + 40);
      ObjectType = swift_getObjectType();
      (*(v7 + 16))(ObjectType, v7);
      *(v0 + 488) = v1;
      CurrentValueSubject.send(_:)();

      specialized Collection.prefix(_:)(33, v1, v0 + 72);

      if (specialized Sequence.contains(where:)(v0 + 72) & 1) != 0 && (specialized Sequence.contains(where:)(v0 + 72))
      {
        v9 = (*(*v4 + 112))();
        *(v0 + 640) = v9;
        if (v9)
        {
          v11 = v10;
          v12 = swift_getObjectType();
          v13 = v4[4];
          *(v0 + 648) = v13;
          v14 = *(v4[5] + 8);
          v15 = *(v11 + 16);
          swift_unknownObjectRetain();
          v48 = (v15 + *v15);
          v16 = v15[1];
          v17 = swift_task_alloc();
          *(v0 + 656) = v17;
          *v17 = v0;
          v17[1] = closure #1 in PresenceGroupSessionProviderObserver.join();

          return v48(v13, v14, v12, v11);
        }

        *(v0 + 344) = *(v0 + 72);
        *(v0 + 360) = *(v0 + 88);
        outlined destroy of NSObject?(v0 + 344, &_sSh5IndexVy15GroupActivities19PresenceSessionInfoV11ParticipantV_GMd, &_sSh5IndexVy15GroupActivities19PresenceSessionInfoV11ParticipantV_GMR);
        *(v0 + 368) = *(v0 + 96);
        *(v0 + 384) = *(v0 + 112);
        outlined destroy of NSObject?(v0 + 368, &_sSh5IndexVy15GroupActivities19PresenceSessionInfoV11ParticipantV_GMd, &_sSh5IndexVy15GroupActivities19PresenceSessionInfoV11ParticipantV_GMR);
        *(v0 + 504) = *(v0 + 120);
        outlined destroy of NSObject?(v0 + 504, &_sShy15GroupActivities19PresenceSessionInfoV11ParticipantVGMd, &_sShy15GroupActivities19PresenceSessionInfoV11ParticipantVGMR);
      }

      else
      {
        if (one-time initialization token for groupSessionProviderObserver != -1)
        {
          swift_once();
        }

        v30 = type metadata accessor for Logger();
        __swift_project_value_buffer(v30, static Log.groupSessionProviderObserver);
        *(v0 + 416) = *(v0 + 72);
        *(v0 + 432) = *(v0 + 88);
        *(v0 + 176) = *(v0 + 96);
        *(v0 + 192) = *(v0 + 112);
        *(v0 + 536) = *(v0 + 120);
        outlined init with copy of URL?(v0 + 416, v0 + 440, &_sSh5IndexVy15GroupActivities19PresenceSessionInfoV11ParticipantV_GMd, &_sSh5IndexVy15GroupActivities19PresenceSessionInfoV11ParticipantV_GMR);
        outlined init with copy of URL?(v0 + 176, v0 + 392, &_sSh5IndexVy15GroupActivities19PresenceSessionInfoV11ParticipantV_GMd, &_sSh5IndexVy15GroupActivities19PresenceSessionInfoV11ParticipantV_GMR);
        outlined init with copy of URL?(v0 + 536, v0 + 512, &_sShy15GroupActivities19PresenceSessionInfoV11ParticipantVGMd, &_sShy15GroupActivities19PresenceSessionInfoV11ParticipantVGMR);
        v31 = Logger.logObject.getter();
        v32 = static os_log_type_t.default.getter();
        outlined destroy of NSObject?(v0 + 416, &_sSh5IndexVy15GroupActivities19PresenceSessionInfoV11ParticipantV_GMd, &_sSh5IndexVy15GroupActivities19PresenceSessionInfoV11ParticipantV_GMR);
        outlined destroy of NSObject?(v0 + 176, &_sSh5IndexVy15GroupActivities19PresenceSessionInfoV11ParticipantV_GMd, &_sSh5IndexVy15GroupActivities19PresenceSessionInfoV11ParticipantV_GMR);
        outlined destroy of NSObject?(v0 + 536, &_sShy15GroupActivities19PresenceSessionInfoV11ParticipantVGMd, &_sShy15GroupActivities19PresenceSessionInfoV11ParticipantVGMR);
        if (!os_log_type_enabled(v31, v32))
        {

          outlined destroy of NSObject?(v0 + 416, &_sSh5IndexVy15GroupActivities19PresenceSessionInfoV11ParticipantV_GMd, &_sSh5IndexVy15GroupActivities19PresenceSessionInfoV11ParticipantV_GMR);
          outlined destroy of NSObject?(v0 + 176, &_sSh5IndexVy15GroupActivities19PresenceSessionInfoV11ParticipantV_GMd, &_sSh5IndexVy15GroupActivities19PresenceSessionInfoV11ParticipantV_GMR);
          outlined destroy of NSObject?(v0 + 536, &_sShy15GroupActivities19PresenceSessionInfoV11ParticipantVGMd, &_sShy15GroupActivities19PresenceSessionInfoV11ParticipantVGMR);
          goto LABEL_21;
        }

        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v49[0] = v34;
        *v33 = 136315138;
        v35 = *(v0 + 88);
        *(v0 + 16) = *(v0 + 72);
        *(v0 + 32) = v35;
        *(v0 + 48) = *(v0 + 104);
        *(v0 + 64) = *(v0 + 120);
        outlined init with copy of URL?(v0 + 416, v0 + 272, &_sSh5IndexVy15GroupActivities19PresenceSessionInfoV11ParticipantV_GMd, &_sSh5IndexVy15GroupActivities19PresenceSessionInfoV11ParticipantV_GMR);
        outlined init with copy of URL?(v0 + 176, v0 + 200, &_sSh5IndexVy15GroupActivities19PresenceSessionInfoV11ParticipantV_GMd, &_sSh5IndexVy15GroupActivities19PresenceSessionInfoV11ParticipantV_GMR);
        outlined init with copy of URL?(v0 + 536, v0 + 544, &_sShy15GroupActivities19PresenceSessionInfoV11ParticipantVGMd, &_sShy15GroupActivities19PresenceSessionInfoV11ParticipantVGMR);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SliceVyShy15GroupActivities19PresenceSessionInfoV11ParticipantVGGMd, &_ss5SliceVyShy15GroupActivities19PresenceSessionInfoV11ParticipantVGGMR);
        v36 = String.init<A>(reflecting:)();
        v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, v49);

        *(v33 + 4) = v38;
        _os_log_impl(&dword_1AEE80000, v31, v32, "Not setting up IDSGroupSession since we don't have >1 other device %s", v33, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v34);
        MEMORY[0x1B2715BA0](v34, -1, -1);
        MEMORY[0x1B2715BA0](v33, -1, -1);
        outlined destroy of NSObject?(v0 + 416, &_sSh5IndexVy15GroupActivities19PresenceSessionInfoV11ParticipantV_GMd, &_sSh5IndexVy15GroupActivities19PresenceSessionInfoV11ParticipantV_GMR);
        outlined destroy of NSObject?(v0 + 176, &_sSh5IndexVy15GroupActivities19PresenceSessionInfoV11ParticipantV_GMd, &_sSh5IndexVy15GroupActivities19PresenceSessionInfoV11ParticipantV_GMR);
        outlined destroy of NSObject?(v0 + 536, &_sShy15GroupActivities19PresenceSessionInfoV11ParticipantVGMd, &_sShy15GroupActivities19PresenceSessionInfoV11ParticipantVGMR);
      }

LABEL_21:
      v39 = lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AsyncPublisher<CurrentValueSubject<PresenceSessionInfo, Never>>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCy15GroupActivities19PresenceSessionInfoVs5NeverOG_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCy15GroupActivities19PresenceSessionInfoVs5NeverOG_GMR);
      v40 = *(MEMORY[0x1E69E85A8] + 4);
      v41 = swift_task_alloc();
      *(v0 + 616) = v41;
      *v41 = v0;
      v41[1] = closure #1 in PresenceGroupSessionProviderObserver.join();
      v42 = *(v0 + 608);
      v43 = *(v0 + 592);

      return MEMORY[0x1EEE6D8C8](v0 + 496, v43, v39);
    }

    (*(*(v0 + 600) + 8))(*(v0 + 608), *(v0 + 592));
  }

  else
  {
    (*(*(v0 + 600) + 8))(*(v0 + 608), *(v0 + 592));
    if (one-time initialization token for groupSessionProviderObserver != -1)
    {
      swift_once();
    }

    v19 = *(v0 + 560);
    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Log.groupSessionProviderObserver);

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = *(v0 + 560);
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v49[0] = v25;
      *v24 = 136315138;
      swift_beginAccess();
      v26 = swift_weakLoadStrong();
      if (v26)
      {
        *(v0 + 480) = v26;
        type metadata accessor for PresenceGroupSessionProviderObserver();
        v27 = String.init<A>(reflecting:)();
        v29 = v28;
      }

      else
      {
        v29 = 0xE300000000000000;
        v27 = 7104878;
      }

      v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, v49);

      *(v24 + 4) = v44;
      _os_log_impl(&dword_1AEE80000, v21, v22, "%s PresenceSession's sessionInfo publisher has finished", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x1B2715BA0](v25, -1, -1);
      MEMORY[0x1B2715BA0](v24, -1, -1);
    }
  }

  v45 = *(v0 + 608);
  v46 = *(v0 + 584);

  v47 = *(v0 + 8);

  return v47();
}

{
  *(v0 + 472) = *(v0 + 624);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

{
  v2 = *v1;
  v3 = *(*v1 + 656);
  v4 = *v1;
  *(*v1 + 664) = v0;

  v5 = *(v2 + 648);
  v6 = *(v2 + 640);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (v0)
  {
    v7 = closure #1 in PresenceGroupSessionProviderObserver.join();
  }

  else
  {
    v7 = closure #1 in PresenceGroupSessionProviderObserver.join();
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

{
  v1 = *(v0 + 632);
  *(v0 + 296) = *(v0 + 72);
  *(v0 + 312) = *(v0 + 88);
  outlined destroy of NSObject?(v0 + 296, &_sSh5IndexVy15GroupActivities19PresenceSessionInfoV11ParticipantV_GMd, &_sSh5IndexVy15GroupActivities19PresenceSessionInfoV11ParticipantV_GMR);
  *(v0 + 320) = *(v0 + 96);
  *(v0 + 336) = *(v0 + 112);
  outlined destroy of NSObject?(v0 + 320, &_sSh5IndexVy15GroupActivities19PresenceSessionInfoV11ParticipantV_GMd, &_sSh5IndexVy15GroupActivities19PresenceSessionInfoV11ParticipantV_GMR);
  *(v0 + 520) = *(v0 + 120);
  outlined destroy of NSObject?(v0 + 520, &_sShy15GroupActivities19PresenceSessionInfoV11ParticipantVGMd, &_sShy15GroupActivities19PresenceSessionInfoV11ParticipantVGMR);

  v2 = lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AsyncPublisher<CurrentValueSubject<PresenceSessionInfo, Never>>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCy15GroupActivities19PresenceSessionInfoVs5NeverOG_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCy15GroupActivities19PresenceSessionInfoVs5NeverOG_GMR);
  v3 = *(MEMORY[0x1E69E85A8] + 4);
  v4 = swift_task_alloc();
  *(v0 + 616) = v4;
  *v4 = v0;
  v4[1] = closure #1 in PresenceGroupSessionProviderObserver.join();
  v5 = *(v0 + 608);
  v6 = *(v0 + 592);

  return MEMORY[0x1EEE6D8C8](v0 + 496, v6, v2);
}

{
  v1 = *(v0 + 632);
  v2 = *(v0 + 608);
  v3 = *(v0 + 600);
  v4 = *(v0 + 592);
  v5 = *(v0 + 584);

  *(v0 + 224) = *(v0 + 72);
  *(v0 + 240) = *(v0 + 88);
  outlined destroy of NSObject?(v0 + 224, &_sSh5IndexVy15GroupActivities19PresenceSessionInfoV11ParticipantV_GMd, &_sSh5IndexVy15GroupActivities19PresenceSessionInfoV11ParticipantV_GMR);
  *(v0 + 248) = *(v0 + 96);
  *(v0 + 264) = *(v0 + 112);
  outlined destroy of NSObject?(v0 + 248, &_sSh5IndexVy15GroupActivities19PresenceSessionInfoV11ParticipantV_GMd, &_sSh5IndexVy15GroupActivities19PresenceSessionInfoV11ParticipantV_GMR);
  *(v0 + 528) = *(v0 + 120);
  outlined destroy of NSObject?(v0 + 528, &_sShy15GroupActivities19PresenceSessionInfoV11ParticipantVGMd, &_sShy15GroupActivities19PresenceSessionInfoV11ParticipantVGMR);
  (*(v3 + 8))(v2, v4);

  v6 = *(v0 + 8);
  v7 = *(v0 + 664);

  return v6();
}

uint64_t specialized Sequence.contains(where:)(uint64_t a1)
{
  v45 = type metadata accessor for PresenceSessionInfo.Participant(0);
  v2 = *(v45 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v40 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities19PresenceSessionInfoV11ParticipantVSgMd, &_s15GroupActivities19PresenceSessionInfoV11ParticipantVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v49 = &v34 - v7;
  v9 = *a1;
  v8 = *(a1 + 8);
  v10 = *(a1 + 16);
  v53 = *(a1 + 24);
  v54 = *(a1 + 40);
  v12 = *(&v53 + 1);
  v11 = v53;
  v37 = v53;
  v13 = v54;
  v55 = *(a1 + 48);
  v14 = v55;
  v52 = v10;
  v15 = *(a1 + 32);
  v35 = *(a1 + 24);
  v34 = v15;
  v51 = v54;
  outlined copy of Set<A>.Index._Variant<A>(v9, v8, v10);
  outlined copy of Set<A>.Index._Variant<A>(v9, v8, v10);
  outlined init with copy of URL?(&v53, v50, &_sSh5IndexVy15GroupActivities19PresenceSessionInfoV11ParticipantV_GMd, &_sSh5IndexVy15GroupActivities19PresenceSessionInfoV11ParticipantV_GMR);
  result = outlined init with copy of URL?(&v55, v50, &_sShy15GroupActivities19PresenceSessionInfoV11ParticipantVGMd, &_sShy15GroupActivities19PresenceSessionInfoV11ParticipantVGMR);
  v41 = v2;
  v42 = v14 + 56;
  v44 = (v2 + 56);
  v43 = v10;
  v39 = v13;
  v17 = v10 | v13;
  v36 = v14 + 64;
  v46 = v8;
  v47 = v9;
  v38 = v12;
  while (1)
  {
    if (v17)
    {
      goto LABEL_31;
    }

    if (v8 != v12)
    {
      break;
    }

    v20 = v9;
    if (v9 == v11)
    {
      v50[0] = 0;
      (*v44)(v49, 1, 1, v45);
      v31 = v50[0];
      v9 = v37;
LABEL_23:
      v32 = v20 != v11;
      v33 = v51;
      outlined consume of Set<TUHandle>.Index._Variant(v47, v46, v52);
      outlined consume of Set<TUHandle>.Index._Variant(v35, v34, v33);

      outlined consume of Set<TUHandle>.Index._Variant(v9, v8, v31);
      return v32;
    }

    if (v43)
    {
      goto LABEL_32;
    }

    if (v9 < v47)
    {
      goto LABEL_25;
    }

    if (v12 != v46)
    {
      goto LABEL_26;
    }

    if (v9 >= v11)
    {
      goto LABEL_27;
    }

    if (v9 < 0)
    {
      goto LABEL_28;
    }

    v9 = 1 << *(v14 + 32);
    if (v20 >= v9)
    {
      goto LABEL_28;
    }

    v21 = v20 >> 6;
    v22 = *(v42 + 8 * (v20 >> 6));
    if (((v22 >> v20) & 1) == 0)
    {
      goto LABEL_29;
    }

    if (*(v14 + 36) != v12)
    {
      goto LABEL_30;
    }

    v48 = v8;
    v12 = v14;
    v23 = *(v14 + 48);
    v24 = v40;
    outlined init with copy of PresenceSessionInfo.Participant(v23 + *(v41 + 72) * v20, v40, type metadata accessor for PresenceSessionInfo.Participant);
    outlined init with take of PresenceSessionInfo.Participant(v24, v49, type metadata accessor for PresenceSessionInfo.Participant);
    if ((v22 & (-2 << (v20 & 0x3F))) != 0)
    {
      v9 = __clz(__rbit64(v22 & (-2 << (v20 & 0x3F)))) | v20 & 0x7FFFFFFFFFFFFFC0;
      v14 = v12;
      LODWORD(v12) = v38;
    }

    else
    {
      v25 = v21 << 6;
      v26 = v21 + 1;
      v27 = (v36 + 8 * v21);
      v14 = v12;
      LODWORD(v12) = v38;
      v28 = v48;
      while (v26 < (v9 + 63) >> 6)
      {
        v30 = *v27++;
        v29 = v30;
        v25 += 64;
        ++v26;
        if (v30)
        {
          outlined copy of Set<A>.Index._Variant<A>(v37, v38, 0);
          outlined consume of Set<TUHandle>.Index._Variant(v20, v28, 0);
          v9 = __clz(__rbit64(v29)) + v25;
          goto LABEL_3;
        }
      }

      outlined copy of Set<A>.Index._Variant<A>(v37, v38, 0);
      outlined consume of Set<TUHandle>.Index._Variant(v20, v28, 0);
    }

LABEL_3:
    v8 = *(v14 + 36);
    v18 = v45;
    v19 = v49;
    (*v44)(v49, 0, 1, v45);
    LOBYTE(v18) = *(v19 + *(v18 + 24));
    result = outlined destroy of PresenceSessionInfo.Participant(v19, type metadata accessor for PresenceSessionInfo.Participant);
    v17 = v39;
    if (v18)
    {
      v31 = 0;
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

{
  v45 = type metadata accessor for PresenceSessionInfo.Participant(0);
  v2 = *(v45 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v40 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities19PresenceSessionInfoV11ParticipantVSgMd, &_s15GroupActivities19PresenceSessionInfoV11ParticipantVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v49 = &v34 - v7;
  v9 = *a1;
  v8 = *(a1 + 8);
  v10 = *(a1 + 16);
  v53 = *(a1 + 24);
  v54 = *(a1 + 40);
  v12 = *(&v53 + 1);
  v11 = v53;
  v37 = v53;
  v13 = v54;
  v55 = *(a1 + 48);
  v14 = v55;
  v52 = v10;
  v15 = *(a1 + 32);
  v35 = *(a1 + 24);
  v34 = v15;
  v51 = v54;
  outlined copy of Set<A>.Index._Variant<A>(v9, v8, v10);
  outlined copy of Set<A>.Index._Variant<A>(v9, v8, v10);
  outlined init with copy of URL?(&v53, v50, &_sSh5IndexVy15GroupActivities19PresenceSessionInfoV11ParticipantV_GMd, &_sSh5IndexVy15GroupActivities19PresenceSessionInfoV11ParticipantV_GMR);
  result = outlined init with copy of URL?(&v55, v50, &_sShy15GroupActivities19PresenceSessionInfoV11ParticipantVGMd, &_sShy15GroupActivities19PresenceSessionInfoV11ParticipantVGMR);
  v41 = v2;
  v42 = v14 + 56;
  v44 = (v2 + 56);
  v43 = v10;
  v39 = v13;
  v17 = v10 | v13;
  v36 = v14 + 64;
  v46 = v8;
  v47 = v9;
  v38 = v12;
  while (1)
  {
    if (v17)
    {
      goto LABEL_31;
    }

    if (v8 != v12)
    {
      break;
    }

    v20 = v9;
    if (v9 == v11)
    {
      v50[0] = 0;
      (*v44)(v49, 1, 1, v45);
      v31 = v50[0];
      v9 = v37;
LABEL_23:
      v32 = v20 != v11;
      v33 = v51;
      outlined consume of Set<TUHandle>.Index._Variant(v47, v46, v52);
      outlined consume of Set<TUHandle>.Index._Variant(v35, v34, v33);

      outlined consume of Set<TUHandle>.Index._Variant(v9, v8, v31);
      return v32;
    }

    if (v43)
    {
      goto LABEL_32;
    }

    if (v9 < v47)
    {
      goto LABEL_25;
    }

    if (v12 != v46)
    {
      goto LABEL_26;
    }

    if (v9 >= v11)
    {
      goto LABEL_27;
    }

    if (v9 < 0)
    {
      goto LABEL_28;
    }

    v9 = 1 << *(v14 + 32);
    if (v20 >= v9)
    {
      goto LABEL_28;
    }

    v21 = v20 >> 6;
    v22 = *(v42 + 8 * (v20 >> 6));
    if (((v22 >> v20) & 1) == 0)
    {
      goto LABEL_29;
    }

    if (*(v14 + 36) != v12)
    {
      goto LABEL_30;
    }

    v48 = v8;
    v12 = v14;
    v23 = *(v14 + 48);
    v24 = v40;
    outlined init with copy of PresenceSessionInfo.Participant(v23 + *(v41 + 72) * v20, v40, type metadata accessor for PresenceSessionInfo.Participant);
    outlined init with take of PresenceSessionInfo.Participant(v24, v49, type metadata accessor for PresenceSessionInfo.Participant);
    if ((v22 & (-2 << (v20 & 0x3F))) != 0)
    {
      v9 = __clz(__rbit64(v22 & (-2 << (v20 & 0x3F)))) | v20 & 0x7FFFFFFFFFFFFFC0;
      v14 = v12;
      LODWORD(v12) = v38;
    }

    else
    {
      v25 = v21 << 6;
      v26 = v21 + 1;
      v27 = (v36 + 8 * v21);
      v14 = v12;
      LODWORD(v12) = v38;
      v28 = v48;
      while (v26 < (v9 + 63) >> 6)
      {
        v30 = *v27++;
        v29 = v30;
        v25 += 64;
        ++v26;
        if (v30)
        {
          outlined copy of Set<A>.Index._Variant<A>(v37, v38, 0);
          outlined consume of Set<TUHandle>.Index._Variant(v20, v28, 0);
          v9 = __clz(__rbit64(v29)) + v25;
          goto LABEL_3;
        }
      }

      outlined copy of Set<A>.Index._Variant<A>(v37, v38, 0);
      outlined consume of Set<TUHandle>.Index._Variant(v20, v28, 0);
    }

LABEL_3:
    v8 = *(v14 + 36);
    v18 = v45;
    v19 = v49;
    (*v44)(v49, 0, 1, v45);
    LOBYTE(v18) = *(v19 + *(v18 + 24));
    result = outlined destroy of PresenceSessionInfo.Participant(v19, type metadata accessor for PresenceSessionInfo.Participant);
    v17 = v39;
    if ((v18 & 1) == 0)
    {
      v31 = 0;
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t closure #3 in PresenceGroupSessionProviderObserver.join()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v6 = type metadata accessor for UUID();
  v5[14] = v6;
  v7 = *(v6 - 8);
  v5[15] = v7;
  v8 = *(v7 + 64) + 15;
  v5[16] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA19CurrentValueSubjectCy15GroupActivities15PresenceSessionC5StateOs5NeverOGGMd, &_s7Combine14AsyncPublisherVyAA19CurrentValueSubjectCy15GroupActivities15PresenceSessionC5StateOs5NeverOGGMR);
  v5[17] = v9;
  v10 = *(v9 - 8);
  v5[18] = v10;
  v11 = *(v10 + 64) + 15;
  v5[19] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCy15GroupActivities15PresenceSessionC5StateOs5NeverOG_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCy15GroupActivities15PresenceSessionC5StateOs5NeverOG_GMR);
  v5[20] = v12;
  v13 = *(v12 - 8);
  v5[21] = v13;
  v14 = *(v13 + 64) + 15;
  v5[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #3 in PresenceGroupSessionProviderObserver.join(), 0, 0);
}

uint64_t closure #3 in PresenceGroupSessionProviderObserver.join()()
{
  v1 = v0[22];
  v3 = v0[18];
  v2 = v0[19];
  v4 = v0[17];
  v5 = v0[13];
  v0[8] = v0[12];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy15GroupActivities15PresenceSessionC5StateOs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy15GroupActivities15PresenceSessionC5StateOs5NeverOGMR);
  v7 = lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type CurrentValueSubject<PresenceSession.State, Never> and conformance CurrentValueSubject<A, B>, &_s7Combine19CurrentValueSubjectCy15GroupActivities15PresenceSessionC5StateOs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy15GroupActivities15PresenceSessionC5StateOs5NeverOGMR);
  MEMORY[0x1B2713ED0](v6, v7);
  AsyncPublisher.makeAsyncIterator()();
  (*(v3 + 8))(v2, v4);
  swift_beginAccess();
  v8 = lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AsyncPublisher<CurrentValueSubject<PresenceSession.State, Never>>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCy15GroupActivities15PresenceSessionC5StateOs5NeverOG_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCy15GroupActivities15PresenceSessionC5StateOs5NeverOG_GMR);
  v9 = *(MEMORY[0x1E69E85A8] + 4);
  v10 = swift_task_alloc();
  v0[23] = v10;
  *v10 = v0;
  v10[1] = closure #3 in PresenceGroupSessionProviderObserver.join();
  v11 = v0[22];
  v12 = v0[20];

  return MEMORY[0x1EEE6D8C8](v0 + 29, v12, v8);
}

{
  v2 = *(*v1 + 184);
  v5 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = closure #3 in PresenceGroupSessionProviderObserver.join();
  }

  else
  {
    v3 = closure #3 in PresenceGroupSessionProviderObserver.join();
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  *(v0 + 234) = *(v0 + 232);
  return MEMORY[0x1EEE6DFA0](closure #3 in PresenceGroupSessionProviderObserver.join(), 0, 0);
}

{
  v52 = v0;
  if (*(v0 + 234) == 3)
  {
    (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));
    if (one-time initialization token for groupSessionProviderObserver != -1)
    {
      swift_once();
    }

    v1 = *(v0 + 104);
    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Log.groupSessionProviderObserver);

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = *(v0 + 104);
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v51 = v7;
      *v6 = 136315138;
      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        *(v0 + 80) = Strong;
        type metadata accessor for PresenceGroupSessionProviderObserver();
        v9 = String.init<A>(reflecting:)();
        v11 = v10;
      }

      else
      {
        v11 = 0xE300000000000000;
        v9 = 7104878;
      }

      v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v11, &v51);

      *(v6 + 4) = v45;
      _os_log_impl(&dword_1AEE80000, v3, v4, "%s PresenceSession's state publisher has finished", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x1B2715BA0](v7, -1, -1);
      MEMORY[0x1B2715BA0](v6, -1, -1);
    }

    goto LABEL_24;
  }

  v12 = *(v0 + 104);
  v13 = swift_weakLoadStrong();
  *(v0 + 200) = v13;
  if (!v13)
  {
    (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));
LABEL_24:
    v46 = *(v0 + 176);
    v47 = *(v0 + 152);
    v48 = *(v0 + 128);

    v49 = *(v0 + 8);

    return v49();
  }

  v14 = v13;
  if (one-time initialization token for groupSessionProviderObserver != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Log.groupSessionProviderObserver);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = *(v0 + 234);
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v51 = v20;
    *v19 = 136315394;
    *(v0 + 88) = v14;
    type metadata accessor for PresenceGroupSessionProviderObserver();

    v21 = String.init<A>(reflecting:)();
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v51);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2080;
    *(v0 + 233) = v18;
    v24 = String.init<A>(reflecting:)();
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v51);

    *(v19 + 14) = v26;
    _os_log_impl(&dword_1AEE80000, v16, v17, "%s observed state transition to: %s", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v20, -1, -1);
    MEMORY[0x1B2715BA0](v19, -1, -1);
  }

  if (*(v0 + 234) == 2 && (v27 = (*(*v14 + 112))(), (*(v0 + 208) = v27) != 0))
  {
    v29 = v28;
    v30 = *(v0 + 128);
    ObjectType = swift_getObjectType();
    v33 = v14[4];
    v32 = v14[5];
    v34 = swift_getObjectType();
    GroupSessionProvider.uuid.getter(v34, *(v32 + 8), v30);
    v35 = *(v29 + 32);
    v50 = (v35 + *v35);
    v36 = v35[1];
    v37 = swift_task_alloc();
    *(v0 + 216) = v37;
    *v37 = v0;
    v37[1] = closure #3 in PresenceGroupSessionProviderObserver.join();
    v38 = *(v0 + 128);

    return v50(v38, ObjectType, v29);
  }

  else
  {

    v40 = lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AsyncPublisher<CurrentValueSubject<PresenceSession.State, Never>>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCy15GroupActivities15PresenceSessionC5StateOs5NeverOG_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCy15GroupActivities15PresenceSessionC5StateOs5NeverOG_GMR);
    v41 = *(MEMORY[0x1E69E85A8] + 4);
    v42 = swift_task_alloc();
    *(v0 + 184) = v42;
    *v42 = v0;
    v42[1] = closure #3 in PresenceGroupSessionProviderObserver.join();
    v43 = *(v0 + 176);
    v44 = *(v0 + 160);

    return MEMORY[0x1EEE6D8C8](v0 + 232, v44, v40);
  }
}

{
  *(v0 + 72) = *(v0 + 192);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v4 = *v1;
  *(*v1 + 224) = v0;

  v5 = v2[26];
  v6 = v2[16];
  v7 = v2[15];
  v8 = v2[14];
  if (v0)
  {
    (*(v7 + 8))(v2[16], v2[14]);
    swift_unknownObjectRelease();
    v9 = closure #3 in PresenceGroupSessionProviderObserver.join();
  }

  else
  {
    v10 = v2[26];
    swift_unknownObjectRelease();
    (*(v7 + 8))(v6, v8);
    v9 = closure #3 in PresenceGroupSessionProviderObserver.join();
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

{
  v1 = v0[25];

  v2 = lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AsyncPublisher<CurrentValueSubject<PresenceSession.State, Never>>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCy15GroupActivities15PresenceSessionC5StateOs5NeverOG_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA19CurrentValueSubjectCy15GroupActivities15PresenceSessionC5StateOs5NeverOG_GMR);
  v3 = *(MEMORY[0x1E69E85A8] + 4);
  v4 = swift_task_alloc();
  v0[23] = v4;
  *v4 = v0;
  v4[1] = closure #3 in PresenceGroupSessionProviderObserver.join();
  v5 = v0[22];
  v6 = v0[20];

  return MEMORY[0x1EEE6D8C8](v0 + 29, v6, v2);
}

{
  v1 = v0[25];
  v3 = v0[21];
  v2 = v0[22];
  v5 = v0[19];
  v4 = v0[20];
  v6 = v0[16];

  (*(v3 + 8))(v2, v4);

  v7 = v0[1];
  v8 = v0[28];

  return v7();
}

uint64_t PresenceGroupSessionProviderObserver.leave()()
{
  *(v1 + 48) = v0;
  return MEMORY[0x1EEE6DFA0](PresenceGroupSessionProviderObserver.leave(), 0, 0);
}

{
  v1 = *(v0 + 48);
  v2 = ((*v1)[19])(v0 + 16);
  v4 = v3;
  v5 = *v3;

  *v4 = MEMORY[0x1E69E7CD0];
  v2(v0 + 16, 0);
  v9 = (*v1[6] + 368);
  v10 = (*v9 + **v9);
  v6 = (*v9)[1];
  v7 = swift_task_alloc();
  *(v0 + 56) = v7;
  *v7 = v0;
  v7[1] = PresenceGroupSessionProviderObserver.leave();

  return v10();
}

{
  v1 = *(*v0 + 56);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void *PresenceGroupSessionProviderObserver.deinit()
{
  outlined destroy of weak SystemCoordinatorHostDelegate?((v0 + 2));
  v1 = v0[4];
  swift_unknownObjectRelease();
  v2 = v0[6];

  v3 = v0[7];

  return v0;
}

uint64_t PresenceGroupSessionProviderObserver.__deallocating_deinit()
{
  outlined destroy of weak SystemCoordinatorHostDelegate?((v0 + 2));
  v1 = v0[4];
  swift_unknownObjectRelease();
  v2 = v0[6];

  v3 = v0[7];

  return swift_deallocClassInstance();
}

uint64_t specialized Set._Variant.insert(_:)(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = MEMORY[0x1B2715020](*(*v2 + 40));
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
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
    v10 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v13;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t specialized Set._Variant.insert(_:)(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CPParticipant, 0x1E6997710);
      swift_dynamicCast();
      result = 0;
      *a1 = v24;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v20 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfCSo13CPParticipantC_Tt1g5(v7, result + 1);
    v21 = *(v20 + 16);
    if (*(v20 + 24) <= v21)
    {
      specialized _NativeSet.resize(capacity:)(v21 + 1);
    }

    v19 = v8;
    specialized _NativeSet._unsafeInsertNew(_:)(v19, v20);

    *v3 = v20;
    goto LABEL_16;
  }

  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CPParticipant, 0x1E6997710);
  v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v3;
    v19 = a2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v19, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v25;
LABEL_16:
    *a1 = v19;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v22 = *(*(v6 + 48) + 8 * v13);
  *a1 = v22;
  v23 = v22;
  return 0;
}

{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
      swift_dynamicCast();
      result = 0;
      *a1 = v24;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v20 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfCSo8TUHandleC_Tt1g5(v7, result + 1);
    v21 = *(v20 + 16);
    if (*(v20 + 24) <= v21)
    {
      specialized _NativeSet.resize(capacity:)(v21 + 1);
    }

    v19 = v8;
    specialized _NativeSet._unsafeInsertNew(_:)(v19, v20);

    *v3 = v20;
    goto LABEL_16;
  }

  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
  v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v3;
    v19 = a2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v19, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v25;
LABEL_16:
    *a1 = v19;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v22 = *(*(v6 + 48) + 8 * v13);
  *a1 = v22;
  v23 = v22;
  return 0;
}

uint64_t specialized Set._Variant.insert(_:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = __CocoaSet.member(for:)();

    if (v8)
    {

      type metadata accessor for AnyCancellable();
      swift_dynamicCast();
      result = 0;
      *a1 = v21;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v18 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC7Combine14AnyCancellableC_Tt1g5(v7, result + 1);
    v19 = *(v18 + 16);
    if (*(v18 + 24) <= v19)
    {
      specialized _NativeSet.resize(capacity:)(v19 + 1);
    }

    specialized _NativeSet._unsafeInsertNew(_:)(v20, v18);

    *v3 = v18;
    goto LABEL_16;
  }

  type metadata accessor for AnyCancellable();
  v10 = *(v6 + 40);
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable, MEMORY[0x1E695BF10]);
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    v15 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v2;

    specialized _NativeSet.insertNew(_:at:isUnique:)(v17, v13, isUniquelyReferenced_nonNull_native);
    *v2 = v23;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v14 = ~v12;
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable, MEMORY[0x1E695BF10]);
  while (1)
  {
    v22 = *(*(v6 + 48) + 8 * v13);
    if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v13);

  return 0;
}

uint64_t specialized Set._Variant.insert(_:)(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  v36 = a2;
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

{
  v3 = v2;
  v6 = type metadata accessor for UTType();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UTType and conformance UTType, MEMORY[0x1E69E8450]);
  v36 = a2;
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UTType and conformance UTType, MEMORY[0x1E69E8450]);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t specialized Set._Variant.insert(_:)(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v9 = Hasher._finalize()();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t specialized Set._Variant.insert(_:)(uint64_t a1, uint64_t a2)
{
  v31 = a1;
  v4 = type metadata accessor for PresenceSessionInfo.Participant(0);
  v28 = *(v4 - 8);
  v5 = *(v28 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v29 = &v27 - v9;
  v30 = v2;
  v10 = *v2;
  v11 = *(*v2 + 40);
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  dispatch thunk of Hashable.hash(into:)();
  v12 = (a2 + *(v4 + 20));
  v13 = v12[1];
  v33 = *v12;
  String.hash(into:)();
  v14 = v4;
  v32 = *(a2 + *(v4 + 24));
  Hasher._combine(_:)(v32);
  v15 = Hasher._finalize()();
  v16 = -1 << *(v10 + 32);
  v17 = v15 & ~v16;
  if ((*(v10 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
  {
    v18 = ~v16;
    v19 = *(v28 + 72);
    while (1)
    {
      outlined init with copy of PresenceSessionInfo.Participant(*(v10 + 48) + v19 * v17, v8, type metadata accessor for PresenceSessionInfo.Participant);
      if (static UUID.== infix(_:_:)())
      {
        v20 = &v8[*(v14 + 20)];
        v21 = *v20 == v33 && *(v20 + 1) == v13;
        if (v21 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && v32 == v8[*(v14 + 24)])
        {
          break;
        }
      }

      outlined destroy of PresenceSessionInfo.Participant(v8, type metadata accessor for PresenceSessionInfo.Participant);
      v17 = (v17 + 1) & v18;
      if (((*(v10 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    outlined destroy of PresenceSessionInfo.Participant(v8, type metadata accessor for PresenceSessionInfo.Participant);
    outlined destroy of PresenceSessionInfo.Participant(a2, type metadata accessor for PresenceSessionInfo.Participant);
    outlined init with copy of PresenceSessionInfo.Participant(*(v10 + 48) + v19 * v17, v31, type metadata accessor for PresenceSessionInfo.Participant);
    return 0;
  }

  else
  {
LABEL_12:
    v22 = v30;
    v23 = *v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v29;
    outlined init with copy of PresenceSessionInfo.Participant(a2, v29, type metadata accessor for PresenceSessionInfo.Participant);
    v34 = *v22;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v25, v17, isUniquelyReferenced_nonNull_native);
    *v22 = v34;
    outlined init with take of PresenceSessionInfo.Participant(a2, v31, type metadata accessor for PresenceSessionInfo.Participant);
    return 1;
  }
}

Swift::Int _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfCSo13CPParticipantC_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo13CPParticipantCGMd, &_ss11_SetStorageCySo13CPParticipantCGMR);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CPParticipant, 0x1E6997710);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          specialized _NativeSet.resize(capacity:)(v9 + 1);
        }

        v2 = v15;
        result = NSObject._rawHashValue(seed:)(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
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

uint64_t _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC7Combine14AnyCancellableC_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy7Combine14AnyCancellableCGMd, &_ss11_SetStorageCy7Combine14AnyCancellableCGMR);
    v2 = static _SetStorage.convert(_:capacity:)();
    v16 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for AnyCancellable();
      do
      {
        swift_dynamicCast();
        v10 = *(v2 + 16);
        if (*(v2 + 24) <= v10)
        {
          specialized _NativeSet.resize(capacity:)(v10 + 1);
        }

        v2 = v16;
        v3 = *(v16 + 40);
        lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable, MEMORY[0x1E695BF10]);
        result = dispatch thunk of Hashable._rawHashValue(seed:)();
        v5 = v16 + 56;
        v6 = -1 << *(v16 + 32);
        v7 = result & ~v6;
        v8 = v7 >> 6;
        if (((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6))) != 0)
        {
          v9 = __clz(__rbit64((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v11 = 0;
          v12 = (63 - v6) >> 6;
          do
          {
            if (++v8 == v12 && (v11 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v13 = v8 == v12;
            if (v8 == v12)
            {
              v8 = 0;
            }

            v11 |= v13;
            v14 = *(v5 + 8 * v8);
          }

          while (v14 == -1);
          v9 = __clz(__rbit64(~v14)) + (v8 << 6);
        }

        *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
        *(*(v16 + 48) + 8 * v9) = v15;
        ++*(v16 + 16);
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

Swift::Int _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfCSo8TUHandleC_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo8TUHandleCGMd, &_ss11_SetStorageCySo8TUHandleCGMR);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          specialized _NativeSet.resize(capacity:)(v9 + 1);
        }

        v2 = v15;
        result = NSObject._rawHashValue(seed:)(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
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

unint64_t specialized _NativeSet._unsafeInsertNew(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  type metadata accessor for AnyCancellable();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable, MEMORY[0x1E695BF10]);
  dispatch thunk of Hashable._rawHashValue(seed:)();
  v5 = -1 << *(a2 + 32);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

{
  NSObject._rawHashValue(seed:)(*(a2 + 40));
  v4 = -1 << *(a2 + 32);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = specialized _NativeSet.copy()();
      a2 = v7;
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v5 + 1);
  }

  v8 = *v3;
  result = MEMORY[0x1B2715020](*(*v3 + 40), v4);
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  type metadata accessor for AnyCancellable();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable, MEMORY[0x1E695BF10]);
  result = dispatch thunk of Hashable._rawHashValue(seed:)();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable, MEMORY[0x1E695BF10]);
    do
    {
      v16 = *(*(v8 + 48) + 8 * a2);
      result = dispatch thunk of static Equatable.== infix(_:_:)();
      if (result)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v5;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v6 + 1, &_ss11_SetStorageCySo13CPParticipantCGMd, &_ss11_SetStorageCySo13CPParticipantCGMR);
  }

  v8 = *v3;
  v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CPParticipant, 0x1E6997710);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v6 + 1, &_ss11_SetStorageCySo8TUHandleCGMd, &_ss11_SetStorageCySo8TUHandleCGMR);
  }

  v8 = *v3;
  v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for TUHandle, 0x1E69D8C00);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  v15 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v4 = v3;
  v8 = type metadata accessor for Participant();
  v9 = *(v8 - 1);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*v4 + 16);
  v14 = *(*v4 + 24);
  if (v14 > v13 && (a3 & 1) != 0)
  {
    goto LABEL_29;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v13 + 1);
  }

  else
  {
    if (v14 > v13)
    {
      specialized _NativeSet.copy()();
      goto LABEL_29;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v13 + 1);
  }

  v15 = *v4;
  v16 = *(*v4 + 40);
  Hasher.init(_seed:)();
  Participant.hash(into:)();
  v17 = Hasher._finalize()();
  v18 = -1 << *(v15 + 32);
  a2 = v17 & ~v18;
  if ((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v19 = ~v18;
    v20 = *(v9 + 72);
    do
    {
      outlined init with copy of PresenceSessionInfo.Participant(*(v15 + 48) + v20 * a2, v12, type metadata accessor for Participant);
      if ((static UUID.== infix(_:_:)() & 1) == 0)
      {
        goto LABEL_11;
      }

      v21 = v8[5];
      v22 = *&v12[v21];
      v23 = *&v12[v21 + 8];
      v24 = (a1 + v21);
      v25 = v22 == *v24 && v23 == v24[1];
      if (!v25 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *&v12[v8[6]] != *(a1 + v8[6]))
      {
        goto LABEL_11;
      }

      v26 = v8[7];
      v27 = &v12[v26];
      v28 = *&v12[v26 + 8];
      v29 = (a1 + v26);
      v30 = v29[1];
      if (v28)
      {
        if (!v30)
        {
          goto LABEL_11;
        }

        v31 = *v27 == *v29 && v28 == v30;
        if (!v31 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      else if (v30)
      {
        goto LABEL_11;
      }

      if (v12[v8[8]] == *(a1 + v8[8]) && v12[v8[9]] == *(a1 + v8[9]))
      {
        outlined destroy of PresenceSessionInfo.Participant(v12, type metadata accessor for Participant);
        ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        break;
      }

LABEL_11:
      outlined destroy of PresenceSessionInfo.Participant(v12, type metadata accessor for Participant);
      a2 = (a2 + 1) & v19;
    }

    while (((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_29:
  v32 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = outlined init with take of PresenceSessionInfo.Participant(a1, *(v32 + 48) + *(v9 + 72) * a2, type metadata accessor for Participant);
  v34 = *(v32 + 16);
  v35 = __OFADD__(v34, 1);
  v36 = v34 + 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v32 + 16) = v36;
  }

  return result;
}

{
  v7 = type metadata accessor for PresenceSessionInfo.Participant(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  v30 = v8;
  v31 = v3;
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_19;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      specialized _NativeSet.copy()();
      goto LABEL_19;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v12 + 1);
  }

  v14 = *v3;
  v15 = *(*v3 + 40);
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  dispatch thunk of Hashable.hash(into:)();
  v16 = (a1 + *(v7 + 20));
  v17 = *v16;
  v18 = v16[1];
  String.hash(into:)();
  v32 = *(a1 + *(v7 + 24));
  Hasher._combine(_:)(v32);
  v19 = Hasher._finalize()();
  v20 = -1 << *(v14 + 32);
  a2 = v19 & ~v20;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v21 = ~v20;
    v22 = *(v8 + 72);
    do
    {
      outlined init with copy of PresenceSessionInfo.Participant(*(v14 + 48) + v22 * a2, v11, type metadata accessor for PresenceSessionInfo.Participant);
      if (static UUID.== infix(_:_:)())
      {
        v23 = &v11[*(v7 + 20)];
        v24 = *v23 == v17 && *(v23 + 1) == v18;
        if (v24 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && v32 == v11[*(v7 + 24)])
        {
          goto LABEL_22;
        }
      }

      outlined destroy of PresenceSessionInfo.Participant(v11, type metadata accessor for PresenceSessionInfo.Participant);
      a2 = (a2 + 1) & v21;
    }

    while (((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_19:
  v25 = *v31;
  *(*v31 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = outlined init with take of PresenceSessionInfo.Participant(a1, *(v25 + 48) + *(v30 + 72) * a2, type metadata accessor for PresenceSessionInfo.Participant);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_22:
  outlined destroy of PresenceSessionInfo.Participant(v11, type metadata accessor for PresenceSessionInfo.Participant);
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v33 = a1;
  v6 = type metadata accessor for UTType();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UTType and conformance UTType, MEMORY[0x1E69E8450]);
  v15 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UTType and conformance UTType, MEMORY[0x1E69E8450]);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    specialized _NativeSet.resize(capacity:)(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = specialized _NativeSet.copy()();
      goto LABEL_16;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCys6UInt64VGMd, &_ss11_SetStorageCys6UInt64VGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      result = MEMORY[0x1B2715020](*(v6 + 40), v17);
      v18 = -1 << *(v6 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
LABEL_26:

    *v2 = v6;
  }

  return result;
}

{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy7Combine14AnyCancellableCGMd, &_ss11_SetStorageCy7Combine14AnyCancellableCGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v27 = v2;
    v28 = v3;
    v7 = 0;
    v8 = v3 + 56;
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v29 = (v11 - 1) & v11;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      type metadata accessor for AnyCancellable();
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable, MEMORY[0x1E695BF10]);

      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
      v3 = v28;
      v11 = v29;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v27;
        goto LABEL_28;
      }

      v17 = *(v8 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v29 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

{
  v2 = v1;
  v37 = type metadata accessor for UUID();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation4UUIDVGMd, &_ss11_SetStorageCy10Foundation4UUIDVGMR);
  v10 = static _SetStorage.resize(original:capacity:move:)();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v10;
  }

  return result;
}

{
  v2 = v1;
  v4 = type metadata accessor for Participant();
  v5 = *(v4 - 1);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy15GroupActivities11ParticipantVGMd, &_ss11_SetStorageCy15GroupActivities11ParticipantVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v12 = result;
  if (*(v9 + 16))
  {
    v43 = v2;
    v13 = 0;
    v14 = *(v9 + 56);
    v44 = v9 + 56;
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & v14;
    v18 = (v15 + 63) >> 6;
    v19 = result + 56;
    v45 = v18;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v47 = (v17 - 1) & v17;
LABEL_17:
      v24 = *(v9 + 48);
      v46 = *(v5 + 72);
      outlined init with copy of PresenceSessionInfo.Participant(v24 + v46 * (v21 | (v13 << 6)), v8, type metadata accessor for Participant);
      v25 = *(v12 + 40);
      Hasher.init(_seed:)();
      type metadata accessor for UUID();
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      dispatch thunk of Hashable.hash(into:)();
      v26 = &v8[v4[5]];
      v27 = *v26;
      v28 = *(v26 + 1);
      String.hash(into:)();
      MEMORY[0x1B2715070](*&v8[v4[6]]);
      v29 = &v8[v4[7]];
      if (*(v29 + 1))
      {
        v30 = v12;
        v31 = v8;
        v32 = v9;
        v33 = v5;
        v34 = v4;
        v35 = *v29;
        Hasher._combine(_:)(1u);
        v4 = v34;
        v5 = v33;
        v9 = v32;
        v8 = v31;
        v12 = v30;
        v18 = v45;
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      Hasher._combine(_:)(v8[v4[8]]);
      Hasher._combine(_:)(v8[v4[9]]);
      result = Hasher._finalize()();
      v36 = -1 << *(v12 + 32);
      v37 = result & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v19 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v19 + 8 * v38);
          if (v42 != -1)
          {
            v20 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_33;
      }

      v20 = __clz(__rbit64((-1 << v37) & ~*(v19 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      result = outlined init with take of PresenceSessionInfo.Participant(v8, *(v12 + 48) + v20 * v46, type metadata accessor for Participant);
      ++*(v12 + 16);
      v17 = v47;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v2 = v43;
        goto LABEL_31;
      }

      v23 = *(v44 + 8 * v13);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v47 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {

LABEL_31:
    *v2 = v12;
  }

  return result;
}

{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy15GroupActivities17AddressableMemberVGMd, &_ss11_SetStorageCy15GroupActivities17AddressableMemberVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

{
  v2 = v1;
  v4 = type metadata accessor for PresenceSessionInfo.Participant(0);
  v40 = *(v4 - 8);
  v41 = v4;
  v5 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy15GroupActivities19PresenceSessionInfoV11ParticipantVGMd, &_ss11_SetStorageCy15GroupActivities19PresenceSessionInfoV11ParticipantVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v8 + 16))
  {
    v38 = v2;
    v39 = v8;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v18 = result + 56;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v8 + 48);
      v24 = *(v40 + 72);
      outlined init with copy of PresenceSessionInfo.Participant(v23 + v24 * (v20 | (v12 << 6)), v7, type metadata accessor for PresenceSessionInfo.Participant);
      v25 = *(v11 + 40);
      Hasher.init(_seed:)();
      type metadata accessor for UUID();
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      dispatch thunk of Hashable.hash(into:)();
      v26 = v41;
      v27 = &v7[*(v41 + 20)];
      v28 = *v27;
      v29 = *(v27 + 1);
      String.hash(into:)();
      Hasher._combine(_:)(v7[*(v26 + 24)]);
      result = Hasher._finalize()();
      v30 = -1 << *(v11 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v18 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v18 + 8 * v32);
          if (v36 != -1)
          {
            v19 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v31) & ~*(v18 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = outlined init with take of PresenceSessionInfo.Participant(v7, *(v11 + 48) + v19 * v24, type metadata accessor for PresenceSessionInfo.Participant);
      ++*(v11 + 16);
      v8 = v39;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v38;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v11;
  }

  return result;
}

{
  v2 = v1;
  v37 = type metadata accessor for UTType();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy22UniformTypeIdentifiers6UTTypeVGMd, &_ss11_SetStorageCy22UniformTypeIdentifiers6UTTypeVGMR);
  v10 = static _SetStorage.resize(original:capacity:move:)();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UTType and conformance UTType, MEMORY[0x1E69E8450]);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v10;
  }

  return result;
}

uint64_t specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = static _SetStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v28 = v4;
    v9 = 0;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_17:
      v19 = *(v8 + 40);
      v20 = *(*(v5 + 48) + 8 * (v16 | (v9 << 6)));
      result = NSObject._rawHashValue(seed:)(v19);
      v21 = -1 << *(v8 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v8 + 48) + 8 * v15) = v20;
      ++*(v8 + 16);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v13)
      {

        v4 = v28;
        goto LABEL_28;
      }

      v18 = *(v5 + 56 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v4 = v8;
  }

  return result;
}

void specialized Set._Variant.removeAll(keepingCapacity:)(char a1)
{
  v2 = *v1;
  if (a1)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      if (v2 < 0)
      {
        v3 = *v1;
      }

      if (__CocoaSet.count.getter() > 0)
      {
        v4 = __CocoaSet.count.getter();

        if (v4)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy7Combine14AnyCancellableCGMd, &_ss11_SetStorageCy7Combine14AnyCancellableCGMR);
          *v1 = static _SetStorage.allocate(capacity:)();
        }

        else
        {
          *v1 = MEMORY[0x1E69E7CD0];
        }
      }
    }

    else if (*(v2 + 16))
    {
      v6 = *v1;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v8 = *v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss10_NativeSetVy7Combine14AnyCancellableCGMd, &_ss10_NativeSetVy7Combine14AnyCancellableCGMR);
      _NativeSet.removeAll(isUnique:)(isUniquelyReferenced_nonNull_native);
      *v1 = v8;
    }
  }

  else
  {
    v5 = *v1;

    *v1 = MEMORY[0x1E69E7CD0];
  }
}

unint64_t specialized Collection.index(_:offsetBy:limitedBy:)(unint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, int a6, char a7, uint64_t a8)
{
  if (a4 < 0)
  {
LABEL_26:
    __break(1u);
  }

  else
  {
    if (!a4)
    {
      v20 = result;
      outlined copy of Set<A>.Index._Variant<A>(result, a2, a3 & 1);
      return v20;
    }

    v8 = 0;
    v9 = a3 | a7;
    while ((v9 & 1) == 0)
    {
      if (a2 != a6)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (result == a5)
      {
        return 0;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        goto LABEL_23;
      }

      v11 = 1 << *(a8 + 32);
      if (result >= v11)
      {
        goto LABEL_23;
      }

      v12 = result >> 6;
      v13 = *(a8 + 56 + 8 * (result >> 6));
      if (((v13 >> result) & 1) == 0)
      {
        goto LABEL_24;
      }

      if (*(a8 + 36) != a6)
      {
        goto LABEL_25;
      }

      v14 = v13 & (-2 << (result & 0x3F));
      if (v14)
      {
        result = __clz(__rbit64(v14)) | result & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v15 = v12 << 6;
        v16 = v12 + 1;
        v17 = (a8 + 64 + 8 * v12);
        while (v16 < (v11 + 63) >> 6)
        {
          v19 = *v17++;
          v18 = v19;
          v15 += 64;
          ++v16;
          if (v19)
          {
            result = __clz(__rbit64(v18)) + v15;
            goto LABEL_5;
          }
        }

        result = 1 << *(a8 + 32);
      }

LABEL_5:
      LODWORD(a2) = a6;
      v9 = a7;
      if (v8++ == a4 - 1)
      {
        return result;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized Collection<>.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = -1 << *(a2 + 32);
  result = _HashTable.startBucket.getter();
  v8 = 1 << *(a2 + 32);
  if (v8 < result)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (*(a1 + 16))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = *(a2 + 36);
  v10 = *(a1 + 8);
  if (v9 != v10)
  {
    goto LABEL_12;
  }

  if (*a1 < result)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (*(a1 + 40))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v11 = *(a1 + 32);
  if (v9 != v11)
  {
    goto LABEL_14;
  }

  v12 = *(a1 + 24);
  if (v8 < v12)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  *a3 = *a1;
  *(a3 + 8) = v10;
  *(a3 + 16) = 0;
  *(a3 + 24) = v12;
  *(a3 + 32) = v11;
  *(a3 + 40) = 0;
  *(a3 + 48) = a2;
}

uint64_t partial apply for closure #1 in PresenceGroupSessionProviderObserver.join()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return closure #1 in PresenceGroupSessionProviderObserver.join()(a1, v4, v5, v6, v7);
}

void partial apply for closure #2 in PresenceGroupSessionProviderObserver.join()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);

  JUMPOUT(0x1B27144E0);
}

uint64_t partial apply for closure #3 in PresenceGroupSessionProviderObserver.join()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return closure #3 in PresenceGroupSessionProviderObserver.join()(a1, v4, v5, v7, v6);
}

uint64_t dispatch thunk of PresenceGroupSessionProviderObserver.join()()
{
  v2 = *(*v0 + 168);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = protocol witness for AnyTransportSession.removeAttachment(id:) in conformance GroupSession<A>;

  return v6();
}

uint64_t dispatch thunk of PresenceGroupSessionProviderObserver.leave()()
{
  v2 = *(*v0 + 176);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return v6();
}

uint64_t specialized Collection.prefix(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = result;
    v6 = -1 << *(a2 + 32);
    v7 = _HashTable.startBucket.getter();
    v8 = *(a2 + 36);
    v9 = -1 << *(a2 + 32);
    v10 = specialized Collection.index(_:offsetBy:limitedBy:)(v7, v8, 0, v4, -v9, *(a2 + 36), 0, a2);
    v12 = v11;
    v14 = v13;
    v15 = v13;
    result = _HashTable.startBucket.getter();
    if (v15 == 255)
    {
      v16 = -v9;
    }

    else
    {
      v16 = v10;
    }

    if (v15 == 255)
    {
      v17 = v8;
    }

    else
    {
      v17 = v12;
    }

    if (v15 != 255 && (v14 & 1) != 0)
    {
      goto LABEL_16;
    }

    v18 = *(a2 + 36);
    if (v18 == v17)
    {
      if (v16 >= result)
      {
        v22[0] = result;
        v22[1] = v18;
        v23 = 0;
        v24 = v16;
        v25 = v17;
        v26 = 0;
        result = specialized Collection<>.subscript.getter(v22, a2, v20);
        v19 = v20[1];
        *a3 = v20[0];
        *(a3 + 16) = v19;
        *(a3 + 32) = v20[2];
        *(a3 + 48) = v21;
        return result;
      }

      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t outlined copy of Set<A>.Index._Variant<A>(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t outlined init with take of PresenceSessionInfo.Participant(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of PresenceSessionInfo.Participant(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of PresenceSessionInfo.Participant(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *PlaybackSyncer.localParticipantState.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void PlaybackSyncer.localParticipantState.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t PlaybackSyncer.transportControlStates.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
}

uint64_t PlaybackSyncer.transportControlStates.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  *(v1 + 24) = a1;
}

uint64_t PlaybackSyncer.coordinator.getter()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v2 = *(v0 + 120);
  return result;
}

uint64_t PlaybackSyncer.coordinator.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 120) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*PlaybackSyncer.coordinator.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 120);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return PlaybackSyncer.coordinator.modify;
}

void PlaybackSyncer.coordinator.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + 120) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t PlaybackSyncer.link.getter()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v2 = *(v0 + 136);
  return result;
}

uint64_t PlaybackSyncer.link.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 136) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*PlaybackSyncer.link.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 136);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return PlaybackSyncer.link.modify;
}

void PlaybackSyncer.link.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + 136) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t PlaybackSyncer.syncerDelegate.getter()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v2 = *(v0 + 152);
  return result;
}

uint64_t PlaybackSyncer.syncerDelegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 152) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*PlaybackSyncer.syncerDelegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 152);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return PlaybackSyncer.syncerDelegate.modify;
}

void PlaybackSyncer.syncerDelegate.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + 152) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t PlaybackSyncer.__allocating_init(coordinator:serialQueue:localParticipantUUID:)(void *a1, void *a2, uint64_t a3)
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v3 + 472);
  v13 = a1;
  v14 = a2;
  v15 = v12(v13, &protocol witness table for AVPlaybackCoordinator, v14);
  v16 = type metadata accessor for PlaybackSyncer.AVCoordinatorDelegateBridge(0);
  (*(v8 + 16))(v11, a3, v7);
  swift_retain_n();
  v17 = specialized PlaybackSyncer.AVCoordinatorDelegateBridge.init(localParticipantID:delegate:)(v11, v15, objc_allocWithZone(v16), v3, &protocol witness table for PlaybackSyncer);

  (*(v8 + 8))(a3, v7);
  v18 = *(v15 + 104);
  *(v15 + 104) = v17;

  return v15;
}

id PlaybackSyncer.AVCoordinatorDelegateBridge.__allocating_init(localParticipantID:delegate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();

  return specialized PlaybackSyncer.AVCoordinatorDelegateBridge.__allocating_init(localParticipantID:delegate:)(a1, a2, v3, ObjectType, a3);
}

uint64_t PlaybackSyncer.__allocating_init(internalCoordinator:serialQueue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  swift_allocObject();
  v9 = specialized PlaybackSyncer.init(internalCoordinator:serialQueue:)(a1, a2, a3);
  swift_unknownObjectRelease();
  return v9;
}

uint64_t PlaybackSyncer.init(internalCoordinator:serialQueue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = specialized PlaybackSyncer.init(internalCoordinator:serialQueue:)(a1, a2, a3);
  swift_unknownObjectRelease();
  return v3;
}

uint64_t PlaybackSyncer.connect(toLink:withExistingRemoteParticipants:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v51 = a3;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v56 = *(v6 - 8);
  v57 = v6;
  v7 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v54 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for DispatchQoS();
  v53 = *(v55 - 8);
  v9 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v55);
  v52 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v47 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AA19CurrentValueSubjectCySbs5NeverOGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AA19CurrentValueSubjectCySbs5NeverOGSo17OS_dispatch_queueCGMR);
  v49 = *(v15 - 8);
  v50 = v15;
  v16 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v48 = &v47 - v17;
  if (one-time initialization token for playback != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static Logger.playback);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_1AEE80000, v19, v20, "PlaybackSync: Connecting link", v21, 2u);
    MEMORY[0x1B2715BA0](v21, -1, -1);
  }

  v22 = *(*v4 + 432);
  v23 = swift_unknownObjectRetain();
  v22(v23, a2);
  v24 = v4[13];
  if (v24)
  {
    v25 = *(*v4 + 400);
    v26 = v24;
    if (v25())
    {
      objc_opt_self();
      v27 = swift_dynamicCastObjCClass();
      if (v27)
      {
        [v27 setCoordinationMediumDelegate_];
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  ObjectType = swift_getObjectType();
  v29 = swift_allocObject();
  swift_weakInit();
  v30 = *(a2 + 24);

  v30(partial apply for closure #1 in PlaybackSyncer.connect(toLink:withExistingRemoteParticipants:), v29, ObjectType, a2);

  v31 = swift_allocObject();
  swift_weakInit();
  v32 = *(a2 + 48);

  v32(partial apply for closure #2 in PlaybackSyncer.connect(toLink:withExistingRemoteParticipants:), v31, ObjectType, a2);

  aBlock[0] = (*(a2 + 80))(ObjectType, a2);
  v59 = v4[12];
  v33 = v59;
  v34 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v34 - 8) + 56))(v14, 1, 1, v34);
  v35 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySbs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySbs5NeverOGMR);
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type CurrentValueSubject<Bool, Never> and conformance CurrentValueSubject<A, B>, &_s7Combine19CurrentValueSubjectCySbs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySbs5NeverOGMR);
  lazy protocol witness table accessor for type OS_dispatch_queue and conformance OS_dispatch_queue();
  v36 = v48;
  Publisher.receive<A>(on:options:)();
  outlined destroy of NSObject?(v14, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);

  v37 = swift_allocObject();
  swift_weakInit();
  v38 = swift_allocObject();
  v39 = v51;
  *(v38 + 16) = v37;
  *(v38 + 24) = v39;
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.ReceiveOn<CurrentValueSubject<Bool, Never>, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AA19CurrentValueSubjectCySbs5NeverOGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AA19CurrentValueSubjectCySbs5NeverOGSo17OS_dispatch_queueCGMR);

  v40 = v50;
  Publisher<>.sink(receiveValue:)();

  (*(v49 + 8))(v36, v40);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v41 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = partial apply for closure #4 in PlaybackSyncer.connect(toLink:withExistingRemoteParticipants:);
  aBlock[5] = v41;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_1;
  v42 = _Block_copy(aBlock);

  v43 = v52;
  static DispatchQoS.unspecified.getter();
  v59 = MEMORY[0x1E69E7CC0];
  _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  v44 = v54;
  v45 = v57;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27147B0](0, v43, v44, v42);
  _Block_release(v42);
  (*(v56 + 8))(v44, v45);
  (*(v53 + 8))(v43, v55);
}

uint64_t closure #1 in PlaybackSyncer.connect(toLink:withExistingRemoteParticipants:)(unsigned __int8 *a1, uint64_t a2)
{
  v27 = a2;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v30 = *(v3 - 8);
  v31 = v3;
  v4 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v28 = *(v7 - 8);
  v29 = v7;
  v8 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *a1;
  v15 = *(a1 + 1);
  v16 = *(a1 + 2);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v25 = *(result + 96);

    v18 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    (*(v12 + 16))(&v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v27, v11);
    v19 = (*(v12 + 80) + 48) & ~*(v12 + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = v18;
    *(v20 + 24) = v26;
    *(v20 + 32) = v15;
    *(v20 + 40) = v16;
    (*(v12 + 32))(v20 + v19, v14, v11);
    aBlock[4] = partial apply for closure #1 in closure #1 in PlaybackSyncer.connect(toLink:withExistingRemoteParticipants:);
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_127;
    v21 = _Block_copy(aBlock);

    outlined copy of Data._Representation(v15, v16);
    static DispatchQoS.unspecified.getter();
    v32 = MEMORY[0x1E69E7CC0];
    _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    v22 = v31;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v23 = v25;
    MEMORY[0x1B27147B0](0, v10, v6, v21);
    _Block_release(v21);

    (*(v30 + 8))(v6, v22);
    (*(v28 + 8))(v10, v29);
  }

  return result;
}

uint64_t closure #1 in closure #1 in PlaybackSyncer.connect(toLink:withExistingRemoteParticipants:)(uint64_t a1, unsigned __int8 a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10[0] = a2;
    v11 = a3;
    v12 = a4;
    PlaybackSyncer.receiveMessage(message:from:)(v10, a5);
  }

  return result;
}

uint64_t closure #2 in PlaybackSyncer.connect(toLink:withExistingRemoteParticipants:)(uint64_t a1)
{
  v24 = a1;
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v25 = *(v6 - 8);
  v7 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = *(result + 96);
    v23 = v6;
    v22 = v15;

    v16 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    (*(v11 + 16))(&v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v24, v10);
    v17 = (*(v11 + 80) + 24) & ~*(v11 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = v16;
    (*(v11 + 32))(v18 + v17, v13, v10);
    aBlock[4] = partial apply for closure #1 in closure #2 in PlaybackSyncer.connect(toLink:withExistingRemoteParticipants:);
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_120;
    v19 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v26 = MEMORY[0x1E69E7CC0];
    _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v20 = v22;
    MEMORY[0x1B27147B0](0, v9, v5, v19);
    _Block_release(v19);

    (*(v2 + 8))(v5, v1);
    (*(v25 + 8))(v9, v23);
  }

  return result;
}

uint64_t closure #1 in closure #2 in PlaybackSyncer.connect(toLink:withExistingRemoteParticipants:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(*result + 504))(a2);
  }

  return result;
}

void closure #3 in PlaybackSyncer.connect(toLink:withExistingRemoteParticipants:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (v4)
    {
      PlaybackSyncer.sendCatchupRequestMessage()();
    }

    else if (*(a3 + 16))
    {
      v6 = Strong;
      if (one-time initialization token for playback != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      __swift_project_value_buffer(v7, static Logger.playback);

      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v20 = v11;
        *v10 = 136315138;
        type metadata accessor for UUID();
        _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
        v12 = Set.description.getter();
        v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v20);

        *(v10 + 4) = v14;
        _os_log_impl(&dword_1AEE80000, v8, v9, "PlaybackSync: Requesting catchup due to existing joined participants:%s.", v10, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v11);
        MEMORY[0x1B2715BA0](v11, -1, -1);
        MEMORY[0x1B2715BA0](v10, -1, -1);
      }

      swift_beginAccess();
      v15 = *(v6 + 88);
      *(v6 + 88) = a3;

      PlaybackSyncer.sendCatchupRequestMessage()();
    }

    else
    {
      if (one-time initialization token for playback != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      __swift_project_value_buffer(v16, static Logger.playback);
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_1AEE80000, v17, v18, "PlaybackSync: Catchup not needed", v19, 2u);
        MEMORY[0x1B2715BA0](v19, -1, -1);
      }
    }
  }
}

uint64_t closure #4 in PlaybackSyncer.connect(toLink:withExistingRemoteParticipants:)()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    PlaybackSyncer.scheduleTransportStateTakeoverTimer()();
  }

  return result;
}

uint64_t PlaybackSyncer.replaceCoordinator(coordinator:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v20 = *(v6 - 8);
  v7 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v10 = *(v19 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v3 + 96);
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = a1;
  v15[4] = a2;
  aBlock[4] = partial apply for closure #1 in PlaybackSyncer.replaceCoordinator(coordinator:);
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_13;
  v16 = _Block_copy(aBlock);

  swift_unknownObjectRetain();
  static DispatchQoS.unspecified.getter();
  v21 = MEMORY[0x1E69E7CC0];
  _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27147B0](0, v13, v9, v16);
  _Block_release(v16);
  (*(v20 + 8))(v9, v6);
  (*(v10 + 8))(v13, v19);
}

uint64_t closure #1 in PlaybackSyncer.replaceCoordinator(coordinator:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = *(*result + 408);
    v7 = swift_unknownObjectRetain();
    v8 = v6(v7, a3);
    if ((*(*v5 + 424))(v8))
    {
      swift_unknownObjectRelease();
      PlaybackSyncer.sendCatchupRequestMessage()();
    }
  }

  return result;
}

uint64_t PlaybackSyncer.replaceCoordinator(avPlaybackCoordinator:localParticipantUUID:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v25[0] = a1;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v28 = *(v5 - 8);
  v6 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v26 = *(v9 - 8);
  v27 = v9;
  v10 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25[1] = *(v3 + 96);
  v17 = swift_allocObject();
  swift_weakInit();
  (*(v14 + 16))(v16, a2, v13);
  v18 = (*(v14 + 80) + 24) & ~*(v14 + 80);
  v19 = (v15 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = v17;
  (*(v14 + 32))(v20 + v18, v16, v13);
  v21 = v25[0];
  *(v20 + v19) = v25[0];
  aBlock[4] = partial apply for closure #1 in PlaybackSyncer.replaceCoordinator(avPlaybackCoordinator:localParticipantUUID:);
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_20;
  v22 = _Block_copy(aBlock);

  v23 = v21;
  static DispatchQoS.unspecified.getter();
  v29 = MEMORY[0x1E69E7CC0];
  _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27147B0](0, v12, v8, v22);
  _Block_release(v22);
  (*(v28 + 8))(v8, v5);
  (*(v26 + 8))(v12, v27);
}

void closure #1 in PlaybackSyncer.replaceCoordinator(avPlaybackCoordinator:localParticipantUUID:)(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    if (one-time initialization token for playback != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.playback);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1AEE80000, v13, v14, "PlaybackSync: Replacing AVPlaybackCoordinator for group session", v15, 2u);
      MEMORY[0x1B2715BA0](v15, -1, -1);
    }

    (*(*v11 + 512))();
    v16 = *(v6 + 16);
    v16(v9, a2, v5);
    v17 = type metadata accessor for PlaybackSyncer.AVCoordinatorDelegateBridge(0);
    v18 = objc_allocWithZone(v17);
    v19 = &v18[OBJC_IVAR____TtCC15GroupActivities14PlaybackSyncer27AVCoordinatorDelegateBridge_delegate];
    *&v18[OBJC_IVAR____TtCC15GroupActivities14PlaybackSyncer27AVCoordinatorDelegateBridge_delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    v16(&v18[OBJC_IVAR____TtCC15GroupActivities14PlaybackSyncer27AVCoordinatorDelegateBridge_localParticipantID], v9, v5);
    swift_beginAccess();
    *(v19 + 1) = &protocol witness table for PlaybackSyncer;
    swift_unknownObjectWeakAssign();
    v23.receiver = v18;
    v23.super_class = v17;
    v20 = objc_msgSendSuper2(&v23, sel_init);
    (*(v6 + 8))(v9, v5);
    [a3 setCoordinationMediumDelegate_];
    v21 = v11[13];
    v11[13] = v20;
    v22 = v20;

    (*(*v11 + 488))(a3, &protocol witness table for AVPlaybackCoordinator);
  }
}

void PlaybackSyncer.participantLeft(_:)(uint64_t a1)
{
  v2 = v1;
  v83 = a1;
  v3 = type metadata accessor for UUID();
  v84 = *(v3 - 8);
  v4 = *(v84 + 64);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v78 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v75 = &v74 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v74 - v9;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  v11 = *(*(v81 - 8) + 64);
  MEMORY[0x1EEE9AC00](v81);
  v13 = &v74 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v76 = &v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v82 = &v74 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v74 - v20;
  v22 = type metadata accessor for DispatchPredicate();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v26 = (&v74 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = v2[12];
  *v26 = v27;
  (*(v23 + 104))(v26, *MEMORY[0x1E69E8020], v22);
  v28 = v27;
  v29 = _dispatchPreconditionTest(_:)();
  v31 = *(v23 + 8);
  v30 = v23 + 8;
  v31(v26, v22);
  if ((v29 & 1) == 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  v74 = v10;
  v32 = v84;
  v79 = *(v84 + 16);
  v80 = v84 + 16;
  v79(v21, v83, v3);
  v33 = *(v32 + 56);
  v34 = 1;
  v35 = v3;
  v36 = v33(v21, 0, 1, v3);
  v37 = *(*v2 + 424);
  v77 = v2;
  if (v37(v36))
  {
    v39 = v38;
    ObjectType = swift_getObjectType();
    v41 = v82;
    (*(v39 + 64))(ObjectType, v39);
    swift_unknownObjectRelease();
    v34 = 0;
  }

  else
  {
    v41 = v82;
  }

  v2 = v35;
  v33(v41, v34, 1, v35);
  v42 = *(v81 + 48);
  outlined init with copy of UUID?(v21, v13);
  outlined init with copy of UUID?(v41, &v13[v42]);
  v43 = *(v84 + 48);
  if (v43(v13, 1, v35) == 1)
  {
    outlined destroy of NSObject?(v41, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    outlined destroy of NSObject?(v21, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v44 = v43(&v13[v42], 1, v35);
    v30 = v83;
    if (v44 == 1)
    {
      outlined destroy of NSObject?(v13, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
LABEL_19:
      if (one-time initialization token for playback != -1)
      {
        swift_once();
      }

      v64 = type metadata accessor for Logger();
      __swift_project_value_buffer(v64, static Logger.playback);
      v65 = v75;
      v79(v75, v30, v2);
      v66 = Logger.logObject.getter();
      v67 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        v85 = v69;
        *v68 = 136315138;
        _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
        v70 = dispatch thunk of CustomStringConvertible.description.getter();
        v72 = v71;
        (*(v84 + 8))(v65, v2);
        v73 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v70, v72, &v85);

        *(v68 + 4) = v73;
        _os_log_impl(&dword_1AEE80000, v66, v67, "PlaybackSync: Ignoring removal of local participant: %s", v68, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v69);
        MEMORY[0x1B2715BA0](v69, -1, -1);
        MEMORY[0x1B2715BA0](v68, -1, -1);
      }

      else
      {

        (*(v84 + 8))(v65, v2);
      }

      return;
    }

    goto LABEL_10;
  }

  v45 = v76;
  outlined init with copy of UUID?(v13, v76);
  if (v43(&v13[v42], 1, v35) == 1)
  {
    outlined destroy of NSObject?(v82, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    outlined destroy of NSObject?(v21, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    (*(v84 + 8))(v45, v35);
    v30 = v83;
LABEL_10:
    outlined destroy of NSObject?(v13, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
    goto LABEL_11;
  }

  v60 = v84;
  v61 = v74;
  (*(v84 + 32))(v74, &v13[v42], v2);
  _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  v62 = dispatch thunk of static Equatable.== infix(_:_:)();
  v63 = *(v60 + 8);
  v63(v61, v2);
  outlined destroy of NSObject?(v82, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined destroy of NSObject?(v21, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v63(v45, v2);
  outlined destroy of NSObject?(v13, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v30 = v83;
  if (v62)
  {
    goto LABEL_19;
  }

LABEL_11:
  if (one-time initialization token for playback != -1)
  {
LABEL_25:
    swift_once();
  }

  v46 = type metadata accessor for Logger();
  __swift_project_value_buffer(v46, static Logger.playback);
  v47 = v78;
  v79(v78, v30, v2);
  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v85 = v51;
    *v50 = 136315138;
    _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v52 = dispatch thunk of CustomStringConvertible.description.getter();
    v54 = v53;
    (*(v84 + 8))(v47, v2);
    v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v54, &v85);

    *(v50 + 4) = v55;
    _os_log_impl(&dword_1AEE80000, v48, v49, "PlaybackSync: Cleaning up after participant left: %s", v50, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v51);
    MEMORY[0x1B2715BA0](v51, -1, -1);
    MEMORY[0x1B2715BA0](v50, -1, -1);
  }

  else
  {

    v56 = (*(v84 + 8))(v47, v2);
  }

  if ((*(*v77 + 400))(v56))
  {
    v58 = v57;
    v59 = swift_getObjectType();
    (*(v58 + 24))(v30, v59, v58);
    swift_unknownObjectRelease();
  }

  PlaybackSyncer.handleWaitingFor(participant:)(v30);
}

Swift::Void __swiftcall PlaybackSyncer.cleanUp()()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v53 = *(v2 - 8);
  v3 = *(v53 + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v47 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v47 - v14;
  v16 = type metadata accessor for DispatchPredicate();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = (&v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = v1[12];
  *v20 = v21;
  (*(v17 + 104))(v20, *MEMORY[0x1E69E8020], v16);
  v22 = v21;
  v23 = _dispatchPreconditionTest(_:)();
  v25 = *(v17 + 8);
  v24 = (v17 + 8);
  v26 = v25(v20, v16);
  if ((v23 & 1) == 0)
  {
    __break(1u);
LABEL_23:
    swift_once();
LABEL_7:
    v28 = type metadata accessor for Logger();
    __swift_project_value_buffer(v28, static Logger.playback);
    swift_unknownObjectRetain();

    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    swift_unknownObjectRelease();

    v52 = v30;
    if (os_log_type_enabled(v29, v30))
    {
      v49 = v29;
      v50 = v23;
      v31 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v54 = v48;
      *v31 = 136315394;
      if ((*(*v1 + 424))())
      {
        v33 = v32;
        ObjectType = swift_getObjectType();
        (*(v33 + 72))(ObjectType, v33);
        swift_unknownObjectRelease();
        v35 = 0;
      }

      else
      {
        v35 = 1;
      }

      v36 = v51;
      v37 = v53;
      (*(v53 + 56))(v15, v35, 1, v2);
      outlined init with copy of UUID?(v15, v13);
      if ((*(v37 + 48))(v13, 1, v2) == 1)
      {
        v38 = 0xE300000000000000;
        v39 = 7104878;
      }

      else
      {
        (*(v37 + 32))(v8, v13, v2);
        (*(v37 + 16))(v36, v8, v2);
        v39 = String.init<A>(reflecting:)();
        v38 = v40;
        (*(v37 + 8))(v8, v2);
      }

      outlined destroy of NSObject?(v15, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v38, &v54);

      *(v31 + 4) = v41;
      *(v31 + 12) = 2112;
      *(v31 + 14) = v24;
      v42 = v47;
      *v47 = v24;
      swift_unknownObjectRetain();
      v43 = v49;
      _os_log_impl(&dword_1AEE80000, v49, v52, "PlaybackSync: Cleaning up playback coordinator for session: %s coordinator:%@", v31, 0x16u);
      outlined destroy of NSObject?(v42, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1B2715BA0](v42, -1, -1);
      v44 = v48;
      __swift_destroy_boxed_opaque_existential_0(v48);
      MEMORY[0x1B2715BA0](v44, -1, -1);
      MEMORY[0x1B2715BA0](v31, -1, -1);

      v23 = v50;
    }

    else
    {
    }

    [v24 setCoordinationMediumDelegate_];
    if (v23)
    {
      v45 = [v23 player];
      if (v45)
      {
        v46 = v45;
        [v45 setBackgroundPIPAuthorizationToken_];
      }
    }

    goto LABEL_20;
  }

  if (!(*(*v1 + 400))(v26))
  {
    return;
  }

  objc_opt_self();
  v27 = swift_dynamicCastObjCClass();
  if (v27)
  {
    v24 = v27;
    objc_opt_self();
    v23 = swift_dynamicCastObjCClass();
    if (v23)
    {
      swift_unknownObjectRetain();
    }

    v51 = v6;
    if (one-time initialization token for playback == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_20:
  swift_unknownObjectRelease();
}

uint64_t PlaybackSyncer.shouldDismissPlayback(allowingCancellation:completionHandler:)(char a1, uint64_t a2, uint64_t a3)
{
  result = (*(*v3 + 448))();
  if (result)
  {
    v9 = v8;
    ObjectType = swift_getObjectType();
    (*(v9 + 8))(a1 & 1, a2, a3, ObjectType, v9);

    return swift_unknownObjectRelease();
  }

  return result;
}

Swift::Void __swiftcall PlaybackSyncer.shareLocalParticipantState(participantState:)(NSDictionary participantState)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v18 = *(v4 - 8);
  v5 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v8 = *(v17 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v2 + 96);
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  v13[2].super.isa = v12;
  v13[3].super.isa = participantState.super.isa;
  aBlock[4] = partial apply for closure #1 in PlaybackSyncer.shareLocalParticipantState(participantState:);
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_27;
  v14 = _Block_copy(aBlock);

  v15 = participantState.super.isa;
  static DispatchQoS.unspecified.getter();
  v19 = MEMORY[0x1E69E7CC0];
  _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27147B0](0, v11, v7, v14);
  _Block_release(v14);
  (*(v18 + 8))(v7, v4);
  (*(v8 + 8))(v11, v17);
}

void closure #1 in PlaybackSyncer.shareLocalParticipantState(participantState:)(uint64_t a1, void *a2)
{
  v62[6] = *MEMORY[0x1E69E9840];
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = (*(*Strong + 424))();
    if (v10)
    {
      v12 = v10;
      v60 = v11;
      if (one-time initialization token for playback != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      __swift_project_value_buffer(v13, static Logger.playback);
      v14 = a2;
      swift_unknownObjectRetain();
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.default.getter();
      swift_unknownObjectRelease();

      v17 = os_log_type_enabled(v15, v16);
      v61 = v12;
      if (v17)
      {
        v18 = swift_slowAlloc();
        v58 = v16;
        v19 = v18;
        v20 = swift_slowAlloc();
        v57 = v20;
        v59 = swift_slowAlloc();
        v62[0] = v59;
        v55 = v19;
        *v19 = 138412546;
        *(v19 + 4) = v14;
        *v20 = v14;
        *(v19 + 12) = 2080;
        ObjectType = swift_getObjectType();
        v56 = v15;
        v22 = ObjectType;
        v23 = v60;
        v54 = v3;
        v24 = *(v60 + 72);
        v25 = v14;
        v24(v22, v23);
        _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
        v26 = v54;
        v27 = dispatch thunk of CustomStringConvertible.description.getter();
        v29 = v28;
        (*(v4 + 8))(v7, v26);
        v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, v62);

        v31 = v55;
        *(v55 + 14) = v30;
        v15 = v56;
        _os_log_impl(&dword_1AEE80000, v56, v58, "PlaybackSync: Broadcasting participant state:%@ to group session:%s", v31, 0x16u);
        v32 = v57;
        outlined destroy of NSObject?(v57, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x1B2715BA0](v32, -1, -1);
        v33 = v59;
        __swift_destroy_boxed_opaque_existential_0(v59);
        MEMORY[0x1B2715BA0](v33, -1, -1);
        MEMORY[0x1B2715BA0](v31, -1, -1);
      }

      v34 = objc_opt_self();
      v62[0] = 0;
      v35 = [v34 dataWithJSONObject:v14 options:0 error:v62];
      v36 = v62[0];
      if (v35)
      {
        v37 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v39 = v38;

        v40 = *(*v9 + 216);
        v41 = v14;
        v40(v14);
        LOBYTE(v62[0]) = 0;
        v62[1] = v37;
        v62[2] = v39;
        outlined copy of Data._Representation(v37, v39);
        PlaybackSyncer.sendMessage(_:to:)(v62, 0);

        outlined consume of Data._Representation(v37, v39);
        swift_unknownObjectRelease();
        outlined consume of Data._Representation(v37, v39);
      }

      else
      {
        v42 = v36;
        v43 = _convertNSErrorToError(_:)();

        swift_willThrow();
        v44 = v43;
        v45 = Logger.logObject.getter();
        v46 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          v48 = swift_slowAlloc();
          v62[0] = v48;
          *v47 = 136315138;
          swift_getErrorValue();
          v49 = Error.localizedDescription.getter();
          v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v50, v62);

          *(v47 + 4) = v51;
          _os_log_impl(&dword_1AEE80000, v45, v46, "PlaybackSync: shareLocalParticipantState Error:%s", v47, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v48);
          MEMORY[0x1B2715BA0](v48, -1, -1);
          MEMORY[0x1B2715BA0](v47, -1, -1);
          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease();
        }
      }
    }

    else
    {
    }
  }

  v52 = *MEMORY[0x1E69E9840];
}

uint64_t PlaybackSyncer.Message.init(type:payload:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

Swift::Void __swiftcall PlaybackSyncer.shareTransportControlState(itemIdentifier:transportControlState:)(Swift::String itemIdentifier, NSDictionary transportControlState)
{
  v3 = v2;
  object = itemIdentifier._object;
  countAndFlagsBits = itemIdentifier._countAndFlagsBits;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v21 = *(v7 - 8);
  v8 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v11 = *(v20 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v3 + 96);
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  v16[2].super.isa = v15;
  v16[3].super.isa = transportControlState.super.isa;
  v16[4].super.isa = countAndFlagsBits;
  v16[5].super.isa = object;
  aBlock[4] = partial apply for closure #1 in PlaybackSyncer.shareTransportControlState(itemIdentifier:transportControlState:);
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_34;
  v17 = _Block_copy(aBlock);

  v18 = transportControlState.super.isa;

  static DispatchQoS.unspecified.getter();
  v22 = MEMORY[0x1E69E7CC0];
  _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27147B0](0, v14, v10, v17);
  _Block_release(v17);
  (*(v21 + 8))(v10, v7);
  (*(v11 + 8))(v14, v20);
}

void closure #1 in PlaybackSyncer.shareTransportControlState(itemIdentifier:transportControlState:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v69[7] = *MEMORY[0x1E69E9840];
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    if (!(*(*Strong + 424))())
    {
LABEL_12:

      goto LABEL_13;
    }

    v65 = v8;
    v15 = v14;
    if (one-time initialization token for playback != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    v17 = __swift_project_value_buffer(v16, static Logger.playback);
    v18 = a2;
    swift_unknownObjectRetain();
    v64 = v17;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    swift_unknownObjectRelease();

    v21 = os_log_type_enabled(v19, v20);
    v66 = a3;
    v67 = a4;
    if (v21)
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v62 = v23;
      v63 = swift_slowAlloc();
      v69[0] = v63;
      *v22 = 138412546;
      *(v22 + 4) = v18;
      *v23 = v18;
      *(v22 + 12) = 2080;
      ObjectType = swift_getObjectType();
      v60 = v20;
      v61 = v19;
      v25 = *(v15 + 72);
      v26 = v18;
      v25(ObjectType, v15);
      _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      v27 = dispatch thunk of CustomStringConvertible.description.getter();
      v29 = v28;
      (*(v65 + 8))(v11, v7);
      v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, v69);

      *(v22 + 14) = v30;
      v31 = v61;
      _os_log_impl(&dword_1AEE80000, v61, v60, "PlaybackSync: Broadcasting transport control state:%@ to group session:%s", v22, 0x16u);
      v32 = v62;
      outlined destroy of NSObject?(v62, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1B2715BA0](v32, -1, -1);
      v33 = v63;
      __swift_destroy_boxed_opaque_existential_0(v63);
      MEMORY[0x1B2715BA0](v33, -1, -1);
      MEMORY[0x1B2715BA0](v22, -1, -1);
    }

    else
    {
    }

    v34 = objc_opt_self();
    v69[0] = 0;
    v35 = [v34 dataWithJSONObject:v18 options:0 error:v69];
    v36 = v69[0];
    if (v35)
    {
      v37 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v39 = v38;

      v40 = *(*v13 + 248);
      v41 = v18;
      v42 = v67;

      v43 = v40(v69);
      v45 = v44;
      v46 = *v44;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v68 = *v45;
      *v45 = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v41, v66, v42, isUniquelyReferenced_nonNull_native);

      *v45 = v68;
      v43(v69, 0);
      LOBYTE(v69[0]) = 1;
      v69[1] = v37;
      v69[2] = v39;
      outlined copy of Data._Representation(v37, v39);
      PlaybackSyncer.sendMessage(_:to:)(v69, 0);
      outlined consume of Data._Representation(v37, v39);
      if ((v13[72] & 1) == 0)
      {
        PlaybackSyncer.useExistingState()();
      }

      swift_unknownObjectRelease();
      outlined consume of Data._Representation(v37, v39);
      goto LABEL_12;
    }

    v49 = v36;
    v50 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v51 = v50;
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v69[0] = v55;
      *v54 = 136315138;
      swift_getErrorValue();
      v56 = Error.localizedDescription.getter();
      v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v57, v69);

      *(v54 + 4) = v58;
      _os_log_impl(&dword_1AEE80000, v52, v53, "PlaybackSync: shareTransportControlState Error:%s", v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v55);
      MEMORY[0x1B2715BA0](v55, -1, -1);
      MEMORY[0x1B2715BA0](v54, -1, -1);
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }

LABEL_13:
  v48 = *MEMORY[0x1E69E9840];
}

uint64_t PlaybackSyncer.reloadTransportControlStateForItem(itemIdentifier:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v23 = *(v9 - 8);
  v10 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchQoS();
  v13 = *(v22 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v4 + 96);
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  v18[2] = v17;
  v18[3] = a1;
  v18[4] = a2;
  v18[5] = a3;
  v18[6] = a4;
  aBlock[4] = partial apply for closure #1 in PlaybackSyncer.reloadTransportControlStateForItem(itemIdentifier:completion:);
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_41;
  v19 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v24 = MEMORY[0x1E69E7CC0];
  _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27147B0](0, v16, v12, v19);
  _Block_release(v19);
  (*(v23 + 8))(v12, v9);
  (*(v13 + 8))(v16, v22);
}

uint64_t closure #1 in PlaybackSyncer.reloadTransportControlStateForItem(itemIdentifier:completion:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(void), uint64_t a5)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    if (!(*(*result + 424))())
    {
    }

    v10 = v9;
    if (one-time initialization token for playback != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.playback);
    swift_retain_n();
    swift_unknownObjectRetain_n();

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v54[0] = v49;
      *v14 = 136315906;
      *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, v54);
      *(v14 + 12) = 1024;
      ObjectType = swift_getObjectType();
      v47 = *(v10 + 80);
      log = v12;
      v47(ObjectType, v10);
      CurrentValueSubject.value.getter();
      swift_unknownObjectRelease();

      *(v14 + 14) = v53;
      swift_unknownObjectRelease();
      *(v14 + 18) = 2080;
      swift_beginAccess();
      v16 = *(v8 + 88);
      type metadata accessor for UUID();
      v50 = a2;
      _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      v46 = v13;

      v17 = Set.description.getter();
      v19 = v18;

      v20 = v17;
      a2 = v50;
      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v19, v54);
      v22 = v47;

      *(v14 + 20) = v21;
      *(v14 + 28) = 1024;
      LODWORD(v21) = *(v8 + 72);

      *(v14 + 30) = v21;

      _os_log_impl(&dword_1AEE80000, log, v46, "PlaybackSync: reloadTransportControlStateForItem:%s. shouldRequestCatchup:%{BOOL}d waitingForCatchupResponseFromParticipants:%s hasReceivedTransportState:%{BOOL}d", v14, 0x22u);
      swift_arrayDestroy();
      MEMORY[0x1B2715BA0](v49, -1, -1);
      MEMORY[0x1B2715BA0](v14, -1, -1);
    }

    else
    {

      swift_unknownObjectRelease_n();

      v22 = *(v10 + 80);
    }

    v23 = swift_getObjectType();
    v22(v23, v10);
    CurrentValueSubject.value.getter();

    if ((v54[0] & 1) != 0 || (v24 = swift_beginAccess(), *(*(v8 + 88) + 16)))
    {
      if (*(v8 + 72) != 1)
      {
        v41 = Logger.logObject.getter();
        v42 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          *v43 = 0;
          _os_log_impl(&dword_1AEE80000, v41, v42, "Playback Sync: Deferring completion handler until later", v43, 2u);
          MEMORY[0x1B2715BA0](v43, -1, -1);
        }

        swift_unknownObjectRelease();
        v44 = *(v8 + 56);
        v45 = *(v8 + 64);
        *(v8 + 56) = a4;
        *(v8 + 64) = a5;

        outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v44);
      }
    }

    v25 = (*(*v8 + 232))(v24);
    if (*(v25 + 16))
    {
      v26 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
      if (v27)
      {
        v28 = *(*(v25 + 56) + 8 * v26);

        v29 = v28;
        v30 = Logger.logObject.getter();
        v31 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          v33 = swift_slowAlloc();
          *v32 = 138412290;
          *(v32 + 4) = v29;
          *v33 = v29;
          v34 = v29;
          _os_log_impl(&dword_1AEE80000, v30, v31, "PlaybackSync: applying transport control state during reload:%@", v32, 0xCu);
          outlined destroy of NSObject?(v33, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          MEMORY[0x1B2715BA0](v33, -1, -1);
          MEMORY[0x1B2715BA0](v32, -1, -1);
        }

        if ((*(*v8 + 400))())
        {
          v36 = v35;
          v37 = swift_getObjectType();
          (*(v36 + 8))(v29, v37, v36);
          swift_unknownObjectRelease();
        }

        $defer #1 () in closure #1 in PlaybackSyncer.reloadTransportControlStateForItem(itemIdentifier:completion:)(a4);
        swift_unknownObjectRelease();
      }
    }

    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_1AEE80000, v38, v39, "PlaybackSync: Could not find state for this item identifier", v40, 2u);
      MEMORY[0x1B2715BA0](v40, -1, -1);
    }

    $defer #1 () in closure #1 in PlaybackSyncer.reloadTransportControlStateForItem(itemIdentifier:completion:)(a4);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t $defer #1 () in closure #1 in PlaybackSyncer.reloadTransportControlStateForItem(itemIdentifier:completion:)(uint64_t (*a1)(void))
{
  if (one-time initialization token for playback != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.playback);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1AEE80000, v3, v4, "PlaybackSync: reloadTransportControlStateForItem finished", v5, 2u);
    MEMORY[0x1B2715BA0](v5, -1, -1);
  }

  return a1();
}

uint64_t PlaybackSyncer.sendCatchupRequestMessage()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v7 = *(v1 + 96);
  *v6 = v7;
  (*(v3 + 104))(v6, *MEMORY[0x1E69E8020], v2);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v6, v2);
  if (v7)
  {
    if (one-time initialization token for playback == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Logger.playback);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1AEE80000, v10, v11, "PlaybackSync: Catchup needed. Broadcasting catchup request.", v12, 2u);
    MEMORY[0x1B2715BA0](v12, -1, -1);
  }

  v15[0] = 2;
  v16 = xmmword_1AF00DBA0;
  PlaybackSyncer.sendMessage(_:to:)(v15, 0);
  return outlined consume of Data._Representation(0, 0xC000000000000000);
}

void PlaybackSyncer.receiveMessage(message:from:)(unsigned __int8 *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = (&v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = *a1;
  v16 = *(a1 + 1);
  v38 = *(a1 + 2);
  v17 = *(v3 + 96);
  *v15 = v17;
  (*(v12 + 104))(v15, *MEMORY[0x1E69E8020], v11);
  v18 = v17;
  LOBYTE(v17) = _dispatchPreconditionTest(_:)();
  (*(v12 + 8))(v15, v11);
  if (v17)
  {
    if (one-time initialization token for playback == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static Logger.playback);
  v20 = *(v7 + 16);
  v36 = a2;
  v20(v10, a2, v6);
  v21 = v38;
  outlined copy of Data._Representation(v16, v38);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  v24 = os_log_type_enabled(v22, v23);
  v35 = v16;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v34 = v3;
    v26 = v25;
    v27 = swift_slowAlloc();
    v39 = v27;
    *v26 = 134218242;
    v28 = v16;
    v29 = v37;
    *(v26 + 4) = v37;
    outlined consume of Data._Representation(v28, v21);
    *(v26 + 12) = 2080;
    _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v30 = dispatch thunk of CustomStringConvertible.description.getter();
    v32 = v31;
    (*(v7 + 8))(v10, v6);
    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, &v39);
    v21 = v38;

    *(v26 + 14) = v33;
    _os_log_impl(&dword_1AEE80000, v22, v23, "PlaybackSync: Received message of type:%ld from participant:%s", v26, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x1B2715BA0](v27, -1, -1);
    MEMORY[0x1B2715BA0](v26, -1, -1);
  }

  else
  {
    outlined consume of Data._Representation(v16, v21);

    (*(v7 + 8))(v10, v6);
    v29 = v37;
  }

  if (v29 > 1)
  {
    if (v29 == 2)
    {
      PlaybackSyncer.receiveCatchupRequestMessage(from:)(v36);
    }

    else
    {
      PlaybackSyncer.receiveCatchupResponseMessage(payload:from:)(v35, v21, v36);
    }
  }

  else if (v29)
  {
    PlaybackSyncer.receiveTransportControlMessage(payload:)();
  }

  else
  {
    PlaybackSyncer.receiveParticipantMessage(payload:from:)(v35);
  }
}

uint64_t PlaybackSyncer.receiveParticipantMessage(payload:from:)(uint64_t *a1)
{
  v2 = v1;
  v63 = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = (&v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = v2[12];
  *v13 = v14;
  (*(v10 + 104))(v13, *MEMORY[0x1E69E8020], v9);
  v15 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  v16 = (*(v10 + 8))(v13, v9);
  if ((v14 & 1) == 0)
  {
    __break(1u);
LABEL_22:
    swift_once();
    goto LABEL_4;
  }

  result = (*(*v2 + 424))(v16);
  if (!result)
  {
    goto LABEL_20;
  }

  v59 = v18;
  if (one-time initialization token for playback != -1)
  {
    goto LABEL_22;
  }

LABEL_4:
  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static Logger.playback);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v58 = a1;
    v23 = v8;
    v24 = v4;
    v25 = v5;
    v26 = v22;
    *v22 = 0;
    _os_log_impl(&dword_1AEE80000, v20, v21, "PlaybackSync: Receiving ParticipantState", v22, 2u);
    v27 = v26;
    v5 = v25;
    v4 = v24;
    v8 = v23;
    MEMORY[0x1B2715BA0](v27, -1, -1);
  }

  v28 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v60 = 0;
  v30 = [v28 JSONObjectWithData:isa options:0 error:&v60];

  v31 = v60;
  if (v30)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined init with take of Any(v61, v62);
    outlined init with copy of Any(v62, v61);
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSDictionary, 0x1E695DF20);
    if (swift_dynamicCast())
    {
      v32 = v60;
      if ((*(*v2 + 400))())
      {
        v34 = v33;
        ObjectType = swift_getObjectType();
        (*(v34 + 16))(v32, ObjectType, v34);
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRetain();
      v36 = v32;
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.default.getter();

      swift_unknownObjectRelease();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        *&v61[0] = v58;
        *v39 = 136315394;
        v40 = swift_getObjectType();
        (*(v59 + 72))(v40);
        _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
        v41 = dispatch thunk of CustomStringConvertible.description.getter();
        v43 = v42;
        (*(v5 + 8))(v8, v4);
        v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v43, v61);

        *(v39 + 4) = v44;
        *(v39 + 12) = 2112;
        *(v39 + 14) = v36;
        v45 = v57;
        *v57 = v36;
        v46 = v36;
        _os_log_impl(&dword_1AEE80000, v37, v38, "PlaybackSync: Received new participant state for group session %s: %@", v39, 0x16u);
        outlined destroy of NSObject?(v45, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x1B2715BA0](v45, -1, -1);
        v47 = v58;
        __swift_destroy_boxed_opaque_existential_0(v58);
        MEMORY[0x1B2715BA0](v47, -1, -1);
        MEMORY[0x1B2715BA0](v39, -1, -1);
        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }

    else
    {
      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        *v55 = 0;
        _os_log_impl(&dword_1AEE80000, v53, v54, "PlaybackSync: Could not cast participant state to dictionary.", v55, 2u);
        MEMORY[0x1B2715BA0](v55, -1, -1);
        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }

    result = __swift_destroy_boxed_opaque_existential_0(v62);
  }

  else
  {
    v48 = v31;
    v49 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_1AEE80000, v50, v51, "PlaybackSync: Could not deserialize participant state.", v52, 2u);
      MEMORY[0x1B2715BA0](v52, -1, -1);
    }

    result = swift_unknownObjectRelease();
  }

LABEL_20:
  v56 = *MEMORY[0x1E69E9840];
  return result;
}

void PlaybackSyncer.receiveTransportControlMessage(payload:)()
{
  v1 = v0;
  v77 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = (&v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = v1[12];
  *v11 = v12;
  (*(v8 + 104))(v11, *MEMORY[0x1E69E8020], v7);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  v14 = (*(v8 + 8))(v11, v7);
  if ((v12 & 1) == 0)
  {
    __break(1u);
LABEL_36:
    swift_once();
    goto LABEL_4;
  }

  if (!(*(*v1 + 424))(v14))
  {
    goto LABEL_34;
  }

  v70 = v15;
  if (one-time initialization token for playback != -1)
  {
    goto LABEL_36;
  }

LABEL_4:
  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Logger.playback);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v69 = v1;
    v20 = v3;
    v21 = v19;
    *v19 = 0;
    _os_log_impl(&dword_1AEE80000, v17, v18, "PlaybackSync: Receiving TransportControlState", v19, 2u);
    v22 = v21;
    v3 = v20;
    v1 = v69;
    MEMORY[0x1B2715BA0](v22, -1, -1);
  }

  v23 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  *&v73 = 0;
  v25 = [v23 JSONObjectWithData:isa options:0 error:&v73];

  v26 = v73;
  if (v25)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined init with take of Any(v75, v76);
    outlined init with copy of Any(v76, v75);
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSDictionary, 0x1E695DF20);
    if (swift_dynamicCast())
    {
      v27 = v73;
      if ((*(*v1 + 400))())
      {
        v29 = v28;
        ObjectType = swift_getObjectType();
        (*(v29 + 8))(v27, ObjectType, v29);
        swift_unknownObjectRelease();
      }

      *&v73 = *MEMORY[0x1E6987980];
      v31 = v73;
      type metadata accessor for AVPlaybackCoordinationTransportControlStateKey(0);
      v32 = v31;
      v33 = [v27 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
      swift_unknownObjectRelease();
      if (v33)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v73 = 0u;
        v74 = 0u;
      }

      v75[0] = v73;
      v75[1] = v74;
      if (*(&v74 + 1))
      {
        if (swift_dynamicCast())
        {
          v42 = v72;
          v68 = v3;
          v69 = v71;
          v43 = *(*v1 + 248);
          v44 = v27;
          v45 = v43(v75);
          v47 = v46;
          v48 = *v46;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v73 = *v47;
          *v47 = 0x8000000000000000;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v44, v69, v42, isUniquelyReferenced_nonNull_native);

          *v47 = v73;
          v45(v75, 0);
          v50 = v44;
          swift_unknownObjectRetain();
          v51 = Logger.logObject.getter();
          v52 = static os_log_type_t.default.getter();

          swift_unknownObjectRelease();
          if (os_log_type_enabled(v51, v52))
          {
            v53 = swift_slowAlloc();
            v67 = swift_slowAlloc();
            v69 = swift_slowAlloc();
            *&v75[0] = v69;
            *v53 = 136315394;
            v54 = swift_getObjectType();
            (*(v70 + 72))(v54);
            _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
            v55 = dispatch thunk of CustomStringConvertible.description.getter();
            v57 = v56;
            (*(v68 + 8))(v6, v2);
            v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v57, v75);

            *(v53 + 4) = v58;
            *(v53 + 12) = 2112;
            *(v53 + 14) = v50;
            v59 = v67;
            *v67 = v50;
            v60 = v50;
            _os_log_impl(&dword_1AEE80000, v51, v52, "PlaybackSync: Received new transport control state for group session %s: %@", v53, 0x16u);
            outlined destroy of NSObject?(v59, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
            MEMORY[0x1B2715BA0](v59, -1, -1);
            v61 = v69;
            __swift_destroy_boxed_opaque_existential_0(v69);
            MEMORY[0x1B2715BA0](v61, -1, -1);
            MEMORY[0x1B2715BA0](v53, -1, -1);
          }

          if (v1[9])
          {
            __swift_destroy_boxed_opaque_existential_0(v76);
            swift_unknownObjectRelease();

            goto LABEL_34;
          }

          PlaybackSyncer.useExistingState()();

          goto LABEL_32;
        }
      }

      else
      {
        outlined destroy of NSObject?(v75, &_sypSgMd, &_sypSgMR);
      }

      v39 = Logger.logObject.getter();
      v62 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v39, v62))
      {
        v63 = swift_slowAlloc();
        *v63 = 0;
        _os_log_impl(&dword_1AEE80000, v39, v62, "PlaybackSync: Could not decode item identifier in receiveTransportControlMessage.", v63, 2u);
        MEMORY[0x1B2715BA0](v63, -1, -1);
        v64 = v27;
      }

      else
      {
        v64 = v39;
        v39 = v27;
      }
    }

    else
    {
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v39, v40))
      {

LABEL_32:
        swift_unknownObjectRelease();
        goto LABEL_33;
      }

      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_1AEE80000, v39, v40, "PlaybackSync: Could not cast transport control state to dictionary.", v41, 2u);
      MEMORY[0x1B2715BA0](v41, -1, -1);
    }

    swift_unknownObjectRelease();

LABEL_33:
    __swift_destroy_boxed_opaque_existential_0(v76);
    goto LABEL_34;
  }

  v34 = v26;
  v35 = _convertNSErrorToError(_:)();

  swift_willThrow();
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&dword_1AEE80000, v36, v37, "PlaybackSync: Could not deserialize transport control state.", v38, 2u);
    MEMORY[0x1B2715BA0](v38, -1, -1);
  }

  swift_unknownObjectRelease();
LABEL_34:
  v65 = *MEMORY[0x1E69E9840];
}

uint64_t PlaybackSyncer.useExistingState()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + 96);
  *v6 = v7;
  (*(v3 + 104))(v6, *MEMORY[0x1E69E8020], v2);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v6, v2);
  if (v7)
  {
    if (one-time initialization token for playback == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Logger.playback);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1AEE80000, v10, v11, "PlaybackSync: Using current state", v12, 2u);
    MEMORY[0x1B2715BA0](v12, -1, -1);
  }

  *(v1 + 72) = 1;
  if (*(v1 + 80))
  {
    v13 = *(v1 + 80);

    dispatch thunk of DispatchWorkItem.cancel()();

    v14 = *(v1 + 80);
  }

  *(v1 + 80) = 0;

  swift_beginAccess();
  v15 = *(v1 + 88);
  *(v1 + 88) = MEMORY[0x1E69E7CD0];

  v16 = *(v1 + 56);
  if (v16)
  {
    v17 = *(v1 + 64);

    v16(v18);
    outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v16);
    v19 = *(v1 + 56);
  }

  else
  {
    v19 = 0;
  }

  v20 = *(v1 + 64);
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  return outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v19);
}

uint64_t PlaybackSyncer.receiveCatchupRequestMessage(from:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = (v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v2 + 96);
  *v13 = v14;
  (*(v10 + 104))(v13, *MEMORY[0x1E69E8020], v9);
  v15 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  (*(v10 + 8))(v13, v9);
  if (v14)
  {
    if (one-time initialization token for playback == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Logger.playback);
  (*(v5 + 16))(v8, a1, v4);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v35[1] = v2;
    v20 = v19;
    v21 = swift_slowAlloc();
    v35[0] = a1;
    v22 = v21;
    v36 = v21;
    *v20 = 136315138;
    _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v24;
    (*(v5 + 8))(v8, v4);
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, &v36);

    *(v20 + 4) = v26;
    _os_log_impl(&dword_1AEE80000, v17, v18, "PlaybackSync: Catchup response requested from:%s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    v27 = v22;
    a1 = v35[0];
    MEMORY[0x1B2715BA0](v27, -1, -1);
    MEMORY[0x1B2715BA0](v20, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }

  PlaybackSyncer.handleWaitingFor(participant:)(a1);
  PlaybackSyncer.generateCatchupResponseMessage()(&v36);
  v28 = v36;
  v29 = v37;
  v30 = v38;
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_1AEE80000, v31, v32, "PlaybackSync: Sending catchup response!", v33, 2u);
    MEMORY[0x1B2715BA0](v33, -1, -1);
  }

  LOBYTE(v36) = v28;
  v37 = v29;
  v38 = v30;
  PlaybackSyncer.sendMessage(_:to:)(&v36, 0);
  return outlined consume of Data._Representation(v29, v30);
}

uint64_t PlaybackSyncer.receiveCatchupResponseMessage(payload:from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v51 = a1;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 1);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = (v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(v4 + 96);
  *v16 = v17;
  (*(v13 + 104))(v16, *MEMORY[0x1E69E8020], v12);
  v18 = v17;
  LOBYTE(v17) = _dispatchPreconditionTest(_:)();
  (*(v13 + 8))(v16, v12);
  if ((v17 & 1) == 0)
  {
    goto LABEL_29;
  }

  v49[1] = a2;
  if (one-time initialization token for playback != -1)
  {
    goto LABEL_30;
  }

  while (1)
  {
    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Logger.playback);
    v20 = *(v8 + 16);
    v50 = a3;
    v20(v11, a3, v7);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v49[0] = v4;
      v24 = v23;
      v25 = swift_slowAlloc();
      v52 = v25;
      *v24 = 136315138;
      _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      v26 = dispatch thunk of CustomStringConvertible.description.getter();
      v28 = v27;
      (*(v8 + 8))(v11, v7);
      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, &v52);

      *(v24 + 4) = v29;
      _os_log_impl(&dword_1AEE80000, v21, v22, "PlaybackSync: Receiving catchup response from:%s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x1B2715BA0](v25, -1, -1);
      v30 = v24;
      v4 = v49[0];
      MEMORY[0x1B2715BA0](v30, -1, -1);
    }

    else
    {

      (*(v8 + 8))(v11, v7);
    }

    v31 = *(v4 + 40);
    lazy protocol witness table accessor for type PlaybackSyncer.CatchupState and conformance PlaybackSyncer.CatchupState();
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
    v32 = v50;
    v7 = v52;
    v33 = v53;
    v34 = v54;
    if (v53 >> 60 != 15)
    {
      outlined copy of Data._Representation(v52, v53);
      PlaybackSyncer.receiveParticipantMessage(payload:from:)(v7);
      outlined consume of Data?(v7, v33);
    }

    if (!*(v34 + 16))
    {
      break;
    }

    v8 = v34 + 64;
    v35 = 1 << *(v34 + 32);
    v36 = -1;
    if (v35 < 64)
    {
      v36 = ~(-1 << v35);
    }

    v4 = v36 & *(v34 + 64);
    v11 = ((v35 + 63) >> 6);

    a3 = 0;
    while (v4)
    {
      v37 = a3;
LABEL_17:
      v38 = __clz(__rbit64(v4));
      v4 &= v4 - 1;
      v39 = (*(v34 + 56) + ((v37 << 10) | (16 * v38)));
      v40 = *v39;
      v41 = v39[1];
      outlined copy of Data._Representation(*v39, v41);
      PlaybackSyncer.receiveTransportControlMessage(payload:)();
      outlined consume of Data._Representation(v40, v41);
    }

    while (1)
    {
      v37 = a3 + 1;
      if (__OFADD__(a3, 1))
      {
        break;
      }

      if (v37 >= v11)
      {
        outlined consume of Data?(v7, v33);
      }

      v4 = *(v8 + 8 * v37);
      ++a3;
      if (v4)
      {
        a3 = v37;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    swift_once();
  }

  v43 = *(v4 + 72);
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.default.getter();
  v46 = os_log_type_enabled(v44, v45);
  if (v43 == 1)
  {
    if (v46)
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_1AEE80000, v44, v45, "PlaybackSync: Received empty catchup but have already received non-empty catchup from somebody else. Returning.", v47, 2u);
      MEMORY[0x1B2715BA0](v47, -1, -1);
    }
  }

  else
  {
    if (v46)
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_1AEE80000, v44, v45, "PlaybackSync: Received empty catchup", v48, 2u);
      MEMORY[0x1B2715BA0](v48, -1, -1);
    }

    PlaybackSyncer.handleWaitingFor(participant:)(v32);
  }

  outlined consume of Data?(v7, v33);
}

void PlaybackSyncer.handleWaitingFor(participant:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v40 - v6;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(*(v1 + 88) + 16))
  {
    if (one-time initialization token for playback != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    v14 = __swift_project_value_buffer(v13, static Logger.playback);
    (*(v9 + 16))(v12, a1, v8);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    v17 = os_log_type_enabled(v15, v16);
    v42 = v8;
    if (v17)
    {
      v18 = swift_slowAlloc();
      v40[1] = v14;
      v19 = v18;
      v20 = swift_slowAlloc();
      v41 = a1;
      v21 = v20;
      v43[0] = v20;
      *v19 = 136315138;
      _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      v22 = dispatch thunk of CustomStringConvertible.description.getter();
      v23 = v8;
      v25 = v24;
      (*(v9 + 8))(v12, v23);
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v25, v43);

      *(v19 + 4) = v26;
      _os_log_impl(&dword_1AEE80000, v15, v16, "PlaybackSync: Removing %s from waiting for empty catchup response list", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      v27 = v21;
      a1 = v41;
      MEMORY[0x1B2715BA0](v27, -1, -1);
      MEMORY[0x1B2715BA0](v19, -1, -1);
    }

    else
    {

      (*(v9 + 8))(v12, v8);
    }

    swift_beginAccess();
    specialized Set._Variant.remove(_:)(a1, v7);
    outlined destroy of NSObject?(v7, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    swift_endAccess();
    if (*(*(v2 + 88) + 16))
    {

      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v43[0] = v31;
        *v30 = 136315138;
        v32 = *(v2 + 88);
        _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);

        v33 = Set.description.getter();
        v35 = v34;

        v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v35, v43);

        *(v30 + 4) = v36;
        _os_log_impl(&dword_1AEE80000, v28, v29, "PlaybackSync: Still waiting for empty catchup responses from:%s", v30, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v31);
        MEMORY[0x1B2715BA0](v31, -1, -1);
        MEMORY[0x1B2715BA0](v30, -1, -1);
      }
    }

    else
    {
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_1AEE80000, v37, v38, "PlaybackSync: All existing participants replied with empty catchup responses or left, so using existing state", v39, 2u);
        MEMORY[0x1B2715BA0](v39, -1, -1);
      }

      PlaybackSyncer.useExistingState()();
    }
  }
}

uint64_t PlaybackSyncer.generateCatchupResponseMessage()@<X0>(_BYTE *a1@<X8>)
{
  v3 = v1;
  v55[3] = *MEMORY[0x1E69E9840];
  v5 = type metadata accessor for String.Encoding();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = (&v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = v3[12];
  *v11 = v12;
  (*(v8 + 104))(v11, *MEMORY[0x1E69E8020], v7);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  (*(v8 + 8))(v11, v7);
  if (v12)
  {
    if (one-time initialization token for playback == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Logger.playback);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_1AEE80000, v15, v16, "PlaybackSync: Generating catchup response", v17, 2u);
    MEMORY[0x1B2715BA0](v17, -1, -1);
  }

  v18 = (*(*v3 + 208))();
  v53 = a1;
  if (!v18)
  {
    goto LABEL_17;
  }

  v19 = v18;
  v20 = objc_opt_self();
  v55[0] = 0;
  v21 = [v20 dataWithJSONObject:v19 options:0 error:v55];
  v22 = v55[0];
  if (!v21)
  {
    v34 = v22;
    v35 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v54 = 0;
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_1AEE80000, v36, v37, "PlaybackSync: Could not serialize participant state.", v38, 2u);
      MEMORY[0x1B2715BA0](v38, -1, -1);
    }

LABEL_17:
    v23 = 0;
    v25 = 0xF000000000000000;
    goto LABEL_18;
  }

  v23 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  outlined copy of Data._Representation(v23, v25);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  outlined consume of Data._Representation(v23, v25);
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v55[0] = v52;
    *v28 = 136315138;
    static String.Encoding.utf8.getter();
    v29 = String.init(data:encoding:)();
    if (v30)
    {
      v31 = v30;
    }

    else
    {
      v29 = 0x64696C61766E693CLL;
      v31 = 0xE90000000000003ELL;
    }

    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v31, v55);

    *(v28 + 4) = v32;
    _os_log_impl(&dword_1AEE80000, v26, v27, "PlaybackSync: attaching participant state to catchup: %s", v28, 0xCu);
    v33 = v52;
    __swift_destroy_boxed_opaque_existential_0(v52);
    MEMORY[0x1B2715BA0](v33, -1, -1);
    MEMORY[0x1B2715BA0](v28, -1, -1);
  }

LABEL_18:
  if ((*(*v3 + 400))())
  {
    v40 = v39;
    ObjectType = swift_getObjectType();
    v42 = (*(v40 + 32))(ObjectType, v40);
    swift_unknownObjectRelease();
  }

  else
  {
    v42 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10Foundation4DataVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  }

  v43 = v3[4];
  v55[0] = v23;
  v55[1] = v25;
  v55[2] = v42;
  lazy protocol witness table accessor for type PlaybackSyncer.CatchupState and conformance PlaybackSyncer.CatchupState();
  v44 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  if (v2)
  {
    outlined consume of Data?(v23, v25);
  }

  else
  {
    v47 = v44;
    v48 = v45;
    outlined consume of Data?(v23, v25);

    v49 = v53;
    *v53 = 3;
    *(v49 + 1) = v47;
    *(v49 + 2) = v48;
  }

  v50 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t jsonToString(_:)()
{
  v0 = type metadata accessor for String.Encoding();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  static String.Encoding.utf8.getter();
  result = String.init(data:encoding:)();
  if (!v3)
  {
    return 0x64696C61766E693CLL;
  }

  return result;
}

uint64_t PlaybackSyncer.scheduleTransportStateTakeoverTimer()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchTime();
  v49 = *(v2 - 8);
  v3 = *(v49 + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v47 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v48 = &v42 - v6;
  v50 = type metadata accessor for DispatchTimeInterval();
  v7 = *(v50 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v50);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = type metadata accessor for DispatchPredicate();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = (&v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(v1 + 12);
  *v17 = v18;
  (*(v14 + 104))(v17, *MEMORY[0x1E69E8020], v13);
  v46 = v18;
  LOBYTE(v18) = _dispatchPreconditionTest(_:)();
  v19 = (*(v14 + 8))(v17, v13);
  if ((v18 & 1) == 0)
  {
    __break(1u);
    goto LABEL_18;
  }

  v45 = v2;
  result = (*(*v1 + 424))(v19);
  if (!result)
  {
    return result;
  }

  if (*(v1 + 10))
  {
    if (one-time initialization token for playback == -1)
    {
LABEL_5:
      v22 = type metadata accessor for Logger();
      __swift_project_value_buffer(v22, static Logger.playback);
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_1AEE80000, v23, v24, "PlaybackSync: Attempting to schedule transport state takeover when one already exists.", v25, 2u);
        MEMORY[0x1B2715BA0](v25, -1, -1);
      }

      return swift_unknownObjectRelease();
    }

LABEL_18:
    swift_once();
    goto LABEL_5;
  }

  v44 = v21;
  if (one-time initialization token for playback != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  __swift_project_value_buffer(v26, static Logger.playback);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_1AEE80000, v27, v28, "PlaybackSync: Scheduling takeover countdown", v29, 2u);
    MEMORY[0x1B2715BA0](v29, -1, -1);
  }

  aBlock[4] = partial apply for closure #1 in PlaybackSyncer.scheduleTransportStateTakeoverTimer();
  aBlock[5] = v1;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_104;
  v43 = _Block_copy(aBlock);
  v51 = MEMORY[0x1E69E7CC0];
  _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v30 = type metadata accessor for DispatchWorkItem();
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  swift_allocObject();
  v43 = DispatchWorkItem.init(flags:block:)();

  ObjectType = swift_getObjectType();
  (*(v44 + 80))(ObjectType);
  CurrentValueSubject.value.getter();

  if (LOBYTE(aBlock[0]))
  {
    v34 = &OBJC_IVAR____TtC15GroupActivities14PlaybackSyncer_defaultTransportStateTakeoverInterval;
  }

  else
  {
    v34 = &OBJC_IVAR____TtC15GroupActivities14PlaybackSyncer_initiatorTransportStateTakeoverInterval;
  }

  (*(v7 + 16))(v10, &v1[*v34], v50);
  v35 = v47;
  static DispatchTime.now()();
  v36 = v48;
  MEMORY[0x1B2713FA0](v35, v10);
  v37 = *(v49 + 8);
  v38 = v45;
  v37(v35, v45);
  v39 = v10;
  v40 = v43;
  MEMORY[0x1B2714740](v36, v43);
  swift_unknownObjectRelease();
  v37(v36, v38);
  (*(v7 + 8))(v39, v50);
  v41 = *(v1 + 10);
  *(v1 + 10) = v40;
}

uint64_t closure #1 in PlaybackSyncer.scheduleTransportStateTakeoverTimer()(uint64_t result)
{
  if ((*(result + 72) & 1) == 0)
  {
    if (one-time initialization token for playback != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, static Logger.playback);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1AEE80000, v2, v3, "PlaybackSync: Transport state takeover timer has expired. Using existing state.", v4, 2u);
      MEMORY[0x1B2715BA0](v4, -1, -1);
    }

    return PlaybackSyncer.useExistingState()();
  }

  return result;
}

uint64_t PlaybackSyncer.sendMessage(_:to:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v25[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v11 = *a1;
  v12 = *(a1 + 1);
  v13 = *(a1 + 2);
  v14 = v3[12];
  *v10 = v14;
  (*(v7 + 104))(v10, *MEMORY[0x1E69E8020], v6);
  v15 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v10, v6);
  if (v14)
  {
    if (one-time initialization token for playback == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Logger.playback);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_1AEE80000, v17, v18, "PlaybackSync: Sending message.", v19, 2u);
    MEMORY[0x1B2715BA0](v19, -1, -1);
  }

  result = (*(*v3 + 424))();
  if (result)
  {
    v22 = v21;
    ObjectType = swift_getObjectType();
    v25[0] = v11;
    v26 = v12;
    v27 = v13;
    (*(v22 + 8))(v25, a2, ObjectType, v22);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t PlaybackSyncer.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 48);

  v5 = *(v0 + 64);
  outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(*(v0 + 56));
  v6 = *(v0 + 80);

  v7 = *(v0 + 88);

  outlined destroy of weak SystemCoordinatorHostDelegate?(v0 + 112);
  outlined destroy of weak SystemCoordinatorHostDelegate?(v0 + 128);
  outlined destroy of weak SystemCoordinatorHostDelegate?(v0 + 144);
  v8 = OBJC_IVAR____TtC15GroupActivities14PlaybackSyncer_defaultTransportStateTakeoverInterval;
  v9 = type metadata accessor for DispatchTimeInterval();
  v10 = *(*(v9 - 8) + 8);
  v10(v0 + v8, v9);
  v10(v0 + OBJC_IVAR____TtC15GroupActivities14PlaybackSyncer_initiatorTransportStateTakeoverInterval, v9);
  return v0;
}

uint64_t PlaybackSyncer.__deallocating_deinit()
{
  PlaybackSyncer.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t PlaybackSyncer.AVCoordinatorDelegateBridge.localParticipantID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCC15GroupActivities14PlaybackSyncer27AVCoordinatorDelegateBridge_localParticipantID;
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PlaybackSyncer.AVCoordinatorDelegateBridge.delegate.getter()
{
  v1 = v0 + OBJC_IVAR____TtCC15GroupActivities14PlaybackSyncer27AVCoordinatorDelegateBridge_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v3 = *(v1 + 8);
  return result;
}

uint64_t PlaybackSyncer.AVCoordinatorDelegateBridge.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtCC15GroupActivities14PlaybackSyncer27AVCoordinatorDelegateBridge_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*PlaybackSyncer.AVCoordinatorDelegateBridge.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtCC15GroupActivities14PlaybackSyncer27AVCoordinatorDelegateBridge_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return SystemCoordinatorHost.delegate.modify;
}

id PlaybackSyncer.AVCoordinatorDelegateBridge.init(localParticipantID:delegate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();

  return specialized PlaybackSyncer.AVCoordinatorDelegateBridge.init(localParticipantID:delegate:)(a1, a2, v3, ObjectType, a3);
}

uint64_t PlaybackSyncer.AVCoordinatorDelegateBridge.localParticipantUUID(for:)@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for playback != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.playback);
  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315138;
    type metadata accessor for UUID();
    _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v16);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_1AEE80000, v5, v6, "PlaybackSync: AVPlaybackCoordinator asked for local participant UUID:%s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1B2715BA0](v8, -1, -1);
    MEMORY[0x1B2715BA0](v7, -1, -1);
  }

  v12 = OBJC_IVAR____TtCC15GroupActivities14PlaybackSyncer27AVCoordinatorDelegateBridge_localParticipantID;
  v13 = type metadata accessor for UUID();
  v14 = *(*(v13 - 8) + 16);

  return v14(a1, &v4[v12], v13);
}

Swift::Void __swiftcall PlaybackSyncer.AVCoordinatorDelegateBridge.playbackCoordinator(_:broadcastLocalParticipantStateDictionary:)(AVPlaybackCoordinator _, Swift::OpaquePointer broadcastLocalParticipantStateDictionary)
{
  if ((*((*MEMORY[0x1E69E7D40] & *v2) + 0x60))(_.super.isa))
  {
    v4 = v3;
    ObjectType = swift_getObjectType();
    type metadata accessor for AVPlaybackCoordinationParticipantStateKey(0);
    _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type AVPlaybackCoordinationParticipantStateKey and conformance AVPlaybackCoordinationParticipantStateKey, type metadata accessor for AVPlaybackCoordinationParticipantStateKey);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    (*(v4 + 8))(isa, ObjectType, v4);

    swift_unknownObjectRelease();
  }
}

Swift::Void __swiftcall PlaybackSyncer.AVCoordinatorDelegateBridge.playbackCoordinator(_:broadcastTransportControlStateDictionary:forItemWithIdentifier:)(AVPlaybackCoordinator _, Swift::OpaquePointer broadcastTransportControlStateDictionary, Swift::String forItemWithIdentifier)
{
  object = forItemWithIdentifier._object;
  countAndFlagsBits = forItemWithIdentifier._countAndFlagsBits;
  if ((*((*MEMORY[0x1E69E7D40] & *v3) + 0x60))(_.super.isa))
  {
    v7 = v6;
    ObjectType = swift_getObjectType();
    type metadata accessor for AVPlaybackCoordinationTransportControlStateKey(0);
    _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type AVPlaybackCoordinationTransportControlStateKey and conformance AVPlaybackCoordinationTransportControlStateKey, type metadata accessor for AVPlaybackCoordinationTransportControlStateKey);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    (*(v7 + 16))(countAndFlagsBits, object, isa, ObjectType, v7);

    swift_unknownObjectRelease();
  }
}

uint64_t PlaybackSyncer.AVCoordinatorDelegateBridge.playbackCoordinator(_:reloadTransportControlStateForItemWithIdentifier:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = (*((*MEMORY[0x1E69E7D40] & *v5) + 0x60))();
  if (result)
  {
    v12 = v11;
    ObjectType = swift_getObjectType();
    (*(v12 + 24))(a2, a3, a4, a5, ObjectType, v12);

    return swift_unknownObjectRelease();
  }

  return result;
}

id PlaybackSyncer.AVCoordinatorDelegateBridge.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PlaybackSyncer.AVCoordinatorDelegateBridge.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlaybackSyncer.AVCoordinatorDelegateBridge(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t closure #1 in PlaybackSyncer.AVCoordinatorDelegateBridge.playbackCoordinator(_:promptForLeaveOrEndSessionAllowingCancellation:completionHandler:)(char a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v21 = *(v8 - 8);
  v9 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v12 = *(v20 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  v16 = static OS_dispatch_queue.main.getter();
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 17) = a2;
  *(v17 + 24) = a3;
  *(v17 + 32) = a4;
  aBlock[4] = partial apply for closure #1 in closure #1 in PlaybackSyncer.AVCoordinatorDelegateBridge.playbackCoordinator(_:promptForLeaveOrEndSessionAllowingCancellation:completionHandler:);
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_113;
  v18 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27147B0](0, v15, v11, v18);
  _Block_release(v18);

  (*(v21 + 8))(v11, v8);
  return (*(v12 + 8))(v15, v20);
}

uint64_t closure #1 in closure #1 in PlaybackSyncer.AVCoordinatorDelegateBridge.playbackCoordinator(_:promptForLeaveOrEndSessionAllowingCancellation:completionHandler:)(char a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (one-time initialization token for playback != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.playback);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 136315394;
    v10 = String.init<A>(reflecting:)();
    v12 = a3;
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v18);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2080;
    v14 = String.init<A>(reflecting:)();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v18);
    a3 = v12;

    *(v8 + 14) = v16;
    _os_log_impl(&dword_1AEE80000, v6, v7, "Calling playback coordinator dismissal callback with result: %s promptForLeaveOrEndSessionAllowingCancellation%s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v9, -1, -1);
    MEMORY[0x1B2715BA0](v8, -1, -1);
  }

  return a3(a1 & 1);
}

uint64_t PlaybackSyncer.CatchupState.localParticipantState.setter(uint64_t a1, uint64_t a2)
{
  result = outlined consume of Data?(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t PlaybackSyncer.CatchupState.transportControlStates.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance PlaybackSyncer.CatchupState.CodingKeys()
{
  if (*v0)
  {
    result = 0xD000000000000016;
  }

  else
  {
    result = 0xD000000000000015;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PlaybackSyncer.CatchupState.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000015 && 0x80000001AF01B120 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001AF01B140 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PlaybackSyncer.CatchupState.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PlaybackSyncer.CatchupState.CodingKeys and conformance PlaybackSyncer.CatchupState.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PlaybackSyncer.CatchupState.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PlaybackSyncer.CatchupState.CodingKeys and conformance PlaybackSyncer.CatchupState.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PlaybackSyncer.CatchupState.encode(to:)(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v16 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15GroupActivities14PlaybackSyncerC12CatchupStateV10CodingKeys33_FC0C2000094293835FDF4CBE986D167FLLOGMd, &_ss22KeyedEncodingContainerVy15GroupActivities14PlaybackSyncerC12CatchupStateV10CodingKeys33_FC0C2000094293835FDF4CBE986D167FLLOGMR);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v15 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PlaybackSyncer.CatchupState.CodingKeys and conformance PlaybackSyncer.CatchupState.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = a2;
  v18 = a3;
  v19 = 0;
  outlined copy of Data?(a2, a3);
  lazy protocol witness table accessor for type Data and conformance Data();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  outlined consume of Data?(v17, v18);
  if (!v4)
  {
    v17 = v16;
    v19 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS10Foundation4DataVGMd, &_sSDySS10Foundation4DataVGMR);
    lazy protocol witness table accessor for type [String : Data] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : Data] and conformance <> [A : B], lazy protocol witness table accessor for type Data and conformance Data);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v9 + 8))(v12, v8);
}

uint64_t PlaybackSyncer.CatchupState.init(from:)(uint64_t *a1)
{
  result = specialized PlaybackSyncer.CatchupState.init(from:)(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t protocol witness for Decodable.init(from:) in conformance PlaybackSyncer.CatchupState@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized PlaybackSyncer.CatchupState.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PlaybackSyncer.Message.MessageType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1B2715040](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PlaybackSyncer.Message.MessageType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1B2715040](v1);
  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance PlaybackSyncer.Message.MessageType@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized PlaybackSyncer.Message.MessageType.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t PlaybackSyncer.Message.payload.getter()
{
  v1 = *(v0 + 8);
  outlined copy of Data._Representation(v1, *(v0 + 16));
  return v1;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance PlaybackSyncer.Message.CodingKeys()
{
  if (*v0)
  {
    result = 0x64616F6C796170;
  }

  else
  {
    result = 1701869940;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PlaybackSyncer.Message.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x64616F6C796170 && a2 == 0xE700000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PlaybackSyncer.Message.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PlaybackSyncer.Message.CodingKeys and conformance PlaybackSyncer.Message.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PlaybackSyncer.Message.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PlaybackSyncer.Message.CodingKeys and conformance PlaybackSyncer.Message.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PlaybackSyncer.Message.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15GroupActivities14PlaybackSyncerC7MessageV10CodingKeys33_FC0C2000094293835FDF4CBE986D167FLLOGMd, &_ss22KeyedEncodingContainerVy15GroupActivities14PlaybackSyncerC7MessageV10CodingKeys33_FC0C2000094293835FDF4CBE986D167FLLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v13 - v6;
  v8 = *v1;
  v9 = *(v1 + 2);
  v13[0] = *(v1 + 1);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PlaybackSyncer.Message.CodingKeys and conformance PlaybackSyncer.Message.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v14) = v8;
  v16 = 0;
  lazy protocol witness table accessor for type PlaybackSyncer.Message.MessageType and conformance PlaybackSyncer.Message.MessageType();
  v11 = v13[1];
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v11)
  {
    v14 = v13[0];
    v15 = v9;
    v16 = 1;
    outlined copy of Data._Representation(v13[0], v9);
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    outlined consume of Data._Representation(v14, v15);
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t PlaybackSyncer.Message.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15GroupActivities14PlaybackSyncerC7MessageV10CodingKeys33_FC0C2000094293835FDF4CBE986D167FLLOGMd, &_ss22KeyedDecodingContainerVy15GroupActivities14PlaybackSyncerC7MessageV10CodingKeys33_FC0C2000094293835FDF4CBE986D167FLLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PlaybackSyncer.Message.CodingKeys and conformance PlaybackSyncer.Message.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v15 = 0;
    lazy protocol witness table accessor for type PlaybackSyncer.Message.MessageType and conformance PlaybackSyncer.Message.MessageType();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v11 = v14;
    v15 = 1;
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v9, v5);
    v12 = v14;
    *a2 = v11;
    *(a2 + 8) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

Swift::Void __swiftcall AVPlaybackCoordinator.handleNewTransportControlStateDictionary(_:)(NSDictionary a1)
{
  type metadata accessor for AVPlaybackCoordinationTransportControlStateKey(0);
  _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type AVPlaybackCoordinationTransportControlStateKey and conformance AVPlaybackCoordinationTransportControlStateKey, type metadata accessor for AVPlaybackCoordinationTransportControlStateKey);
  static Dictionary._forceBridgeFromObjectiveC(_:result:)();
  __break(1u);
}

Swift::Void __swiftcall AVPlaybackCoordinator.handleNewParticipantStateDictionary(_:)(NSDictionary a1)
{
  type metadata accessor for AVPlaybackCoordinationParticipantStateKey(0);
  _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type AVPlaybackCoordinationParticipantStateKey and conformance AVPlaybackCoordinationParticipantStateKey, type metadata accessor for AVPlaybackCoordinationParticipantStateKey);
  static Dictionary._forceBridgeFromObjectiveC(_:result:)();
  __break(1u);
}

uint64_t AVPlaybackCoordinator.getTrackedTransportStates()()
{
  v1 = [v0 trackedTransportControlStateDictionaries];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySo46AVPlaybackCoordinationTransportControlStateKeyaypGMd, &_sSDySo46AVPlaybackCoordinationTransportControlStateKeyaypGMR);
  v2 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = specialized Dictionary.compactMapValues<A>(_:)(v2);

  return v3;
}

void closure #1 in AVPlaybackCoordinator.getTrackedTransportStates()(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v32[1] = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for String.Encoding();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = *a1;
  v7 = objc_opt_self();
  type metadata accessor for AVPlaybackCoordinationTransportControlStateKey(0);
  _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type AVPlaybackCoordinationTransportControlStateKey and conformance AVPlaybackCoordinationTransportControlStateKey, type metadata accessor for AVPlaybackCoordinationTransportControlStateKey);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v32[0] = 0;
  v9 = [v7 dataWithJSONObject:isa options:0 error:v32];

  v10 = v32[0];
  if (v9)
  {
    v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    if (one-time initialization token for playback != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Logger.playback);
    outlined copy of Data._Representation(v11, v13);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    outlined consume of Data._Representation(v11, v13);
    if (os_log_type_enabled(v15, v16))
    {
      v31 = a2;
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v32[0] = v18;
      *v17 = 136315138;
      static String.Encoding.utf8.getter();
      v19 = String.init(data:encoding:)();
      if (v20)
      {
        v21 = v20;
      }

      else
      {
        v19 = 0x64696C61766E693CLL;
        v21 = 0xE90000000000003ELL;
      }

      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, v32);

      *(v17 + 4) = v22;
      _os_log_impl(&dword_1AEE80000, v15, v16, "PlaybackSync: attaching AV transport control state to catchup: %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x1B2715BA0](v18, -1, -1);
      v23 = v17;
      a2 = v31;
      MEMORY[0x1B2715BA0](v23, -1, -1);
    }
  }

  else
  {
    v24 = v10;
    v25 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (one-time initialization token for playback != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    __swift_project_value_buffer(v26, static Logger.playback);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_1AEE80000, v27, v28, "PlaybackSync: Could not serialize AV transport control state.", v29, 2u);
      MEMORY[0x1B2715BA0](v29, -1, -1);
    }

    v11 = 0;
    v13 = 0xF000000000000000;
  }

  *a2 = v11;
  a2[1] = v13;
  v30 = *MEMORY[0x1E69E9840];
}

uint64_t specialized Dictionary.compactMapValues<A>(_:)(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC8];
  v35 = MEMORY[0x1E69E7CC8];
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  if (!v6)
  {
    goto LABEL_7;
  }

LABEL_11:
  while (1)
  {
    v11 = __clz(__rbit64(v6)) | (v9 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    v34 = *(*(a1 + 56) + 8 * v11);

    closure #1 in AVPlaybackCoordinator.getTrackedTransportStates()(&v34, &v32);
    if (v1)
    {
      break;
    }

    v6 &= v6 - 1;

    v15 = v33;
    if (v33 >> 60 == 15)
    {

      result = outlined consume of Data?(v32, v15);
      v1 = 0;
      if (!v6)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v30 = v32;
      v16 = *(v2 + 16);
      if (*(v2 + 24) <= v16)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16 + 1, 1);
        v2 = v35;
      }

      v17 = *(v2 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v18 = v2 + 64;
      v19 = -1 << *(v2 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v2 + 64 + 8 * (v20 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v19) >> 6;
        while (++v21 != v24 || (v23 & 1) == 0)
        {
          v25 = v21 == v24;
          if (v21 == v24)
          {
            v21 = 0;
          }

          v23 |= v25;
          v26 = *(v18 + 8 * v21);
          if (v26 != -1)
          {
            v22 = __clz(__rbit64(~v26)) + (v21 << 6);
            goto LABEL_25;
          }
        }

LABEL_31:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v20) & ~*(v2 + 64 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
      *(v18 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      v27 = 16 * v22;
      v28 = (*(v2 + 48) + v27);
      *v28 = v14;
      v28[1] = v13;
      v29 = (*(v2 + 56) + v27);
      *v29 = v30;
      v29[1] = v15;
      ++*(v2 + 16);
      v1 = 0;
      if (!v6)
      {
LABEL_7:
        while (1)
        {
          v10 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            break;
          }

          if (v10 >= v7)
          {

            return v2;
          }

          v6 = *(v3 + 8 * v10);
          ++v9;
          if (v6)
          {
            v9 = v10;
            goto LABEL_11;
          }
        }

        __break(1u);
        goto LABEL_31;
      }
    }
  }

  return v2;
}

void protocol witness for PlaybackCoordinating.handleNewTransportControlStateDictionary(_:) in conformance AVPlaybackCoordinator()
{
  type metadata accessor for AVPlaybackCoordinationTransportControlStateKey(0);
  _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type AVPlaybackCoordinationTransportControlStateKey and conformance AVPlaybackCoordinationTransportControlStateKey, type metadata accessor for AVPlaybackCoordinationTransportControlStateKey);
  static Dictionary._forceBridgeFromObjectiveC(_:result:)();
  __break(1u);
}

void protocol witness for PlaybackCoordinating.handleNewParticipantStateDictionary(_:) in conformance AVPlaybackCoordinator()
{
  type metadata accessor for AVPlaybackCoordinationParticipantStateKey(0);
  _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type AVPlaybackCoordinationParticipantStateKey and conformance AVPlaybackCoordinationParticipantStateKey, type metadata accessor for AVPlaybackCoordinationParticipantStateKey);
  static Dictionary._forceBridgeFromObjectiveC(_:result:)();
  __break(1u);
}

void protocol witness for PlaybackCoordinating.handleRemoval(ofParticipant:) in conformance AVPlaybackCoordinator()
{
  isa = UUID._bridgeToObjectiveC()().super.isa;
  [v0 handleRemovalOfParticipant_];
}

uint64_t protocol witness for PlaybackCoordinating.getTrackedTransportStates() in conformance AVPlaybackCoordinator()
{
  v1 = [v0 trackedTransportControlStateDictionaries];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySo46AVPlaybackCoordinationTransportControlStateKeyaypGMd, &_sSDySo46AVPlaybackCoordinationTransportControlStateKeyaypGMR);
  v2 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = specialized Dictionary.compactMapValues<A>(_:)(v2);

  return v3;
}

id specialized PlaybackSyncer.AVCoordinatorDelegateBridge.__allocating_init(localParticipantID:delegate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = objc_allocWithZone(type metadata accessor for PlaybackSyncer.AVCoordinatorDelegateBridge(0));

  return specialized PlaybackSyncer.AVCoordinatorDelegateBridge.init(localParticipantID:delegate:)(a1, a2, v9, a4, a5);
}

id specialized PlaybackSyncer.AVCoordinatorDelegateBridge.init(localParticipantID:delegate:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  v8 = &a3[OBJC_IVAR____TtCC15GroupActivities14PlaybackSyncer27AVCoordinatorDelegateBridge_delegate];
  *&a3[OBJC_IVAR____TtCC15GroupActivities14PlaybackSyncer27AVCoordinatorDelegateBridge_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtCC15GroupActivities14PlaybackSyncer27AVCoordinatorDelegateBridge_localParticipantID;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  (*(v11 + 16))(&a3[v9], a1, v10);
  swift_beginAccess();
  *(v8 + 1) = a5;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  v14.receiver = a3;
  v14.super_class = type metadata accessor for PlaybackSyncer.AVCoordinatorDelegateBridge(0);
  v12 = objc_msgSendSuper2(&v14, sel_init);
  (*(v11 + 8))(a1, v10);
  return v12;
}

uint64_t specialized PlaybackSyncer.init(internalCoordinator:serialQueue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  *(v3 + 16) = 0;
  *(v3 + 24) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So12NSDictionaryCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v7 = type metadata accessor for PropertyListEncoder();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  *(v3 + 32) = PropertyListEncoder.init()();
  v10 = type metadata accessor for PropertyListDecoder();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v13 = PropertyListDecoder.init()();
  v14 = MEMORY[0x1E69E7CD0];
  *(v3 + 40) = v13;
  *(v3 + 48) = v14;
  *(v3 + 56) = 0;
  *(v3 + 64) = 0;
  *(v3 + 72) = 0;
  *(v3 + 80) = 0;
  *(v3 + 88) = v14;
  *(v3 + 104) = 0;
  *(v3 + 120) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + 136) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + 152) = 0;
  swift_unknownObjectWeakInit();
  v15 = OBJC_IVAR____TtC15GroupActivities14PlaybackSyncer_defaultTransportStateTakeoverInterval;
  *(v3 + OBJC_IVAR____TtC15GroupActivities14PlaybackSyncer_defaultTransportStateTakeoverInterval) = 20;
  v16 = *MEMORY[0x1E69E7F48];
  v17 = type metadata accessor for DispatchTimeInterval();
  v18 = *(*(v17 - 8) + 104);
  v18(v4 + v15, v16, v17);
  v19 = OBJC_IVAR____TtC15GroupActivities14PlaybackSyncer_initiatorTransportStateTakeoverInterval;
  *(v4 + OBJC_IVAR____TtC15GroupActivities14PlaybackSyncer_initiatorTransportStateTakeoverInterval) = 10;
  v18(v4 + v19, v16, v17);
  if (one-time initialization token for playback != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  __swift_project_value_buffer(v20, static Logger.playback);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_1AEE80000, v21, v22, "PlaybackSync: Creating playback syncer for group session", v23, 2u);
    MEMORY[0x1B2715BA0](v23, -1, -1);
  }

  swift_beginAccess();
  *(v4 + 120) = a2;
  swift_unknownObjectWeakAssign();
  *(v4 + 96) = a3;
  return v4;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}