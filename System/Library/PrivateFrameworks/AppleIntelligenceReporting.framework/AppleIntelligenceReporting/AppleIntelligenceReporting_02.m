Swift::Int specialized RawRepresentable<>.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

uint64_t specialized RawRepresentable<>.hash(into:)()
{
  AppleIntelligenceErrorCategory.rawValue.getter();
  String.hash(into:)();
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)()
{
  Hasher.init(_seed:)();
  AppleIntelligenceErrorCategory.rawValue.getter();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  return Hasher._finalize()();
}

AppleIntelligenceReporting::AppleIntelligenceErrorCategory_optional __swiftcall AppleIntelligenceErrorCategory.init(rawValue:)(Swift::String rawValue)
{
  v3 = v1;
  _findStringSwitchCaseWithCache(cases:string:cache:)();
  OUTLINED_FUNCTION_44_1();

  v5 = 0;
  v6 = 5;
  switch(v2)
  {
    case 0:
      goto LABEL_15;
    case 1:
      v5 = 1;
      goto LABEL_15;
    case 2:
      v5 = 2;
      goto LABEL_15;
    case 3:
      v5 = 3;
      goto LABEL_15;
    case 4:
      v5 = 4;
LABEL_15:
      v6 = v5;
      break;
    case 5:
      break;
    case 6:
      v6 = 6;
      break;
    case 7:
      v6 = 7;
      break;
    case 8:
      v6 = 8;
      break;
    case 9:
      v6 = 9;
      break;
    case 10:
      v6 = 10;
      break;
    case 11:
      v6 = 11;
      break;
    case 12:
      v6 = 12;
      break;
    case 13:
      v6 = 13;
      break;
    case 14:
      v6 = 14;
      break;
    case 15:
      v6 = 15;
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    case 21:
      v6 = 21;
      break;
    case 22:
      v6 = 22;
      break;
    default:
      v6 = 23;
      break;
  }

  *v3 = v6;
  return result;
}

uint64_t AppleIntelligenceErrorCategory.rawValue.getter()
{
  result = 0x6962616C69617661;
  switch(*v0)
  {
    case 1:
      return 0x656C6C65636E6163;
    case 2:
      return 0x6B726F7774656ELL;
    case 3:
      return 0x74706D6F7270;
    case 4:
      return 0xD000000000000015;
    case 5:
      return 0x656D69746E7572;
    case 6:
      return 1819242356;
    case 7:
      return 0x746E656D75636F64;
    case 8:
      return 0x6164696C61766E69;
    case 9:
      return 0x69746E6568747561;
    case 0xA:
      return 0x616D65686373;
    case 0xB:
      return 0x656D726F666C616DLL;
    case 0xC:
      return 0xD000000000000010;
    case 0xD:
      v2 = 0x6E756F636361;
      return v2 & 0xFFFFFFFFFFFFLL | 0x74000000000000;
    case 0xE:
      return 0xD000000000000014;
    case 0xF:
      return 0x746F4E7465737361;
    case 0x10:
      return 0x696D694C65746172;
    case 0x11:
      v2 = 0x756F656D6974;
      return v2 & 0xFFFFFFFFFFFFLL | 0x74000000000000;
    case 0x12:
      v3 = 0x746E65696C63;
      goto LABEL_26;
    case 0x13:
      v3 = 0x726576726573;
LABEL_26:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x7245000000000000;
      break;
    case 0x14:
      result = 0x6C616E7265746E69;
      break;
    case 0x15:
      result = 0x6669636570736E75;
      break;
    case 0x16:
      result = 0x6564646962726F66;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AppleIntelligenceErrorCategory(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return specialized == infix<A>(_:_:)();
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance AppleIntelligenceErrorCategory@<X0>(uint64_t *a1@<X8>)
{
  result = AppleIntelligenceErrorCategory.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t specialized AppleIntelligenceError.retryAfterDate.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v22 - v4;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = AppleIntelligenceReportingError.underlyingErrors.getter();
  v12 = *(v11 + 16);
  if (v12)
  {
    v22 = v11;
    v23 = a1;
    v13 = v11 + 32;
    v24 = v7;
    v14 = (v7 + 32);
    v15 = MEMORY[0x1E69E7CC0];
    do
    {
      outlined init with copy of any Source<Self.Stream == A>(v13, v25);
      v16 = v26;
      v17 = v27;
      __swift_project_boxed_opaque_existential_1(v25, v26);
      (*(v17 + 64))(v16, v17);
      __swift_destroy_boxed_opaque_existential_1(v25);
      if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
      {
        outlined destroy of AppleIntelligenceError?(v5, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      }

      else
      {
        v18 = *v14;
        (*v14)(v10, v5, v6);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v15 + 16) + 1, 1, v15);
        }

        v20 = *(v15 + 16);
        v19 = *(v15 + 24);
        if (v20 >= v19 >> 1)
        {
          v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v19 > 1, v20 + 1, 1, v15);
        }

        *(v15 + 16) = v20 + 1;
        v18((v15 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v20), v10, v6);
      }

      v13 += 40;
      --v12;
    }

    while (v12);

    a1 = v23;
  }

  else
  {

    v15 = MEMORY[0x1E69E7CC0];
  }

  specialized Sequence<>.max()(v15, a1);
}

void AppleIntelligenceError.retryAfterDate.getter()
{
  OUTLINED_FUNCTION_26_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_29(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v35 - v10;
  v12 = type metadata accessor for Date();
  v13 = OUTLINED_FUNCTION_1(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_2();
  v20 = (v19 - v18);
  v21 = (*(v1 + 48))(v3, v1);
  v22 = *(v21 + 16);
  if (v22)
  {
    v35 = v21;
    v36 = v5;
    v23 = v21 + 32;
    v37 = v15;
    v24 = (v15 + 32);
    v25 = MEMORY[0x1E69E7CC0];
    do
    {
      outlined init with copy of any Source<Self.Stream == A>(v23, v38);
      v26 = v39;
      v27 = v40;
      __swift_project_boxed_opaque_existential_1(v38, v39);
      (*(v27 + 64))(v26, v27);
      __swift_destroy_boxed_opaque_existential_1(v38);
      if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
      {
        outlined destroy of AppleIntelligenceError?(v11, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      }

      else
      {
        v28 = *v24;
        (*v24)(v20, v11, v12);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v25 + 16) + 1, 1, v25);
        }

        v30 = *(v25 + 16);
        v29 = *(v25 + 24);
        if (v30 >= v29 >> 1)
        {
          v34 = OUTLINED_FUNCTION_25_1(v29);
          v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v34, v30 + 1, 1, v25);
        }

        *(v25 + 16) = v30 + 1;
        v31 = *(v37 + 80);
        OUTLINED_FUNCTION_39_0();
        v28(v25 + v32 + *(v33 + 72) * v30, v20, v12);
      }

      v23 += 40;
      --v22;
    }

    while (v22);

    v5 = v36;
  }

  else
  {

    v25 = MEMORY[0x1E69E7CC0];
  }

  specialized Sequence<>.max()(v25, v5);

  OUTLINED_FUNCTION_27_1();
}

uint64_t AppleIntelligenceError.additionalUserInfo.getter()
{
  return AppleIntelligenceError.additionalUserInfo.getter();
}

{
  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t AppleIntelligenceError.domain.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_31_1();
  swift_getDynamicType();
  v3 = *(a2 + 8);
  OUTLINED_FUNCTION_44_1();
  return dispatch thunk of static CustomNSError.errorDomain.getter();
}

BOOL specialized AppleIntelligenceError.requestFeedback.getter()
{
  v0 = AppleIntelligenceReportingError.underlyingErrors.getter();
  v1 = *(v0 + 16);
  if (v1)
  {
    v14 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v2 = v14;
    v3 = v0 + 32;
    do
    {
      outlined init with copy of any Source<Self.Stream == A>(v3, v11);
      v4 = v12;
      v5 = v13;
      __swift_project_boxed_opaque_existential_1(v11, v12);
      v6 = (*(v5 + 88))(v4, v5);
      __swift_destroy_boxed_opaque_existential_1(v11);
      v14 = v2;
      v8 = *(v2 + 16);
      v7 = *(v2 + 24);
      if (v8 >= v7 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1);
        v2 = v14;
      }

      *(v2 + 16) = v8 + 1;
      *(v2 + v8 + 32) = v6 & 1;
      v3 += 40;
      --v1;
    }

    while (v1);
  }

  else
  {

    v2 = MEMORY[0x1E69E7CC0];
  }

  v9 = specialized Sequence<>.contains(_:)(1, v2);

  return v9;
}

BOOL AppleIntelligenceError.requestFeedback.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 48))();
  if (*(v2 + 16))
  {
    v20 = MEMORY[0x1E69E7CC0];
    v3 = OUTLINED_FUNCTION_17_1();
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v3, v4, v5);
    v6 = v20;
    do
    {
      outlined init with copy of any Source<Self.Stream == A>(v2 + 32, v19);
      OUTLINED_FUNCTION_54_1(v19);
      v8 = *(v7 + 88);
      v9 = OUTLINED_FUNCTION_24_1();
      v10(v9);
      __swift_destroy_boxed_opaque_existential_1(v19);
      OUTLINED_FUNCTION_49_1();
      if (v12)
      {
        OUTLINED_FUNCTION_25_1(v11);
        OUTLINED_FUNCTION_48_1();
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v14, v15, v16);
        v6 = v20;
      }

      OUTLINED_FUNCTION_34_1();
    }

    while (!v13);
  }

  else
  {

    v6 = MEMORY[0x1E69E7CC0];
  }

  v17 = specialized Sequence<>.contains(_:)(1, v6);

  return v17;
}

void _s26AppleIntelligenceReporting0aB5ErrorPAAE15defaultUserInfo11description16underlyingErrors8category14retryAfterDate010additionalfG015requestFeedbackSDyS2SGSS_SayAaB_pGAA0abD8CategoryO10Foundation0N0VSgAKSbtFZAA07GeneralabD0C_Tt5B5()
{
  OUTLINED_FUNCTION_26_1();
  v1 = v0;
  v3 = v2;
  v85 = v4;
  v84 = v5;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = type metadata accessor for Date.ISO8601FormatStyle();
  v13 = OUTLINED_FUNCTION_1(v12);
  v81 = v14;
  v82 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_2();
  v80 = v18 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_29(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v22);
  v83 = v78 - v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SStGMd, ",6");
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C0CDD150;
  v25 = *MEMORY[0x1E696A578];
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v26;
  *(inited + 48) = v11;
  *(inited + 56) = v9;
  v27 = *MEMORY[0x1E696A278];
  *(inited + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = v28;
  *(inited + 80) = v11;
  *(inited + 88) = v9;
  v29 = *MEMORY[0x1E696AA08];
  *(inited + 96) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 104) = v30;
  specialized Collection.first.getter(v7, v87);
  v31 = v88;
  if (v88)
  {
    v32 = v89;
    v33 = __swift_project_boxed_opaque_existential_1(v87, v88);
    v34 = *(v32 + 24);
    OUTLINED_FUNCTION_55_1();
    v35 = v33;
    dispatch thunk of CustomStringConvertible.description.getter();
    OUTLINED_FUNCTION_43_1();
    __swift_destroy_boxed_opaque_existential_1(v87);
  }

  else
  {
    OUTLINED_FUNCTION_55_1();
    outlined destroy of AppleIntelligenceError?(v87, &_s26AppleIntelligenceReporting0aB5Error_pSgMd, &_s26AppleIntelligenceReporting0aB5Error_pSgMR);
    v35 = 0;
    v31 = 0xE000000000000000;
  }

  *(inited + 112) = v35;
  *(inited + 120) = v31;
  v36 = *MEMORY[0x1E696A750];
  *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 136) = v37;
  v38 = *(v7 + 16);
  v39 = MEMORY[0x1E69E7CC0];
  if (v38)
  {
    v78[1] = v1;
    v79 = v3;
    v86 = MEMORY[0x1E69E7CC0];
    v35 = &v86;
    v40 = OUTLINED_FUNCTION_17_1();
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v40, v41, v42);
    v39 = v86;
    v43 = v7 + 32;
    do
    {
      outlined init with copy of any Source<Self.Stream == A>(v43, v87);
      OUTLINED_FUNCTION_54_1(v87);
      v45 = *(v44 + 40);
      v46 = OUTLINED_FUNCTION_24_1();
      v48 = v47(v46);
      v50 = v49;
      __swift_destroy_boxed_opaque_existential_1(v87);
      v86 = v39;
      v52 = *(v39 + 16);
      v51 = *(v39 + 24);
      if (v52 >= v51 >> 1)
      {
        OUTLINED_FUNCTION_25_1(v51);
        v35 = &v86;
        OUTLINED_FUNCTION_48_1();
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v54, v55, v56);
        v39 = v86;
      }

      *(v39 + 16) = v52 + 1;
      v53 = v39 + 16 * v52;
      *(v53 + 32) = v48;
      *(v53 + 40) = v50;
      v43 += 40;
      --v38;
    }

    while (v38);
  }

  v87[0] = v39;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_43_1();

  *(inited + 144) = v35;
  *(inited + 152) = v57;
  OUTLINED_FUNCTION_30_1();
  *(inited + 160) = 0xD00000000000001ELL;
  *(inited + 168) = v58;
  LOBYTE(v86) = v84;
  *(inited + 176) = AppleIntelligenceErrorCategory.rawValue.getter();
  *(inited + 184) = v59;
  OUTLINED_FUNCTION_30_1();
  *(inited + 192) = 0xD00000000000001FLL;
  *(inited + 200) = v60;
  v61 = type metadata accessor for Date();
  OUTLINED_FUNCTION_51_0(v61);
  if (v70)
  {
    v62 = 0;
    v63 = 0xE000000000000000;
  }

  else
  {
    v64 = v83;
    outlined init with copy of Date?(&v86, v83, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v64, 1, v57);
    if (EnumTagSinglePayload == 1)
    {
      __break(1u);
      return;
    }

    v66 = v80;
    default argument 0 of Date.ISO8601Format(_:)(v80);
    v62 = Date.ISO8601Format(_:)();
    v63 = v67;
    (*(v81 + 8))(v66, v82);
    OUTLINED_FUNCTION_42(v57);
    (*(v68 + 8))(v64, v57);
  }

  *(inited + 208) = v62;
  *(inited + 216) = v63;
  OUTLINED_FUNCTION_30_1();
  OUTLINED_FUNCTION_41_1(v69);
  v72 = v71 | 0x65750000u;
  if (v70)
  {
    v73 = 0x65736C6166;
  }

  else
  {
    v73 = v72;
  }

  if (v70)
  {
    v74 = 0xE500000000000000;
  }

  else
  {
    v74 = 0xE400000000000000;
  }

  MEMORY[0x1C68E25F0](v73, v74);

  v75 = v87[1];
  *(inited + 240) = v87[0];
  *(inited + 248) = v75;
  v76 = Dictionary.init(dictionaryLiteral:)();

  specialized Dictionary.merging(_:uniquingKeysWith:)(v77, v76);
  OUTLINED_FUNCTION_27_1();
}

void static AppleIntelligenceError.defaultUserInfo(description:underlyingErrors:category:retryAfterDate:additionalUserInfo:requestFeedback:)()
{
  OUTLINED_FUNCTION_26_1();
  v1 = v0;
  v3 = v2;
  v88 = v4;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = type metadata accessor for Date.ISO8601FormatStyle();
  v14 = OUTLINED_FUNCTION_1(v13);
  v85 = v15;
  v86 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2();
  v84 = v19 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_29(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v23);
  v87 = &v80 - v24;
  v25 = *v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SStGMd, ",6");
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C0CDD150;
  v27 = *MEMORY[0x1E696A578];
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v28;
  *(inited + 48) = v12;
  *(inited + 56) = v10;
  v29 = *MEMORY[0x1E696A278];
  *(inited + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = v30;
  *(inited + 80) = v12;
  *(inited + 88) = v10;
  v31 = *MEMORY[0x1E696AA08];
  *(inited + 96) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 104) = v32;
  specialized Collection.first.getter(v8, v90);
  v33 = v91;
  if (v91)
  {
    v34 = v92;
    v35 = __swift_project_boxed_opaque_existential_1(v90, v91);
    v36 = *(v34 + 24);
    OUTLINED_FUNCTION_55_1();
    v37 = v35;
    dispatch thunk of CustomStringConvertible.description.getter();
    OUTLINED_FUNCTION_43_1();
    __swift_destroy_boxed_opaque_existential_1(v90);
  }

  else
  {
    OUTLINED_FUNCTION_55_1();
    outlined destroy of AppleIntelligenceError?(v90, &_s26AppleIntelligenceReporting0aB5Error_pSgMd, &_s26AppleIntelligenceReporting0aB5Error_pSgMR);
    v37 = 0;
    v33 = 0xE000000000000000;
  }

  *(inited + 112) = v37;
  *(inited + 120) = v33;
  v38 = *MEMORY[0x1E696A750];
  *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 136) = v39;
  v40 = *(v8 + 16);
  v41 = MEMORY[0x1E69E7CC0];
  if (v40)
  {
    v81 = v25;
    v82 = v1;
    v83 = v3;
    v89 = MEMORY[0x1E69E7CC0];
    v37 = &v89;
    v42 = OUTLINED_FUNCTION_17_1();
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v42, v43, v44);
    v41 = v89;
    v45 = v8 + 32;
    do
    {
      outlined init with copy of any Source<Self.Stream == A>(v45, v90);
      OUTLINED_FUNCTION_54_1(v90);
      v47 = *(v46 + 40);
      v48 = OUTLINED_FUNCTION_24_1();
      v50 = v49(v48);
      v52 = v51;
      __swift_destroy_boxed_opaque_existential_1(v90);
      v89 = v41;
      v54 = *(v41 + 16);
      v53 = *(v41 + 24);
      if (v54 >= v53 >> 1)
      {
        OUTLINED_FUNCTION_25_1(v53);
        v37 = &v89;
        OUTLINED_FUNCTION_48_1();
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v56, v57, v58);
        v41 = v89;
      }

      *(v41 + 16) = v54 + 1;
      v55 = v41 + 16 * v54;
      *(v55 + 32) = v50;
      *(v55 + 40) = v52;
      v45 += 40;
      --v40;
    }

    while (v40);
    LOBYTE(v25) = v81;
  }

  v90[0] = v41;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  OUTLINED_FUNCTION_46_0();
  OUTLINED_FUNCTION_43_1();

  *(inited + 144) = v37;
  *(inited + 152) = v59;
  OUTLINED_FUNCTION_30_1();
  *(inited + 160) = 0xD00000000000001ELL;
  *(inited + 168) = v60;
  LOBYTE(v89) = v25;
  *(inited + 176) = AppleIntelligenceErrorCategory.rawValue.getter();
  *(inited + 184) = v61;
  OUTLINED_FUNCTION_30_1();
  *(inited + 192) = 0xD00000000000001FLL;
  *(inited + 200) = v62;
  v63 = type metadata accessor for Date();
  OUTLINED_FUNCTION_51_0(v63);
  if (v72)
  {
    v64 = 0;
    v65 = 0xE000000000000000;
  }

  else
  {
    v66 = v87;
    outlined init with copy of Date?(&v89, v87, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v66, 1, v59);
    if (EnumTagSinglePayload == 1)
    {
      __break(1u);
      return;
    }

    v68 = v84;
    default argument 0 of Date.ISO8601Format(_:)(v84);
    v64 = Date.ISO8601Format(_:)();
    v65 = v69;
    (*(v85 + 8))(v68, v86);
    OUTLINED_FUNCTION_42(v59);
    (*(v70 + 8))(v66, v59);
  }

  *(inited + 208) = v64;
  *(inited + 216) = v65;
  OUTLINED_FUNCTION_30_1();
  OUTLINED_FUNCTION_41_1(v71);
  v74 = v73 | 0x65750000u;
  if (v72)
  {
    v75 = 0x65736C6166;
  }

  else
  {
    v75 = v74;
  }

  if (v72)
  {
    v76 = 0xE500000000000000;
  }

  else
  {
    v76 = 0xE400000000000000;
  }

  MEMORY[0x1C68E25F0](v75, v76);

  v77 = v90[1];
  *(inited + 240) = v90[0];
  *(inited + 248) = v77;
  v78 = Dictionary.init(dictionaryLiteral:)();

  specialized Dictionary.merging(_:uniquingKeysWith:)(v79, v78);
  OUTLINED_FUNCTION_27_1();
}

double specialized Collection.first.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16))
  {
    outlined init with copy of any Source<Self.Stream == A>(a1 + 32, a2);
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t default argument 0 of Date.ISO8601Format(_:)@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8TimeZoneVSgMd, &_s10Foundation8TimeZoneVSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v28 - v3;
  v33 = type metadata accessor for TimeZone();
  v30 = *(v33 - 8);
  v5 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v29 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for Date.ISO8601FormatStyle.TimeZoneSeparator();
  v7 = *(v32 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Date.ISO8601FormatStyle.TimeSeparator();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Date.ISO8601FormatStyle.DateTimeSeparator();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for Date.ISO8601FormatStyle.DateSeparator();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21);
  (*(v24 + 104))(&v28 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6969360]);
  v25 = v16;
  v26 = v33;
  (*(v17 + 104))(v20, *MEMORY[0x1E6969358], v25);
  (*(v12 + 104))(v15, *MEMORY[0x1E6969370], v11);
  (*(v7 + 104))(v10, *MEMORY[0x1E6969380], v32);
  TimeZone.init(secondsFromGMT:)();
  result = __swift_getEnumTagSinglePayload(v4, 1, v26);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v30 + 32))(v29, v4, v26);
    return Date.ISO8601FormatStyle.init(dateSeparator:dateTimeSeparator:timeSeparator:timeZoneSeparator:includingFractionalSeconds:timeZone:)();
  }

  return result;
}

uint64_t specialized Dictionary.merging(_:uniquingKeysWith:)(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = a2;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(a1, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, isUniquelyReferenced_nonNull_native, &v8);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

void AppleIntelligenceError.userInfo.getter()
{
  OUTLINED_FUNCTION_26_1();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_29(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8_2();
  v7 = v2[3];
  dispatch thunk of CustomStringConvertible.description.getter();
  v8 = v2[6];
  v9 = OUTLINED_FUNCTION_33_0();
  v10(v9);
  v11 = v2[7];
  v12 = OUTLINED_FUNCTION_33_0();
  v13(v12);
  v14 = v2[8];
  v15 = OUTLINED_FUNCTION_33_0();
  v16(v15);
  v17 = v2[9];
  v18 = OUTLINED_FUNCTION_33_0();
  v19(v18);
  v20 = v2[11];
  v21 = OUTLINED_FUNCTION_33_0();
  v22(v21);
  _s26AppleIntelligenceReporting0aB5ErrorPAAE15defaultUserInfo11description16underlyingErrors8category14retryAfterDate010additionalfG015requestFeedbackSDyS2SGSS_SayAaB_pGAA0abD8CategoryO10Foundation0N0VSgAKSbtFZAA07GeneralabD0C_Tt5B5();

  outlined destroy of AppleIntelligenceError?(v0, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_27_1();
}

uint64_t specialized AppleIntelligenceError.errorCode.getter()
{
  return *(v0 + 32);
}

{
  outlined init with copy of AppleIntelligenceReportingError(v0, v3);
  result = 4001;
  v2 = 4002;
  switch(v3[40])
  {
    case 1:
      v2 = 4003;
      goto LABEL_4;
    case 2:
      v2 = 4004;
      goto LABEL_4;
    case 3:
      return result;
    default:
LABEL_4:
      outlined destroy of AppleIntelligenceReportingError(v3);
      return v2;
  }
}

uint64_t AppleIntelligenceError.description.getter(uint64_t a1, uint64_t a2)
{
  v3 = (*(a2 + 40))();
  v5 = v4;
  v6 = *(a2 + 48);
  v7 = OUTLINED_FUNCTION_26();
  v8 = *(v6(v7) + 16);

  if (!v8)
  {
    goto LABEL_4;
  }

  v19 = 14906;
  v20 = 0xE200000000000000;
  v9 = OUTLINED_FUNCTION_26();
  v10 = v6(v9);
  specialized Collection.first.getter(v10, v16);

  if (v17)
  {
    v12 = v18;
    __swift_project_boxed_opaque_existential_1(v16, v17);
    v13 = *(v12 + 24);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1C68E25F0](v14);

    __swift_destroy_boxed_opaque_existential_1(v16);
LABEL_4:
    v16[0] = v3;
    v16[1] = v5;

    v15 = OUTLINED_FUNCTION_26();
    MEMORY[0x1C68E25F0](v15);

    return v16[0];
  }

  __break(1u);
  return result;
}

id AppleIntelligenceError.toDetailedNSError.getter(uint64_t a1, uint64_t a2)
{
  v5 = (*(a2 + 80))();
  v7 = v6;
  v8 = *(a2 + 8);
  v9 = dispatch thunk of CustomNSError.errorCode.getter();
  AppleIntelligenceError.userInfo.getter();
  v11 = v10;
  v12 = (*(a2 + 72))(a1, a2);
  v13 = specialized Dictionary.merging(_:uniquingKeysWith:)(v12, v11);
  specialized _dictionaryUpCast<A, B, C, D>(_:)(v13);
  OUTLINED_FUNCTION_42_1();

  v14 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  return @nonobjc NSError.init(domain:code:userInfo:)(v5, v7, v9, v2);
}

unint64_t specialized _dictionaryUpCast<A, B, C, D>(_:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  while (v5)
  {
    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = (v9 << 10) | (16 * v10);
    v12 = (*(a1 + 48) + v11);
    v14 = *v12;
    v13 = v12[1];
    v15 = (*(a1 + 56) + v11);
    v25 = *v15;
    v26 = v15[1];

    swift_dynamicCast();
    outlined init with take of Any(&v27, v29);
    outlined init with take of Any(v29, v30);
    outlined init with take of Any(v30, &v28);
    result = specialized __RawDictionaryStorage.find<A>(_:)();
    v16 = result;
    if (v17)
    {
      v18 = (v2[6] + 16 * result);
      v19 = v18[1];
      *v18 = v14;
      v18[1] = v13;

      v20 = (v2[7] + 32 * v16);
      __swift_destroy_boxed_opaque_existential_1(v20);
      result = outlined init with take of Any(&v28, v20);
      v8 = v9;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_19;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v21 = (v2[6] + 16 * result);
      *v21 = v14;
      v21[1] = v13;
      result = outlined init with take of Any(&v28, (v2[7] + 32 * result));
      v22 = v2[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        goto LABEL_20;
      }

      v2[2] = v24;
      v8 = v9;
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t specialized Sequence<>.max()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v21 - v10;
  v22 = *(a1 + 16);
  if (v22)
  {
    v21 = a2;
    v13 = *(v5 + 16);
    v14 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v13(&v21 - v10, v14, v4, v11);
    v15 = (v5 + 32);
    for (i = 1; v22 != i; ++i)
    {
      (v13)(v8, v14 + *(v5 + 72) * i, v4);
      lazy protocol witness table accessor for type GeneralAppleIntelligenceError and conformance GeneralAppleIntelligenceError(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x1E6969530]);
      v17 = dispatch thunk of static Comparable.< infix(_:_:)();
      v18 = *(v5 + 8);
      if (v17)
      {
        v18(v12, v4);
        (*v15)(v12, v8, v4);
      }

      else
      {
        v18(v8, v4);
      }
    }

    v19 = v21;
    (*v15)(v21, v12, v4);
    return __swift_storeEnumTagSinglePayload(v19, 0, 1, v4);
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v4);
  }
}

BOOL _s26AppleIntelligenceReporting0aB5ErrorPAAE2eeoiySbx_xtFZAA07GeneralabD0C_Tt1g5(void *a1, void *a2)
{
  if (a1[2] == a2[2] && a1[3] == a2[3])
  {
    return a1[4] == a2[4];
  }

  v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  result = 0;
  if (v5)
  {
    return a1[4] == a2[4];
  }

  return result;
}

void static AppleIntelligenceError.== infix(_:_:)()
{
  OUTLINED_FUNCTION_26_1();
  v1 = v0;
  v3 = v2;
  v4 = *(v0 + 80);
  v5 = v4(v2, v0);
  v7 = v6;
  if (v5 == v4(v3, v1) && v7 == v8)
  {
  }

  else
  {
    v10 = OUTLINED_FUNCTION_45_0();

    if ((v10 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  v11 = *(v1 + 8);
  dispatch thunk of CustomNSError.errorCode.getter();
  dispatch thunk of CustomNSError.errorCode.getter();
LABEL_9:
  OUTLINED_FUNCTION_27_1();
}

uint64_t AppleIntelligenceError.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 80))(a2, a3);
  String.hash(into:)();

  v4 = *(a3 + 8);
  v5 = dispatch thunk of CustomNSError.errorCode.getter();
  return MEMORY[0x1C68E2B10](v5);
}

uint64_t specialized Sequence.forEach(_:)(uint64_t a1, size_t *a2)
{
  v48 = a2;
  v47 = type metadata accessor for AppleIntelligenceReportingGeneralError.UserInfoParameter();
  v3 = OUTLINED_FUNCTION_1(v47);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_10_2();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v12 = v40 - v11;
  v13 = a1 + 64;
  v14 = 1 << *(a1 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(a1 + 64);
  v17 = (v14 + 63) >> 6;
  v40[2] = v10 + 8;
  v41 = (v10 + 16);
  v44 = v10;
  v45 = a1;
  v40[1] = v10 + 32;

  v19 = 0;
  v42 = a1 + 64;
  v43 = v8;
  if (v16)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v20 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v20 >= v17)
    {
    }

    v16 = *(v13 + 8 * v20);
    ++v19;
    if (v16)
    {
      v19 = v20;
      do
      {
LABEL_8:
        v21 = (v19 << 10) | (16 * __clz(__rbit64(v16)));
        v22 = (*(v45 + 48) + v21);
        v23 = *v22;
        v24 = v22[1];
        v25 = (*(v45 + 56) + v21);
        v26 = *v25;
        v27 = v25[1];

        AppleIntelligenceReportingAsset.init()();

        AppleIntelligenceReportingAsset.assetIdentifier.setter();

        AppleIntelligenceReportingAsset.version.setter();
        (*v41)(v8, v12, v47);
        v28 = v48;
        v29 = *v48;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v28 = v29;
        v46 = v24;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v29 + 16) + 1, 1, v29);
          *v48 = v29;
        }

        v32 = *(v29 + 16);
        v31 = *(v29 + 24);
        if (v32 >= v31 >> 1)
        {
          v38 = OUTLINED_FUNCTION_25_1(v31);
          v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v38, v32 + 1, 1, v29);
          *v48 = v39;
        }

        v16 &= v16 - 1;
        v33 = v44;
        v34 = v47;
        (*(v44 + 8))(v12, v47);
        v35 = *v48;
        *(v35 + 16) = v32 + 1;
        v36 = v35 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v32;
        v37 = *(v33 + 32);
        v8 = v43;
        v37(v36, v43, v34);

        v13 = v42;
      }

      while (v16);
    }
  }

  __break(1u);
  return result;
}

