unint64_t lazy protocol witness table accessor for type USKNode.PropertyValueRequestError and conformance USKNode.PropertyValueRequestError()
{
  result = lazy protocol witness table cache variable for type USKNode.PropertyValueRequestError and conformance USKNode.PropertyValueRequestError;
  if (!lazy protocol witness table cache variable for type USKNode.PropertyValueRequestError and conformance USKNode.PropertyValueRequestError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type USKNode.PropertyValueRequestError and conformance USKNode.PropertyValueRequestError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type USKNode.PropertyValueRequestError and conformance USKNode.PropertyValueRequestError;
  if (!lazy protocol witness table cache variable for type USKNode.PropertyValueRequestError and conformance USKNode.PropertyValueRequestError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type USKNode.PropertyValueRequestError and conformance USKNode.PropertyValueRequestError);
  }

  return result;
}

uint64_t specialized USKNode.valueForProperty<A>(named:requestContext:getter:)(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v8 = MEMORY[0x1C68F3280]();
  v9 = [a4 property_];

  if (v9)
  {
    v10 = v9;
    v11 = [v10 objectPathArray];
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for USKObjectPath, 0x1E69DED68);
    v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    return v12;
  }

  v14 = 0xD000000000000012;
  static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v15 = swift_allocObject();
  v16 = v15;
  *(v15 + 16) = xmmword_1C1897FD0;
  if (a3)
  {
    if (a3 == 1)
    {
      v17 = "ng: Unknown action type";
    }

    else
    {
      v17 = "imagesByFullSchemePath";
      v14 = 0xD000000000000013;
    }
  }

  else
  {
    v14 = 0xD000000000000014;
    v17 = "USD trigger loading";
  }

  v18 = v17 | 0x8000000000000000;
  v19 = MEMORY[0x1E69E6158];
  *(v15 + 56) = MEMORY[0x1E69E6158];
  v20 = lazy protocol witness table accessor for type String and conformance String();
  v16[4] = v14;
  v16[5] = v18;
  v16[12] = v19;
  v16[13] = v20;
  v16[8] = v20;
  v16[9] = a1;
  v16[10] = a2;

  v21 = [a4 path];
  v22 = [v21 stringValue];

  if (!v22)
  {
    v26 = v16 + 14;
    v16[17] = v19;
    v16[18] = v20;
    goto LABEL_12;
  }

  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  v26 = v16 + 14;
  v16[17] = v19;
  v16[18] = v20;
  if (!v25)
  {
LABEL_12:
    *v26 = 7104878;
    v25 = 0xE300000000000000;
    goto LABEL_13;
  }

  *v26 = v23;
LABEL_13:
  v16[15] = v25;
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
  v27 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)();

  lazy protocol witness table accessor for type USKNode.PropertyValueRequestError and conformance USKNode.PropertyValueRequestError();
  swift_allocError();
  return swift_willThrow();
}

{
  v8 = MEMORY[0x1C68F3280]();
  v9 = [a4 property_];

  if (v9)
  {
    v10 = [v9 intValue];

    return v10;
  }

  v12 = 0xD000000000000012;
  static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v13 = swift_allocObject();
  v14 = v13;
  *(v13 + 16) = xmmword_1C1897FD0;
  if (a3)
  {
    if (a3 == 1)
    {
      v15 = "ng: Unknown action type";
    }

    else
    {
      v15 = "imagesByFullSchemePath";
      v12 = 0xD000000000000013;
    }
  }

  else
  {
    v12 = 0xD000000000000014;
    v15 = "USD trigger loading";
  }

  v16 = v15 | 0x8000000000000000;
  v17 = MEMORY[0x1E69E6158];
  *(v13 + 56) = MEMORY[0x1E69E6158];
  v18 = lazy protocol witness table accessor for type String and conformance String();
  v14[4] = v12;
  v14[5] = v16;
  v14[12] = v17;
  v14[13] = v18;
  v14[8] = v18;
  v14[9] = a1;
  v14[10] = a2;

  v19 = [a4 path];
  v20 = [v19 stringValue];

  if (!v20)
  {
    v24 = v14 + 14;
    v14[17] = v17;
    v14[18] = v18;
    goto LABEL_12;
  }

  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  v24 = v14 + 14;
  v14[17] = v17;
  v14[18] = v18;
  if (!v23)
  {
LABEL_12:
    *v24 = 7104878;
    v23 = 0xE300000000000000;
    goto LABEL_13;
  }

  *v24 = v21;
LABEL_13:
  v14[15] = v23;
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
  v25 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)();

  lazy protocol witness table accessor for type USKNode.PropertyValueRequestError and conformance USKNode.PropertyValueRequestError();
  swift_allocError();
  return swift_willThrow();
}

{
  v8 = MEMORY[0x1C68F3280]();
  v9 = [a4 property_];

  if (!v9)
  {
    v11 = 0xD000000000000012;
    static os_log_type_t.debug.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v12 = swift_allocObject();
    v13 = v12;
    *(v12 + 16) = xmmword_1C1897FD0;
    if (a3)
    {
      if (a3 == 1)
      {
        v14 = "ng: Unknown action type";
      }

      else
      {
        v14 = "imagesByFullSchemePath";
        v11 = 0xD000000000000013;
      }
    }

    else
    {
      v11 = 0xD000000000000014;
      v14 = "USD trigger loading";
    }

    v15 = v14 | 0x8000000000000000;
    v16 = MEMORY[0x1E69E6158];
    *(v12 + 56) = MEMORY[0x1E69E6158];
    v17 = lazy protocol witness table accessor for type String and conformance String();
    v13[4] = v11;
    v13[5] = v15;
    v13[12] = v16;
    v13[13] = v17;
    v13[8] = v17;
    v13[9] = a1;
    v13[10] = a2;

    v18 = [a4 path];
    v19 = [v18 stringValue];

    if (v19)
    {
      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;

      v23 = v13 + 14;
      v13[17] = v16;
      v13[18] = v17;
      if (v22)
      {
        *v23 = v20;
LABEL_13:
        v13[15] = v22;
        type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
        v10 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)();

        lazy protocol witness table accessor for type USKNode.PropertyValueRequestError and conformance USKNode.PropertyValueRequestError();
        swift_allocError();
        swift_willThrow();
        return v10 & 1;
      }
    }

    else
    {
      v23 = v13 + 14;
      v13[17] = v16;
      v13[18] = v17;
    }

    *v23 = 7104878;
    v22 = 0xE300000000000000;
    goto LABEL_13;
  }

  LOBYTE(v10) = [v9 BOOLValue];

  return v10 & 1;
}

{
  return sub_1C1374830(a1, a2, a3, a4);
}

{
  return sub_1C1374898(a1, a2, a3, a4) & 1;
}

void specialized USKNode.valueForProperty<A>(named:requestContext:getter:)(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v8 = MEMORY[0x1C68F3280]();
  v9 = [a4 property_];

  if (v9)
  {
    [v9 doubleValue];

    return;
  }

  v10 = 0xD000000000000012;
  static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v11 = swift_allocObject();
  v12 = v11;
  *(v11 + 16) = xmmword_1C1897FD0;
  if (a3)
  {
    if (a3 == 1)
    {
      v13 = "ng: Unknown action type";
    }

    else
    {
      v13 = "imagesByFullSchemePath";
      v10 = 0xD000000000000013;
    }
  }

  else
  {
    v10 = 0xD000000000000014;
    v13 = "USD trigger loading";
  }

  v14 = v13 | 0x8000000000000000;
  v15 = MEMORY[0x1E69E6158];
  *(v11 + 56) = MEMORY[0x1E69E6158];
  v16 = lazy protocol witness table accessor for type String and conformance String();
  v12[4] = v10;
  v12[5] = v14;
  v12[12] = v15;
  v12[13] = v16;
  v12[8] = v16;
  v12[9] = a1;
  v12[10] = a2;

  v17 = [a4 path];
  v18 = [v17 stringValue];

  if (!v18)
  {
    v22 = v12 + 14;
    v12[17] = v15;
    v12[18] = v16;
    goto LABEL_12;
  }

  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  v22 = v12 + 14;
  v12[17] = v15;
  v12[18] = v16;
  if (!v21)
  {
LABEL_12:
    *v22 = 7104878;
    v21 = 0xE300000000000000;
    goto LABEL_13;
  }

  *v22 = v19;
LABEL_13:
  v12[15] = v21;
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
  v23 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)();

  lazy protocol witness table accessor for type USKNode.PropertyValueRequestError and conformance USKNode.PropertyValueRequestError();
  swift_allocError();
  swift_willThrow();
}

{
  v8 = MEMORY[0x1C68F3280]();
  v9 = [a4 property_];

  if (v9)
  {
    [v9 floatValue];

    return;
  }

  v10 = 0xD000000000000012;
  static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v11 = swift_allocObject();
  v12 = v11;
  *(v11 + 16) = xmmword_1C1897FD0;
  if (a3)
  {
    if (a3 == 1)
    {
      v13 = "ng: Unknown action type";
    }

    else
    {
      v13 = "imagesByFullSchemePath";
      v10 = 0xD000000000000013;
    }
  }

  else
  {
    v10 = 0xD000000000000014;
    v13 = "USD trigger loading";
  }

  v14 = v13 | 0x8000000000000000;
  v15 = MEMORY[0x1E69E6158];
  *(v11 + 56) = MEMORY[0x1E69E6158];
  v16 = lazy protocol witness table accessor for type String and conformance String();
  v12[4] = v10;
  v12[5] = v14;
  v12[12] = v15;
  v12[13] = v16;
  v12[8] = v16;
  v12[9] = a1;
  v12[10] = a2;

  v17 = [a4 path];
  v18 = [v17 stringValue];

  if (!v18)
  {
    v22 = v12 + 14;
    v12[17] = v15;
    v12[18] = v16;
    goto LABEL_12;
  }

  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  v22 = v12 + 14;
  v12[17] = v15;
  v12[18] = v16;
  if (!v21)
  {
LABEL_12:
    *v22 = 7104878;
    v21 = 0xE300000000000000;
    goto LABEL_13;
  }

  *v22 = v19;
LABEL_13:
  v12[15] = v21;
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
  v23 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)();

  lazy protocol witness table accessor for type USKNode.PropertyValueRequestError and conformance USKNode.PropertyValueRequestError();
  swift_allocError();
  swift_willThrow();
}

{
  v8 = MEMORY[0x1C68F3280]();
  v9 = [a4 property_];

  if (v9)
  {
    [v9 double3Value];

    return;
  }

  v10 = 0xD000000000000012;
  static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v11 = swift_allocObject();
  v12 = v11;
  *(v11 + 16) = xmmword_1C1897FD0;
  if (a3)
  {
    if (a3 == 1)
    {
      v13 = "ng: Unknown action type";
    }

    else
    {
      v13 = "imagesByFullSchemePath";
      v10 = 0xD000000000000013;
    }
  }

  else
  {
    v10 = 0xD000000000000014;
    v13 = "USD trigger loading";
  }

  v14 = v13 | 0x8000000000000000;
  v15 = MEMORY[0x1E69E6158];
  *(v11 + 56) = MEMORY[0x1E69E6158];
  v16 = lazy protocol witness table accessor for type String and conformance String();
  v12[4] = v10;
  v12[5] = v14;
  v12[12] = v15;
  v12[13] = v16;
  v12[8] = v16;
  v12[9] = a1;
  v12[10] = a2;

  v17 = [a4 path];
  v18 = [v17 stringValue];

  if (!v18)
  {
    v22 = v12 + 14;
    v12[17] = v15;
    v12[18] = v16;
    goto LABEL_12;
  }

  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  v22 = v12 + 14;
  v12[17] = v15;
  v12[18] = v16;
  if (!v21)
  {
LABEL_12:
    *v22 = 7104878;
    v21 = 0xE300000000000000;
    goto LABEL_13;
  }

  *v22 = v19;
LABEL_13:
  v12[15] = v21;
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
  v23 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)();

  lazy protocol witness table accessor for type USKNode.PropertyValueRequestError and conformance USKNode.PropertyValueRequestError();
  swift_allocError();
  swift_willThrow();
}

{
  v8 = MEMORY[0x1C68F3280]();
  v9 = [a4 property_];

  if (v9)
  {
    [v9 float3Value];

    return;
  }

  v10 = 0xD000000000000012;
  static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v11 = swift_allocObject();
  v12 = v11;
  *(v11 + 16) = xmmword_1C1897FD0;
  if (a3)
  {
    if (a3 == 1)
    {
      v13 = "ng: Unknown action type";
    }

    else
    {
      v13 = "imagesByFullSchemePath";
      v10 = 0xD000000000000013;
    }
  }

  else
  {
    v10 = 0xD000000000000014;
    v13 = "USD trigger loading";
  }

  v14 = v13 | 0x8000000000000000;
  v15 = MEMORY[0x1E69E6158];
  *(v11 + 56) = MEMORY[0x1E69E6158];
  v16 = lazy protocol witness table accessor for type String and conformance String();
  v12[4] = v10;
  v12[5] = v14;
  v12[12] = v15;
  v12[13] = v16;
  v12[8] = v16;
  v12[9] = a1;
  v12[10] = a2;

  v17 = [a4 path];
  v18 = [v17 stringValue];

  if (!v18)
  {
    v22 = v12 + 14;
    v12[17] = v15;
    v12[18] = v16;
    goto LABEL_12;
  }

  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  v22 = v12 + 14;
  v12[17] = v15;
  v12[18] = v16;
  if (!v21)
  {
LABEL_12:
    *v22 = 7104878;
    v21 = 0xE300000000000000;
    goto LABEL_13;
  }

  *v22 = v19;
LABEL_13:
  v12[15] = v21;
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
  v23 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)();

  lazy protocol witness table accessor for type USKNode.PropertyValueRequestError and conformance USKNode.PropertyValueRequestError();
  swift_allocError();
  swift_willThrow();
}

{
  sub_1C1374848(a1, a2, a3, a4);
}

{
  sub_1C1374880(a1, a2, a3, a4);
}

{
  sub_1C13748B4(a1, a2, a3, a4);
}

id specialized USKNode.valueForProperty<A>(named:requestContext:getter:)(uint64_t a1, uint64_t a2, char a3, void *a4, SEL *a5)
{
  v10 = MEMORY[0x1C68F3280]();
  v11 = [a4 property_];

  if (!v11)
  {
    v13 = 0xD000000000000012;
    static os_log_type_t.debug.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v14 = swift_allocObject();
    v15 = v14;
    *(v14 + 16) = xmmword_1C1897FD0;
    if (a3)
    {
      if (a3 == 1)
      {
        v16 = "ng: Unknown action type";
      }

      else
      {
        v16 = "imagesByFullSchemePath";
        v13 = 0xD000000000000013;
      }
    }

    else
    {
      v13 = 0xD000000000000014;
      v16 = "USD trigger loading";
    }

    v17 = v16 | 0x8000000000000000;
    v18 = MEMORY[0x1E69E6158];
    *(v14 + 56) = MEMORY[0x1E69E6158];
    v19 = lazy protocol witness table accessor for type String and conformance String();
    v15[4] = v13;
    v15[5] = v17;
    v15[12] = v18;
    v15[13] = v19;
    v15[8] = v19;
    v15[9] = a1;
    v15[10] = a2;

    v20 = [a4 path];
    v21 = [v20 stringValue];

    if (v21)
    {
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v23;

      v25 = v15 + 14;
      v15[17] = v18;
      v15[18] = v19;
      if (v24)
      {
        *v25 = v22;
LABEL_13:
        v15[15] = v24;
        type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x1E69E9BF8);
        v12 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)();

        lazy protocol witness table accessor for type USKNode.PropertyValueRequestError and conformance USKNode.PropertyValueRequestError();
        swift_allocError();
        swift_willThrow();
        return v12;
      }
    }

    else
    {
      v25 = v15 + 14;
      v15[17] = v18;
      v15[18] = v19;
    }

    *v25 = 7104878;
    v24 = 0xE300000000000000;
    goto LABEL_13;
  }

  v12 = [v11 *a5];

  return v12;
}

id specialized USKNode.valueForProperty<A>(named:requestContext:getter:)(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  return specialized USKNode.valueForProperty<A>(named:requestContext:getter:)(a1, a2, a3, a4, &selRef_resourcePath);
}

{
  return sub_1C1374860(a1, a2, a3, a4);
}

void USKNode.setTransform(scale:orientation:translation:)(__int128 *a1, uint64_t a2, __int128 *a3)
{
  v4 = v3;
  v31 = MEMORY[0x1E69E7CC0];
  v7 = MEMORY[0x1E69DEDA0];
  if ((a3[2] & 1) == 0)
  {
    v21 = a3[1];
    v24 = *a3;
    v8 = MEMORY[0x1C68F3280](0xD000000000000011, 0x80000001C18EF3C0);
    v9 = [v4 newPropertyWithName:v8 type:*v7 role:0];

    if (v9)
    {
      v29 = v24;
      v30 = v21;
      [v9 setDouble3Value_];
      v10 = [v9 name];
      MEMORY[0x1C68F3650]();
      if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v27 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }
  }

  if ((*(a2 + 32) & 1) == 0)
  {
    v22 = *a2;
    v25 = *(a2 + 16);
    v11 = MEMORY[0x1C68F3280](0x3A704F6D726F6678, 0xEE00746E6569726FLL);
    v12 = [v4 newPropertyWithName:v11 type:*MEMORY[0x1E69DEE10] role:0];

    if (v12)
    {
      [v12 setQuatfValue_];
      v13 = [v12 name];
      MEMORY[0x1C68F3650]();
      if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v28 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }
  }

  if ((a1[2] & 1) == 0)
  {
    v23 = a1[1];
    v26 = *a1;
    v14 = MEMORY[0x1C68F3280](0x3A704F6D726F6678, 0xED0000656C616373);
    v15 = [v4 newPropertyWithName:v14 type:*v7 role:0];

    if (v15)
    {
      v29 = v26;
      v30 = v23;
      [v15 setDouble3Value_];
      v16 = [v15 name];
      MEMORY[0x1C68F3650]();
      if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v20 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }
  }

  v17 = MEMORY[0x1C68F3280](0x4F704F6D726F6678, 0xEC00000072656472);
  v18 = [v4 newPropertyWithName:v17 type:*MEMORY[0x1E69DEE30] role:0];

  if (v18)
  {
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for USKToken, 0x1E69DED80);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v18 setTokenArray_];
  }

  else
  {
  }
}

uint64_t USKNode.NewPropertyError.debugDescription.getter()
{
  v1 = v0[1];
  if (!v1)
  {
    return 0x73692065756C6156;
  }

  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[2];
  v5 = *v0;
  _StringGuts.grow(_:)(57);
  MEMORY[0x1C68F3410](0xD000000000000025, 0x80000001C18EF3E0);
  MEMORY[0x1C68F3410](v5, v1);
  MEMORY[0x1C68F3410](0x7974206874697720, 0xEB00000000206570);
  type metadata accessor for USKDataType(0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1C68F3410](0x20646E6120, 0xE500000000000000);
  _StringGuts.grow(_:)(18);

  v6 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo11USKRoleTypeaSgMd, &_sSo11USKRoleTypeaSgMR);
  v7 = String.init<A>(describing:)();
  MEMORY[0x1C68F3410](v7);

  MEMORY[0x1C68F3410](0x65646F6E206E6F20, 0xE900000000000020);
  v8 = [v2 path];
  v9 = [v8 stringValue];

  if (v9)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  v11 = String.init<A>(describing:)();
  MEMORY[0x1C68F3410](v11);

  MEMORY[0x1C68F3410](0x20656C6F72, 0xE500000000000000);

  return 0;
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance USKNode.NewPropertyError()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  return USKNode.NewPropertyError.debugDescription.getter();
}

unint64_t USKScene.NewNodeError.debugDescription.getter(void *a1)
{
  _StringGuts.grow(_:)(48);

  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  MEMORY[0x1C68F3410](v2);

  MEMORY[0x1C68F3410](0x6874617020746120, 0xEA0000000000203ALL);
  v3 = [a1 stringValue];
  if (!v3)
  {
    v3 = [a1 description];
  }

  v4 = v3;
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  MEMORY[0x1C68F3410](v5, v7);

  MEMORY[0x1C68F3410](34, 0xE100000000000000);
  return 0xD000000000000021;
}

void USKObjectPath.deletingLastPathComponent()()
{
  v1 = [v0 stringValue];
  if (v1)
  {
    v2 = v1;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    v18 = 47;
    v19 = 0xE100000000000000;
    MEMORY[0x1EEE9AC00](v6);
    v17[2] = &v18;

    v8 = specialized Collection.split(maxSplits:omittingEmptySubsequences:whereSeparator:)(0x7FFFFFFFFFFFFFFFLL, 1, partial apply for specialized closure #1 in Collection<>.split(separator:maxSplits:omittingEmptySubsequences:), v17, v3, v5, v7);
    v9 = *(v8 + 16);
    if (v9)
    {
      v18 = v8;
      v19 = v8 + 32;
      v20 = 0;
      v21 = 2 * v9 - 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss10ArraySliceVySsGMd, &_ss10ArraySliceVySsGMR);
      lazy protocol witness table accessor for type ArraySlice<Substring> and conformance ArraySlice<A>();
      lazy protocol witness table accessor for type Substring and conformance Substring();
      v10 = Sequence<>.joined(separator:)();
      v18 = 47;
      v19 = 0xE100000000000000;
      MEMORY[0x1C68F3410](v10);

      v12 = v18;
      v11 = v19;
      v13 = objc_allocWithZone(MEMORY[0x1E69DED68]);
      v14 = MEMORY[0x1C68F3280](v12, v11);
      v15 = [v13 initWithString_];

      if (v15)
      {

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  else
  {

    v16 = v17[4];
  }
}

void USKObjectPath.appendingPathComponent(_:)(uint64_t a1, uint64_t a2)
{
  v5 = [v2 stringValue];
  if (v5)
  {
    v6 = v5;
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0xE000000000000000;
  }

  MEMORY[0x1C68F3410](47, 0xE100000000000000);
  MEMORY[0x1C68F3410](a1, a2);
  v10 = objc_allocWithZone(MEMORY[0x1E69DED68]);
  v11 = MEMORY[0x1C68F3280](v7, v9);

  v12 = [v10 initWithString_];

  if (!v12)
  {
    __break(1u);
  }
}

unint64_t lazy protocol witness table accessor for type ArraySlice<Substring> and conformance ArraySlice<A>()
{
  result = lazy protocol witness table cache variable for type ArraySlice<Substring> and conformance ArraySlice<A>;
  if (!lazy protocol witness table cache variable for type ArraySlice<Substring> and conformance ArraySlice<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss10ArraySliceVySsGMd, &_ss10ArraySliceVySsGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArraySlice<Substring> and conformance ArraySlice<A>);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_So7USKNodeC17RealityFoundationE16NewPropertyError33_2D12D3B35589BB501B3170C1ED0AA837LLO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for USKNode.NewPropertyError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for USKNode.NewPropertyError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

double destructiveInjectEnumTag for USKNode.NewPropertyError(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 8) = (a2 - 1);
  }

  return result;
}

uint64_t AudioBufferResource.configuration.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 40);
  v7[0] = *(v1 + 24);
  v7[1] = v2;
  v8[0] = *(v1 + 56);
  v3 = v8[0];
  *(v8 + 13) = *(v1 + 69);
  v4 = *(v8 + 13);
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  *(a1 + 45) = v4;
  return outlined init with copy of AudioBufferResource.Configuration(v7, &v6);
}

uint64_t AudioBufferResource.init(buffer:configuration:)(void *a1, __int128 *a2)
{
  v3 = v2;
  v55 = *MEMORY[0x1E69E9840];
  v5 = a2[1];
  v52 = *a2;
  v53 = v5;
  v54[0] = a2[2];
  *(v54 + 13) = *(a2 + 45);
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v7 = v6;
    v8 = a1;
    goto LABEL_3;
  }

  v11 = [a1 format];
  v12 = [v11 channelLayout];

  v13 = [a1 format];
  [v13 sampleRate];
  v15 = v14;

  if (v12)
  {
    v16 = [objc_allocWithZone(MEMORY[0x1E6958418]) initStandardFormatWithSampleRate:v12 channelLayout:v15];

    if (v16)
    {
      goto LABEL_7;
    }

LABEL_14:
    outlined destroy of AudioBufferResource.Configuration(&v52);
    lazy protocol witness table accessor for type AudioBufferResource.Error and conformance AudioBufferResource.Error();
    swift_allocError();
    *v34 = 2;
    swift_willThrow();

    goto LABEL_23;
  }

  v32 = [a1 format];
  v33 = [v32 channelCount];

  v16 = [objc_allocWithZone(MEMORY[0x1E6958418]) initStandardFormatWithSampleRate:v33 channels:v15];
  if (!v16)
  {
    goto LABEL_14;
  }

LABEL_7:
  v17 = v16;
  v18 = [a1 format];
  v19 = [objc_allocWithZone(MEMORY[0x1E69583F0]) initFromFormat:v18 toFormat:v17];

  if (!v19)
  {
    outlined destroy of AudioBufferResource.Configuration(&v52);
    lazy protocol witness table accessor for type AudioBufferResource.Error and conformance AudioBufferResource.Error();
    swift_allocError();
    *v41 = 2;
    swift_willThrow();

    goto LABEL_23;
  }

  v46 = v19;
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  v21 = a1;
  v22 = v17;
  v23 = *([v21 audioBufferList] + 3);
  v7 = [objc_allocWithZone(MEMORY[0x1E6958440]) initWithPCMFormat:v22 frameCapacity:v23];

  if (!v7)
  {
    outlined destroy of AudioBufferResource.Configuration(&v52);
    lazy protocol witness table accessor for type AudioBufferResource.Error and conformance AudioBufferResource.Error();
    swift_allocError();
    *v42 = 0;
    swift_willThrow();

    goto LABEL_22;
  }

  v45 = v22;
  *&v51[0] = partial apply for closure #1 in AudioBufferResource.init(buffer:configuration:);
  *(&v51[0] + 1) = v20;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v50 = thunk for @escaping @callee_guaranteed @Sendable (@unowned UInt32, @unowned UnsafeMutablePointer<AVAudioConverterInputStatus>) -> (@owned AVAudioBuffer?);
  *(&v50 + 1) = &block_descriptor_48;
  v24 = _Block_copy(&aBlock);

  *&aBlock = 0;
  v25 = [v46 convertToBuffer:v7 error:&aBlock withInputFromBlock:v24];
  _Block_release(v24);
  if (v25 == 3 && aBlock)
  {
    v26 = aBlock;
    outlined destroy of AudioBufferResource.Configuration(&v52);
    swift_willThrow();

LABEL_22:

    goto LABEL_23;
  }

LABEL_3:
  isa = AVAudioPCMBuffer.copyToDeinterleavedBuffer()().super.super.isa;
  if (v10)
  {
    outlined destroy of AudioBufferResource.Configuration(&v52);

LABEL_23:
    type metadata accessor for AudioBufferResource();
    swift_deallocPartialClassInstance();
    goto LABEL_24;
  }

  v27 = isa;
  v28 = v52;
  v29 = v53;
  *(v3 + 24) = v52;
  *(v3 + 40) = v29;
  v30 = v54[0];
  *(v3 + 56) = v54[0];
  v31 = *(v54 + 13);
  *(v3 + 69) = *(v54 + 13);
  aBlock = v28;
  v50 = v29;
  v51[0] = v30;
  *(v51 + 13) = v31;
  v47 = 3;
  outlined init with copy of AudioBufferResource.Configuration(&v52, &v48);
  v35 = specialized static AudioBufferResource.bufferAssetRef(buffer:configuration:inputMode:)(v27, &aBlock, &v47);
  outlined destroy of AudioBufferResource.Configuration(&v52);
  v3 = AudioResource.init(fromCore:)(v35);
  v36 = one-time initialization token for audio;

  if (v36 != -1)
  {
    swift_once();
  }

  v37 = type metadata accessor for Logger();
  __swift_project_value_buffer(v37, static Logger.audio);
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 134218240;
    *(v40 + 4) = REAudioFileAssetGetAudioAssetID();
    *(v40 + 12) = 2048;
    *(v40 + 14) = REAssetGetAssetId();
    _os_log_impl(&dword_1C1358000, v38, v39, "[API/RealityKit] Loading AudioBufferResource with audioAssetID: %llu and REAssetID: %llu", v40, 0x16u);
    MEMORY[0x1C6902A30](v40, -1, -1);
  }

  RERelease();

LABEL_24:
  v43 = *MEMORY[0x1E69E9840];
  return v3;
}

void *partial apply for closure #1 in AudioBufferResource.init(buffer:configuration:)(uint64_t a1, void *a2)
{
  v3 = *(v2 + 16);
  *a2 = 0;
  v4 = v3;
  return v3;
}

id thunk for @escaping @callee_guaranteed @Sendable (@unowned UInt32, @unowned UnsafeMutablePointer<AVAudioConverterInputStatus>) -> (@owned AVAudioBuffer?)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = v6(a2, a3);

  return v7;
}

uint64_t block_copy_helper_48(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

AVAudioPCMBuffer __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AVAudioPCMBuffer.copyToDeinterleavedBuffer()()
{
  v2 = v0;
  v23[1] = *MEMORY[0x1E69E9840];
  v3 = [v0 format];
  v4 = [v3 isInterleaved];

  if ((v4 & 1) != 0 || (v5 = [v2 format], v6 = objc_msgSend(v5, sel_commonFormat), v5, v6 != 1))
  {
    v10 = [v2 format];
    AVAudioFormat.copyInterleavedFormatToDeinterleaved()(v11);
    v13 = v12;

    if (!v14)
    {
      v15 = [v2 format];
      v16 = [objc_allocWithZone(MEMORY[0x1E69583F0]) initFromFormat:v15 toFormat:v13];

      if (v16)
      {
        v17 = v13;
        v18 = [v2 frameCapacity];
        v1 = [objc_allocWithZone(MEMORY[0x1E6958440]) initWithPCMFormat:v17 frameCapacity:v18];

        if (v1)
        {
          v23[0] = 0;
          if ([v16 convertToBuffer:v1 fromBuffer:v2 error:v23])
          {
            v19 = v23[0];
          }

          else
          {
            v20 = v23[0];
            _convertNSErrorToError(_:)();

            swift_willThrow();
          }

          goto LABEL_12;
        }
      }

      lazy protocol witness table accessor for type AVAudioPCMBuffer.AVAudioPCMBufferErrors and conformance AVAudioPCMBuffer.AVAudioPCMBufferErrors();
      swift_allocError();
      swift_willThrow();
    }

LABEL_12:
    v21 = *MEMORY[0x1E69E9840];
    v7 = v1;
    goto LABEL_13;
  }

  v7 = v2;
  v9 = *MEMORY[0x1E69E9840];
LABEL_13:
  result.super._impl = v8;
  result.super.super.isa = v7;
  return result;
}

void *AudioBufferResource.init(buffer:options:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(a2 + 16);
  *v33 = *a2;
  *&v33[16] = v5;
  v34 = *(a2 + 32);
  v35 = *(a2 + 48);
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (!v6)
  {
    outlined destroy of AudioBufferResource.CreateOptions(v33);
    lazy protocol witness table accessor for type AudioBufferResource.Error and conformance AudioBufferResource.Error();
    swift_allocError();
    *v11 = 0;
    swift_willThrow();

    goto LABEL_6;
  }

  v7 = v6;
  v8 = a1;
  a1 = v7;
  isa = AVAudioPCMBuffer.copyToDeinterleavedBuffer()().super.super.isa;
  if (v10)
  {

    outlined destroy of AudioBufferResource.CreateOptions(v33);
LABEL_6:
    type metadata accessor for AudioBufferResource();
    swift_deallocPartialClassInstance();
    return a1;
  }

  v12 = isa;
  v13 = v33[2];
  v14 = *&v33[24];
  v15 = v34;
  v16 = *(&v34 + 1);
  v17 = v35;
  *(v3 + 24) = v33[1];
  *(v3 + 25) = v13;
  *(v3 + 32) = v14;
  *(v3 + 40) = v15;
  *(v3 + 48) = v16;
  *(v3 + 56) = v17;
  *(v3 + 64) = *&v33[8];
  *(v3 + 80) = 0;
  *(v3 + 84) = 1;
  v18 = *(v3 + 40);
  v31[0] = *(v3 + 24);
  v31[1] = v18;
  v20 = *(v3 + 24);
  v19 = *(v3 + 40);
  v32[0] = *(v3 + 56);
  *(v32 + 13) = *(v3 + 69);
  v28 = v20;
  v29 = v19;
  v30[0] = *(v3 + 56);
  *(v30 + 13) = *(v3 + 69);
  v27 = v33[0];
  outlined init with copy of AudioBufferResource.CreateOptions(v33, v25);
  outlined init with copy of AudioBufferResource.Configuration(v31, v25);
  v22 = specialized static AudioBufferResource.bufferAssetRef(buffer:configuration:inputMode:)(v12, &v28, &v27);
  v25[0] = v28;
  v25[1] = v29;
  *v26 = v30[0];
  *&v26[13] = *(v30 + 13);
  outlined destroy of AudioBufferResource.Configuration(v25);
  a1 = AudioResource.init(fromCore:)(v22);
  v23[0] = *v33;
  v23[1] = *&v33[16];
  v23[2] = v34;
  v24 = v35;
  AudioBufferResource.load(assetRef:buffer:options:)(v22, v8, v23);

  outlined destroy of AudioBufferResource.CreateOptions(v33);
  RERelease();

  return a1;
}

void AudioBufferResource.load(assetRef:buffer:options:)(uint64_t a1, void *a2, unsigned __int8 *a3)
{
  v6 = *a3;
  v7 = a3[1];
  v8 = *(a3 + 1);
  v9 = *(a3 + 2);
  if ((REAssetHandleIsLoaded() & 1) == 0)
  {
    REAssetHandleLoadNow();
  }

  v10 = *(v3 + 16);
  REAudioFileAssetSetInputMode();
  REAudioFileAssetSetLoopCount();
  if (v9)
  {
    String.utf8CString.getter();
    REAudioFileAssetSetMixGroupName();
  }

  v11 = [a2 format];
  specialized static AudioResource.supportedChannelLayoutTag(for:)(v11);

  if (!v4)
  {
    REAudioFileAssetSetLayoutTag();
  }
}

void *AudioBufferResource.init(buffer:inputMode:shouldLoop:)(void *a1, unsigned __int8 *a2, char a3)
{
  v4 = v3;
  v7 = *a2;
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (!v8)
  {
    lazy protocol witness table accessor for type AudioBufferResource.Error and conformance AudioBufferResource.Error();
    swift_allocError();
    *v13 = 0;
    swift_willThrow();

    goto LABEL_6;
  }

  v9 = v8;
  v10 = a1;
  a1 = v9;
  isa = AVAudioPCMBuffer.copyToDeinterleavedBuffer()().super.super.isa;
  if (v12)
  {

LABEL_6:
    type metadata accessor for AudioBufferResource();
    swift_deallocPartialClassInstance();
    return a1;
  }

  v14 = isa;
  LOBYTE(v31) = 1;
  v15 = a3 & 1;
  *(v4 + 24) = a3 & 1;
  *(v4 + 25) = 0;
  *(v4 + 32) = 0;
  *(v4 + 40) = -1;
  *(v4 + 48) = 0;
  *(v4 + 56) = -1;
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  *(v4 + 80) = 0;
  *(v4 + 84) = 1;
  v16 = *(v4 + 24);
  v17 = *(v4 + 40);
  *(v35 + 13) = *(v4 + 69);
  v18 = *(v4 + 56);
  v34[1] = *(v4 + 40);
  v35[0] = v18;
  v19 = *(v4 + 24);
  v34[0] = v16;
  v31 = v19;
  v32 = v17;
  v33[0] = *(v4 + 56);
  *(v33 + 13) = *(v4 + 69);
  v30 = v7;
  outlined init with copy of AudioBufferResource.Configuration(v34, v28);
  v21 = specialized static AudioBufferResource.bufferAssetRef(buffer:configuration:inputMode:)(v14, &v31, &v30);
  v28[0] = v31;
  v28[1] = v32;
  *v29 = v33[0];
  *&v29[13] = *(v33 + 13);
  outlined destroy of AudioBufferResource.Configuration(v28);
  a1 = AudioResource.init(fromCore:)(v21);
  LOBYTE(v24) = v7;
  *(&v24 + 1) = v15;
  v25 = 0uLL;
  *(&v24 + 1) = 0;
  LOBYTE(v26) = -1;
  *(&v26 + 1) = 0;
  v27 = -1;
  AudioBufferResource.load(assetRef:buffer:options:)(v21, v10, &v24);

  v22[0] = v24;
  v22[1] = v25;
  v22[2] = v26;
  v23 = v27;
  outlined destroy of AudioBufferResource.CreateOptions(v22);
  RERelease();

  return a1;
}

uint64_t AudioBufferResource.deinit()
{
  v1 = v0;
  if (one-time initialization token for audio != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.audio);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    v6 = *(v1 + 16);
    *(v5 + 4) = REAssetGetAssetId();

    _os_log_impl(&dword_1C1358000, v3, v4, "[API/RealityKit] AudioResource.deinit() for REAssetID: %llu", v5, 0xCu);
    MEMORY[0x1C6902A30](v5, -1, -1);
  }

  else
  {
  }

  v7 = *(v1 + 16);
  REAssetSetSwiftObject();
  v8 = *(v1 + 16);
  RERelease();
  v9 = *(v1 + 72);

  return v1;
}

uint64_t AudioBufferResource.__deallocating_deinit()
{
  v1 = v0;
  if (one-time initialization token for audio != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.audio);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    v6 = *(v1 + 16);
    *(v5 + 4) = REAssetGetAssetId();

    _os_log_impl(&dword_1C1358000, v3, v4, "[API/RealityKit] AudioResource.deinit() for REAssetID: %llu", v5, 0xCu);
    MEMORY[0x1C6902A30](v5, -1, -1);
  }

  else
  {
  }

  v7 = *(v1 + 16);
  REAssetSetSwiftObject();
  v8 = *(v1 + 16);
  RERelease();
  v9 = *(v1 + 72);

  return swift_deallocClassInstance();
}

Swift::Int AudioBufferResource.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](*(v0 + 16));
  return Hasher._finalize()();
}

uint64_t AudioBufferResource.duration.getter()
{
  v1 = *(v0 + 16);
  REAudioFileAssetGetLengthInSeconds();

  return static Duration.seconds(_:)();
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AVAudioFormat.copyInterleavedFormatToDeinterleaved()(AVAudioFormat *__return_ptr retstr)
{
  if ([v1 isInterleaved])
  {
    v2 = [v1 channelLayout];
    [v1 sampleRate];
    v4 = v3;
    if (v2)
    {
      [objc_allocWithZone(MEMORY[0x1E6958418]) initStandardFormatWithSampleRate:v2 channelLayout:v3];
    }

    else
    {
      v6 = [v1 channelCount];
      if (![objc_allocWithZone(MEMORY[0x1E6958418]) initStandardFormatWithSampleRate:v6 channels:v4])
      {
        lazy protocol witness table accessor for type AVAudioFormat.AudioFormatErrors and conformance AVAudioFormat.AudioFormatErrors();
        swift_allocError();
        swift_willThrow();
      }
    }
  }

  else
  {
    v5 = v1;
  }
}

uint64_t AudioBufferResource.customMirror.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Mirror.AncestorRepresentation();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v21[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v21[-v9 - 8];
  v22 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1C1897FC0;
  strcpy((v11 + 32), "configuration");
  *(v11 + 46) = -4864;
  v12 = *(v1 + 40);
  v23[0] = *(v1 + 24);
  v23[1] = v12;
  v24[0] = *(v1 + 56);
  *(v24 + 13) = *(v1 + 69);
  *(v11 + 72) = &type metadata for AudioBufferResource.Configuration;
  v13 = swift_allocObject();
  *(v11 + 48) = v13;
  v14 = *(v1 + 40);
  v13[1] = *(v1 + 24);
  v13[2] = v14;
  v13[3] = *(v1 + 56);
  *(v13 + 61) = *(v1 + 69);
  *(v11 + 80) = 0x6E6F697461727564;
  *(v11 + 88) = 0xE800000000000000;
  v15 = *(v1 + 16);

  outlined init with copy of AudioBufferResource.Configuration(v23, v21);
  REAudioFileAssetGetLengthInSeconds();
  v16 = static Duration.seconds(_:)();
  *(v11 + 120) = MEMORY[0x1E69E7B30];
  *(v11 + 96) = v16;
  *(v11 + 104) = v17;
  v18 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v18 - 8) + 56))(v10, 1, 1, v18);
  (*(v3 + 104))(v6, *MEMORY[0x1E69E75D8], v2);
  type metadata accessor for AudioBufferResource();
  return Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:)();
}

uint64_t specialized static AudioBufferResource.bufferAssetRef(buffer:configuration:inputMode:)(uint64_t a1, __int128 *a2, unsigned __int8 *a3)
{
  v3 = a2[1];
  v19 = *a2;
  v20 = v3;
  v21[0] = a2[2];
  *(v21 + 13) = *(a2 + 45);
  v4 = *a3;
  v5 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v5 + 120, &v16);
  v6 = *(&v17 + 1);
  v7 = *&v18[0];
  __swift_project_boxed_opaque_existential_1(&v16, *(&v17 + 1));
  (*(v7 + 32))(v6, v7);
  __swift_destroy_boxed_opaque_existential_1(&v16);
  v16 = v19;
  v17 = v20;
  v18[0] = v21[0];
  *(v18 + 13) = *(v21 + 13);
  type metadata accessor for REAudioFileAssetConfigurationWrapper();
  swift_initStackObject();
  outlined init with copy of AudioBufferResource.Configuration(&v19, v15);
  v8 = REAudioFileAssetConfigurationWrapper.init(configuration:)(&v16);
  v9 = v8;
  if (v4 != 3)
  {
    v10 = *(v8 + 16);
    REAudioFileAssetConfigurationSetInputMode();
  }

  v11 = *(v9 + 16);
  v12 = REAudioFileAssetCreateWithBufferAndConfiguration();
  if (!v12)
  {
    lazy protocol witness table accessor for type AudioBufferResource.Error and conformance AudioBufferResource.Error();
    swift_allocError();
    *v13 = 1;
    swift_willThrow();
  }

  return v12;
}

unint64_t lazy protocol witness table accessor for type AudioBufferResource and conformance AudioResource()
{
  result = lazy protocol witness table cache variable for type AudioBufferResource and conformance AudioResource;
  if (!lazy protocol witness table cache variable for type AudioBufferResource and conformance AudioResource)
  {
    type metadata accessor for AudioBufferResource();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AudioBufferResource and conformance AudioResource);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AVAudioPCMBuffer.AVAudioPCMBufferErrors and conformance AVAudioPCMBuffer.AVAudioPCMBufferErrors()
{
  result = lazy protocol witness table cache variable for type AVAudioPCMBuffer.AVAudioPCMBufferErrors and conformance AVAudioPCMBuffer.AVAudioPCMBufferErrors;
  if (!lazy protocol witness table cache variable for type AVAudioPCMBuffer.AVAudioPCMBufferErrors and conformance AVAudioPCMBuffer.AVAudioPCMBufferErrors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AVAudioPCMBuffer.AVAudioPCMBufferErrors and conformance AVAudioPCMBuffer.AVAudioPCMBufferErrors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AVAudioPCMBuffer.AVAudioPCMBufferErrors and conformance AVAudioPCMBuffer.AVAudioPCMBufferErrors;
  if (!lazy protocol witness table cache variable for type AVAudioPCMBuffer.AVAudioPCMBufferErrors and conformance AVAudioPCMBuffer.AVAudioPCMBufferErrors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AVAudioPCMBuffer.AVAudioPCMBufferErrors and conformance AVAudioPCMBuffer.AVAudioPCMBufferErrors);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AVAudioFormat.AudioFormatErrors and conformance AVAudioFormat.AudioFormatErrors()
{
  result = lazy protocol witness table cache variable for type AVAudioFormat.AudioFormatErrors and conformance AVAudioFormat.AudioFormatErrors;
  if (!lazy protocol witness table cache variable for type AVAudioFormat.AudioFormatErrors and conformance AVAudioFormat.AudioFormatErrors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AVAudioFormat.AudioFormatErrors and conformance AVAudioFormat.AudioFormatErrors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AVAudioFormat.AudioFormatErrors and conformance AVAudioFormat.AudioFormatErrors;
  if (!lazy protocol witness table cache variable for type AVAudioFormat.AudioFormatErrors and conformance AVAudioFormat.AudioFormatErrors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AVAudioFormat.AudioFormatErrors and conformance AVAudioFormat.AudioFormatErrors);
  }

  return result;
}

uint64_t specialized == infix<A>(_:_:)(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000646569;
  v3 = 0x6669636570736E55;
  if (a1 > 3u)
  {
    v4 = 0x80000001C18DD290;
    v10 = 0xD000000000000019;
    if (a1 != 6)
    {
      v10 = 0x6567616D49776F4CLL;
      v4 = 0xEF7974696C617551;
    }

    v11 = 0xD000000000000017;
    if (a1 == 4)
    {
      v11 = 0x54737463656A624FLL;
      v7 = 0xEF65736F6C436F6FLL;
    }

    else
    {
      v7 = 0x80000001C18DD270;
    }

    v8 = a1 <= 5u;
    if (a1 <= 5u)
    {
      v9 = v11;
    }

    else
    {
      v9 = v10;
    }
  }

  else
  {
    v4 = 0x80000001C18DD220;
    if (a1 == 2)
    {
      v5 = 0xD000000000000016;
    }

    else
    {
      v5 = 0xD000000000000015;
    }

    if (a1 != 2)
    {
      v4 = 0x80000001C18DD240;
    }

    v6 = 0x6C63634F736E654CLL;
    v7 = 0xED00006E6F697375;
    if (!a1)
    {
      v6 = 0x6669636570736E55;
      v7 = 0xEB00000000646569;
    }

    v8 = a1 <= 1u;
    if (a1 <= 1u)
    {
      v9 = v6;
    }

    else
    {
      v9 = v5;
    }
  }

  if (v8)
  {
    v12 = v7;
  }

  else
  {
    v12 = v4;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v2 = 0x80000001C18DD290;
        if (v9 != 0xD000000000000019)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v2 = 0xEF7974696C617551;
        if (v9 != 0x6567616D49776F4CLL)
        {
          goto LABEL_45;
        }
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xEF65736F6C436F6FLL;
      if (v9 != 0x54737463656A624FLL)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v2 = 0x80000001C18DD270;
      if (v9 != 0xD000000000000017)
      {
        goto LABEL_45;
      }
    }
  }

  else
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v2 = 0x80000001C18DD220;
        if (v9 != 0xD000000000000016)
        {
          goto LABEL_45;
        }

        goto LABEL_42;
      }

      v3 = 0xD000000000000015;
      v2 = 0x80000001C18DD240;
    }

    else if (a2)
    {
      v2 = 0xED00006E6F697375;
      if (v9 != 0x6C63634F736E654CLL)
      {
        goto LABEL_45;
      }

      goto LABEL_42;
    }

    if (v9 != v3)
    {
LABEL_45:
      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_46;
    }
  }

LABEL_42:
  if (v12 != v2)
  {
    goto LABEL_45;
  }

  v13 = 1;
LABEL_46:

  return v13 & 1;
}

{
  v2 = 0xE90000000000006ELL;
  v3 = 0x6F6974616D696E61;
  v4 = a1;
  if (a1 > 4u)
  {
    v13 = 0xE700000000000000;
    v14 = 0x65727574786574;
    v15 = 0x6F4C797469746E65;
    v16 = 0xEA00000000006461;
    if (a1 != 8)
    {
      v15 = 0x6F65646976;
      v16 = 0xE500000000000000;
    }

    if (a1 != 7)
    {
      v14 = v15;
      v13 = v16;
    }

    v17 = 0xE400000000000000;
    v18 = 1752393069;
    if (a1 != 5)
    {
      v18 = 0x73636973796870;
      v17 = 0xE700000000000000;
    }

    if (a1 <= 6u)
    {
      v11 = v18;
    }

    else
    {
      v11 = v14;
    }

    if (v4 <= 6)
    {
      v12 = v17;
    }

    else
    {
      v12 = v13;
    }
  }

  else
  {
    v5 = 0x6D6E6F7269766E65;
    v6 = 0xEB00000000746E65;
    v7 = 0x4D6E49746C697562;
    v8 = 0xEF6C616972657461;
    if (a1 != 3)
    {
      v7 = 0xD000000000000013;
      v8 = 0x80000001C18DDAF0;
    }

    if (a1 != 2)
    {
      v5 = v7;
      v6 = v8;
    }

    v9 = 0xE500000000000000;
    v10 = 0x6F69647561;
    if (!a1)
    {
      v10 = 0x6F6974616D696E61;
      v9 = 0xE90000000000006ELL;
    }

    if (a1 <= 1u)
    {
      v11 = v10;
    }

    else
    {
      v11 = v5;
    }

    if (v4 <= 1)
    {
      v12 = v9;
    }

    else
    {
      v12 = v6;
    }
  }

  if (a2 > 4u)
  {
    if (a2 <= 6u)
    {
      if (a2 == 5)
      {
        v2 = 0xE400000000000000;
        if (v11 != 1752393069)
        {
          goto LABEL_54;
        }
      }

      else
      {
        v2 = 0xE700000000000000;
        if (v11 != 0x73636973796870)
        {
          goto LABEL_54;
        }
      }

      goto LABEL_51;
    }

    if (a2 == 7)
    {
      v2 = 0xE700000000000000;
      if (v11 != 0x65727574786574)
      {
        goto LABEL_54;
      }

      goto LABEL_51;
    }

    if (a2 == 8)
    {
      v2 = 0xEA00000000006461;
      if (v11 != 0x6F4C797469746E65)
      {
        goto LABEL_54;
      }

      goto LABEL_51;
    }

    v2 = 0xE500000000000000;
    v3 = 0x6F65646976;
  }

  else
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v2 = 0xEB00000000746E65;
        if (v11 != 0x6D6E6F7269766E65)
        {
          goto LABEL_54;
        }
      }

      else if (a2 == 3)
      {
        v2 = 0xEF6C616972657461;
        if (v11 != 0x4D6E49746C697562)
        {
          goto LABEL_54;
        }
      }

      else
      {
        v2 = 0x80000001C18DDAF0;
        if (v11 != 0xD000000000000013)
        {
          goto LABEL_54;
        }
      }

      goto LABEL_51;
    }

    if (a2)
    {
      v2 = 0xE500000000000000;
      if (v11 != 0x6F69647561)
      {
        goto LABEL_54;
      }

      goto LABEL_51;
    }
  }

  if (v11 != v3)
  {
LABEL_54:
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_55;
  }

LABEL_51:
  if (v12 != v2)
  {
    goto LABEL_54;
  }

  v19 = 1;
LABEL_55:

  return v19 & 1;
}

{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x536C616974617073;
    }

    else
    {
      v3 = 1869508461;
    }

    if (v2)
    {
      v4 = 0xED00006F65726574;
    }

    else
    {
      v4 = 0xE400000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0x80000001C18DDB40;
    v3 = 0xD000000000000016;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0x336C616974617073;
    }

    else
    {
      v3 = 0xD000000000000012;
    }

    if (v2 == 3)
    {
      v4 = 0xE900000000000044;
    }

    else
    {
      v4 = 0x80000001C18DDB70;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x536C616974617073;
    }

    else
    {
      v9 = 1869508461;
    }

    if (a2)
    {
      v8 = 0xED00006F65726574;
    }

    else
    {
      v8 = 0xE400000000000000;
    }

    if (v3 != v9)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v5 = 0x336C616974617073;
    v6 = 0x80000001C18DDB70;
    if (a2 == 3)
    {
      v6 = 0xE900000000000044;
    }

    else
    {
      v5 = 0xD000000000000012;
    }

    if (a2 == 2)
    {
      v7 = 0xD000000000000016;
    }

    else
    {
      v7 = v5;
    }

    if (a2 == 2)
    {
      v8 = 0x80000001C18DDB40;
    }

    else
    {
      v8 = v6;
    }

    if (v3 != v7)
    {
      goto LABEL_37;
    }
  }

  if (v4 != v8)
  {
LABEL_37:
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_38;
  }

  v10 = 1;
LABEL_38:

  return v10 & 1;
}

{
  v2 = a1;
  if (a1 > 4u)
  {
    v11 = 0xE300000000000000;
    v12 = 6778732;
    v13 = 0xE500000000000000;
    v14 = 0x7265776F70;
    if (a1 != 8)
    {
      v14 = 1701734771;
      v13 = 0xE400000000000000;
    }

    if (a1 != 7)
    {
      v12 = v14;
      v11 = v13;
    }

    v15 = 0x746E656E6F707865;
    v16 = 0xEB000000006C6169;
    if (a1 != 5)
    {
      v15 = 0x6574696D726568;
      v16 = 0xE700000000000000;
    }

    if (a1 <= 6u)
    {
      v9 = v15;
    }

    else
    {
      v9 = v12;
    }

    if (v2 <= 6)
    {
      v10 = v16;
    }

    else
    {
      v10 = v11;
    }
  }

  else
  {
    v3 = 0xE600000000000000;
    v4 = 0xE600000000000000;
    v5 = 0x65636E756F62;
    v6 = 0xE600000000000000;
    v7 = 0x656C63726963;
    if (a1 != 3)
    {
      v7 = 0x63697473616C65;
      v6 = 0xE700000000000000;
    }

    if (a1 != 2)
    {
      v5 = v7;
      v4 = v6;
    }

    v8 = 1801675106;
    if (a1)
    {
      v3 = 0xE400000000000000;
    }

    else
    {
      v8 = 0x7261656E696CLL;
    }

    if (a1 <= 1u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v5;
    }

    if (v2 <= 1)
    {
      v10 = v3;
    }

    else
    {
      v10 = v4;
    }
  }

  if (a2 > 4u)
  {
    if (a2 <= 6u)
    {
      if (a2 == 5)
      {
        v17 = 0xEB000000006C6169;
        if (v9 != 0x746E656E6F707865)
        {
          goto LABEL_57;
        }
      }

      else
      {
        v17 = 0xE700000000000000;
        if (v9 != 0x6574696D726568)
        {
LABEL_57:
          v18 = _stringCompareWithSmolCheck(_:_:expecting:)();
          goto LABEL_58;
        }
      }
    }

    else if (a2 == 7)
    {
      v17 = 0xE300000000000000;
      if (v9 != 6778732)
      {
        goto LABEL_57;
      }
    }

    else if (a2 == 8)
    {
      v17 = 0xE500000000000000;
      if (v9 != 0x7265776F70)
      {
        goto LABEL_57;
      }
    }

    else
    {
      v17 = 0xE400000000000000;
      if (v9 != 1701734771)
      {
        goto LABEL_57;
      }
    }
  }

  else if (a2 <= 1u)
  {
    if (a2)
    {
      v17 = 0xE400000000000000;
      if (v9 != 1801675106)
      {
        goto LABEL_57;
      }
    }

    else
    {
      v17 = 0xE600000000000000;
      if (v9 != 0x7261656E696CLL)
      {
        goto LABEL_57;
      }
    }
  }

  else if (a2 == 2)
  {
    v17 = 0xE600000000000000;
    if (v9 != 0x65636E756F62)
    {
      goto LABEL_57;
    }
  }

  else if (a2 == 3)
  {
    v17 = 0xE600000000000000;
    if (v9 != 0x656C63726963)
    {
      goto LABEL_57;
    }
  }

  else
  {
    v17 = 0xE700000000000000;
    if (v9 != 0x63697473616C65)
    {
      goto LABEL_57;
    }
  }

  if (v10 != v17)
  {
    goto LABEL_57;
  }

  v18 = 1;
LABEL_58:

  return v18 & 1;
}