uint64_t AppleIntelligenceError.deepestUnderlyingError.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 48);
  v7 = v6();
  specialized Collection.first.getter(v7, v12);

  v8 = v13;
  if (v13)
  {
    v9 = v14;
    __swift_project_boxed_opaque_existential_1(v12, v13);
    AppleIntelligenceError.deepestUnderlyingError.getter(&v15, v8, v9);
    __swift_destroy_boxed_opaque_existential_1(v12);
    if (*(&v16 + 1))
    {
      return outlined init with take of any Source<Self.Stream == A>(&v15, a3);
    }
  }

  else
  {
    outlined destroy of AppleIntelligenceError?(v12, &_s26AppleIntelligenceReporting0aB5Error_pSgMd, &_s26AppleIntelligenceReporting0aB5Error_pSgMR);
    v15 = 0u;
    v16 = 0u;
    v17 = 0;
  }

  v11 = (v6)(a1, a2);
  specialized Collection.first.getter(v11, a3);

  if (*(&v16 + 1))
  {
    return outlined destroy of AppleIntelligenceError?(&v15, &_s26AppleIntelligenceReporting0aB5Error_pSgMd, &_s26AppleIntelligenceReporting0aB5Error_pSgMR);
  }

  return result;
}

BOOL specialized Sequence<>.contains(_:)(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != (a1 & 1));
  return v4 != 0;
}

void specialized _arrayForceCast<A, B>(_:)()
{
  OUTLINED_FUNCTION_26_1();
  v1 = v0;
  if (v0 >> 62)
  {
    if (v0 >= 0)
    {
      v0 &= 0xFFFFFFFFFFFFFF8uLL;
    }

    v2 = MEMORY[0x1C68E2860](v0);
  }

  else
  {
    v2 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v2)
  {
    goto LABEL_14;
  }

  v22 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = 0;
    v4 = v22;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1C68E2790](v3, v1);
      }

      else
      {
        v5 = *(v1 + 8 * v3 + 32);
      }

      v6 = type metadata accessor for GeneralAppleIntelligenceError();
      v20 = v6;
      OUTLINED_FUNCTION_0_3();
      v8 = lazy protocol witness table accessor for type GeneralAppleIntelligenceError and conformance GeneralAppleIntelligenceError(&lazy protocol witness table cache variable for type GeneralAppleIntelligenceError and conformance GeneralAppleIntelligenceError, v7);
      v21 = v8;
      v22 = v4;
      v19[0] = v5;
      v10 = *(v4 + 16);
      v9 = *(v4 + 24);
      if (v10 >= v9 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1);
        v6 = v20;
        v11 = v21;
      }

      else
      {
        v11 = v8;
      }

      ++v3;
      __swift_mutable_project_boxed_opaque_existential_1(v19, v6);
      OUTLINED_FUNCTION_2_5();
      v13 = *(v12 + 64);
      MEMORY[0x1EEE9AC00](v14);
      OUTLINED_FUNCTION_2();
      v17 = v16 - v15;
      (*(v18 + 16))(v16 - v15);
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(v10, v17, &v22, v6, v11);
      __swift_destroy_boxed_opaque_existential_1(v19);
      v4 = v22;
    }

    while (v2 != v3);
LABEL_14:
    OUTLINED_FUNCTION_27_1();
    return;
  }

  __break(1u);
}

uint64_t GeneralAppleIntelligenceError.descriptiveComponents.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, ".6");
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1C0CDD160;
  v2 = v0[3];
  *(v1 + 32) = v0[2];
  *(v1 + 40) = v2;
  v9 = v0[4];

  *(v1 + 48) = dispatch thunk of CustomStringConvertible.description.getter();
  *(v1 + 56) = v3;
  v4 = *(v0 + OBJC_IVAR____TtC26AppleIntelligenceReporting29GeneralAppleIntelligenceError_internalUnderlyingErrors);
  result = specialized Array.count.getter(v4);
  if (!result)
  {
    v8 = MEMORY[0x1E69E7CC0];
    goto LABEL_7;
  }

  if ((v4 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x1C68E2790](0, v4);
    goto LABEL_5;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(v4 + 32);

LABEL_5:
    v8 = GeneralAppleIntelligenceError.descriptiveComponents.getter(v7);

LABEL_7:
    specialized Array.append<A>(contentsOf:)(v8);
    return v1;
  }

  __break(1u);
  return result;
}

uint64_t GeneralAppleIntelligenceError.telemetryHash.getter()
{
  GeneralAppleIntelligenceError.descriptiveComponents.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  BidirectionalCollection<>.joined(separator:)();
  OUTLINED_FUNCTION_43_1();

  v0._countAndFlagsBits = OUTLINED_FUNCTION_31_1();
  v1 = crc32Checksum(_:)(v0);

  return v1;
}

void GeneralAppleIntelligenceError.__allocating_init(error:)()
{
  OUTLINED_FUNCTION_26_1();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScESgMd, "06");
  OUTLINED_FUNCTION_29(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8_2();
  v7 = type metadata accessor for CancellationError();
  v8 = OUTLINED_FUNCTION_1(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_10_2();
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = v36 - v15 + 48;
  v38 = v2;
  MEMORY[0x1C68E2E60](v2, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26AppleIntelligenceReporting0aB5Error_pMd, &_s26AppleIntelligenceReporting0aB5Error_pMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v37 = 0;
    memset(v36, 0, sizeof(v36));
    outlined destroy of AppleIntelligenceError?(v36, &_s26AppleIntelligenceReporting0aB5Error_pSgMd, &_s26AppleIntelligenceReporting0aB5Error_pSgMR);
    swift_getErrorValue();
    swift_getDynamicType();
    type metadata accessor for NSError();
    if (swift_dynamicCastMetatype())
    {
      _convertErrorToNSError(_:)();
      OUTLINED_FUNCTION_3_3();
      swift_allocObject();
      OUTLINED_FUNCTION_44_1();
      GeneralAppleIntelligenceError.init(nsError:)();
    }

    else
    {
      v39[0] = v2;
      MEMORY[0x1C68E2E60](v2);
      if (swift_dynamicCast())
      {
        __swift_storeEnumTagSinglePayload(v0, 0, 1, v7);
        v17 = *(v10 + 32);
        v18 = OUTLINED_FUNCTION_26();
        v19(v18);
        v20 = *(v10 + 16);
        v21 = OUTLINED_FUNCTION_33_0();
        v22(v21);
        OUTLINED_FUNCTION_3_3();
        swift_allocObject();
        GeneralAppleIntelligenceError.init(cancellationError:)();

        (*(v10 + 8))(v16, v7);
        goto LABEL_9;
      }

      OUTLINED_FUNCTION_47_1();
      __swift_storeEnumTagSinglePayload(v23, v24, v25, v7);
      outlined destroy of AppleIntelligenceError?(v0, &_sScESgMd, "06");
      swift_getErrorValue();
      OUTLINED_FUNCTION_2_5();
      v27 = *(v26 + 64);
      MEMORY[0x1EEE9AC00](v28);
      OUTLINED_FUNCTION_2();
      (*(v31 + 16))(v30 - v29);
      OUTLINED_FUNCTION_15();
      String.init<A>(reflecting:)();
      v33 = v32;
      OUTLINED_FUNCTION_3_3();
      swift_allocObject();
      v34 = OUTLINED_FUNCTION_44_1();
      GeneralAppleIntelligenceError.init(description:)(v34, v33);
    }

    goto LABEL_9;
  }

  outlined init with take of any Source<Self.Stream == A>(v36, v39);
  outlined init with copy of any Source<Self.Stream == A>(v39, v36);
  OUTLINED_FUNCTION_3_3();
  swift_allocObject();
  GeneralAppleIntelligenceError.init(appleIntelligenceError:)();

  __swift_destroy_boxed_opaque_existential_1(v39);
LABEL_9:
  OUTLINED_FUNCTION_27_1();
}

uint64_t GeneralAppleIntelligenceError.domain.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_50();
}

uint64_t GeneralAppleIntelligenceError.descriptionWithoutUnderlying.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return OUTLINED_FUNCTION_50();
}

uint64_t GeneralAppleIntelligenceError.description.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return OUTLINED_FUNCTION_50();
}

uint64_t GeneralAppleIntelligenceError.requestFeedback.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26AppleIntelligenceReporting29GeneralAppleIntelligenceError_internalRequestFeedback);
  if (v1 == 2)
  {
    v2 = *(v0 + OBJC_IVAR____TtC26AppleIntelligenceReporting29GeneralAppleIntelligenceError_internalUnderlyingErrors);
    specialized _arrayForceCast<A, B>(_:)();
    v4 = v3;
    if (*(v3 + 16))
    {
      v21 = MEMORY[0x1E69E7CC0];
      v5 = OUTLINED_FUNCTION_17_1();
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v5, v6, v7);
      v8 = v21;
      do
      {
        outlined init with copy of any Source<Self.Stream == A>(v4 + 32, v20);
        OUTLINED_FUNCTION_54_1(v20);
        v10 = *(v9 + 88);
        v11 = OUTLINED_FUNCTION_24_1();
        v12(v11);
        __swift_destroy_boxed_opaque_existential_1(v20);
        OUTLINED_FUNCTION_49_1();
        if (v14)
        {
          OUTLINED_FUNCTION_25_1(v13);
          OUTLINED_FUNCTION_48_1();
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v16, v17, v18);
          v8 = v21;
        }

        OUTLINED_FUNCTION_34_1();
      }

      while (!v15);
    }

    else
    {

      v8 = MEMORY[0x1E69E7CC0];
    }

    LOBYTE(v1) = specialized Sequence<>.contains(_:)(1, v8);
  }

  return v1 & 1;
}

uint64_t GeneralAppleIntelligenceError.init(domain:rawCode:descriptionWithoutUnderlying:description:additionalUserInfo:category:internalUnderlyingErrors:retryAfterDate:requestFeedback:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char *a9, uint64_t a10, uint64_t a11, char a12)
{
  v13 = *a9;
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  *(v12 + 32) = a3;
  *(v12 + 40) = a4;
  *(v12 + 48) = a5;
  *(v12 + 56) = a6;
  *(v12 + 64) = a7;
  *(v12 + 72) = a8;
  *(v12 + 80) = v13;
  *(v12 + OBJC_IVAR____TtC26AppleIntelligenceReporting29GeneralAppleIntelligenceError_internalUnderlyingErrors) = a10;
  outlined init with take of Date?(a11, v12 + OBJC_IVAR____TtC26AppleIntelligenceReporting29GeneralAppleIntelligenceError_retryAfterDate);
  *(v12 + OBJC_IVAR____TtC26AppleIntelligenceReporting29GeneralAppleIntelligenceError_internalRequestFeedback) = a12;
  return v12;
}

uint64_t GeneralAppleIntelligenceError.__allocating_init(appleIntelligenceError:)()
{
  OUTLINED_FUNCTION_3_3();
  swift_allocObject();
  OUTLINED_FUNCTION_42_1();
  GeneralAppleIntelligenceError.init(appleIntelligenceError:)();
  return v0;
}

void GeneralAppleIntelligenceError.init(appleIntelligenceError:)()
{
  OUTLINED_FUNCTION_26_1();
  v2 = v0;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_29(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8_2();
  OUTLINED_FUNCTION_16_1();
  v10 = *(v9 + 80);
  v11 = OUTLINED_FUNCTION_8_3();
  *(v0 + 16) = v12(v11);
  *(v0 + 24) = v13;
  v15 = v4[3];
  v14 = v4[4];
  OUTLINED_FUNCTION_38_1();
  v16 = *(v14 + 8);
  *(v2 + 32) = dispatch thunk of CustomNSError.errorCode.getter();
  OUTLINED_FUNCTION_16_1();
  v18 = *(v17 + 40);
  v19 = OUTLINED_FUNCTION_8_3();
  *(v2 + 40) = v20(v19);
  *(v2 + 48) = v21;
  v23 = v4[3];
  v22 = v4[4];
  OUTLINED_FUNCTION_38_1();
  v24 = *(v22 + 24);
  *(v2 + 56) = dispatch thunk of CustomStringConvertible.description.getter();
  *(v2 + 64) = v25;
  OUTLINED_FUNCTION_16_1();
  v27 = *(v26 + 72);
  v28 = OUTLINED_FUNCTION_8_3();
  *(v2 + 72) = v29(v28);
  v30 = v4[3];
  v31 = v4[4];
  OUTLINED_FUNCTION_38_1();
  v32 = *(v31 + 56);
  v33 = OUTLINED_FUNCTION_8_3();
  v34(v33);
  *(v2 + 80) = v51[0];
  OUTLINED_FUNCTION_16_1();
  v36 = *(v35 + 48);
  v37 = OUTLINED_FUNCTION_8_3();
  v39 = v38(v37);
  v40 = *(v39 + 16);
  if (v40)
  {
    v52 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    v41 = v39 + 32;
    do
    {
      outlined init with copy of any Source<Self.Stream == A>(v41, v51);
      OUTLINED_FUNCTION_29_1(v51);
      __swift_destroy_boxed_opaque_existential_1(v51);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v42 = *(v52 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v41 += 40;
      --v40;
    }

    while (v40);

    v43 = v52;
  }

  else
  {

    v43 = MEMORY[0x1E69E7CC0];
  }

  *(v2 + OBJC_IVAR____TtC26AppleIntelligenceReporting29GeneralAppleIntelligenceError_internalUnderlyingErrors) = v43;
  v44 = v4[3];
  v45 = v4[4];
  OUTLINED_FUNCTION_38_1();
  v46 = *(v45 + 64);
  v47 = OUTLINED_FUNCTION_8_3();
  v48(v47);
  outlined init with take of Date?(v1, v2 + OBJC_IVAR____TtC26AppleIntelligenceReporting29GeneralAppleIntelligenceError_retryAfterDate);
  v49 = v4[3];
  v50 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v49);
  *(v2 + OBJC_IVAR____TtC26AppleIntelligenceReporting29GeneralAppleIntelligenceError_internalRequestFeedback) = (*(v50 + 88))(v49, v50) & 1;
  __swift_destroy_boxed_opaque_existential_1(v4);
  OUTLINED_FUNCTION_27_1();
}

uint64_t GeneralAppleIntelligenceError.__allocating_init(nsError:)()
{
  OUTLINED_FUNCTION_3_3();
  swift_allocObject();
  OUTLINED_FUNCTION_42_1();
  GeneralAppleIntelligenceError.init(nsError:)();
  return v0;
}

void GeneralAppleIntelligenceError.init(nsError:)()
{
  OUTLINED_FUNCTION_26_1();
  v1 = v0;
  v3 = v2;
  v88 = *v1;
  v4 = [v2 domain];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v1[2] = v5;
  v1[3] = v7;
  v1[4] = [v3 code];
  v8 = v3;
  v9 = [v8 description];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v1[5] = v10;
  v1[6] = v12;
  v13 = [v8 description];

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  v1[7] = v14;
  v1[8] = v16;
  v89 = v1;
  v87 = v8;
  v17 = [v8 userInfo];
  v18 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
  OUTLINED_FUNCTION_42_1();
  v19 = static _DictionaryStorage.copy(original:)();
  v20 = v19;
  v21 = 0;
  v22 = 1 << *(v18 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v18 + 64;
  v25 = v23 & *(v18 + 64);
  v26 = (v22 + 63) >> 6;
  v90 = v19 + 64;
  v91 = v18;
  if (!v25)
  {
LABEL_5:
    v28 = v21;
    while (1)
    {
      v21 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_46;
      }

      if (v21 >= v26)
      {
        break;
      }

      v29 = *(v24 + 8 * v21);
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v25 = (v29 - 1) & v29;
        goto LABEL_10;
      }
    }

    v48 = specialized Dictionary.compactMapValues<A>(_:)(v20);

    v49 = v89;
    v89[9] = v48;
    v50 = v49[2];
    v51 = v49[3];
    v52 = *MEMORY[0x1E696A978];
    v54 = v50 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v51 == v53;
    v55 = v87;
    if (v54)
    {
    }

    else
    {
      v56 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v56 & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    if (v49[4] == -999)
    {
      goto LABEL_37;
    }

LABEL_21:
    v57 = v49[2];
    v58 = v49[3];
    if (v57 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v58 == v59)
    {
    }

    else
    {
      v61 = OUTLINED_FUNCTION_45_0();

      if ((v61 & 1) == 0)
      {
LABEL_29:
        v62 = v49[2];
        v63 = v49[3];
        v64 = *MEMORY[0x1E696A250];
        if (v62 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v63 == v65)
        {
        }

        else
        {
          v67 = OUTLINED_FUNCTION_45_0();

          if ((v67 & 1) == 0)
          {
            goto LABEL_38;
          }
        }

        if (v49[4] != 3072)
        {
LABEL_38:
          v68 = 21;
          goto LABEL_39;
        }

LABEL_37:
        v68 = 1;
LABEL_39:
        *(v49 + 80) = v68;
        v69 = [v55 underlyingErrors];
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
        v70 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v71 = *(v70 + 16);
        if (v71)
        {
          v93[0] = MEMORY[0x1E69E7CC0];
          specialized ContiguousArray.reserveCapacity(_:)();
          v72 = 32;
          do
          {
            v73 = *(v70 + v72);
            MEMORY[0x1C68E2E60](v73);
            GeneralAppleIntelligenceError.__allocating_init(error:)(v73);
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            v74 = *(v93[0] + 16);
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
            v72 += 8;
            --v71;
          }

          while (v71);

          v75 = v93[0];
        }

        else
        {

          v75 = MEMORY[0x1E69E7CC0];
        }

        *(v49 + OBJC_IVAR____TtC26AppleIntelligenceReporting29GeneralAppleIntelligenceError_internalUnderlyingErrors) = v75;
        type metadata accessor for Date();
        OUTLINED_FUNCTION_47_1();
        __swift_storeEnumTagSinglePayload(v76, v77, v78, v79);
        *(v49 + OBJC_IVAR____TtC26AppleIntelligenceReporting29GeneralAppleIntelligenceError_internalRequestFeedback) = 2;
        OUTLINED_FUNCTION_27_1();
        return;
      }
    }

    if (v49[4] == -1012)
    {
      goto LABEL_37;
    }

    goto LABEL_29;
  }

  while (1)
  {
    v27 = __clz(__rbit64(v25));
    v25 &= v25 - 1;
LABEL_10:
    v30 = v27 | (v21 << 6);
    v31 = *(v91 + 56);
    v32 = (*(v91 + 48) + 16 * v30);
    v33 = v32[1];
    v92 = *v32;
    outlined init with copy of Any(v31 + 32 * v30, v93);
    __swift_project_boxed_opaque_existential_1(v93, v93[3]);
    v14 = &v86;
    OUTLINED_FUNCTION_2_5();
    v35 = *(v34 + 64);
    MEMORY[0x1EEE9AC00](v36);
    OUTLINED_FUNCTION_2();
    (*(v39 + 16))(v38 - v37);

    v40 = String.init<A>(describing:)();
    v42 = v41;
    __swift_destroy_boxed_opaque_existential_1(v93);
    *(v90 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
    v43 = (v20[6] + 16 * v30);
    *v43 = v92;
    v43[1] = v33;
    v44 = (v20[7] + 16 * v30);
    *v44 = v40;
    v44[1] = v42;
    v45 = v20[2];
    v46 = __OFADD__(v45, 1);
    v47 = v45 + 1;
    if (v46)
    {
      break;
    }

    v20[2] = v47;
    if (!v25)
    {
      goto LABEL_5;
    }
  }

LABEL_46:
  __break(1u);

  v80 = v89;
  v81 = v89[3];

  v82 = v80[6];

  v83 = v80[8];

  v84 = *(*v80 + 48);
  v85 = *(*v80 + 52);
  swift_deallocPartialClassInstance();
  __break(1u);
}

uint64_t specialized Dictionary.compactMapValues<A>(_:)(uint64_t a1)
{
  v1 = MEMORY[0x1E69E7CC8];
  v31 = MEMORY[0x1E69E7CC8];
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  do
  {
LABEL_5:
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_25;
    }

    if (v9 >= v6)
    {

      return v1;
    }

    v5 = *(v2 + 8 * v9);
    ++v8;
  }

  while (!v5);
  v8 = v9;
  while (1)
  {
LABEL_9:
    v10 = (v8 << 10) | (16 * __clz(__rbit64(v5)));
    v11 = (*(a1 + 48) + v10);
    v12 = *v11;
    v13 = v11[1];
    v14 = (*(a1 + 56) + v10);
    v15 = v14[1];
    v30 = *v14;
    v16 = *(v1 + 16);
    if (*(v1 + 24) <= v16)
    {

      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16 + 1, 1);
      v1 = v31;
    }

    else
    {
    }

    v17 = *(v1 + 40);
    Hasher.init(_seed:)();
    String.hash(into:)();
    result = Hasher._finalize()();
    v18 = v1 + 64;
    v19 = -1 << *(v1 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v1 + 64 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v1 + 64 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v18 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v5 &= v5 - 1;
    v27 = (*(v1 + 48) + 16 * v22);
    *v27 = v12;
    v27[1] = v13;
    v28 = (*(v1 + 56) + 16 * v22);
    *v28 = v30;
    v28[1] = v15;
    ++*(v1 + 16);
    if (!v5)
    {
      goto LABEL_5;
    }
  }

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
      goto LABEL_21;
    }
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t GeneralAppleIntelligenceError.__allocating_init(cancellationError:)()
{
  OUTLINED_FUNCTION_3_3();
  swift_allocObject();
  OUTLINED_FUNCTION_42_1();
  GeneralAppleIntelligenceError.init(cancellationError:)();
  return v0;
}

uint64_t GeneralAppleIntelligenceError.init(cancellationError:)()
{
  OUTLINED_FUNCTION_30_1();
  *(v0 + 16) = 0xD000000000000011;
  *(v0 + 24) = v1;
  *(v0 + 32) = 0;
  v2 = type metadata accessor for CancellationError();
  lazy protocol witness table accessor for type GeneralAppleIntelligenceError and conformance GeneralAppleIntelligenceError(&lazy protocol witness table cache variable for type CancellationError and conformance CancellationError, MEMORY[0x1E69E8550]);
  *(v0 + 40) = Error.localizedDescription.getter();
  *(v0 + 48) = v3;
  *(v0 + 56) = Error.localizedDescription.getter();
  *(v0 + 64) = v4;
  v5 = MEMORY[0x1E69E7CC0];
  *(v0 + 72) = Dictionary.init(dictionaryLiteral:)();
  *(v0 + 80) = 1;
  OUTLINED_FUNCTION_42(v2);
  v7 = *(v6 + 8);
  v8 = OUTLINED_FUNCTION_31_1();
  v9(v8);
  *(v0 + OBJC_IVAR____TtC26AppleIntelligenceReporting29GeneralAppleIntelligenceError_internalUnderlyingErrors) = v5;
  type metadata accessor for Date();
  OUTLINED_FUNCTION_47_1();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  *(v0 + OBJC_IVAR____TtC26AppleIntelligenceReporting29GeneralAppleIntelligenceError_internalRequestFeedback) = 2;
  return v0;
}

uint64_t GeneralAppleIntelligenceError.__allocating_init(description:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_3_3();
  swift_allocObject();
  v4 = OUTLINED_FUNCTION_44_1();
  GeneralAppleIntelligenceError.init(description:)(v4, a2);
  return v2;
}

uint64_t GeneralAppleIntelligenceError.init(description:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = 0x6669636570736E75;
  *(v2 + 24) = 0xEB00000000646569;
  *(v2 + 32) = 0;
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  *(v2 + 80) = 21;

  v3 = MEMORY[0x1E69E7CC0];
  *(v2 + 72) = Dictionary.init(dictionaryLiteral:)();
  *(v2 + OBJC_IVAR____TtC26AppleIntelligenceReporting29GeneralAppleIntelligenceError_internalUnderlyingErrors) = v3;
  type metadata accessor for Date();
  OUTLINED_FUNCTION_47_1();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  *(v2 + OBJC_IVAR____TtC26AppleIntelligenceReporting29GeneralAppleIntelligenceError_internalRequestFeedback) = 2;
  return v2;
}

uint64_t GeneralAppleIntelligenceError.__allocating_init(domain:rawCode:additionalUserInfo:descriptionWithoutUnderlying:description:underlyingErrors:retryAfterDate:category:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_3_3();
  v9 = swift_allocObject();
  v10 = OUTLINED_FUNCTION_4_2();
  GeneralAppleIntelligenceError.init(domain:rawCode:additionalUserInfo:descriptionWithoutUnderlying:description:underlyingErrors:retryAfterDate:category:)(v10, v11, v12, v13, v14, v15, v16, a8, v18, v19, v20);
  return v9;
}

uint64_t GeneralAppleIntelligenceError.init(domain:rawCode:additionalUserInfo:descriptionWithoutUnderlying:description:underlyingErrors:retryAfterDate:category:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char *a11)
{
  v13 = *a11;
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  *(v11 + 32) = a3;
  *(v11 + 40) = a5;
  *(v11 + 48) = a6;
  *(v11 + 56) = a7;
  *(v11 + 64) = a8;
  v14 = *(a9 + 16);
  if (v14)
  {
    v20 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    v15 = a9 + 32;
    do
    {
      outlined init with copy of any Source<Self.Stream == A>(v15, v19);
      OUTLINED_FUNCTION_29_1(v19);
      __swift_destroy_boxed_opaque_existential_1(v19);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v16 = *(v20 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v15 += 40;
      --v14;
    }

    while (v14);

    v17 = v20;
  }

  else
  {

    v17 = MEMORY[0x1E69E7CC0];
  }

  *(v11 + OBJC_IVAR____TtC26AppleIntelligenceReporting29GeneralAppleIntelligenceError_internalUnderlyingErrors) = v17;
  *(v11 + 80) = v13;
  outlined init with take of Date?(a10, v11 + OBJC_IVAR____TtC26AppleIntelligenceReporting29GeneralAppleIntelligenceError_retryAfterDate);
  *(v11 + 72) = a4;
  *(v11 + OBJC_IVAR____TtC26AppleIntelligenceReporting29GeneralAppleIntelligenceError_internalRequestFeedback) = 2;
  return v11;
}

void GeneralAppleIntelligenceError.init(domain:rawCode:additionalUserInfo:descriptionWithoutUnderlying:description:underlyingErrors:retryAfterDate:category:requestFeedback:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char *a31, char a32)
{
  OUTLINED_FUNCTION_53_1();
  a27 = v33;
  a28 = v35;
  v36 = v32;
  v37 = v34;
  v38 = a32;
  v40 = a29;
  v39 = a30;
  v41 = *a31;
  *(v36 + 16) = v42;
  *(v36 + 24) = v43;
  *(v36 + 32) = v44;
  *(v36 + 40) = v45;
  *(v36 + 48) = v46;
  *(v36 + 56) = v47;
  *(v36 + 64) = v48;
  v49 = *(v40 + 16);
  if (v49)
  {
    v53 = v34;
    a16 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    v50 = v40 + 32;
    do
    {
      outlined init with copy of any Source<Self.Stream == A>(v50, &a11);
      OUTLINED_FUNCTION_29_1(&a11);
      __swift_destroy_boxed_opaque_existential_1(&a11);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v51 = *(a16 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v50 += 40;
      --v49;
    }

    while (v49);

    v52 = a16;
    v37 = v53;
  }

  else
  {

    v52 = MEMORY[0x1E69E7CC0];
  }

  *(v36 + OBJC_IVAR____TtC26AppleIntelligenceReporting29GeneralAppleIntelligenceError_internalUnderlyingErrors) = v52;
  *(v36 + 80) = v41;
  outlined init with take of Date?(v39, v36 + OBJC_IVAR____TtC26AppleIntelligenceReporting29GeneralAppleIntelligenceError_retryAfterDate);
  *(v36 + 72) = v37;
  *(v36 + OBJC_IVAR____TtC26AppleIntelligenceReporting29GeneralAppleIntelligenceError_internalRequestFeedback) = v38 & 1;
  OUTLINED_FUNCTION_52_1();
}

uint64_t GeneralAppleIntelligenceError.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x65646F43776172 && a2 == 0xE700000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD00000000000001CLL && 0x80000001C0CDF2E0 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000012 && 0x80000001C0CDF310 == a2;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x79726F6765746163 && a2 == 0xE800000000000000;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x7466417972746572 && a2 == 0xEE00657461447265;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000018 && 0x80000001C0CDF340 == a2;
                if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0xD000000000000017 && 0x80000001C0CDF360 == a2)
                {

                  return 8;
                }

                else
                {
                  v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if (v14)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t GeneralAppleIntelligenceError.CodingKeys.stringValue.getter(char a1)
{
  result = 0x6E69616D6F64;
  switch(a1)
  {
    case 1:
      result = 0x65646F43776172;
      break;
    case 2:
      result = 0xD00000000000001CLL;
      break;
    case 3:
      result = 0x7470697263736564;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    case 5:
      result = 0x79726F6765746163;
      break;
    case 6:
      result = 0x7466417972746572;
      break;
    case 7:
      result = 0xD000000000000018;
      break;
    case 8:
      result = 0xD000000000000017;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance GeneralAppleIntelligenceError.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = GeneralAppleIntelligenceError.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance GeneralAppleIntelligenceError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GeneralAppleIntelligenceError.CodingKeys and conformance GeneralAppleIntelligenceError.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance GeneralAppleIntelligenceError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GeneralAppleIntelligenceError.CodingKeys and conformance GeneralAppleIntelligenceError.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *GeneralAppleIntelligenceError.deinit()
{
  v1 = v0[3];

  v2 = v0[6];

  v3 = v0[8];

  v4 = v0[9];

  outlined destroy of AppleIntelligenceError?(v0 + OBJC_IVAR____TtC26AppleIntelligenceReporting29GeneralAppleIntelligenceError_retryAfterDate, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v5 = *(v0 + OBJC_IVAR____TtC26AppleIntelligenceReporting29GeneralAppleIntelligenceError_internalUnderlyingErrors);

  return v0;
}

uint64_t GeneralAppleIntelligenceError.__deallocating_deinit()
{
  GeneralAppleIntelligenceError.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t GeneralAppleIntelligenceError.encode(to:)(void *a1)
{
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting07GeneraldE5ErrorC10CodingKeys33_7CD3AB9C6F40D675AAB6A4E202A599F4LLOGMd, &_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting07GeneraldE5ErrorC10CodingKeys33_7CD3AB9C6F40D675AAB6A4E202A599F4LLOGMR);
  OUTLINED_FUNCTION_1(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_8_2();
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type GeneralAppleIntelligenceError.CodingKeys and conformance GeneralAppleIntelligenceError.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = *(v4 + 16);
  v14 = *(v4 + 24);
  OUTLINED_FUNCTION_39();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v15 = *(v4 + 32);
    OUTLINED_FUNCTION_39();
    KeyedEncodingContainer.encode(_:forKey:)();
    v16 = *(v4 + 40);
    v17 = *(v4 + 48);
    OUTLINED_FUNCTION_39();
    KeyedEncodingContainer.encode(_:forKey:)();
    v18 = *(v4 + 56);
    v19 = *(v4 + 64);
    OUTLINED_FUNCTION_39();
    KeyedEncodingContainer.encode(_:forKey:)();
    v24 = *(v4 + 72);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
    lazy protocol witness table accessor for type [String : String] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : String] and conformance <> [A : B]);
    OUTLINED_FUNCTION_21_0();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v25 = *(v4 + 80);
    lazy protocol witness table accessor for type AppleIntelligenceErrorCategory and conformance AppleIntelligenceErrorCategory();
    OUTLINED_FUNCTION_39();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    type metadata accessor for Date();
    OUTLINED_FUNCTION_14_1();
    lazy protocol witness table accessor for type GeneralAppleIntelligenceError and conformance GeneralAppleIntelligenceError(v20, v21);
    OUTLINED_FUNCTION_21_0();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v26 = *(v4 + OBJC_IVAR____TtC26AppleIntelligenceReporting29GeneralAppleIntelligenceError_internalUnderlyingErrors);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay26AppleIntelligenceReporting07GeneralaB5ErrorCGMd, &_sSay26AppleIntelligenceReporting07GeneralaB5ErrorCGMR);
    _sSay26AppleIntelligenceReporting07GeneralaB5ErrorCGSayxGSEsSERzlWlTm_0(&lazy protocol witness table cache variable for type [GeneralAppleIntelligenceError] and conformance <A> [A], &lazy protocol witness table cache variable for type GeneralAppleIntelligenceError and conformance GeneralAppleIntelligenceError);
    OUTLINED_FUNCTION_21_0();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v22 = *(v4 + OBJC_IVAR____TtC26AppleIntelligenceReporting29GeneralAppleIntelligenceError_internalRequestFeedback);
    OUTLINED_FUNCTION_39();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v8 + 8))(v3, v6);
}

uint64_t GeneralAppleIntelligenceError.__allocating_init(from:)(uint64_t *a1)
{
  OUTLINED_FUNCTION_3_3();
  v2 = swift_allocObject();
  GeneralAppleIntelligenceError.init(from:)(a1);
  return v2;
}

uint64_t *GeneralAppleIntelligenceError.init(from:)(uint64_t *a1)
{
  v3 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_29(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting07GeneraldE5ErrorC10CodingKeys33_7CD3AB9C6F40D675AAB6A4E202A599F4LLOGMd, &_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting07GeneraldE5ErrorC10CodingKeys33_7CD3AB9C6F40D675AAB6A4E202A599F4LLOGMR);
  v11 = OUTLINED_FUNCTION_1(v10);
  v31[2] = v12;
  v31[3] = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v15);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type GeneralAppleIntelligenceError.CodingKeys and conformance GeneralAppleIntelligenceError.CodingKeys();
  v17 = v1;
  v18 = v32;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v18)
  {
    v20 = *(*v1 + 48);
    v21 = *(*v1 + 52);
    swift_deallocPartialClassInstance();
    v30 = a1;
  }

  else
  {
    v32 = a1;
    v31[1] = v3;
    LOBYTE(v34) = 0;
    v1[2] = KeyedDecodingContainer.decode(_:forKey:)();
    v1[3] = v19;
    OUTLINED_FUNCTION_9_2(1);
    v1[4] = KeyedDecodingContainer.decode(_:forKey:)();
    OUTLINED_FUNCTION_9_2(2);
    v1[5] = KeyedDecodingContainer.decode(_:forKey:)();
    v1[6] = v23;
    OUTLINED_FUNCTION_9_2(3);
    v1[7] = KeyedDecodingContainer.decode(_:forKey:)();
    v1[8] = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
    v33 = 4;
    lazy protocol witness table accessor for type [String : String] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : String] and conformance <> [A : B]);
    OUTLINED_FUNCTION_20_1();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v1[9] = v34;
    v33 = 5;
    lazy protocol witness table accessor for type AppleIntelligenceErrorCategory and conformance AppleIntelligenceErrorCategory();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v1 + 80) = v34;
    type metadata accessor for Date();
    LOBYTE(v34) = 6;
    OUTLINED_FUNCTION_14_1();
    lazy protocol witness table accessor for type GeneralAppleIntelligenceError and conformance GeneralAppleIntelligenceError(v25, v26);
    OUTLINED_FUNCTION_20_1();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v31[0] = v1;
    outlined init with take of Date?(v9, v1 + OBJC_IVAR____TtC26AppleIntelligenceReporting29GeneralAppleIntelligenceError_retryAfterDate);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay26AppleIntelligenceReporting07GeneralaB5ErrorCGMd, &_sSay26AppleIntelligenceReporting07GeneralaB5ErrorCGMR);
    v33 = 7;
    _sSay26AppleIntelligenceReporting07GeneralaB5ErrorCGSayxGSEsSERzlWlTm_0(&lazy protocol witness table cache variable for type [GeneralAppleIntelligenceError] and conformance <A> [A], &lazy protocol witness table cache variable for type GeneralAppleIntelligenceError and conformance GeneralAppleIntelligenceError);
    OUTLINED_FUNCTION_20_1();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v17 = v31[0];
    *(v31[0] + OBJC_IVAR____TtC26AppleIntelligenceReporting29GeneralAppleIntelligenceError_internalUnderlyingErrors) = v34;
    OUTLINED_FUNCTION_9_2(8);
    v27 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v28 = OUTLINED_FUNCTION_6_3();
    v29(v28);
    *(v17 + OBJC_IVAR____TtC26AppleIntelligenceReporting29GeneralAppleIntelligenceError_internalRequestFeedback) = v27;
    v30 = v32;
  }

  __swift_destroy_boxed_opaque_existential_1(v30);
  return v17;
}

uint64_t protocol witness for Decodable.init(from:) in conformance GeneralAppleIntelligenceError@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = GeneralAppleIntelligenceError.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t protocol witness for Error._domain.getter in conformance GeneralAppleIntelligenceError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GeneralAppleIntelligenceError and conformance GeneralAppleIntelligenceError(&lazy protocol witness table cache variable for type GeneralAppleIntelligenceError and conformance GeneralAppleIntelligenceError, type metadata accessor for GeneralAppleIntelligenceError);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t protocol witness for Error._code.getter in conformance GeneralAppleIntelligenceError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GeneralAppleIntelligenceError and conformance GeneralAppleIntelligenceError(&lazy protocol witness table cache variable for type GeneralAppleIntelligenceError and conformance GeneralAppleIntelligenceError, type metadata accessor for GeneralAppleIntelligenceError);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

id @nonobjc NSError.init(domain:code:userInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = MEMORY[0x1C68E2560]();

  if (a4)
  {
    v8.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v8.super.isa = 0;
  }

  v9 = [v4 initWithDomain:v7 code:a3 userInfo:v8.super.isa];

  return v9;
}

size_t specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t result, uint64_t a2, char a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC10Foundation4DateV_Tt1g5Tm(v9, a2, &_ss23_ContiguousArrayStorageCy10Foundation4DateVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4DateVGMR, MEMORY[0x1E6969530]);
  v11 = *(type metadata accessor for Date() - 8);
  if (v6)
  {
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a4 + v12, v9, v10 + v12, MEMORY[0x1E6969530]);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC10Foundation4DateV_Tt1g5Tm(v9, a2, &_ss23_ContiguousArrayStorageCy27IntelligencePlatformLibrary05AppleD21ReportingGeneralErrorV17UserInfoParameterVGMd, &_ss23_ContiguousArrayStorageCy27IntelligencePlatformLibrary05AppleD21ReportingGeneralErrorV17UserInfoParameterVGMR, MEMORY[0x1E69AA0E8]);
  v11 = *(type metadata accessor for AppleIntelligenceReportingGeneralError.UserInfoParameter() - 8);
  if (v6)
  {
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a4 + v12, v9, v10 + v12, MEMORY[0x1E69AA0E8]);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, ".6");
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC10Foundation4DateV_Tt1g5Tm(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if (result - v10 != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void specialized UnsafeMutablePointer.moveInitialize(from:count:)(unint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  if (a3 < a1 || (v8 = (a4)(0), OUTLINED_FUNCTION_42(v8), a1 + *(v9 + 72) * a2 <= a3))
  {
    a4(0);
    v11 = OUTLINED_FUNCTION_50_1();

    MEMORY[0x1EEE6BD00](v11);
  }

  else if (a3 != a1)
  {
    v10 = OUTLINED_FUNCTION_50_1();

    MEMORY[0x1EEE6BCF8](v10);
  }
}

void *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type [String] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [String] and conformance [A];
  if (!lazy protocol witness table cache variable for type [String] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [String] and conformance [A]);
  }

  return result;
}

uint64_t outlined init with copy of Date?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_42(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_50();
  v9(v8);
  return a2;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26AppleIntelligenceReporting0dE5Error_pGMd, &_ss23_ContiguousArrayStorageCy26AppleIntelligenceReporting0dE5Error_pGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[5 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s26AppleIntelligenceReporting0aB5Error_pMd, &_s26AppleIntelligenceReporting0aB5Error_pMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySbGMd, &_ss23_ContiguousArrayStorageCySbGMR);
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
    if (v10 != a4 || &v13[v8] <= v12)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, ".6");
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)()
{
  v1 = *(v0 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._finalize()();
  v2 = OUTLINED_FUNCTION_15();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v2, v3, v4);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(unsigned int a1)
{
  v3 = MEMORY[0x1C68E2AF0](*(v1 + 40), a1, 4);

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v3);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(int a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

uint64_t specialized closure #1 in Dictionary.merge(_:uniquingKeysWith:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = a4;
  a1[1] = a5;

  return a2;
}

uint64_t specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v54 = a5;
  specialized LazyMapSequence.makeIterator()(a1, a2, a3, v53);
  v6 = v53[1];
  v7 = v53[3];
  v8 = v53[4];
  v48 = v53[5];
  v49 = v53[0];
  v9 = (v53[2] + 64) >> 6;

  v46 = v9;
  v47 = v6;
  if (v8)
  {
    while (1)
    {
      v50 = a4;
      v10 = v7;
LABEL_8:
      v12 = (v10 << 10) | (16 * __clz(__rbit64(v8)));
      v13 = (*(v49 + 48) + v12);
      v14 = *v13;
      v15 = v13[1];
      v16 = (*(v49 + 56) + v12);
      v17 = *v16;
      v18 = v16[1];
      v52[0] = v14;
      v52[1] = v15;
      v52[2] = v17;
      v52[3] = v18;

      v48(v51, v52);

      v20 = v51[0];
      v19 = v51[1];
      v21 = v51[2];
      v22 = v51[3];
      v23 = *v54;
      OUTLINED_FUNCTION_26();
      v25 = specialized __RawDictionaryStorage.find<A>(_:)();
      v26 = *(v23 + 16);
      v27 = (v24 & 1) == 0;
      v28 = v26 + v27;
      if (__OFADD__(v26, v27))
      {
        break;
      }

      v29 = v24;
      if (*(v23 + 24) >= v28)
      {
        if ((v50 & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVyS2SGMd, "*6");
          _NativeDictionary.copy()();
        }
      }

      else
      {
        v30 = v54;
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v28, v50 & 1);
        v31 = *v30;
        OUTLINED_FUNCTION_26();
        v32 = specialized __RawDictionaryStorage.find<A>(_:)();
        if ((v29 & 1) != (v33 & 1))
        {
          goto LABEL_24;
        }

        v25 = v32;
      }

      v8 &= v8 - 1;
      v34 = *v54;
      if (v29)
      {
        v35 = (v34[7] + 16 * v25);
        v37 = *v35;
        v36 = v35[1];

        v38 = (v34[7] + 16 * v25);
        v39 = v38[1];
        *v38 = v37;
        v38[1] = v36;
      }

      else
      {
        v34[(v25 >> 6) + 8] |= 1 << v25;
        v40 = (v34[6] + 16 * v25);
        *v40 = v20;
        v40[1] = v19;
        v41 = (v34[7] + 16 * v25);
        *v41 = v21;
        v41[1] = v22;
        v42 = v34[2];
        v43 = __OFADD__(v42, 1);
        v44 = v42 + 1;
        if (v43)
        {
          goto LABEL_23;
        }

        v34[2] = v44;
      }

      a4 = 1;
      v7 = v10;
      v9 = v46;
      v6 = v47;
      if (!v8)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v11 = v7;
    while (1)
    {
      v10 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v10 >= v9)
      {
        outlined consume of [String : String].Iterator._Variant();
      }

      v8 = *(v6 + 8 * v10);
      ++v11;
      if (v8)
      {
        v50 = a4;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
  v39 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (!*(v5 + 16))
  {
LABEL_33:

LABEL_34:
    *v3 = v8;
    return result;
  }

  v37 = v3;
  v38 = v5;
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
  if (!v13)
  {
LABEL_9:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v9 >= v14)
      {
        break;
      }

      v18 = v10[v9];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      specialized UnsafeMutablePointer.assign(repeating:count:)(0, (v36 + 63) >> 6, v10);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
    goto LABEL_33;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_14:
    v19 = v16 | (v9 << 6);
    v20 = (*(v5 + 48) + 16 * v19);
    v21 = *v20;
    v22 = v20[1];
    v23 = (*(v5 + 56) + 16 * v19);
    v24 = v23[1];
    v40 = *v23;
    if ((v39 & 1) == 0)
    {
    }

    v25 = *(v8 + 40);
    Hasher.init(_seed:)();
    String.hash(into:)();
    result = Hasher._finalize()();
    v26 = -1 << *(v8 + 32);
    v27 = result & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
    {
      break;
    }

    v29 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v15 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
    v34 = (*(v8 + 48) + 16 * v29);
    *v34 = v21;
    v34[1] = v22;
    v35 = (*(v8 + 56) + 16 * v29);
    *v35 = v40;
    v35[1] = v24;
    ++*(v8 + 16);
    v5 = v38;
    if (!v13)
    {
      goto LABEL_9;
    }
  }

  v30 = 0;
  v31 = (63 - v26) >> 6;
  while (++v28 != v31 || (v30 & 1) == 0)
  {
    v32 = v28 == v31;
    if (v28 == v31)
    {
      v28 = 0;
    }

    v30 |= v32;
    v33 = *(v15 + 8 * v28);
    if (v33 != -1)
    {
      v29 = __clz(__rbit64(~v33)) + (v28 << 6);
      goto LABEL_25;
    }
  }

LABEL_36:
  __break(1u);
  return result;
}

uint64_t specialized UnsafeMutablePointer.assign(repeating:count:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_1C0CDD170;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

int64_t specialized Array.append<A>(contentsOf:)(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(result, 1);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v8 = __OFADD__(v7, v3);
  v9 = v7 + v3;
  if (!v8)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

unint64_t type metadata accessor for NSError()
{
  result = lazy cache variable for type metadata for NSError;
  if (!lazy cache variable for type metadata for NSError)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSError);
  }

  return result;
}

uint64_t outlined destroy of AppleIntelligenceError?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_42(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t outlined init with take of Date?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t lazy protocol witness table accessor for type GeneralAppleIntelligenceError.CodingKeys and conformance GeneralAppleIntelligenceError.CodingKeys()
{
  result = lazy protocol witness table cache variable for type GeneralAppleIntelligenceError.CodingKeys and conformance GeneralAppleIntelligenceError.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeneralAppleIntelligenceError.CodingKeys and conformance GeneralAppleIntelligenceError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeneralAppleIntelligenceError.CodingKeys and conformance GeneralAppleIntelligenceError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeneralAppleIntelligenceError.CodingKeys and conformance GeneralAppleIntelligenceError.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeneralAppleIntelligenceError.CodingKeys and conformance GeneralAppleIntelligenceError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeneralAppleIntelligenceError.CodingKeys and conformance GeneralAppleIntelligenceError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeneralAppleIntelligenceError.CodingKeys and conformance GeneralAppleIntelligenceError.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeneralAppleIntelligenceError.CodingKeys and conformance GeneralAppleIntelligenceError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeneralAppleIntelligenceError.CodingKeys and conformance GeneralAppleIntelligenceError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeneralAppleIntelligenceError.CodingKeys and conformance GeneralAppleIntelligenceError.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeneralAppleIntelligenceError.CodingKeys and conformance GeneralAppleIntelligenceError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeneralAppleIntelligenceError.CodingKeys and conformance GeneralAppleIntelligenceError.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceErrorCategory and conformance AppleIntelligenceErrorCategory()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceErrorCategory and conformance AppleIntelligenceErrorCategory;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceErrorCategory and conformance AppleIntelligenceErrorCategory)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceErrorCategory and conformance AppleIntelligenceErrorCategory);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceErrorCategory and conformance AppleIntelligenceErrorCategory;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceErrorCategory and conformance AppleIntelligenceErrorCategory)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceErrorCategory and conformance AppleIntelligenceErrorCategory);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceErrorCategory and conformance AppleIntelligenceErrorCategory;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceErrorCategory and conformance AppleIntelligenceErrorCategory)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceErrorCategory and conformance AppleIntelligenceErrorCategory);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceErrorCategory and conformance AppleIntelligenceErrorCategory;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceErrorCategory and conformance AppleIntelligenceErrorCategory)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceErrorCategory and conformance AppleIntelligenceErrorCategory);
  }

  return result;
}

uint64_t _sSay26AppleIntelligenceReporting07GeneralaB5ErrorCGSayxGSEsSERzlWlTm_0(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay26AppleIntelligenceReporting07GeneralaB5ErrorCGMd, &_sSay26AppleIntelligenceReporting07GeneralaB5ErrorCGMR);
    OUTLINED_FUNCTION_0_3();
    lazy protocol witness table accessor for type GeneralAppleIntelligenceError and conformance GeneralAppleIntelligenceError(a2, v5);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for GeneralAppleIntelligenceError(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type GeneralAppleIntelligenceError and conformance GeneralAppleIntelligenceError(&lazy protocol witness table cache variable for type GeneralAppleIntelligenceError and conformance GeneralAppleIntelligenceError, type metadata accessor for GeneralAppleIntelligenceError);
  a1[2] = lazy protocol witness table accessor for type GeneralAppleIntelligenceError and conformance GeneralAppleIntelligenceError(&lazy protocol witness table cache variable for type GeneralAppleIntelligenceError and conformance GeneralAppleIntelligenceError, type metadata accessor for GeneralAppleIntelligenceError);
  result = lazy protocol witness table accessor for type GeneralAppleIntelligenceError and conformance GeneralAppleIntelligenceError(&lazy protocol witness table cache variable for type GeneralAppleIntelligenceError and conformance GeneralAppleIntelligenceError, type metadata accessor for GeneralAppleIntelligenceError);
  a1[3] = result;
  return result;
}