{
  v2 = a1;
  v3 = 0xE300000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x65736C7570;
  if (a1 != 6)
  {
    v5 = 1852403827;
    v4 = 0xE400000000000000;
  }

  v6 = 0xE500000000000000;
  v7 = 0x74616F6C66;
  if (a1 != 4)
  {
    v7 = 0x656C6767696ALL;
    v6 = 0xE600000000000000;
  }

  if (a1 <= 5u)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xE600000000000000;
  v9 = 0x65636E756F62;
  if (a1 != 2)
  {
    v9 = 1885957222;
    v8 = 0xE400000000000000;
  }

  v10 = 0x6B6E696C62;
  if (a1)
  {
    v3 = 0xE500000000000000;
  }

  else
  {
    v10 = 7368560;
  }

  if (a1 > 1u)
  {
    v3 = v8;
  }

  else
  {
    v9 = v10;
  }

  if (a1 <= 3u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v5;
  }

  if (v2 <= 3)
  {
    v12 = v3;
  }

  else
  {
    v12 = v4;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v13 = 0xE500000000000000;
        if (v11 != 0x65736C7570)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v13 = 0xE400000000000000;
        if (v11 != 1852403827)
        {
LABEL_45:
          v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
          goto LABEL_46;
        }
      }
    }

    else if (a2 == 4)
    {
      v13 = 0xE500000000000000;
      if (v11 != 0x74616F6C66)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v13 = 0xE600000000000000;
      if (v11 != 0x656C6767696ALL)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v13 = 0xE600000000000000;
      if (v11 != 0x65636E756F62)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v13 = 0xE400000000000000;
      if (v11 != 1885957222)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2)
  {
    v13 = 0xE500000000000000;
    if (v11 != 0x6B6E696C62)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v13 = 0xE300000000000000;
    if (v11 != 7368560)
    {
      goto LABEL_45;
    }
  }

  if (v12 != v13)
  {
    goto LABEL_45;
  }

  v14 = 1;
LABEL_46:

  return v14 & 1;
}

{
  v2 = 1701736302;
  v3 = a1;
  if (a1 > 4u)
  {
    v12 = 0xE300000000000000;
    v13 = 7368560;
    v14 = 0xE800000000000000;
    v15 = 0x707520656C616373;
    if (a1 != 8)
    {
      v15 = 0x6F6420656C616373;
      v14 = 0xEA00000000006E77;
    }

    if (a1 != 7)
    {
      v13 = v15;
      v12 = v14;
    }

    v16 = 0x80000001C18DDCD0;
    if (a1 != 5)
    {
      v16 = 0x80000001C18DDCF0;
    }

    if (a1 <= 6u)
    {
      v10 = 0xD000000000000012;
    }

    else
    {
      v10 = v13;
    }

    if (v3 <= 6)
    {
      v11 = v16;
    }

    else
    {
      v11 = v12;
    }
  }

  else
  {
    v4 = 0xE400000000000000;
    v5 = 0x80000001C18DDC70;
    v6 = 0x80000001C18DDC90;
    v7 = 0xD000000000000011;
    if (a1 == 3)
    {
      v8 = 0xD000000000000012;
    }

    else
    {
      v8 = 0xD000000000000011;
    }

    if (a1 != 3)
    {
      v6 = 0x80000001C18DDCB0;
    }

    if (a1 == 2)
    {
      v9 = 0xD000000000000012;
    }

    else
    {
      v9 = v8;
    }

    if (a1 != 2)
    {
      v5 = v6;
    }

    if (a1)
    {
      v4 = 0x80000001C18DDC50;
    }

    else
    {
      v7 = 1701736302;
    }

    if (a1 <= 1u)
    {
      v10 = v7;
    }

    else
    {
      v10 = v9;
    }

    if (v3 <= 1)
    {
      v11 = v4;
    }

    else
    {
      v11 = v5;
    }
  }

  if (a2 > 4u)
  {
    if (a2 <= 6u)
    {
      if (a2 == 5)
      {
        v17 = "move in from above";
      }

      else
      {
        v17 = "move in from below";
      }

      goto LABEL_53;
    }

    if (a2 == 7)
    {
      v18 = 0xE300000000000000;
      v2 = 7368560;
    }

    else if (a2 == 8)
    {
      v18 = 0xE800000000000000;
      v2 = 0x707520656C616373;
    }

    else
    {
      v2 = 0x6F6420656C616373;
      v18 = 0xEA00000000006E77;
    }
  }

  else
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v17 = "move in from right";
        goto LABEL_53;
      }

      if (a2 == 3)
      {
        v17 = "move in from front";
LABEL_53:
        v18 = (v17 - 32) | 0x8000000000000000;
        v2 = 0xD000000000000012;
        goto LABEL_54;
      }

      v19 = "move in from rear";
      goto LABEL_51;
    }

    if (a2)
    {
      v19 = "move in from left";
LABEL_51:
      v18 = (v19 - 32) | 0x8000000000000000;
      v2 = 0xD000000000000011;
      goto LABEL_54;
    }

    v18 = 0xE400000000000000;
  }

LABEL_54:
  if (v10 == v2 && v11 == v18)
  {
    v20 = 1;
  }

  else
  {
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v20 & 1;
}

{
  v2 = 1701736302;
  v3 = a1;
  if (a1 > 4u)
  {
    v12 = 0xE300000000000000;
    v13 = 7368560;
    v14 = 0x6F6420656C616373;
    v15 = 0xEA00000000006E77;
    if (a1 != 8)
    {
      v14 = 0x707520656C616373;
      v15 = 0xE800000000000000;
    }

    if (a1 != 7)
    {
      v13 = v14;
      v12 = v15;
    }

    v16 = 0x80000001C18DDDA0;
    if (a1 != 5)
    {
      v16 = 0x80000001C18DDDC0;
    }

    if (a1 <= 6u)
    {
      v10 = 0xD000000000000011;
    }

    else
    {
      v10 = v13;
    }

    if (v3 <= 6)
    {
      v11 = v16;
    }

    else
    {
      v11 = v12;
    }
  }

  else
  {
    v4 = 0xE400000000000000;
    v5 = 0x80000001C18DDD40;
    v6 = 0x80000001C18DDD60;
    v7 = 0xD000000000000010;
    if (a1 == 3)
    {
      v8 = 0xD000000000000011;
    }

    else
    {
      v8 = 0xD000000000000010;
    }

    if (a1 != 3)
    {
      v6 = 0x80000001C18DDD80;
    }

    if (a1 == 2)
    {
      v9 = 0xD000000000000011;
    }

    else
    {
      v9 = v8;
    }

    if (a1 != 2)
    {
      v5 = v6;
    }

    if (a1)
    {
      v4 = 0x80000001C18DDD20;
    }

    else
    {
      v7 = 1701736302;
    }

    if (a1 <= 1u)
    {
      v10 = v7;
    }

    else
    {
      v10 = v9;
    }

    if (v3 <= 1)
    {
      v11 = v4;
    }

    else
    {
      v11 = v5;
    }
  }

  if (a2 > 4u)
  {
    if (a2 <= 6u)
    {
      if (a2 == 5)
      {
        v17 = "move out to above";
      }

      else
      {
        v17 = "move out to below";
      }

      goto LABEL_53;
    }

    if (a2 == 7)
    {
      v18 = 0xE300000000000000;
      v2 = 7368560;
    }

    else if (a2 == 8)
    {
      v2 = 0x6F6420656C616373;
      v18 = 0xEA00000000006E77;
    }

    else
    {
      v18 = 0xE800000000000000;
      v2 = 0x707520656C616373;
    }
  }

  else
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v17 = "move out to right";
        goto LABEL_53;
      }

      if (a2 == 3)
      {
        v17 = "move out to front";
LABEL_53:
        v18 = (v17 - 32) | 0x8000000000000000;
        v2 = 0xD000000000000011;
        goto LABEL_54;
      }

      v19 = "move out to rear";
      goto LABEL_51;
    }

    if (a2)
    {
      v19 = "move out to left";
LABEL_51:
      v18 = (v19 - 32) | 0x8000000000000000;
      v2 = 0xD000000000000010;
      goto LABEL_54;
    }

    v18 = 0xE400000000000000;
  }

LABEL_54:
  if (v10 == v2 && v11 == v18)
  {
    v20 = 1;
  }

  else
  {
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v20 & 1;
}

{
  v2 = 0xEB00000000746E65;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0xD00000000000001ALL;
    }

    else
    {
      v5 = 0xD00000000000001CLL;
    }

    if (v3 == 2)
    {
      v4 = 0x80000001C18DDBC0;
    }

    else
    {
      v4 = 0x80000001C18DDBE0;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0xED00005241746E65;
    }

    else
    {
      v4 = 0xEB00000000746E65;
    }

    v5 = 0x726170736E617254;
  }

  v6 = 0xD00000000000001ALL;
  v7 = 0x80000001C18DDBE0;
  if (a2 == 2)
  {
    v7 = 0x80000001C18DDBC0;
  }

  else
  {
    v6 = 0xD00000000000001CLL;
  }

  if (a2)
  {
    v2 = 0xED00005241746E65;
  }

  if (a2 <= 1u)
  {
    v8 = 0x726170736E617254;
  }

  else
  {
    v8 = v6;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (v5 == v8 && v4 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v10 & 1;
}

{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x524165757161704FLL;
    }

    else
    {
      v4 = 0x65757161704FLL;
    }

    if (v2)
    {
      v3 = 0xE800000000000000;
    }

    else
    {
      v3 = 0xE600000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xD000000000000015;
    v3 = 0x80000001C18DDC10;
  }

  else if (a1 == 3)
  {
    v3 = 0x80000001C18DDC30;
    v4 = 0xD000000000000017;
  }

  else
  {
    v3 = 0xE600000000000000;
    v4 = 0x776F64616853;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0x524165757161704FLL;
    }

    else
    {
      v6 = 0x65757161704FLL;
    }

    if (a2)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xE600000000000000;
    }

    if (v4 != v6)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0x80000001C18DDC10;
    if (v4 != 0xD000000000000015)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0x80000001C18DDC30;
    if (v4 != 0xD000000000000017)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v5 = 0xE600000000000000;
    if (v4 != 0x776F64616853)
    {
LABEL_31:
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_32;
    }
  }

  if (v3 != v5)
  {
    goto LABEL_31;
  }

  v7 = 1;
LABEL_32:

  return v7 & 1;
}

{
  v2 = 0x65636166727573;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 1701011814;
    }

    else
    {
      v4 = 0x7463656A626FLL;
    }

    if (v3 == 2)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6567616D69;
    }

    else
    {
      v4 = 0x65636166727573;
    }

    if (v3)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0xE400000000000000;
  v8 = 1701011814;
  if (a2 != 2)
  {
    v8 = 0x7463656A626FLL;
    v7 = 0xE600000000000000;
  }

  if (a2)
  {
    v2 = 0x6567616D69;
    v6 = 0xE500000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

{
  v2 = a1;
  v3 = 0xE400000000000000;
  v4 = 0xE300000000000000;
  v5 = 7107189;
  v6 = 0x6C61636973796870;
  v7 = 0xED00006874646957;
  if (a1 != 4)
  {
    v6 = 0x747265566873656DLL;
    v7 = 0xEA00000000007865;
  }

  if (a1 != 3)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 0x6E656D6E67696C61;
  v9 = 0xE900000000000074;
  if (a1 != 1)
  {
    v8 = 0x6966697373616C63;
    v9 = 0xEE006E6F69746163;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 1701667182;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE300000000000000;
      if (v10 != 7107189)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xED00006874646957;
      if (v10 != 0x6C61636973796870)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xEA00000000007865;
      if (v10 != 0x747265566873656DLL)
      {
LABEL_34:
        v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE900000000000074;
      if (v10 != 0x6E656D6E67696C61)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xEE006E6F69746163;
      if (v10 != 0x6966697373616C63)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE400000000000000;
    if (v10 != 1701667182)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t specialized == infix<A>(_:_:)(uint64_t a1, int64_t a2, uint64_t a3, int64_t a4)
{
  if (a2 <= 1)
  {
    if (!a2)
    {
      v6 = 0xE300000000000000;
      v7 = 5459817;
      if (a4 <= 1)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (a2 != 1)
    {
      goto LABEL_21;
    }

    v6 = 0xE500000000000000;
    v7 = 0x534F63616DLL;
    if (a4 > 1)
    {
      goto LABEL_14;
    }

LABEL_22:
    if (!a4)
    {
      v8 = 0xE300000000000000;
      if (v7 != 5459817)
      {
        goto LABEL_31;
      }

      goto LABEL_29;
    }

    if (a4 == 1)
    {
      v8 = 0xE500000000000000;
      if (v7 != 0x534F63616DLL)
      {
        goto LABEL_31;
      }

      goto LABEL_29;
    }

    goto LABEL_28;
  }

  if (a2 == 2 || a2 == 3)
  {
    v6 = 0xE800000000000000;
    v7 = 0x534F6E6F69736976;
    if (a4 > 1)
    {
      goto LABEL_14;
    }

    goto LABEL_22;
  }

  if (a2 != 4)
  {
LABEL_21:
    v7 = a1;
    v6 = a2;
    if (a4 <= 1)
    {
      goto LABEL_22;
    }

    goto LABEL_14;
  }

  v6 = 0xE400000000000000;
  v7 = 1397716596;
  if (a4 <= 1)
  {
    goto LABEL_22;
  }

LABEL_14:
  if (a4 == 2 || a4 == 3)
  {
    v8 = 0xE800000000000000;
    if (v7 != 0x534F6E6F69736976)
    {
      goto LABEL_31;
    }

    goto LABEL_29;
  }

  if (a4 == 4)
  {
    v8 = 0xE400000000000000;
    if (v7 != 1397716596)
    {
      goto LABEL_31;
    }

    goto LABEL_29;
  }

LABEL_28:
  v8 = a4;
  if (v7 != a3)
  {
LABEL_31:
    v10 = a1;
    v11 = a2;
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
    a2 = v11;
    v9 = v12;
    a1 = v10;
    goto LABEL_32;
  }

LABEL_29:
  if (v6 != v8)
  {
    goto LABEL_31;
  }

  v9 = 1;
LABEL_32:
  outlined copy of __REAssetBundle.ExportOptions.PlatformOS(a1, a2);
  outlined copy of __REAssetBundle.ExportOptions.PlatformOS(a3, a4);

  return v9 & 1;
}

__n64 ImagePresentationComponent.presentationScreenSize.getter()
{
  v6 = *v0;
  v1 = *(v0 + 4);
  v2 = *(v0 + 5);
  v12 = *(v0 + 22);
  v13 = *(v0 + 38);
  *v14 = *(v0 + 54);
  *&v14[10] = *(v0 + 64);
  v11 = *(v0 + 6);
  v8 = v6;
  v9 = v1;
  v10 = v2;
  v7 = v2;
  ImagePresentationComponent.aspectRatio(for:)(v1, &v7);
  v4 = *&v3;
  if ((v3 & 0x100000000) != 0)
  {
    v4 = 1.0;
  }

  result.n64_f32[0] = v6 * v4;
  result.n64_f32[1] = v6;
  return result;
}

void ImagePresentationComponent.screenImageDimension.getter()
{
  v1 = *(v0 + 5);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 40);
  v4 = *(v0 + 48);
  v6 = *(v0 + 72) >> 62;
  if (v6 > 1)
  {
    v27 = *(v0 + 16);
    if (v6 == 2)
    {
      v7 = *(v3 + 16);
      LODWORD(v5) = *(v3 + 32);
      v4 = *(v3 + 40);
      v28 = *(v3 + 48);
      goto LABEL_7;
    }
  }

  else
  {
    if (!v6)
    {
      return;
    }

    v27 = *(v0 + 16);
  }

  v28 = *(v0 + 56);
  v7 = *(v0 + 24);
LABEL_7:

  if (v1 <= 1)
  {
    if (v1)
    {
LABEL_19:

      goto LABEL_20;
    }

    v26 = v5;
  }

  else
  {
    v26 = v5;
  }

  v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v8 & 1) == 0)
  {
    if (v1 != 2)
    {
      v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v9 & 1) == 0)
      {
        v10 = *(v7 + 16);

        RETextureAssetGetSize();
        v12 = v11;
        v13 = *(v7 + 16);
        RETextureAssetGetSize();
        v15 = vcvt_f32_s32(vext_s8(v14, v12, 4uLL));
        if (v26 <= 3)
        {
          if (v26 != 1 && v26 != 2 && v26 != 3)
          {
            goto LABEL_41;
          }

LABEL_39:

          return;
        }

        if ((v26 - 5) < 4)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1C1897FC0;
          *(inited + 32) = v15;
          _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD2VySfG_SaySfGTt1gq5Tf4g_n(inited);
          swift_setDeallocating();
          goto LABEL_39;
        }

        if (v26 == 4)
        {
          goto LABEL_39;
        }

LABEL_41:
        type metadata accessor for CGImagePropertyOrientation(0);
        _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
        __break(1u);
        return;
      }

      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_20:
  if (v4)
  {
    v16 = *(v4 + 16);

    RETextureAssetGetSize();
    v18 = v17;
    v19 = *(v4 + 16);
    RETextureAssetGetSize();
    v21 = vcvt_f32_s32(vext_s8(v20, v18, 4uLL));
    if (v28 > 3)
    {
      if ((v28 - 5) >= 4)
      {
        if (v28 != 4)
        {
          goto LABEL_41;
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
        v22 = swift_initStackObject();
        *(v22 + 16) = xmmword_1C1897FC0;
        *(v22 + 32) = v21;
        _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD2VySfG_SaySfGTt1gq5Tf4g_n(v22);
        swift_setDeallocating();
      }
    }

    else if (v28 != 1 && v28 != 2 && v28 != 3)
    {
      goto LABEL_41;
    }

    return;
  }

  if (v6)
  {
    if (v27)
    {
      v23 = *(v27 + 16);

      RETextureAssetGetSize();
      v24 = *(v27 + 16);
      RETextureAssetGetSize();
    }

    else if (one-time initialization token for defaultScreenImageDimensions != -1)
    {
      swift_once();
    }
  }
}

uint64_t ImagePresentationComponent.availableViewingModes.getter()
{
  v1 = v0[3];
  v2 = v0[6];
  v3 = v0[9];
  v12 = MEMORY[0x1E69E7CD0];
  v4 = v3 >> 62;
  if (v3 >> 62)
  {
    specialized Set._Variant.insert(_:)(&v11, 0);
    if (v4 == 2)
    {
      v5 = v1[2];
      v2 = v1[5];
    }

    if (v2)
    {

      specialized Set._Variant.insert(_:)(&v8, 1);
      specialized Set._Variant.insert(_:)(&v7, 2);
    }

    if (v4 != 1 && (v4 == 3 || v1[11]))
    {
      specialized Set._Variant.insert(_:)(&v10, 3);
      specialized Set._Variant.insert(_:)(&v9, 4);
    }
  }

  return v12;
}

Swift::Int static ImagePresentationComponent.supportedViewingModes(for:)(void *a1)
{
  SpatialStereoImageMetadata.init(source:)(a1, v2);
  outlined destroy of SpatialStereoImageMetadata(v2);
  return _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC17RealityFoundation26ImagePresentationComponentV11ViewingModeV_Tt0g5Tf4g_n(&outlined read-only object #0 of static ImagePresentationComponent.supportedViewingModes(for:));
}

uint64_t static ImagePresentationComponent.supportedViewingModes(for:)(uint64_t a1)
{
  v7 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC17RealityFoundation26ImagePresentationComponentV11ViewingModeV_SayAHGTt0g5Tf4g_n(&outlined read-only object #0 of static ImagePresentationComponent.supportedViewingModes(for:));
  if (*(a1 + 40))
  {
    specialized Set._Variant.insert(_:)(&v4, 1);
    specialized Set._Variant.insert(_:)(&v3, 2);
  }

  if (*(a1 + 88))
  {
    specialized Set._Variant.insert(_:)(&v6, 3);
    specialized Set._Variant.insert(_:)(&v5, 4);
  }

  return v7;
}

uint64_t ImagePresentationComponent.loadingTextureResource.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

void ImagePresentationComponent.init(_:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    v3 = a1;
    swift_retain_n();
    REImagePresentationComponentGetDefaultCornerRadiusInPoints();
    v5 = v4;
    v6 = one-time initialization token for networkSystemObserver;

    if (v6 != -1)
    {
      swift_once();
    }

    ImagePresentationComponent.NetworkSystemObserver.setupRENetworkCallbacks()();

    v7 = 0x4000000000000000;
    v8 = 1;
  }

  else
  {
    if (one-time initialization token for defaultScreenImageDimensions != -1)
    {
      swift_once();
    }

    v3 = static ImagePresentationComponent.defaultScreenImageDimensions;
    REImagePresentationComponentGetDefaultCornerRadiusInPoints();
    v5 = v9;
    if (one-time initialization token for networkSystemObserver != -1)
    {
      swift_once();
    }

    ImagePresentationComponent.NetworkSystemObserver.setupRENetworkCallbacks()();
    v8 = 0;
    v7 = 0;
  }

  *a2 = 1065353216;
  *(a2 + 4) = 0;
  *(a2 + 6) = 1;
  *(a2 + 8) = 0;
  *(a2 + 12) = v5;
  *(a2 + 16) = 0;
  *(a2 + 24) = v3;
  *(a2 + 32) = 0;
  *(a2 + 40) = v8;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = v7;
}

double ImagePresentationComponent.init(contentDimensionsHint:horizontalFoVHint:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (one-time initialization token for defaultScreenImageDimensions != -1)
  {
    swift_once();
  }

  v10 = static ImagePresentationComponent.defaultScreenImageDimensions;
  REImagePresentationComponentGetDefaultCornerRadiusInPoints();
  v12 = v11;
  if (one-time initialization token for networkSystemObserver != -1)
  {
    swift_once();
  }

  if (a3)
  {
    v14 = -1;
  }

  else
  {
    v14 = 0;
  }

  *&v13.i32[1] = a2;
  *v13.i32 = a1;
  v15 = vbsl_s8(vdup_n_s32(v14), v10, v13);
  if ((a4 & 0x100000000) != 0)
  {
    v16 = 0;
  }

  else
  {
    v16 = a4;
  }

  ImagePresentationComponent.NetworkSystemObserver.setupRENetworkCallbacks()();
  *a5 = 1065353216;
  *(a5 + 4) = 0;
  *(a5 + 6) = 1;
  *(a5 + 8) = 0;
  *(a5 + 12) = v12;
  *(a5 + 16) = 0;
  *(a5 + 24) = v15;
  *(a5 + 32) = v16;
  result = 0.0;
  *(a5 + 40) = 0u;
  *(a5 + 56) = 0u;
  *(a5 + 72) = 0;
  return result;
}

uint64_t ImagePresentationComponent.init(imageSource:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 1512) = a2;
  *(v2 + 760) = a1;
  return MEMORY[0x1EEE6DFA0](ImagePresentationComponent.init(imageSource:), 0, 0);
}

uint64_t ImagePresentationComponent.init(imageSource:)()
{
  v1 = *(v0 + 1512);
  *(v0 + 1580) = 0;
  v2 = v1;
  v3 = swift_task_alloc();
  *(v0 + 1520) = v3;
  *v3 = v0;
  v3[1] = ImagePresentationComponent.init(imageSource:);
  v4 = *(v0 + 1512);

  return specialized static ImagePresentationComponent.ImagePair.imagePairAndMetadata(imageSource:options:)(v0 + 16, v4, (v0 + 1580));
}

{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 1520);
  v5 = *v1;
  v3[191] = v0;
  v6 = v2[2];
  v3[192] = v6;
  v7 = v2[3];
  v3[193] = v7;
  v8 = *(v3 + 8);
  *(v3 + 394) = v8;
  v57 = *(v3 + 7);
  v58 = *(v3 + 5);
  *(v3 + 97) = v58;
  v3[196] = v57;
  v9 = *(v3 + 72);
  v10 = *(v3 + 76);
  v42 = *(v3 + 84);
  v26 = *(v3 + 9);
  v27 = *(v3 + 7);
  v20 = *(v3 + 8);
  v21 = *(v3 + 6);
  v24 = *(v3 + 13);
  v25 = *(v3 + 11);
  v18 = *(v3 + 12);
  v19 = *(v3 + 10);
  v22 = *(v3 + 17);
  v23 = *(v3 + 15);
  v16 = *(v3 + 16);
  v17 = *(v3 + 14);
  v56 = *(v3 + 19);
  v41 = *(v3 + 18);
  v55 = *(v3 + 21);
  v40 = *(v3 + 20);
  v54 = *(v3 + 23);
  v39 = *(v3 + 22);
  v53 = *(v3 + 25);
  v38 = *(v3 + 24);
  v52 = *(v3 + 27);
  v37 = *(v3 + 26);
  v51 = *(v3 + 29);
  v36 = *(v3 + 28);
  v50 = *(v3 + 31);
  v35 = *(v3 + 30);
  v49 = *(v3 + 33);
  v33 = *(v3 + 34);
  v34 = *(v3 + 32);
  v47 = *(v3 + 37);
  v48 = *(v3 + 35);
  v31 = *(v3 + 38);
  v32 = *(v3 + 36);
  v45 = *(v3 + 41);
  v46 = *(v3 + 39);
  v29 = *(v3 + 42);
  v30 = *(v3 + 40);
  v43 = *(v3 + 45);
  v44 = *(v3 + 43);
  v28 = *(v3 + 44);
  v11 = v2[92];
  v12 = v2[93];
  v13 = v2[94];

  if (v0)
  {
    v14 = ImagePresentationComponent.init(imageSource:);
  }

  else
  {
    *(v3 + 53) = v21;
    *(v3 + 54) = v27;
    *(v3 + 55) = v20;
    *(v3 + 56) = v26;
    *(v3 + 57) = v19;
    *(v3 + 58) = v25;
    *(v3 + 59) = v18;
    *(v3 + 60) = v24;
    *(v3 + 61) = v17;
    *(v3 + 62) = v23;
    *(v3 + 63) = v16;
    *(v3 + 64) = v22;
    v3[96] = v6;
    v3[97] = v7;
    *(v3 + 196) = v8;
    *(v3 + 99) = v58;
    *(v3 + 101) = v57;
    *(v3 + 824) = v9;
    *(v3 + 828) = v10;
    *(v3 + 836) = v42;
    *(v3 + 65) = v41;
    *(v3 + 66) = v56;
    *(v3 + 67) = v40;
    *(v3 + 68) = v55;
    *(v3 + 69) = v39;
    *(v3 + 70) = v54;
    *(v3 + 71) = v38;
    *(v3 + 72) = v53;
    *(v3 + 73) = v37;
    *(v3 + 74) = v52;
    *(v3 + 75) = v36;
    *(v3 + 76) = v51;
    *(v3 + 77) = v35;
    *(v3 + 78) = v50;
    *(v3 + 79) = v34;
    *(v3 + 80) = v49;
    *(v3 + 81) = v33;
    *(v3 + 82) = v48;
    *(v3 + 83) = v32;
    *(v3 + 84) = v47;
    *(v3 + 85) = v31;
    *(v3 + 86) = v46;
    *(v3 + 87) = v30;
    *(v3 + 88) = v45;
    *(v3 + 89) = v29;
    *(v3 + 90) = v44;
    *(v3 + 91) = v28;
    *(v3 + 92) = v43;
    v3[186] = v11;
    v3[187] = v12;
    v3[188] = v13;
    outlined destroy of ImagePresentationComponent.ImagePair.MetadataPair((v3 + 102));
    v14 = ImagePresentationComponent.init(imageSource:);
  }

  return MEMORY[0x1EEE6DFA0](v14, 0, 0);
}

uint64_t ImagePresentationComponent.init(contentsOf:)(uint64_t a1, uint64_t a2)
{
  v2[20] = a1;
  v2[21] = a2;
  v3 = type metadata accessor for URL();
  v2[22] = v3;
  v4 = *(v3 - 8);
  v2[23] = v4;
  v5 = *(v4 + 64) + 15;
  v2[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](ImagePresentationComponent.init(contentsOf:), 0, 0);
}

uint64_t ImagePresentationComponent.init(contentsOf:)()
{
  (*(*(v0 + 184) + 16))(*(v0 + 192), *(v0 + 168), *(v0 + 176));
  *(v0 + 260) = 0;
  v1 = swift_task_alloc();
  *(v0 + 200) = v1;
  *v1 = v0;
  v1[1] = ImagePresentationComponent.init(contentsOf:);
  v2 = *(v0 + 192);

  return specialized ImagePresentationComponent.ImagePair.init(contentsOf:options:)(v0 + 16, v2, (v0 + 260));
}

{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v7 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v4 = ImagePresentationComponent.init(contentsOf:);
  }

  else
  {
    v5 = *(v2 + 24);
    *(v2 + 216) = *(v2 + 16);
    *(v2 + 224) = v5;
    *(v2 + 256) = *(v2 + 32);
    *(v2 + 232) = *(v2 + 40);
    *(v2 + 248) = *(v2 + 56);
    v4 = ImagePresentationComponent.init(contentsOf:);
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

double ImagePresentationComponent.init(spatial3DImage:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  REImagePresentationComponentGetDefaultCornerRadiusInPoints();
  v5 = v4;
  v6 = one-time initialization token for networkSystemObserver;

  if (v6 != -1)
  {
    swift_once();
  }

  ImagePresentationComponent.NetworkSystemObserver.setupRENetworkCallbacks()();

  *a2 = 1065353216;
  *(a2 + 4) = 0;
  *(a2 + 6) = 1;
  *(a2 + 8) = 0;
  *(a2 + 12) = v5;
  *(a2 + 16) = 0;
  *(a2 + 24) = a1;
  result = 0.0;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0x8000000000000000;
  return result;
}

void ImagePresentationComponent.init(imageSource:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v12[0] = 0;
  v3 = a1;
  specialized ImagePresentationComponent.ImagePair.init(imageSource:options:)(v3, v12, v13);
  v4 = v13[0];
  v5 = v13[1];
  v6 = v14;
  v7 = v15;
  v8 = v16;
  v9 = v17;
  outlined init with copy of ImagePresentationComponent.ImagePair(v13, v12);
  REImagePresentationComponentGetDefaultCornerRadiusInPoints();
  v11 = v10;
  outlined init with copy of ImagePresentationComponent.ImagePair(v13, v12);
  if (one-time initialization token for networkSystemObserver != -1)
  {
    swift_once();
  }

  ImagePresentationComponent.NetworkSystemObserver.setupRENetworkCallbacks()();
  outlined destroy of ImagePresentationComponent.ImagePair(v13);
  outlined destroy of ImagePresentationComponent.ImagePair(v13);

  *a2 = 1065353216;
  *(a2 + 4) = 0;
  *(a2 + 6) = 1;
  *(a2 + 8) = 0;
  *(a2 + 12) = v11;
  *(a2 + 16) = 0;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;
  *(a2 + 40) = v6;
  *(a2 + 48) = v7;
  *(a2 + 56) = v8;
  *(a2 + 64) = v9;
  *(a2 + 72) = 0x4000000000000000;
}

uint64_t ImagePresentationComponent.init(imageSource:options:)(uint64_t a1, void *a2, _BYTE *a3)
{
  *(v3 + 1512) = a2;
  *(v3 + 760) = a1;
  *(v3 + 1580) = *a3;
  v4 = a2;
  v5 = swift_task_alloc();
  *(v3 + 1520) = v5;
  *v5 = v3;
  v5[1] = ImagePresentationComponent.init(imageSource:options:);

  return specialized static ImagePresentationComponent.ImagePair.imagePairAndMetadata(imageSource:options:)(v3 + 16, v4, (v3 + 1580));
}

uint64_t ImagePresentationComponent.init(imageSource:options:)()
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 1520);
  v5 = *v1;
  v3[191] = v0;
  v6 = v2[2];
  v3[192] = v6;
  v7 = v2[3];
  v3[193] = v7;
  v8 = *(v3 + 8);
  *(v3 + 394) = v8;
  v57 = *(v3 + 7);
  v58 = *(v3 + 5);
  *(v3 + 97) = v58;
  v3[196] = v57;
  v9 = *(v3 + 72);
  v10 = *(v3 + 76);
  v42 = *(v3 + 84);
  v26 = *(v3 + 9);
  v27 = *(v3 + 7);
  v20 = *(v3 + 8);
  v21 = *(v3 + 6);
  v24 = *(v3 + 13);
  v25 = *(v3 + 11);
  v18 = *(v3 + 12);
  v19 = *(v3 + 10);
  v22 = *(v3 + 17);
  v23 = *(v3 + 15);
  v16 = *(v3 + 16);
  v17 = *(v3 + 14);
  v56 = *(v3 + 19);
  v41 = *(v3 + 18);
  v55 = *(v3 + 21);
  v40 = *(v3 + 20);
  v54 = *(v3 + 23);
  v39 = *(v3 + 22);
  v53 = *(v3 + 25);
  v38 = *(v3 + 24);
  v52 = *(v3 + 27);
  v37 = *(v3 + 26);
  v51 = *(v3 + 29);
  v36 = *(v3 + 28);
  v50 = *(v3 + 31);
  v35 = *(v3 + 30);
  v49 = *(v3 + 33);
  v33 = *(v3 + 34);
  v34 = *(v3 + 32);
  v47 = *(v3 + 37);
  v48 = *(v3 + 35);
  v31 = *(v3 + 38);
  v32 = *(v3 + 36);
  v45 = *(v3 + 41);
  v46 = *(v3 + 39);
  v29 = *(v3 + 42);
  v30 = *(v3 + 40);
  v43 = *(v3 + 45);
  v44 = *(v3 + 43);
  v28 = *(v3 + 44);
  v11 = v2[92];
  v12 = v2[93];
  v13 = v2[94];

  if (v0)
  {
    v14 = ImagePresentationComponent.init(imageSource:options:);
  }

  else
  {
    *(v3 + 53) = v21;
    *(v3 + 54) = v27;
    *(v3 + 55) = v20;
    *(v3 + 56) = v26;
    *(v3 + 57) = v19;
    *(v3 + 58) = v25;
    *(v3 + 59) = v18;
    *(v3 + 60) = v24;
    *(v3 + 61) = v17;
    *(v3 + 62) = v23;
    *(v3 + 63) = v16;
    *(v3 + 64) = v22;
    v3[96] = v6;
    v3[97] = v7;
    *(v3 + 196) = v8;
    *(v3 + 99) = v58;
    *(v3 + 101) = v57;
    *(v3 + 824) = v9;
    *(v3 + 828) = v10;
    *(v3 + 836) = v42;
    *(v3 + 65) = v41;
    *(v3 + 66) = v56;
    *(v3 + 67) = v40;
    *(v3 + 68) = v55;
    *(v3 + 69) = v39;
    *(v3 + 70) = v54;
    *(v3 + 71) = v38;
    *(v3 + 72) = v53;
    *(v3 + 73) = v37;
    *(v3 + 74) = v52;
    *(v3 + 75) = v36;
    *(v3 + 76) = v51;
    *(v3 + 77) = v35;
    *(v3 + 78) = v50;
    *(v3 + 79) = v34;
    *(v3 + 80) = v49;
    *(v3 + 81) = v33;
    *(v3 + 82) = v48;
    *(v3 + 83) = v32;
    *(v3 + 84) = v47;
    *(v3 + 85) = v31;
    *(v3 + 86) = v46;
    *(v3 + 87) = v30;
    *(v3 + 88) = v45;
    *(v3 + 89) = v29;
    *(v3 + 90) = v44;
    *(v3 + 91) = v28;
    *(v3 + 92) = v43;
    v3[186] = v11;
    v3[187] = v12;
    v3[188] = v13;
    outlined destroy of ImagePresentationComponent.ImagePair.MetadataPair((v3 + 102));
    v14 = ImagePresentationComponent.init(imageSource:options:);
  }

  return MEMORY[0x1EEE6DFA0](v14, 0, 0);
}