uint64_t getEnumTagSinglePayload for AppleIntelligenceErrorCategory(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xEA)
  {
    if (a2 + 22 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 22) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 23;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x17;
  v5 = v6 - 23;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AppleIntelligenceErrorCategory(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 22 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 22) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE9)
  {
    v6 = ((a2 - 234) >> 8) + 1;
    *result = a2 + 22;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 22;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for GeneralAppleIntelligenceError.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

char *specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(int64_t a1, char a2)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if (!result || a1 > *(v5 + 3) >> 1)
  {
    if (*(v5 + 2) <= a1)
    {
      v7 = a1;
    }

    else
    {
      v7 = *(v5 + 2);
    }

    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v7, a2 & 1, v5);
    *v2 = result;
  }

  return result;
}

uint64_t specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return outlined init with take of any Source<Self.Stream == A>(&v12, v10 + 40 * a1 + 32);
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized closure #1 in Dictionary.merge(_:uniquingKeysWith:)(v7, *a1, a1[1], a1[2], a1[3]);
  v4 = v7[0];
  v5 = v7[1];
  *a2 = result;
  a2[1] = v6;
  a2[2] = v4;
  a2[3] = v5;
  return result;
}

uint64_t specialized LazyMapSequence.makeIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = -1 << *(a1 + 32);
  *a4 = a1;
  v7 = *(a1 + 64);
  result = a1 + 64;
  v6 = v7;
  v8 = ~v4;
  v9 = -v4;
  a4[1] = result;
  a4[2] = v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  a4[3] = 0;
  a4[4] = v10 & v6;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

uint64_t lazy protocol witness table accessor for type GeneralAppleIntelligenceError and conformance GeneralAppleIntelligenceError(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 OUTLINED_FUNCTION_5_3()
{
  result = v0[1];
  v2 = v0[2].n128_u64[0];
  return result;
}

void *OUTLINED_FUNCTION_38_1()
{

  return __swift_project_boxed_opaque_existential_1(v0, v1);
}

void OUTLINED_FUNCTION_41_1(uint64_t a1@<X8>)
{
  *(v3 + 224) = v4 + 5;
  *(v3 + 232) = a1;
  *(v2 + 80) = 0;
  *(v2 + 88) = v1;
}

uint64_t OUTLINED_FUNCTION_45_0()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_55_1()
{

  return swift_bridgeObjectRetain_n();
}

uint64_t AppleIntelligenceUseCase.toReportingUseCase.getter()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  type metadata accessor for AppleIntelligenceReportingUseCase();
  return static Buildable.with(_:)();
}

uint64_t AppleIntelligenceEvent.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x80000001C0CDF3B0 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x636E657265666E69 && a2 == 0xE900000000000065;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6C65447465737361 && a2 == 0xED00007972657669)
    {

      return 2;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t AppleIntelligenceEvent.CodingKeys.stringValue.getter(char a1)
{
  if (!a1)
  {
    return 0xD000000000000010;
  }

  if (a1 == 1)
  {
    return 0x636E657265666E69;
  }

  return 0x6C65447465737361;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AppleIntelligenceEvent.AssetDeliveryCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceEvent.AssetDeliveryCodingKeys and conformance AppleIntelligenceEvent.AssetDeliveryCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AppleIntelligenceEvent.AssetDeliveryCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceEvent.AssetDeliveryCodingKeys and conformance AppleIntelligenceEvent.AssetDeliveryCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AppleIntelligenceEvent.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = AppleIntelligenceEvent.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AppleIntelligenceEvent.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceEvent.CodingKeys and conformance AppleIntelligenceEvent.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AppleIntelligenceEvent.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceEvent.CodingKeys and conformance AppleIntelligenceEvent.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AppleIntelligenceEvent.InferenceCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceEvent.InferenceCodingKeys and conformance AppleIntelligenceEvent.InferenceCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AppleIntelligenceEvent.InferenceCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceEvent.InferenceCodingKeys and conformance AppleIntelligenceEvent.InferenceCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AppleIntelligenceEvent.MinimalInferenceCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceEvent.MinimalInferenceCodingKeys and conformance AppleIntelligenceEvent.MinimalInferenceCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AppleIntelligenceEvent.MinimalInferenceCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceEvent.MinimalInferenceCodingKeys and conformance AppleIntelligenceEvent.MinimalInferenceCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AppleIntelligenceEvent.encode(to:)()
{
  OUTLINED_FUNCTION_48();
  v87 = v1;
  v85 = v0;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE5EventO23AssetDeliveryCodingKeys33_946FD55AF52EA8CE02E29C37303113CALLOGMd, &_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE5EventO23AssetDeliveryCodingKeys33_946FD55AF52EA8CE02E29C37303113CALLOGMR);
  v6 = OUTLINED_FUNCTION_1(v5);
  v83 = v7;
  v84 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_19_0();
  v82 = v11;
  v80 = type metadata accessor for AppleIntelligenceAssetDeliveryEvent(0);
  v12 = OUTLINED_FUNCTION_9(v80);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2();
  v81 = v16 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE5EventO19InferenceCodingKeys33_946FD55AF52EA8CE02E29C37303113CALLOGMd, &_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE5EventO19InferenceCodingKeys33_946FD55AF52EA8CE02E29C37303113CALLOGMR);
  v18 = OUTLINED_FUNCTION_1(v17);
  v78 = v19;
  v79 = v18;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_19_0();
  v77 = v23;
  v75 = type metadata accessor for AppleIntelligenceInferenceEvent(0);
  v24 = OUTLINED_FUNCTION_9(v75);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_2();
  v76 = v28 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE5EventO26MinimalInferenceCodingKeys33_946FD55AF52EA8CE02E29C37303113CALLOGMd, &_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE5EventO26MinimalInferenceCodingKeys33_946FD55AF52EA8CE02E29C37303113CALLOGMR);
  v30 = OUTLINED_FUNCTION_1(v29);
  v73 = v31;
  v74 = v30;
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_14();
  v72 = type metadata accessor for MinimalInferenceEvent(0);
  v35 = OUTLINED_FUNCTION_9(v72);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_2();
  v40 = v39 - v38;
  v41 = type metadata accessor for AppleIntelligenceEvent(0);
  v42 = OUTLINED_FUNCTION_9(v41);
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_2();
  v47 = v46 - v45;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE5EventO10CodingKeys33_946FD55AF52EA8CE02E29C37303113CALLOGMd, &_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE5EventO10CodingKeys33_946FD55AF52EA8CE02E29C37303113CALLOGMR);
  OUTLINED_FUNCTION_1(v86);
  v49 = v48;
  v51 = *(v50 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v52);
  v54 = &v72 - v53;
  v55 = v4[4];
  OUTLINED_FUNCTION_28_0(v4, v4[3]);
  lazy protocol witness table accessor for type AppleIntelligenceEvent.CodingKeys and conformance AppleIntelligenceEvent.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  outlined init with copy of AppleIntelligenceEvent(v85, v47);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v57 = (v49 + 8);
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v58 = v76;
      outlined init with take of AppleIntelligenceAssetDeliveryEvent(v47, v76);
      OUTLINED_FUNCTION_77();
      lazy protocol witness table accessor for type AppleIntelligenceEvent.InferenceCodingKeys and conformance AppleIntelligenceEvent.InferenceCodingKeys();
      OUTLINED_FUNCTION_56_1();
      OUTLINED_FUNCTION_25_2();
      lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent and conformance AppleIntelligenceAssetDeliveryEvent(v59);
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v60 = *(v78 + 8);
      v61 = OUTLINED_FUNCTION_24_2();
      v62(v61);
      v63 = type metadata accessor for AppleIntelligenceInferenceEvent;
    }

    else
    {
      v58 = v81;
      outlined init with take of AppleIntelligenceAssetDeliveryEvent(v47, v81);
      lazy protocol witness table accessor for type AppleIntelligenceEvent.AssetDeliveryCodingKeys and conformance AppleIntelligenceEvent.AssetDeliveryCodingKeys();
      OUTLINED_FUNCTION_56_1();
      OUTLINED_FUNCTION_19_3();
      lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent and conformance AppleIntelligenceAssetDeliveryEvent(v68);
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v69 = *(v83 + 8);
      v70 = OUTLINED_FUNCTION_24_2();
      v71(v70);
      v63 = type metadata accessor for AppleIntelligenceAssetDeliveryEvent;
    }

    outlined destroy of AppleIntelligenceAssetDeliveryEvent(v58, v63);
    (*v57)(v54, v2);
  }

  else
  {
    outlined init with take of AppleIntelligenceAssetDeliveryEvent(v47, v40);
    lazy protocol witness table accessor for type AppleIntelligenceEvent.MinimalInferenceCodingKeys and conformance AppleIntelligenceEvent.MinimalInferenceCodingKeys();
    v64 = v86;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    OUTLINED_FUNCTION_22_1();
    lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent and conformance AppleIntelligenceAssetDeliveryEvent(v65);
    v66 = v74;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v73 + 8))(v2, v66);
    OUTLINED_FUNCTION_21_1();
    outlined destroy of AppleIntelligenceAssetDeliveryEvent(v40, v67);
    (*v57)(v54, v64);
  }

  OUTLINED_FUNCTION_47();
}

void AppleIntelligenceEvent.init(from:)()
{
  OUTLINED_FUNCTION_48();
  v108 = v1;
  v3 = v2;
  v100 = v4;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE5EventO23AssetDeliveryCodingKeys33_946FD55AF52EA8CE02E29C37303113CALLOGMd, &_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE5EventO23AssetDeliveryCodingKeys33_946FD55AF52EA8CE02E29C37303113CALLOGMR);
  OUTLINED_FUNCTION_1(v106);
  v99 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_19_0();
  v102 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE5EventO19InferenceCodingKeys33_946FD55AF52EA8CE02E29C37303113CALLOGMd, &_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE5EventO19InferenceCodingKeys33_946FD55AF52EA8CE02E29C37303113CALLOGMR);
  v11 = OUTLINED_FUNCTION_1(v10);
  v97 = v12;
  v98 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_19_0();
  v103 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE5EventO26MinimalInferenceCodingKeys33_946FD55AF52EA8CE02E29C37303113CALLOGMd, &_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE5EventO26MinimalInferenceCodingKeys33_946FD55AF52EA8CE02E29C37303113CALLOGMR);
  v18 = OUTLINED_FUNCTION_1(v17);
  v95 = v19;
  v96 = v18;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_19_0();
  v101 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE5EventO10CodingKeys33_946FD55AF52EA8CE02E29C37303113CALLOGMd, &_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE5EventO10CodingKeys33_946FD55AF52EA8CE02E29C37303113CALLOGMR);
  v25 = OUTLINED_FUNCTION_1(v24);
  v104 = v26;
  v105 = v25;
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_20();
  v30 = type metadata accessor for AppleIntelligenceEvent(0);
  v31 = OUTLINED_FUNCTION_9(v30);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v35 = &v89 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v89 - v37;
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v89 - v40;
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v89 - v43;
  v46 = v3[3];
  v45 = v3[4];
  v107 = v3;
  OUTLINED_FUNCTION_28_0(v3, v46);
  lazy protocol witness table accessor for type AppleIntelligenceEvent.CodingKeys and conformance AppleIntelligenceEvent.CodingKeys();
  v47 = v108;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v47)
  {
    goto LABEL_10;
  }

  v91 = v38;
  v92 = v41;
  v93 = v35;
  v94 = v44;
  v48 = v105;
  v108 = v30;
  v49 = v0;
  v50 = KeyedDecodingContainer.allKeys.getter();
  _ss12_SliceBufferV7_buffer19shiftedToStartIndexAByxGs016_ContiguousArrayB0VyxG_SitcfC26AppleIntelligenceReporting0jK18AssetDeliveryEventV29ModelCatalogSubscriptionStateV7TriggerO10CodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLO_Tt1g5(v50, 0);
  if (v52 == v53 >> 1)
  {
LABEL_9:
    v63 = type metadata accessor for DecodingError();
    swift_allocError();
    v65 = v64;
    v66 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
    *v65 = v108;
    v67 = KeyedDecodingContainer.codingPath.getter();
    OUTLINED_FUNCTION_65(v67);
    (*(*(v63 - 8) + 104))(v65, *MEMORY[0x1E69E6AF8], v63);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v104 + 8))(v49, v48);
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1(v107);
LABEL_11:
    OUTLINED_FUNCTION_47();
    return;
  }

  if (v52 < (v53 >> 1))
  {
    v54 = v0;
    v55 = *(v51 + v52);
    specialized ArraySlice.subscript.getter(v52 + 1);
    v57 = v56;
    v59 = v58;
    swift_unknownObjectRelease();
    if (v57 == v59 >> 1)
    {
      if (v55)
      {
        if (v55 == 1)
        {
          OUTLINED_FUNCTION_77();
          lazy protocol witness table accessor for type AppleIntelligenceEvent.InferenceCodingKeys and conformance AppleIntelligenceEvent.InferenceCodingKeys();
          OUTLINED_FUNCTION_36_1();
          v60 = v94;
          type metadata accessor for AppleIntelligenceInferenceEvent(0);
          OUTLINED_FUNCTION_25_2();
          lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent and conformance AppleIntelligenceAssetDeliveryEvent(v61);
          v62 = v91;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          v90 = 0;
          swift_unknownObjectRelease();
          v73 = *(v97 + 8);
          v74 = OUTLINED_FUNCTION_106();
          v75(v74);
          v76 = OUTLINED_FUNCTION_12_1();
        }

        else
        {
          lazy protocol witness table accessor for type AppleIntelligenceEvent.AssetDeliveryCodingKeys and conformance AppleIntelligenceEvent.AssetDeliveryCodingKeys();
          OUTLINED_FUNCTION_36_1();
          v60 = v94;
          type metadata accessor for AppleIntelligenceAssetDeliveryEvent(0);
          OUTLINED_FUNCTION_19_3();
          lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent and conformance AppleIntelligenceAssetDeliveryEvent(v71);
          v62 = v93;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          v72 = v104;
          v90 = 0;
          swift_unknownObjectRelease();
          v85 = OUTLINED_FUNCTION_62_1();
          v86(v85);
          v87 = *(v72 + 8);
          v76 = OUTLINED_FUNCTION_30_2();
        }

        v77(v76);
        swift_storeEnumTagMultiPayload();
        v84 = v62;
        v83 = v107;
      }

      else
      {
        lazy protocol witness table accessor for type AppleIntelligenceEvent.MinimalInferenceCodingKeys and conformance AppleIntelligenceEvent.MinimalInferenceCodingKeys();
        OUTLINED_FUNCTION_36_1();
        type metadata accessor for MinimalInferenceEvent(0);
        OUTLINED_FUNCTION_22_1();
        lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent and conformance AppleIntelligenceAssetDeliveryEvent(v68);
        v69 = v92;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v70 = v104;
        v90 = 0;
        swift_unknownObjectRelease();
        v78 = OUTLINED_FUNCTION_61_1();
        v79(v78);
        v80 = *(v70 + 8);
        v81 = OUTLINED_FUNCTION_30_2();
        v82(v81);
        swift_storeEnumTagMultiPayload();
        v83 = v107;
        v60 = v94;
        v84 = v69;
      }

      v88 = v100;
      outlined init with take of AppleIntelligenceAssetDeliveryEvent(v84, v60);
      outlined init with take of AppleIntelligenceAssetDeliveryEvent(v60, v88);
      __swift_destroy_boxed_opaque_existential_1(v83);
      goto LABEL_11;
    }

    v49 = v54;
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t AppleIntelligenceInferenceEvent.internalSubsystem.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_50();
}

uint64_t AppleIntelligenceInferenceEvent.internalSessionIdentifier.getter()
{
  v0 = OUTLINED_FUNCTION_35_1();
  v1 = type metadata accessor for AppleIntelligenceInferenceEvent(v0);
  return OUTLINED_FUNCTION_57_0(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR, *(v1 + 20));
}

uint64_t AppleIntelligenceInferenceEvent.internalStepIdentifier.getter()
{
  v0 = type metadata accessor for AppleIntelligenceInferenceEvent(0);
  OUTLINED_FUNCTION_31_2(*(v0 + 24));
  return OUTLINED_FUNCTION_50();
}

uint64_t AppleIntelligenceInferenceEvent.internalInvocationRequestIdentifier.getter()
{
  v0 = OUTLINED_FUNCTION_35_1();
  v1 = type metadata accessor for AppleIntelligenceInferenceEvent(v0);
  return OUTLINED_FUNCTION_57_0(&_s26AppleIntelligenceReporting14UUIDIdentifierVSgMd, &_s26AppleIntelligenceReporting14UUIDIdentifierVSgMR, *(v1 + 28));
}

uint64_t AppleIntelligenceInferenceEvent.internalClientRequestIdentifier.getter()
{
  v0 = OUTLINED_FUNCTION_35_1();
  v1 = type metadata accessor for AppleIntelligenceInferenceEvent(v0);
  return OUTLINED_FUNCTION_57_0(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR, *(v1 + 32));
}

uint64_t AppleIntelligenceInferenceEvent.internalModelManagerRequestIdentifier.getter()
{
  v0 = OUTLINED_FUNCTION_35_1();
  v1 = type metadata accessor for AppleIntelligenceInferenceEvent(v0);
  return OUTLINED_FUNCTION_57_0(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR, *(v1 + 36));
}

uint64_t AppleIntelligenceInferenceEvent.internalErrors.getter()
{
  v1 = *(v0 + *(type metadata accessor for AppleIntelligenceInferenceEvent(0) + 40));
}

uint64_t AppleIntelligenceInferenceEvent.internalUseCaseIdentifier.getter()
{
  v2 = OUTLINED_FUNCTION_35_1();
  v3 = (v1 + *(type metadata accessor for AppleIntelligenceInferenceEvent(v2) + 44));
  v5 = v3[3];
  v10 = v3[2];
  v4 = v10;
  v11 = v5;
  v6 = v3[1];
  v9[0] = *v3;
  v9[1] = v6;
  *v0 = v9[0];
  v0[1] = v6;
  v0[2] = v4;
  v0[3] = v5;
  return outlined init with copy of UUID?(v9, &v8, &_s26AppleIntelligenceReporting0aB7UseCaseVSgMd, &_s26AppleIntelligenceReporting0aB7UseCaseVSgMR);
}

uint64_t AppleIntelligenceInferenceEvent.internalAdditionalUseCaseIdentifiers.getter()
{
  v1 = *(v0 + *(type metadata accessor for AppleIntelligenceInferenceEvent(0) + 48));
}

uint64_t AppleIntelligenceInferenceEvent.internalRequestorBundleIdentifier.getter()
{
  v0 = type metadata accessor for AppleIntelligenceInferenceEvent(0);
  OUTLINED_FUNCTION_31_2(*(v0 + 52));
  return OUTLINED_FUNCTION_50();
}

uint64_t AppleIntelligenceInferenceEvent.internalOnBehalfOfBundleIdentifier.getter()
{
  v0 = type metadata accessor for AppleIntelligenceInferenceEvent(0);
  OUTLINED_FUNCTION_31_2(*(v0 + 56));
  return OUTLINED_FUNCTION_50();
}

uint64_t AppleIntelligenceInferenceEvent.internalInferenceProviderIdentifier.getter()
{
  v0 = type metadata accessor for AppleIntelligenceInferenceEvent(0);
  OUTLINED_FUNCTION_31_2(*(v0 + 60));
  return OUTLINED_FUNCTION_50();
}

uint64_t AppleIntelligenceInferenceEvent.internalAssetBundleIdentifier.getter()
{
  v0 = type metadata accessor for AppleIntelligenceInferenceEvent(0);
  OUTLINED_FUNCTION_31_2(*(v0 + 64));
  return OUTLINED_FUNCTION_50();
}

uint64_t AppleIntelligenceInferenceEvent.internalAssets.getter()
{
  v1 = *(v0 + *(type metadata accessor for AppleIntelligenceInferenceEvent(0) + 68));
}

uint64_t AppleIntelligenceInferenceEvent.internalMetadata.getter()
{
  v2 = OUTLINED_FUNCTION_35_1();
  result = type metadata accessor for AppleIntelligenceInferenceEvent(v2);
  *v0 = *(v1 + *(result + 72));
  return result;
}

uint64_t AppleIntelligenceInferenceEvent.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000011 && 0x80000001C0CDF3D0 == a2;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000019 && 0x80000001C0CDF3F0 == a2;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000016 && 0x80000001C0CDF410 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000023 && 0x80000001C0CDF430 == a2;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD00000000000001FLL && 0x80000001C0CDF460 == a2;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000025 && 0x80000001C0CDF480 == a2;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6C616E7265746E69 && a2 == 0xEE0073726F727245;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000019 && 0x80000001C0CDF4B0 == a2;
                if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000024 && 0x80000001C0CDF4D0 == a2;
                  if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000021 && 0x80000001C0CDF500 == a2;
                    if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000022 && 0x80000001C0CDF530 == a2;
                      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD000000000000023 && 0x80000001C0CDF560 == a2;
                        if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0xD00000000000001DLL && 0x80000001C0CDF590 == a2;
                          if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x6C616E7265746E69 && a2 == 0xEE00737465737341;
                            if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                            {

                              return 13;
                            }

                            else if (a1 == 0xD000000000000010 && 0x80000001C0CDF5B0 == a2)
                            {

                              return 14;
                            }

                            else
                            {
                              v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

                              if (v20)
                              {
                                return 14;
                              }

                              else
                              {
                                return 15;
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t AppleIntelligenceInferenceEvent.CodingKeys.stringValue.getter(char a1)
{
  result = 0x6C616E7265746E69;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000019;
      break;
    case 2:
      result = 0xD000000000000016;
      break;
    case 3:
    case 11:
      result = 0xD000000000000023;
      break;
    case 4:
      result = 0xD00000000000001FLL;
      break;
    case 5:
      result = 0xD000000000000025;
      break;
    case 6:
    case 13:
      return result;
    case 7:
      result = 0xD000000000000019;
      break;
    case 8:
      result = 0xD000000000000024;
      break;
    case 9:
      result = 0xD000000000000021;
      break;
    case 10:
      result = 0xD000000000000022;
      break;
    case 12:
      result = 0xD00000000000001DLL;
      break;
    case 14:
      result = 0xD000000000000010;
      break;
    default:
      result = 0xD000000000000011;
      break;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AppleIntelligenceInferenceEvent.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = AppleIntelligenceInferenceEvent.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance AppleIntelligenceInferenceEvent.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = AppleIntelligenceInferenceEvent.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AppleIntelligenceInferenceEvent.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceInferenceEvent.CodingKeys and conformance AppleIntelligenceInferenceEvent.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AppleIntelligenceInferenceEvent.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceInferenceEvent.CodingKeys and conformance AppleIntelligenceInferenceEvent.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AppleIntelligenceInferenceEvent.encode(to:)()
{
  OUTLINED_FUNCTION_48();
  v3 = v0;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE14InferenceEventV10CodingKeys33_946FD55AF52EA8CE02E29C37303113CALLOGMd, &_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE14InferenceEventV10CodingKeys33_946FD55AF52EA8CE02E29C37303113CALLOGMR);
  OUTLINED_FUNCTION_1(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_14();
  v12 = v5[4];
  OUTLINED_FUNCTION_28_0(v5, v5[3]);
  lazy protocol witness table accessor for type AppleIntelligenceInferenceEvent.CodingKeys and conformance AppleIntelligenceInferenceEvent.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = *v3;
  v14 = v3[1];
  LOBYTE(v35) = 0;
  OUTLINED_FUNCTION_16_2();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    v15 = type metadata accessor for AppleIntelligenceInferenceEvent(0);
    v16 = v15[5];
    LOBYTE(v35) = 1;
    type metadata accessor for UUID();
    OUTLINED_FUNCTION_3_4();
    lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent and conformance AppleIntelligenceAssetDeliveryEvent(v17);
    OUTLINED_FUNCTION_39_1();
    OUTLINED_FUNCTION_16_2();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_51_1(v15[6]);
    LOBYTE(v35) = 2;
    OUTLINED_FUNCTION_16_2();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v41 = v15;
    v18 = v15[7];
    LOBYTE(v35) = 3;
    type metadata accessor for UUIDIdentifier();
    OUTLINED_FUNCTION_23_2();
    lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent and conformance AppleIntelligenceAssetDeliveryEvent(v19);
    OUTLINED_FUNCTION_13_1();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v20 = v41[8];
    LOBYTE(v35) = 4;
    OUTLINED_FUNCTION_39_1();
    OUTLINED_FUNCTION_16_2();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v21 = v41[9];
    LOBYTE(v35) = 5;
    OUTLINED_FUNCTION_39_1();
    OUTLINED_FUNCTION_16_2();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v40 = *(v3 + v41[10]);
    v39 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay26AppleIntelligenceReporting07GeneralaB5ErrorCGMd, &_sSay26AppleIntelligenceReporting07GeneralaB5ErrorCGMR);
    OUTLINED_FUNCTION_20_2();
    _sSay26AppleIntelligenceReporting07GeneralaB5ErrorCGSayxGSEsSERzlWlTm_1(v22);
    OUTLINED_FUNCTION_13_1();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v23 = (v3 + v41[11]);
    v24 = *v23;
    v25 = v23[2];
    v36 = v23[1];
    v37 = v25;
    v26 = v23[2];
    v38 = v23[3];
    v31 = v24;
    v32 = v36;
    v27 = *v23;
    v33 = v26;
    v34 = v23[3];
    v35 = v27;
    v30[79] = 7;
    outlined init with copy of UUID?(&v35, v30, &_s26AppleIntelligenceReporting0aB7UseCaseVSgMd, &_s26AppleIntelligenceReporting0aB7UseCaseVSgMR);
    lazy protocol witness table accessor for type AppleIntelligenceUseCase and conformance AppleIntelligenceUseCase();
    OUTLINED_FUNCTION_16_2();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_18_1();
    outlined destroy of (AppleIntelligenceAssetDeliveryEvent.EventType, AppleIntelligenceAssetDeliveryEvent.EventType)(v30, &_s26AppleIntelligenceReporting0aB7UseCaseVSgMd, &_s26AppleIntelligenceReporting0aB7UseCaseVSgMR);
    v28 = *(v3 + v41[12]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay26AppleIntelligenceReporting0aB7UseCaseVGMd, &_sSay26AppleIntelligenceReporting0aB7UseCaseVGMR);
    lazy protocol witness table accessor for type [AppleIntelligenceUseCase] and conformance <A> [A](&lazy protocol witness table cache variable for type [AppleIntelligenceUseCase] and conformance <A> [A]);
    OUTLINED_FUNCTION_13_1();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    OUTLINED_FUNCTION_51_1(v41[13]);
    OUTLINED_FUNCTION_11_2(9);
    OUTLINED_FUNCTION_51_1(v41[14]);
    OUTLINED_FUNCTION_11_2(10);
    OUTLINED_FUNCTION_51_1(v41[15]);
    OUTLINED_FUNCTION_11_2(11);
    OUTLINED_FUNCTION_51_1(v41[16]);
    OUTLINED_FUNCTION_11_2(12);
    v29 = *(v3 + v41[17]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay26AppleIntelligenceReporting0aB5AssetVGMd, &_sSay26AppleIntelligenceReporting0aB5AssetVGMR);
    lazy protocol witness table accessor for type [AppleIntelligenceAsset] and conformance <A> [A](&lazy protocol witness table cache variable for type [AppleIntelligenceAsset] and conformance <A> [A]);
    OUTLINED_FUNCTION_13_1();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v29) = *(v3 + v41[18]);
    lazy protocol witness table accessor for type AppleIntelligenceReportingMetadata and conformance AppleIntelligenceReportingMetadata();
    OUTLINED_FUNCTION_16_2();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  (*(v8 + 8))(v2, v6);
  OUTLINED_FUNCTION_55_0();
  OUTLINED_FUNCTION_47();
}

void AppleIntelligenceInferenceEvent.init(from:)()
{
  OUTLINED_FUNCTION_48();
  v93 = v0;
  v4 = v3;
  v89 = v5;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s26AppleIntelligenceReporting14UUIDIdentifierVSgMd, &_s26AppleIntelligenceReporting14UUIDIdentifierVSgMR) - 8) + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_7_2();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v86 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v86 - v16;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE14InferenceEventV10CodingKeys33_946FD55AF52EA8CE02E29C37303113CALLOGMd, &_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE14InferenceEventV10CodingKeys33_946FD55AF52EA8CE02E29C37303113CALLOGMR);
  OUTLINED_FUNCTION_1(v91);
  v19 = v18;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_12_0();
  v94 = type metadata accessor for AppleIntelligenceInferenceEvent(0);
  v23 = OUTLINED_FUNCTION_9(v94);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_2();
  v95 = (v27 - v26);
  v29 = v4[3];
  v28 = v4[4];
  v92 = v4;
  v30 = OUTLINED_FUNCTION_106();
  OUTLINED_FUNCTION_28_0(v30, v31);
  lazy protocol witness table accessor for type AppleIntelligenceInferenceEvent.CodingKeys and conformance AppleIntelligenceInferenceEvent.CodingKeys();
  v90 = v2;
  v32 = v93;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v32)
  {
    v93 = v32;
    v35 = 0;
    LODWORD(v36) = 0;
    v37 = 0;
    LODWORD(v38) = 0;
    v39 = 0;
    LODWORD(v40) = 0;
    LODWORD(v41) = 0;
    LODWORD(v89) = 0;
    LODWORD(v90) = 0;
    LODWORD(v91) = 0;
  }

  else
  {
    v33 = v1;
    v93 = v14;
    v87 = v11;
    v88 = v19;
    LOBYTE(v97) = 0;
    v38 = v90;
    v36 = v91;
    v34 = KeyedDecodingContainer.decode(_:forKey:)();
    v40 = v95;
    *v95 = v34;
    v40[1] = v52;
    v53 = type metadata accessor for UUID();
    LOBYTE(v97) = 1;
    OUTLINED_FUNCTION_3_4();
    v37 = lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent and conformance AppleIntelligenceAssetDeliveryEvent(v54);
    OUTLINED_FUNCTION_55_2();
    v86[1] = v53;
    outlined init with take of UUID?(v17, v40 + v94[5], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    LOBYTE(v97) = 2;
    v55 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v56 = (v40 + v94[6]);
    *v56 = v55;
    v56[1] = v57;
    type metadata accessor for UUIDIdentifier();
    LOBYTE(v97) = 3;
    OUTLINED_FUNCTION_23_2();
    lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent and conformance AppleIntelligenceAssetDeliveryEvent(v58);
    OUTLINED_FUNCTION_47_2();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    outlined init with take of UUID?(v33, v40 + v94[7], &_s26AppleIntelligenceReporting14UUIDIdentifierVSgMd, &_s26AppleIntelligenceReporting14UUIDIdentifierVSgMR);
    LOBYTE(v97) = 4;
    v41 = v93;
    OUTLINED_FUNCTION_55_2();
    outlined init with take of UUID?(v41, v40 + v94[8], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    LOBYTE(v97) = 5;
    v59 = v87;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    outlined init with take of UUID?(v59, v40 + v94[9], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay26AppleIntelligenceReporting07GeneralaB5ErrorCGMd, &_sSay26AppleIntelligenceReporting07GeneralaB5ErrorCGMR);
    LOBYTE(v96) = 6;
    OUTLINED_FUNCTION_26_2();
    _sSay26AppleIntelligenceReporting07GeneralaB5ErrorCGSayxGSEsSERzlWlTm_1(v60);
    OUTLINED_FUNCTION_47_2();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v40 + v94[10]) = v97;
    lazy protocol witness table accessor for type AppleIntelligenceUseCase and conformance AppleIntelligenceUseCase();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v93 = 0;
    v61 = v88;
    v62 = (v40 + v94[11]);
    v63 = v98;
    *v62 = v97;
    v62[1] = v63;
    v64 = v100;
    v62[2] = v99;
    v62[3] = v64;
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay26AppleIntelligenceReporting0aB7UseCaseVGMd, &_sSay26AppleIntelligenceReporting0aB7UseCaseVGMR);
    lazy protocol witness table accessor for type [AppleIntelligenceUseCase] and conformance <A> [A](&lazy protocol witness table cache variable for type [AppleIntelligenceUseCase] and conformance <A> [A]);
    OUTLINED_FUNCTION_47_2();
    v65 = v93;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v93 = v65;
    if (!v65)
    {
      *(v95 + v94[12]) = v96;
      LOBYTE(v96) = 9;
      v66 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
      v93 = 0;
      OUTLINED_FUNCTION_63_1(v66, v67, v94[13]);
      v68 = OUTLINED_FUNCTION_37_1(10);
      v93 = 0;
      OUTLINED_FUNCTION_63_1(v68, v69, v94[14]);
      v70 = OUTLINED_FUNCTION_37_1(11);
      v93 = 0;
      OUTLINED_FUNCTION_63_1(v70, v71, v94[15]);
      v72 = OUTLINED_FUNCTION_37_1(12);
      v93 = 0;
      OUTLINED_FUNCTION_63_1(v72, v73, v94[16]);
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay26AppleIntelligenceReporting0aB5AssetVGMd, &_sSay26AppleIntelligenceReporting0aB5AssetVGMR);
      lazy protocol witness table accessor for type [AppleIntelligenceAsset] and conformance <A> [A](&lazy protocol witness table cache variable for type [AppleIntelligenceAsset] and conformance <A> [A]);
      LODWORD(v38) = v90;
      v74 = v93;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v93 = v74;
      if (v74)
      {
        v75 = OUTLINED_FUNCTION_10_3();
        v76(v75);
        __swift_destroy_boxed_opaque_existential_1(v92);
        LODWORD(v92) = 0;
        OUTLINED_FUNCTION_0_4();
        OUTLINED_FUNCTION_29_2(v77);
        v42 = 1;
        v35 = 1;
      }

      else
      {
        *(v95 + v94[17]) = v96;
        lazy protocol witness table accessor for type AppleIntelligenceReportingMetadata and conformance AppleIntelligenceReportingMetadata();
        LODWORD(v38) = v90;
        v78 = v93;
        KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
        v93 = v78;
        if (!v78)
        {
          v83 = OUTLINED_FUNCTION_10_3();
          v84(v83);
          v85 = v95;
          *(v95 + v94[18]) = v96;
          outlined init with copy of AppleIntelligenceEvent(v85, v89);
          __swift_destroy_boxed_opaque_existential_1(v92);
          outlined destroy of AppleIntelligenceAssetDeliveryEvent(v85, type metadata accessor for AppleIntelligenceInferenceEvent);
          goto LABEL_34;
        }

        v79 = OUTLINED_FUNCTION_10_3();
        v80(v79);
        __swift_destroy_boxed_opaque_existential_1(v92);
        OUTLINED_FUNCTION_0_4();
        OUTLINED_FUNCTION_29_2(v81);
        v42 = 1;
        v35 = 1;
        LODWORD(v92) = v82;
      }

LABEL_6:
      v43 = v95[1];

      if (v36)
      {
        goto LABEL_7;
      }

      goto LABEL_21;
    }

    (*(v61 + 8))(v38, v36);
    LODWORD(v90) = 0;
    LODWORD(v91) = 0;
    v35 = 1;
    OUTLINED_FUNCTION_0_4();
  }

  __swift_destroy_boxed_opaque_existential_1(v92);
  if (v35)
  {
    LODWORD(v17) = 0;
    v42 = 0;
    v35 = 0;
    LODWORD(v92) = 0;
    goto LABEL_6;
  }

  LODWORD(v92) = 0;
  v42 = 0;
  LODWORD(v17) = 0;
  if (v36)
  {
LABEL_7:
    v44 = v95;
    outlined destroy of (AppleIntelligenceAssetDeliveryEvent.EventType, AppleIntelligenceAssetDeliveryEvent.EventType)(v95 + v94[5], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if ((v37 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  v44 = v95;
  if (!v37)
  {
LABEL_8:
    v45 = v94;
    if (v38)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  v45 = v94;
  OUTLINED_FUNCTION_58_1(v94[6]);
  if (v38)
  {
LABEL_9:
    outlined destroy of (AppleIntelligenceAssetDeliveryEvent.EventType, AppleIntelligenceAssetDeliveryEvent.EventType)(v44 + v45[7], &_s26AppleIntelligenceReporting14UUIDIdentifierVSgMd, &_s26AppleIntelligenceReporting14UUIDIdentifierVSgMR);
    if ((v39 & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  if (!v39)
  {
LABEL_10:
    if (v40)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  outlined destroy of (AppleIntelligenceAssetDeliveryEvent.EventType, AppleIntelligenceAssetDeliveryEvent.EventType)(v44 + v45[8], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if (v40)
  {
LABEL_11:
    outlined destroy of (AppleIntelligenceAssetDeliveryEvent.EventType, AppleIntelligenceAssetDeliveryEvent.EventType)(v44 + v45[9], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if ((v41 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  if (!v41)
  {
LABEL_12:
    if (v89)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_26:
  v49 = *(v44 + v45[10]);

  if (v89)
  {
LABEL_13:
    v46 = (v44 + v45[11]);
    v47 = v46[1];
    v97 = *v46;
    v98 = v47;
    v48 = v46[3];
    v99 = v46[2];
    v100 = v48;
    outlined destroy of (AppleIntelligenceAssetDeliveryEvent.EventType, AppleIntelligenceAssetDeliveryEvent.EventType)(&v97, &_s26AppleIntelligenceReporting0aB7UseCaseVSgMd, &_s26AppleIntelligenceReporting0aB7UseCaseVSgMR);
    if ((v90 & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_28;
  }

LABEL_27:
  if (!v90)
  {
LABEL_14:
    if (v91)
    {
      goto LABEL_15;
    }

    goto LABEL_29;
  }

LABEL_28:
  v50 = *(v44 + v45[12]);

  if (v91)
  {
LABEL_15:
    OUTLINED_FUNCTION_58_1(v45[13]);
    if ((v17 & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_30;
  }

LABEL_29:
  if (!v17)
  {
LABEL_16:
    if (v42)
    {
      goto LABEL_17;
    }

    goto LABEL_31;
  }

LABEL_30:
  OUTLINED_FUNCTION_58_1(v45[14]);
  if (v42)
  {
LABEL_17:
    OUTLINED_FUNCTION_58_1(v45[15]);
    if ((v35 & 1) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_32;
  }

LABEL_31:
  if (!v35)
  {
LABEL_18:
    if (!v92)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

LABEL_32:
  OUTLINED_FUNCTION_58_1(v45[16]);
  if (v92)
  {
LABEL_33:
    v51 = *(v44 + v45[17]);
  }

LABEL_34:
  OUTLINED_FUNCTION_47();
}

uint64_t AppleIntelligenceAsset.internalAssetIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_50();
}

uint64_t AppleIntelligenceAsset.internalVersion.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_50();
}

uint64_t AppleIntelligenceAsset.toReportingAsset.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  AppleIntelligenceReportingAsset.init()();

  AppleIntelligenceReportingAsset.assetIdentifier.setter();

  return AppleIntelligenceReportingAsset.version.setter();
}

uint64_t AppleIntelligenceAsset.description.getter()
{
  v1 = *v0;
  v2 = v0[3];
  if (v2)
  {
    v3 = v0[2];
    v6 = *v0;
    v7 = v0[1];

    MEMORY[0x1C68E25F0](44, 0xE100000000000000);
    MEMORY[0x1C68E25F0](v3, v2);

    return v6;
  }

  else
  {
    v4 = v0[1];
  }

  return v1;
}

uint64_t static AppleIntelligenceAsset.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v7 & 1) != 0))
  {
    if (v3)
    {
      if (v4)
      {
        v9 = v2 == v5 && v3 == v4;
        if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v4)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t AppleIntelligenceAsset.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000017 && 0x80000001C0CDF5D0 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C616E7265746E69 && a2 == 0xEF6E6F6973726556)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

Swift::Int AppleIntelligenceAsset.CodingKeys.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1C68E2B10](a1 & 1);
  return Hasher._finalize()();
}

uint64_t AppleIntelligenceAsset.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x6C616E7265746E69;
  }

  else
  {
    return 0xD000000000000017;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AppleIntelligenceAsset.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = AppleIntelligenceAsset.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AppleIntelligenceAsset.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAsset.CodingKeys and conformance AppleIntelligenceAsset.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AppleIntelligenceAsset.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceAsset.CodingKeys and conformance AppleIntelligenceAsset.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AppleIntelligenceAsset.encode(to:)()
{
  OUTLINED_FUNCTION_48();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE5AssetV10CodingKeys33_946FD55AF52EA8CE02E29C37303113CALLOGMd, &_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE5AssetV10CodingKeys33_946FD55AF52EA8CE02E29C37303113CALLOGMR);
  OUTLINED_FUNCTION_1(v5);
  v15 = v6;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8_2();
  v10 = *v0;
  v11 = v0[1];
  v13 = v0[3];
  v14 = v0[2];
  v12 = v4[4];
  OUTLINED_FUNCTION_28_0(v4, v4[3]);
  lazy protocol witness table accessor for type AppleIntelligenceAsset.CodingKeys and conformance AppleIntelligenceAsset.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  OUTLINED_FUNCTION_39();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    OUTLINED_FUNCTION_77();
    OUTLINED_FUNCTION_39();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  (*(v15 + 8))(v2, v5);
  OUTLINED_FUNCTION_47();
}

void AppleIntelligenceAsset.init(from:)()
{
  OUTLINED_FUNCTION_48();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE5AssetV10CodingKeys33_946FD55AF52EA8CE02E29C37303113CALLOGMd, &_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE5AssetV10CodingKeys33_946FD55AF52EA8CE02E29C37303113CALLOGMR);
  OUTLINED_FUNCTION_1(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_7_2();
  v11 = v2[4];
  OUTLINED_FUNCTION_28_0(v2, v2[3]);
  lazy protocol witness table accessor for type AppleIntelligenceAsset.CodingKeys and conformance AppleIntelligenceAsset.CodingKeys();
  OUTLINED_FUNCTION_39_1();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    v12 = KeyedDecodingContainer.decode(_:forKey:)();
    v14 = v13;
    OUTLINED_FUNCTION_77();
    v15 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v17 = v16;
    v18 = *(v7 + 8);
    v21 = v15;
    v19 = OUTLINED_FUNCTION_50_2();
    v20(v19);
    *v4 = v12;
    v4[1] = v14;
    v4[2] = v21;
    v4[3] = v17;

    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  OUTLINED_FUNCTION_55_0();
  OUTLINED_FUNCTION_47();
}

uint64_t AppleIntelligenceUseCase.internalLocale.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_50();
}

uint64_t AppleIntelligenceUseCase.useCaseIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_50();
}

uint64_t AppleIntelligenceUseCase.countryCode.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return OUTLINED_FUNCTION_50();
}

uint64_t AppleIntelligenceUseCase.init(useCaseIdentifier:parameters:mode:locale:countryCode:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 28) = BYTE4(a4) & 1;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  return result;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceEvent.CodingKeys and conformance AppleIntelligenceEvent.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceEvent.CodingKeys and conformance AppleIntelligenceEvent.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceEvent.CodingKeys and conformance AppleIntelligenceEvent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceEvent.CodingKeys and conformance AppleIntelligenceEvent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceEvent.CodingKeys and conformance AppleIntelligenceEvent.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceEvent.CodingKeys and conformance AppleIntelligenceEvent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceEvent.CodingKeys and conformance AppleIntelligenceEvent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceEvent.CodingKeys and conformance AppleIntelligenceEvent.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceEvent.CodingKeys and conformance AppleIntelligenceEvent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceEvent.CodingKeys and conformance AppleIntelligenceEvent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceEvent.CodingKeys and conformance AppleIntelligenceEvent.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceEvent.CodingKeys and conformance AppleIntelligenceEvent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceEvent.CodingKeys and conformance AppleIntelligenceEvent.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceEvent.AssetDeliveryCodingKeys and conformance AppleIntelligenceEvent.AssetDeliveryCodingKeys()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceEvent.AssetDeliveryCodingKeys and conformance AppleIntelligenceEvent.AssetDeliveryCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceEvent.AssetDeliveryCodingKeys and conformance AppleIntelligenceEvent.AssetDeliveryCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceEvent.AssetDeliveryCodingKeys and conformance AppleIntelligenceEvent.AssetDeliveryCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceEvent.AssetDeliveryCodingKeys and conformance AppleIntelligenceEvent.AssetDeliveryCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceEvent.AssetDeliveryCodingKeys and conformance AppleIntelligenceEvent.AssetDeliveryCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceEvent.AssetDeliveryCodingKeys and conformance AppleIntelligenceEvent.AssetDeliveryCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceEvent.AssetDeliveryCodingKeys and conformance AppleIntelligenceEvent.AssetDeliveryCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceEvent.AssetDeliveryCodingKeys and conformance AppleIntelligenceEvent.AssetDeliveryCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceEvent.AssetDeliveryCodingKeys and conformance AppleIntelligenceEvent.AssetDeliveryCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceEvent.AssetDeliveryCodingKeys and conformance AppleIntelligenceEvent.AssetDeliveryCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceEvent.AssetDeliveryCodingKeys and conformance AppleIntelligenceEvent.AssetDeliveryCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceEvent.AssetDeliveryCodingKeys and conformance AppleIntelligenceEvent.AssetDeliveryCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceEvent.InferenceCodingKeys and conformance AppleIntelligenceEvent.InferenceCodingKeys()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceEvent.InferenceCodingKeys and conformance AppleIntelligenceEvent.InferenceCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceEvent.InferenceCodingKeys and conformance AppleIntelligenceEvent.InferenceCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceEvent.InferenceCodingKeys and conformance AppleIntelligenceEvent.InferenceCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceEvent.InferenceCodingKeys and conformance AppleIntelligenceEvent.InferenceCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceEvent.InferenceCodingKeys and conformance AppleIntelligenceEvent.InferenceCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceEvent.InferenceCodingKeys and conformance AppleIntelligenceEvent.InferenceCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceEvent.InferenceCodingKeys and conformance AppleIntelligenceEvent.InferenceCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceEvent.InferenceCodingKeys and conformance AppleIntelligenceEvent.InferenceCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceEvent.InferenceCodingKeys and conformance AppleIntelligenceEvent.InferenceCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceEvent.InferenceCodingKeys and conformance AppleIntelligenceEvent.InferenceCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceEvent.InferenceCodingKeys and conformance AppleIntelligenceEvent.InferenceCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceEvent.InferenceCodingKeys and conformance AppleIntelligenceEvent.InferenceCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent and conformance AppleIntelligenceAssetDeliveryEvent(uint64_t a1)
{
  result = OUTLINED_FUNCTION_53_2(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceEvent.MinimalInferenceCodingKeys and conformance AppleIntelligenceEvent.MinimalInferenceCodingKeys()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceEvent.MinimalInferenceCodingKeys and conformance AppleIntelligenceEvent.MinimalInferenceCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceEvent.MinimalInferenceCodingKeys and conformance AppleIntelligenceEvent.MinimalInferenceCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceEvent.MinimalInferenceCodingKeys and conformance AppleIntelligenceEvent.MinimalInferenceCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceEvent.MinimalInferenceCodingKeys and conformance AppleIntelligenceEvent.MinimalInferenceCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceEvent.MinimalInferenceCodingKeys and conformance AppleIntelligenceEvent.MinimalInferenceCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceEvent.MinimalInferenceCodingKeys and conformance AppleIntelligenceEvent.MinimalInferenceCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceEvent.MinimalInferenceCodingKeys and conformance AppleIntelligenceEvent.MinimalInferenceCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceEvent.MinimalInferenceCodingKeys and conformance AppleIntelligenceEvent.MinimalInferenceCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceEvent.MinimalInferenceCodingKeys and conformance AppleIntelligenceEvent.MinimalInferenceCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceEvent.MinimalInferenceCodingKeys and conformance AppleIntelligenceEvent.MinimalInferenceCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceEvent.MinimalInferenceCodingKeys and conformance AppleIntelligenceEvent.MinimalInferenceCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceEvent.MinimalInferenceCodingKeys and conformance AppleIntelligenceEvent.MinimalInferenceCodingKeys);
  }

  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in AppleIntelligenceUseCase.toReportingUseCase.getter()
{

  AppleIntelligenceReportingAsset.assetIdentifier.setter();

  return AppleIntelligenceReportingAsset.version.setter();
}

BOOL static AppleIntelligenceUseCase.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 28);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 28);
  v11 = *(a2 + 32);
  v10 = *(a2 + 40);
  v12 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  v17 = *(a2 + 48);
  v18 = *(a1 + 48);
  v19 = *(a2 + 56);
  v20 = *(a1 + 56);
  if (!v12 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_SSTt1g5(v2, v7) & 1) == 0)
  {
    return 0;
  }

  if (v4)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (v3 == v8)
    {
      v13 = v9;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      return 0;
    }
  }

  if (v6)
  {
    if (!v10)
    {
      return 0;
    }

    v14 = v5 == v11 && v6 == v10;
    if (!v14 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  if (v20)
  {
    if (!v19)
    {
      return 0;
    }

    v15 = v18 == v17 && v20 == v19;
    return v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0;
  }

  return !v19;
}

uint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_SSTt1g5(uint64_t result, uint64_t a2)
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
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_13:
    v12 = v9 | (v3 << 6);
    v13 = result;
    v14 = (*(result + 48) + 16 * v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + 16 * v12);
    v19 = *v17;
    v18 = v17[1];

    v20 = specialized __RawDictionaryStorage.find<A>(_:)();
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    if (*v23 == v19 && v23[1] == v18)
    {

      result = v13;
      v7 = v26;
    }

    else
    {
      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

      result = v13;
      v7 = v26;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t AppleIntelligenceUseCase.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000019 && 0x80000001C0CDF4B0 == a2;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000012 && 0x80000001C0CDF5F0 == a2;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6C616E7265746E69 && a2 == 0xEC00000065646F4DLL;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6C616E7265746E69 && a2 == 0xEE00656C61636F4CLL;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD000000000000013 && 0x80000001C0CDF610 == a2)
        {

          return 4;
        }

        else
        {
          v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t AppleIntelligenceUseCase.CodingKeys.stringValue.getter(char a1)
{
  result = 0x6C616E7265746E69;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
    case 3:
      return result;
    case 4:
      result = 0xD000000000000013;
      break;
    default:
      result = 0xD000000000000019;
      break;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AppleIntelligenceUseCase.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = AppleIntelligenceUseCase.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance AppleIntelligenceUseCase.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = AppleIntelligenceUseCase.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AppleIntelligenceUseCase.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceUseCase.CodingKeys and conformance AppleIntelligenceUseCase.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AppleIntelligenceUseCase.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceUseCase.CodingKeys and conformance AppleIntelligenceUseCase.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AppleIntelligenceUseCase.encode(to:)()
{
  OUTLINED_FUNCTION_48();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE7UseCaseV10CodingKeys33_946FD55AF52EA8CE02E29C37303113CALLOGMd, &_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0dE7UseCaseV10CodingKeys33_946FD55AF52EA8CE02E29C37303113CALLOGMR);
  OUTLINED_FUNCTION_1(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8_2();
  v11 = *v0;
  v12 = v0[1];
  v19 = *(v0 + 6);
  v20 = v0[2];
  v18 = *(v0 + 28);
  v16 = v0[5];
  v17 = v0[4];
  v14 = v0[6];
  v15 = v0[7];
  v13 = v4[4];
  OUTLINED_FUNCTION_28_0(v4, v4[3]);
  lazy protocol witness table accessor for type AppleIntelligenceUseCase.CodingKeys and conformance AppleIntelligenceUseCase.CodingKeys();
  OUTLINED_FUNCTION_39_1();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    OUTLINED_FUNCTION_77();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
    _sSDyS2SGSDyxq_GSEsSERzSER_rlWlTm_0(&lazy protocol witness table cache variable for type [String : String] and conformance <> [A : B]);
    OUTLINED_FUNCTION_39();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    OUTLINED_FUNCTION_39();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_39();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_39();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  (*(v7 + 8))(v2, v5);
  OUTLINED_FUNCTION_47();
}

void AppleIntelligenceUseCase.init(from:)()
{
  OUTLINED_FUNCTION_48();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE7UseCaseV10CodingKeys33_946FD55AF52EA8CE02E29C37303113CALLOGMd, &_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0dE7UseCaseV10CodingKeys33_946FD55AF52EA8CE02E29C37303113CALLOGMR);
  OUTLINED_FUNCTION_1(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_12_0();
  v12 = v3[4];
  OUTLINED_FUNCTION_28_0(v3, v3[3]);
  lazy protocol witness table accessor for type AppleIntelligenceUseCase.CodingKeys and conformance AppleIntelligenceUseCase.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  else
  {
    LOBYTE(v32[0]) = 0;
    OUTLINED_FUNCTION_41_2();
    v13 = KeyedDecodingContainer.decode(_:forKey:)();
    v27 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
    LOBYTE(v28) = 1;
    _sSDyS2SGSDyxq_GSEsSERzSER_rlWlTm_0(&lazy protocol witness table cache variable for type [String : String] and conformance <> [A : B]);
    OUTLINED_FUNCTION_28_2();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v26 = v32[0];
    OUTLINED_FUNCTION_41_2();
    v15 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v39 = BYTE4(v15) & 1;
    LOBYTE(v32[0]) = 3;
    v24 = v15;
    OUTLINED_FUNCTION_41_2();
    v23 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v25 = v16;
    OUTLINED_FUNCTION_41_2();
    v17 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v18 = v1;
    v20 = v19;
    (*(v8 + 8))(v18, v6);
    *&v28 = v13;
    *(&v28 + 1) = v27;
    *&v29 = v26;
    DWORD2(v29) = v24;
    BYTE12(v29) = v39;
    *&v30 = v23;
    *(&v30 + 1) = v25;
    *&v31 = v17;
    *(&v31 + 1) = v20;
    v21 = v31;
    v5[2] = v30;
    v5[3] = v21;
    v22 = v29;
    *v5 = v28;
    v5[1] = v22;
    outlined init with copy of AppleIntelligenceUseCase(&v28, v32);
    __swift_destroy_boxed_opaque_existential_1(v3);
    v32[0] = v13;
    v32[1] = v27;
    v32[2] = v26;
    v33 = v24;
    v34 = v39;
    v35 = v23;
    v36 = v25;
    v37 = v17;
    v38 = v20;
    outlined destroy of AppleIntelligenceUseCase(v32);
  }

  OUTLINED_FUNCTION_55_0();
  OUTLINED_FUNCTION_47();
}

uint64_t AppleIntelligenceReportingMetadata.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6669636570736E75 && a2 == 0xEB00000000646569)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AppleIntelligenceReportingMetadata.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = AppleIntelligenceReportingMetadata.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AppleIntelligenceReportingMetadata.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceReportingMetadata.CodingKeys and conformance AppleIntelligenceReportingMetadata.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AppleIntelligenceReportingMetadata.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceReportingMetadata.CodingKeys and conformance AppleIntelligenceReportingMetadata.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AppleIntelligenceReportingMetadata.UnspecifiedCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceReportingMetadata.UnspecifiedCodingKeys and conformance AppleIntelligenceReportingMetadata.UnspecifiedCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AppleIntelligenceReportingMetadata.UnspecifiedCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceReportingMetadata.UnspecifiedCodingKeys and conformance AppleIntelligenceReportingMetadata.UnspecifiedCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AppleIntelligenceReportingMetadata.encode(to:)()
{
  OUTLINED_FUNCTION_48();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0deF8MetadataO21UnspecifiedCodingKeys33_946FD55AF52EA8CE02E29C37303113CALLOGMd, &_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0deF8MetadataO21UnspecifiedCodingKeys33_946FD55AF52EA8CE02E29C37303113CALLOGMR);
  OUTLINED_FUNCTION_1(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_14();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0deF8MetadataO10CodingKeys33_946FD55AF52EA8CE02E29C37303113CALLOGMd, &_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting0deF8MetadataO10CodingKeys33_946FD55AF52EA8CE02E29C37303113CALLOGMR);
  OUTLINED_FUNCTION_1(v9);
  v11 = v10;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_7_2();
  v15 = v2[4];
  OUTLINED_FUNCTION_28_0(v2, v2[3]);
  lazy protocol witness table accessor for type AppleIntelligenceReportingMetadata.CodingKeys and conformance AppleIntelligenceReportingMetadata.CodingKeys();
  OUTLINED_FUNCTION_39_1();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  lazy protocol witness table accessor for type AppleIntelligenceReportingMetadata.UnspecifiedCodingKeys and conformance AppleIntelligenceReportingMetadata.UnspecifiedCodingKeys();
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  (*(v5 + 8))(v0, v3);
  v16 = *(v11 + 8);
  v17 = OUTLINED_FUNCTION_50_2();
  v18(v17);
  OUTLINED_FUNCTION_47();
}

Swift::Int AppleIntelligenceReportingMetadata.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x1C68E2B10](0);
  return Hasher._finalize()();
}

void AppleIntelligenceReportingMetadata.init(from:)()
{
  OUTLINED_FUNCTION_48();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0deF8MetadataO21UnspecifiedCodingKeys33_946FD55AF52EA8CE02E29C37303113CALLOGMd, &_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0deF8MetadataO21UnspecifiedCodingKeys33_946FD55AF52EA8CE02E29C37303113CALLOGMR);
  OUTLINED_FUNCTION_1(v4);
  v41 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_20();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0deF8MetadataO10CodingKeys33_946FD55AF52EA8CE02E29C37303113CALLOGMd, &_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting0deF8MetadataO10CodingKeys33_946FD55AF52EA8CE02E29C37303113CALLOGMR);
  OUTLINED_FUNCTION_1(v9);
  v42 = v10;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v38 - v14;
  v16 = v3[4];
  OUTLINED_FUNCTION_28_0(v3, v3[3]);
  lazy protocol witness table accessor for type AppleIntelligenceReportingMetadata.CodingKeys and conformance AppleIntelligenceReportingMetadata.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    goto LABEL_9;
  }

  v39 = v0;
  v40 = v3;
  v17 = KeyedDecodingContainer.allKeys.getter();
  _ss12_SliceBufferV7_buffer19shiftedToStartIndexAByxGs016_ContiguousArrayB0VyxG_SitcfC26AppleIntelligenceReporting0jK18AssetDeliveryEventV29ModelCatalogSubscriptionStateV0R6ActionO10CodingKeys33_6F138B03DD9B0984CD2C748D071535E9LLO_Tt1g5(v17, 0);
  v21 = v15;
  if (v19 == v20 >> 1)
  {
    v41 = v18;
LABEL_8:
    v31 = v9;
    v32 = type metadata accessor for DecodingError();
    swift_allocError();
    v34 = v33;
    v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
    *v34 = &type metadata for AppleIntelligenceReportingMetadata;
    v36 = KeyedDecodingContainer.codingPath.getter();
    OUTLINED_FUNCTION_65(v36);
    (*(*(v32 - 8) + 104))(v34, *MEMORY[0x1E69E6AF8], v32);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v42 + 8))(v21, v31);
    v3 = v40;
LABEL_9:
    v37 = v3;
    goto LABEL_10;
  }

  if (v19 < (v20 >> 1))
  {
    v22 = specialized ArraySlice.subscript.getter(v19 + 1);
    v24 = v23;
    v26 = v25;
    swift_unknownObjectRelease();
    v27 = v24 == v26 >> 1;
    v28 = v40;
    v29 = v41;
    if (v27)
    {
      lazy protocol witness table accessor for type AppleIntelligenceReportingMetadata.UnspecifiedCodingKeys and conformance AppleIntelligenceReportingMetadata.UnspecifiedCodingKeys();
      v30 = v39;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      swift_unknownObjectRelease();
      (*(v29 + 8))(v30, v4);
      (*(v42 + 8))(v21, v9);
      v37 = v28;
LABEL_10:
      __swift_destroy_boxed_opaque_existential_1(v37);
      OUTLINED_FUNCTION_47();
      return;
    }

    v41 = v22;
    goto LABEL_8;
  }

  __break(1u);
}