{
  v1 = *(v0 + 1552);
  v2 = *(v0 + 1536);

  REImagePresentationComponentGetDefaultCornerRadiusInPoints();
  v4 = v3;
  v5 = one-time initialization token for networkSystemObserver;

  if (v5 != -1)
  {
    swift_once();
  }

  v6 = *(v0 + 1568);
  v14 = *(v0 + 1552);
  v7 = *(v0 + 1576);
  v8 = *(v0 + 1544);
  v9 = *(v0 + 1536);
  v10 = *(v0 + 1512);
  v11 = *(v0 + 760);
  ImagePresentationComponent.NetworkSystemObserver.setupRENetworkCallbacks()();

  *v11 = 1065353216;
  *(v11 + 4) = 0;
  *(v11 + 6) = 1;
  *(v11 + 8) = 0;
  *(v11 + 12) = v4;
  *(v11 + 16) = 0;
  *(v11 + 24) = v9;
  *(v11 + 32) = v8;
  *(v11 + 40) = v7;
  *(v11 + 48) = v14;
  *(v11 + 64) = v6;
  *(v11 + 72) = 0x4000000000000000;
  v12 = *(v0 + 8);

  return v12();
}

{
  v1 = v0[189];

  v2 = v0[1];
  v3 = v0[191];

  return v2();
}

uint64_t ImagePresentationComponent.init(contentsOf:options:)(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  *(v3 + 160) = a1;
  *(v3 + 168) = a2;
  v5 = type metadata accessor for URL();
  *(v3 + 176) = v5;
  v6 = *(v5 - 8);
  *(v3 + 184) = v6;
  v7 = *(v6 + 64) + 15;
  *(v3 + 192) = swift_task_alloc();
  *(v3 + 261) = *a3;

  return MEMORY[0x1EEE6DFA0](ImagePresentationComponent.init(contentsOf:options:), 0, 0);
}

uint64_t ImagePresentationComponent.init(contentsOf:options:)()
{
  v1 = *(v0 + 261);
  (*(*(v0 + 184) + 16))(*(v0 + 192), *(v0 + 168), *(v0 + 176));
  *(v0 + 260) = v1;
  v2 = swift_task_alloc();
  *(v0 + 200) = v2;
  *v2 = v0;
  v2[1] = ImagePresentationComponent.init(contentsOf:options:);
  v3 = *(v0 + 192);

  return specialized ImagePresentationComponent.ImagePair.init(contentsOf:options:)(v0 + 16, v3, (v0 + 260));
}

{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v7 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v4 = ImagePresentationComponent.init(contentsOf:options:);
  }

  else
  {
    v5 = *(v2 + 24);
    *(v2 + 216) = *(v2 + 16);
    *(v2 + 224) = v5;
    *(v2 + 256) = *(v2 + 32);
    *(v2 + 232) = *(v2 + 40);
    *(v2 + 248) = *(v2 + 56);
    v4 = ImagePresentationComponent.init(contentsOf:options:);
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

{
  outlined init with copy of ImagePresentationComponent.ImagePair(v0 + 16, v0 + 64);
  REImagePresentationComponentGetDefaultCornerRadiusInPoints();
  v2 = v1;
  outlined init with copy of ImagePresentationComponent.ImagePair(v0 + 16, v0 + 112);
  if (one-time initialization token for networkSystemObserver != -1)
  {
    swift_once();
  }

  v14 = *(v0 + 248);
  v13 = *(v0 + 232);
  v3 = *(v0 + 256);
  v5 = *(v0 + 216);
  v4 = *(v0 + 224);
  v7 = *(v0 + 184);
  v6 = *(v0 + 192);
  v9 = *(v0 + 168);
  v8 = *(v0 + 176);
  v10 = *(v0 + 160);
  ImagePresentationComponent.NetworkSystemObserver.setupRENetworkCallbacks()();
  outlined destroy of ImagePresentationComponent.ImagePair(v0 + 16);
  outlined destroy of ImagePresentationComponent.ImagePair(v0 + 16);
  (*(v7 + 8))(v9, v8);
  *v10 = 1065353216;
  *(v10 + 4) = 0;
  *(v10 + 6) = 1;
  *(v10 + 8) = 0;
  *(v10 + 12) = v2;
  *(v10 + 16) = 0;
  *(v10 + 24) = v5;
  *(v10 + 32) = v4;
  *(v10 + 40) = v3;
  *(v10 + 48) = v13;
  *(v10 + 64) = v14;
  *(v10 + 72) = 0x4000000000000000;

  v11 = *(v0 + 8);

  return v11();
}

{
  v1 = v0[24];
  (*(v0[23] + 8))(v0[21], v0[22]);

  v2 = v0[1];
  v3 = v0[26];

  return v2();
}

void static ImagePresentationComponent.createDataSourceFromCoreImagePair(coreComponent:imageContentType:contentDimensionHint:horizontalFoV:)(unsigned __int8 a1@<W1>, uint64_t a2@<X8>, uint64_t a3@<D0>, unsigned int a4@<S1>)
{
  specialized static ImagePresentationComponent.createImagePairFromCoreMonoAndStereoImages(coreComponent:imageContentType:horizontalFoV:)(a1, v22, a4);
  v7 = v22[0];
  if (v22[0])
  {
    v8 = v22[1];
    v9 = v23;
    v21 = v24;
    v10 = v25;
    if (one-time initialization token for ImageLogger != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, ImageLogger);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1C1358000, v12, v13, "ImagePresentationComponent: Successfully retrieved DataSource from core-stored ImagePair content", v14, 2u);
      MEMORY[0x1C6902A30](v14, -1, -1);
    }

    v15 = 0x4000000000000000;
    v16 = v21;
  }

  else
  {
    if (one-time initialization token for ImageLogger != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, ImageLogger);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1C1358000, v18, v19, "ImagePresentationComponent: Could not retrieve ImagePair content from stored Core data, defaulting to empty DataSource", v20, 2u);
      MEMORY[0x1C6902A30](v20, -1, -1);
      outlined destroy of ImagePresentationComponent.ImagePair?(v22);
    }

    v9 = 0;
    v10 = 0;
    v15 = 0;
    v7 = a3;
    v8 = a4;
    v16 = 0uLL;
  }

  *a2 = v7;
  *(a2 + 8) = v8;
  *(a2 + 16) = v9;
  *(a2 + 24) = v16;
  *(a2 + 40) = v10;
  *(a2 + 48) = v15;
}

uint64_t static ImagePresentationComponent.__fromCore(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  REImagePresentationComponentGetScreenHeight();
  v5 = v4;
  ImageContentType = REImagePresentationComponentGetImageContentType();
  REImagePresentationComponentGetContentDimensionHint();
  v8 = v7;
  LoadingImageTextureAsset = REImagePresentationComponentGetLoadingImageTextureAsset();
  if (LoadingImageTextureAsset)
  {
    v10 = LoadingImageTextureAsset;
    type metadata accessor for TextureResource();
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    *(v11 + 24) = 0;
    RERetain();
    REAssetSetSwiftObject();
  }

  else
  {
    v11 = 0;
  }

  REImagePresentationComponentGetHorizontalFOV();
  v13 = v12;
  REComponentGetEntity();
  REImagePresentationStatusComponentGetComponentType();
  v59 = v11;
  if (!REEntityGetComponentByClass())
  {
    if (one-time initialization token for ImageLogger != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, ImageLogger);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1C1358000, v19, v20, "Missing ImagePresentationStatusComponent for ImagePresentationComponent", v21, 2u);
      MEMORY[0x1C6902A30](v21, -1, -1);
    }

    goto LABEL_13;
  }

  CurrentViewingMode = REImagePresentationStatusComponentGetCurrentViewingMode();
  CurrentImmersiveViewingMode = REImagePresentationStatusComponentGetCurrentImmersiveViewingMode();
  if (CurrentViewingMode == 2)
  {
    v16 = CurrentImmersiveViewingMode == 2;
    v17 = 3;
    goto LABEL_15;
  }

  if (CurrentViewingMode != 1)
  {
LABEL_13:
    v58 = 0;
    goto LABEL_18;
  }

  v16 = CurrentImmersiveViewingMode == 2;
  v17 = 1;
LABEL_15:
  if (v16)
  {
    ++v17;
  }

  v58 = v17;
LABEL_18:
  if (REImagePresentationComponentGetSpatial3DImage())
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined init with copy of Any(v62, v61);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation26ImagePresentationComponentV14Spatial3DImageCSgMd, &_s17RealityFoundation26ImagePresentationComponentV14Spatial3DImageCSgMR);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1(v62);
      v22 = v60;
      if (v60)
      {
        v23 = one-time initialization token for ImageLogger;

        if (v23 != -1)
        {
          swift_once();
        }

        v24 = type metadata accessor for Logger();
        __swift_project_value_buffer(v24, ImageLogger);
        v25 = Logger.logObject.getter();
        v26 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          *v27 = 0;
          _os_log_impl(&dword_1C1358000, v25, v26, "ImagePresentationComponent: Retrieving ImagePresentationComponent _fromCore using stored Spatial3DImage", v27, 2u);
          MEMORY[0x1C6902A30](v27, -1, -1);
        }

        v28 = 0;
        v29 = 0;
        v30 = 0;
        v31 = 0;
        v32 = 0;
        v33 = 0x8000000000000000;
        goto LABEL_43;
      }
    }

    else
    {
      if (one-time initialization token for ImageLogger != -1)
      {
        swift_once();
      }

      v34 = type metadata accessor for Logger();
      __swift_project_value_buffer(v34, ImageLogger);
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&dword_1C1358000, v35, v36, "ImagePresentationComponent: Stored Spatial3DImage on ImagePresentationComponent cannot be cast as a Spatial3DImage", v37, 2u);
        MEMORY[0x1C6902A30](v37, -1, -1);
      }

      __swift_destroy_boxed_opaque_existential_1(v62);
    }
  }

  if (REImagePresentationComponentGetHasGeneratedSpatial3DImageContent())
  {
    if (one-time initialization token for ImageLogger != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    __swift_project_value_buffer(v38, ImageLogger);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_1C1358000, v39, v40, "ImagePresentationComponent: Retrieving ImagePresentationComponent _fromCore using stored MXIData and ImagePair (this occurs if the core layer IPC contained already generated Spatial3DImage content)", v41, 2u);
      MEMORY[0x1C6902A30](v41, -1, -1);
    }

    specialized static ImagePresentationComponent.createDataSourceFromCoreMXIData(coreComponent:imageContentType:contentDimensionHint:horizontalFoV:)(ImageContentType, v62, v8, v13);
  }

  else
  {
    if (one-time initialization token for ImageLogger != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    __swift_project_value_buffer(v42, ImageLogger);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_1C1358000, v43, v44, "ImagePresentationComponent: Retrieving ImagePresentationComponent _fromCore using stored ImagePair content)", v45, 2u);
      MEMORY[0x1C6902A30](v45, -1, -1);
    }

    static ImagePresentationComponent.createDataSourceFromCoreImagePair(coreComponent:imageContentType:contentDimensionHint:horizontalFoV:)(ImageContentType, v62, v8, v13);
  }

  v22 = v62[0];
  v28 = v62[1];
  v29 = v62[2];
  v30 = v62[3];
  v31 = v62[4];
  v32 = v62[5];
  v33 = v62[6];
LABEL_43:
  ShouldLockMeshToImageAspectRatio = REImagePresentationComponentGetShouldLockMeshToImageAspectRatio();
  REImagePresentationComponentGetCornerRadiusInPoints();
  v47 = v46;
  REImagePresentationComponentGetSpatial3DCollapseStrength();
  v49 = v48;
  DesiredViewingMode = REImagePresentationComponentGetDesiredViewingMode();
  DesiredImmersiveViewingMode = REImagePresentationComponentGetDesiredImmersiveViewingMode();
  if (DesiredViewingMode == 2)
  {
    v52 = DesiredImmersiveViewingMode == 2;
    v53 = 3;
  }

  else
  {
    if (DesiredViewingMode != 1)
    {
      v56 = 0;
      goto LABEL_51;
    }

    v52 = DesiredImmersiveViewingMode == 2;
    v53 = 1;
  }

  if (v52)
  {
    ++v53;
  }

  v56 = v53;
LABEL_51:
  *(a2 + 4) = 0;
  REImagePresentationComponentGetDefaultCornerRadiusInPoints();
  *(a2 + 32) = v28;
  *(a2 + 40) = v29;
  *(a2 + 48) = v30;
  *(a2 + 56) = v31;
  *(a2 + 64) = v32;
  *(a2 + 72) = v33;
  *(a2 + 24) = v22;
  *(a2 + 16) = v59;
  outlined copy of ImagePresentationComponent.DataSource(v22, v28, v29, v30, v31, v32, v33);
  v54 = one-time initialization token for networkSystemObserver;

  if (v54 != -1)
  {
    swift_once();
  }

  ImagePresentationComponent.NetworkSystemObserver.setupRENetworkCallbacks()();

  outlined consume of ImagePresentationComponent.DataSource(v22, v28, v29, v30, v31, v32, v33);

  *a2 = v5;
  *(a2 + 4) = v56;
  *(a2 + 5) = v58;
  *(a2 + 6) = ShouldLockMeshToImageAspectRatio;
  *(a2 + 8) = v49;
  *(a2 + 12) = v47;
  return result;
}

uint64_t ImagePresentationComponent.__toCore(_:)(void **a1)
{
  v2._rawValue = *a1;
  v3 = *v1;
  v4 = *(v1 + 4);
  v106 = *(v1 + 6);
  v5 = v1[2];
  v6 = v1[3];
  v7 = *(v1 + 2);
  v8 = *(v1 + 3);
  v9 = *(v1 + 5);
  v110 = *(v1 + 4);
  v11 = *(v1 + 6);
  v10 = *(v1 + 7);
  v12 = *(v1 + 8);
  v13 = *(v1 + 9);
  v107 = v12;
  v108 = v10;
  REImagePresentationComponentSetScreenHeight();
  v105 = v13;
  v14 = v13 >> 62;
  if ((v13 >> 62) > 1)
  {
    if (v14 == 2)
    {
      v15 = *(v8 + 16);
      v16 = *(v8 + 40);
    }
  }

  else if (!v14)
  {
    REImagePresentationComponentSetImageContentType();
    goto LABEL_7;
  }

  REImagePresentationComponentSetImageContentType();

LABEL_7:
  REImagePresentationComponentSetContentDimensionHint();
  if (v7)
  {
    v17 = *(v7 + 16);
  }

  REImagePresentationComponentSetLoadingImageTextureAsset();
  v104 = v9;
  if (v14 > 1)
  {
    v109 = v14;
    if (v14 == 2)
    {
      v22 = v11;
      v23 = *(v8 + 16);
      v24 = *(v8 + 24);
      v25 = *(v8 + 32);
      v26 = v8;
      v27 = *(v8 + 40);
      goto LABEL_20;
    }
  }

  else
  {
    if (!v14)
    {
      if (one-time initialization token for ImageLogger != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      __swift_project_value_buffer(v18, ImageLogger);
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_1C1358000, v19, v20, "ImagePresentationComponent: Setting Core's MonoImage to nil", v21, 2u);
        MEMORY[0x1C6902A30](v21, -1, -1);
      }

      REImagePresentationComponentSetMonoImageTextureAsset();
      REImagePresentationComponentSetMonoImageTextureIndex();
      REImagePresentationComponentSetMonoImageOrientation();
LABEL_30:
      v41 = &static ComponentInfo.Platform.macOS;
      if (one-time initialization token for ImageLogger != -1)
      {
        swift_once();
      }

      v42 = type metadata accessor for Logger();
      __swift_project_value_buffer(v42, ImageLogger);
      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&dword_1C1358000, v43, v44, "ImagePresentationComponent: Setting Core's SpatialStereoImage to nil", v45, 2u);
        v46 = v45;
        v41 = &static ComponentInfo.Platform.macOS;
        MEMORY[0x1C6902A30](v46, -1, -1);
      }

      REImagePresentationComponentSetStereoBaseline();
      REImagePresentationComponentSetDisparityAdjustment();
      REImagePresentationComponentSetHorizontalFOV();
      REImagePresentationComponentSetStereoImageTextureAsset();
      REImagePresentationComponentSetStereoImageOrientation();
      goto LABEL_35;
    }

    v109 = v14;
  }

  v22 = v11;
  v26 = v8;
  v23 = v8;
LABEL_20:

  if (one-time initialization token for ImageLogger != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  __swift_project_value_buffer(v28, ImageLogger);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_1C1358000, v29, v30, "ImagePresentationComponent: Setting Core's MonoImage to the DataStore's MonoImage", v31, 2u);
    MEMORY[0x1C6902A30](v31, -1, -1);
  }

  v32 = *(v23 + 16);
  REImagePresentationComponentSetMonoImageTextureAsset();
  REImagePresentationComponentSetMonoImageTextureIndex();
  REImagePresentationComponentSetMonoImageOrientation();

  v33 = v22;
  if (v109 == 2)
  {
    v34 = v26[2];
    v33 = v26[5];
    v35 = v26[6];
    v36 = v26[7];
  }

  v8 = v26;
  v11 = v22;
  v14 = v109;
  if (!v33)
  {
    goto LABEL_30;
  }

  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&dword_1C1358000, v37, v38, "ImagePresentationComponent: Setting Core's SpatialStereoImage to the DataStore's SpatialStereoImage", v39, 2u);
    MEMORY[0x1C6902A30](v39, -1, -1);
  }

  REImagePresentationComponentSetStereoBaseline();
  REImagePresentationComponentSetDisparityAdjustment();
  REImagePresentationComponentSetHorizontalFOV();
  v40 = *(v33 + 16);
  REImagePresentationComponentSetStereoImageTextureAsset();
  REImagePresentationComponentSetStereoImageOrientation();

  v41 = &static ComponentInfo.Platform.macOS;