uint64_t MinimalInferenceEvent.stepIdentifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_50();
}

uint64_t MinimalInferenceEvent.internalModelManagerRequestIdentifier.getter()
{
  v0 = OUTLINED_FUNCTION_35_1();
  v1 = type metadata accessor for MinimalInferenceEvent(v0);
  return OUTLINED_FUNCTION_57_0(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR, *(v1 + 24));
}

uint64_t MinimalInferenceEvent.internalErrors.getter()
{
  v1 = *(v0 + *(type metadata accessor for MinimalInferenceEvent(0) + 28));
}

uint64_t MinimalInferenceEvent.init(subsystem:stepIdentifier:modelManagerRequestIdentifier:errors:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = a1;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  v10 = type metadata accessor for MinimalInferenceEvent(0);
  outlined init with copy of UUID?(a5, a7 + *(v10 + 24), &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v11 = *(a6 + 16);
  if (v11)
  {
    v21 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    v12 = a6 + 32;
    do
    {
      outlined init with copy of any Source<Self.Stream == A>(v12, v18);
      v13 = v19;
      v14 = v20;
      __swift_project_boxed_opaque_existential_1(v18, v19);
      AppleIntelligenceError.toGeneral.getter(v13, v14);
      __swift_destroy_boxed_opaque_existential_1(v18);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v15 = *(v21 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v12 += 40;
      --v11;
    }

    while (v11);
    outlined destroy of (AppleIntelligenceAssetDeliveryEvent.EventType, AppleIntelligenceAssetDeliveryEvent.EventType)(a5, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);

    v17 = v21;
  }

  else
  {

    result = outlined destroy of (AppleIntelligenceAssetDeliveryEvent.EventType, AppleIntelligenceAssetDeliveryEvent.EventType)(a5, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v17 = MEMORY[0x1E69E7CC0];
  }

  *(a7 + *(v10 + 28)) = v17;
  return result;
}

uint64_t MinimalInferenceEvent.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x80000001C0CDF3D0 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000016 && 0x80000001C0CDF410 == a2;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000025 && 0x80000001C0CDF480 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6C616E7265746E69 && a2 == 0xEE0073726F727245)
      {

        return 3;
      }

      else
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t MinimalInferenceEvent.CodingKeys.stringValue.getter(char a1)
{
  result = 0x6C616E7265746E69;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000016;
      break;
    case 2:
      result = 0xD000000000000025;
      break;
    case 3:
      return result;
    default:
      result = 0xD000000000000011;
      break;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MinimalInferenceEvent.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = MinimalInferenceEvent.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MinimalInferenceEvent.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MinimalInferenceEvent.CodingKeys and conformance MinimalInferenceEvent.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MinimalInferenceEvent.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MinimalInferenceEvent.CodingKeys and conformance MinimalInferenceEvent.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MinimalInferenceEvent.encode(to:)(void *a1)
{
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting21MinimalInferenceEventV10CodingKeys33_946FD55AF52EA8CE02E29C37303113CALLOGMd, &_ss22KeyedEncodingContainerVy26AppleIntelligenceReporting21MinimalInferenceEventV10CodingKeys33_946FD55AF52EA8CE02E29C37303113CALLOGMR);
  OUTLINED_FUNCTION_1(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_8_2();
  v12 = a1[4];
  OUTLINED_FUNCTION_28_0(a1, a1[3]);
  lazy protocol witness table accessor for type MinimalInferenceEvent.CodingKeys and conformance MinimalInferenceEvent.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = *v4;
  v14 = v4[1];
  OUTLINED_FUNCTION_39();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v15 = v4[2];
    v16 = v4[3];
    OUTLINED_FUNCTION_77();
    OUTLINED_FUNCTION_39();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v17 = type metadata accessor for MinimalInferenceEvent(0);
    v18 = *(v17 + 24);
    type metadata accessor for UUID();
    OUTLINED_FUNCTION_3_4();
    lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent and conformance AppleIntelligenceAssetDeliveryEvent(v19);
    OUTLINED_FUNCTION_39();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v22 = *(v4 + *(v17 + 28));
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay26AppleIntelligenceReporting07GeneralaB5ErrorCGMd, &_sSay26AppleIntelligenceReporting07GeneralaB5ErrorCGMR);
    OUTLINED_FUNCTION_20_2();
    _sSay26AppleIntelligenceReporting07GeneralaB5ErrorCGSayxGSEsSERzlWlTm_1(v20);
    OUTLINED_FUNCTION_39();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v3, v6);
}

void MinimalInferenceEvent.init(from:)()
{
  OUTLINED_FUNCTION_48();
  v3 = v2;
  v29 = v4;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8) + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_20();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting21MinimalInferenceEventV10CodingKeys33_946FD55AF52EA8CE02E29C37303113CALLOGMd, &_ss22KeyedDecodingContainerVy26AppleIntelligenceReporting21MinimalInferenceEventV10CodingKeys33_946FD55AF52EA8CE02E29C37303113CALLOGMR);
  OUTLINED_FUNCTION_1(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_12_0();
  v11 = type metadata accessor for MinimalInferenceEvent(0);
  v12 = OUTLINED_FUNCTION_9(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2();
  v17 = (v16 - v15);
  v19 = v3[3];
  v18 = v3[4];
  v20 = OUTLINED_FUNCTION_50_2();
  OUTLINED_FUNCTION_28_0(v20, v21);
  lazy protocol witness table accessor for type MinimalInferenceEvent.CodingKeys and conformance MinimalInferenceEvent.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  else
  {
    OUTLINED_FUNCTION_41_2();
    *v17 = KeyedDecodingContainer.decode(_:forKey:)();
    v17[1] = v22;
    OUTLINED_FUNCTION_77();
    OUTLINED_FUNCTION_41_2();
    v17[2] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v17[3] = v23;
    type metadata accessor for UUID();
    OUTLINED_FUNCTION_3_4();
    lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent and conformance AppleIntelligenceAssetDeliveryEvent(v24);
    OUTLINED_FUNCTION_28_2();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    outlined init with take of UUID?(v0, v17 + *(v11 + 24), &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay26AppleIntelligenceReporting07GeneralaB5ErrorCGMd, &_sSay26AppleIntelligenceReporting07GeneralaB5ErrorCGMR);
    OUTLINED_FUNCTION_26_2();
    _sSay26AppleIntelligenceReporting07GeneralaB5ErrorCGSayxGSEsSERzlWlTm_1(v25);
    OUTLINED_FUNCTION_28_2();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v26 = OUTLINED_FUNCTION_17_2();
    v27(v26);
    *(v17 + *(v11 + 28)) = v30;
    outlined init with copy of AppleIntelligenceEvent(v17, v29);
    __swift_destroy_boxed_opaque_existential_1(v3);
    OUTLINED_FUNCTION_21_1();
    outlined destroy of AppleIntelligenceAssetDeliveryEvent(v17, v28);
  }

  OUTLINED_FUNCTION_47();
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceInferenceEvent.CodingKeys and conformance AppleIntelligenceInferenceEvent.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceInferenceEvent.CodingKeys and conformance AppleIntelligenceInferenceEvent.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceInferenceEvent.CodingKeys and conformance AppleIntelligenceInferenceEvent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceInferenceEvent.CodingKeys and conformance AppleIntelligenceInferenceEvent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceInferenceEvent.CodingKeys and conformance AppleIntelligenceInferenceEvent.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceInferenceEvent.CodingKeys and conformance AppleIntelligenceInferenceEvent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceInferenceEvent.CodingKeys and conformance AppleIntelligenceInferenceEvent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceInferenceEvent.CodingKeys and conformance AppleIntelligenceInferenceEvent.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceInferenceEvent.CodingKeys and conformance AppleIntelligenceInferenceEvent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceInferenceEvent.CodingKeys and conformance AppleIntelligenceInferenceEvent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceInferenceEvent.CodingKeys and conformance AppleIntelligenceInferenceEvent.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceInferenceEvent.CodingKeys and conformance AppleIntelligenceInferenceEvent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceInferenceEvent.CodingKeys and conformance AppleIntelligenceInferenceEvent.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [AppleIntelligenceAsset] and conformance <A> [A](uint64_t a1)
{
  result = OUTLINED_FUNCTION_53_2(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay26AppleIntelligenceReporting0aB5AssetVGMd, &_sSay26AppleIntelligenceReporting0aB5AssetVGMR);
    v4();
    OUTLINED_FUNCTION_106();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceAsset and conformance AppleIntelligenceAsset()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAsset and conformance AppleIntelligenceAsset;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAsset and conformance AppleIntelligenceAsset)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAsset and conformance AppleIntelligenceAsset);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAsset and conformance AppleIntelligenceAsset;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAsset and conformance AppleIntelligenceAsset)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAsset and conformance AppleIntelligenceAsset);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceReportingMetadata and conformance AppleIntelligenceReportingMetadata()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceReportingMetadata and conformance AppleIntelligenceReportingMetadata;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceReportingMetadata and conformance AppleIntelligenceReportingMetadata)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceReportingMetadata and conformance AppleIntelligenceReportingMetadata);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceReportingMetadata and conformance AppleIntelligenceReportingMetadata;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceReportingMetadata and conformance AppleIntelligenceReportingMetadata)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceReportingMetadata and conformance AppleIntelligenceReportingMetadata);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceReportingMetadata and conformance AppleIntelligenceReportingMetadata;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceReportingMetadata and conformance AppleIntelligenceReportingMetadata)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceReportingMetadata and conformance AppleIntelligenceReportingMetadata);
  }

  return result;
}

uint64_t outlined init with take of UUID?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_66_1(a1, a2, a3, a4);
  OUTLINED_FUNCTION_9(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_50();
  v9(v8);
  return v4;
}

unint64_t _sSay26AppleIntelligenceReporting07GeneralaB5ErrorCGSayxGSEsSERzlWlTm_1(uint64_t a1)
{
  result = OUTLINED_FUNCTION_53_2(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay26AppleIntelligenceReporting07GeneralaB5ErrorCGMd, &_sSay26AppleIntelligenceReporting07GeneralaB5ErrorCGMR);
    lazy protocol witness table accessor for type AppleIntelligenceAssetDeliveryEvent and conformance AppleIntelligenceAssetDeliveryEvent(v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [AppleIntelligenceUseCase] and conformance <A> [A](uint64_t a1)
{
  result = OUTLINED_FUNCTION_53_2(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay26AppleIntelligenceReporting0aB7UseCaseVGMd, &_sSay26AppleIntelligenceReporting0aB7UseCaseVGMR);
    v4();
    OUTLINED_FUNCTION_106();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceAsset.CodingKeys and conformance AppleIntelligenceAsset.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAsset.CodingKeys and conformance AppleIntelligenceAsset.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAsset.CodingKeys and conformance AppleIntelligenceAsset.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAsset.CodingKeys and conformance AppleIntelligenceAsset.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAsset.CodingKeys and conformance AppleIntelligenceAsset.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAsset.CodingKeys and conformance AppleIntelligenceAsset.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAsset.CodingKeys and conformance AppleIntelligenceAsset.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAsset.CodingKeys and conformance AppleIntelligenceAsset.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAsset.CodingKeys and conformance AppleIntelligenceAsset.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAsset.CodingKeys and conformance AppleIntelligenceAsset.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceAsset.CodingKeys and conformance AppleIntelligenceAsset.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceAsset.CodingKeys and conformance AppleIntelligenceAsset.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceAsset.CodingKeys and conformance AppleIntelligenceAsset.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceUseCase.CodingKeys and conformance AppleIntelligenceUseCase.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceUseCase.CodingKeys and conformance AppleIntelligenceUseCase.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceUseCase.CodingKeys and conformance AppleIntelligenceUseCase.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceUseCase.CodingKeys and conformance AppleIntelligenceUseCase.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceUseCase.CodingKeys and conformance AppleIntelligenceUseCase.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceUseCase.CodingKeys and conformance AppleIntelligenceUseCase.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceUseCase.CodingKeys and conformance AppleIntelligenceUseCase.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceUseCase.CodingKeys and conformance AppleIntelligenceUseCase.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceUseCase.CodingKeys and conformance AppleIntelligenceUseCase.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceUseCase.CodingKeys and conformance AppleIntelligenceUseCase.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceUseCase.CodingKeys and conformance AppleIntelligenceUseCase.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceUseCase.CodingKeys and conformance AppleIntelligenceUseCase.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceUseCase.CodingKeys and conformance AppleIntelligenceUseCase.CodingKeys);
  }

  return result;
}