LABEL_35:
  if (REImagePresentationComponentGetSpatial3DImage())
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined init with copy of Any(v113, v111);
    type metadata accessor for ImagePresentationComponent.Spatial3DImage();
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1(v113);
      v47 = v112;
      if (v14 == 3)
      {
        goto LABEL_38;
      }

      goto LABEL_52;
    }

    if (v41[474] != -1)
    {
      swift_once();
    }

    v54 = type metadata accessor for Logger();
    __swift_project_value_buffer(v54, ImageLogger);
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_1C1358000, v55, v56, "ImagePresentationComponent: Stored Spatial3DImage on ImagePresentationComponent cannot be cast as a Spatial3DImage", v57, 2u);
      v58 = v57;
      v41 = &static ComponentInfo.Platform.macOS;
      MEMORY[0x1C6902A30](v58, -1, -1);
    }

    __swift_destroy_boxed_opaque_existential_1(v113);
  }

  v47 = 0;
  if (v14 == 3)
  {
LABEL_38:
    v48 = v105 & 0x3FFFFFFFFFFFFFFFLL;
    v49 = v41[474];

    if (v49 != -1)
    {
      swift_once();
    }

    v50 = type metadata accessor for Logger();
    __swift_project_value_buffer(v50, ImageLogger);
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_1C1358000, v51, v52, "ImagePresentationComponent: Converting _toCore using an already generated MXI content, so we are storing it directly in Core without reference to a Spatial3DImage", v53, 2u);
      MEMORY[0x1C6902A30](v53, -1, -1);
    }

    swift_retain_n();
    REImagePresentationComponentSetSpatial3DImage();
    REImagePresentationComponentSetHasGeneratedSpatial3DImageContent();
    if (REImagePresentationComponentGetIsSpatial3DImageGenerating())
    {
      REImagePresentationComponentNotifySpatial3DImageGenerationCancelled();
    }

    v41 = &static ComponentInfo.Platform.macOS;
    if (!v47)
    {
      goto LABEL_87;
    }

LABEL_82:
    v80 = v41[474];

    if (v80 != -1)
    {
      swift_once();
    }

    v81 = type metadata accessor for Logger();
    __swift_project_value_buffer(v81, ImageLogger);
    v82 = Logger.logObject.getter();
    v83 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      *v84 = 0;
      _os_log_impl(&dword_1C1358000, v82, v83, "ImagePresentationComponent: We pass the ownership of the IPC from the previously registered Spatial3DImage to the new one, so we unregister the old one here", v84, 2u);
      MEMORY[0x1C6902A30](v84, -1, -1);
    }

    ImagePresentationComponent.Spatial3DImage.unregisterComponent(component:)(v2);

    goto LABEL_87;
  }

LABEL_52:
  if (v14 == 2)
  {
    v59 = *(v8 + 88);
    v60 = v41[474];

    if (v59)
    {
      if (v60 != -1)
      {
        swift_once();
      }

      v61 = type metadata accessor for Logger();
      __swift_project_value_buffer(v61, ImageLogger);
      v62 = Logger.logObject.getter();
      v63 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        *v64 = 0;
        _os_log_impl(&dword_1C1358000, v62, v63, "ImagePresentationComponent: Converting _toCore using a generated Spatial3DImage, so we pass its MXI scene resources without storing it directly in Core", v64, 2u);
        v65 = v64;
        v41 = &static ComponentInfo.Platform.macOS;
        MEMORY[0x1C6902A30](v65, -1, -1);
      }

      if (REImagePresentationComponentGetIsSpatial3DImageGenerating())
      {
        REImagePresentationComponentNotifySpatial3DImageGenerationCancelled();
      }

      if (!v47)
      {
        goto LABEL_81;
      }
    }

    else
    {
      if (v60 != -1)
      {
        swift_once();
      }

      v70 = type metadata accessor for Logger();
      __swift_project_value_buffer(v70, ImageLogger);
      v71 = Logger.logObject.getter();
      v72 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        *v73 = 0;
        _os_log_impl(&dword_1C1358000, v71, v72, "ImagePresentationComponent: Converting _toCore using an ungenerated Spatial3DImage, so we are storing it directly in Core", v73, 2u);
        v74 = v73;
        v41 = &static ComponentInfo.Platform.macOS;
        MEMORY[0x1C6902A30](v74, -1, -1);
      }

      REImagePresentationComponentSetSpatial3DImage();
      if (!v47 || v47 != v8)
      {
        v75 = Logger.logObject.getter();
        v76 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v75, v76))
        {
          v77 = swift_slowAlloc();
          *v77 = 0;
          _os_log_impl(&dword_1C1358000, v75, v76, "ImagePresentationComponent: Registering self in Spatial3DImage's registered components", v77, 2u);
          v78 = v77;
          v41 = &static ComponentInfo.Platform.macOS;
          MEMORY[0x1C6902A30](v78, -1, -1);
        }

        ImagePresentationComponent.Spatial3DImage.registerComponent(component:)(v2);
        if (!v47)
        {
LABEL_81:
          v79 = *(v8 + 88);
          REImagePresentationComponentSetHasGeneratedSpatial3DImageContent();
          v48 = *(v8 + 88);

          outlined consume of ImagePresentationComponent.DataSource(v8, v110, v104, v11, v108, v107, v105);

          if (!v47)
          {
            goto LABEL_87;
          }

          goto LABEL_82;
        }
      }
    }

    if (v47 == v8)
    {

      v47 = 0;
    }

    goto LABEL_81;
  }

  if (v41[474] != -1)
  {
    swift_once();
  }

  v66 = type metadata accessor for Logger();
  __swift_project_value_buffer(v66, ImageLogger);
  v67 = Logger.logObject.getter();
  v68 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    *v69 = 0;
    _os_log_impl(&dword_1C1358000, v67, v68, "ImagePresentationComponent: Converting _toCore without using MXI content, so we tell core not to use any MXI", v69, 2u);
    MEMORY[0x1C6902A30](v69, -1, -1);
  }

  REImagePresentationComponentSetSpatial3DImage();
  REImagePresentationComponentSetHasGeneratedSpatial3DImageContent();
  if (REImagePresentationComponentGetIsSpatial3DImageGenerating())
  {
    REImagePresentationComponentNotifySpatial3DImageGenerationCancelled();
  }

  v48 = 0;
  if (v47)
  {
    goto LABEL_82;
  }

LABEL_87:
  if (v48)
  {
    if (v41[474] != -1)
    {
      swift_once();
    }

    v85 = type metadata accessor for Logger();
    __swift_project_value_buffer(v85, ImageLogger);
    v86 = Logger.logObject.getter();
    v87 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      *v88 = 0;
      _os_log_impl(&dword_1C1358000, v86, v87, "ImagePresentationComponent: Setting Core's MXI content", v88, 2u);
      MEMORY[0x1C6902A30](v88, -1, -1);
    }

    v89 = *(v48 + 56);
    REImagePresentationComponentSetMXIMeshAsset();
    v90 = *(v48 + 64);
    REImagePresentationComponentSetMXITextureAsset();
    v91 = *(v48 + 72);

    v93 = specialized static MXISceneResource.toCFArray(_:)(v92);

    REImagePresentationComponentSetMXITextureAssets();

    v94 = *(v48 + 80);
    REImagePresentationComponentSetMXIBackgroundTextureAsset();
    swift_beginAccess();
    v95 = *(v48 + 20);
    REImagePresentationComponentSetMXIVerticalFOV();
    swift_beginAccess();
    v96 = *(v48 + 24);
    REImagePresentationComponentSetMXIAspectRatio();
    swift_beginAccess();
    v97 = *(v48 + 28);
    REImagePresentationComponentSetMXINearDistance();
    swift_beginAccess();
    v98 = *(v48 + 32);
    REImagePresentationComponentSetMXIFarDistance();
    swift_beginAccess();
    v99 = *(v48 + 36);
    REImagePresentationComponentSetMXILayerCount();
    swift_beginAccess();
    v100 = *(v48 + 40);
    REImagePresentationComponentSetMXIResolutionWidth();
    swift_beginAccess();
    v101 = *(v48 + 44);
    REImagePresentationComponentSetMXIResolutionHeight();
    swift_beginAccess();
    v102 = *(v48 + 48);
    REImagePresentationComponentSetMXIPremultipliedAlpha();
  }

  REImagePresentationComponentSetShouldLockMeshToImageAspectRatio();
  REImagePresentationComponentSetCornerRadiusInPoints();
  REImagePresentationComponentSetSpatial3DCollapseStrength();
  REImagePresentationComponentSetDesiredViewingMode();
  REImagePresentationComponentSetDesiredImmersiveViewingMode();
  REComponentGetEntity();
  REImagePresentationStatusComponentGetComponentType();
  REEntityGetOrAddComponentByClass();
  RESpatialMediaComponentGetComponentType();
  REEntityGetOrAddComponentByClass();
  RESpatialMediaStatusComponentGetComponentType();
  REEntityGetOrAddComponentByClass();
  RENetworkMarkComponentDirty();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ImagePresentationComponent.ViewingMode.Mode()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance ImagePresentationComponent.ViewingMode.Mode@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized ImagePresentationComponent.ViewingMode.Mode.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance ImagePresentationComponent.ViewingMode.Mode(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1869508461;
  v5 = 0x80000001C18DDB40;
  v6 = 0xD000000000000016;
  v7 = 0xE900000000000044;
  v8 = 0x336C616974617073;
  if (v2 != 3)
  {
    v8 = 0xD000000000000012;
    v7 = 0x80000001C18DDB70;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x536C616974617073;
    v3 = 0xED00006F65726574;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t ImagePresentationComponent.ViewingMode.hash(into:)()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int ImagePresentationComponent.ViewingMode.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ImagePresentationComponent.ViewingMode.Mode()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ImagePresentationComponent.ViewingMode.Mode()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Void __swiftcall ImagePresentationComponent.NetworkSystemObserver.setupRENetworkCallbacks()()
{
  if (!*(v0 + 24))
  {
    v1 = v0;
    type metadata accessor for __ServiceLocator();
    v2 = static __ServiceLocator.shared.getter();
    swift_beginAccess();
    v3 = *(v2 + 24);
    swift_unownedRetainStrong();

    swift_beginAccess();
    v4 = *(v3 + 40);

    if (!v4)
    {
      __break(1u);
      return;
    }

    swift_beginAccess();
    outlined init with copy of __REAssetService(v4 + 80, v17);

    v5 = v18;
    v6 = v19;
    __swift_project_boxed_opaque_existential_1(v17, v18);
    (*(v6 + 32))(v16, v5, v6);
    if (REECSManagerSceneCount() < 1)
    {
      if (one-time initialization token for ImageLogger != -1)
      {
        swift_once();
      }

      v10 = type metadata accessor for Logger();
      __swift_project_value_buffer(v10, ImageLogger);
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v11, v12))
      {
        goto LABEL_16;
      }

      v13 = swift_slowAlloc();
      *v13 = 0;
      v14 = "App ImagePresentation+Component: setupRENetworkCallbacks failed - scene count is zero";
    }

    else
    {
      ServiceLocator = REECSManagerGetServiceLocator();
      *(v1 + 16) = MEMORY[0x1C68FE270](ServiceLocator);
      v8 = RENetworkSystemObserverCreateEx();
      *(v1 + 24) = v8;
      if (*(v1 + 16) && v8)
      {
        v16[4] = specialized implicit closure #1 in ImagePresentationComponent.NetworkSystemObserver.setupRENetworkCallbacks();
        v16[5] = 0;
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 1107296256;
        v16[2] = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> ();
        v16[3] = &block_descriptor_49;
        v9 = _Block_copy(v16);

        RENetworkSystemObserverOnComponentDidUpdate();
        _Block_release(v9);
        RENetworkSystemAddObserver();
LABEL_17:
        __swift_destroy_boxed_opaque_existential_1(v17);
        return;
      }

      if (one-time initialization token for ImageLogger != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for Logger();
      __swift_project_value_buffer(v15, ImageLogger);
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v11, v12))
      {
LABEL_16:

        goto LABEL_17;
      }

      v13 = swift_slowAlloc();
      *v13 = 0;
      v14 = "App ImagePresentation+Component: setupRENetworkCallbacks failed - no network system or observer";
    }

    _os_log_impl(&dword_1C1358000, v11, v12, v14, v13, 2u);
    MEMORY[0x1C6902A30](v13, -1, -1);
    goto LABEL_16;
  }
}

uint64_t specialized implicit closure #1 in ImagePresentationComponent.NetworkSystemObserver.setupRENetworkCallbacks()(uint64_t a1)
{
  REComponentGetEntity();
  REImagePresentationComponentGetComponentType();
  ComponentByClass = REEntityGetComponentByClass();
  if (ComponentByClass && ComponentByClass == a1 || (REImagePresentationStatusComponentGetComponentType(), (result = REEntityGetComponentByClass()) != 0) && result == a1)
  {
    REImagePresentationStatusComponentGetComponentType();
    result = REEntityGetComponentByClass();
    if (result)
    {

      return MEMORY[0x1EEDFC550]();
    }
  }

  return result;
}

uint64_t specialized static ImagePresentationComponent.createMXISceneResourceFromCoreMXIData(coreComponent:)()
{
  MXIMeshAsset = REImagePresentationComponentGetMXIMeshAsset();
  MXITextureAsset = REImagePresentationComponentGetMXITextureAsset();
  v2 = REImagePresentationComponentGetMXITextureAssets();
  v3 = specialized static MXISceneResource.fromCFArray(_:)(v2);

  MXIBackgroundTextureAsset = REImagePresentationComponentGetMXIBackgroundTextureAsset();
  REImagePresentationComponentGetMXIVerticalFOV();
  v6 = v5;
  REImagePresentationComponentGetMXIAspectRatio();
  v8 = v7;
  REImagePresentationComponentGetMXINearDistance();
  v10 = v9;
  REImagePresentationComponentGetMXIFarDistance();
  v12 = v11;
  MXILayerCount = REImagePresentationComponentGetMXILayerCount();
  MXIResolutionWidth = REImagePresentationComponentGetMXIResolutionWidth();
  MXIResolutionHeight = REImagePresentationComponentGetMXIResolutionHeight();
  MXIPremultipliedAlpha = REImagePresentationComponentGetMXIPremultipliedAlpha();
  if (MXIMeshAsset)
  {
    v33 = MXIResolutionWidth;
    v34 = MXIResolutionHeight;
    v35 = MXIPremultipliedAlpha;
    if (one-time initialization token for ImageLogger != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, ImageLogger);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1C1358000, v18, v19, "ImagePresentationComponent: Successfully retrieved MXI Data from core-stored MXI content", v20, 2u);
      MEMORY[0x1C6902A30](v20, -1, -1);
    }

    type metadata accessor for MXISceneResource();
    v21 = swift_allocObject();
    *(v21 + 16) = 0;
    *(v21 + 20) = xmmword_1C18C2760;
    *(v21 + 36) = 0x80000000010;
    *(v21 + 44) = 2048;
    *(v21 + 48) = 1;
    RERetain();
    *(v21 + 56) = MXIMeshAsset;
    if (MXIBackgroundTextureAsset)
    {
      if (MXITextureAsset)
      {
        RERetain();
      }

      *(v21 + 64) = MXITextureAsset;
      v22 = *(v3 + 2);
      if (v22)
      {
        v23 = (v3 + 32);
        do
        {
          v24 = *v23++;
          RERetain();
          --v22;
        }

        while (v22);
      }

      *(v21 + 72) = v3;
      RERetain();
      *(v21 + 80) = MXIBackgroundTextureAsset;
    }

    else
    {
      if (MXITextureAsset)
      {
        RERetain();
      }

      *(v21 + 64) = MXITextureAsset;
      v29 = *(v3 + 2);
      if (v29)
      {
        v30 = (v3 + 32);
        do
        {
          v31 = *v30++;
          RERetain();
          --v29;
        }

        while (v29);
      }

      *(v21 + 72) = v3;
      *(v21 + 80) = 0;
    }

    swift_beginAccess();
    *(v21 + 16) = 0;
    swift_beginAccess();
    *(v21 + 20) = v6;
    swift_beginAccess();
    *(v21 + 24) = v8;
    swift_beginAccess();
    *(v21 + 28) = v10;
    swift_beginAccess();
    *(v21 + 32) = v12;
    swift_beginAccess();
    *(v21 + 36) = MXILayerCount;
    swift_beginAccess();
    *(v21 + 40) = v33;
    swift_beginAccess();
    *(v21 + 44) = v34;
    swift_beginAccess();
    *(v21 + 48) = v35;
  }

  else
  {

    if (one-time initialization token for ImageLogger != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, ImageLogger);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_1C1358000, v26, v27, "ImagePresentationComponent: Missing MXI Mesh or Texture when initializing MXISceneResource from core data", v28, 2u);
      MEMORY[0x1C6902A30](v28, -1, -1);
    }

    return 0;
  }

  return v21;
}

uint64_t specialized static ImagePresentationComponent.createImagePairFromCoreMonoAndStereoImages(coreComponent:imageContentType:horizontalFoV:)@<X0>(unsigned __int8 a1@<W1>, uint64_t *a2@<X8>, unsigned int a3@<S0>)
{
  v4 = a1;
  if (a1 - 1 > 1)
  {
    MonoImageOrientation = 0;
    MonoImageTextureIndex = 0;
    v20 = 0;
LABEL_17:
    v19 = 0;
    v27 = 0;
    v28 = 0;
    v29 = v20;
    goto LABEL_18;
  }

  MonoImageTextureAsset = REImagePresentationComponentGetMonoImageTextureAsset();
  if (!MonoImageTextureAsset)
  {
    if (one-time initialization token for ImageLogger != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, ImageLogger);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1C1358000, v22, v23, "ImagePresentationComponent: Missing mono texture asset on ImagePresentationComponent", v24, 2u);
      MEMORY[0x1C6902A30](v24, -1, -1);
    }

    type metadata accessor for __ServiceLocator();
    v25 = static __ServiceLocator.shared.getter();
    swift_beginAccess();
    outlined init with copy of __REAssetService(v25 + 120, v45);

    v26 = closure #1 in static TextureResource.builtinTexture(named:)(v45);
    __swift_destroy_boxed_opaque_existential_1(v45);
    v12 = v26;

    MonoImageTextureIndex = 0;
    MonoImageOrientation = 1;
    if (v4 == 2)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

  v7 = MonoImageTextureAsset;
  type metadata accessor for TextureResource();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = 0;
  RERetain();
  REAssetSetSwiftObject();
  MonoImageTextureIndex = REImagePresentationComponentGetMonoImageTextureIndex();
  MonoImageOrientation = REImagePresentationComponentGetMonoImageOrientation();
  v11 = one-time initialization token for ImageLogger;
  v12 = v8;

  if (v11 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, ImageLogger);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_1C1358000, v14, v15, "ImagePresentationComponent: Successfully retrieved MonoImage from core-stored data", v16, 2u);
    MEMORY[0x1C6902A30](v16, -1, -1);
  }

  if (v4 != 2)
  {
LABEL_16:
    v20 = v12;
    goto LABEL_17;
  }

LABEL_8:
  StereoImageTextureAsset = REImagePresentationComponentGetStereoImageTextureAsset();
  if (StereoImageTextureAsset)
  {
    v18 = StereoImageTextureAsset;
    type metadata accessor for TextureResource();
    v19 = swift_allocObject();
    *(v19 + 16) = v18;
    *(v19 + 24) = 0;
    RERetain();
    REAssetSetSwiftObject();
  }

  else
  {
    if (one-time initialization token for ImageLogger != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    __swift_project_value_buffer(v32, ImageLogger);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_1C1358000, v33, v34, "ImagePresentationComponent: Missing stereo texture asset on ImagePresentationComponent", v35, 2u);
      MEMORY[0x1C6902A30](v35, -1, -1);
    }

    type metadata accessor for __ServiceLocator();
    v36 = static __ServiceLocator.shared.getter();
    swift_beginAccess();
    outlined init with copy of __REAssetService(v36 + 120, v45);

    v19 = closure #1 in static TextureResource.builtinTexture(named:)(v45);
    __swift_destroy_boxed_opaque_existential_1(v45);
  }

  REImagePresentationComponentGetStereoBaseline();
  v38 = v37;
  REImagePresentationComponentGetDisparityAdjustment();
  v40 = v39;
  v27 = REImagePresentationComponentGetStereoImageOrientation() | (v38 << 32);
  v28 = v40 | (a3 << 32);
  if (one-time initialization token for ImageLogger != -1)
  {
    swift_once();
  }

  v41 = type metadata accessor for Logger();
  __swift_project_value_buffer(v41, ImageLogger);
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&dword_1C1358000, v42, v43, "ImagePresentationComponent: Successfully retrieved SpatialStereoImage from core-stored data", v44, 2u);
    MEMORY[0x1C6902A30](v44, -1, -1);

    v29 = v12;
  }

  else
  {
    v29 = v12;
  }

LABEL_18:

  if (v29)
  {
    v31 = MonoImageOrientation;
  }

  else
  {

    MonoImageTextureIndex = 0;
    v31 = 0;
    v19 = 0;
    v27 = 0;
    v28 = 0;
  }

  *a2 = v29;
  a2[1] = MonoImageTextureIndex;
  a2[2] = v31;
  a2[3] = v19;
  a2[4] = v27;
  a2[5] = v28;
  return result;
}

void specialized static ImagePresentationComponent.createDataSourceFromCoreMXIData(coreComponent:imageContentType:contentDimensionHint:horizontalFoV:)(unsigned __int8 a1@<W1>, uint64_t a2@<X8>, uint64_t a3@<D0>, unsigned int a4@<S1>)
{
  v8 = specialized static ImagePresentationComponent.createMXISceneResourceFromCoreMXIData(coreComponent:)();
  if (!v8)
  {
    if (one-time initialization token for ImageLogger != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, ImageLogger);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1C1358000, v21, v22, "ImagePresentationComponent: Missing MXI Mesh or Texture when initializing MXISceneResource from core data", v23, 2u);
      MEMORY[0x1C6902A30](v23, -1, -1);
    }

    goto LABEL_18;
  }

  v9 = v8;
  specialized static ImagePresentationComponent.createImagePairFromCoreMonoAndStereoImages(coreComponent:imageContentType:horizontalFoV:)(a1, v29, a4);
  v10 = v29[0];
  if (!v29[0])
  {
    if (one-time initialization token for ImageLogger != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, ImageLogger);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_1C1358000, v25, v26, "ImagePresentationComponent: Missing image pair when initializing Spatial3DImage from core data", v27, 2u);
      MEMORY[0x1C6902A30](v27, -1, -1);
      outlined destroy of ImagePresentationComponent.ImagePair?(v29);
    }

LABEL_18:
    v12 = 0;
    v13 = 0;
    v18 = 0;
    v10 = a3;
    v11 = a4;
    v19 = 0uLL;
    goto LABEL_19;
  }

  v11 = v29[1];
  v12 = v30;
  v28 = v31;
  v13 = v32;
  if (one-time initialization token for ImageLogger != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, ImageLogger);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_1C1358000, v15, v16, "ImagePresentationComponent: Successfully retrieved DataSource from core-stored MXI and ImagePair content", v17, 2u);
    MEMORY[0x1C6902A30](v17, -1, -1);
  }

  v18 = v9 | 0xC000000000000000;
  v19 = v28;
LABEL_19:
  *a2 = v10;
  *(a2 + 8) = v11;
  *(a2 + 16) = v12;
  *(a2 + 24) = v19;
  *(a2 + 40) = v13;
  *(a2 + 48) = v18;
}

uint64_t outlined copy of ImagePresentationComponent.DataSource(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v7 = a7 >> 62;
  if ((a7 >> 62) <= 1)
  {
    if (!v7)
    {
      return result;
    }

    goto LABEL_6;
  }

  if (v7 != 2)
  {

LABEL_6:
  }
}

uint64_t getEnumTagSinglePayload for ImagePresentationComponent(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 > 0x80000000FFFFFFFFLL)
  {
    v3 = ~HIDWORD(v2);
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double storeEnumTagSinglePayload for ImagePresentationComponent(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 72) = 0;
    result = 0.0;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 80) = 1;
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
      *(a1 + 24) = 0;
      *(a1 + 32) = 0;
      *(a1 + 40) = -a2 << 32;
      result = 0.0;
      *(a1 + 48) = 0u;
      *(a1 + 64) = 0u;
      return result;
    }

    *(a1 + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ImagePresentationComponent.DataSource(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 > 0x80000000FFFFFFFFLL)
  {
    v3 = ~HIDWORD(v2);
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double storeEnumTagSinglePayload for ImagePresentationComponent.DataSource(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 56) = 1;
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
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = -a2 << 32;
      result = 0.0;
      *(a1 + 24) = 0u;
      *(a1 + 40) = 0u;
      return result;
    }

    *(a1 + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for ImagePresentationComponent.DataSource(uint64_t result, uint64_t a2)
{
  v2 = *(result + 48) & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  *(result + 16) = *(result + 16);
  *(result + 48) = v2;
  return result;
}

unint64_t lazy protocol witness table accessor for type ImagePresentationComponent.ViewingMode.Mode and conformance ImagePresentationComponent.ViewingMode.Mode()
{
  result = lazy protocol witness table cache variable for type ImagePresentationComponent.ViewingMode.Mode and conformance ImagePresentationComponent.ViewingMode.Mode;
  if (!lazy protocol witness table cache variable for type ImagePresentationComponent.ViewingMode.Mode and conformance ImagePresentationComponent.ViewingMode.Mode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ImagePresentationComponent.ViewingMode.Mode and conformance ImagePresentationComponent.ViewingMode.Mode);
  }

  return result;
}

unint64_t specialized ImagePresentationComponent.ViewingMode.Mode.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ImagePresentationComponent.ViewingMode.Mode.init(rawValue:), v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t outlined destroy of ImagePresentationComponent.ImagePair?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation26ImagePresentationComponentV0C4PairVSgMd, &_s17RealityFoundation26ImagePresentationComponentV0C4PairVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t block_copy_helper_49(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

RealityFoundation::AmbientAudioComponent __swiftcall AmbientAudioComponent.init(gain:)(Swift::Double gain)
{
  *v1 = gain;
  *(v1 + 8) = gain;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  result.gain = gain;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AmbientAudioComponent.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AmbientAudioComponent.CodingKeys and conformance AmbientAudioComponent.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AmbientAudioComponent.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AmbientAudioComponent.CodingKeys and conformance AmbientAudioComponent.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void (*Entity.ambientAudio.modify(uint64_t *a1))(uint64_t **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  _s10RealityKit6EntityC12ComponentSetV5doGet_21borrowStrongReferencexSgxm_SbtAA0D0RzlF0A10Foundation012AmbientAudioD0V_Tt0B5(v1, v3);
  return Entity.ambientAudio.modify;
}

void Entity.ambientAudio.modify(uint64_t **a1)
{
  v1 = *a1;
  _s10RealityKit6EntityC12ComponentSetV02doE0_8newValue21returnStrongReferenceyxm_xSgSbtAA0D0RzlF0A10Foundation012AmbientAudioD0V_TtB5Tf4ndn_n(**a1, v1[1], v1[2], *(v1 + 24), (*a1)[4]);

  free(v1);
}

double static AmbientAudioComponent.__fromCore(_:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  REAmbientAudioComponentGetDecibelGain();
  result = v4;
  *a2 = result;
  *(a2 + 8) = result;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  return result;
}

uint64_t AmbientAudioComponent.__toCore(_:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = *(v1 + 24);
  REAmbientAudioComponentSetDecibelGain();
  if (v6 == 1)
  {
    REAmbientAudioComponentFadeComponentDecibelGain();
  }

  return RENetworkMarkComponentDirty();
}

double protocol witness for static Component.__fromCore(_:) in conformance AmbientAudioComponent@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  REAmbientAudioComponentGetDecibelGain();
  result = v4;
  *a2 = result;
  *(a2 + 8) = result;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  return result;
}

uint64_t protocol witness for Component.__toCore(_:) in conformance AmbientAudioComponent(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = *(v1 + 24);
  REAmbientAudioComponentSetDecibelGain();
  if (v6 == 1)
  {
    REAmbientAudioComponentFadeComponentDecibelGain();
  }

  return RENetworkMarkComponentDirty();
}

uint64_t AmbientAudioComponent.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation21AmbientAudioComponentV10CodingKeys33_EDA1E8A51E247A7260DF4001B9F6D185LLOGMd, &_ss22KeyedEncodingContainerVy17RealityFoundation21AmbientAudioComponentV10CodingKeys33_EDA1E8A51E247A7260DF4001B9F6D185LLOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v15[-v7];
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[2];
  v12 = *(v1 + 24);
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AmbientAudioComponent.CodingKeys and conformance AmbientAudioComponent.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v15[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15[13] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15[12] = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v4);
}

void AmbientAudioComponent.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x1C68F4C50](*&v1);
  if (v2 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v2;
  }

  MEMORY[0x1C68F4C50](*&v5);
  if (v3 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v3;
  }

  MEMORY[0x1C68F4C50](*&v6);
  Hasher._combine(_:)(v4);
}

Swift::Int AmbientAudioComponent.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  Hasher.init(_seed:)();
  if (v1 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v1;
  }

  MEMORY[0x1C68F4C50](*&v5);
  if (v2 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v2;
  }

  MEMORY[0x1C68F4C50](*&v6);
  if (v3 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v3;
  }

  MEMORY[0x1C68F4C50](*&v7);
  Hasher._combine(_:)(v4);
  return Hasher._finalize()();
}

uint64_t AmbientAudioComponent.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17RealityFoundation21AmbientAudioComponentV10CodingKeys33_EDA1E8A51E247A7260DF4001B9F6D185LLOGMd, &_ss22KeyedDecodingContainerVy17RealityFoundation21AmbientAudioComponentV10CodingKeys33_EDA1E8A51E247A7260DF4001B9F6D185LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v19[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AmbientAudioComponent.CodingKeys and conformance AmbientAudioComponent.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v19[15] = 0;
    KeyedDecodingContainer.decode(_:forKey:)();
    v12 = v11;
    v19[14] = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    v14 = v13;
    v19[13] = 2;
    KeyedDecodingContainer.decode(_:forKey:)();
    v17 = v16;
    v19[12] = 3;
    v18 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v6 + 8))(v9, v5);
    *a2 = v12;
    *(a2 + 8) = v14;
    *(a2 + 16) = v17;
    *(a2 + 24) = v18 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

Swift::Void __swiftcall AmbientAudioComponent._proto_fadeComponentGain(to:duration:)(Swift::Double to, Swift::Double duration)
{
  *v2 = to;
  *(v2 + 8) = to;
  *(v2 + 16) = duration;
  *(v2 + 24) = 1;
}

unint64_t lazy protocol witness table accessor for type AmbientAudioComponent.CodingKeys and conformance AmbientAudioComponent.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AmbientAudioComponent.CodingKeys and conformance AmbientAudioComponent.CodingKeys;
  if (!lazy protocol witness table cache variable for type AmbientAudioComponent.CodingKeys and conformance AmbientAudioComponent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AmbientAudioComponent.CodingKeys and conformance AmbientAudioComponent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AmbientAudioComponent.CodingKeys and conformance AmbientAudioComponent.CodingKeys;
  if (!lazy protocol witness table cache variable for type AmbientAudioComponent.CodingKeys and conformance AmbientAudioComponent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AmbientAudioComponent.CodingKeys and conformance AmbientAudioComponent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AmbientAudioComponent.CodingKeys and conformance AmbientAudioComponent.CodingKeys;
  if (!lazy protocol witness table cache variable for type AmbientAudioComponent.CodingKeys and conformance AmbientAudioComponent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AmbientAudioComponent.CodingKeys and conformance AmbientAudioComponent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AmbientAudioComponent.CodingKeys and conformance AmbientAudioComponent.CodingKeys;
  if (!lazy protocol witness table cache variable for type AmbientAudioComponent.CodingKeys and conformance AmbientAudioComponent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AmbientAudioComponent.CodingKeys and conformance AmbientAudioComponent.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AmbientAudioComponent and conformance AmbientAudioComponent()
{
  result = lazy protocol witness table cache variable for type AmbientAudioComponent and conformance AmbientAudioComponent;
  if (!lazy protocol witness table cache variable for type AmbientAudioComponent and conformance AmbientAudioComponent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AmbientAudioComponent and conformance AmbientAudioComponent);
  }

  return result;
}

RealityFoundation::SkeletalPoseSet __swiftcall SkeletalPoseSet.init()()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7CC0];

  *v1 = v2;
  return result;
}

uint64_t SkeletalPoseSet.default.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  if (*(*v1 + 16))
  {
    v4 = *(v3 + 40);
    v5 = *(v3 + 48);
    v7 = *(v3 + 56);
    v6 = *(v3 + 64);
    v8 = *(v3 + 72);
    v9 = *(v3 + 80);
    *a1 = *(v3 + 32);
    *(a1 + 16) = v5;
  }

  else
  {
    v4 = 0;
    v7 = 0;
    v6 = 0;
    v8 = 0;
    v9 = 0;
    *a1 = 0;
    *(a1 + 16) = 0;
  }

  *(a1 + 8) = v4;
  *(a1 + 24) = v7;
  *(a1 + 32) = v6;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  return result;
}

double key path getter for SkeletalPoseSet.default : SkeletalPoseSet@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v9 = *a1;
  SkeletalPoseSet.default.getter(v6);
  v3 = v8;
  v4 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v4;
  result = *&v7;
  *(a2 + 32) = v7;
  *(a2 + 48) = v3;
  return result;
}

uint64_t key path setter for SkeletalPoseSet.default : SkeletalPoseSet(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 32);
  v3 = *a2;
  if (*(*a2 + 16))
  {
    v4 = v2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v13 = *result;
    v6 = *(result + 24);
    v7 = *(result + 40);
    v8 = *(result + 48);
    v9 = *(result + 16);

    result = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v3;
    if (result)
    {
      if (*(v3 + 16))
      {
LABEL_7:
        v10 = *(v3 + 64);
        v11 = *(v3 + 72);
        v12 = *(v3 + 80);
        *(v3 + 32) = v13;
        *(v3 + 48) = v9 & 1;
        *(v3 + 56) = v6;
        *(v3 + 64) = v2;
        *(v3 + 72) = v7;
        *(v3 + 80) = v8;

        *a2 = v3;
        return result;
      }
    }

    else
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
      v3 = result;
      *a2 = result;
      if (*(result + 16))
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t SkeletalPoseSet.default.setter(uint64_t result)
{
  v3 = *result;
  v2 = *(result + 8);
  v5 = *(result + 16);
  v4 = *(result + 24);
  v7 = *(result + 32);
  v6 = *(result + 40);
  v8 = *(result + 48);
  v9 = *v1;
  if (*(*v1 + 16))
  {
    if (!v7)
    {
      return result;
    }

    v10 = *v1;
    result = swift_isUniquelyReferenced_nonNull_native();
    *v1 = v9;
    if (result)
    {
      if (*(v9 + 16))
      {
LABEL_5:
        v11 = *(v9 + 64);
        v14 = *(v9 + 72);
        v12 = *(v9 + 80);
        *(v9 + 32) = v3;
        *(v9 + 40) = v2;
        *(v9 + 48) = v5 & 1;
        *(v9 + 56) = v4;
        *(v9 + 64) = v7;
        *(v9 + 72) = v6;
        *(v9 + 80) = v8;

        *v1 = v9;
        return result;
      }
    }

    else
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
      v9 = result;
      *v1 = result;
      if (*(result + 16))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
    return result;
  }

  v13 = *result;

  return outlined consume of SkeletalPose?(v13, v2, v5, v4, v7);
}

void (*SkeletalPoseSet.default.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 56) = v1;
  v5 = *v1;
  *(v3 + 64) = *v1;
  if (*(v5 + 16))
  {
    v12 = *(v5 + 32);
    v6 = *(v5 + 56);
    v7 = *(v5 + 64);
    v8 = *(v5 + 72);
    v9 = *(v5 + 80);
    *(v3 + 16) = *(v5 + 48);

    v10 = v12;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    *(v3 + 16) = 0;
    v10 = 0uLL;
  }

  *v4 = v10;
  *(v4 + 24) = v6;
  *(v4 + 32) = v7;
  *(v4 + 40) = v8;
  *(v4 + 48) = v9;
  return SkeletalPoseSet.default.modify;
}

void SkeletalPoseSet.default.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = (*a1)[8];
  if (a2)
  {
    v6 = v2[3];
    v7 = v2[4];
    v8 = v2[5];
    if (*(v5 + 16))
    {
      v9 = v7 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      goto LABEL_9;
    }

    v10 = v2[6];
    v11 = v2[7];
    v12 = *(v2 + 4);
    v13 = v2[5];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v11 = v5;
    v15 = v2[8];
    if (isUniquelyReferenced_nonNull_native)
    {
      if (*(v15 + 2))
      {
LABEL_8:
        v16 = v10;
        v17 = v2[7];
        v18 = *(v15 + 8);
        v19 = *(v15 + 9);
        v20 = v12;
        v21 = *(v15 + 10);
        *(v15 + 4) = v4;
        *(v15 + 5) = v3;
        v15[48] = v20 & 1;
        *(v15 + 7) = v6;
        *(v15 + 8) = v7;
        *(v15 + 9) = v8;
        *(v15 + 10) = v16;

        *v17 = v15;
        v4 = *v2;
        v3 = v2[1];
        v6 = v2[3];
        v7 = v2[4];
        v22 = v2[5];
LABEL_9:
        v23 = v2[2];
        v24 = v2[6];
        v25 = v4;
        v26 = v3;
        v27 = v6;
        v28 = v7;
LABEL_16:
        outlined consume of SkeletalPose?(v25, v26, v23, v27, v28);
        goto LABEL_17;
      }
    }

    else
    {
      v11 = v2[7];
      v15 = specialized _ArrayBuffer._consumeAndCreateNew()(v2[8]);
      *v11 = v15;
      if (*(v15 + 2))
      {
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_22;
  }

  v11 = v2[2];
  v10 = v2[3];
  v8 = v2[4];
  v7 = v2[5];
  v6 = v2[6];
  if (!*(v5 + 16))
  {
    v25 = **a1;
    v26 = v3;
    v23 = v2[2];
    v27 = v2[3];
    v28 = v2[4];
    v34 = v2[5];
    v35 = v2[6];
    goto LABEL_16;
  }

  if (v8)
  {
    v29 = v2[7];
    v30 = (*a1)[8];
    v31 = swift_isUniquelyReferenced_nonNull_native();
    *v29 = v5;
    v15 = v2[8];
    if (v31)
    {
      if (!*(v15 + 2))
      {
LABEL_23:
        __break(1u);
        return;
      }

      goto LABEL_14;
    }

LABEL_22:
    v36 = v2[7];
    v15 = specialized _ArrayBuffer._consumeAndCreateNew()(v15);
    *v36 = v15;
    if (!*(v15 + 2))
    {
      goto LABEL_23;
    }

LABEL_14:
    v32 = *(v15 + 8);
    v37 = *(v15 + 9);
    v38 = v2[7];
    v33 = *(v15 + 10);
    *(v15 + 4) = v4;
    *(v15 + 5) = v3;
    v15[48] = v11 & 1;
    *(v15 + 7) = v10;
    *(v15 + 8) = v8;
    *(v15 + 9) = v7;
    *(v15 + 10) = v6;

    *v38 = v15;
  }

LABEL_17:

  free(v2);
}

uint64_t SkeletalPoseSet.subscript.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = result;
  v7 = *(*v3 + 16);
  v8 = (*v3 + 80);
  v9 = v7 + 1;
  while (1)
  {
    if (!--v9)
    {
      *(a3 + 48) = 0;
      *(a3 + 16) = 0u;
      *(a3 + 32) = 0u;
      *a3 = 0u;
      return result;
    }

    v16 = *(v8 - 3);
    v10 = *(v8 - 32);
    v12 = *(v8 - 3);
    v11 = *(v8 - 2);
    v14 = *(v8 - 1);
    v13 = *v8;
    if (v12 == v5 && v11 == a2)
    {
      break;
    }

    v8 += 7;
    result = _stringCompareWithSmolCheck(_:_:expecting:)();
    if (result)
    {
      goto LABEL_11;
    }
  }

  v12 = v5;
LABEL_11:
  *a3 = v16;
  *(a3 + 16) = v10;
  *(a3 + 24) = v12;
  *(a3 + 32) = v11;
  *(a3 + 40) = v14;
  *(a3 + 48) = v13;
}

double key path getter for SkeletalPoseSet.subscript(_:) : SkeletalPoseSet@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  v6 = a2[1];
  v13 = v4;
  SkeletalPoseSet.subscript.getter(v5, v6, v10);
  v7 = v12;
  v8 = v10[1];
  *a3 = v10[0];
  *(a3 + 16) = v8;
  result = *&v11;
  *(a3 + 32) = v11;
  *(a3 + 48) = v7;
  return result;
}

uint64_t key path setter for SkeletalPoseSet.subscript(_:) : SkeletalPoseSet(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  v9 = a1[5];
  v10 = a1[6];
  v12[0] = *a1;
  v12[1] = v5;
  v12[2] = v6;
  v12[3] = v7;
  v12[4] = v8;
  v12[5] = v9;
  v12[6] = v10;

  outlined copy of SkeletalPose?(v12[0], v5, v6, v7, v8);
  return SkeletalPoseSet.subscript.setter(v12, v3, v4);
}

uint64_t SkeletalPoseSet.subscript.setter(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v8 = a1[4];
  v7 = a1[5];
  v9 = a1[6];
  v10 = *v3;
  v11 = *(*v3 + 2);
  if (!v11)
  {
    outlined consume of SkeletalPose?(*a1, a1[1], a1[2], a1[3], v8);
    goto LABEL_20;
  }

  if (!v8)
  {
LABEL_20:
  }

  v18 = a1[3];
  v19 = a1[2];
  v20 = a1[1];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v10;
  v21 = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_26:
    v10 = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
  }

  v13 = 0;
  v14 = 0;
  *v3 = v10;
  do
  {
    if (v11 == v14)
    {
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    if (v14 >= *(v10 + 2))
    {
      goto LABEL_24;
    }

    v15 = *&v10[v13 + 56] == a2 && *&v10[v13 + 64] == a3;
    if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && *(*&v10[v13 + 80] + 16) == *(v9 + 16))
    {

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
      }

      if (v14 >= *(v10 + 2))
      {
        goto LABEL_25;
      }

      v16 = *&v10[v13 + 80];
      *&v10[v13 + 80] = v9;
    }

    ++v14;
    v13 += 56;
  }

  while (v11 != v14);

  result = outlined consume of SkeletalPose?(v21, v20, v19, v18, v8);
  *v3 = v10;
  return result;
}

void (*SkeletalPoseSet.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x50uLL);
  }

  *a1 = v7;
  v7[8] = a3;
  v7[9] = v3;
  v7[7] = a2;
  v9 = *v3;
  SkeletalPoseSet.subscript.getter(a2, a3, v7);
  return SkeletalPoseSet.subscript.modify;
}

void SkeletalPoseSet.subscript.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  v6 = (*a1)[2];
  v5 = (*a1)[3];
  v8 = (*a1)[4];
  v7 = (*a1)[5];
  v9 = (*a1)[8];
  v14 = (*a1)[9];
  v11 = (*a1)[6];
  v10 = (*a1)[7];
  v15[0] = v3;
  v15[1] = v4;
  v15[2] = v6;
  v15[3] = v5;
  v15[4] = v8;
  v15[5] = v7;
  v15[6] = v11;
  if (a2)
  {

    outlined copy of SkeletalPose?(v3, v4, v6, v5, v8);
    SkeletalPoseSet.subscript.setter(v15, v10, v9);
    v12 = v2[5];
    v13 = v2[6];
    outlined consume of SkeletalPose?(*v2, v2[1], v2[2], v2[3], v2[4]);
  }

  else
  {

    SkeletalPoseSet.subscript.setter(v15, v10, v9);
  }

  free(v2);
}

{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  v5 = *(*a1 + 16);
  v7 = (*a1)[3];
  v6 = (*a1)[4];
  v9 = (*a1)[5];
  v8 = (*a1)[6];
  v11 = (*a1)[8];
  v10 = (*a1)[9];
  if (a2)
  {
    v12 = (*a1)[5];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v11 = v10;
    v14 = v2[9];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v36 = v2[8];
      v14 = specialized _ArrayBuffer._consumeAndCreateNew()(v2[9]);
      *v36 = v14;
    }

    v15 = v2[7];
    if (*(v14 + 2) > v15)
    {
      v16 = v5;
      v17 = v2[8];
      v18 = &v14[56 * v15];
      v19 = *(v18 + 8);
      v20 = *(v18 + 9);
      v21 = v7;
      v22 = *(v18 + 10);
      *(v18 + 4) = v3;
      *(v18 + 5) = v4;
      v18[48] = v16;
      *(v18 + 7) = v21;
      *(v18 + 8) = v6;
      *(v18 + 9) = v9;
      *(v18 + 10) = v8;

      *v17 = v14;
      v23 = v2[4];
      v24 = v2[5];
      v25 = v2[6];

      goto LABEL_9;
    }

    __break(1u);
    goto LABEL_13;
  }

  v26 = (*a1)[9];
  v27 = swift_isUniquelyReferenced_nonNull_native();
  *v11 = v10;
  v14 = v2[9];
  if ((v27 & 1) == 0)
  {
LABEL_13:
    v37 = v2[8];
    v14 = specialized _ArrayBuffer._consumeAndCreateNew()(v14);
    *v37 = v14;
  }

  v28 = v2[7];
  if (*(v14 + 2) <= v28)
  {
    __break(1u);
    return;
  }

  v29 = v5;
  v30 = v2[8];
  v31 = &v14[56 * v28];
  v32 = *(v31 + 8);
  v33 = *(v31 + 9);
  v34 = v7;
  v35 = *(v31 + 10);
  *(v31 + 4) = v3;
  *(v31 + 5) = v4;
  v31[48] = v29;
  *(v31 + 7) = v34;
  *(v31 + 8) = v6;
  *(v31 + 9) = v9;
  *(v31 + 10) = v8;

  *v30 = v14;
LABEL_9:

  free(v2);
}

Swift::Bool __swiftcall SkeletalPoseSet.contains(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = *(*v1 + 16);
  v5 = (*v1 + 64);
  v6 = v4 + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    if (*(v5 - 1) == countAndFlagsBits && *v5 == object)
    {
      break;
    }

    v5 += 7;
  }

  while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0);
  return v6 != 0;
}

Swift::Int SkeletalPoseSet.set(_:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v5 = *a1;
  v6 = a1[1];
  v36 = *(a1 + 16);
  v7 = a1[3];
  v8 = a1[4];
  v9 = a1[5];
  v10 = a1[6];
  v11 = *v2;
  v12._countAndFlagsBits = v7;
  v12._object = v8;
  v37 = SkeletalPoseSet.index(of:)(v12);
  if (!v37.is_nil)
  {
    value = v37.value;
    if (v37.value < 0)
    {
      __break(1u);
    }

    else if (v37.value < *(v11 + 2))
    {
      v28 = v5;
      v14 = &v11[56 * v37.value];
      v32 = *(v14 + 5);
      v33 = *(v14 + 4);
      v34 = v14[48];
      v35 = v6;
      v15 = *(v14 + 8);
      v30 = *(v14 + 7);
      v16 = v9;
      v18 = *(v14 + 9);
      v17 = *(v14 + 10);
      v26 = v16;

      v31 = v15;

      v29 = v18;

      v27 = v17;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v3 = v11;
      if (isUniquelyReferenced_nonNull_native)
      {
        v20 = v28;
LABEL_7:
        v21 = &v11[56 * value];
        v22 = *(v21 + 8);
        v23 = *(v21 + 9);
        v24 = *(v21 + 10);
        *(v21 + 4) = v20;
        *(v21 + 5) = v35;
        v21[48] = v36;
        *(v21 + 7) = v7;
        *(v21 + 8) = v8;
        *(v21 + 9) = v26;
        *(v21 + 10) = v10;

        *v3 = v11;
        *a2 = v33;
        a2[1] = v32;
        a2[2] = v34;
        a2[3] = v30;
        a2[4] = v31;
        a2[5] = v29;
        a2[6] = v27;
        return v37.value;
      }

LABEL_11:
      v20 = v28;
      v11 = specialized _ArrayBuffer._consumeAndCreateNew()(v11);
      *v3 = v11;
      goto LABEL_7;
    }

    __break(1u);
    goto LABEL_11;
  }

  a2[6] = 0;
  *(a2 + 1) = 0u;
  *(a2 + 2) = 0u;
  *a2 = 0u;
  return v37.value;
}

Swift::Int_optional __swiftcall SkeletalPoseSet.index(of:)(Swift::String of)
{
  v2 = *v1;
  v3 = *(*v1 + 16);
  v4 = v3 == 0;
  if (v3)
  {
    object = of._object;
    countAndFlagsBits = of._countAndFlagsBits;
    v7 = 0;
    v8 = (v2 + 64);
    while (1)
    {
      v9 = *(v8 - 1) == countAndFlagsBits && *v8 == object;
      if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      ++v7;
      v8 += 7;
      v4 = v3 == v7;
      if (v3 == v7)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v7 = 0;
  }

  v10 = v4;
  v11 = v7;
  result.value = v11;
  result.is_nil = v10;
  return result;
}

uint64_t SkeletalPoseSet.Iterator.next()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[1];
  v3 = *(*v1 + 16);
  if (v2 == v3)
  {
    *(a1 + 48) = 0;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
  }

  else if (v2 >= v3)
  {
    __break(1u);
  }

  else
  {
    v4 = *v1 + 56 * v2;
    v5 = *(v4 + 48);
    v6 = *(v4 + 56);
    v7 = *(v4 + 64);
    v8 = *(v4 + 72);
    v9 = *(v4 + 80);
    *a1 = *(v4 + 32);
    *(a1 + 16) = v5;
    *(a1 + 24) = v6;
    *(a1 + 32) = v7;
    *(a1 + 40) = v8;
    *(a1 + 48) = v9;
    v1[1] = v2 + 1;
  }

  return result;
}

uint64_t SkeletalPoseSet.makeIterator()@<X0>(void *a1@<X8>)
{
  *a1 = *v1;
  a1[1] = 0;
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance SkeletalPoseSet()
{
  v1 = specialized _copyCollectionToContiguousArray<A>(_:)(*v0);

  return v1;
}

unint64_t SkeletalPoseSet.subscript.getter@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (*(*v2 + 16) <= result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v3 = *v2 + 56 * result;
  v4 = *(v3 + 48);
  v5 = *(v3 + 56);
  v6 = *(v3 + 64);
  v7 = *(v3 + 72);
  v8 = *(v3 + 80);
  *a2 = *(v3 + 32);
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  *(a2 + 40) = v7;
  *(a2 + 48) = v8;
}

uint64_t key path getter for SkeletalPoseSet.subscript(_:) : SkeletalPoseSet@<X0>(uint64_t result@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v4 >= *(*result + 16))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v5 = *result + 56 * v4;
  v6 = *(v5 + 48);
  v7 = *(v5 + 56);
  v8 = *(v5 + 64);
  v9 = *(v5 + 72);
  v10 = *(v5 + 80);
  *a3 = *(v5 + 32);
  *(a3 + 16) = v6;
  *(a3 + 24) = v7;
  *(a3 + 32) = v8;
  *(a3 + 40) = v9;
  *(a3 + 48) = v10;
}

uint64_t key path setter for SkeletalPoseSet.subscript(_:) : SkeletalPoseSet(uint64_t *a1, uint64_t *a2, unint64_t *a3)
{
  v4 = *a3;
  v5 = *a1;
  v6 = a1[1];
  v7 = *(a1 + 16);
  v9 = a1[3];
  v8 = a1[4];
  v10 = a1[5];
  v11 = a1[6];
  v12 = *a2;

  result = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v12;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew()(v12);
  v12 = result;
  *a2 = result;
  if ((v4 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v4 < *(v12 + 16))
  {
    v14 = v12 + 56 * v4;
    v15 = v9;
    v16 = *(v14 + 64);
    v17 = *(v14 + 72);
    v18 = *(v14 + 80);
    *(v14 + 32) = v5;
    *(v14 + 40) = v6;
    *(v14 + 48) = v7;
    *(v14 + 56) = v15;
    *(v14 + 64) = v8;
    *(v14 + 72) = v10;
    *(v14 + 80) = v11;

    *a2 = v12;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t SkeletalPoseSet.subscript.setter(uint64_t *a1, unint64_t a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 16);
  v7 = a1[3];
  v8 = a1[4];
  v10 = a1[5];
  v9 = a1[6];
  v11 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v11;
  if (result)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew()(v11);
  v11 = result;
  *v2 = result;
  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (*(v11 + 16) > a2)
  {
    v13 = v11 + 56 * a2;
    v14 = v9;
    v15 = *(v13 + 64);
    v16 = *(v13 + 72);
    v17 = *(v13 + 80);
    *(v13 + 32) = v4;
    *(v13 + 40) = v5;
    *(v13 + 48) = v6;
    *(v13 + 56) = v7;
    *(v13 + 64) = v8;
    *(v13 + 72) = v10;
    *(v13 + 80) = v14;

    *v2 = v11;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void (*SkeletalPoseSet.subscript.modify(void (**a1)(uint64_t **a1, char a2), unint64_t a2))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0x50uLL);
  }

  v6 = result;
  *a1 = result;
  *(result + 7) = a2;
  *(result + 8) = v2;
  v7 = *v2;
  *(result + 9) = *v2;
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(v7 + 16) > a2)
  {
    v8 = v7 + 56 * a2;
    v9 = *(v8 + 48);
    v10 = *(v8 + 56);
    v11 = *(v8 + 64);
    v12 = *(v8 + 72);
    v13 = *(v8 + 80);
    *v6 = *(v8 + 32);
    *(v6 + 16) = v9;
    *(v6 + 3) = v10;
    *(v6 + 4) = v11;
    *(v6 + 5) = v12;
    *(v6 + 6) = v13;

    return SkeletalPoseSet.subscript.modify;
  }

  __break(1u);
  return result;
}

Swift::Int __swiftcall SkeletalPoseSet.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

void (*protocol witness for Collection.subscript.read in conformance SkeletalPoseSet(void (**a1)(uint64_t a1), unint64_t *a2))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0x38uLL);
  }

  v6 = result;
  *a1 = result;
  v7 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v7 < *(*v2 + 16))
  {
    v8 = *v2 + 56 * v7;
    v9 = *(v8 + 48);
    v10 = *(v8 + 56);
    v11 = *(v8 + 64);
    v12 = *(v8 + 72);
    v13 = *(v8 + 80);
    *v6 = *(v8 + 32);
    *(v6 + 16) = v9;
    *(v6 + 3) = v10;
    *(v6 + 4) = v11;
    *(v6 + 5) = v12;
    *(v6 + 6) = v13;

    return protocol witness for Collection.subscript.read in conformance SkeletalPoseSet;
  }

  __break(1u);
  return result;
}

void protocol witness for Collection.subscript.read in conformance SkeletalPoseSet(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);
  v3 = v1[5];
  v4 = v1[6];

  free(v1);
}

uint64_t outlined consume of SkeletalPose?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
  }

  return result;
}