unint64_t _sSDyS2SGSDyxq_GSEsSERzSER_rlWlTm_0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_53_2(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceReportingMetadata.CodingKeys and conformance AppleIntelligenceReportingMetadata.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceReportingMetadata.CodingKeys and conformance AppleIntelligenceReportingMetadata.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceReportingMetadata.CodingKeys and conformance AppleIntelligenceReportingMetadata.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceReportingMetadata.CodingKeys and conformance AppleIntelligenceReportingMetadata.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceReportingMetadata.CodingKeys and conformance AppleIntelligenceReportingMetadata.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceReportingMetadata.CodingKeys and conformance AppleIntelligenceReportingMetadata.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceReportingMetadata.CodingKeys and conformance AppleIntelligenceReportingMetadata.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceReportingMetadata.CodingKeys and conformance AppleIntelligenceReportingMetadata.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceReportingMetadata.CodingKeys and conformance AppleIntelligenceReportingMetadata.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceReportingMetadata.CodingKeys and conformance AppleIntelligenceReportingMetadata.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceReportingMetadata.CodingKeys and conformance AppleIntelligenceReportingMetadata.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceReportingMetadata.CodingKeys and conformance AppleIntelligenceReportingMetadata.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceReportingMetadata.CodingKeys and conformance AppleIntelligenceReportingMetadata.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppleIntelligenceReportingMetadata.UnspecifiedCodingKeys and conformance AppleIntelligenceReportingMetadata.UnspecifiedCodingKeys()
{
  result = lazy protocol witness table cache variable for type AppleIntelligenceReportingMetadata.UnspecifiedCodingKeys and conformance AppleIntelligenceReportingMetadata.UnspecifiedCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceReportingMetadata.UnspecifiedCodingKeys and conformance AppleIntelligenceReportingMetadata.UnspecifiedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceReportingMetadata.UnspecifiedCodingKeys and conformance AppleIntelligenceReportingMetadata.UnspecifiedCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceReportingMetadata.UnspecifiedCodingKeys and conformance AppleIntelligenceReportingMetadata.UnspecifiedCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceReportingMetadata.UnspecifiedCodingKeys and conformance AppleIntelligenceReportingMetadata.UnspecifiedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceReportingMetadata.UnspecifiedCodingKeys and conformance AppleIntelligenceReportingMetadata.UnspecifiedCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppleIntelligenceReportingMetadata.UnspecifiedCodingKeys and conformance AppleIntelligenceReportingMetadata.UnspecifiedCodingKeys;
  if (!lazy protocol witness table cache variable for type AppleIntelligenceReportingMetadata.UnspecifiedCodingKeys and conformance AppleIntelligenceReportingMetadata.UnspecifiedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppleIntelligenceReportingMetadata.UnspecifiedCodingKeys and conformance AppleIntelligenceReportingMetadata.UnspecifiedCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MinimalInferenceEvent.CodingKeys and conformance MinimalInferenceEvent.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MinimalInferenceEvent.CodingKeys and conformance MinimalInferenceEvent.CodingKeys;
  if (!lazy protocol witness table cache variable for type MinimalInferenceEvent.CodingKeys and conformance MinimalInferenceEvent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MinimalInferenceEvent.CodingKeys and conformance MinimalInferenceEvent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MinimalInferenceEvent.CodingKeys and conformance MinimalInferenceEvent.CodingKeys;
  if (!lazy protocol witness table cache variable for type MinimalInferenceEvent.CodingKeys and conformance MinimalInferenceEvent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MinimalInferenceEvent.CodingKeys and conformance MinimalInferenceEvent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MinimalInferenceEvent.CodingKeys and conformance MinimalInferenceEvent.CodingKeys;
  if (!lazy protocol witness table cache variable for type MinimalInferenceEvent.CodingKeys and conformance MinimalInferenceEvent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MinimalInferenceEvent.CodingKeys and conformance MinimalInferenceEvent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MinimalInferenceEvent.CodingKeys and conformance MinimalInferenceEvent.CodingKeys;
  if (!lazy protocol witness table cache variable for type MinimalInferenceEvent.CodingKeys and conformance MinimalInferenceEvent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MinimalInferenceEvent.CodingKeys and conformance MinimalInferenceEvent.CodingKeys);
  }

  return result;
}

uint64_t type metadata completion function for AppleIntelligenceEvent()
{
  result = type metadata accessor for MinimalInferenceEvent(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for AppleIntelligenceInferenceEvent(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for AppleIntelligenceAssetDeliveryEvent(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t type metadata completion function for AppleIntelligenceInferenceEvent()
{
  type metadata accessor for UUID?(319, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    type metadata accessor for String?(319, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v4 > 0x3F)
    {
      return v3;
    }

    else
    {
      type metadata accessor for UUID?(319, &lazy cache variable for type metadata for UUIDIdentifier?, type metadata accessor for UUIDIdentifier, MEMORY[0x1E69E6720]);
      if (v6 > 0x3F)
      {
        return v5;
      }

      else
      {
        type metadata accessor for UUID?(319, &lazy cache variable for type metadata for [GeneralAppleIntelligenceError], type metadata accessor for GeneralAppleIntelligenceError, MEMORY[0x1E69E62F8]);
        v1 = v7;
        if (v8 <= 0x3F)
        {
          type metadata accessor for String?(319, &lazy cache variable for type metadata for AppleIntelligenceUseCase?, &type metadata for AppleIntelligenceUseCase, MEMORY[0x1E69E6720]);
          v1 = v9;
          if (v10 <= 0x3F)
          {
            type metadata accessor for String?(319, &lazy cache variable for type metadata for [AppleIntelligenceUseCase], &type metadata for AppleIntelligenceUseCase, MEMORY[0x1E69E62F8]);
            v1 = v11;
            if (v12 <= 0x3F)
            {
              type metadata accessor for String?(319, &lazy cache variable for type metadata for [AppleIntelligenceAsset], &type metadata for AppleIntelligenceAsset, MEMORY[0x1E69E62F8]);
              v1 = v13;
              if (v14 <= 0x3F)
              {
                type metadata accessor for String?(319, &lazy cache variable for type metadata for AppleIntelligenceReportingMetadata?, &type metadata for AppleIntelligenceReportingMetadata, MEMORY[0x1E69E6720]);
                v1 = v15;
                if (v16 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                  return 0;
                }
              }
            }
          }
        }
      }
    }
  }

  return v1;
}

void type metadata accessor for UUID?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void type metadata accessor for String?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void type metadata completion function for MinimalInferenceEvent()
{
  type metadata accessor for String?(319, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UUID?(319, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for UUID?(319, &lazy cache variable for type metadata for [GeneralAppleIntelligenceError], type metadata accessor for GeneralAppleIntelligenceError, MEMORY[0x1E69E62F8]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for MinimalInferenceEvent.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for MinimalInferenceEvent.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppleIntelligenceUseCase.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AppleIntelligenceUseCase.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppleIntelligenceAsset.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AppleIntelligenceAsset.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppleIntelligenceInferenceEvent.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF2)
  {
    if (a2 + 14 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 14) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 15;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v5 = v6 - 15;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AppleIntelligenceInferenceEvent.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF1)
  {
    v6 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 14;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppleIntelligenceEvent.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AppleIntelligenceEvent.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t specialized Dictionary.startIndex.getter(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = _HashTable.startBucket.getter();
  v4 = *(a1 + 36);
  return result;
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in AppleIntelligenceUseCase.toReportingUseCase.getter()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  return closure #1 in closure #1 in closure #1 in AppleIntelligenceUseCase.toReportingUseCase.getter();
}

void OUTLINED_FUNCTION_5_4()
{
  *(v0 - 224) = 0;
  *(v0 - 216) = 0;
  *(v0 - 208) = 0;
}

void OUTLINED_FUNCTION_6_4()
{
  *(v0 - 224) = 0;
  *(v0 - 216) = 0;
  *(v0 - 208) = 0;
}

uint64_t OUTLINED_FUNCTION_10_3()
{
  v1 = *(*(v0 - 232) + 8);
  result = *(v0 - 216);
  v3 = *(v0 - 208);
  return result;
}

__n128 OUTLINED_FUNCTION_18_1()
{
  v2 = *(v1 - 224);
  *(v1 - 320) = *(v1 - 240);
  *(v1 - 304) = v2;
  result = *(v1 - 208);
  v4 = *(v0 + 48);
  *(v1 - 288) = result;
  *(v1 - 272) = v4;
  return result;
}

uint64_t OUTLINED_FUNCTION_37_1@<X0>(char a1@<W8>)
{
  *(v1 - 168) = a1;
  v4 = *(v1 - 216);
  v3 = *(v1 - 208);
  v5 = *(v1 - 192);

  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

uint64_t OUTLINED_FUNCTION_49_2()
{
  v1 = *(v0 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t OUTLINED_FUNCTION_51_1@<X0>(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  result = *v2;
  v4 = v2[1];
  return result;
}

uint64_t OUTLINED_FUNCTION_54_2(uint64_t a1)
{

  return outlined destroy of (AppleIntelligenceAssetDeliveryEvent.EventType, AppleIntelligenceAssetDeliveryEvent.EventType)(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_55_2()
{

  return KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
}

uint64_t OUTLINED_FUNCTION_56_1()
{
  v2 = *(v0 - 96);

  return KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t OUTLINED_FUNCTION_57_0@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{

  return outlined init with copy of UUID?(v4 + a3, v3, a1, a2);
}

uint64_t OUTLINED_FUNCTION_58_1@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + a1 + 8);
}

uint64_t OUTLINED_FUNCTION_63_1@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = (v3 + a3);
  *v4 = result;
  v4[1] = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_66_1(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

uint64_t specialized AppleIntelligenceError.description.getter()
{
  v0 = AppleIntelligenceReportingError.descriptionWithoutUnderlying.getter();
  v2 = v1;
  v3 = *(AppleIntelligenceReportingError.underlyingErrors.getter() + 16);

  if (!v3)
  {
    v10 = 0;
    v9 = 0xE000000000000000;
    goto LABEL_5;
  }

  v14 = 14906;
  v15 = 0xE200000000000000;
  v4 = AppleIntelligenceReportingError.underlyingErrors.getter();
  specialized Collection.first.getter(v4, v11);

  if (v12)
  {
    v6 = v13;
    __swift_project_boxed_opaque_existential_1(v11, v12);
    v7 = *(v6 + 24);
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1C68E25F0](v8);

    __swift_destroy_boxed_opaque_existential_1(v11);
    v10 = v14;
    v9 = v15;
LABEL_5:
    v11[0] = v0;
    v11[1] = v2;

    MEMORY[0x1C68E25F0](v10, v9);

    return v11[0];
  }

  __break(1u);
  return result;
}

uint64_t specialized AppleIntelligenceError.errorDescription.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

uint64_t AppleIntelligenceReportingError.rawCode.getter()
{
  outlined init with copy of AppleIntelligenceReportingError(v0, v3);
  result = 4001;
  v2 = 4002;
  switch(v3[40])
  {
    case 1:
      v2 = 4003;
      goto LABEL_4;
    case 2:
      v2 = 4004;
      goto LABEL_4;
    case 3:
      return result;
    default:
LABEL_4:
      outlined destroy of AppleIntelligenceReportingError(v3);
      return v2;
  }
}

unint64_t AppleIntelligenceReportingError.descriptionWithoutUnderlying.getter()
{
  outlined init with copy of AppleIntelligenceReportingError(v1, v7);
  switch(v7[40])
  {
    case 1:
      outlined destroy of AppleIntelligenceReportingError(v7);
      result = 0xD000000000000035;
      break;
    case 2:
      OUTLINED_FUNCTION_1_4();
      _StringGuts.grow(_:)(39);

      OUTLINED_FUNCTION_0_5();
      v3 = v4 + 21;
      goto LABEL_4;
    case 3:
      result = 0xD000000000000018;
      break;
    default:
      OUTLINED_FUNCTION_1_4();
      _StringGuts.grow(_:)(18);

      OUTLINED_FUNCTION_0_5();
LABEL_4:
      v6 = v3;
      MEMORY[0x1C68E25F0](v0, v2);

      result = v6;
      break;
  }

  return result;
}

uint64_t AppleIntelligenceReportingError.underlyingErrors.getter()
{
  outlined init with copy of AppleIntelligenceReportingError(v0, v4);
  switch(v5)
  {
    case 1:
      outlined init with take of any Source<Self.Stream == A>(v4, v3);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26AppleIntelligenceReporting0dE5Error_pGMd, &_ss23_ContiguousArrayStorageCy26AppleIntelligenceReporting0dE5Error_pGMR);
      v1 = swift_allocObject();
      *(v1 + 16) = xmmword_1C0CDE720;
      outlined init with take of any Source<Self.Stream == A>(v3, v1 + 32);
      break;
    case 3:
      goto LABEL_3;
    default:
      outlined destroy of AppleIntelligenceReportingError(v4);
LABEL_3:
      v1 = MEMORY[0x1E69E7CC0];
      break;
  }

  return v1;
}

uint64_t AppleIntelligenceReportingError.category.getter@<X0>(char *a1@<X8>)
{
  result = outlined init with copy of AppleIntelligenceReportingError(v1, v5);
  v4 = 20;
  if (v6 < 2u)
  {
    goto LABEL_4;
  }

  if (v6 == 2)
  {
    v4 = 5;
LABEL_4:
    result = outlined destroy of AppleIntelligenceReportingError(v5);
  }

  *a1 = v4;
  return result;
}

uint64_t protocol witness for Error._domain.getter in conformance AppleIntelligenceReportingError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceReportingError and conformance AppleIntelligenceReportingError();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t protocol witness for Error._code.getter in conformance AppleIntelligenceReportingError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppleIntelligenceReportingError and conformance AppleIntelligenceReportingError();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

unint64_t instantiation function for generic protocol witness table for AppleIntelligenceReportingError(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type AppleIntelligenceReportingError and conformance AppleIntelligenceReportingError();
  a1[2] = lazy protocol witness table accessor for type AppleIntelligenceReportingError and conformance AppleIntelligenceReportingError();
  result = lazy protocol witness table accessor for type AppleIntelligenceReportingError and conformance AppleIntelligenceReportingError();
  a1[3] = result;
  return result;
}

uint64_t get_enum_tag_for_layout_string_26AppleIntelligenceReporting0abC5ErrorO(uint64_t a1)
{
  if ((*(a1 + 40) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 40) & 3;
  }
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for AppleIntelligenceReportingError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 41))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 40);
  if (v3 >= 4)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AppleIntelligenceReportingError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for AppleIntelligenceReportingError(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t EventReporter.__allocating_init()()
{
  type metadata accessor for BiomeEventReporter();
  swift_allocObject();
  v0 = BiomeEventReporter.init(user:)(0x100000000uLL);
  type metadata accessor for BiomeEventReporterGenerator();
  v1 = swift_allocObject();
  v2 = swift_allocObject();
  return specialized EventReporter.init(biomeEventReporter:biomeEventReporterGenerator:)(v0, v1, v2);
}

uint64_t specialized EventReporter.init(biomeEventReporter:biomeEventReporterGenerator:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9[3] = type metadata accessor for BiomeEventReporter();
  v9[4] = &protocol witness table for BiomeEventReporter;
  v9[0] = a1;
  v8[3] = type metadata accessor for BiomeEventReporterGenerator();
  v8[4] = &protocol witness table for BiomeEventReporterGenerator;
  v8[0] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26AppleIntelligenceReporting010BiomeEventC0_pMd, &_s26AppleIntelligenceReporting010BiomeEventC0_pMR);
  v6 = Dictionary.init(dictionaryLiteral:)();
  *(a3 + 96) = v6;
  outlined init with copy of any Source<Self.Stream == A>(v9, a3 + 16);
  outlined init with copy of any Source<Self.Stream == A>(v8, a3 + 56);

  __swift_destroy_boxed_opaque_existential_1(v8);
  __swift_destroy_boxed_opaque_existential_1(v9);
  *(a3 + 104) = 0;
  *(a3 + 112) = v6;
  return a3;
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, unsigned int a2)
{
  v3 = v2;
  if (*(a1 + 24))
  {
    outlined init with take of any Source<Self.Stream == A>(a1, v17);
    v5 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v17, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v15;
  }

  else
  {
    outlined destroy of (AppleIntelligenceAssetDeliveryEvent.EventType, AppleIntelligenceAssetDeliveryEvent.EventType)(a1, &_s26AppleIntelligenceReporting010BiomeEventC0_pSgMd, &_s26AppleIntelligenceReporting010BiomeEventC0_pSgMR);
    v8 = *v2;
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v10)
    {
      v11 = v9;
      v12 = *v3;
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v3;
      v14 = *(*v3 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVys6UInt32V26AppleIntelligenceReporting010BiomeEventF0_pGMd, &_ss17_NativeDictionaryVys6UInt32V26AppleIntelligenceReporting010BiomeEventF0_pGMR);
      _NativeDictionary.ensureUnique(isUnique:capacity:)(v13, v14);
      outlined init with take of any Source<Self.Stream == A>((*(v16 + 56) + 40 * v11), v17);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s26AppleIntelligenceReporting010BiomeEventC0_pMd, &_s26AppleIntelligenceReporting010BiomeEventC0_pMR);
      _NativeDictionary._delete(at:)();
      *v3 = v16;
    }

    else
    {
      v18 = 0;
      memset(v17, 0, sizeof(v17));
    }

    return outlined destroy of (AppleIntelligenceAssetDeliveryEvent.EventType, AppleIntelligenceAssetDeliveryEvent.EventType)(v17, &_s26AppleIntelligenceReporting010BiomeEventC0_pSgMd, &_s26AppleIntelligenceReporting010BiomeEventC0_pSgMR);
  }

  return result;
}

uint64_t EventReporter.userBiomeEventReporters.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 96);
}

uint64_t EventReporter.userBiomeEventReporters.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 96);
  *(v1 + 96) = a1;
}

uint64_t EventReporter.__allocating_init(biomeEventReporter:biomeEventReporterGenerator:)(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = v3;
  v9 = a1[3];
  v8 = a1[4];
  __swift_mutable_project_boxed_opaque_existential_1(a1, v9);
  OUTLINED_FUNCTION_2_5();
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2();
  v15 = v14 - v13;
  (*(v16 + 16))(v14 - v13);
  v17 = a2[3];
  v18 = a2[4];
  __swift_mutable_project_boxed_opaque_existential_1(a2, v17);
  OUTLINED_FUNCTION_2_5();
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_2();
  v24 = v23 - v22;
  (*(v25 + 16))(v23 - v22);
  v26 = a3(v15, v24, v5, v9, v17, v8, v18);
  __swift_destroy_boxed_opaque_existential_1(a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v26;
}

void EventReporter.getBiomeEventReporter(for:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  os_unfair_lock_lock((v2 + 104));
  _s26AppleIntelligenceReporting13EventReporterC08getBiomedE03forAA0gdC0_pAA0abD0O_tFAaF_pSDys6UInt32VAaF_pGzYuYTXEfU_(a1, v2, a2);

  os_unfair_lock_unlock((v2 + 104));
}

uint64_t _s26AppleIntelligenceReporting13EventReporterC08getBiomedE03forAA0gdC0_pAA0abD0O_tFAaF_pSDys6UInt32VAaF_pGzYuYTXEfU_@<X0>(uint64_t a1@<X1>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for AppleIntelligenceAssetDeliveryEvent(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AppleIntelligenceEvent(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AppleIntelligenceEvent(a1, v13);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    outlined init with copy of any Source<Self.Stream == A>((a2 + 2), a3);
    v15 = type metadata accessor for AppleIntelligenceEvent;
    v16 = v13;
    return outlined destroy of UUIDIdentifier(v16, v15);
  }

  outlined init with take of AppleIntelligenceEvent(v13, v9, type metadata accessor for AppleIntelligenceAssetDeliveryEvent);
  if (v9[132] == 1)
  {
    outlined destroy of UUIDIdentifier(v9, type metadata accessor for AppleIntelligenceAssetDeliveryEvent);
    return outlined init with copy of any Source<Self.Stream == A>((a2 + 2), a3);
  }

  v17 = *(v9 + 32);
  swift_beginAccess();
  specialized Dictionary.subscript.getter(v17, a2[12], &v29);
  if (!v30)
  {
    outlined destroy of (AppleIntelligenceAssetDeliveryEvent.EventType, AppleIntelligenceAssetDeliveryEvent.EventType)(&v29, &_s26AppleIntelligenceReporting010BiomeEventC0_pSgMd, &_s26AppleIntelligenceReporting010BiomeEventC0_pSgMR);
    swift_endAccess();
    if (one-time initialization token for general != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Logging.general);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 67109120;
      *(v25 + 4) = v17;
      _os_log_impl(&dword_1C0C94000, v23, v24, "No reporter for user %u. Creating one.", v25, 8u);
      MEMORY[0x1C68E2FD0](v25, -1, -1);
    }

    v26 = a2[10];
    v27 = a2[11];
    __swift_project_boxed_opaque_existential_1(a2 + 7, v26);
    (*(v27 + 8))(v17, v26, v27);
    outlined init with copy of any Source<Self.Stream == A>(a3, v31);
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v31, v17);
    swift_endAccess();
    v15 = type metadata accessor for AppleIntelligenceAssetDeliveryEvent;
    v16 = v9;
    return outlined destroy of UUIDIdentifier(v16, v15);
  }

  outlined init with take of any Source<Self.Stream == A>(&v29, v31);
  swift_endAccess();
  if (one-time initialization token for general != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static Logging.general);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 67109120;
    *(v21 + 4) = v17;
    _os_log_impl(&dword_1C0C94000, v19, v20, "Found existing reporter for %u.", v21, 8u);
    MEMORY[0x1C68E2FD0](v21, -1, -1);
  }

  outlined destroy of UUIDIdentifier(v9, type metadata accessor for AppleIntelligenceAssetDeliveryEvent);
  return outlined init with take of any Source<Self.Stream == A>(v31, a3);
}

double specialized Dictionary.subscript.getter@<D0>(unsigned int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v6 & 1) != 0))
  {
    outlined init with copy of any Source<Self.Stream == A>(*(a2 + 56) + 40 * v5, a3);
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t EventReporter.emitAppleIntelligenceIntervalEvent<A>(eventInfo:_:)()
{
  OUTLINED_FUNCTION_36_2();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v1[2] = v5;
  v6 = type metadata accessor for AppleIntelligenceEvent(0);
  OUTLINED_FUNCTION_4_4(v6);
  v1[7] = v7;
  v1[8] = *(v8 + 64);
  v1[9] = OUTLINED_FUNCTION_34_2();
  v9 = type metadata accessor for UUIDIdentifier();
  OUTLINED_FUNCTION_29(v9);
  v11 = *(v10 + 64);
  v1[10] = OUTLINED_FUNCTION_34_2();
  v12 = type metadata accessor for UUID();
  v1[11] = v12;
  OUTLINED_FUNCTION_4_4(v12);
  v1[12] = v13;
  v1[13] = *(v14 + 64);
  v1[14] = OUTLINED_FUNCTION_41_3();
  v1[15] = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_16_3();

  return MEMORY[0x1EEE6DFA0](v15, v16, v17);
}

{
  v3 = *(v1 + 120);
  v5 = *(v1 + 96);
  v4 = *(v1 + 104);
  v7 = *(v1 + 80);
  v6 = *(v1 + 88);
  v8 = *(v1 + 72);
  v36 = *(v1 + 112);
  v37 = *(v1 + 64);
  v9 = *(v1 + 48);
  v10 = *(v1 + 56);
  OUTLINED_FUNCTION_53_3();
  OUTLINED_FUNCTION_47_3();
  *(v1 + 128) = v0;
  *(v1 + 136) = v11;
  v12 = OUTLINED_FUNCTION_48_2();
  v0(v12);
  v13 = outlined init with copy of AppleIntelligenceEvent(v2, v8);
  v14 = *(v5 + 16);
  v5 += 16;
  *(v1 + 144) = v14;
  *(v1 + 152) = v5 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v22 = OUTLINED_FUNCTION_43_2(v13, v15, v16, v17, v18, v19, v20, v21, v36);
  v23(v22);
  v24 = *(v10 + 80);
  *(v1 + 176) = v24;
  v25 = (v24 + 24) & ~v24;
  v26 = *(v5 + 64);
  *(v1 + 180) = v26;
  v27 = (v25 + v37 + v26) & ~v26;
  v28 = swift_allocObject();
  *(v28 + 16) = v38;
  OUTLINED_FUNCTION_0_6();
  outlined init with take of AppleIntelligenceEvent(v8, v29 + v25, v30);
  (v0)(v28 + v27, v2, v6);

  EventReporter.runAndSupressError(_:)(partial apply for closure #1 in EventReporter.emitAppleIntelligenceIntervalEvent<A>(eventInfo:_:));

  v39 = (v40 + *v40);
  v31 = v40[1];
  v32 = swift_task_alloc();
  *(v1 + 160) = v32;
  *v32 = v1;
  v32[1] = EventReporter.emitAppleIntelligenceIntervalEvent<A>(eventInfo:_:);
  v33 = *(v1 + 40);
  v34 = *(v1 + 16);

  return v39(v34);
}

{
  OUTLINED_FUNCTION_36_2();
  v2 = *(*v1 + 160);
  v3 = *v1;
  OUTLINED_FUNCTION_33_1();
  *v4 = v3;
  *(v5 + 168) = v0;

  if (v0)
  {
    v6 = EventReporter.emitAppleIntelligenceIntervalEvent<A>(eventInfo:_:);
  }

  else
  {
    v6 = EventReporter.emitAppleIntelligenceIntervalEvent<A>(eventInfo:_:);
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

{
  v15 = *(v0 + 144);
  v16 = *(v0 + 152);
  v17 = *(v0 + 128);
  v18 = *(v0 + 136);
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  v3 = *(v0 + 96);
  v14 = *(v0 + 104);
  v4 = *(v0 + 88);
  v19 = *(v0 + 80);
  v5 = *(v0 + 72);
  v6 = *(v0 + 48);
  v7 = (*(v0 + 176) + 24) & ~*(v0 + 176);
  v8 = (v7 + *(v0 + 180) + *(v0 + 64)) & ~*(v0 + 180);
  outlined init with copy of AppleIntelligenceEvent(*(v0 + 24), v5);
  v15(v1, v2, v4);
  v9 = swift_allocObject();
  *(v9 + 16) = v6;
  OUTLINED_FUNCTION_0_6();
  outlined init with take of AppleIntelligenceEvent(v5, v10 + v7, v11);
  v17(v9 + v8, v1, v4);

  EventReporter.runAndSupressError(_:)(partial apply for closure #2 in EventReporter.emitAppleIntelligenceIntervalEvent<A>(eventInfo:_:));

  (*(v3 + 8))(v2, v4);

  OUTLINED_FUNCTION_21_2();

  return v12();
}

{
  v1 = *(v0 + 180);
  v2 = *(v0 + 144);
  v20 = *(v0 + 136);
  v21 = *(v0 + 168);
  v3 = *(v0 + 120);
  v4 = *(v0 + 112);
  v19 = *(v0 + 128);
  v5 = *(v0 + 88);
  v22 = v3;
  v23 = *(v0 + 96);
  v6 = *(v0 + 72);
  v7 = *(v0 + 64);
  v17 = *(v0 + 152);
  v18 = *(v0 + 48);
  v8 = (*(v0 + 176) + 24) & ~*(v0 + 176);
  outlined init with copy of AppleIntelligenceEvent(*(v0 + 24), v6);
  v2(v4, v3, v5);
  v9 = (v8 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v1 + v9 + 8) & ~v1;
  v11 = swift_allocObject();
  *(v11 + 16) = v18;
  OUTLINED_FUNCTION_0_6();
  outlined init with take of AppleIntelligenceEvent(v6, v12 + v8, v13);
  *(v11 + v9) = v21;
  v19(v11 + v10, v4, v5);

  MEMORY[0x1C68E2E60](v21);
  EventReporter.runAndSupressError(_:)(partial apply for closure #3 in EventReporter.emitAppleIntelligenceIntervalEvent<A>(eventInfo:_:));

  swift_willThrow();
  (*(v23 + 8))(v22, v5);

  OUTLINED_FUNCTION_21_2();
  v15 = *(v0 + 168);

  return v14();
}

void closure #1 in EventReporter.emitAppleIntelligenceIntervalEvent<A>(eventInfo:_:)()
{
  OUTLINED_FUNCTION_48();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  OUTLINED_FUNCTION_29(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v11);
  v12 = OUTLINED_FUNCTION_24_3();
  v13 = OUTLINED_FUNCTION_1(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_2();
  v20 = v19 - v18;
  EventReporter.getBiomeEventReporter(for:)(v7, v29);
  OUTLINED_FUNCTION_28_3();
  (*(v15 + 104))(v20, *v3, v12);
  v21 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_9(v21);
  (*(v22 + 16))(v1, v5, v21);
  OUTLINED_FUNCTION_13_2();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v21);
  OUTLINED_FUNCTION_26_3();
  _s26AppleIntelligenceReporting010BiomeEventC0PAAE05writeE09eventInfo6errors4type0G2IDyAA0abE0O_SayAA0aB5Error_pG0B15PlatformLibrary0abcE4TypeO10Foundation4UUIDVSgtAA0abcL0OYKFfA0_();
  OUTLINED_FUNCTION_30_3();
  _s26AppleIntelligenceReporting010BiomeEventC0PAAE05writeE09eventInfo6errors4type0G2IDyAA0abE0O_SayAA0aB5Error_pG0B15PlatformLibrary0abcE4TypeO10Foundation4UUIDVSgtAA0abcL0OYKF();

  outlined destroy of (AppleIntelligenceAssetDeliveryEvent.EventType, AppleIntelligenceAssetDeliveryEvent.EventType)(v1, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(v15 + 8))(v20, v12);
  if (v0)
  {
    lazy protocol witness table accessor for type AppleIntelligenceReportingError and conformance AppleIntelligenceReportingError();
    swift_allocError();
    *v26 = v27;
    v26[1] = *v28;
    *(v26 + 25) = *&v28[9];
  }

  __swift_destroy_boxed_opaque_existential_1(v29);
  OUTLINED_FUNCTION_44_2();
  OUTLINED_FUNCTION_47();
}

void EventReporter.emitAppleIntelligenceIntervalEvent<A>(eventInfo:_:)()
{
  OUTLINED_FUNCTION_48();
  v64 = v2;
  v65 = v0;
  v58 = v4;
  v59 = v3;
  v57 = v5;
  v6 = type metadata accessor for AppleIntelligenceEvent(0);
  v7 = OUTLINED_FUNCTION_4_4(v6);
  v61 = v8;
  v60 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = v11;
  v12 = type metadata accessor for UUIDIdentifier();
  v13 = OUTLINED_FUNCTION_29(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_2();
  v18 = v17 - v16;
  v19 = type metadata accessor for UUID();
  v20 = OUTLINED_FUNCTION_1(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v25 = &v49 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v49 - v27;
  UUID.init()();
  v63 = *(v22 + 32);
  v63(v28, v18, v19);
  outlined init with copy of AppleIntelligenceEvent(v64, v11);
  v29 = *(v22 + 16);
  v62 = v28;
  v52 = v29;
  v53 = v22 + 16;
  v29(v25, v28, v19);
  v30 = *(v61 + 80);
  v31 = (v30 + 24) & ~v30;
  v61 = v22;
  v32 = *(v22 + 80);
  v50 = v31 + v60;
  v33 = (v31 + v60 + v32) & ~v32;
  v55 = v24;
  v51 = v30 | v32;
  v34 = swift_allocObject();
  *(v34 + 16) = v65;
  OUTLINED_FUNCTION_0_6();
  v54 = v31;
  outlined init with take of AppleIntelligenceEvent(v66, v35 + v31, v36);
  v56 = v19;
  v60 = v22 + 32;
  v63((v34 + v33), v25, v19);

  EventReporter.runAndSupressError(_:)(partial apply for closure #1 in EventReporter.emitAppleIntelligenceIntervalEvent<A>(eventInfo:_:));

  v59(v37);
  outlined init with copy of AppleIntelligenceEvent(v64, v66);
  if (v1)
  {
    v38 = v56;
    v52(v25, v62, v56);
    v39 = v65;
    v40 = (v50 + 7) & 0xFFFFFFFFFFFFFFF8;
    v41 = swift_allocObject();
    *(v41 + 16) = v39;
    OUTLINED_FUNCTION_0_6();
    outlined init with take of AppleIntelligenceEvent(v66, v42 + v54, v43);
    *(v41 + v40) = v1;
    v63((v41 + ((v32 + v40 + 8) & ~v32)), v25, v38);

    MEMORY[0x1C68E2E60](v1);
    EventReporter.runAndSupressError(_:)(partial apply for closure #3 in EventReporter.emitAppleIntelligenceIntervalEvent<A>(eventInfo:_:));

    swift_willThrow();
    (*(v61 + 8))(v62, v38);
  }

  else
  {
    v44 = v62;
    v45 = v56;
    v52(v25, v62, v56);
    v46 = swift_allocObject();
    *(v46 + 16) = v65;
    OUTLINED_FUNCTION_0_6();
    outlined init with take of AppleIntelligenceEvent(v66, v47 + v54, v48);
    v63((v46 + v33), v25, v45);

    EventReporter.runAndSupressError(_:)(partial apply for closure #2 in EventReporter.emitAppleIntelligenceIntervalEvent<A>(eventInfo:_:));

    (*(v61 + 8))(v44, v45);
  }

  OUTLINED_FUNCTION_47();
}

void closure #3 in EventReporter.emitAppleIntelligenceIntervalEvent<A>(eventInfo:_:)()
{
  OUTLINED_FUNCTION_48();
  v30 = v3;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  OUTLINED_FUNCTION_29(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v9);
  v10 = OUTLINED_FUNCTION_24_3();
  v11 = OUTLINED_FUNCTION_1(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_52_3();
  OUTLINED_FUNCTION_39_2(v31[4]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26AppleIntelligenceReporting0dE5Error_pGMd, &_ss23_ContiguousArrayStorageCy26AppleIntelligenceReporting0dE5Error_pGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C0CDE720;
  convertToAppleIntelligenceError(error:)(v5, (inited + 32));
  (*(v13 + 104))(v2, *MEMORY[0x1E69AA0D0], v10);
  v17 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_9(v17);
  (*(v18 + 16))(v1, v30, v17);
  OUTLINED_FUNCTION_13_2();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v17);
  _s26AppleIntelligenceReporting010BiomeEventC0PAAE05writeE09eventInfo6errors4type0G2IDyAA0abE0O_SayAA0aB5Error_pG0B15PlatformLibrary0abcE4TypeO10Foundation4UUIDVSgtAA0abcL0OYKF();
  swift_setDeallocating();
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  outlined destroy of (AppleIntelligenceAssetDeliveryEvent.EventType, AppleIntelligenceAssetDeliveryEvent.EventType)(v1, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if (v0)
  {
    v22 = *(v13 + 8);
    v23 = OUTLINED_FUNCTION_50_3();
    v24(v23);
    lazy protocol witness table accessor for type AppleIntelligenceReportingError and conformance AppleIntelligenceReportingError();
    v25 = swift_allocError();
    OUTLINED_FUNCTION_37_2(v25, v26);
  }

  else
  {
    v27 = *(v13 + 8);
    v28 = OUTLINED_FUNCTION_50_3();
    v29(v28);
  }

  __swift_destroy_boxed_opaque_existential_1(v31);
  OUTLINED_FUNCTION_47();
}

void _s26AppleIntelligenceReporting13EventReporterC04emitab8IntervalD09eventInfo_s6ResultOyxq_GAA0abD0O_AH_AA0abC8MetadataOSgtyctAA0abC5ErrorOYKs8SendableRzAA0abL0R_r0_lF()
{
  OUTLINED_FUNCTION_48();
  v147 = v2;
  v145 = v1;
  v132 = v3;
  v133 = v4;
  v6 = v5;
  v138 = v7;
  OUTLINED_FUNCTION_2_5();
  v128 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_29_0(v13 - v12);
  v126 = v14;
  v15 = *(*(v14 + 8) + 8);
  v136 = v16;
  v139 = type metadata accessor for Result();
  OUTLINED_FUNCTION_1(v139);
  v140 = v17;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_17();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_29_0(&v123 - v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v23 = OUTLINED_FUNCTION_29(v22);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_51_2();
  OUTLINED_FUNCTION_29_0(v28);
  v29 = type metadata accessor for AppleIntelligenceReportingEventType();
  v30 = OUTLINED_FUNCTION_1(v29);
  v32 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v123 - v37;
  v39 = type metadata accessor for UUIDIdentifier();
  v40 = OUTLINED_FUNCTION_29(v39);
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_2();
  v45 = v44 - v43;
  v46 = type metadata accessor for UUID();
  v47 = OUTLINED_FUNCTION_1(v46);
  v49 = v48;
  v51 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_2();
  v54 = v53 - v52;
  UUID.init()();
  (*(v49 + 32))(v54, v45, v46);
  v134 = v0;
  EventReporter.getBiomeEventReporter(for:)(v6, v154);
  v142 = OUTLINED_FUNCTION_39_2(v156);
  v55 = *MEMORY[0x1E69AA0D8];
  v149 = v32;
  v57 = *(v32 + 104);
  v56 = v32 + 104;
  v130 = v57;
  v57(v38, v55, v29);
  v146 = v49;
  v59 = *(v49 + 16);
  v58 = (v49 + 16);
  v60 = v143;
  v148 = v54;
  v131 = v59;
  v59(v143, v54, v46);
  OUTLINED_FUNCTION_13_2();
  __swift_storeEnumTagSinglePayload(v61, v62, v63, v46);
  _s26AppleIntelligenceReporting010BiomeEventC0PAAE05writeE09eventInfo6errors4type0G2IDyAA0abE0O_SayAA0aB5Error_pG0B15PlatformLibrary0abcE4TypeO10Foundation4UUIDVSgtAA0abcL0OYKFfA0_();
  v129 = v6;
  v144 = v38;
  OUTLINED_FUNCTION_30_3();
  v64 = v145;
  _s26AppleIntelligenceReporting010BiomeEventC0PAAE05writeE09eventInfo6errors4type0G2IDyAA0abE0O_SayAA0aB5Error_pG0B15PlatformLibrary0abcE4TypeO10Foundation4UUIDVSgtAA0abcL0OYKF();
  if (v64)
  {

    outlined destroy of (AppleIntelligenceAssetDeliveryEvent.EventType, AppleIntelligenceAssetDeliveryEvent.EventType)(v60, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v65 = OUTLINED_FUNCTION_35_2();
    v66(v65);
    (*(v146 + 8))(v148, v46);
    v67 = *v153;
    v68 = v147;
    *v147 = v152;
    v68[1] = v67;
    *(v68 + 25) = *&v153[9];
LABEL_3:
    __swift_destroy_boxed_opaque_existential_1(v154);
    goto LABEL_4;
  }

  v124 = 0;
  v141 = v56;
  v142 = v58;
  v69 = v136;

  outlined destroy of (AppleIntelligenceAssetDeliveryEvent.EventType, AppleIntelligenceAssetDeliveryEvent.EventType)(v60, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v70 = OUTLINED_FUNCTION_35_2();
  v149 = v71;
  v145 = v72;
  v72(v70);
  __swift_destroy_boxed_opaque_existential_1(v154);
  v73 = v138;
  v133(v138, &v152);
  v74 = v137;
  (*(v140 + 16))(v137, v73, v139);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v75 = v74;
    v76 = v128;
    v77 = v135;
    (*(v128 + 32))(v135, v75, v69);
    OUTLINED_FUNCTION_40_0();
    v144 = v156;
    __swift_project_boxed_opaque_existential_1(v154, v155);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26AppleIntelligenceReporting0dE5Error_pGMd, &_ss23_ContiguousArrayStorageCy26AppleIntelligenceReporting0dE5Error_pGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C0CDE720;
    v79 = v126;
    *(inited + 56) = v69;
    *(inited + 64) = v79;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 32));
    (*(v76 + 16))(boxed_opaque_existential_1, v77, v69);
    v81 = *MEMORY[0x1E69AA0D0];
    v82 = OUTLINED_FUNCTION_19_4(&v151);
    v83(v82);
    v84 = v127;
    OUTLINED_FUNCTION_20_3();
    v85();
    OUTLINED_FUNCTION_13_2();
    __swift_storeEnumTagSinglePayload(v86, v87, v88, v46);
    OUTLINED_FUNCTION_45_1();
    v89 = v124;
    _s26AppleIntelligenceReporting010BiomeEventC0PAAE05writeE09eventInfo6errors4type0G2IDyAA0abE0O_SayAA0aB5Error_pG0B15PlatformLibrary0abcE4TypeO10Foundation4UUIDVSgtAA0abcL0OYKF();
    v90 = v147;
    if (!v89)
    {
      swift_setDeallocating();
      specialized _ContiguousArrayStorage.__deallocating_deinit();
      outlined destroy of (AppleIntelligenceAssetDeliveryEvent.EventType, AppleIntelligenceAssetDeliveryEvent.EventType)(v84, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v115 = OUTLINED_FUNCTION_7_4();
      v116(v115);
      v117 = OUTLINED_FUNCTION_38_2();
      v118(v117);
      v119 = OUTLINED_FUNCTION_5_5();
      v120(v119);
      __swift_destroy_boxed_opaque_existential_1(v154);
      goto LABEL_4;
    }

    swift_setDeallocating();
    specialized _ContiguousArrayStorage.__deallocating_deinit();
    outlined destroy of (AppleIntelligenceAssetDeliveryEvent.EventType, AppleIntelligenceAssetDeliveryEvent.EventType)(v84, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v91 = OUTLINED_FUNCTION_7_4();
    v92(v91);
    v93 = OUTLINED_FUNCTION_38_2();
    v94(v93);
    (*(v140 + 8))(v138, v139);
    v95 = OUTLINED_FUNCTION_5_5();
    v96(v95);
    v97 = *v153;
    *v90 = v152;
    v90[1] = v97;
    *(v90 + 25) = *&v153[9];
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_40_0();
  __swift_project_boxed_opaque_existential_1(v154, v155);
  v98 = *MEMORY[0x1E69AA0D0];
  v99 = OUTLINED_FUNCTION_19_4(&v150);
  v100(v99);
  v101 = v125;
  OUTLINED_FUNCTION_20_3();
  v102();
  OUTLINED_FUNCTION_13_2();
  __swift_storeEnumTagSinglePayload(v103, v104, v105, v46);
  _s26AppleIntelligenceReporting010BiomeEventC0PAAE05writeE09eventInfo6errors4type0G2IDyAA0abE0O_SayAA0aB5Error_pG0B15PlatformLibrary0abcE4TypeO10Foundation4UUIDVSgtAA0abcL0OYKFfA0_();
  OUTLINED_FUNCTION_45_1();
  v106 = v124;
  _s26AppleIntelligenceReporting010BiomeEventC0PAAE05writeE09eventInfo6errors4type0G2IDyAA0abE0O_SayAA0aB5Error_pG0B15PlatformLibrary0abcE4TypeO10Foundation4UUIDVSgtAA0abcL0OYKF();
  v107 = v147;

  outlined destroy of (AppleIntelligenceAssetDeliveryEvent.EventType, AppleIntelligenceAssetDeliveryEvent.EventType)(v101, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v108 = OUTLINED_FUNCTION_7_4();
  v109(v108);
  if (v106)
  {
    v110 = *(v140 + 8);
    v111 = v139;
    v110(v138, v139);
    v112 = OUTLINED_FUNCTION_5_5();
    v113(v112);
    v114 = *v153;
    *v107 = v152;
    v107[1] = v114;
    *(v107 + 25) = *&v153[9];
    __swift_destroy_boxed_opaque_existential_1(v154);
    v110(v137, v111);
  }

  else
  {
    v121 = OUTLINED_FUNCTION_5_5();
    v122(v121);
    __swift_destroy_boxed_opaque_existential_1(v154);
    (*(v140 + 8))(v137, v139);
  }

LABEL_4:
  OUTLINED_FUNCTION_47();
}

uint64_t _s26AppleIntelligenceReporting13EventReporterC04emitab8IntervalD09eventInfo_s6ResultOyxq_GAA0abD0O_AH_AA0abC8MetadataOSgtyYactYaAA0abC5ErrorOYKs8SendableRzAA0abL0R_r0_lF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[50] = v8;
  v9[51] = a8;
  v9[48] = a6;
  v9[49] = a7;
  v9[46] = a3;
  v9[47] = a4;
  v9[44] = a1;
  v9[45] = a2;
  OUTLINED_FUNCTION_2_5();
  v9[52] = v11;
  v13 = *(v12 + 64);
  v9[53] = OUTLINED_FUNCTION_34_2();
  v14 = *(*(a7 + 8) + 8);
  v15 = type metadata accessor for Result();
  v9[54] = v15;
  OUTLINED_FUNCTION_4_4(v15);
  v9[55] = v16;
  v18 = *(v17 + 64);
  v9[56] = OUTLINED_FUNCTION_34_2();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  OUTLINED_FUNCTION_29(v19);
  v21 = *(v20 + 64);
  v9[57] = OUTLINED_FUNCTION_41_3();
  v9[58] = swift_task_alloc();
  v9[59] = swift_task_alloc();
  v22 = type metadata accessor for AppleIntelligenceReportingEventType();
  v9[60] = v22;
  OUTLINED_FUNCTION_4_4(v22);
  v9[61] = v23;
  v25 = *(v24 + 64);
  v9[62] = OUTLINED_FUNCTION_41_3();
  v9[63] = swift_task_alloc();
  v9[64] = swift_task_alloc();
  v26 = type metadata accessor for UUIDIdentifier();
  OUTLINED_FUNCTION_29(v26);
  v28 = *(v27 + 64);
  v9[65] = OUTLINED_FUNCTION_34_2();
  v29 = type metadata accessor for UUID();
  v9[66] = v29;
  OUTLINED_FUNCTION_4_4(v29);
  v9[67] = v30;
  v32 = *(v31 + 64);
  v9[68] = OUTLINED_FUNCTION_34_2();
  v33 = OUTLINED_FUNCTION_16_3();

  return MEMORY[0x1EEE6DFA0](v33, v34, v35);
}

uint64_t _s26AppleIntelligenceReporting13EventReporterC04emitab8IntervalD09eventInfo_s6ResultOyxq_GAA0abD0O_AH_AA0abC8MetadataOSgtyYactYaAA0abC5ErrorOYKs8SendableRzAA0abL0R_r0_lFTY0_()
{
  v1 = v0[68];
  v2 = v0[67];
  v3 = v0[66];
  v4 = v0[65];
  v5 = v0[64];
  v6 = v0[61];
  v28 = v0[60];
  v7 = v0[59];
  v8 = v0[50];
  v9 = v0[45];
  UUID.init()();
  (*(v2 + 32))(v1, v4, v3);
  EventReporter.getBiomeEventReporter(for:)(v9, (v0 + 29));
  v10 = v0[33];
  __swift_project_boxed_opaque_existential_1(v0 + 29, v0[32]);
  v11 = *MEMORY[0x1E69AA0D8];
  v12 = *(v6 + 104);
  v0[69] = v12;
  v0[70] = (v6 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v12(v5, v11, v28);
  v13 = *(v2 + 16);
  v0[71] = v13;
  v0[72] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v13(v7, v1, v3);
  OUTLINED_FUNCTION_13_2();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v3);
  _s26AppleIntelligenceReporting010BiomeEventC0PAAE05writeE09eventInfo6errors4type0G2IDyAA0abE0O_SayAA0aB5Error_pG0B15PlatformLibrary0abcE4TypeO10Foundation4UUIDVSgtAA0abcL0OYKFfA0_();
  _s26AppleIntelligenceReporting010BiomeEventC0PAAE05writeE09eventInfo6errors4type0G2IDyAA0abE0O_SayAA0aB5Error_pG0B15PlatformLibrary0abcE4TypeO10Foundation4UUIDVSgtAA0abcL0OYKF();
  v0[73] = 0;
  v17 = v0[64];
  v18 = v0[60];
  v19 = v0[61];
  v20 = v0[59];
  v21 = v0[46];

  outlined destroy of (AppleIntelligenceAssetDeliveryEvent.EventType, AppleIntelligenceAssetDeliveryEvent.EventType)(v20, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v22 = *(v19 + 8);
  v0[74] = v22;
  v0[75] = (v19 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v22(v17, v18);
  __swift_destroy_boxed_opaque_existential_1(v0 + 29);
  v29 = (v21 + *v21);
  v23 = v21[1];
  v24 = swift_task_alloc();
  v0[76] = v24;
  *v24 = v0;
  v24[1] = _s26AppleIntelligenceReporting13EventReporterC04emitab8IntervalD09eventInfo_s6ResultOyxq_GAA0abD0O_AH_AA0abC8MetadataOSgtyYactYaAA0abC5ErrorOYKs8SendableRzAA0abL0R_r0_lFTQ1_;
  v25 = v0[47];
  v26 = v0[44];

  return v29(v26, v0 + 129);
}

uint64_t _s26AppleIntelligenceReporting13EventReporterC04emitab8IntervalD09eventInfo_s6ResultOyxq_GAA0abD0O_AH_AA0abC8MetadataOSgtyYactYaAA0abC5ErrorOYKs8SendableRzAA0abL0R_r0_lFTQ1_()
{
  OUTLINED_FUNCTION_36_2();
  v1 = *(*v0 + 608);
  v2 = *v0;
  OUTLINED_FUNCTION_33_1();
  *v3 = v2;

  v4 = OUTLINED_FUNCTION_16_3();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t _s26AppleIntelligenceReporting13EventReporterC04emitab8IntervalD09eventInfo_s6ResultOyxq_GAA0abD0O_AH_AA0abC8MetadataOSgtyYactYaAA0abC5ErrorOYKs8SendableRzAA0abL0R_r0_lFTY2_()
{
  (*(*(v0 + 440) + 16))(*(v0 + 448), *(v0 + 352), *(v0 + 432));
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v75 = *(v0 + 576);
    v78 = *(v0 + 584);
    v60 = *(v0 + 552);
    v62 = *(v0 + 560);
    v69 = *(v0 + 544);
    v72 = *(v0 + 568);
    v1 = *(v0 + 528);
    v2 = *(v0 + 496);
    v58 = *(v0 + 480);
    v3 = *(v0 + 456);
    v4 = *(v0 + 416);
    v5 = *(v0 + 424);
    v6 = *(v0 + 400);
    v7 = *(v0 + 360);
    v57 = *(v0 + 384);
    v8 = *(v0 + 384);
    (*(v4 + 32))(v5, *(v0 + 448), v8);
    EventReporter.getBiomeEventReporter(for:)(v7, v0 + 272);
    v65 = *(v0 + 304);
    __swift_project_boxed_opaque_existential_1((v0 + 272), *(v0 + 296));
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26AppleIntelligenceReporting0dE5Error_pGMd, &_ss23_ContiguousArrayStorageCy26AppleIntelligenceReporting0dE5Error_pGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C0CDE720;
    *(inited + 56) = v57;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 32));
    (*(v4 + 16))(boxed_opaque_existential_1, v5, v8);
    v60(v2, *MEMORY[0x1E69AA0D0], v58);
    v72(v3, v69, v1);
    OUTLINED_FUNCTION_13_2();
    __swift_storeEnumTagSinglePayload(v11, v12, v13, v1);
    v14 = v78;
    _s26AppleIntelligenceReporting010BiomeEventC0PAAE05writeE09eventInfo6errors4type0G2IDyAA0abE0O_SayAA0aB5Error_pG0B15PlatformLibrary0abcE4TypeO10Foundation4UUIDVSgtAA0abcL0OYKF();
    v70 = *(v0 + 592);
    v73 = *(v0 + 600);
    v15 = *(v0 + 536);
    v16 = *(v0 + 528);
    v76 = v16;
    v79 = *(v0 + 544);
    v17 = *(v0 + 496);
    v18 = *(v0 + 480);
    v19 = *(v0 + 456);
    if (v14)
    {
      v20 = *(v0 + 440);
      v21 = *(v0 + 416);
      v22 = *(v0 + 408);
      v59 = *(v0 + 384);
      v61 = *(v0 + 424);
      v63 = *(v0 + 352);
      v66 = *(v0 + 432);
      swift_setDeallocating();
      specialized _ContiguousArrayStorage.__deallocating_deinit();
      outlined destroy of (AppleIntelligenceAssetDeliveryEvent.EventType, AppleIntelligenceAssetDeliveryEvent.EventType)(v19, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v70(v17, v18);
      (*(v21 + 8))(v61, v59);
      (*(v20 + 8))(v63, v66);
      (*(v15 + 8))(v79, v76);
      v23 = *(v0 + 136);
      v24 = *(v0 + 152);
      *(v22 + 25) = *(v0 + 161);
      *v22 = v23;
      v22[1] = v24;
    }

    else
    {
      v52 = *(v0 + 416);
      v51 = *(v0 + 424);
      v53 = *(v0 + 384);
      swift_setDeallocating();
      specialized _ContiguousArrayStorage.__deallocating_deinit();
      outlined destroy of (AppleIntelligenceAssetDeliveryEvent.EventType, AppleIntelligenceAssetDeliveryEvent.EventType)(v19, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v70(v17, v18);
      (*(v52 + 8))(v51, v53);
      (*(v15 + 8))(v79, v76);
    }

    __swift_destroy_boxed_opaque_existential_1((v0 + 272));
  }

  else
  {
    v80 = *(v0 + 584);
    v67 = *(v0 + 568);
    v71 = *(v0 + 576);
    v25 = *(v0 + 560);
    v26 = *(v0 + 552);
    v64 = *(v0 + 544);
    v27 = *(v0 + 528);
    v28 = *(v0 + 504);
    v29 = *(v0 + 480);
    v30 = *(v0 + 464);
    v31 = *(v0 + 400);
    EventReporter.getBiomeEventReporter(for:)(*(v0 + 360), v0 + 312);
    v32 = *(v0 + 344);
    __swift_project_boxed_opaque_existential_1((v0 + 312), *(v0 + 336));
    v26(v28, *MEMORY[0x1E69AA0D0], v29);
    v67(v30, v64, v27);
    OUTLINED_FUNCTION_13_2();
    __swift_storeEnumTagSinglePayload(v33, v34, v35, v27);
    OUTLINED_FUNCTION_26_3();
    _s26AppleIntelligenceReporting010BiomeEventC0PAAE05writeE09eventInfo6errors4type0G2IDyAA0abE0O_SayAA0aB5Error_pG0B15PlatformLibrary0abcE4TypeO10Foundation4UUIDVSgtAA0abcL0OYKFfA0_();
    OUTLINED_FUNCTION_30_3();
    v36 = v80;
    _s26AppleIntelligenceReporting010BiomeEventC0PAAE05writeE09eventInfo6errors4type0G2IDyAA0abE0O_SayAA0aB5Error_pG0B15PlatformLibrary0abcE4TypeO10Foundation4UUIDVSgtAA0abcL0OYKF();
    v37 = *(v0 + 600);
    v38 = *(v0 + 592);
    v39 = *(v0 + 536);
    v74 = *(v0 + 528);
    v40 = *(v0 + 504);
    v41 = *(v0 + 480);
    v42 = *(v0 + 464);
    v44 = *(v0 + 440);
    v43 = *(v0 + 448);
    v77 = *(v0 + 544);
    v81 = *(v0 + 432);
    if (v36)
    {
      v68 = *(v0 + 448);
      v45 = *(v0 + 408);
      v46 = *(v0 + 352);

      outlined destroy of (AppleIntelligenceAssetDeliveryEvent.EventType, AppleIntelligenceAssetDeliveryEvent.EventType)(v42, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v47 = OUTLINED_FUNCTION_48_2();
      v38(v47);
      v48 = *(v44 + 8);
      v48(v46, v81);
      (*(v39 + 8))(v77, v74);
      v49 = *(v0 + 184);
      v50 = *(v0 + 200);
      *(v45 + 25) = *(v0 + 209);
      *v45 = v49;
      v45[1] = v50;
      __swift_destroy_boxed_opaque_existential_1((v0 + 312));
      v48(v68, v81);
    }

    else
    {

      outlined destroy of (AppleIntelligenceAssetDeliveryEvent.EventType, AppleIntelligenceAssetDeliveryEvent.EventType)(v42, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v54 = OUTLINED_FUNCTION_48_2();
      v38(v54);
      (*(v39 + 8))(v77, v74);
      __swift_destroy_boxed_opaque_existential_1((v0 + 312));
      (*(v44 + 8))(v43, v81);
    }
  }

  OUTLINED_FUNCTION_12_2();

  OUTLINED_FUNCTION_21_2();

  return v55();
}

uint64_t _s26AppleIntelligenceReporting13EventReporterC04emitab8IntervalD09eventInfo_xAA0abD0O_x_AA0abC8MetadataOSgtyYaq_YKctYaq_YKs8SendableRzAA0aB5ErrorR_r0_lF()
{
  OUTLINED_FUNCTION_36_2();
  v1[9] = v0;
  v1[10] = v2;
  v1[7] = v3;
  v1[8] = v4;
  v1[5] = v5;
  v1[6] = v6;
  v1[3] = v7;
  v1[4] = v8;
  v1[2] = v9;
  v10 = *(v3 - 8);
  v1[11] = v10;
  v1[12] = *(v10 + 64);
  v1[13] = OUTLINED_FUNCTION_41_3();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v11 = type metadata accessor for AppleIntelligenceEvent(0);
  OUTLINED_FUNCTION_4_4(v11);
  v1[17] = v12;
  v1[18] = *(v13 + 64);
  v1[19] = OUTLINED_FUNCTION_34_2();
  v14 = type metadata accessor for UUIDIdentifier();
  OUTLINED_FUNCTION_29(v14);
  v16 = *(v15 + 64);
  v1[20] = OUTLINED_FUNCTION_34_2();
  v17 = type metadata accessor for UUID();
  v1[21] = v17;
  OUTLINED_FUNCTION_4_4(v17);
  v1[22] = v18;
  v1[23] = *(v19 + 64);
  v1[24] = OUTLINED_FUNCTION_41_3();
  v1[25] = swift_task_alloc();
  v20 = OUTLINED_FUNCTION_16_3();

  return MEMORY[0x1EEE6DFA0](v20, v21, v22);
}

uint64_t _s26AppleIntelligenceReporting13EventReporterC04emitab8IntervalD09eventInfo_xAA0abD0O_x_AA0abC8MetadataOSgtyYaq_YKctYaq_YKs8SendableRzAA0aB5ErrorR_r0_lFTY0_()
{
  v3 = *(v1 + 200);
  v5 = *(v1 + 176);
  v4 = *(v1 + 184);
  v7 = *(v1 + 160);
  v6 = *(v1 + 168);
  v8 = *(v1 + 152);
  v37 = *(v1 + 192);
  v38 = *(v1 + 144);
  v9 = *(v1 + 136);
  v10 = *(v1 + 72);
  OUTLINED_FUNCTION_53_3();
  OUTLINED_FUNCTION_47_3();
  *(v1 + 208) = v0;
  *(v1 + 216) = v11;
  v12 = OUTLINED_FUNCTION_48_2();
  v0(v12);
  v13 = outlined init with copy of AppleIntelligenceEvent(v2, v8);
  v14 = *(v5 + 16);
  v5 += 16;
  *(v1 + 224) = v14;
  *(v1 + 232) = v5 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v22 = OUTLINED_FUNCTION_43_2(v13, v15, v16, v17, v18, v19, v20, v21, v37);
  v23(v22);
  v24 = *(v9 + 80);
  *(v1 + 248) = v24;
  v25 = (v24 + 24) & ~v24;
  v26 = *(v5 + 64);
  *(v1 + 252) = v26;
  v27 = (v38 + v26 + v25) & ~v26;
  v28 = swift_allocObject();
  *(v28 + 16) = v39;
  OUTLINED_FUNCTION_0_6();
  outlined init with take of AppleIntelligenceEvent(v8, v29 + v25, v30);
  (v0)(v28 + v27, v2, v6);

  EventReporter.runAndSupressError(_:)(_s26AppleIntelligenceReporting13EventReporterC04emitab8IntervalD09eventInfo_xAA0abD0O_x_AA0abC8MetadataOSgtyYaq_YKctYaq_YKs8SendableRzAA0aB5ErrorR_r0_lFyyKcfU_TA);

  v40 = (v41 + *v41);
  v31 = v41[1];
  v32 = swift_task_alloc();
  *(v1 + 240) = v32;
  *v32 = v1;
  v32[1] = _s26AppleIntelligenceReporting13EventReporterC04emitab8IntervalD09eventInfo_xAA0abD0O_x_AA0abC8MetadataOSgtyYaq_YKctYaq_YKs8SendableRzAA0aB5ErrorR_r0_lFTQ1_;
  v33 = *(v1 + 120);
  v34 = *(v1 + 40);
  v35 = *(v1 + 16);

  return v40(v35, v1 + 256, v33);
}