uint64_t outlined copy of SkeletalPose?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SkeletalPoseSet.Iterator and conformance SkeletalPoseSet.Iterator()
{
  result = lazy protocol witness table cache variable for type SkeletalPoseSet.Iterator and conformance SkeletalPoseSet.Iterator;
  if (!lazy protocol witness table cache variable for type SkeletalPoseSet.Iterator and conformance SkeletalPoseSet.Iterator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SkeletalPoseSet.Iterator and conformance SkeletalPoseSet.Iterator);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SkeletalPoseSet and conformance SkeletalPoseSet()
{
  result = lazy protocol witness table cache variable for type SkeletalPoseSet and conformance SkeletalPoseSet;
  if (!lazy protocol witness table cache variable for type SkeletalPoseSet and conformance SkeletalPoseSet)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SkeletalPoseSet and conformance SkeletalPoseSet);
  }

  return result;
}

Swift::Int CollisionCastQueryType.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](v1);
  return Hasher._finalize()();
}

_DWORD *CollisionFilter.init(group:mask:)@<X0>(_DWORD *result@<X0>, int *a2@<X1>, _DWORD *a3@<X8>)
{
  v3 = *a2;
  *a3 = *result;
  a3[1] = v3;
  return result;
}

double static CollisionFilter.sensor.getter@<D0>(void *a1@<X0>, double *a2@<X1>, void *a3@<X8>)
{
  if (*a1 != -1)
  {
    v4 = a2;
    v5 = a3;
    swift_once();
    a3 = v5;
    a2 = v4;
  }

  result = *a2;
  *a3 = *a2;
  return result;
}

double one-time initialization function for sensor()
{
  result = NAN;
  static CollisionFilter.sensor = -1;
  return result;
}

__n128 CollisionCastHit.triangleHit.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + 72);
  result = *(v1 + 56);
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  return result;
}

char *Scene.raycast(origin:direction:length:query:mask:relativeTo:)(unsigned __int8 *a1, unsigned int *a2, uint64_t a3, float32x4_t a4, float32x4_t a5, float a6)
{
  v6 = *a2;
  v7 = vmuls_lane_f32(a6, a5, 2);
  v8.i64[0] = vaddq_f32(vmulq_n_f32(a5, a6), a4).u64[0];
  v8.f32[2] = a4.f32[2] + v7;
  v8.i32[3] = 0;
  v11 = *a1;
  v10 = v6;
  return Scene.raycast(from:to:query:mask:relativeTo:)(&v11, &v10, a3, a4, v8);
}

char *Scene.raycast(from:to:query:mask:relativeTo:)(unsigned __int8 *a1, unsigned int *a2, uint64_t a3, float32x4_t a4, float32x4_t a5)
{
  v86 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  v8 = *a2;
  v9 = vsubq_f32(a5, a4);
  v10 = v9.f32[2];
  v11 = vmul_f32(*v9.f32, *v9.f32);
  v80 = *v9.f32;
  v11.f32[0] = sqrtf(vmuls_lane_f32(v9.f32[2], v9, 2) + vaddv_f32(v11));
  v73 = v11;
  specialized static __ServiceLocator.shared.getter();
  if (a3)
  {
    *v87.columns[0].i64 = _s10RealityKit12HasTransformPAAE16conversionMatrix4from2toSo13simd_float4x4aqd__Sg_qd_0_SgtAA6EntityCRbd__ALRbd_0_r0_lFZAL_A2LTt1g5(0, a3);
    v68 = v87.columns[0];
    v69 = v87.columns[1];
    v70 = v87.columns[2];
    v64 = v87.columns[3];
    v88 = __invert_f4(v87);
    v74 = v88.columns[1];
    v76 = v88.columns[0];
    v72 = v88.columns[2];
    v66 = v88.columns[3];
    *v12.i64 = simd_float4x4.transform(position:)(a4, v88.columns[0], v88.columns[1], v88.columns[2], v88.columns[3]);
    v81 = v12;
    *v13.i64 = simd_float4x4.transform(position:)(a5, v76, v74, v72, v66);
    v14 = vsubq_f32(v13, v81);
    v15 = vmulq_f32(v14, v14);
    *&v16 = v15.f32[2] + vaddv_f32(*v15.f32);
    v17 = vrsqrte_f32(v16);
    v18 = vmul_f32(v17, vrsqrts_f32(v16, vmul_f32(v17, v17)));
    v79 = vmulq_n_f32(v14, vmul_f32(v18, vrsqrts_f32(v16, vmul_f32(v18, v18))).f32[0]);
    v19 = sqrtf(v15.f32[2] + (v15.f32[0] + vmuls_lane_f32(v14.f32[1], *v14.f32, 1)));
  }

  else
  {
    *v20.f32 = vdiv_f32(v80, vdup_lane_s32(v73, 0));
    v20.f32[2] = v10 / *v73.i32;
    v20.i32[3] = 0;
    v79 = v20;
    v64 = *&zmmword_1C1887630[48];
    v70 = *&zmmword_1C1887630[32];
    v69 = *&zmmword_1C1887630[16];
    v68 = *zmmword_1C1887630;
    v19 = *v73.i32;
    v81 = a4;
  }

  RECollisionCastConfigurationInitToDefault();
  RECollisionCastConfigurationSetQueryType();
  RECollisionCastConfigurationSetFilter();
  RECollisionCastHitCollectionCreate();
  if (a3)
  {
    v21 = *(a3 + 16);
    v83 = v81;
    v84 = v79;
    v85 = v19;
    RECollisionCastRayVsEntitySimulation();
  }

  else
  {
    v22 = *(v5 + 16);
    v83 = v81;
    v84 = v79;
    v85 = v19;
    RECollisionCastRayVsScene();
  }

  v23 = RECollisionCastHitCollectionCount();
  v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v23 & ~(v23 >> 63), 0, MEMORY[0x1E69E7CC0]);
  if (v23 < 0)
  {
    goto LABEL_36;
  }

  v25 = v24;
  v67 = a3;
  v65 = v7;
  if (v23)
  {
    v26 = 0;
    while (1)
    {
      if (RECollisionCastHitCollectionGetByIndex())
      {
        v82 = 1;
        RECollisionCastHitGetObject();
        Entity = RECollisionObjectGetEntity();
        if (Entity)
        {
          break;
        }
      }

LABEL_14:
      if (v23 == ++v26)
      {
        goto LABEL_26;
      }
    }

    v39 = Entity;
    if (REEntityGetSwiftObject())
    {
      type metadata accessor for Entity();
      v40 = swift_dynamicCastClassUnconditional();
    }

    else
    {
      if (REEntityIsBeingDestroyed())
      {
        goto LABEL_35;
      }

      v42 = specialized static Entity.entityInfoType(_:)();
      if (v42)
      {
        v41 = (*(v42 + 232))();
        v43 = *(v41 + 16);

        MEMORY[0x1C68F9740](v43, 0);
        *(v41 + 16) = v39;
        MEMORY[0x1C68F9740](v39, v41);

        goto LABEL_23;
      }

      v40 = makeEntity(for:)(v39);
    }

    v41 = v40;
LABEL_23:
    RECollisionCastHitGetPosition();
    v77 = v44;
    RECollisionCastHitGetNormal();
    v75 = v45;
    RECollisionCastHitGetHitPercentage();
    v47 = v46;
    ShapeIndex = RECollisionCastHitGetShapeIndex();
    if (RECollisionCastHitHasTriangleMeshHitInfo())
    {
      FaceIndex = RECollisionCastHitGetFaceIndex();
      RECollisionCastHitGetFaceUV();
      v28 = v49;
      v82 = 0;
    }

    else
    {
      FaceIndex = 0;
      v28 = 0;
    }

    v29 = *v73.i32;
    v31 = v79.i32[3];
    v30 = v81.i32[3];
    v33 = *(v25 + 2);
    v32 = *(v25 + 3);
    if (v33 >= v32 >> 1)
    {
      v50 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1, v25);
      v31 = v79.i32[3];
      v30 = v81.i32[3];
      v29 = *v73.i32;
      v25 = v50;
    }

    v34 = v77;
    HIDWORD(v34) = v30;
    v35 = v75;
    HIDWORD(v35) = v31;
    *(v25 + 2) = v33 + 1;
    v36 = &v25[96 * v33];
    *(v36 + 4) = v41;
    *(v36 + 3) = v34;
    *(v36 + 4) = v35;
    *(v36 + 20) = v29 * v47;
    *(v36 + 11) = FaceIndex;
    *(v36 + 12) = v28;
    v36[104] = v82;
    v37 = *(v83.i32 + 3);
    *(v36 + 105) = v83.i32[0];
    *(v36 + 27) = v37;
    *(v36 + 14) = ShapeIndex;
    v79.i32[3] = v31;
    v81.i32[3] = HIDWORD(v34);
    goto LABEL_14;
  }

LABEL_26:
  RECollisionCastHitCollectionDestroy();
  v51.columns[2] = v70;
  v51.columns[1] = v69;
  if (v67)
  {
    v52 = *(v25 + 2);
    if (v52)
    {
      v51.columns[0] = v68;
      v51.columns[0].i32[3] = 0;
      v51.columns[1].i32[3] = 0;
      v51.columns[2].i32[3] = 0;
      v56 = __invert_f3(v51);
      v53 = 0;
      v54 = vzip1q_s32(v56.columns[0], v56.columns[1]);
      v54.i32[2] = v56.columns[2].i32[0];
      v55 = vtrn2q_s32(v56.columns[0], v56.columns[1]);
      v55.i32[2] = v56.columns[2].i32[1];
      v56.columns[0] = vzip2q_s32(v56.columns[0], v56.columns[1]);
      v56.columns[0].i32[2] = v56.columns[2].i32[2];
      v57 = *(v25 + 2);
      v58 = (v25 + 48);
      while (v53 < v57)
      {
        ++v53;
        v56.columns[2] = vaddq_f32(v64, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v68, COERCE_FLOAT(*v58->f32)), v69, *v58, 1), v70, *v58->f32, 2));
        *&v59 = vdiv_f32(*v56.columns[2].f32, vdup_laneq_s32(v56.columns[2], 3));
        v60 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v54, COERCE_FLOAT(*v58[2].f32)), v55, v58[2], 1), v56.columns[0], *v58[2].f32, 2);
        v61 = vsub_f32(*&v59, *a4.f32);
        *(&v59 + 2) = v56.columns[2].f32[2] / *&v56.columns[2].i32[3];
        HIDWORD(v59) = 0;
        v60.i32[3] = v56.columns[1].i32[3];
        *v58->f32 = v59;
        *v58[2].f32 = v60;
        v58[4].f32[0] = sqrtf((((v56.columns[2].f32[2] / *&v56.columns[2].i32[3]) - a4.f32[2]) * ((v56.columns[2].f32[2] / *&v56.columns[2].i32[3]) - a4.f32[2])) + vaddv_f32(vmul_f32(v61, v61)));
        v58 += 12;
        if (v52 == v53)
        {
          goto LABEL_31;
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
    }
  }

LABEL_31:
  if (v65 == 1)
  {
    v83.i64[0] = v25;

    specialized MutableCollection<>.sort(by:)(&v83);

    v25 = v83.i64[0];
  }

  v62 = *MEMORY[0x1E69E9840];
  return v25;
}

uint64_t Scene.convexCast(convexShape:fromPosition:fromOrientation:toPosition:toOrientation:query:mask:relativeTo:)(uint64_t a1, unsigned __int8 *a2, unsigned int *a3, void *a4, __n128 a5, float32x4_t a6, float32x4_t a7, float32x4_t a8)
{
  v78[1] = *MEMORY[0x1E69E9840];
  v11 = *a2;
  v12 = *a3;
  specialized static __ServiceLocator.shared.getter();
  if (a4)
  {
    *v79.columns[0].i64 = _s10RealityKit12HasTransformPAAE16conversionMatrix4from2toSo13simd_float4x4aqd__Sg_qd_0_SgtAA6EntityCRbd__ALRbd_0_r0_lFZAL_A2LTt1g5(0, a4);
    v67 = v79.columns[0];
    v68 = v79.columns[1];
    v69 = v79.columns[2];
    v64 = v79.columns[3];
    __invert_f4(v79);
  }

  else
  {
    v67 = *zmmword_1C1887630;
    v68 = *&zmmword_1C1887630[16];
    v69 = *&zmmword_1C1887630[32];
    v64 = *&zmmword_1C1887630[48];
  }

  v13 = a5;
  if (one-time initialization token for identity == -1)
  {
    if (a4)
    {
LABEL_6:
      specialized simd_float4x4.init(translation:rotation:scale:)(v13.n128_f64[0], a6, 1.0);
      specialized simd_float4x4.init(translation:rotation:scale:)(*a7.i64, a8, 1.0);
      REMakeSRTFromMatrix();
      v71 = v14;
      REMakeSRTFromMatrix();
      a8.i32[3] = v15;
      a7 = v16;
      goto LABEL_9;
    }
  }

  else
  {
    swift_once();
    v13 = a5;
    if (a4)
    {
      goto LABEL_6;
    }
  }

  v71 = v13;
LABEL_9:
  RECollisionCastConfigurationInitToDefault();
  RECollisionCastConfigurationSetQueryType();
  RECollisionCastConfigurationSetFilter();
  v17 = *(a1 + 16);
  CollisionShape = RECollisionShapeAssetGetCollisionShape();
  RECollisionCastHitCollectionCreate();
  if (!a4)
  {
    if (CollisionShape)
    {
      v20 = *(v8 + 16);
      RECollisionCastConvexVsScene();
      goto LABEL_14;
    }

LABEL_45:
    __break(1u);

    __break(1u);
    return result;
  }

  if (!CollisionShape)
  {
    __break(1u);
    goto LABEL_45;
  }

  v19 = a4[2];
  RECollisionCastConvexVsEntitySimulation();
LABEL_14:
  v21 = RECollisionCastHitCollectionCount();
  v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21 & ~(v21 >> 63), 0, MEMORY[0x1E69E7CC0]);
  if (v21 < 0)
  {
    goto LABEL_43;
  }

  v23 = v22;
  v66 = a4;
  v65 = v11;
  if (v21)
  {
    v24 = 0;
    v25 = vsubq_f32(a7, v71);
    v26 = vmulq_f32(v25, v25);
    v27 = sqrtf(v26.f32[2] + vaddv_f32(*v26.f32));
    while (1)
    {
      if (RECollisionCastHitCollectionGetByIndex())
      {
        v77 = 1;
        RECollisionCastHitGetObject();
        Entity = RECollisionObjectGetEntity();
        if (Entity)
        {
          break;
        }
      }

LABEL_21:
      if (v21 == ++v24)
      {
        goto LABEL_33;
      }
    }

    v39 = Entity;
    if (REEntityGetSwiftObject())
    {
      type metadata accessor for Entity();
      v40 = swift_dynamicCastClassUnconditional();
    }

    else
    {
      if (REEntityIsBeingDestroyed())
      {
        goto LABEL_42;
      }

      v42 = specialized static Entity.entityInfoType(_:)();
      if (v42)
      {
        v41 = (*(v42 + 232))();
        v43 = *(v41 + 16);

        MEMORY[0x1C68F9740](v43, 0);
        *(v41 + 16) = v39;
        MEMORY[0x1C68F9740](v39, v41);

        goto LABEL_30;
      }

      v40 = makeEntity(for:)(v39);
    }

    v41 = v40;
LABEL_30:
    RECollisionCastHitGetPosition();
    v74 = v44;
    RECollisionCastHitGetNormal();
    v72 = v45;
    RECollisionCastHitGetHitPercentage();
    v47 = v46;
    ShapeIndex = RECollisionCastHitGetShapeIndex();
    if (RECollisionCastHitHasTriangleMeshHitInfo())
    {
      FaceIndex = RECollisionCastHitGetFaceIndex();
      RECollisionCastHitGetFaceUV();
      v29 = v49;
      v77 = 0;
    }

    else
    {
      FaceIndex = 0;
      v29 = 0;
    }

    v31 = a8.u32[3];
    v30 = a7.u32[3];
    v33 = *(v23 + 2);
    v32 = *(v23 + 3);
    if (v33 >= v32 >> 1)
    {
      v50 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1, v23);
      v31 = a8.u32[3];
      v30 = a7.u32[3];
      v23 = v50;
    }

    v34 = v74;
    HIDWORD(v34) = v31;
    v35 = v72;
    HIDWORD(v35) = v30;
    *(v23 + 2) = v33 + 1;
    v36 = &v23[96 * v33];
    *(v36 + 4) = v41;
    *(v36 + 3) = v34;
    *(v36 + 4) = v35;
    *(v36 + 20) = v27 * v47;
    *(v36 + 11) = FaceIndex;
    *(v36 + 12) = v29;
    v36[104] = v77;
    v37 = *(v78 + 3);
    *(v36 + 105) = v78[0];
    *(v36 + 27) = v37;
    *(v36 + 14) = ShapeIndex;
    a8.i32[3] = HIDWORD(v34);
    a7.i32[3] = v30;
    goto LABEL_21;
  }

LABEL_33:
  RECollisionCastHitCollectionDestroy();
  v51.columns[2] = v69;
  v51.columns[1] = v68;
  if (v66)
  {
    v52 = *(v23 + 2);
    if (v52)
    {
      v51.columns[0] = v67;
      v51.columns[0].i32[3] = 0;
      v51.columns[1].i32[3] = 0;
      v51.columns[2].i32[3] = 0;
      v56 = __invert_f3(v51);
      v53 = 0;
      v54 = vzip1q_s32(v56.columns[0], v56.columns[1]);
      v54.i32[2] = v56.columns[2].i32[0];
      v55 = vtrn2q_s32(v56.columns[0], v56.columns[1]);
      v55.i32[2] = v56.columns[2].i32[1];
      v56.columns[0] = vzip2q_s32(v56.columns[0], v56.columns[1]);
      v56.columns[0].i32[2] = v56.columns[2].i32[2];
      v57 = *(v23 + 2);
      v58 = (v23 + 48);
      while (v53 < v57)
      {
        ++v53;
        v56.columns[2] = vaddq_f32(v64, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v67, COERCE_FLOAT(*v58->f32)), v68, *v58, 1), v69, *v58->f32, 2));
        *&v59 = vdiv_f32(*v56.columns[2].f32, vdup_laneq_s32(v56.columns[2], 3));
        v60 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v54, COERCE_FLOAT(*v58[2].f32)), v55, v58[2], 1), v56.columns[0], *v58[2].f32, 2);
        v61 = vsub_f32(*&v59, a5.n128_u64[0]);
        *(&v59 + 2) = v56.columns[2].f32[2] / *&v56.columns[2].i32[3];
        HIDWORD(v59) = 0;
        v60.i32[3] = v56.columns[1].i32[3];
        *v58->f32 = v59;
        *v58[2].f32 = v60;
        v58[4].f32[0] = sqrtf((((v56.columns[2].f32[2] / *&v56.columns[2].i32[3]) - a5.n128_f32[2]) * ((v56.columns[2].f32[2] / *&v56.columns[2].i32[3]) - a5.n128_f32[2])) + vaddv_f32(vmul_f32(v61, v61)));
        v58 += 12;
        if (v52 == v53)
        {
          goto LABEL_38;
        }
      }

      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
    }
  }

LABEL_38:
  if (v65 == 1)
  {
    v78[0] = v23;

    specialized MutableCollection<>.sort(by:)(v78);

    v23 = v78[0];
  }

  v62 = *MEMORY[0x1E69E9840];
  return v23;
}

char *Scene.contact(position:relativeTo:)(uint64_t a1, float32x4_t a2)
{
  v79 = *MEMORY[0x1E69E9840];
  v4 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v5 = *(v4 + 16);
  if (a1)
  {
    *v82.columns[0].i64 = _s10RealityKit12HasTransformPAAE16conversionMatrix4from2toSo13simd_float4x4aqd__Sg_qd_0_SgtAA6EntityCRbd__ALRbd_0_r0_lFZAL_A2LTt1g5(0, a1);
    *v72 = v82.columns[0];
    *&v72[16] = v82.columns[1];
    *&v72[32] = v82.columns[2];
    v83 = __invert_f4(v82);
    simd_float4x4.transform(position:)(a2, v83.columns[0], v83.columns[1], v83.columns[2], v83.columns[3]);
  }

  else
  {
    *&v72[32] = *&zmmword_1C1887630[32];
    *&v72[16] = *&zmmword_1C1887630[16];
    *v72 = *zmmword_1C1887630;
  }

  RESphereShapeCreate();
  RECollisionObjectCreate();
  if (one-time initialization token for identity != -1)
  {
    goto LABEL_49;
  }

  while (1)
  {
    RECollisionObjectSetPose();
    REContactSetCollectionCreate();
    if (a1)
    {
      v6 = *(a1 + 16);
      RECollisionWorldGetContactsObjectVsEntitySimulationAdHoc();
    }

    else if (REServiceLocatorGetECSService())
    {
      v7 = *(v2 + 16);
      RECollisionWorldGetContactsObjectVsSceneAdHoc();
    }

    REContactSetCollectionGetIterator();
    v8 = REContactSetCollectionIteratorCurrent();
    if (!v8)
    {
      break;
    }

    v2 = v8;
    v9 = *v72;
    HIDWORD(v9) = 0;
    *v72 = v9;
    v10 = *&v72[16];
    HIDWORD(v10) = 0;
    *&v72[16] = v10;
    v11 = *&v72[32];
    HIDWORD(v11) = 0;
    *&v72[32] = v11;
    v12 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (!REContactSetHasContact())
      {
        goto LABEL_12;
      }

      REContactSetObjectB();
      if (REContactSetObjectA())
      {
        Entity = RECollisionObjectGetEntity();
        if (Entity)
        {
          break;
        }
      }

      v28 = RECollisionObjectGetEntity();
      if (v28)
      {
        v29 = v28;
        REContactSetGetNormal();
        v31 = v30;
        v31.i32[3] = v73.i32[3];
        v77 = v73.i32[3];
        if (a1)
        {
          v74 = v30;
          v81 = __invert_f3(*v72);
          v32.i64[0] = vzip2q_s32(v81.columns[0], v81.columns[1]).u64[0];
          v81.columns[0].i32[3] = v56;
          v81.columns[1].i32[3] = v57;
          v32.i64[1] = __PAIR64__(v61, v81.columns[2].u32[2]);
          v81.columns[2].i32[3] = v58;
          v33 = vzip1q_s32(v81.columns[0], v81.columns[2]);
          v34 = vzip1q_s32(v81.columns[1], 0);
          v35.i64[0] = vzip1q_s32(v33, v34).u64[0];
          v33.i64[0] = vzip2q_s32(v33, v34).u64[0];
          v35.i64[1] = __PAIR64__(v59, vdupq_lane_s32(*(&v81 + 32), 0).u32[2]);
          v33.i64[1] = __PAIR64__(v60, vdupq_lane_s32(*(&v81 + 32), 1).u32[2]);
          v36 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v35, v74.f32[0]), v33, *v74.f32, 1), v32, v74, 2);
          v36.i32[3] = v62;
          v73 = v36;
          v59 = v35.i32[3];
          v60 = v33.i32[3];
        }

        else
        {
          v73 = v31;
        }

        if (REEntityGetSwiftObject())
        {
          type metadata accessor for Entity();
          v44 = swift_dynamicCastClassUnconditional();
          goto LABEL_34;
        }

        if (REEntityIsBeingDestroyed())
        {
          goto LABEL_48;
        }

        v46 = specialized static Entity.entityInfoType(_:)();
        if (v46)
        {
          v45 = (*(v46 + 232))();
          v47 = *(v45 + 16);

          MEMORY[0x1C68F9740](v47, 0);
          *(v45 + 16) = v29;
          MEMORY[0x1C68F9740](v29, v45);
        }

        else
        {
          v44 = makeEntity(for:)(v29);
LABEL_34:
          v45 = v44;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v12 + 2) + 1, 1, v12);
        }

        v49 = *(v12 + 2);
        v48 = *(v12 + 3);
        v50 = a2;
        v51 = v77;
        if (v49 >= v48 >> 1)
        {
          v53 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v48 > 1), v49 + 1, 1, v12);
          v50 = a2;
          v51 = v77;
          v12 = v53;
        }

        *(v12 + 2) = v49 + 1;
        v52 = &v12[96 * v49];
        *(v52 + 4) = v45;
        *(v52 + 3) = v50;
        *(v52 + 4) = v73;
        *(v52 + 20) = 0;
        *(v52 + 11) = 0;
        *(v52 + 12) = 0;
        v52[104] = 1;
        *(v52 + 105) = *v78;
        *(v52 + 27) = *&v78[3];
        *(v52 + 14) = -1;
        v73.i32[3] = v51;
      }

LABEL_12:
      REContactSetCollectionIteratorNext();
      v2 = REContactSetCollectionIteratorCurrent();
      if (!v2)
      {
        goto LABEL_46;
      }
    }

    v15 = Entity;
    REContactSetGetNormal();
    v18 = COERCE_UNSIGNED_INT(0.0 - v16);
    v18.f32[1] = 0.0 - v17;
    v19 = v18;
    v19.f32[2] = 0.0 - v20;
    v76 = v19;
    if (a1)
    {
      v63 = 0.0 - v16;
      v64 = *v18.f32;
      v80 = __invert_f3(*v72);
      v21.i64[0] = vzip2q_s32(v80.columns[0], v80.columns[1]).u64[0];
      v80.columns[0].i32[3] = v65;
      v80.columns[1].i32[3] = v66;
      v21.i64[1] = __PAIR64__(v70, v80.columns[2].u32[2]);
      v80.columns[2].i32[3] = v67;
      v22 = vzip1q_s32(v80.columns[0], v80.columns[2]);
      v23 = vzip1q_s32(v80.columns[1], 0);
      v24.i64[0] = vzip1q_s32(v22, v23).u64[0];
      v22.i64[0] = vzip2q_s32(v22, v23).u64[0];
      v24.i64[1] = __PAIR64__(v68, vdupq_lane_s32(*(&v80 + 32), 0).u32[2]);
      v22.i64[1] = __PAIR64__(v69, vdupq_lane_s32(*(&v80 + 32), 1).u32[2]);
      v25 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v24, v63), v22, v64, 1), v21, v76, 2);
      v69 = v22.i32[3];
      v25.i32[3] = v71;
      v68 = v24.i32[3];
      v76 = v25;
    }

    if (REEntityGetSwiftObject())
    {
      type metadata accessor for Entity();
      v26 = swift_dynamicCastClassUnconditional();
      goto LABEL_20;
    }

    if ((REEntityIsBeingDestroyed() & 1) == 0)
    {
      v37 = specialized static Entity.entityInfoType(_:)();
      if (v37)
      {
        v27 = (*(v37 + 232))();
        v38 = *(v27 + 16);

        MEMORY[0x1C68F9740](v38, 0);
        *(v27 + 16) = v15;
        MEMORY[0x1C68F9740](v15, v27);
      }

      else
      {
        v26 = makeEntity(for:)(v15);
LABEL_20:
        v27 = v26;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v12 + 2) + 1, 1, v12);
      }

      v40 = *(v12 + 2);
      v39 = *(v12 + 3);
      v41 = a2;
      v42 = v76;
      if (v40 >= v39 >> 1)
      {
        v43 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1, v12);
        v41 = a2;
        v42 = v76;
        v12 = v43;
      }

      *(v12 + 2) = v40 + 1;
      v13 = &v12[96 * v40];
      *(v13 + 4) = v27;
      *(v13 + 3) = v41;
      *(v13 + 4) = v42;
      *(v13 + 20) = 0;
      *(v13 + 11) = 0;
      *(v13 + 12) = 0;
      v13[104] = 1;
      *(v13 + 105) = *v78;
      *(v13 + 27) = *&v78[3];
      *(v13 + 14) = -1;
      goto LABEL_12;
    }

    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    swift_once();
  }

  v12 = MEMORY[0x1E69E7CC0];
LABEL_46:
  REContactSetCollectionDestroy();
  RECollisionObjectDestroy();
  RECollisionShapeDestroy();
  v54 = *MEMORY[0x1E69E9840];
  return v12;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(float *__dst, float *__src, float *a3, float *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 96;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 96;
  if (v9 < v11)
  {
    v12 = 24 * v9;
    if (a4 != __dst || &__dst[v12] <= a4)
    {
      memmove(a4, __dst, v12 * 4);
    }

    v13 = &v4[v12];
    if (v8 < 96)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (v6[12] < v4[12])
      {
        break;
      }

      v14 = v4;
      v15 = v7 == v4;
      v4 += 24;
      if (!v15)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 24;
      if (v4 >= v13)
      {
        goto LABEL_6;
      }
    }

    v14 = v6;
    v15 = v7 == v6;
    v6 += 24;
    if (v15)
    {
      goto LABEL_9;
    }

LABEL_8:
    memmove(v7, v14, 0x60uLL);
    goto LABEL_9;
  }

  v16 = 24 * v11;
  if (a4 != __src || &__src[v16] <= a4)
  {
    memmove(a4, __src, 96 * v11);
  }

  v13 = &v4[v16];
  if (v10 >= 96 && v6 > v7)
  {
LABEL_20:
    v5 -= 24;
    do
    {
      v17 = v5 + 24;
      if (*(v13 - 12) < *(v6 - 12))
      {
        v19 = v6 - 24;
        if (v17 != v6)
        {
          memmove(v5, v6 - 24, 0x60uLL);
        }

        if (v13 <= v4 || (v6 -= 24, v19 <= v7))
        {
          v6 = v19;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      v18 = (v13 - 24);
      if (v17 != v13)
      {
        memmove(v5, v13 - 24, 0x60uLL);
      }

      v5 -= 24;
      v13 -= 24;
    }

    while (v18 > v4);
    v13 = v18;
  }

LABEL_31:
  v20 = 24 * ((v13 - v4) / 96);
  if (v6 != v4 || v6 >= &v4[v20])
  {
    memmove(v6, v4, v20 * 4);
  }

  return 1;
}

uint64_t specialized static CollisionCastHit.TriangleHit.== infix(_:_:)(float32x2_t *a1, float32x2_t *a2)
{
  v2 = 0;
  if (*a1 == *a2)
  {
    v3 = vceq_f32(a1[1], a2[1]);
    if (v3.i8[0])
    {
      v2 = v3.i8[4];
    }
  }

  return v2 & 1;
}

BOOL specialized static CollisionCastHit.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (*(*a1 + 16) == *(*a2 + 16))
  {
    v4 = *(a1 + 16);
    v5 = *(a2 + 16);
    if (vmovn_s32(vceqq_f32(v4, v5)).u8[0])
    {
      v6 = *(a1 + 32);
      v7 = *(a2 + 32);
      result = 0;
      if ((vminv_u16(vmovn_s32(vceqq_f32(vextq_s8(vextq_s8(v4, v4, 0xCuLL), v6, 8uLL), vextq_s8(vextq_s8(v5, v5, 0xCuLL), v7, 8uLL)))) & 1) != 0 && (vmovn_s32(vceqq_f32(v6, v7)).i32[1] & 1) != 0 && *(a1 + 48) == *(a2 + 48))
      {
        if (*(a1 + 72))
        {
          if (!*(a2 + 72))
          {
            return 0;
          }

          return *(a1 + 80) == *(a2 + 80);
        }

        result = 0;
        if ((*(a2 + 72) & 1) == 0 && *(a1 + 56) == *(a2 + 56))
        {
          v8 = vceq_f32(*(a1 + 64), *(a2 + 64));
          if (v8.i8[0] & 1) != 0 && (v8.i8[4])
          {
            return *(a1 + 80) == *(a2 + 80);
          }
        }
      }
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CollisionCastQueryType and conformance CollisionCastQueryType()
{
  result = lazy protocol witness table cache variable for type CollisionCastQueryType and conformance CollisionCastQueryType;
  if (!lazy protocol witness table cache variable for type CollisionCastQueryType and conformance CollisionCastQueryType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CollisionCastQueryType and conformance CollisionCastQueryType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CollisionGroup and conformance CollisionGroup()
{
  result = lazy protocol witness table cache variable for type CollisionGroup and conformance CollisionGroup;
  if (!lazy protocol witness table cache variable for type CollisionGroup and conformance CollisionGroup)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CollisionGroup and conformance CollisionGroup);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CollisionGroup and conformance CollisionGroup;
  if (!lazy protocol witness table cache variable for type CollisionGroup and conformance CollisionGroup)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CollisionGroup and conformance CollisionGroup);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CollisionGroup and conformance CollisionGroup;
  if (!lazy protocol witness table cache variable for type CollisionGroup and conformance CollisionGroup)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CollisionGroup and conformance CollisionGroup);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CollisionGroup and conformance CollisionGroup;
  if (!lazy protocol witness table cache variable for type CollisionGroup and conformance CollisionGroup)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CollisionGroup and conformance CollisionGroup);
  }

  return result;
}

__n128 __swift_memcpy88_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t static AudioFileResource.url(forAssetNamed:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v26 = a4;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v27 = v7;
  v28 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = &unk_1F40E5C80;
  v13 = 8;
  do
  {
    v15 = *(v12 - 1);
    v14 = *v12;

    v16 = MEMORY[0x1C68F3280](a1, a2);
    if (v14)
    {
      v17 = MEMORY[0x1C68F3280](v15, v14);
    }

    else
    {
      v17 = 0;
    }

    v18 = [a3 URLForResource:v16 withExtension:v17];

    if (v18)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
      swift_arrayDestroy();
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v23 = v27;
      v24 = v26;
      (*(v28 + 32))(v26, v11, v27);
      return (*(v28 + 56))(v24, 0, 1, v23);
    }

    v12 += 2;
    --v13;
  }

  while (v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  swift_arrayDestroy();
  v19 = v27;
  v20 = *(v28 + 56);
  v21 = v26;

  return v20(v21, 1, 1, v19);
}

uint64_t static AudioFileResource.makeAssetRef(bundle:name:configuration:inputMode:)(void *a1, uint64_t a2, uint64_t a3, __int128 *a4, unsigned __int8 *a5)
{
  v87 = a3;
  v70 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v64 - v10;
  v12 = type metadata accessor for URL();
  v68 = *(v12 - 1);
  v69 = v12;
  v13 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v65 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchPredicate();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = (&v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = a4[1];
  v84 = *a4;
  v85 = v20;
  *v86 = a4[2];
  *&v86[13] = *(a4 + 45);
  v21 = *a5;
  type metadata accessor for OS_dispatch_queue();
  *v19 = static OS_dispatch_queue.main.getter();
  (*(v16 + 104))(v19, *MEMORY[0x1E69E8020], v15);
  LOBYTE(a5) = _dispatchPreconditionTest(_:)();
  result = (*(v16 + 8))(v19, v15);
  if (a5)
  {
    v66 = v21;
    v23 = specialized static __ServiceLocator.shared.getter();
    swift_beginAccess();
    outlined init with copy of __REAssetService(v23 + 120, &v73);
    v24 = *(&v74 + 1);
    v25 = v75;
    __swift_project_boxed_opaque_existential_1(&v73, *(&v74 + 1));
    v26 = (*(v25 + 32))(v24, v25);
    __swift_destroy_boxed_opaque_existential_1(&v73);
    if (a1)
    {
      v27 = a1;
    }

    else
    {
      v27 = [objc_opt_self() mainBundle];
    }

    v28 = v69;
    v29 = a1;
    v30 = [v27 resourcePath];
    if (v30)
    {
      v64 = v26;

      v80 = v84;
      v81 = v85;
      v82 = *v86;
      v83 = *&v86[16];
      v31 = *&v86[24];
      v32 = v86[28];
      v79 = v86[28];
      v69 = v27;
      if (a1)
      {
        outlined init with copy of AudioFileResource.Configuration(&v84, &v73);
        v33 = v29;
      }

      else
      {
        v41 = objc_opt_self();
        outlined init with copy of AudioFileResource.Configuration(&v84, &v73);
        v33 = [v41 mainBundle];
      }

      v42 = v29;
      static AudioFileResource.url(forAssetNamed:in:)(v70, v87, v33, v11);

      v43 = v68;
      if ((*(v68 + 48))(v11, 1, v28) == 1)
      {
        outlined destroy of URL?(v11);
      }

      else
      {
        v38 = *&v86[24];
        v44 = v86[28];
        v45 = v65;
        (*(v43 + 32))(v65, v11, v28);
        LOBYTE(v73) = v44;
        v46 = v45;
        v47 = v67;
        v48 = specialized static AudioFileResource.layoutTag(for:layoutTagOverride:)(v45, v38 | (v73 << 32));
        v32 = v47;
        if (v47)
        {

          (*(v43 + 8))(v46, v28);
          v73 = v80;
          v74 = v81;
          v75 = v82;
          v76 = v83;
          v77 = v31;
          v78 = v79;
          outlined destroy of AudioFileResource.Configuration(&v73);
          return v38;
        }

        v49 = v48;
        v67 = 0;
        (*(v43 + 8))(v46, v28);
        v79 = 0;
        v31 = v49;
      }

      v73 = v80;
      v74 = v81;
      v75 = v82;
      v76 = v83;
      v77 = v31;
      v78 = v32;
      type metadata accessor for REAudioFileAssetConfigurationWrapper();
      swift_initStackObject();
      v50 = REAudioFileAssetConfigurationWrapper.init(configuration:)(&v73);
      v51 = *(v50 + 16);
      REAudioFileAssetConfigurationSetInputMode();
      v52 = v70;
      v53 = v87;
      v54 = MEMORY[0x1C68F3280](v70, v87);
      v55 = *(v50 + 16);
      v27 = v69;
      v56 = REAudioFileAssetDescriptorCreateWithBundleResource();

      if (v56)
      {
        v38 = REAudioFileAssetCreateWithDescriptor();
        RERelease();
        if (v38)
        {

          return v38;
        }

        v71 = 0;
        v72 = 0xE000000000000000;
        _StringGuts.grow(_:)(66);
        MEMORY[0x1C68F3410](0xD000000000000032, 0x80000001C18EF6A0);
        MEMORY[0x1C68F3410](v52, v53);
        MEMORY[0x1C68F3410](0x646E7562206E6920, 0xEB0000000020656CLL);
        v57 = [v27 description];
      }

      else
      {
        v71 = 0;
        v72 = 0xE000000000000000;
        _StringGuts.grow(_:)(71);
        MEMORY[0x1C68F3410](0xD000000000000037, 0x80000001C18EF660);
        MEMORY[0x1C68F3410](v52, v53);
        MEMORY[0x1C68F3410](0x646E7562206E6920, 0xEB0000000020656CLL);
        v57 = [v27 description];
      }

      v58 = v57;
      v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v61 = v60;

      MEMORY[0x1C68F3410](v59, v61);

      MEMORY[0x1C68F3410](46, 0xE100000000000000);
      v38 = v71;
      v62 = v72;
      lazy protocol witness table accessor for type AudioResource.CoreREError and conformance AudioResource.CoreREError();
      swift_allocError();
      *v63 = v38;
      v63[1] = v62;
      swift_willThrow();
    }

    else
    {
      *&v73 = 0;
      *(&v73 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(45);

      *&v73 = 0xD00000000000001DLL;
      *(&v73 + 1) = 0x80000001C18EF640;
      MEMORY[0x1C68F3410](v70, v87);
      MEMORY[0x1C68F3410](0x646E7562206E6920, 0xEB0000000020656CLL);
      v34 = [v27 description];
      v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v37 = v36;

      MEMORY[0x1C68F3410](v35, v37);

      MEMORY[0x1C68F3410](46, 0xE100000000000000);
      v39 = *(&v73 + 1);
      v38 = v73;
      lazy protocol witness table accessor for type AudioResource.CoreREError and conformance AudioResource.CoreREError();
      swift_allocError();
      *v40 = __PAIR128__(v39, v38);
      swift_willThrow();
    }

    return v38;
  }

  __break(1u);
  return result;
}

void static AudioFileResource.loadFromBundle(named:in:configuration:legacyInputMode:)(uint64_t a1, uint64_t a2, void *a3, __int128 *a4, unsigned __int8 *a5)
{
  v59 = type metadata accessor for DispatchPredicate();
  v58 = *(v59 - 8);
  v10 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v57 = &v53[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v53[-v14];
  v16 = type metadata accessor for URL();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v55 = &v53[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v20);
  v69 = &v53[-v21];
  v22 = a4[1];
  v66 = *a4;
  v67 = v22;
  v68[0] = a4[2];
  *(v68 + 13) = *(a4 + 45);
  v23 = *a5;
  if (a3)
  {
    v24 = a3;
  }

  else
  {
    v24 = [objc_opt_self() mainBundle];
  }

  v25 = a3;
  static AudioFileResource.url(forAssetNamed:in:)(a1, a2, v24, v15);

  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    outlined destroy of URL?(v15);
    v26 = v60;
    _s17RealityFoundation16LoadableResourcePAAE012getAssetFromA12FileInBundle4name2in0eF0qd__SS_So8NSBundleCSgqd__SS_0B03URLVtKXEtKlFZ0A3Kit05AudiohD0C_APTt3g504_s17a12Foundation16cd12PAAE04loadd4g3A12hi22Bundle5named2inxSS_So8m8CSgtKFZxV38_0B03URLVtKcfu_0A3Kit05AudiogD0C_Tt2G5Tf1nnc_n(a1, a2, a3);
    if (v26)
    {
      lazy protocol witness table accessor for type AudioFileResource.Error and conformance AudioFileResource.Error();
      swift_allocError();
      *v27 = a1;
      *(v27 + 8) = a2;
      *(v27 + 16) = 0;
      swift_willThrow();
    }

    return;
  }

  v54 = v23;
  (*(v17 + 32))(v69, v15, v16);
  v28 = URL.pathExtension.getter();
  v30 = v29;
  v56 = a1;
  v31 = MEMORY[0x1C68F3280](a1, a2);
  v32 = [v31 pathExtension];

  v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v34;

  if (v28 == v33 && v30 == v35)
  {

LABEL_11:

    v37 = v56;
    v38 = a2;
    goto LABEL_13;
  }

  v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v36)
  {
    goto LABEL_11;
  }

  *&v63 = v56;
  *(&v63 + 1) = a2;

  MEMORY[0x1C68F3410](46, 0xE100000000000000);
  v39 = v63;
  v40 = URL.pathExtension.getter();
  v42 = v41;
  v63 = v39;

  MEMORY[0x1C68F3410](v40, v42);

  v38 = *(&v63 + 1);
  v37 = v63;
LABEL_13:
  v63 = v66;
  v64 = v67;
  v65[0] = v68[0];
  *(v65 + 13) = *(v68 + 13);
  v62[0] = v54;
  v43 = v60;
  v44 = static AudioFileResource.makeAssetRef(bundle:name:configuration:inputMode:)(a3, v37, v38, &v63, v62);
  if (v43)
  {
    (*(v17 + 8))(v69, v16);
  }

  else
  {
    v60 = v44;

    outlined init with copy of AudioFileResource.Configuration(&v66, &v63);
    v45 = specialized static __ServiceLocator.shared.getter();
    swift_beginAccess();
    v46 = *(v45 + 24);
    swift_unownedRetainStrong();
    v47 = *(v46 + 32);

    v48 = v57;
    *v57 = v47;
    v49 = v58;
    v50 = v59;
    (*(v58 + 104))(v48, *MEMORY[0x1E69E8020], v59);
    LOBYTE(v46) = _dispatchPreconditionTest(_:)();
    (*(v49 + 8))(v48, v50);
    if (v46)
    {
      v51 = v55;
      v52 = v69;
      (*(v17 + 16))(v55, v69, v16);
      v63 = v66;
      v64 = v67;
      v65[0] = v68[0];
      *(v65 + 13) = *(v68 + 13);
      v61 = v54;
      type metadata accessor for AudioFileResource();
      swift_allocObject();

      AudioFileResource.init(assetRef:url:name:configuration:legacyInputMode:)(v60, v51, v56, a2, &v63, &v61);
      RERelease();
      (*(v17 + 8))(v52, v16);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t static AudioFileResource.load(contentsOf:withName:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v8 = type metadata accessor for URL();
  v38 = *(v8 - 8);
  v9 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchPredicate();
  v37 = *(v12 - 8);
  v13 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = a4[1];
  v44 = *a4;
  v45 = v16;
  v18 = *a4;
  v17 = a4[1];
  v46[0] = a4[2];
  *(v46 + 13) = *(a4 + 45);
  v41 = v18;
  v42 = v17;
  v43[0] = a4[2];
  *(v43 + 13) = *(a4 + 45);
  v39[0] = 1;
  v19 = v47;
  v20 = specialized static AudioFileResource.makeAssetRef(from:withName:configuration:inputMode:)(a1, a2, a3, &v41, v39);
  if (v19)
  {
    return a4;
  }

  v33 = v20;
  v36 = v11;
  v47 = a1;
  v35 = 0;
  v21 = a3;
  if (!a3)
  {
    a2 = URL.lastPathComponent.getter();
    v21 = v22;
  }

  v34 = a2;

  v23 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v24 = *(v23 + 24);
  swift_unownedRetainStrong();
  v25 = *(v24 + 32);

  *v15 = v25;
  v26 = v37;
  (*(v37 + 104))(v15, *MEMORY[0x1E69E8020], v12);
  LOBYTE(v24) = _dispatchPreconditionTest(_:)();
  result = (*(v26 + 8))(v15, v12);
  v28 = v36;
  if (v24)
  {
    (*(v38 + 16))(v36, v47, v8);
    v41 = v44;
    v42 = v45;
    v43[0] = v46[0];
    *(v43 + 13) = *(v46 + 13);
    v40[0] = 1;
    v29 = type metadata accessor for AudioFileResource();
    a4 = swift_allocObject();
    outlined init with copy of AudioFileResource.Configuration(&v44, v39);
    v30 = v35;
    v31 = AudioFileResource.init(assetRef:url:name:configuration:legacyInputMode:)(v33, v28, v34, v21, &v41, v40);
    if (v30)
    {
      RERelease();
    }

    else
    {
      a4 = v31;
      RERelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1C1887600;
      *(inited + 32) = a4;
      *(inited + 56) = v29;
      *(inited + 64) = &protocol witness table for AudioFileResource;

      specialized static RequestLoadableUtilities.enforceResourceSharingBeforeECSCommits(_:)(inited);
      swift_setDeallocating();
      __swift_destroy_boxed_opaque_existential_1((inited + 32));
    }

    return a4;
  }

  __break(1u);
  return result;
}

uint64_t static AudioFileResource.load(named:in:configuration:)(uint64_t a1, uint64_t a2, void *a3, __int128 *a4)
{
  if (a3)
  {
    v9 = a3;
  }

  else
  {
    v9 = [objc_opt_self() mainBundle];
  }

  v16 = 1;
  v10 = a3;
  static AudioFileResource.loadFromBundle(named:in:configuration:legacyInputMode:)(a1, a2, v9, a4, &v16);
  v12 = v11;

  if (!v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C1887600;
    v14 = type metadata accessor for AudioFileResource();
    *(inited + 32) = v12;
    *(inited + 56) = v14;
    *(inited + 64) = &protocol witness table for AudioFileResource;

    specialized static RequestLoadableUtilities.enforceResourceSharingBeforeECSCommits(_:)(inited);
    swift_setDeallocating();
    __swift_destroy_boxed_opaque_existential_1((inited + 32));
  }

  return v12;
}

uint64_t static AudioFileResource.load(named:from:in:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v34 = a3;
  *&v30 = a3;
  *(&v30 + 1) = a4;

  MEMORY[0x1C68F3410](58, 0xE100000000000000);

  MEMORY[0x1C68F3410](a1, a2);

  v10 = v30;
  if (a5)
  {
    v11 = a5;
  }

  else
  {
    v11 = [objc_opt_self() mainBundle];
  }

  v33 = 1;
  LOWORD(v30) = 1;
  BYTE2(v30) = 0;
  *(&v30 + 1) = 0;
  LOBYTE(v31) = -1;
  *(&v31 + 1) = 0;
  v32[0] = -1;
  memset(&v32[8], 0, 20);
  v32[28] = 1;
  v29 = 1;
  v12 = a5;
  static AudioFileResource.loadFromBundle(named:in:configuration:legacyInputMode:)(v10, *(&v10 + 1), v11, &v30, &v29);
  v14 = v13;
  if (v5)
  {
    v26 = v30;
    v27 = v31;
    v28[0] = *v32;
    *(v28 + 13) = *&v32[13];
    outlined destroy of AudioFileResource.Configuration(&v26);
  }

  else
  {
    v26 = v30;
    v27 = v31;
    v28[0] = *v32;
    *(v28 + 13) = *&v32[13];
    outlined destroy of AudioFileResource.Configuration(&v26);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation15RequestLoadable_pGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C1887600;
    v16 = type metadata accessor for AudioFileResource();
    *(inited + 32) = v14;
    *(inited + 56) = v16;
    *(inited + 64) = &protocol witness table for AudioFileResource;

    specialized static RequestLoadableUtilities.enforceResourceSharingBeforeECSCommits(_:)(inited);
    swift_setDeallocating();
    __swift_destroy_boxed_opaque_existential_1((inited + 32));
    if (one-time initialization token for audio != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Logger.audio);

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v25 = v24;
      *v20 = 136315906;
      *(v20 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v25);
      *(v20 + 12) = 2048;
      v21 = *(v14 + 16);
      *(v20 + 14) = REAudioFileAssetGetAudioAssetID();
      *(v20 + 22) = 2048;
      v22 = *(v14 + 16);
      *(v20 + 24) = REAssetGetAssetId();

      *(v20 + 32) = 2080;
      *(v20 + 34) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, a4, &v25);
      _os_log_impl(&dword_1C1358000, v18, v19, "[API/RealityKit] Loading AudioFileResource %s with audioAssetID: %llu and REAssetID: %llu from scene: %s", v20, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1C6902A30](v24, -1, -1);
      MEMORY[0x1C6902A30](v20, -1, -1);
    }

    else
    {
    }
  }

  return v14;
}

uint64_t AudioFileResource.addToLoadRequest(_:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 16);
  return REAssetLoadRequestAddAsset();
}

id @nonobjc AVAudioFile.init(forReading:)(uint64_t a1)
{
  v2 = v1;
  v16 = *MEMORY[0x1E69E9840];
  URL._bridgeToObjectiveC()(v16);
  v5 = v4;
  v15 = 0;
  v6 = [v2 initForReading:v4 error:&v15];

  v7 = v15;
  if (v6)
  {
    v8 = type metadata accessor for URL();
    v9 = *(*(v8 - 8) + 8);
    v10 = v7;
    v9(a1, v8);
  }

  else
  {
    v11 = v15;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v12 = type metadata accessor for URL();
    (*(*(v12 - 8) + 8))(a1, v12);
  }

  v13 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t specialized static AudioFileResource.layoutTag(for:layoutTagOverride:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for URL();
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9, a1, v7);
  v11 = objc_allocWithZone(MEMORY[0x1E6958408]);
  v12 = @nonobjc AVAudioFile.init(forReading:)(v9);
  if (v2)
  {
    return a2;
  }

  v14 = v12;
  v15 = [v12 fileFormat];

  if ((a2 & 0x100000000) != 0)
  {
    specialized static AudioResource.supportedChannelLayoutTag(for:)(v15);
    a2 = v16;

    return a2;
  }

  if (a2 != 1668116578 && a2)
  {
    if ([v15 channelCount] != a2)
    {
      lazy protocol witness table accessor for type AudioResource.ChannelLayoutError and conformance AudioResource.ChannelLayoutError();
      a2 = swift_allocError();
      *v17 = 1;
      swift_willThrow();
    }

    return a2;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized static AudioFileResource.makeAssetRef(from:withName:configuration:inputMode:)(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, unsigned __int8 *a5)
{
  v8 = a4[1];
  v45 = *a4;
  v46 = v8;
  *v47 = a4[2];
  *&v47[13] = *(a4 + 45);
  v48 = *a5;
  v9 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v9 + 120, &v34);
  v10 = *(&v35 + 1);
  v11 = v36;
  __swift_project_boxed_opaque_existential_1(&v34, *(&v35 + 1));
  (*(v11 + 32))(v10, v11);
  __swift_destroy_boxed_opaque_existential_1(&v34);
  v12 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v13 = *(v12 + 24);
  v14 = *(swift_unownedRetainStrong() + 24);

  REEngineGetServiceLocator();
  if (URL.isFileURL.getter())
  {
    if (URL.pathExtension.getter() == 0xD000000000000011 && 0x80000001C18EF5C0 == v15)
    {
    }

    else
    {
      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v16 & 1) == 0)
      {
        if (a3)
        {
          URL._bridgeToObjectiveC()(v17);
          v23 = v22;
          String.utf8CString.getter();
          FileNameAliasAssetDescriptor = REAssetManagerRegisterAndCreateFileNameAliasAssetDescriptor();
        }

        else
        {
          v25 = *&v47[24];
          v26 = v47[28];
          v41 = v45;
          v42 = v46;
          v43 = *v47;
          v44 = *&v47[16];
          outlined init with copy of AudioFileResource.Configuration(&v45, &v34);
          LOBYTE(v34) = v26;
          v27 = specialized static AudioFileResource.layoutTag(for:layoutTagOverride:)(a1, v25 | (v26 << 32));
          if (v5)
          {
            v34 = v41;
            v35 = v42;
            v36 = v43;
            v37 = v44;
            v38 = v25;
            v39 = v26;
            outlined destroy of AudioFileResource.Configuration(&v34);
            return a1;
          }

          v40 = 0;
          v34 = v41;
          v35 = v42;
          v36 = v43;
          v37 = v44;
          v38 = v27;
          v39 = 0;
          type metadata accessor for REAudioFileAssetConfigurationWrapper();
          swift_initStackObject();
          v28 = REAudioFileAssetConfigurationWrapper.init(configuration:)(&v34);
          v29 = *(v28 + 16);
          REAudioFileAssetConfigurationSetInputMode();
          URL._bridgeToObjectiveC()(v30);
          v32 = v31;
          v33 = *(v28 + 16);
          FileNameAliasAssetDescriptor = REAudioFileAssetDescriptorCreateWithURL();
        }

        if (FileNameAliasAssetDescriptor)
        {
          REAssetRegistrationOptionsCreate();
          REAssetRegistrationOptionsSetIsMutable();
          a1 = REAssetHandleCreateFromAssetRegistrationOptions();
          RERelease();
          RERelease();
          return a1;
        }
      }
    }
  }

  *&v34 = 0;
  *(&v34 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(29);

  *&v34 = 0xD00000000000001BLL;
  *(&v34 + 1) = 0x80000001C18EF5A0;
  v18 = URL.path.getter();
  MEMORY[0x1C68F3410](v18);

  a1 = *(&v34 + 1);
  v19 = v34;
  lazy protocol witness table accessor for type AudioResource.CoreREError and conformance AudioResource.CoreREError();
  swift_allocError();
  *v20 = v19;
  v20[1] = a1;
  swift_willThrow();
  return a1;
}