NSData *createUrlForImage(_:)@<X0>(UIImage *a1@<X0>, char *a2@<X8>)
{
  v24 = a1;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20]();
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20]();
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [objc_opt_self() defaultManager];
  v14 = [v13 temporaryDirectory];

  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  UUID.init()();
  UUID.uuidString.getter();
  (*(v4 + 8))(v7, v3);
  URL.appendingPathComponent(_:)();
  v15 = v24;

  v16 = *(v9 + 8);
  v16(v12, v8);
  result = UIImageHEICRepresentation(v15);
  if (result || (result = UIImagePNGRepresentation(v15)) != 0)
  {
    v18 = result;
    v19 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    URL.appendingPathExtension(_:)();
    v16(a2, v8);
    (*(v9 + 32))(a2, v12, v8);
    v22 = v25;
    Data.write(to:options:)();
    if (v22)
    {
      v16(a2, v8);
    }

    return outlined consume of Data._Representation(v19, v21);
  }

  return result;
}

uint64_t outlined consume of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t prepareUrlAccess(_:)(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2[9] = a1;
  v2[10] = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR) - 8) + 64) + 15;
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](prepareUrlAccess(_:), 0, 0);
}

uint64_t prepareUrlAccess(_:)()
{
  v29 = *MEMORY[0x277D85DE8];
  v1 = v0[12];
  v2 = v0[10];
  v3 = [objc_allocWithZone(MEMORY[0x277CCA9E8]) init];
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v28 = *(v5 + 56);
  v28(v1, 1, 1, v4);
  URL._bridgeToObjectiveC()(v6);
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v1;
  v10 = swift_allocObject();
  *(v10 + 16) = partial apply for closure #1 in prepareUrlAccess(_:);
  *(v10 + 24) = v9;
  v0[6] = partial apply for thunk for @callee_guaranteed (@in_guaranteed URL) -> ();
  v0[7] = v10;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = thunk for @escaping @callee_guaranteed (@in_guaranteed URL) -> ();
  v0[5] = &block_descriptor;
  v11 = _Block_copy(v0 + 2);
  v12 = v0[7];

  v0[8] = 0;
  [v3 coordinateReadingItemAtURL:v8 options:0 error:v0 + 8 byAccessor:v11];
  _Block_release(v11);

  v13 = v0[8];
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }

  if (v13)
  {
    goto LABEL_5;
  }

  v14 = v0[11];
  outlined init with copy of URL?(v0[12], v14, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if ((*(v5 + 48))(v14, 1, v4) == 1)
  {
    v27 = v0[10];
    outlined destroy of URL?(v0[11], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    type metadata accessor for JournalingSuggestionsError();
    lazy protocol witness table accessor for type JournalingSuggestionsError and conformance JournalingSuggestionsError(&lazy protocol witness table cache variable for type JournalingSuggestionsError and conformance JournalingSuggestionsError, type metadata accessor for JournalingSuggestionsError);
    swift_allocError();
    v15 = v3;
    v17 = v16;
    (*(v5 + 16))(v16, v27, v4);
    v28(v17, 0, 1, v4);
    v3 = v15;
    swift_storeEnumTagMultiPayload();
LABEL_5:
    v19 = v0[11];
    v18 = v0[12];
    swift_willThrow();

    outlined destroy of URL?(v18, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);

    v20 = v0[1];
    v21 = *MEMORY[0x277D85DE8];
    goto LABEL_6;
  }

  v24 = v0[11];
  v23 = v0[12];
  v25 = v0[9];

  (*(v5 + 32))(v25, v24, v4);
  outlined destroy of URL?(v23, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);

  v20 = v0[1];
  v26 = *MEMORY[0x277D85DE8];
LABEL_6:

  return v20();
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

void closure #1 in prepareUrlAccess(_:)(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() defaultManager];
  v5 = URL.path.getter();
  v6 = MEMORY[0x23EE70700](v5);

  v7 = [v4 fileExistsAtPath_];

  if (v7)
  {
    outlined destroy of URL?(a2, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v8 = type metadata accessor for URL();
    v10 = *(v8 - 8);
    (*(v10 + 16))(a2, a1, v8);
    v9 = *(v10 + 56);

    v9(a2, 0, 1, v8);
  }
}

uint64_t thunk for @escaping @callee_guaranteed (@in_guaranteed URL) -> ()(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v8(v6);
  return (*(v3 + 8))(v6, v2);
}

void assetImageContentToUrl(_:)(void *a1@<X0>, char *a2@<X8>)
{
  v4 = type metadata accessor for UUID();
  v47 = *(v4 - 8);
  v48 = v4;
  v5 = *(v47 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v45 - v10;
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  v14 = v13[8];
  v15 = MEMORY[0x28223BE20](v12);
  v17 = v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = v45 - v18;
  v50 = [a1 content];
  v20 = swift_dynamicCast();
  v21 = v13[7];
  if (v20)
  {
    v21(v11, 0, 1, v12);
    v22 = v13[4];
    v22(v19, v11, v12);
    v22(a2, v19, v12);
    return;
  }

  v46 = a2;
  v21(v11, 1, 1, v12);
  outlined destroy of URL?(v11, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v23 = [a1 content];
  objc_opt_self();
  v24 = swift_dynamicCastObjCClass();
  if (!v24)
  {
    swift_unknownObjectRelease();
    [a1 content];
    objc_opt_self();
    v35 = swift_dynamicCastObjCClass();
    if (!v35)
    {
      swift_unknownObjectRelease();
      type metadata accessor for JournalingSuggestionsError();
      lazy protocol witness table accessor for type JournalingSuggestionsError and conformance JournalingSuggestionsError(&lazy protocol witness table cache variable for type JournalingSuggestionsError and conformance JournalingSuggestionsError, type metadata accessor for JournalingSuggestionsError);
      swift_allocError();
      *v43 = 0x6D4949552C4C5255;
      v43[1] = 0xEB00000000656761;
      v43[2] = 0;
      v43[3] = 0;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      return;
    }

    v36 = v35;
    if (getCurrentTheme()() == 2)
    {
      v37 = [v36 darkURL];
      static URL._unconditionallyBridgeFromObjectiveC(_:)();
      swift_unknownObjectRelease();

      return;
    }

    v44 = [v36 lightURL];
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    goto LABEL_18;
  }

  v25 = v24;
  v45[1] = v23;
  v26 = [objc_opt_self() defaultManager];
  v27 = [v26 temporaryDirectory];

  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  UUID.init()();
  UUID.uuidString.getter();
  (*(v47 + 8))(v7, v48);
  v28 = v46;
  URL.appendingPathComponent(_:)();

  v48 = v13[1];
  v48(v17, v12);
  v29 = UIImageHEICRepresentation(v25);
  if (!v29)
  {
    v38 = UIImagePNGRepresentation(v25);
    if (v38)
    {
      v39 = v38;
      v31 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v33 = v40;

      v34 = v46;
      goto LABEL_12;
    }

LABEL_18:
    swift_unknownObjectRelease();
    return;
  }

  v30 = v29;
  v31 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = v32;

  v34 = v28;
LABEL_12:
  URL.appendingPathExtension(_:)();
  v41 = v48;
  v48(v34, v12);
  (v13[4])(v34, v17, v12);
  v42 = v49;
  Data.write(to:options:)();
  if (v42)
  {
    v41(v34, v12);
  }

  outlined consume of Data._Representation(v31, v33);
  swift_unknownObjectRelease();
}

uint64_t getCurrentTheme()()
{
  v7 = 1;
  type metadata accessor for OS_dispatch_queue();
  v0 = static OS_dispatch_queue.main.getter();
  v1 = swift_allocObject();
  *(v1 + 16) = &v7;
  v2 = swift_allocObject();
  *(v2 + 16) = partial apply for closure #1 in getCurrentTheme();
  *(v2 + 24) = v1;
  aBlock[4] = partial apply for thunk for @callee_guaranteed () -> ();
  aBlock[5] = v2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_15;
  v3 = _Block_copy(aBlock);

  dispatch_sync(v0, v3);

  _Block_release(v3);
  LOBYTE(v0) = swift_isEscapingClosureAtFileLocation();

  if (v0)
  {
    __break(1u);
  }

  else
  {
    v5 = v7;

    return v5;
  }

  return result;
}

uint64_t makeDateInternal(start:end:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8) + 64);
  v6 = (MEMORY[0x28223BE20])();
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v31 - v9;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v13 = v12[8];
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v34 = &v31 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v31 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v31 - v22;
  outlined init with copy of URL?(a1, v10, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v24 = v12[6];
  if (v24(v10, 1, v11) == 1)
  {
    outlined destroy of URL?(v10, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v25 = 1;
  }

  else
  {
    v31 = v16;
    v32 = a3;
    v26 = v12[4];
    v26(v23, v10, v11);
    outlined init with copy of URL?(v33, v8, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    if (v24(v8, 1, v11) == 1)
    {
      v27 = v12[2];
      v27(v21, v23, v11);
      if (v24(v8, 1, v11) != 1)
      {
        outlined destroy of URL?(v8, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      }
    }

    else
    {
      v26(v21, v8, v11);
      v27 = v12[2];
    }

    a3 = v32;
    v27(v34, v23, v11);
    v27(v31, v21, v11);
    DateInterval.init(start:end:)();
    v28 = v12[1];
    v28(v21, v11);
    v28(v23, v11);
    v25 = 0;
  }

  v29 = type metadata accessor for DateInterval();
  return (*(*(v29 - 8) + 56))(a3, v25, 1, v29);
}

void closure #1 in getCurrentTheme()(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D75D28]) init];
  v3 = [v2 traitCollection];
  v4 = [v3 userInterfaceStyle];

  *a1 = v4;
}

void *_sSo26MOSuggestionSheetViewStateVSYSCSY8rawValuexSg03RawF0Qz_tcfCTW_0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t _sSo35MOSuggestionAssetMotionActivityTypeaSYSCSY8rawValue03RawG0QzvgTW_0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance MOSuggestionAssetsType(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance MOSuggestionAssetsType(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance MOSuggestionAssetsType@<X0>(uint64_t *a1@<X8>)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = MEMORY[0x23EE70700](v2);

  *a1 = v3;
  return result;
}

uint64_t partial apply for thunk for @callee_guaranteed (@in_guaranteed URL) -> ()()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t type metadata accessor for JournalingSuggestionsError()
{
  result = type metadata singleton initialization cache for JournalingSuggestionsError;
  if (!type metadata singleton initialization cache for JournalingSuggestionsError)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t type metadata accessor for OS_dispatch_queue()
{
  result = lazy cache variable for type metadata for OS_dispatch_queue;
  if (!lazy cache variable for type metadata for OS_dispatch_queue)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_dispatch_queue);
  }

  return result;
}

uint64_t partial apply for thunk for @callee_guaranteed () -> ()()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t outlined init with copy of URL?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of URL?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void type metadata completion function for JournalingSuggestionsError()
{
  type metadata accessor for (url: URL?)();
  if (v0 <= 0x3F)
  {
    type metadata accessor for (assetType: String)();
    if (v1 <= 0x3F)
    {
      type metadata accessor for (expected: String, from: String?)();
      if (v2 <= 0x3F)
      {
        type metadata accessor for (context: String)();
        if (v3 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for (url: URL?)()
{
  if (!lazy cache variable for type metadata for (url: URL?))
  {
    type metadata accessor for URL?();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for (url: URL?));
    }
  }
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

uint64_t type metadata accessor for (assetType: String)()
{
  result = lazy cache variable for type metadata for (assetType: String);
  if (!lazy cache variable for type metadata for (assetType: String))
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &lazy cache variable for type metadata for (assetType: String));
  }

  return result;
}

void type metadata accessor for (expected: String, from: String?)()
{
  if (!lazy cache variable for type metadata for (expected: String, from: String?))
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSSSgMd, "\\7");
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (expected: String, from: String?));
    }
  }
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

uint64_t type metadata accessor for (context: String)()
{
  result = lazy cache variable for type metadata for (context: String);
  if (!lazy cache variable for type metadata for (context: String))
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &lazy cache variable for type metadata for (context: String));
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for CGRect(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CGRect(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance MOSuggestionAssetMotionActivityType(uint64_t *a1, uint64_t *a2)
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

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance MOSuggestionAssetsType(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type JournalingSuggestionsError and conformance JournalingSuggestionsError(&lazy protocol witness table cache variable for type MOSuggestionAssetsType and conformance MOSuggestionAssetsType, type metadata accessor for MOSuggestionAssetsType);
  v3 = lazy protocol witness table accessor for type JournalingSuggestionsError and conformance JournalingSuggestionsError(&lazy protocol witness table cache variable for type MOSuggestionAssetsType and conformance MOSuggestionAssetsType, type metadata accessor for MOSuggestionAssetsType);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance MOSuggestionAssetsType@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = MEMORY[0x23EE70700](*a1, a1[1]);

  *a2 = v3;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance MOSuggestionAssetMetadataKey(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type JournalingSuggestionsError and conformance JournalingSuggestionsError(&lazy protocol witness table cache variable for type MOSuggestionAssetMetadataKey and conformance MOSuggestionAssetMetadataKey, type metadata accessor for MOSuggestionAssetMetadataKey);
  v3 = lazy protocol witness table accessor for type JournalingSuggestionsError and conformance JournalingSuggestionsError(&lazy protocol witness table cache variable for type MOSuggestionAssetMetadataKey and conformance MOSuggestionAssetMetadataKey, type metadata accessor for MOSuggestionAssetMetadataKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t lazy protocol witness table accessor for type JournalingSuggestionsError and conformance JournalingSuggestionsError(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance MOSuggestionAssetMotionActivityType(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type JournalingSuggestionsError and conformance JournalingSuggestionsError(&lazy protocol witness table cache variable for type MOSuggestionAssetMotionActivityType and conformance MOSuggestionAssetMotionActivityType, type metadata accessor for MOSuggestionAssetMotionActivityType);
  v3 = lazy protocol witness table accessor for type JournalingSuggestionsError and conformance JournalingSuggestionsError(&lazy protocol witness table cache variable for type MOSuggestionAssetMotionActivityType and conformance MOSuggestionAssetMotionActivityType, type metadata accessor for MOSuggestionAssetMotionActivityType);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance MOSuggestionAssetMetadataKey()
{
  v1 = *v0;
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = MEMORY[0x23EE707F0](v2);

  return v3;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance MOSuggestionAssetMetadataKey()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MOSuggestionAssetMetadataKey()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return v2;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for PlatformVersion(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PlatformVersion(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

void type metadata accessor for CGRect(uint64_t a1, unint64_t *a2)
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

uint64_t (*static JournalingSuggestion.Contact.getAssetLoader(for:)())(void (*a1)(void, void), uint64_t a2)
{
  result = Asset.transferRepresentation.getter();
  if (result)
  {
    v1 = result;
    type metadata accessor for TransferContactViewModel();
    v2 = swift_dynamicCastClass();
    if (v2 && (v3 = v2, v4 = dispatch thunk of TransferContactViewModel.name.getter(), v5))
    {
      v6 = v4;
      v7 = v5;
      v8 = swift_allocObject();
      v8[2] = v3;
      v8[3] = v6;
      v8[4] = v7;
      return partial apply for closure #1 in static JournalingSuggestion.Contact.getAssetLoader(for:);
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t closure #1 in static JournalingSuggestion.Contact.getAssetLoader(for:)(void (*a1)(void, void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v47 = a4;
  v48 = a5;
  v49 = a2;
  v46 = type metadata accessor for JournalingSuggestion.Contact(0);
  v6 = *(*(v46 - 8) + 64);
  MEMORY[0x28223BE20](v46);
  v8 = (&v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for UUID();
  v42 = *(v9 - 8);
  v43 = v9;
  v10 = *(v42 + 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v22 = &v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v40 - v23;
  v45 = v14;
  v44 = *(v14 + 56);
  v44(&v40 - v23, 1, 1, v13);
  v25 = dispatch thunk of AssetViewModel.baseImage.getter();
  if (v25)
  {
    v26 = v25;
    v27 = Image.uiImage.getter();

    if (v27)
    {
      v41 = a1;
      v28 = [objc_opt_self() defaultManager];
      v29 = [v28 temporaryDirectory];

      static URL._unconditionallyBridgeFromObjectiveC(_:)();
      UUID.init()();
      UUID.uuidString.getter();
      (*(v42 + 1))(v12, v43);
      URL.appendingPathComponent(_:)();

      v30 = *(v45 + 8);
      v30(v17, v13);
      v31 = UIImageHEICRepresentation(v27);
      if (v31 || (v31 = UIImagePNGRepresentation(v27)) != 0)
      {
        v42 = v30;
        v43 = v27;
        v32 = v31;
        v33 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v35 = v34;

        URL.appendingPathExtension(_:)();
        v42(v22, v13);
        (*(v45 + 32))(v22, v17, v13);
        Data.write(to:options:)();
        outlined consume of Data._Representation(v33, v35);
        v27 = v43;
      }

      outlined destroy of URL?(v24, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);

      v44(v22, 0, 1, v13);
      outlined init with take of URL?(v22, v24);
      a1 = v41;
    }
  }

  v36 = v46;
  outlined init with copy of URL?(v24, v8 + *(v46 + 20));
  v37 = v48;
  *v8 = v47;
  v8[1] = v37;
  v50[3] = v36;
  v50[4] = &protocol witness table for JournalingSuggestion.Contact;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v50);
  outlined init with copy of JournalingSuggestion.Contact(v8, boxed_opaque_existential_1);

  a1(v50, 0);
  outlined destroy of JournalingSuggestion.Contact(v8);
  outlined destroy of URL?(v24, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  return outlined destroy of URL?(v50, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMd, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMR);
}

uint64_t protocol witness for static InternalAssetProvider.getAssetLoader(for:) in conformance JournalingSuggestion.Contact()
{
  v1 = Asset.transferRepresentation.getter();
  if (v1)
  {
    v2 = v1;
    type metadata accessor for TransferContactViewModel();
    v3 = swift_dynamicCastClass();
    if (v3)
    {
      v4 = v3;
      v5 = dispatch thunk of TransferContactViewModel.name.getter();
      if (v6)
      {
        v7 = v5;
        v8 = v6;
        v9 = swift_allocObject();
        v9[2] = v4;
        v9[3] = v7;
        v9[4] = v8;
        v1 = closure #1 in static JournalingSuggestion.Contact.getAssetLoader(for:)partial apply;
        goto LABEL_7;
      }
    }

    v1 = 0;
  }

  v9 = 0;
LABEL_7:
  v10 = *(v0 + 8);

  return v10(v1, v9);
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t outlined init with copy of URL?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t outlined init with copy of JournalingSuggestion.Contact(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JournalingSuggestion.Contact(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of JournalingSuggestion.Contact(uint64_t a1)
{
  v2 = type metadata accessor for JournalingSuggestion.Contact(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with take of URL?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t (*static JournalingSuggestion.Location.getAssetLoader(transferMapViewModel:)(void *a1))(void (*a1)(uint64_t *, void), uint64_t a2)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return partial apply for closure #1 in static JournalingSuggestion.Location.getAssetLoader(transferMapViewModel:);
}

uint64_t closure #1 in static JournalingSuggestion.Location.getAssetLoader(transferMapViewModel:)(void (*a1)(uint64_t *, void), uint64_t a2)
{
  v36 = a2;
  v37 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v33 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v33 - v8;
  v10 = type metadata accessor for JournalingSuggestion.Location(0);
  v11 = *(*(v10 - 1) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = (&v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v12 + 28);
  v16 = type metadata accessor for Date();
  v34 = *(*(v16 - 8) + 56);
  v35 = v15;
  v34(v14 + v15, 1, 1, v16);
  v33 = v10[9];
  *(v14 + v33) = 0;
  *(v14 + v10[10]) = 2;
  *v14 = dispatch thunk of TransferMapViewModel.placeName.getter();
  v14[1] = v17;
  v14[2] = dispatch thunk of TransferMapViewModel.cityName.getter();
  v14[3] = v18;
  v14[4] = dispatch thunk of TransferMapViewModel.location.getter();
  dispatch thunk of AssetViewModel.baseDateInterval.getter();
  v19 = type metadata accessor for DateInterval();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v5, 1, v19) == 1)
  {
    outlined destroy of URL?(v5, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
    v21 = 1;
  }

  else
  {
    DateInterval.start.getter();
    (*(v20 + 8))(v5, v19);
    v21 = 0;
  }

  v34(v9, v21, 1, v16);
  v22 = (v14 + v10[8]);
  outlined assign with take of Date?(v9, v14 + v35);
  *v22 = dispatch thunk of TransferMapViewModel.mapItem.getter();
  v22[1] = v23;
  v24 = dispatch thunk of TransferMapViewModel.mapItem.getter();
  if (v25)
  {
    v26 = v24;
    v27 = v25;
    v28 = objc_allocWithZone(MEMORY[0x277CD4E98]);
    v29 = MEMORY[0x23EE70700](v26, v27);

    v30 = [v28 initWithIdentifierString_];

    *(v14 + v33) = v30;
  }

  v38[3] = v10;
  v38[4] = &protocol witness table for JournalingSuggestion.Location;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v38);
  outlined init with copy of JournalingSuggestion.Location(v14, boxed_opaque_existential_1);
  v37(v38, 0);
  outlined destroy of URL?(v38, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMd, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMR);
  return outlined destroy of JournalingSuggestion.Location(v14);
}

uint64_t sub_238A79FA0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t (*static JournalingSuggestion.Location.getAssetLoader(for:)())()
{
  result = Asset.transferRepresentation.getter();
  if (result)
  {
    v1 = result;
    type metadata accessor for TransferMapViewModel();
    v2 = swift_dynamicCastClass();
    if (v2)
    {
      *(swift_allocObject() + 16) = v2;
      return closure #1 in static JournalingSuggestion.Location.getAssetLoader(transferMapViewModel:)partial apply;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t (*static JournalingSuggestion.LocationGroup.getAssetLoader(for:)())(uint64_t a1, uint64_t a2)
{
  result = Asset.transferRepresentation.getter();
  if (result)
  {
    v1 = result;
    type metadata accessor for TransferMapViewModel();
    v2 = swift_dynamicCastClass();
    if (v2)
    {
      *(swift_allocObject() + 16) = v2;
      return partial apply for closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:);
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v14 - v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = a3;
  v11[5] = a1;
  v11[6] = a2;
  v12 = a3;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v9, &async function pointer to partial apply for closure #1 in closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:), v11);
}

uint64_t closure #1 in closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[14] = a5;
  v6[15] = a6;
  v6[13] = a4;
  return MEMORY[0x2822009F8](closure #1 in closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:), 0, 0);
}

uint64_t closure #1 in closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:)()
{
  v1 = v0[13];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21JournalingSuggestions0A10SuggestionV8LocationVSgMd, &_s21JournalingSuggestions0A10SuggestionV8LocationVSgMR);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay21JournalingSuggestions0A10SuggestionV8LocationVGSgMd, &_sSay21JournalingSuggestions0A10SuggestionV8LocationVGSgMR);
  v4 = swift_task_alloc();
  v0[16] = v4;
  *(v4 + 16) = v1;
  v5 = *(MEMORY[0x277D858E8] + 4);
  v6 = swift_task_alloc();
  v0[17] = v6;
  *v6 = v0;
  v6[1] = closure #1 in closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:);

  return MEMORY[0x282200600](v0 + 12, v2, v3, 0, 0, &async function pointer to partial apply for closure #1 in closure #1 in closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:), v4, v2);
}

{
  v1 = *(*v0 + 136);
  v2 = *(*v0 + 128);
  v4 = *v0;

  return MEMORY[0x2822009F8](closure #1 in closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:), 0, 0);
}

{
  v1 = *(v0 + 96);
  v2 = *(v0 + 112);
  v3 = *(v0 + 120);
  if (v1)
  {
    *(v0 + 56) = v1;
    v4 = v0 + 56;
    *(v0 + 80) = &type metadata for JournalingSuggestion.LocationGroup;
    *(v0 + 88) = &protocol witness table for JournalingSuggestion.LocationGroup;
  }

  else
  {
    *(v0 + 16) = 0u;
    v4 = v0 + 16;
    *(v0 + 48) = 0;
    *(v0 + 32) = 0u;
  }

  v2(v4, 0);
  outlined destroy of URL?(v4, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMd, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMR);
  v5 = *(v0 + 8);

  return v5();
}

uint64_t closure #1 in closure #1 in closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a2;
  v3[11] = a3;
  v3[9] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v5 = type metadata accessor for JournalingSuggestion.Location(0);
  v3[14] = v5;
  v6 = *(v5 - 8);
  v3[15] = v6;
  v7 = *(v6 + 64) + 15;
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s21JournalingSuggestions0A10SuggestionV8LocationVSgSgMd, &_s21JournalingSuggestions0A10SuggestionV8LocationVSgSgMR) - 8) + 64) + 15;
  v3[18] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21JournalingSuggestions0A10SuggestionV8LocationVSgMd, &_s21JournalingSuggestions0A10SuggestionV8LocationVSgMR);
  v3[19] = v9;
  v10 = *(v9 - 8);
  v3[20] = v10;
  v11 = *(v10 + 64) + 15;
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScG8IteratorVy21JournalingSuggestions0B10SuggestionV8LocationVSg_GMd, &_sScG8IteratorVy21JournalingSuggestions0B10SuggestionV8LocationVSg_GMR);
  v3[23] = v12;
  v13 = *(v12 - 8);
  v3[24] = v13;
  v14 = *(v13 + 64) + 15;
  v3[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in closure #1 in closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:), 0, 0);
}

uint64_t closure #1 in closure #1 in closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:)()
{
  v1 = *(v0 + 88);
  v2 = dispatch thunk of TransferMapViewModel.mapViewModels.getter();
  if (v2)
  {
    v4 = v2;
    if (v2 >> 62)
    {
      if (v2 >= 0)
      {
        v2 &= 0xFFFFFFFFFFFFFF8uLL;
      }

      v36 = v4;
      v5 = MEMORY[0x23EE70C40](v2);
      v4 = v36;
      if (!v5)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v5)
      {
        goto LABEL_25;
      }
    }

    if (v5 < 1)
    {
      __break(1u);
      return MEMORY[0x282200308](v5, v4, v3);
    }

    v6 = 0;
    v45 = v4 & 0xC000000000000001;
    v46 = v5;
    v44 = **(v0 + 80);
    v47 = v4;
    do
    {
      v49 = v6;
      if (v45)
      {
        v10 = MEMORY[0x23EE70B80](v6);
      }

      else
      {
        v10 = *(v4 + 8 * v6 + 32);
      }

      v11 = v10;
      v13 = *(v0 + 96);
      v12 = *(v0 + 104);
      v14 = swift_allocObject();
      *(v14 + 16) = v11;
      v15 = type metadata accessor for TaskPriority();
      v16 = *(v15 - 8);
      (*(v16 + 56))(v12, 1, 1, v15);
      v17 = swift_allocObject();
      v17[2] = 0;
      v18 = v17 + 2;
      v17[3] = 0;
      v17[4] = closure #1 in static JournalingSuggestion.Location.getAssetLoader(transferMapViewModel:)partial apply;
      v17[5] = v14;
      outlined init with copy of URL?(v12, v13, &_sScPSgMd, &_sScPSgMR);
      LODWORD(v12) = (*(v16 + 48))(v13, 1, v15);
      v48 = v11;

      v19 = *(v0 + 96);
      if (v12 == 1)
      {
        outlined destroy of URL?(*(v0 + 96), &_sScPSgMd, &_sScPSgMR);
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*(v16 + 8))(v19, v15);
      }

      if (*v18)
      {
        v20 = v17[3];
        v21 = *v18;
        swift_getObjectType();
        swift_unknownObjectRetain();
        v22 = dispatch thunk of Actor.unownedExecutor.getter();
        v24 = v23;
        swift_unknownObjectRelease();
      }

      else
      {
        v22 = 0;
        v24 = 0;
      }

      v25 = swift_allocObject();
      *(v25 + 16) = &async function pointer to partial apply for closure #1 in closure #1 in closure #1 in closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:);
      *(v25 + 24) = v17;

      if (v24 | v22)
      {
        v7 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v22;
        *(v0 + 40) = v24;
      }

      else
      {
        v7 = 0;
      }

      v6 = v49 + 1;
      v8 = *(v0 + 152);
      v9 = *(v0 + 104);
      *(v0 + 48) = 1;
      *(v0 + 56) = v7;
      *(v0 + 64) = v44;
      swift_task_create();

      outlined destroy of URL?(v9, &_sScPSgMd, &_sScPSgMR);
      v4 = v47;
    }

    while (v46 != v49 + 1);
LABEL_25:

    v37 = *(v0 + 200);
    v38 = *(v0 + 152);
    v39 = **(v0 + 80);
    TaskGroup.makeAsyncIterator()();
    *(v0 + 208) = MEMORY[0x277D84F90];
    v40 = lazy protocol witness table accessor for type TaskGroup<JournalingSuggestion.Location?>.Iterator and conformance TaskGroup<A>.Iterator();
    v41 = *(MEMORY[0x277D856D0] + 4);
    v42 = swift_task_alloc();
    *(v0 + 216) = v42;
    *v42 = v0;
    v42[1] = closure #1 in closure #1 in closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:);
    v43 = *(v0 + 200);
    v4 = *(v0 + 184);
    v5 = *(v0 + 144);
    v3 = v40;

    return MEMORY[0x282200308](v5, v4, v3);
  }

  v26 = *(v0 + 200);
  v27 = *(v0 + 168);
  v28 = *(v0 + 176);
  v30 = *(v0 + 136);
  v29 = *(v0 + 144);
  v31 = *(v0 + 128);
  v33 = *(v0 + 96);
  v32 = *(v0 + 104);
  **(v0 + 72) = 0;

  v34 = *(v0 + 8);

  return v34();
}

{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v11 = *v1;

  if (v0)
  {
    v5 = v2[25];
    v4 = v2[26];
    v8 = v2 + 23;
    v6 = v2[23];
    v7 = v8[1];

    (*(v7 + 8))(v5, v6);

    v9 = destructiveProjectEnumData for JournalingSuggestionsError;
  }

  else
  {
    v9 = closure #1 in closure #1 in closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:);
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

{
  v1 = *(v0 + 144);
  if ((*(*(v0 + 160) + 48))(v1, 1, *(v0 + 152)) == 1)
  {
    v2 = *(v0 + 208);
    (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 184));
    outlined destroy of URL?(v1, &_s21JournalingSuggestions0A10SuggestionV8LocationVSgSgMd, &_s21JournalingSuggestions0A10SuggestionV8LocationVSgSgMR);
    v3 = *(v0 + 200);
    v4 = *(v0 + 168);
    v5 = *(v0 + 176);
    v7 = *(v0 + 136);
    v6 = *(v0 + 144);
    v8 = *(v0 + 128);
    v10 = *(v0 + 96);
    v9 = *(v0 + 104);
    **(v0 + 72) = v2;

    v11 = *(v0 + 8);

    return v11();
  }

  else
  {
    v14 = *(v0 + 168);
    v13 = *(v0 + 176);
    v15 = *(v0 + 112);
    v16 = *(v0 + 120);
    outlined init with take of JournalingSuggestion.Location?(v1, v13);
    outlined init with copy of URL?(v13, v14, &_s21JournalingSuggestions0A10SuggestionV8LocationVSgMd, &_s21JournalingSuggestions0A10SuggestionV8LocationVSgMR);
    if ((*(v16 + 48))(v14, 1, v15) == 1)
    {
      v17 = *(v0 + 168);
      outlined destroy of URL?(*(v0 + 176), &_s21JournalingSuggestions0A10SuggestionV8LocationVSgMd, &_s21JournalingSuggestions0A10SuggestionV8LocationVSgMR);
      outlined destroy of URL?(v17, &_s21JournalingSuggestions0A10SuggestionV8LocationVSgMd, &_s21JournalingSuggestions0A10SuggestionV8LocationVSgMR);
      v18 = *(v0 + 208);
    }

    else
    {
      v19 = *(v0 + 208);
      v21 = *(v0 + 128);
      v20 = *(v0 + 136);
      outlined init with take of JournalingSuggestion.Location(*(v0 + 168), v20);
      outlined init with copy of JournalingSuggestion.Location(v20, v21);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = *(v0 + 208);
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18[2] + 1, 1, *(v0 + 208));
      }

      v24 = v18[2];
      v23 = v18[3];
      if (v24 >= v23 >> 1)
      {
        v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v23 > 1, v24 + 1, 1, v18);
      }

      v25 = *(v0 + 176);
      v26 = *(v0 + 128);
      v27 = *(v0 + 120);
      outlined destroy of JournalingSuggestion.Location(*(v0 + 136));
      outlined destroy of URL?(v25, &_s21JournalingSuggestions0A10SuggestionV8LocationVSgMd, &_s21JournalingSuggestions0A10SuggestionV8LocationVSgMR);
      v18[2] = v24 + 1;
      outlined init with take of JournalingSuggestion.Location(v26, v18 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v24);
    }

    *(v0 + 208) = v18;
    v28 = lazy protocol witness table accessor for type TaskGroup<JournalingSuggestion.Location?>.Iterator and conformance TaskGroup<A>.Iterator();
    v29 = *(MEMORY[0x277D856D0] + 4);
    v30 = swift_task_alloc();
    *(v0 + 216) = v30;
    *v30 = v0;
    v30[1] = closure #1 in closure #1 in closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:);
    v31 = *(v0 + 200);
    v32 = *(v0 + 184);
    v33 = *(v0 + 144);

    return MEMORY[0x282200308](v33, v32, v28);
  }
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x2822009F8](closure #1 in closure #1 in closure #1 in closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:), 0, 0);
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:)()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *(v1 + 16) = *(v0 + 24);
  v2 = *(MEMORY[0x277D859E0] + 4);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21JournalingSuggestions0A10SuggestionV8LocationVSgMd, &_s21JournalingSuggestions0A10SuggestionV8LocationVSgMR);
  *v3 = v0;
  v3[1] = closure #1 in closure #1 in closure #1 in closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:);
  v5 = *(v0 + 16);

  return MEMORY[0x2822007B8](v5, 0, 0, 0xD000000000000014, 0x8000000238ADF470, partial apply for closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:), v1, v4);
}

{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:)(uint64_t a1, void (*a2)(uint64_t (*)(uint64_t a1), uint64_t))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy21JournalingSuggestions0A10SuggestionV8LocationVSgs5NeverOGMd, &_sScCy21JournalingSuggestions0A10SuggestionV8LocationVSgs5NeverOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  (*(v5 + 16))(&v12 - v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  a2(partial apply for closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:), v10);
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21JournalingSuggestions0A10SuggestionV8LocationVSgMd, &_s21JournalingSuggestions0A10SuggestionV8LocationVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v11[-v4 - 8];
  outlined init with copy of URL?(a1, v11, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMd, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMR);
  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s21JournalingSuggestions0A15SuggestionAsset_pMd, &_s21JournalingSuggestions0A15SuggestionAsset_pMR);
    v6 = type metadata accessor for JournalingSuggestion.Location(0);
    v7 = swift_dynamicCast();
    (*(*(v6 - 8) + 56))(v5, v7 ^ 1u, 1, v6);
  }

  else
  {
    outlined destroy of URL?(v11, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMd, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMR);
    v8 = type metadata accessor for JournalingSuggestion.Location(0);
    (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy21JournalingSuggestions0A10SuggestionV8LocationVSgs5NeverOGMd, &_sScCy21JournalingSuggestions0A10SuggestionV8LocationVSgs5NeverOGMR);
  return CheckedContinuation.resume(returning:)();
}

uint64_t protocol witness for static InternalAssetProvider.getAssetLoader(for:) in conformance JournalingSuggestion.Location()
{
  v1 = Asset.transferRepresentation.getter();
  if (v1)
  {
    v2 = v1;
    type metadata accessor for TransferMapViewModel();
    v3 = swift_dynamicCastClass();
    if (v3)
    {
      v4 = v3;
      v5 = swift_allocObject();
      *(v5 + 16) = v4;
      v1 = closure #1 in static JournalingSuggestion.Location.getAssetLoader(transferMapViewModel:)partial apply;
      goto LABEL_6;
    }

    v1 = 0;
  }

  v5 = 0;
LABEL_6:
  v6 = *(v0 + 8);

  return v6(v1, v5);
}

uint64_t protocol witness for static InternalAssetProvider.getAssetLoader(for:) in conformance JournalingSuggestion.LocationGroup()
{
  v1 = Asset.transferRepresentation.getter();
  if (v1)
  {
    v2 = v1;
    type metadata accessor for TransferMapViewModel();
    v3 = swift_dynamicCastClass();
    if (v3)
    {
      v4 = v3;
      v5 = swift_allocObject();
      *(v5 + 16) = v4;
      v1 = closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:)partial apply;
      goto LABEL_6;
    }

    v1 = 0;
  }

  v5 = 0;
LABEL_6:
  v6 = *(v0 + 8);

  return v6(v1, v5);
}

uint64_t sub_238A7B6F8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t partial apply for closure #1 in closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:);

  return closure #1 in closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:)(a1, v4, v5, v6, v7, v8);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = partial apply for closure #1 in closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:);

  return closure #1 in closure #1 in closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:)(a1, a2, v6);
}

uint64_t sub_238A7B8B8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in closure #1 in closure #1 in closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:);

  return closure #1 in closure #1 in closure #1 in closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:)(a1, v4, v5, v7, v6);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:)()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_238A7BAAC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTR21JournalingSuggestions0C10SuggestionV8LocationVSg_Tg5TA(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for closure #1 in closure #1 in closure #1 in closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTR21JournalingSuggestions0C10SuggestionV8LocationVSg_Tg5(a1, v5);
}

unint64_t lazy protocol witness table accessor for type TaskGroup<JournalingSuggestion.Location?>.Iterator and conformance TaskGroup<A>.Iterator()
{
  result = lazy protocol witness table cache variable for type TaskGroup<JournalingSuggestion.Location?>.Iterator and conformance TaskGroup<A>.Iterator;
  if (!lazy protocol witness table cache variable for type TaskGroup<JournalingSuggestion.Location?>.Iterator and conformance TaskGroup<A>.Iterator)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sScG8IteratorVy21JournalingSuggestions0B10SuggestionV8LocationVSg_GMd, &_sScG8IteratorVy21JournalingSuggestions0B10SuggestionV8LocationVSg_GMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TaskGroup<JournalingSuggestion.Location?>.Iterator and conformance TaskGroup<A>.Iterator);
  }

  return result;
}

uint64_t outlined init with take of JournalingSuggestion.Location?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21JournalingSuggestions0A10SuggestionV8LocationVSgMd, &_s21JournalingSuggestions0A10SuggestionV8LocationVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of JournalingSuggestion.Location(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JournalingSuggestion.Location(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of JournalingSuggestion.Location(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JournalingSuggestion.Location(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of JournalingSuggestion.Location(uint64_t a1)
{
  v2 = type metadata accessor for JournalingSuggestion.Location(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_238A7BD9C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy21JournalingSuggestions0A10SuggestionV8LocationVSgs5NeverOGMd, &_sScCy21JournalingSuggestions0A10SuggestionV8LocationVSgs5NeverOGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:)(uint64_t a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy21JournalingSuggestions0A10SuggestionV8LocationVSgs5NeverOGMd, &_sScCy21JournalingSuggestions0A10SuggestionV8LocationVSgs5NeverOGMR) - 8) + 80);

  return closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:)(a1);
}

uint64_t outlined assign with take of Date?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t static JournalingSuggestion.Workout.Details.getAssetLoader(workoutViewModel:)()
{
  v1 = *(v0 + 16);
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  v5 = *(v0 + 8);
  v3 = v1;

  return v5(partial apply for closure #1 in static JournalingSuggestion.Workout.Details.getAssetLoader(workoutViewModel:), v2);
}

uint64_t closure #1 in static JournalingSuggestion.Workout.Details.getAssetLoader(workoutViewModel:)(void (*a1)(uint64_t *, void), uint64_t a2)
{
  v74 = a2;
  v75 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v66 = v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v72 = v60 - v7;
  MEMORY[0x28223BE20](v6);
  v69 = (v60 - v8);
  v73 = type metadata accessor for Date();
  v68 = *(v73 - 8);
  v9 = *(v68 + 64);
  v10 = MEMORY[0x28223BE20](v73);
  v65 = v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v64 = v60 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v62 = v60 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v63 = v60 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v67 = v60 - v19;
  MEMORY[0x28223BE20](v18);
  v71 = v60 - v20;
  v21 = type metadata accessor for JournalingSuggestion.Workout.Details(0);
  v22 = *(*(v21 - 1) + 64);
  MEMORY[0x28223BE20](v21);
  v24 = (v60 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = dispatch thunk of TransferWorkoutViewModel.activityType.getter();
  if (v26)
  {
    v27 = 3000;
  }

  else
  {
    v27 = v25;
  }

  v28 = v21[8];
  v29 = type metadata accessor for DateInterval();
  v76 = *(v29 - 8);
  v30 = *(v76 + 56);
  v61 = v28;
  v60[1] = v76 + 56;
  v60[0] = v30;
  v30(v24 + v28, 1, 1, v29);
  *v24 = v27;
  v31 = (v24 + v21[9]);
  v32 = (v24 + v21[10]);
  v33 = (v24 + v21[11]);
  v34 = (v24 + v21[12]);
  v35 = v21[14];
  v70 = v21[13];
  v36 = (v24 + v35);
  v24[1] = dispatch thunk of TransferWorkoutViewModel.activeEnergyBurned.getter();
  *v32 = dispatch thunk of TransferWorkoutViewModel.activeEnergyBurnedLocalizedString.getter();
  v32[1] = v37;
  v24[2] = dispatch thunk of TransferWorkoutViewModel.distance.getter();
  *v31 = dispatch thunk of TransferWorkoutViewModel.distanceLocalizedString.getter();
  v31[1] = v38;
  v24[3] = dispatch thunk of TransferWorkoutViewModel.averageHeartRate.getter();
  *v33 = dispatch thunk of TransferWorkoutViewModel.averageHeartRateLocalizedString.getter();
  v33[1] = v39;
  v40 = v69;
  *v34 = dispatch thunk of AssetViewModel.baseTitle.getter();
  v34[1] = v41;
  *v36 = dispatch thunk of AssetViewModel.baseTitle.getter();
  v36[1] = v42;
  v43 = v76;
  *(v24 + v70) = dispatch thunk of TransferWorkoutViewModel.isIndoors.getter();
  dispatch thunk of AssetViewModel.baseDateInterval.getter();
  v44 = *(v43 + 48);
  v70 = v29;
  if (v44(v40, 1, v29) == 1)
  {
    outlined destroy of URL?(v40, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  }

  else
  {
    v45 = v67;
    DateInterval.start.getter();
    v46 = *(v43 + 8);
    v47 = v70;
    v76 = v43 + 8;
    v69 = v46;
    v46(v40, v70);
    v48 = v68;
    v67 = *(v68 + 32);
    (v67)(v71, v45, v73);
    v49 = v72;
    dispatch thunk of AssetViewModel.baseDateInterval.getter();
    if (v44(v49, 1, v47) == 1)
    {
      (*(v48 + 8))(v71, v73);
      outlined destroy of URL?(v72, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
    }

    else
    {
      v50 = v62;
      v51 = v72;
      DateInterval.end.getter();
      v69(v51, v70);
      v52 = v63;
      v53 = v73;
      (v67)(v63, v50, v73);
      v54 = *(v48 + 16);
      v55 = v71;
      v54(v64, v71, v53);
      v54(v65, v52, v53);
      v56 = v66;
      DateInterval.init(start:end:)();
      v57 = *(v48 + 8);
      v57(v52, v53);
      v57(v55, v53);
      (v60[0])(v56, 0, 1, v70);
      outlined assign with take of URL?(v56, v24 + v61, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
    }
  }

  v77[3] = v21;
  v77[4] = &protocol witness table for JournalingSuggestion.Workout.Details;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v77);
  outlined init with copy of JournalingSuggestion.WorkoutGroup(v24, boxed_opaque_existential_1, type metadata accessor for JournalingSuggestion.Workout.Details);
  v75(v77, 0);
  outlined destroy of URL?(v77, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMd, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMR);
  return outlined destroy of JournalingSuggestion.WorkoutGroup(v24, type metadata accessor for JournalingSuggestion.Workout.Details);
}

uint64_t sub_238A7C614()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t static JournalingSuggestion.Workout.Details.getAssetLoader(for:)()
{
  v1 = *(v0 + 16);
  v2 = Asset.transferRepresentation.getter();
  if (v2)
  {
    v3 = v2;
    type metadata accessor for TransferWorkoutViewModel();
    v4 = swift_dynamicCastClass();
    if (v4)
    {
      v5 = v4;
      v6 = swift_allocObject();
      *(v6 + 16) = v5;
      v2 = closure #1 in static JournalingSuggestion.Workout.Details.getAssetLoader(workoutViewModel:)partial apply;
      goto LABEL_6;
    }

    v2 = 0;
  }

  v6 = 0;
LABEL_6:
  v7 = *(v0 + 8);

  return v7(v2, v6);
}

uint64_t static JournalingSuggestion.Workout.getAssetLoader(workoutViewModel:detailsLoader:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](static JournalingSuggestion.Workout.getAssetLoader(workoutViewModel:detailsLoader:), 0, 0);
}

uint64_t static JournalingSuggestion.Workout.getAssetLoader(workoutViewModel:detailsLoader:)()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = swift_allocObject();
  v4[2] = v2;
  v4[3] = v1;
  v4[4] = v3;
  v7 = v0[1];

  v5 = v3;

  return v7(partial apply for closure #1 in static JournalingSuggestion.Workout.getAssetLoader(workoutViewModel:detailsLoader:), v4);
}

uint64_t closure #1 in static JournalingSuggestion.Workout.getAssetLoader(workoutViewModel:detailsLoader:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t (*)(uint64_t a1, void *a2), void *), uint64_t a4, void *a5)
{
  v9 = swift_allocObject();
  v9[2] = a5;
  v9[3] = a1;
  v9[4] = a2;
  v10 = a5;

  a3(partial apply for closure #1 in closure #1 in static JournalingSuggestion.Workout.getAssetLoader(workoutViewModel:detailsLoader:), v9);
}

uint64_t closure #1 in closure #1 in static JournalingSuggestion.Workout.getAssetLoader(workoutViewModel:detailsLoader:)(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v20 - v12;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  outlined init with copy of URL?(a1, v21, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMd, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMR);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  v16 = v21[1];
  *(v15 + 32) = v21[0];
  *(v15 + 48) = v16;
  *(v15 + 64) = v22;
  *(v15 + 72) = a3;
  *(v15 + 80) = a4;
  *(v15 + 88) = a5;
  *(v15 + 96) = a2;
  v17 = a3;

  v18 = a2;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v13, &async function pointer to partial apply for closure #1 in closure #1 in closure #1 in static JournalingSuggestion.Workout.getAssetLoader(workoutViewModel:detailsLoader:), v15);
}

uint64_t closure #1 in closure #1 in closure #1 in static JournalingSuggestion.Workout.getAssetLoader(workoutViewModel:detailsLoader:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[20] = a7;
  v8[21] = a8;
  v8[18] = a5;
  v8[19] = a6;
  v8[17] = a4;
  v9 = type metadata accessor for UUID();
  v8[22] = v9;
  v10 = *(v9 - 8);
  v8[23] = v10;
  v11 = *(v10 + 64) + 15;
  v8[24] = swift_task_alloc();
  v12 = type metadata accessor for URL();
  v8[25] = v12;
  v13 = *(v12 - 8);
  v8[26] = v13;
  v14 = *(v13 + 64) + 15;
  v8[27] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR) - 8) + 64) + 15;
  v8[28] = swift_task_alloc();
  v16 = type metadata accessor for JournalingSuggestion.Workout(0);
  v8[29] = v16;
  v17 = *(*(v16 - 8) + 64) + 15;
  v8[30] = swift_task_alloc();
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s21JournalingSuggestions0A10SuggestionV7WorkoutV7DetailsVSgMd, &_s21JournalingSuggestions0A10SuggestionV7WorkoutV7DetailsVSgMR) - 8) + 64) + 15;
  v8[31] = swift_task_alloc();
  v19 = type metadata accessor for JournalingSuggestion.Workout.Details(0);
  v8[32] = v19;
  v20 = *(v19 - 8);
  v8[33] = v20;
  v21 = *(v20 + 64) + 15;
  v8[34] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in closure #1 in closure #1 in static JournalingSuggestion.Workout.getAssetLoader(workoutViewModel:detailsLoader:), 0, 0);
}

uint64_t closure #1 in closure #1 in closure #1 in static JournalingSuggestion.Workout.getAssetLoader(workoutViewModel:detailsLoader:)()
{
  v1 = *(v0 + 264);
  outlined init with copy of URL?(*(v0 + 136), v0 + 16, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMd, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMR);
  v2 = (v1 + 56);
  if (!*(v0 + 40))
  {
    v32 = *(v0 + 248);
    v33 = *(v0 + 256);
    outlined destroy of URL?(v0 + 16, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMd, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMR);
    (*v2)(v32, 1, 1, v33);
    goto LABEL_9;
  }

  v3 = *(v0 + 256);
  v4 = *(v0 + 264);
  v5 = *(v0 + 248);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21JournalingSuggestions0A15SuggestionAsset_pMd, &_s21JournalingSuggestions0A15SuggestionAsset_pMR);
  v6 = swift_dynamicCast();
  v7 = *v2;
  (*v2)(v5, v6 ^ 1u, 1, v3);
  if ((*(v4 + 48))(v5, 1, v3) == 1)
  {
LABEL_9:
    v35 = *(v0 + 160);
    v34 = *(v0 + 168);
    v36 = *(v0 + 152);
    outlined destroy of URL?(*(v0 + 248), &_s21JournalingSuggestions0A10SuggestionV7WorkoutV7DetailsVSgMd, &_s21JournalingSuggestions0A10SuggestionV7WorkoutV7DetailsVSgMR);
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0u;
    *(v0 + 88) = 0;
    v36(v0 + 56, v34);
    outlined destroy of URL?(v0 + 56, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMd, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMR);
    goto LABEL_14;
  }

  v8 = *(v0 + 272);
  v9 = *(v0 + 256);
  v11 = *(v0 + 232);
  v10 = *(v0 + 240);
  v12 = *(v0 + 200);
  v13 = *(v0 + 208);
  v14 = *(v0 + 144);
  outlined init with take of JournalingSuggestion.Workout(*(v0 + 248), v8, type metadata accessor for JournalingSuggestion.Workout.Details);
  outlined init with copy of JournalingSuggestion.WorkoutGroup(v8, v10, type metadata accessor for JournalingSuggestion.Workout.Details);
  v7(v10, 0, 1, v9);
  v15 = *(v11 + 20);
  v16 = *(v13 + 56);
  v16(v10 + v15, 1, 1, v12);
  v17 = *(v11 + 24);
  *(v10 + v17) = dispatch thunk of TransferWorkoutViewModel.routeLocations.getter();
  if ((dispatch thunk of TransferWorkoutViewModel.isRouteBasedWorkout.getter() & 1) == 0)
  {
    v18 = *(v0 + 144);
    v19 = dispatch thunk of AssetViewModel.baseImage.getter();
    if (v19)
    {
      v20 = v19;
      v21 = Image.uiImage.getter();

      if (v21)
      {
        v66 = v16;
        v67 = v15;
        v22 = *(v0 + 216);
        v23 = *(v0 + 208);
        v63 = *(v0 + 224);
        v64 = *(v0 + 200);
        v25 = *(v0 + 184);
        v24 = *(v0 + 192);
        v26 = *(v0 + 176);
        v68 = v21;
        v27 = [objc_opt_self() defaultManager];
        v28 = [v27 temporaryDirectory];

        static URL._unconditionallyBridgeFromObjectiveC(_:)();
        UUID.init()();
        UUID.uuidString.getter();
        (*(v25 + 8))(v24, v26);
        v29 = v68;
        URL.appendingPathComponent(_:)();

        v30 = *(v23 + 8);
        v30(v22, v64);
        v31 = UIImageHEICRepresentation(v68);
        if (v31 || (v31 = UIImagePNGRepresentation(v68)) != 0)
        {
          v65 = v30;
          v38 = *(v0 + 216);
          v37 = *(v0 + 224);
          v39 = v31;
          v62 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v41 = v40;

          URL.appendingPathExtension(_:)();
          v43 = *(v0 + 216);
          v42 = *(v0 + 224);
          v44 = *(v0 + 200);
          v45 = *(v0 + 208);
          v65(v42, v44);
          (*(v45 + 32))(v42, v43, v44);
          Data.write(to:options:)();
          outlined consume of Data._Representation(v62, v41);
          v46 = v66;
          v29 = v68;
        }

        else
        {
          v46 = v66;
        }

        v47 = *(v0 + 224);
        v48 = *(v0 + 200);

        v46(v47, 0, 1, v48);
        outlined assign with take of URL?(v47, v10 + v67, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      }
    }
  }

  v49 = *(v0 + 272);
  v50 = *(v0 + 240);
  v52 = *(v0 + 152);
  v51 = *(v0 + 160);
  *(v0 + 120) = *(v0 + 232);
  *(v0 + 128) = &protocol witness table for JournalingSuggestion.Workout;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 96));
  outlined init with copy of JournalingSuggestion.WorkoutGroup(v50, boxed_opaque_existential_1, type metadata accessor for JournalingSuggestion.Workout);
  v52(v0 + 96, 0);
  outlined destroy of JournalingSuggestion.WorkoutGroup(v49, type metadata accessor for JournalingSuggestion.Workout.Details);
  outlined destroy of URL?(v0 + 96, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMd, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMR);
  outlined destroy of JournalingSuggestion.WorkoutGroup(v50, type metadata accessor for JournalingSuggestion.Workout);
LABEL_14:
  v54 = *(v0 + 272);
  v55 = *(v0 + 240);
  v56 = *(v0 + 248);
  v58 = *(v0 + 216);
  v57 = *(v0 + 224);
  v59 = *(v0 + 192);

  v60 = *(v0 + 8);

  return v60();
}

uint64_t static JournalingSuggestion.Workout.getAssetLoader(for:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = static JournalingSuggestion.Workout.getAssetLoader(for:);

  return specialized static JournalingSuggestion.Workout.getAssetLoader(for:)(a1);
}

uint64_t static JournalingSuggestion.Workout.getAssetLoader(for:)(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

uint64_t (*static JournalingSuggestion.WorkoutGroup.getAssetLoader(for:)())(uint64_t a1, uint64_t a2)
{
  result = Asset.transferRepresentation.getter();
  if (result)
  {
    v1 = result;
    type metadata accessor for TransferWorkoutViewModel();
    v2 = swift_dynamicCastClass();
    if (v2)
    {
      *(swift_allocObject() + 16) = v2;
      return partial apply for closure #1 in static JournalingSuggestion.WorkoutGroup.getAssetLoader(for:);
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t closure #1 in static JournalingSuggestion.WorkoutGroup.getAssetLoader(for:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v14 - v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = a3;
  v11[5] = a1;
  v11[6] = a2;
  v12 = a3;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v9, &async function pointer to partial apply for closure #1 in closure #1 in static JournalingSuggestion.WorkoutGroup.getAssetLoader(for:), v11);
}

uint64_t closure #1 in closure #1 in static JournalingSuggestion.WorkoutGroup.getAssetLoader(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[14] = a5;
  v6[15] = a6;
  v6[13] = a4;
  v7 = type metadata accessor for UUID();
  v6[16] = v7;
  v8 = *(v7 - 8);
  v6[17] = v8;
  v9 = *(v8 + 64) + 15;
  v6[18] = swift_task_alloc();
  v10 = type metadata accessor for URL();
  v6[19] = v10;
  v11 = *(v10 - 8);
  v6[20] = v11;
  v12 = *(v11 + 64) + 15;
  v6[21] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR) - 8) + 64) + 15;
  v6[22] = swift_task_alloc();
  v14 = type metadata accessor for JournalingSuggestion.WorkoutGroup(0);
  v6[23] = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  v6[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in closure #1 in static JournalingSuggestion.WorkoutGroup.getAssetLoader(for:), 0, 0);
}

uint64_t closure #1 in closure #1 in static JournalingSuggestion.WorkoutGroup.getAssetLoader(for:)()
{
  v1 = v0[13];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21JournalingSuggestions0A10SuggestionV7WorkoutVSgMd, &_s21JournalingSuggestions0A10SuggestionV7WorkoutVSgMR);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay21JournalingSuggestions0A10SuggestionV7WorkoutVGSgMd, &_sSay21JournalingSuggestions0A10SuggestionV7WorkoutVGSgMR);
  v4 = swift_task_alloc();
  v0[25] = v4;
  *(v4 + 16) = v1;
  v5 = *(MEMORY[0x277D858E8] + 4);
  v6 = swift_task_alloc();
  v0[26] = v6;
  *v6 = v0;
  v6[1] = closure #1 in closure #1 in static JournalingSuggestion.WorkoutGroup.getAssetLoader(for:);

  return MEMORY[0x282200600](v0 + 12, v2, v3, 0, 0, &async function pointer to partial apply for closure #1 in closure #1 in closure #1 in static JournalingSuggestion.WorkoutGroup.getAssetLoader(for:), v4, v2);
}

{
  v1 = *(*v0 + 208);
  v2 = *(*v0 + 200);
  v4 = *v0;

  return MEMORY[0x2822009F8](closure #1 in closure #1 in static JournalingSuggestion.WorkoutGroup.getAssetLoader(for:), 0, 0);
}

{
  v1 = *(v0 + 96);
  if (v1)
  {
    v2 = *(v0 + 184);
    v3 = *(v0 + 192);
    v4 = *(v0 + 104);
    v5 = v2[5];
    v6 = *(*(v0 + 160) + 56);
    v6(&v3[v5], 1, 1, *(v0 + 152));
    *v3 = v1;
    v7 = v2[6];
    v8 = v2[7];
    v9 = &v3[v2[8]];
    *&v3[v8] = dispatch thunk of TransferWorkoutViewModel.averageHeartRate.getter();
    *&v3[v7] = dispatch thunk of TransferWorkoutViewModel.activeEnergyBurned.getter();
    *v9 = dispatch thunk of TransferWorkoutViewModel.duration.getter();
    v9[8] = v10 & 1;
    v11 = dispatch thunk of AssetViewModel.baseImage.getter();
    if (v11)
    {
      v12 = v11;
      v13 = Image.uiImage.getter();

      if (v13)
      {
        v50 = v6;
        v51 = v5;
        v14 = *(v0 + 168);
        v15 = *(v0 + 176);
        v53 = *(v0 + 160);
        v49 = *(v0 + 152);
        v17 = *(v0 + 136);
        v16 = *(v0 + 144);
        v18 = *(v0 + 128);
        v19 = [objc_opt_self() defaultManager];
        v52 = v13;
        v20 = [v19 temporaryDirectory];

        static URL._unconditionallyBridgeFromObjectiveC(_:)();
        UUID.init()();
        UUID.uuidString.getter();
        (*(v17 + 8))(v16, v18);
        URL.appendingPathComponent(_:)();
        v21 = v52;

        v22 = *(v53 + 8);
        v22(v14, v49);
        v23 = UIImageHEICRepresentation(v52);
        if (v23 || (v23 = UIImagePNGRepresentation(v52)) != 0)
        {
          v27 = *(v0 + 168);
          v26 = *(v0 + 176);
          v28 = v23;
          v48 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v30 = v29;

          URL.appendingPathExtension(_:)();
          v32 = *(v0 + 168);
          v31 = *(v0 + 176);
          v33 = *(v0 + 152);
          v34 = *(v0 + 160);
          v22(v31, v33);
          (*(v34 + 32))(v31, v32, v33);
          Data.write(to:options:)();
          outlined consume of Data._Representation(v48, v30);
          v35 = v51;
          v21 = v52;
        }

        else
        {
          v35 = v51;
        }

        v36 = *(v0 + 176);
        v37 = *(v0 + 152);

        v50(v36, 0, 1, v37);
        outlined assign with take of URL?(v36, &v3[v35], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      }
    }

    v38 = *(v0 + 192);
    v40 = *(v0 + 112);
    v39 = *(v0 + 120);
    *(v0 + 80) = *(v0 + 184);
    *(v0 + 88) = &protocol witness table for JournalingSuggestion.WorkoutGroup;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 56));
    outlined init with copy of JournalingSuggestion.WorkoutGroup(v38, boxed_opaque_existential_1, type metadata accessor for JournalingSuggestion.WorkoutGroup);
    v40(v0 + 56, 0);
    outlined destroy of URL?(v0 + 56, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMd, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMR);
    outlined destroy of JournalingSuggestion.WorkoutGroup(v38, type metadata accessor for JournalingSuggestion.WorkoutGroup);
  }

  else
  {
    *(v0 + 16) = 0u;
    v24 = *(v0 + 112);
    v25 = *(v0 + 120);
    *(v0 + 32) = 0u;
    *(v0 + 48) = 0;
    v24(v0 + 16, 0);
    outlined destroy of URL?(v0 + 16, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMd, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMR);
  }

  v42 = *(v0 + 192);
  v43 = *(v0 + 168);
  v44 = *(v0 + 176);
  v45 = *(v0 + 144);

  v46 = *(v0 + 8);

  return v46();
}

uint64_t closure #1 in closure #1 in closure #1 in static JournalingSuggestion.WorkoutGroup.getAssetLoader(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a2;
  v3[11] = a3;
  v3[9] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v5 = type metadata accessor for JournalingSuggestion.Workout(0);
  v3[14] = v5;
  v6 = *(v5 - 8);
  v3[15] = v6;
  v7 = *(v6 + 64) + 15;
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s21JournalingSuggestions0A10SuggestionV7WorkoutVSgSgMd, &_s21JournalingSuggestions0A10SuggestionV7WorkoutVSgSgMR) - 8) + 64) + 15;
  v3[18] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21JournalingSuggestions0A10SuggestionV7WorkoutVSgMd, &_s21JournalingSuggestions0A10SuggestionV7WorkoutVSgMR);
  v3[19] = v9;
  v10 = *(v9 - 8);
  v3[20] = v10;
  v11 = *(v10 + 64) + 15;
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScG8IteratorVy21JournalingSuggestions0B10SuggestionV7WorkoutVSg_GMd, &_sScG8IteratorVy21JournalingSuggestions0B10SuggestionV7WorkoutVSg_GMR);
  v3[23] = v12;
  v13 = *(v12 - 8);
  v3[24] = v13;
  v14 = *(v13 + 64) + 15;
  v3[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in closure #1 in closure #1 in static JournalingSuggestion.WorkoutGroup.getAssetLoader(for:), 0, 0);
}

uint64_t closure #1 in closure #1 in closure #1 in static JournalingSuggestion.WorkoutGroup.getAssetLoader(for:)()
{
  v1 = *(v0 + 88);
  v2 = dispatch thunk of TransferWorkoutViewModel.workoutViewModels.getter();
  if (v2)
  {
    v4 = v2;
    if (v2 >> 62)
    {
      if (v2 >= 0)
      {
        v2 &= 0xFFFFFFFFFFFFFF8uLL;
      }

      v38 = v4;
      v5 = MEMORY[0x23EE70C40](v2);
      v4 = v38;
      if (!v5)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v5)
      {
        goto LABEL_25;
      }
    }

    if (v5 < 1)
    {
      __break(1u);
      return MEMORY[0x282200308](v5, v4, v3);
    }

    v6 = 0;
    v47 = **(v0 + 80);
    v48 = v5;
    v46 = v4 & 0xC000000000000001;
    v49 = v4;
    do
    {
      v51 = v6;
      if (v46)
      {
        v10 = MEMORY[0x23EE70B80](v6);
      }

      else
      {
        v10 = *(v4 + 8 * v6 + 32);
      }

      v11 = v10;
      v12 = *(v0 + 96);
      v13 = *(v0 + 104);
      v14 = swift_allocObject();
      *(v14 + 16) = v11;
      v15 = swift_allocObject();
      v15[2] = closure #1 in static JournalingSuggestion.Workout.Details.getAssetLoader(workoutViewModel:)partial apply;
      v15[3] = v14;
      v15[4] = v11;
      v16 = type metadata accessor for TaskPriority();
      v17 = *(v16 - 8);
      v18 = *(v17 + 56);
      v50 = v11;

      v18(v13, 1, 1, v16);
      v19 = swift_allocObject();
      v19[2] = 0;
      v20 = v19 + 2;
      v19[3] = 0;
      v19[4] = closure #1 in static JournalingSuggestion.Workout.getAssetLoader(workoutViewModel:detailsLoader:)partial apply;
      v19[5] = v15;
      outlined init with copy of URL?(v13, v12, &_sScPSgMd, &_sScPSgMR);
      LODWORD(v13) = (*(v17 + 48))(v12, 1, v16);

      v21 = *(v0 + 96);
      if (v13 == 1)
      {
        outlined destroy of URL?(*(v0 + 96), &_sScPSgMd, &_sScPSgMR);
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*(v17 + 8))(v21, v16);
      }

      if (*v20)
      {
        v22 = v19[3];
        v23 = *v20;
        swift_getObjectType();
        swift_unknownObjectRetain();
        v24 = dispatch thunk of Actor.unownedExecutor.getter();
        v26 = v25;
        swift_unknownObjectRelease();
      }

      else
      {
        v24 = 0;
        v26 = 0;
      }

      v27 = swift_allocObject();
      *(v27 + 16) = &async function pointer to partial apply for closure #1 in closure #1 in closure #1 in closure #1 in static JournalingSuggestion.WorkoutGroup.getAssetLoader(for:);
      *(v27 + 24) = v19;

      if (v26 | v24)
      {
        v7 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v24;
        *(v0 + 40) = v26;
      }

      else
      {
        v7 = 0;
      }

      v6 = v51 + 1;
      v8 = *(v0 + 152);
      v9 = *(v0 + 104);
      *(v0 + 48) = 1;
      *(v0 + 56) = v7;
      *(v0 + 64) = v47;
      swift_task_create();

      outlined destroy of URL?(v9, &_sScPSgMd, &_sScPSgMR);
      v4 = v49;
    }

    while (v48 != v51 + 1);
LABEL_25:

    v39 = *(v0 + 200);
    v40 = *(v0 + 152);
    v41 = **(v0 + 80);
    TaskGroup.makeAsyncIterator()();
    *(v0 + 208) = MEMORY[0x277D84F90];
    v42 = lazy protocol witness table accessor for type TaskGroup<JournalingSuggestion.Workout?>.Iterator and conformance TaskGroup<A>.Iterator();
    v43 = *(MEMORY[0x277D856D0] + 4);
    v44 = swift_task_alloc();
    *(v0 + 216) = v44;
    *v44 = v0;
    v44[1] = closure #1 in closure #1 in closure #1 in static JournalingSuggestion.WorkoutGroup.getAssetLoader(for:);
    v45 = *(v0 + 200);
    v4 = *(v0 + 184);
    v5 = *(v0 + 144);
    v3 = v42;

    return MEMORY[0x282200308](v5, v4, v3);
  }

  v28 = *(v0 + 200);
  v29 = *(v0 + 168);
  v30 = *(v0 + 176);
  v32 = *(v0 + 136);
  v31 = *(v0 + 144);
  v33 = *(v0 + 128);
  v35 = *(v0 + 96);
  v34 = *(v0 + 104);
  **(v0 + 72) = 0;

  v36 = *(v0 + 8);

  return v36();
}

{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v11 = *v1;

  if (v0)
  {
    v5 = v2[25];
    v4 = v2[26];
    v8 = v2 + 23;
    v6 = v2[23];
    v7 = v8[1];

    (*(v7 + 8))(v5, v6);

    v9 = destructiveProjectEnumData for JournalingSuggestionsError;
  }

  else
  {
    v9 = closure #1 in closure #1 in closure #1 in static JournalingSuggestion.WorkoutGroup.getAssetLoader(for:);
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

{
  v1 = *(v0 + 144);
  if ((*(*(v0 + 160) + 48))(v1, 1, *(v0 + 152)) == 1)
  {
    v2 = *(v0 + 208);
    (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 184));
    outlined destroy of URL?(v1, &_s21JournalingSuggestions0A10SuggestionV7WorkoutVSgSgMd, &_s21JournalingSuggestions0A10SuggestionV7WorkoutVSgSgMR);
    v3 = *(v0 + 200);
    v4 = *(v0 + 168);
    v5 = *(v0 + 176);
    v7 = *(v0 + 136);
    v6 = *(v0 + 144);
    v8 = *(v0 + 128);
    v10 = *(v0 + 96);
    v9 = *(v0 + 104);
    **(v0 + 72) = v2;

    v11 = *(v0 + 8);

    return v11();
  }

  else
  {
    v14 = *(v0 + 168);
    v13 = *(v0 + 176);
    v15 = *(v0 + 112);
    v16 = *(v0 + 120);
    outlined init with take of JournalingSuggestion.Workout?(v1, v13);
    outlined init with copy of URL?(v13, v14, &_s21JournalingSuggestions0A10SuggestionV7WorkoutVSgMd, &_s21JournalingSuggestions0A10SuggestionV7WorkoutVSgMR);
    if ((*(v16 + 48))(v14, 1, v15) == 1)
    {
      v17 = *(v0 + 168);
      outlined destroy of URL?(*(v0 + 176), &_s21JournalingSuggestions0A10SuggestionV7WorkoutVSgMd, &_s21JournalingSuggestions0A10SuggestionV7WorkoutVSgMR);
      outlined destroy of URL?(v17, &_s21JournalingSuggestions0A10SuggestionV7WorkoutVSgMd, &_s21JournalingSuggestions0A10SuggestionV7WorkoutVSgMR);
      v18 = *(v0 + 208);
    }

    else
    {
      v19 = *(v0 + 208);
      v21 = *(v0 + 128);
      v20 = *(v0 + 136);
      outlined init with take of JournalingSuggestion.Workout(*(v0 + 168), v20, type metadata accessor for JournalingSuggestion.Workout);
      outlined init with copy of JournalingSuggestion.WorkoutGroup(v20, v21, type metadata accessor for JournalingSuggestion.Workout);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = *(v0 + 208);
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18[2] + 1, 1, *(v0 + 208));
      }

      v24 = v18[2];
      v23 = v18[3];
      if (v24 >= v23 >> 1)
      {
        v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v23 > 1, v24 + 1, 1, v18);
      }

      v25 = *(v0 + 176);
      v26 = *(v0 + 128);
      v27 = *(v0 + 120);
      outlined destroy of JournalingSuggestion.WorkoutGroup(*(v0 + 136), type metadata accessor for JournalingSuggestion.Workout);
      outlined destroy of URL?(v25, &_s21JournalingSuggestions0A10SuggestionV7WorkoutVSgMd, &_s21JournalingSuggestions0A10SuggestionV7WorkoutVSgMR);
      v18[2] = v24 + 1;
      outlined init with take of JournalingSuggestion.Workout(v26, v18 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v24, type metadata accessor for JournalingSuggestion.Workout);
    }

    *(v0 + 208) = v18;
    v28 = lazy protocol witness table accessor for type TaskGroup<JournalingSuggestion.Workout?>.Iterator and conformance TaskGroup<A>.Iterator();
    v29 = *(MEMORY[0x277D856D0] + 4);
    v30 = swift_task_alloc();
    *(v0 + 216) = v30;
    *v30 = v0;
    v30[1] = closure #1 in closure #1 in closure #1 in static JournalingSuggestion.WorkoutGroup.getAssetLoader(for:);
    v31 = *(v0 + 200);
    v32 = *(v0 + 184);
    v33 = *(v0 + 144);

    return MEMORY[0x282200308](v33, v32, v28);
  }
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in static JournalingSuggestion.WorkoutGroup.getAssetLoader(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x2822009F8](closure #1 in closure #1 in closure #1 in closure #1 in static JournalingSuggestion.WorkoutGroup.getAssetLoader(for:), 0, 0);
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in static JournalingSuggestion.WorkoutGroup.getAssetLoader(for:)()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *(v1 + 16) = *(v0 + 24);
  v2 = *(MEMORY[0x277D859E0] + 4);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21JournalingSuggestions0A10SuggestionV7WorkoutVSgMd, &_s21JournalingSuggestions0A10SuggestionV7WorkoutVSgMR);
  *v3 = v0;
  v3[1] = closure #1 in closure #1 in closure #1 in closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:);
  v5 = *(v0 + 16);

  return MEMORY[0x2822007B8](v5, 0, 0, 0xD000000000000014, 0x8000000238ADF470, partial apply for closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in static JournalingSuggestion.WorkoutGroup.getAssetLoader(for:), v1, v4);
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in static JournalingSuggestion.WorkoutGroup.getAssetLoader(for:)(uint64_t a1, void (*a2)(uint64_t (*)(uint64_t a1), uint64_t))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy21JournalingSuggestions0A10SuggestionV7WorkoutVSgs5NeverOGMd, &_sScCy21JournalingSuggestions0A10SuggestionV7WorkoutVSgs5NeverOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  (*(v5 + 16))(&v12 - v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  a2(partial apply for closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in static JournalingSuggestion.WorkoutGroup.getAssetLoader(for:), v10);
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in static JournalingSuggestion.WorkoutGroup.getAssetLoader(for:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21JournalingSuggestions0A10SuggestionV7WorkoutVSgMd, &_s21JournalingSuggestions0A10SuggestionV7WorkoutVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v11[-v4 - 8];
  outlined init with copy of URL?(a1, v11, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMd, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMR);
  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s21JournalingSuggestions0A15SuggestionAsset_pMd, &_s21JournalingSuggestions0A15SuggestionAsset_pMR);
    v6 = type metadata accessor for JournalingSuggestion.Workout(0);
    v7 = swift_dynamicCast();
    (*(*(v6 - 8) + 56))(v5, v7 ^ 1u, 1, v6);
  }

  else
  {
    outlined destroy of URL?(v11, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMd, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMR);
    v8 = type metadata accessor for JournalingSuggestion.Workout(0);
    (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy21JournalingSuggestions0A10SuggestionV7WorkoutVSgs5NeverOGMd, &_sScCy21JournalingSuggestions0A10SuggestionV7WorkoutVSgs5NeverOGMR);
  return CheckedContinuation.resume(returning:)();
}

uint64_t protocol witness for static InternalAssetProvider.getAssetLoader(for:) in conformance JournalingSuggestion.Workout.Details()
{
  v1 = *(v0 + 16);
  v2 = Asset.transferRepresentation.getter();
  if (v2)
  {
    v3 = v2;
    type metadata accessor for TransferWorkoutViewModel();
    v4 = swift_dynamicCastClass();
    if (v4)
    {
      v5 = v4;
      v6 = swift_allocObject();
      *(v6 + 16) = v5;
      v2 = closure #1 in static JournalingSuggestion.Workout.Details.getAssetLoader(workoutViewModel:)partial apply;
      goto LABEL_6;
    }

    v2 = 0;
  }

  v6 = 0;
LABEL_6:
  v7 = *(v0 + 8);

  return v7(v2, v6);
}

uint64_t protocol witness for static InternalAssetProvider.getAssetLoader(for:) in conformance JournalingSuggestion.Workout(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for static InternalAssetProvider.getAssetLoader(for:) in conformance JournalingSuggestion.Workout;

  return specialized static JournalingSuggestion.Workout.getAssetLoader(for:)(a1);
}

uint64_t protocol witness for static InternalAssetProvider.getAssetLoader(for:) in conformance JournalingSuggestion.WorkoutGroup()
{
  v1 = Asset.transferRepresentation.getter();
  if (v1)
  {
    v2 = v1;
    type metadata accessor for TransferWorkoutViewModel();
    v3 = swift_dynamicCastClass();
    if (v3)
    {
      v4 = v3;
      v5 = swift_allocObject();
      *(v5 + 16) = v4;
      v1 = closure #1 in static JournalingSuggestion.WorkoutGroup.getAssetLoader(for:)partial apply;
      goto LABEL_6;
    }

    v1 = 0;
  }

  v5 = 0;
LABEL_6:
  v6 = *(v0 + 8);

  return v6(v1, v5);
}

uint64_t specialized static JournalingSuggestion.Workout.getAssetLoader(for:)()
{
  v1 = *(v0 + 16);
  v2 = Asset.transferRepresentation.getter();
  if (v2)
  {
    v3 = v2;
    type metadata accessor for TransferWorkoutViewModel();
    v4 = swift_dynamicCastClass();
    if (v4)
    {
      v5 = v4;
      v6 = swift_allocObject();
      *(v6 + 16) = v5;
      v7 = swift_allocObject();
      v7[2] = closure #1 in static JournalingSuggestion.Workout.Details.getAssetLoader(workoutViewModel:)partial apply;
      v7[3] = v6;
      v7[4] = v5;
      v8 = v3;
      v2 = closure #1 in static JournalingSuggestion.Workout.getAssetLoader(workoutViewModel:detailsLoader:)partial apply;
      goto LABEL_6;
    }

    v2 = 0;
  }

  v7 = 0;
LABEL_6:
  v9 = *(v0 + 8);

  return v9(v2, v7);
}

uint64_t sub_238A7F064()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t partial apply for closure #1 in closure #1 in static JournalingSuggestion.WorkoutGroup.getAssetLoader(for:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:);

  return closure #1 in closure #1 in static JournalingSuggestion.WorkoutGroup.getAssetLoader(for:)(a1, v4, v5, v6, v7, v8);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in static JournalingSuggestion.WorkoutGroup.getAssetLoader(for:)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = partial apply for closure #1 in closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:);

  return closure #1 in closure #1 in closure #1 in static JournalingSuggestion.WorkoutGroup.getAssetLoader(for:)(a1, a2, v6);
}

uint64_t sub_238A7F228()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in closure #1 in static JournalingSuggestion.WorkoutGroup.getAssetLoader(for:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in closure #1 in closure #1 in closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:);

  return closure #1 in closure #1 in closure #1 in closure #1 in static JournalingSuggestion.WorkoutGroup.getAssetLoader(for:)(a1, v4, v5, v7, v6);
}

uint64_t sub_238A7F328()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTR21JournalingSuggestions0C10SuggestionV7WorkoutVSg_Tg5TA(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for closure #1 in closure #1 in closure #1 in closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTR21JournalingSuggestions0C10SuggestionV8LocationVSg_Tg5(a1, v5);
}

unint64_t lazy protocol witness table accessor for type TaskGroup<JournalingSuggestion.Workout?>.Iterator and conformance TaskGroup<A>.Iterator()
{
  result = lazy protocol witness table cache variable for type TaskGroup<JournalingSuggestion.Workout?>.Iterator and conformance TaskGroup<A>.Iterator;
  if (!lazy protocol witness table cache variable for type TaskGroup<JournalingSuggestion.Workout?>.Iterator and conformance TaskGroup<A>.Iterator)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sScG8IteratorVy21JournalingSuggestions0B10SuggestionV7WorkoutVSg_GMd, &_sScG8IteratorVy21JournalingSuggestions0B10SuggestionV7WorkoutVSg_GMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TaskGroup<JournalingSuggestion.Workout?>.Iterator and conformance TaskGroup<A>.Iterator);
  }

  return result;
}

uint64_t outlined init with take of JournalingSuggestion.Workout?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21JournalingSuggestions0A10SuggestionV7WorkoutVSgMd, &_s21JournalingSuggestions0A10SuggestionV7WorkoutVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_238A7F4F4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy21JournalingSuggestions0A10SuggestionV7WorkoutVSgs5NeverOGMd, &_sScCy21JournalingSuggestions0A10SuggestionV7WorkoutVSgs5NeverOGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in static JournalingSuggestion.WorkoutGroup.getAssetLoader(for:)(uint64_t a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy21JournalingSuggestions0A10SuggestionV7WorkoutVSgs5NeverOGMd, &_sScCy21JournalingSuggestions0A10SuggestionV7WorkoutVSgs5NeverOGMR) - 8) + 80);

  return closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in static JournalingSuggestion.WorkoutGroup.getAssetLoader(for:)(a1);
}

uint64_t objectdestroy_6Tm()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_238A7F654()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_238A7F6A0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  if (*(v0 + 56))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  }

  v2 = *(v0 + 88);

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in static JournalingSuggestion.Workout.getAssetLoader(workoutViewModel:detailsLoader:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = v1[10];
  v8 = v1[11];
  v9 = v1[12];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = partial apply for closure #1 in closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:);

  return closure #1 in closure #1 in closure #1 in static JournalingSuggestion.Workout.getAssetLoader(workoutViewModel:detailsLoader:)(a1, v4, v5, (v1 + 4), v6, v7, v8, v9);
}

uint64_t outlined init with take of JournalingSuggestion.Workout(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of JournalingSuggestion.WorkoutGroup(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of JournalingSuggestion.WorkoutGroup(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined assign with take of URL?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t (*static UIImage.getAssetLoader(for:)())(void (*a1)(void *, void), uint64_t a2)
{
  result = Asset.transferRepresentation.getter();
  if (result)
  {
    v1 = result;
    v2 = dispatch thunk of AssetViewModel.baseImage.getter();
    if (v2)
    {
      v3 = v2;
      v4 = Image.uiImage.getter();

      if (v4)
      {
        *(swift_allocObject() + 16) = v4;
        return partial apply for closure #1 in static UIImage.getAssetLoader(for:);
      }
    }

    else
    {
    }

    return 0;
  }

  return result;
}

uint64_t closure #1 in static UIImage.getAssetLoader(for:)(void (*a1)(void *, void), uint64_t a2, void *a3)
{
  v7[3] = type metadata accessor for UIImage();
  v7[4] = &protocol witness table for UIImage;
  v7[0] = a3;
  v5 = a3;
  a1(v7, 0);
  return outlined destroy of JournalingSuggestionAsset?(v7);
}

uint64_t sub_238A7FAF4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t protocol witness for static InternalAssetProvider.getAssetLoader(for:) in conformance UIImage()
{
  v1 = Asset.transferRepresentation.getter();
  if (v1)
  {
    v2 = v1;
    v3 = dispatch thunk of AssetViewModel.baseImage.getter();
    if (v3)
    {
      v4 = v3;
      v5 = Image.uiImage.getter();

      if (v5)
      {
        v6 = swift_allocObject();
        *(v6 + 16) = v5;
        v1 = closure #1 in static UIImage.getAssetLoader(for:)partial apply;
        goto LABEL_8;
      }
    }

    else
    {
    }

    v1 = 0;
  }

  v6 = 0;
LABEL_8:
  v7 = *(v0 + 8);

  return v7(v1, v6);
}

unint64_t type metadata accessor for UIImage()
{
  result = lazy cache variable for type metadata for UIImage;
  if (!lazy cache variable for type metadata for UIImage)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UIImage);
  }

  return result;
}

uint64_t outlined destroy of JournalingSuggestionAsset?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21JournalingSuggestions0A15SuggestionAsset_pSgMd, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void static JournalingSuggestion.StateOfMind.loaderError(_:for:)(uint64_t a1, unint64_t a2, void *a3)
{
  if (one-time initialization token for bridge != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.bridge);

  v7 = a3;
  oslog = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v9 = 136315650;
    type metadata accessor for JournalingSuggestion.StateOfMind(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s21JournalingSuggestions0A10SuggestionV11StateOfMindVmMd, &_s21JournalingSuggestions0A10SuggestionV11StateOfMindVmMR);
    v11 = String.init<A>(describing:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v18);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    *(v9 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v18);
    *(v9 + 22) = 2080;
    [v7 content];
    v14 = String.init<A>(describing:)();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v18);

    *(v9 + 24) = v16;
    _os_log_impl(&dword_238A75000, oslog, v8, "%s.getAssetLoader, Unexpected content %s: %s", v9, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23EE71510](v10, -1, -1);
    MEMORY[0x23EE71510](v9, -1, -1);
  }

  else
  {
  }
}

uint64_t _s21JournalingSuggestions16getMetadataValue_3key2asxSo17MOSuggestionAssetCyyXlG_So0hiD3KeyaxmtKlF10Foundation4DateV_Tt2g5@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v22 - v8;
  _s21JournalingSuggestions11getMetadata_3key2asxSgSo17MOSuggestionAssetCyyXlG_So0ghD3KeyaxmtlF10Foundation4DateV_Tt2g5(a1, a2, &v22 - v8);
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) != 1)
  {
    return (*(v11 + 32))(a3, v9, v10);
  }

  outlined destroy of URL?(v9, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  type metadata accessor for JournalingSuggestionsError();
  lazy protocol witness table accessor for type JournalingSuggestionsError and conformance JournalingSuggestionsError();
  swift_allocError();
  v13 = v12;
  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v14;
  MEMORY[0x23EE70790](8250, 0xE200000000000000);
  v24 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVmMd, &_s10Foundation4DateVmMR);
  v15 = String.init<A>(describing:)();
  MEMORY[0x23EE70790](v15);

  v16 = v22;
  v17 = v23;
  v22 = 0x203A7465737341;
  v23 = 0xE700000000000000;
  v24 = [a1 content];
  v18 = String.init<A>(describing:)();
  MEMORY[0x23EE70790](v18);

  v19 = v22;
  v20 = v23;
  *v13 = v16;
  v13[1] = v17;
  v13[2] = v19;
  v13[3] = v20;
  swift_storeEnumTagMultiPayload();
  return swift_willThrow();
}

uint64_t _s21JournalingSuggestions16getMetadataValue_3key2asxSo17MOSuggestionAssetCyyXlG_So0hiD3KeyaxmtKlFSi_Tt2g5(void *a1, void *a2)
{
  result = _s21JournalingSuggestions11getMetadata_3key2asxSgSo17MOSuggestionAssetCyyXlG_So0ghD3KeyaxmtlFSi_Tt2g5(a1, a2);
  if (v4)
  {
    v5 = result;
    type metadata accessor for JournalingSuggestionsError();
    lazy protocol witness table accessor for type JournalingSuggestionsError and conformance JournalingSuggestionsError();
    swift_allocError();
    v7 = v6;
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v8;
    MEMORY[0x23EE70790](8250, 0xE200000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSimMd, &_sSimMR);
    v9 = String.init<A>(describing:)();
    MEMORY[0x23EE70790](v9);

    [a1 content];
    v10 = String.init<A>(describing:)();
    MEMORY[0x23EE70790](v10);

    *v7 = v11;
    v7[1] = v12;
    v7[2] = 0x203A7465737341;
    v7[3] = 0xE700000000000000;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return v5;
  }

  return result;
}

uint64_t _s21JournalingSuggestions16getMetadataValue_3key2asxSo17MOSuggestionAssetCyyXlG_So0hiD3KeyaxmtKlFSd_Tt2g5(void *a1, void *a2)
{
  result = _s21JournalingSuggestions11getMetadata_3key2asxSgSo17MOSuggestionAssetCyyXlG_So0ghD3KeyaxmtlFSd_Tt2g5(a1, a2);
  if (v4)
  {
    type metadata accessor for JournalingSuggestionsError();
    lazy protocol witness table accessor for type JournalingSuggestionsError and conformance JournalingSuggestionsError();
    swift_allocError();
    v6 = v5;
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v7;
    MEMORY[0x23EE70790](8250, 0xE200000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdmMd, &_sSdmMR);
    v8 = String.init<A>(describing:)();
    MEMORY[0x23EE70790](v8);

    [a1 content];
    v9 = String.init<A>(describing:)();
    MEMORY[0x23EE70790](v9);

    *v6 = v10;
    v6[1] = v11;
    v6[2] = 0x203A7465737341;
    v6[3] = 0xE700000000000000;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  return result;
}

uint64_t closure #1 in static JournalingSuggestion.StateOfMind.getAssetLoader(for:inside:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, uint64_t a10, void *a11)
{
  v50 = a7;
  v51 = a8;
  v53 = a2;
  v54 = a4;
  v46 = a3;
  v52 = a1;
  v48 = a6;
  v49 = a11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v17 = &v41 - v16;
  v45 = &v41 - v16;
  v18 = type metadata accessor for Date();
  v43 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v44 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = &v41 - v23;
  v47 = &v41 - v23;
  v25 = type metadata accessor for TaskPriority();
  (*(*(v25 - 8) + 56))(v24, 1, 1, v25);
  v26 = v19;
  (*(v19 + 16))(&v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), a5, v18);
  outlined init with copy of URL?(a10, v17, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v27 = (*(v19 + 80) + 48) & ~*(v19 + 80);
  v42 = (v20 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = (v42 + 15) & 0xFFFFFFFFFFFFFFF8;
  v29 = (v28 + 15) & 0xFFFFFFFFFFFFFFF8;
  v30 = (v29 + 15) & 0xFFFFFFFFFFFFFFF8;
  v31 = (*(v14 + 80) + v30 + 8) & ~*(v14 + 80);
  v32 = (v15 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = swift_allocObject();
  *(v33 + 2) = 0;
  *(v33 + 3) = 0;
  v34 = v54;
  *(v33 + 4) = v46;
  *(v33 + 5) = v34;
  (*(v26 + 32))(&v33[v27], v44, v43);
  *&v33[v42] = v48;
  *&v33[v28] = a9;
  v35 = v51;
  *&v33[v29] = v50;
  *&v33[v30] = v35;
  outlined init with take of URL?(v45, &v33[v31]);
  v36 = v49;
  *&v33[v32] = v49;
  v37 = &v33[(v32 + 15) & 0xFFFFFFFFFFFFFFF8];
  v38 = v53;
  *v37 = v52;
  *(v37 + 1) = v38;

  v39 = v36;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v47, &async function pointer to partial apply for closure #1 in closure #1 in static JournalingSuggestion.StateOfMind.getAssetLoader(for:inside:), v33);
}

uint64_t closure #1 in closure #1 in static JournalingSuggestion.StateOfMind.getAssetLoader(for:inside:)(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 152) = v23;
  *(v9 + 136) = v22;
  *(v9 + 120) = v21;
  *(v9 + 112) = a9;
  *(v9 + 104) = a1;
  *(v9 + 88) = a7;
  *(v9 + 96) = a8;
  *(v9 + 72) = a5;
  *(v9 + 80) = a6;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR) - 8) + 64) + 15;
  *(v9 + 160) = swift_task_alloc();
  v11 = type metadata accessor for URL();
  *(v9 + 168) = v11;
  v12 = *(v11 - 8);
  *(v9 + 176) = v12;
  v13 = *(v12 + 64) + 15;
  *(v9 + 184) = swift_task_alloc();
  *(v9 + 192) = swift_task_alloc();
  v14 = type metadata accessor for JournalingSuggestion.StateOfMind(0);
  *(v9 + 200) = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  *(v9 + 208) = swift_task_alloc();
  v16 = type metadata accessor for Date();
  *(v9 + 216) = v16;
  v17 = *(v16 - 8);
  *(v9 + 224) = v17;
  v18 = *(v17 + 64) + 15;
  *(v9 + 232) = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in closure #1 in static JournalingSuggestion.StateOfMind.getAssetLoader(for:inside:), 0, 0);
}

uint64_t closure #1 in closure #1 in static JournalingSuggestion.StateOfMind.getAssetLoader(for:inside:)()
{
  v1 = *(v0 + 72);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    v4 = MEMORY[0x277D84F90];
    do
    {
      v6 = *v3++;
      v5 = v6;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
      }

      v8 = *(v4 + 2);
      v7 = *(v4 + 3);
      if (v8 >= v7 >> 1)
      {
        v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1, v4);
      }

      *(v4 + 2) = v8 + 1;
      *&v4[8 * v8 + 32] = v5;
      --v2;
    }

    while (v2);
  }

  v9 = *(v0 + 80);
  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = (v9 + 32);
    v12 = MEMORY[0x277D84F90];
    do
    {
      v14 = *v11++;
      v13 = v14;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v12 + 2) + 1, 1, v12);
      }

      v16 = *(v12 + 2);
      v15 = *(v12 + 3);
      if (v16 >= v15 >> 1)
      {
        v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v12);
      }

      *(v12 + 2) = v16 + 1;
      *&v12[8 * v16 + 32] = v13;
      --v10;
    }

    while (v10);
  }

  v18 = *(v0 + 224);
  v17 = *(v0 + 232);
  v19 = *(v0 + 208);
  v20 = *(v0 + 200);
  v21 = *(v0 + 176);
  v52 = *(v0 + 128);
  v53 = *(v0 + 160);
  v51 = *(v0 + 120);
  v49 = *(v0 + 168);
  v50 = *(v0 + 112);
  v22 = *(v0 + 104);
  v23 = *(v0 + 88);
  v47 = *(v0 + 216);
  v48 = *(v0 + 96);
  type metadata accessor for HKStateOfMind();
  (*(v18 + 16))(v17, v23, v47);
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
  v24 = HKStateOfMind.init(date:kind:valence:labels:associations:metadata:)();
  v25 = v20[5];
  *(v0 + 288) = v25;
  v26 = *(v21 + 56);
  *(v0 + 240) = v26;
  *(v0 + 248) = (v21 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v26(v19 + v25, 1, 1, v49);
  *v19 = v24;
  v28 = v20[6];
  v27 = v20[7];
  *(v19 + v28) = specialized static JournalingSuggestion.StateOfMind.uiColorsToGradient(_:)(v50);
  *(v19 + v27) = specialized static JournalingSuggestion.StateOfMind.uiColorsToGradient(_:)(v51);
  outlined init with copy of URL?(v52, v53, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if ((*(v21 + 48))(v53, 1, v49) == 1)
  {
    outlined destroy of URL?(*(v0 + 160), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v29 = *(v0 + 232);
    v30 = *(v0 + 208);
    v32 = *(v0 + 184);
    v31 = *(v0 + 192);
    v33 = *(v0 + 152);
    v34 = *(v0 + 160);
    v35 = *(v0 + 144);
    *(v0 + 40) = *(v0 + 200);
    *(v0 + 48) = &protocol witness table for JournalingSuggestion.StateOfMind;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
    outlined init with copy of JournalingSuggestion.StateOfMind(v30, boxed_opaque_existential_1);
    v35(v0 + 16, 0);
    outlined destroy of URL?(v0 + 16, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMd, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMR);
    outlined destroy of JournalingSuggestion.StateOfMind(v30);

    v37 = *(v0 + 8);

    return v37();
  }

  else
  {
    v39 = *(v0 + 192);
    v40 = *(v0 + 168);
    v41 = *(v0 + 176);
    v42 = *(v0 + 160);
    v43 = *(v41 + 32);
    *(v0 + 256) = v43;
    *(v0 + 264) = (v41 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v43(v39, v42, v40);
    v44 = swift_task_alloc();
    *(v0 + 272) = v44;
    *v44 = v0;
    v44[1] = closure #1 in closure #1 in static JournalingSuggestion.StateOfMind.getAssetLoader(for:inside:);
    v45 = *(v0 + 184);
    v46 = *(v0 + 192);

    return prepareUrlAccess(_:)(v45, v46);
  }
}

{
  v2 = *(*v1 + 272);
  v5 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    v3 = closure #1 in closure #1 in static JournalingSuggestion.StateOfMind.getAssetLoader(for:inside:);
  }

  else
  {
    v3 = closure #1 in closure #1 in static JournalingSuggestion.StateOfMind.getAssetLoader(for:inside:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v2 = *(v0 + 256);
  v1 = *(v0 + 264);
  v4 = *(v0 + 240);
  v3 = *(v0 + 248);
  v5 = *(v0 + 288);
  v6 = *(v0 + 208);
  v7 = *(v0 + 184);
  v8 = *(v0 + 168);
  (*(*(v0 + 176) + 8))(*(v0 + 192), v8);
  outlined destroy of URL?(v6 + v5, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v2(v6 + v5, v7, v8);
  v4(v6 + v5, 0, 1, v8);
  v9 = *(v0 + 232);
  v10 = *(v0 + 208);
  v12 = *(v0 + 184);
  v11 = *(v0 + 192);
  v13 = *(v0 + 152);
  v14 = *(v0 + 160);
  v15 = *(v0 + 144);
  *(v0 + 40) = *(v0 + 200);
  *(v0 + 48) = &protocol witness table for JournalingSuggestion.StateOfMind;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
  outlined init with copy of JournalingSuggestion.StateOfMind(v10, boxed_opaque_existential_1);
  v15(v0 + 16, 0);
  outlined destroy of URL?(v0 + 16, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMd, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMR);
  outlined destroy of JournalingSuggestion.StateOfMind(v10);

  v17 = *(v0 + 8);

  return v17();
}

{
  v35 = v0;
  if (one-time initialization token for bridge != -1)
  {
    swift_once();
  }

  v1 = v0[17];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.bridge);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[35];
  if (v6)
  {
    v8 = v0[25];
    v9 = v0[22];
    v32 = v0[21];
    v33 = v0[24];
    v10 = v0[17];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v34 = v12;
    *v11 = 136315394;
    v0[7] = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s21JournalingSuggestions0A10SuggestionV11StateOfMindVmMd, &_s21JournalingSuggestions0A10SuggestionV11StateOfMindVmMR);
    v13 = String.init<A>(describing:)();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v34);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    v0[8] = [v10 content];
    v16 = String.init<A>(describing:)();
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v34);

    *(v11 + 14) = v18;
    _os_log_impl(&dword_238A75000, v4, v5, "Unable to access state of mind image url: %s.getAssetLoader, Unexpected content: %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EE71510](v12, -1, -1);
    MEMORY[0x23EE71510](v11, -1, -1);

    (*(v9 + 8))(v33, v32);
  }

  else
  {
    v19 = v0[24];
    v20 = v0[21];
    v21 = v0[22];

    (*(v21 + 8))(v19, v20);
  }

  v22 = v0[29];
  v23 = v0[26];
  v25 = v0[23];
  v24 = v0[24];
  v26 = v0[19];
  v27 = v0[20];
  v28 = v0[18];
  v0[5] = v0[25];
  v0[6] = &protocol witness table for JournalingSuggestion.StateOfMind;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  outlined init with copy of JournalingSuggestion.StateOfMind(v23, boxed_opaque_existential_1);
  v28(v0 + 2, 0);
  outlined destroy of URL?((v0 + 2), &_s21JournalingSuggestions0A15SuggestionAsset_pSgMd, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMR);
  outlined destroy of JournalingSuggestion.StateOfMind(v23);

  v30 = v0[1];

  return v30();
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
  __swift_destroy_boxed_opaque_existential_1(v11);
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

  memcpy((v3 + 16 * v8 + 32), (v6 + 32), 16 * v2);

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21JournalingSuggestions20InternalAssetContentV0G8ProviderVGMd, &_ss23_ContiguousArrayStorageCy21JournalingSuggestions20InternalAssetContentV0G8ProviderVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t specialized static JournalingSuggestion.StateOfMind.uiColorsToGradient(_:)(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result >> 62)
    {
      if (result >= 0)
      {
        result &= 0xFFFFFFFFFFFFFF8uLL;
      }

      v2 = MEMORY[0x23EE70C40](result);
    }

    else
    {
      v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v3 = MEMORY[0x277D84F90];
    if (v2)
    {
      v11 = MEMORY[0x277D84F90];
      result = specialized ContiguousArray.reserveCapacity(_:)();
      if (v2 < 0)
      {
        __break(1u);
        return result;
      }

      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = 0;
        do
        {
          v5 = v4 + 1;
          v6 = MEMORY[0x23EE70B80]();
          MEMORY[0x23EE6FF50](v6);
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v7 = *(v11 + 16);
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v4 = v5;
        }

        while (v2 != v5);
      }

      else
      {
        v8 = (v1 + 32);
        do
        {
          v9 = *v8++;
          MEMORY[0x23EE6FF50](v9);
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v10 = *(v11 + 16);
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          --v2;
        }

        while (v2);
      }

      v3 = v11;
    }

    return MEMORY[0x23EE6FFF0](v3);
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

uint64_t (*specialized static JournalingSuggestion.StateOfMind.getAssetLoader(for:inside:)(void *a1))(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v51 = *(v2 - 8);
  v3 = *(v51 + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v53 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v46 - v5;
  v7 = type metadata accessor for Date();
  v55 = *(v7 - 8);
  v56 = v7;
  v8 = *(v55 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v52 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v46 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v46 - v14;
  MEMORY[0x28223BE20](v13);
  v54 = &v46 - v16;
  v17 = [a1 assetType];
  v18 = *MEMORY[0x277D2A0D8];
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;
  if (v19 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v21 == v22)
  {
  }

  else
  {
    v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v24 & 1) == 0)
    {
      return 0;
    }
  }

  _s21JournalingSuggestions16getMetadataValue_3key2asxSo17MOSuggestionAssetCyyXlG_So0hiD3KeyaxmtKlF10Foundation4DateV_Tt2g5(a1, *MEMORY[0x277D29FC0], v15);
  v25 = *(v55 + 32);
  v25(v54, v15, v56);
  v26 = _s21JournalingSuggestions16getMetadataValue_3key2asxSo17MOSuggestionAssetCyyXlG_So0hiD3KeyaxmtKlFSi_Tt2g5(a1, *MEMORY[0x277D29FB8]);
  _s21JournalingSuggestions16getMetadataValue_3key2asxSo17MOSuggestionAssetCyyXlG_So0hiD3KeyaxmtKlFSd_Tt2g5(a1, *MEMORY[0x277D29FC8]);
  v29 = v28;
  (*(v55 + 16))(v12, v54, v56);
  v30 = _s21JournalingSuggestions11getMetadata_3key2asxSgSo17MOSuggestionAssetCyyXlG_So0ghD3KeyaxmtlFSaySiG_Tt2g5(a1, *MEMORY[0x277D29FB0]);
  v31 = MEMORY[0x277D84F90];
  if (v30)
  {
    v32 = v30;
  }

  else
  {
    v32 = MEMORY[0x277D84F90];
  }

  v49 = v32;
  v33 = _s21JournalingSuggestions11getMetadata_3key2asxSgSo17MOSuggestionAssetCyyXlG_So0ghD3KeyaxmtlFSaySiG_Tt2g5(a1, *MEMORY[0x277D29FA8]);
  if (v33)
  {
    v34 = v33;
  }

  else
  {
    v34 = v31;
  }

  v47 = v34;
  v48 = _s21JournalingSuggestions11getMetadata_3key2asxSgSo17MOSuggestionAssetCyyXlG_So0ghD3KeyaxmtlFSaySo7UIColorCG_Tt2g5(a1, *MEMORY[0x277D29FA0]);
  v46 = _s21JournalingSuggestions11getMetadata_3key2asxSgSo17MOSuggestionAssetCyyXlG_So0ghD3KeyaxmtlFSaySo7UIColorCG_Tt2g5(a1, *MEMORY[0x277D29F98]);
  assetImageContentToUrl(_:)(a1, v6);
  v50 = v26;
  v35 = v55 + 8;
  v36 = v56;
  (*(v55 + 8))(v54, v56);
  v37 = type metadata accessor for URL();
  (*(*(v37 - 8) + 56))(v6, 0, 1, v37);
  v25(v52, v12, v36);
  outlined init with take of URL?(v6, v53);
  v38 = (*(v35 + 72) + 32) & ~*(v35 + 72);
  v55 = (v8 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = (v55 + 15) & 0xFFFFFFFFFFFFFFF8;
  v40 = (v39 + 15) & 0xFFFFFFFFFFFFFFF8;
  v41 = (v40 + 15) & 0xFFFFFFFFFFFFFFF8;
  v42 = (*(v51 + 80) + v41 + 8) & ~*(v51 + 80);
  v43 = swift_allocObject();
  v44 = v47;
  *(v43 + 16) = v49;
  *(v43 + 24) = v44;
  v25((v43 + v38), v52, v56);
  *(v43 + v55) = v50;
  *(v43 + v39) = v29;
  *(v43 + v40) = v48;
  *(v43 + v41) = v46;
  outlined init with take of URL?(v53, v43 + v42);
  *(v43 + ((v3 + v42 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;
  v45 = a1;
  return partial apply for closure #1 in static JournalingSuggestion.StateOfMind.getAssetLoader(for:inside:);
}

uint64_t sub_238A82140()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR) - 8);
  v8 = *(v7 + 80);
  v9 = (v8 + v6 + 8) & ~v8;
  v10 = *(v7 + 64);
  v11 = *(v0 + 16);

  v12 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);
  v13 = *(v0 + v5);

  v14 = *(v0 + v6);

  v15 = type metadata accessor for URL();
  v16 = *(v15 - 8);
  if (!(*(v16 + 48))(v0 + v9, 1, v15))
  {
    (*(v16 + 8))(v0 + v9, v15);
  }

  v17 = (v10 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x2821FE8E8](v0, v17 + 8, v3 | v8 | 7);
}

uint64_t partial apply for closure #1 in static JournalingSuggestion.StateOfMind.getAssetLoader(for:inside:)(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for Date() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR) - 8);
  v12 = (*(v11 + 80) + v10 + 8) & ~*(v11 + 80);
  return closure #1 in static JournalingSuggestion.StateOfMind.getAssetLoader(for:inside:)(a1, a2, *(v2 + 16), *(v2 + 24), v2 + v6, *(v2 + v7), *(v2 + v9), *(v2 + v10), *(v2 + v8), v2 + v12, *(v2 + ((*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_238A82498()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR) - 8);
  v8 = *(v7 + 80);
  v9 = (v8 + v6 + 8) & ~v8;
  v10 = *(v7 + 64);
  v11 = *(v0 + 2);
  swift_unknownObjectRelease();
  v12 = *(v0 + 4);

  v13 = *(v0 + 5);

  (*(v2 + 8))(&v0[v4], v1);
  v14 = *&v0[v5];

  v15 = *&v0[v6];

  v16 = type metadata accessor for URL();
  v17 = *(v16 - 8);
  if (!(*(v17 + 48))(&v0[v9], 1, v16))
  {
    (*(v17 + 8))(&v0[v9], v16);
  }

  v18 = (v10 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + 15) & 0xFFFFFFFFFFFFFFF8;

  v20 = *&v0[v19 + 8];

  return MEMORY[0x2821FE8E8](v0, v19 + 16, v3 | v8 | 7);
}

uint64_t partial apply for closure #1 in closure #1 in static JournalingSuggestion.StateOfMind.getAssetLoader(for:inside:)(uint64_t a1)
{
  v3 = v2;
  v4 = *(type metadata accessor for Date() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR) - 8);
  v11 = (*(v10 + 64) + ((*(v10 + 80) + v9 + 8) & ~*(v10 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = v1[2];
  v24 = v1[3];
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v23 = v1[4];
  v22 = v1[5];
  v13 = *(v1 + v6);
  v14 = *(v1 + v7);
  v15 = *(v1 + v8);
  v16 = *(v1 + v9);
  v17 = *(v1 + v11);
  v18 = *(v1 + v12);
  v19 = *(v1 + v12 + 8);
  v20 = swift_task_alloc();
  *(v3 + 16) = v20;
  *v20 = v3;
  v20[1] = partial apply for closure #1 in closure #1 in closure #1 in closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:);

  return closure #1 in closure #1 in static JournalingSuggestion.StateOfMind.getAssetLoader(for:inside:)(v14, a1, v25, v24, v23, v22, v1 + v5, v13, v15);
}

unint64_t type metadata accessor for HKStateOfMind()
{
  result = lazy cache variable for type metadata for HKStateOfMind;
  if (!lazy cache variable for type metadata for HKStateOfMind)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for HKStateOfMind);
  }

  return result;
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
      outlined init with copy of URL?(v4, &v13, &_sSS_yptMd, &_sSS_yptMR);
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

uint64_t outlined init with copy of JournalingSuggestion.StateOfMind(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JournalingSuggestion.StateOfMind(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of JournalingSuggestion.StateOfMind(uint64_t a1)
{
  v2 = type metadata accessor for JournalingSuggestion.StateOfMind(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t lazy protocol witness table accessor for type JournalingSuggestionsError and conformance JournalingSuggestionsError()
{
  result = lazy protocol witness table cache variable for type JournalingSuggestionsError and conformance JournalingSuggestionsError;
  if (!lazy protocol witness table cache variable for type JournalingSuggestionsError and conformance JournalingSuggestionsError)
  {
    type metadata accessor for JournalingSuggestionsError();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JournalingSuggestionsError and conformance JournalingSuggestionsError);
  }

  return result;
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t (*static JournalingSuggestion.GenericMedia.getAssetLoader(for:)())(void (*a1)(uint64_t *, void), uint64_t a2)
{
  result = Asset.transferRepresentation.getter();
  if (result)
  {
    v1 = result;
    type metadata accessor for TransferMediaThirdPartyViewModel();
    v2 = swift_dynamicCastClass();
    if (v2)
    {
      *(swift_allocObject() + 16) = v2;
      return partial apply for closure #1 in static JournalingSuggestion.GenericMedia.getAssetLoader(for:);
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t closure #1 in static JournalingSuggestion.GenericMedia.getAssetLoader(for:)(void (*a1)(uint64_t *, void), uint64_t a2, uint64_t a3)
{
  v112 = a2;
  v113 = a1;
  v4 = type metadata accessor for MediaThirdPartyBackgroundColorVariant();
  v110 = *(v4 - 8);
  v111 = v4;
  v5 = *(v110 + 64);
  MEMORY[0x28223BE20](v4);
  v98 = &v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI37MediaThirdPartyBackgroundColorVariantOSgMd, &_s9MomentsUI37MediaThirdPartyBackgroundColorVariantOSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v109 = &v93 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v114 = &v93 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v107 = &v93 - v15;
  v105 = type metadata accessor for MediaThirdPartyCategory();
  v115 = *(v105 - 8);
  v16 = *(v115 + 64);
  MEMORY[0x28223BE20](v105);
  v100 = &v93 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI23MediaThirdPartyCategoryOSgMd, &_s9MomentsUI23MediaThirdPartyCategoryOSgMR);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v116 = &v93 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v117 = &v93 - v22;
  v95 = type metadata accessor for UUID();
  v94 = *(v95 - 8);
  v23 = *(v94 + 8);
  MEMORY[0x28223BE20](v95);
  v25 = &v93 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for URL();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v30 = &v93 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8);
  v34 = &v93 - v33;
  v35 = type metadata accessor for JournalingSuggestion.GenericMedia(0);
  v36 = *(*(v35 - 1) + 64);
  v37 = MEMORY[0x28223BE20](v35);
  v39 = (&v93 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = *(v37 + 28);
  v41 = type metadata accessor for Date();
  v42 = *(v41 - 8);
  v43 = *(v42 + 56);
  v104 = v40;
  v103 = v41;
  v102 = v43;
  v101 = v42 + 56;
  (v43)(v39 + v40, 1, 1);
  v44 = *(v27 + 56);
  v97 = v35[8];
  v96 = v44;
  v44(v97 + v39, 1, 1, v26);
  v99 = v35[10];
  *(v39 + v99) = 0;
  v108 = v35;
  v106 = v35[11];
  *(v39 + v106) = 4;
  v118 = a3;
  v45 = dispatch thunk of AssetViewModel.baseImage.getter();
  if (v45)
  {
    v46 = v45;
    v47 = Image.uiImage.getter();

    if (v47)
    {
      v48 = [objc_opt_self() defaultManager];
      v49 = [v48 temporaryDirectory];

      static URL._unconditionallyBridgeFromObjectiveC(_:)();
      UUID.init()();
      UUID.uuidString.getter();
      (*(v94 + 1))(v25, v95);
      URL.appendingPathComponent(_:)();

      v50 = *(v27 + 8);
      v50(v30, v26);
      v51 = UIImageHEICRepresentation(v47);
      if (v51 || (v51 = UIImagePNGRepresentation(v47)) != 0)
      {
        v94 = v50;
        v95 = v47;
        v52 = v51;
        v53 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v55 = v54;

        URL.appendingPathExtension(_:)();
        v94(v34, v26);
        (*(v27 + 32))(v34, v30, v26);
        Data.write(to:options:)();
        outlined consume of Data._Representation(v53, v55);
        v47 = v95;
      }

      v96(v34, 0, 1, v26);
      outlined assign with take of URL?(v34, v97 + v39, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    }
  }

  *v39 = dispatch thunk of AssetViewModel.baseTitle.getter();
  v39[1] = v56;
  v57 = v117;
  dispatch thunk of TransferMediaThirdPartyViewModel.mediaThirdPartyCategory.getter();
  v58 = v115;
  v59 = *(v115 + 48);
  v60 = v105;
  if (v59(v57, 1, v105) == 1)
  {
    outlined destroy of URL?(v57, &_s9MomentsUI23MediaThirdPartyCategoryOSgMd, &_s9MomentsUI23MediaThirdPartyCategoryOSgMR);
    v61 = 0;
    v62 = 0;
    v63 = v114;
  }

  else
  {
    v64 = dispatch thunk of TransferMediaThirdPartyViewModel.subtitle.getter();
    v62 = v65;
    v66 = v100;
    if (v65)
    {
      v61 = v64;
      (*(v58 + 104))(v100, *MEMORY[0x277D2A1B8], v60);
      lazy protocol witness table accessor for type MediaThirdPartyCategory and conformance MediaThirdPartyCategory();
      v67 = v66;

      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v68 = *(v58 + 8);
      v68(v67, v60);

      if (v120[0] != v119)
      {

        v61 = 0;
        v62 = 0;
      }

      v63 = v114;
    }

    else
    {
      v61 = 0;
      v68 = *(v58 + 8);
      v63 = v114;
    }

    v68(v117, v60);
  }

  v69 = v116;
  v39[2] = v61;
  v39[3] = v62;
  dispatch thunk of TransferMediaThirdPartyViewModel.mediaThirdPartyCategory.getter();
  if (v59(v69, 1, v60) == 1)
  {
    outlined destroy of URL?(v69, &_s9MomentsUI23MediaThirdPartyCategoryOSgMd, &_s9MomentsUI23MediaThirdPartyCategoryOSgMR);
    v70 = 0;
    v71 = 0;
    v73 = v108;
    v72 = v109;
    v74 = v107;
    goto LABEL_26;
  }

  v75 = dispatch thunk of TransferMediaThirdPartyViewModel.subtitle.getter();
  v71 = v76;
  if (v76)
  {
    v117 = v75;
    v77 = *MEMORY[0x277D2A1B0];
    v78 = v115;
    v79 = v100;
    v97 = *(v115 + 104);
    v97(v100, v77, v60);
    lazy protocol witness table accessor for type MediaThirdPartyCategory and conformance MediaThirdPartyCategory();

    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v80 = *(v78 + 8);
    v80(v79, v60);
    if (v120[0] == v119)
    {
    }

    else
    {
      v97(v79, *MEMORY[0x277D2A1C0], v60);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v80(v79, v60);

      if (v120[0] != v119)
      {

        v70 = 0;
        v71 = 0;
        v72 = v109;
        v63 = v114;
        goto LABEL_24;
      }
    }

    v72 = v109;
    v63 = v114;
    v70 = v117;
LABEL_24:
    v80(v116, v60);
    goto LABEL_25;
  }

  v70 = 0;
  v72 = v109;
  (*(v115 + 8))(v116, v60);
LABEL_25:
  v74 = v107;
  v73 = v108;
LABEL_26:
  v39[4] = v70;
  v39[5] = v71;
  dispatch thunk of AssetViewModel.baseDateInterval.getter();
  v81 = type metadata accessor for DateInterval();
  v82 = *(v81 - 8);
  if ((*(v82 + 48))(v63, 1, v81) == 1)
  {
    outlined destroy of URL?(v63, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
    v83 = 1;
  }

  else
  {
    DateInterval.start.getter();
    (*(v82 + 8))(v63, v81);
    v83 = 0;
  }

  v102(v74, v83, 1, v103);
  v84 = (v39 + *(v73 + 36));
  outlined assign with take of URL?(v74, v39 + v104, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  *v84 = dispatch thunk of TransferMediaThirdPartyViewModel.appIconAccessibilityString.getter();
  v84[1] = v85;
  dispatch thunk of TransferMediaThirdPartyViewModel.colorVariant.getter();
  v87 = v110;
  v86 = v111;
  if ((*(v110 + 48))(v72, 1, v111) == 1)
  {
    outlined destroy of URL?(v72, &_s9MomentsUI37MediaThirdPartyBackgroundColorVariantOSgMd, &_s9MomentsUI37MediaThirdPartyBackgroundColorVariantOSgMR);
    v88 = 4;
  }

  else
  {
    v89 = v98;
    (*(v87 + 16))(v98, v72, v86);
    v90 = (*(v87 + 88))(v89, v86);
    if (v90 == *MEMORY[0x277D2A1E0])
    {
      v88 = 0;
    }

    else if (v90 == *MEMORY[0x277D2A1D8])
    {
      v88 = 1;
    }

    else if (v90 == *MEMORY[0x277D2A1D0])
    {
      v88 = 2;
    }

    else if (v90 == *MEMORY[0x277D2A1E8])
    {
      v88 = 3;
    }

    else
    {
      (*(v87 + 8))(v89, v86);
      v88 = 4;
    }

    (*(v87 + 8))(v72, v86);
  }

  *(v39 + v106) = v88;
  if (dispatch thunk of TransferMediaThirdPartyViewModel.backgroundColor.getter())
  {
    *(v39 + v99) = MEMORY[0x23EE6FF50]();
  }

  v120[3] = v73;
  v120[4] = &protocol witness table for JournalingSuggestion.GenericMedia;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v120);
  outlined init with copy of JournalingSuggestion.GenericMedia(v39, boxed_opaque_existential_1);
  v113(v120, 0);
  outlined destroy of URL?(v120, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMd, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMR);
  return outlined destroy of JournalingSuggestion.GenericMedia(v39);
}

uint64_t sub_238A839F0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

Swift::String_optional __swiftcall MediaThirdPartyCategory.artist(subtitle:)(Swift::String_optional subtitle)
{
  object = subtitle.value._object;
  countAndFlagsBits = subtitle.value._countAndFlagsBits;
  v3 = type metadata accessor for MediaThirdPartyCategory();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (object)
  {
    (*(v4 + 104))(v7, *MEMORY[0x277D2A1B8], v3);
    lazy protocol witness table accessor for type MediaThirdPartyCategory and conformance MediaThirdPartyCategory();

    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    (*(v4 + 8))(v7, v3);
    if (v11[1] == v11[0])
    {
      v8 = countAndFlagsBits;
    }

    else
    {

      v8 = 0;
      object = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = object;
  result.value._object = v9;
  result.value._countAndFlagsBits = v8;
  return result;
}

unint64_t lazy protocol witness table accessor for type MediaThirdPartyCategory and conformance MediaThirdPartyCategory()
{
  result = lazy protocol witness table cache variable for type MediaThirdPartyCategory and conformance MediaThirdPartyCategory;
  if (!lazy protocol witness table cache variable for type MediaThirdPartyCategory and conformance MediaThirdPartyCategory)
  {
    type metadata accessor for MediaThirdPartyCategory();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MediaThirdPartyCategory and conformance MediaThirdPartyCategory);
  }

  return result;
}

Swift::String_optional __swiftcall MediaThirdPartyCategory.album(subtitle:)(Swift::String_optional subtitle)
{
  object = subtitle.value._object;
  countAndFlagsBits = subtitle.value._countAndFlagsBits;
  v2 = type metadata accessor for MediaThirdPartyCategory();
  v3 = *(v2 - 8);
  v4 = v3[8];
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (object)
  {
    v7 = v3[13];
    v7(v6, *MEMORY[0x277D2A1B0], v2);
    lazy protocol witness table accessor for type MediaThirdPartyCategory and conformance MediaThirdPartyCategory();

    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v8 = v3[1];
    v8(v6, v2);
    if (v15 == v14 || (v7(v6, *MEMORY[0x277D2A1C0], v2), dispatch thunk of RawRepresentable.rawValue.getter(), dispatch thunk of RawRepresentable.rawValue.getter(), v8(v6, v2), v15 == v14))
    {
      v9 = countAndFlagsBits;
    }

    else
    {

      v9 = 0;
      object = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = object;
  result.value._object = v10;
  result.value._countAndFlagsBits = v9;
  return result;
}

uint64_t MediaThirdPartyBackgroundColorVariant.mediaVariant.getter@<X0>(_BYTE *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for MediaThirdPartyBackgroundColorVariant();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v2, v4);
  result = (*(v5 + 88))(v8, v4);
  if (result == *MEMORY[0x277D2A1E0])
  {
    *a1 = 0;
  }

  else if (result == *MEMORY[0x277D2A1D8])
  {
    *a1 = 1;
  }

  else if (result == *MEMORY[0x277D2A1D0])
  {
    *a1 = 2;
  }

  else if (result == *MEMORY[0x277D2A1E8])
  {
    *a1 = 3;
  }

  else
  {
    *a1 = 4;
    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

uint64_t protocol witness for static InternalAssetProvider.getAssetLoader(for:) in conformance JournalingSuggestion.GenericMedia()
{
  v1 = Asset.transferRepresentation.getter();
  if (v1)
  {
    v2 = v1;
    type metadata accessor for TransferMediaThirdPartyViewModel();
    v3 = swift_dynamicCastClass();
    if (v3)
    {
      v4 = v3;
      v5 = swift_allocObject();
      *(v5 + 16) = v4;
      v1 = closure #1 in static JournalingSuggestion.GenericMedia.getAssetLoader(for:)partial apply;
      goto LABEL_6;
    }

    v1 = 0;
  }

  v5 = 0;
LABEL_6:
  v6 = *(v0 + 8);

  return v6(v1, v5);
}

uint64_t outlined init with copy of JournalingSuggestion.GenericMedia(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JournalingSuggestion.GenericMedia(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of JournalingSuggestion.GenericMedia(uint64_t a1)
{
  v2 = type metadata accessor for JournalingSuggestion.GenericMedia(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t (*static UIImage.getLoaderForImageUrl(_:)(uint64_t a1))()
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  (*(v3 + 32))(v6 + v5, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  return partial apply for closure #1 in static UIImage.getLoaderForImageUrl(_:);
}

uint64_t closure #1 in static UIImage.getLoaderForImageUrl(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v18 - v11;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  (*(v7 + 16))(&v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v6);
  v14 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  (*(v7 + 32))(v15 + v14, &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  v16 = (v15 + ((v8 + v14 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v16 = a1;
  v16[1] = a2;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v12, &async function pointer to partial apply for closure #1 in closure #1 in static UIImage.getLoaderForImageUrl(_:), v15);
}

uint64_t closure #1 in closure #1 in static UIImage.getLoaderForImageUrl(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[18] = a5;
  v6[19] = a6;
  v6[17] = a4;
  v8 = type metadata accessor for JournalingSuggestionsError();
  v6[20] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v6[21] = swift_task_alloc();
  v10 = type metadata accessor for URL();
  v6[22] = v10;
  v11 = *(v10 - 8);
  v6[23] = v11;
  v12 = *(v11 + 64) + 15;
  v13 = swift_task_alloc();
  v6[24] = v13;
  v14 = swift_task_alloc();
  v6[25] = v14;
  *v14 = v6;
  v14[1] = closure #1 in closure #1 in static UIImage.getLoaderForImageUrl(_:);

  return prepareUrlAccess(_:)(v13, a4);
}

uint64_t closure #1 in closure #1 in static UIImage.getLoaderForImageUrl(_:)()
{
  v2 = *(*v1 + 200);
  v5 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v3 = closure #1 in closure #1 in static UIImage.getLoaderForImageUrl(_:);
  }

  else
  {
    v3 = closure #1 in closure #1 in static UIImage.getLoaderForImageUrl(_:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = *(v0 + 208);
  v2 = *(v0 + 192);
  v3 = Data.init(contentsOf:options:)();
  if (v1)
  {

LABEL_3:
    v6 = *(v0 + 184);
    v5 = *(v0 + 192);
    v8 = *(v0 + 168);
    v7 = *(v0 + 176);
    v9 = *(v0 + 152);
    v10 = *(v0 + 160);
    v11 = *(v0 + 144);
    *v8 = 0x6567616D494955;
    *(v8 + 8) = 0xE700000000000000;
    *(v8 + 16) = xmmword_238AD9630;
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type JournalingSuggestionsError and conformance JournalingSuggestionsError();
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0u;
    *(v0 + 88) = 0;
    v12 = swift_allocError();
    outlined init with copy of JournalingSuggestionsError(v8, v13);
    v11(v0 + 56, v12);

    outlined destroy of URL?(v0 + 56, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMd, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMR);
    outlined destroy of JournalingSuggestionsError(v8, type metadata accessor for JournalingSuggestionsError);
    (*(v6 + 8))(v5, v7);
    goto LABEL_6;
  }

  v14 = v3;
  v15 = v4;
  v16 = objc_allocWithZone(MEMORY[0x277D755B8]);
  outlined copy of Data._Representation(v14, v15);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v18 = [v16 initWithData_];

  outlined consume of Data._Representation(v14, v15);
  if (!v18)
  {
    outlined consume of Data._Representation(v14, v15);
    goto LABEL_3;
  }

  v20 = *(v0 + 184);
  v19 = *(v0 + 192);
  v21 = *(v0 + 176);
  v23 = *(v0 + 144);
  v22 = *(v0 + 152);
  *(v0 + 120) = type metadata accessor for UIImage();
  *(v0 + 128) = &protocol witness table for UIImage;
  *(v0 + 96) = v18;
  v24 = v18;
  v23(v0 + 96, 0);

  outlined consume of Data._Representation(v14, v15);
  (*(v20 + 8))(v19, v21);
  outlined destroy of URL?(v0 + 96, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMd, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMR);
LABEL_6:
  v25 = *(v0 + 192);
  v26 = *(v0 + 168);

  v27 = *(v0 + 8);

  return v27();
}

{
  v1 = *(v0 + 208);
  v2 = *(v0 + 176);
  v3 = *(v0 + 184);
  v4 = *(v0 + 168);
  v6 = *(v0 + 144);
  v5 = *(v0 + 152);
  (*(v3 + 16))(v4, *(v0 + 136), v2);
  (*(v3 + 56))(v4, 0, 1, v2);
  swift_storeEnumTagMultiPayload();
  lazy protocol witness table accessor for type JournalingSuggestionsError and conformance JournalingSuggestionsError();
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  v7 = swift_allocError();
  outlined init with copy of JournalingSuggestionsError(v4, v8);
  v6(v0 + 16, v7);

  outlined destroy of URL?(v0 + 16, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMd, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMR);
  outlined destroy of JournalingSuggestionsError(v4, type metadata accessor for JournalingSuggestionsError);
  v9 = *(v0 + 192);
  v10 = *(v0 + 168);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t (*static UIImage.getImageLoaderForLivePhoto(for:inside:)(void *a1))(uint64_t a1, uint64_t a2)
{
  result = specialized static JournalingSuggestion.LivePhoto.getAssetLoader(for:inside:)(a1);
  if (result)
  {
    v4 = result;
    v5 = v3;
    v6 = swift_allocObject();
    v6[2] = v4;
    v6[3] = v5;
    v6[4] = a1;
    v7 = a1;
    return partial apply for closure #1 in static UIImage.getImageLoaderForLivePhoto(for:inside:);
  }

  return result;
}

uint64_t closure #1 in static UIImage.getImageLoaderForLivePhoto(for:inside:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t (*)(uint64_t a1, void *a2), void *), uint64_t a4, void *a5)
{
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = a5;

  v10 = a5;
  a3(partial apply for closure #1 in closure #1 in static UIImage.getImageLoaderForLivePhoto(for:inside:), v9);
}

uint64_t closure #1 in closure #1 in static UIImage.getImageLoaderForLivePhoto(for:inside:)(uint64_t a1, void *a2, void (*a3)(__int128 *, void *), uint64_t a4, void *a5)
{
  v10 = type metadata accessor for JournalingSuggestionsError();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21JournalingSuggestions0A10SuggestionV9LivePhotoVSgMd, &_s21JournalingSuggestions0A10SuggestionV9LivePhotoVSgMR);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v45 - v16;
  v18 = type metadata accessor for JournalingSuggestion.LivePhoto(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v52 = 0;
    v50 = 0u;
    v51 = 0u;
    v23 = a2;
    a3(&v50, a2);

    return outlined destroy of URL?(&v50, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMd, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMR);
  }

  v46 = v22;
  v47 = v10;
  v48 = a4;
  v49 = a3;
  outlined init with copy of JournalingSuggestionAsset?(a1, &v50);
  if (!*(&v51 + 1))
  {
    outlined destroy of URL?(&v50, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMd, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMR);
    (*(v19 + 56))(v17, 1, 1, v18);
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21JournalingSuggestions0A15SuggestionAsset_pMd, &_s21JournalingSuggestions0A15SuggestionAsset_pMR);
  v25 = swift_dynamicCast();
  (*(v19 + 56))(v17, v25 ^ 1u, 1, v18);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
LABEL_8:
    outlined destroy of URL?(v17, &_s21JournalingSuggestions0A10SuggestionV9LivePhotoVSgMd, &_s21JournalingSuggestions0A10SuggestionV9LivePhotoVSgMR);
    v30 = [a5 assetType];
    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v32;

    *v13 = 0x6567616D494955;
    v13[1] = 0xE700000000000000;
    v13[2] = v31;
    v13[3] = v33;
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type JournalingSuggestionsError and conformance JournalingSuggestionsError();
    v50 = 0u;
    v51 = 0u;
    v52 = 0;
    v34 = swift_allocError();
    outlined init with copy of JournalingSuggestionsError(v13, v35);
    v49(&v50, v34);

    outlined destroy of URL?(&v50, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMd, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMR);
    v36 = type metadata accessor for JournalingSuggestionsError;
    v37 = v13;
    return outlined destroy of JournalingSuggestionsError(v37, v36);
  }

  outlined init with take of JournalingSuggestion.LivePhoto(v17, v46);
  v26 = Data.init(contentsOf:options:)();
  v27 = v49;
  v38 = v26;
  v40 = v39;
  v41 = objc_allocWithZone(MEMORY[0x277D755B8]);
  outlined copy of Data._Representation(v38, v40);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v43 = [v41 initWithData_];

  outlined consume of Data._Representation(v38, v40);
  if (v43)
  {
    *(&v51 + 1) = type metadata accessor for UIImage();
    v52 = &protocol witness table for UIImage;
    *&v50 = v43;
    v44 = v43;
    v27(&v50, 0);

    outlined consume of Data._Representation(v38, v40);
    outlined destroy of JournalingSuggestionsError(v46, type metadata accessor for JournalingSuggestion.LivePhoto);
    return outlined destroy of URL?(&v50, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMd, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMR);
  }

  outlined consume of Data._Representation(v38, v40);
  *v13 = 0x6567616D494955;
  v13[1] = 0xE700000000000000;
  *(v13 + 1) = xmmword_238AD9640;
  swift_storeEnumTagMultiPayload();
  lazy protocol witness table accessor for type JournalingSuggestionsError and conformance JournalingSuggestionsError();
  v50 = 0u;
  v51 = 0u;
  v52 = 0;
  v28 = swift_allocError();
  outlined init with copy of JournalingSuggestionsError(v13, v29);
  v27(&v50, v28);

  outlined destroy of URL?(&v50, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMd, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMR);
  outlined destroy of JournalingSuggestionsError(v13, type metadata accessor for JournalingSuggestionsError);
  v36 = type metadata accessor for JournalingSuggestion.LivePhoto;
  v37 = v46;
  return outlined destroy of JournalingSuggestionsError(v37, v36);
}

uint64_t (*static UIImage.getLoaderForImageUrlPair(_:)(void *a1))(uint64_t a1, uint64_t a2)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return partial apply for closure #1 in static UIImage.getLoaderForImageUrlPair(_:);
}

uint64_t closure #1 in static UIImage.getLoaderForImageUrlPair(_:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v14 - v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = a3;
  v11[5] = a1;
  v11[6] = a2;
  v12 = a3;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v9, &async function pointer to partial apply for closure #1 in closure #1 in static UIImage.getLoaderForImageUrlPair(_:), v11);
}

uint64_t closure #1 in closure #1 in static UIImage.getLoaderForImageUrlPair(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[23] = a5;
  v6[24] = a6;
  v6[22] = a4;
  v7 = type metadata accessor for JournalingSuggestionsError();
  v6[25] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v6[26] = swift_task_alloc();
  v9 = type metadata accessor for URL();
  v6[27] = v9;
  v10 = *(v9 - 8);
  v6[28] = v10;
  v11 = *(v10 + 64) + 15;
  v6[29] = swift_task_alloc();
  v6[30] = swift_task_alloc();
  v6[31] = swift_task_alloc();
  v6[32] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in closure #1 in static UIImage.getLoaderForImageUrlPair(_:), 0, 0);
}

uint64_t closure #1 in closure #1 in static UIImage.getLoaderForImageUrlPair(_:)()
{
  v1 = *(v0 + 248);
  v2 = [*(v0 + 176) lightURL];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = swift_task_alloc();
  *(v0 + 264) = v3;
  *v3 = v0;
  v3[1] = closure #1 in closure #1 in static UIImage.getLoaderForImageUrlPair(_:);
  v5 = *(v0 + 248);
  v4 = *(v0 + 256);

  return prepareUrlAccess(_:)(v4, v5);
}

{
  v2 = *v1;
  v3 = *(*v1 + 264);
  v4 = *(*v1 + 248);
  v5 = *(*v1 + 224);
  v6 = *(*v1 + 216);
  v10 = *v1;
  v2[34] = v0;

  v7 = *(v5 + 8);
  v2[35] = v7;
  v7(v4, v6);
  if (v0)
  {
    v8 = closure #1 in closure #1 in static UIImage.getLoaderForImageUrlPair(_:);
  }

  else
  {
    v7(v2[32], v2[27]);
    v8 = closure #1 in closure #1 in static UIImage.getLoaderForImageUrlPair(_:);
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

{
  v1 = *(v0 + 232);
  v2 = [*(v0 + 176) darkURL];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = swift_task_alloc();
  *(v0 + 288) = v3;
  *v3 = v0;
  v3[1] = closure #1 in closure #1 in static UIImage.getLoaderForImageUrlPair(_:);
  v5 = *(v0 + 232);
  v4 = *(v0 + 240);

  return prepareUrlAccess(_:)(v4, v5);
}

{
  v2 = *v1;
  v3 = *(*v1 + 288);
  v4 = *(*v1 + 280);
  v5 = *(*v1 + 232);
  v6 = *(*v1 + 224);
  v7 = *(*v1 + 216);
  v10 = *v1;
  *(*v1 + 296) = v0;

  v4(v5, v7);
  if (v0)
  {
    v8 = closure #1 in closure #1 in static UIImage.getLoaderForImageUrlPair(_:);
  }

  else
  {
    (*(v2 + 280))(*(v2 + 240), *(v2 + 216));
    v8 = closure #1 in closure #1 in static UIImage.getLoaderForImageUrlPair(_:);
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

{
  v1 = [*(v0 + 176) constructedImage];
  if (v1)
  {
    v2 = v1;
    v4 = *(v0 + 184);
    v3 = *(v0 + 192);
    v5 = type metadata accessor for UIImage();
    *(v0 + 136) = v2;
    *(v0 + 160) = v5;
    *(v0 + 168) = &protocol witness table for UIImage;
    v6 = v2;
    v4(v0 + 136, 0);

    outlined destroy of URL?(v0 + 136, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMd, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMR);
  }

  else
  {
    v8 = *(v0 + 200);
    v7 = *(v0 + 208);
    v10 = *(v0 + 184);
    v9 = *(v0 + 192);
    *v7 = 0x6567616D494955;
    *(v7 + 8) = 0xE700000000000000;
    *(v7 + 16) = xmmword_238AD9650;
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type JournalingSuggestionsError and conformance JournalingSuggestionsError();
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
    *(v0 + 128) = 0;
    v11 = swift_allocError();
    outlined init with copy of JournalingSuggestionsError(v7, v12);
    v10(v0 + 96, v11);

    outlined destroy of URL?(v0 + 96, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMd, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMR);
    outlined destroy of JournalingSuggestionsError(v7, type metadata accessor for JournalingSuggestionsError);
  }

  v14 = *(v0 + 248);
  v13 = *(v0 + 256);
  v16 = *(v0 + 232);
  v15 = *(v0 + 240);
  v17 = *(v0 + 208);

  v18 = *(v0 + 8);

  return v18();
}

{
  v1 = *(v0 + 272);
  v2 = *(v0 + 216);
  v3 = *(v0 + 224);
  v5 = *(v0 + 200);
  v4 = *(v0 + 208);
  v7 = *(v0 + 184);
  v6 = *(v0 + 192);
  v8 = [*(v0 + 176) lightURL];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v3 + 56))(v4, 0, 1, v2);
  swift_storeEnumTagMultiPayload();
  lazy protocol witness table accessor for type JournalingSuggestionsError and conformance JournalingSuggestionsError();
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  v9 = swift_allocError();
  outlined init with copy of JournalingSuggestionsError(v4, v10);
  v7(v0 + 16, v9);

  outlined destroy of URL?(v0 + 16, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMd, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMR);
  outlined destroy of JournalingSuggestionsError(v4, type metadata accessor for JournalingSuggestionsError);
  v11 = *(v0 + 232);
  v12 = [*(v0 + 176) darkURL];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v13 = swift_task_alloc();
  *(v0 + 288) = v13;
  *v13 = v0;
  v13[1] = closure #1 in closure #1 in static UIImage.getLoaderForImageUrlPair(_:);
  v15 = *(v0 + 232);
  v14 = *(v0 + 240);

  return prepareUrlAccess(_:)(v14, v15);
}

{
  v1 = *(v0 + 296);
  v2 = *(v0 + 216);
  v3 = *(v0 + 224);
  v5 = *(v0 + 200);
  v4 = *(v0 + 208);
  v7 = *(v0 + 184);
  v6 = *(v0 + 192);
  v8 = [*(v0 + 176) darkURL];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v3 + 56))(v4, 0, 1, v2);
  swift_storeEnumTagMultiPayload();
  lazy protocol witness table accessor for type JournalingSuggestionsError and conformance JournalingSuggestionsError();
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0;
  *(v0 + 56) = 0u;
  v9 = swift_allocError();
  outlined init with copy of JournalingSuggestionsError(v4, v10);
  v7(v0 + 56, v9);

  outlined destroy of URL?(v0 + 56, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMd, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMR);
  outlined destroy of JournalingSuggestionsError(v4, type metadata accessor for JournalingSuggestionsError);
  v12 = *(v0 + 248);
  v11 = *(v0 + 256);
  v14 = *(v0 + 232);
  v13 = *(v0 + 240);
  v15 = *(v0 + 208);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t closure #1 in static UIImage.getAssetLoader(for:inside:)(void (*a1)(void *, void), uint64_t a2, void *a3)
{
  v7[3] = type metadata accessor for UIImage();
  v7[4] = &protocol witness table for UIImage;
  v7[0] = a3;
  v5 = a3;
  a1(v7, 0);
  return outlined destroy of URL?(v7, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMd, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMR);
}

uint64_t (*specialized static UIImage.getAssetLoader(for:inside:)(void *a1))()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v55 - v4;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v55 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v57 = &v55 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v55 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v55 - v18;
  v58 = [a1 content];
  v20 = swift_dynamicCast();
  v21 = *(v7 + 56);
  if (v20)
  {
    v21(v5, 0, 1, v6);
    v22 = v7;
    v23 = *(v7 + 32);
    v23(v19, v5, v6);
    v56 = v22;
    (*(v22 + 16))(v17, v19, v6);
    v55 = a1;
    v24 = [a1 assetType];
    v25 = *MEMORY[0x277D2A080];
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;
    if (v26 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v28 == v29)
    {
    }

    else
    {
      v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v33 & 1) == 0)
      {
        v49 = v56 + 8;
        (*(v56 + 8))(v19, v6);
        v50 = v57;
        v23(v57, v17, v6);
        v51 = (*(v49 + 72) + 16) & ~*(v49 + 72);
        v52 = swift_allocObject();
        v23((v52 + v51), v50, v6);
        return closure #1 in static UIImage.getLoaderForImageUrl(_:)partial apply;
      }
    }

    v34 = v55;
    v35 = specialized static JournalingSuggestion.LivePhoto.getAssetLoader(for:inside:)(v55);
    v37 = v36;
    v38 = *(v56 + 8);
    v38(v17, v6);
    v38(v19, v6);
    if (v35)
    {
      v39 = swift_allocObject();
      v39[2] = v35;
      v39[3] = v37;
      v39[4] = v34;
      v40 = v34;
      return closure #1 in static UIImage.getImageLoaderForLivePhoto(for:inside:)partial apply;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v21(v5, 1, 1, v6);
    outlined destroy of URL?(v5, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v30 = [a1 content];
    objc_opt_self();
    v31 = swift_dynamicCastObjCClass();
    if (v31)
    {
      *(swift_allocObject() + 16) = v31;
      return partial apply for closure #1 in static UIImage.getAssetLoader(for:inside:);
    }

    else
    {
      swift_unknownObjectRelease();
      v41 = [a1 content];
      objc_opt_self();
      v42 = swift_dynamicCastObjCClass();
      if (v42 && (v43 = [v42 imageURL]) != 0)
      {
        v44 = v43;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();
        swift_unknownObjectRelease();

        v45 = *(v7 + 32);
        v45(v12, &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
        v46 = v57;
        v45(v57, v12, v6);
        v47 = (*(v7 + 80) + 16) & ~*(v7 + 80);
        v48 = swift_allocObject();
        v45((v48 + v47), v46, v6);
        return closure #1 in static UIImage.getLoaderForImageUrl(_:)partial apply;
      }

      else
      {
        swift_unknownObjectRelease();
        v53 = [a1 content];
        objc_opt_self();
        v54 = swift_dynamicCastObjCClass();
        if (v54)
        {
          *(swift_allocObject() + 16) = v54;
          return closure #1 in static UIImage.getLoaderForImageUrlPair(_:)partial apply;
        }

        else
        {
          swift_unknownObjectRelease();
          return 0;
        }
      }
    }
  }
}

uint64_t sub_238A863E0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t objectdestroyTm_0()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t partial apply for closure #1 in static UIImage.getLoaderForImageUrl(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for URL() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return closure #1 in static UIImage.getLoaderForImageUrl(_:)(a1, a2, v6);
}

uint64_t sub_238A86528()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t partial apply for closure #1 in closure #1 in static UIImage.getLoaderForImageUrlPair(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:);

  return closure #1 in closure #1 in static UIImage.getLoaderForImageUrlPair(_:)(a1, v4, v5, v6, v7, v8);
}

uint64_t outlined init with copy of JournalingSuggestionsError(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JournalingSuggestionsError();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of JournalingSuggestionAsset?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21JournalingSuggestions0A15SuggestionAsset_pSgMd, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of JournalingSuggestion.LivePhoto(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JournalingSuggestion.LivePhoto(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of JournalingSuggestionsError(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined copy of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_238A86830()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t partial apply for closure #1 in closure #1 in static UIImage.getLoaderForImageUrl(_:)(uint64_t a1)
{
  v4 = *(type metadata accessor for URL() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = partial apply for closure #1 in closure #1 in closure #1 in closure #1 in static JournalingSuggestion.LocationGroup.getAssetLoader(for:);

  return closure #1 in closure #1 in static UIImage.getLoaderForImageUrl(_:)(a1, v6, v7, v1 + v5, v9, v10);
}

uint64_t (*static Image.getAssetLoader(for:inside:)(void *a1))()
{
  result = specialized static UIImage.getAssetLoader(for:inside:)(a1);
  if (result)
  {
    v4 = result;
    v5 = v3;
    v6 = swift_allocObject();
    v6[2] = v4;
    v6[3] = v5;
    v6[4] = a1;
    v7 = a1;
    return partial apply for closure #1 in static Image.getAssetLoader(for:inside:);
  }

  return result;
}

uint64_t closure #1 in static Image.getAssetLoader(for:inside:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t (*)(uint64_t a1, void *a2), void *), uint64_t a4, void *a5)
{
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = a5;

  v10 = a5;
  a3(partial apply for closure #1 in closure #1 in static Image.getAssetLoader(for:inside:), v9);
}

uint64_t closure #1 in closure #1 in static Image.getAssetLoader(for:inside:)(uint64_t a1, void *a2, void (*a3)(__int128 *, void *), uint64_t a4, void *a5)
{
  v9 = type metadata accessor for JournalingSuggestionsError();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a2)
  {
    v26 = 0;
    v24 = 0u;
    v25 = 0u;
    v13 = a2;
    a3(&v24, a2);

    return outlined destroy of JournalingSuggestionAsset?(&v24);
  }

  outlined init with copy of JournalingSuggestionAsset?(a1, &v24);
  if (*(&v25 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s21JournalingSuggestions0A15SuggestionAsset_pMd, &_s21JournalingSuggestions0A15SuggestionAsset_pMR);
    type metadata accessor for UIImage();
    if (swift_dynamicCast())
    {
      v15 = v23[1];
      v16 = Image.init(uiImage:)();
      *(&v25 + 1) = MEMORY[0x277CE1088];
      v26 = &protocol witness table for Image;
      *&v24 = v16;
      a3(&v24, 0);

      return outlined destroy of JournalingSuggestionAsset?(&v24);
    }
  }

  else
  {
    outlined destroy of JournalingSuggestionAsset?(&v24);
  }

  v17 = [a5 assetType];
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  *v12 = 0x6567616D494955;
  v12[1] = 0xE700000000000000;
  v12[2] = v18;
  v12[3] = v20;
  swift_storeEnumTagMultiPayload();
  lazy protocol witness table accessor for type JournalingSuggestionsError and conformance JournalingSuggestionsError();
  v24 = 0u;
  v25 = 0u;
  v26 = 0;
  v21 = swift_allocError();
  outlined init with copy of JournalingSuggestionsError(v12, v22);
  a3(&v24, v21);

  outlined destroy of JournalingSuggestionAsset?(&v24);
  return outlined destroy of JournalingSuggestionsError(v12);
}

uint64_t (*protocol witness for static InternalAssetProvider.getAssetLoader(for:inside:) in conformance Image(void *a1))()
{
  result = specialized static UIImage.getAssetLoader(for:inside:)(a1);
  if (result)
  {
    v4 = result;
    v5 = v3;
    v6 = swift_allocObject();
    v6[2] = v4;
    v6[3] = v5;
    v6[4] = a1;
    v7 = a1;
    return closure #1 in static Image.getAssetLoader(for:inside:)partial apply;
  }

  return result;
}

uint64_t outlined destroy of JournalingSuggestionsError(uint64_t a1)
{
  v2 = type metadata accessor for JournalingSuggestionsError();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t closure #1 in static JournalingSuggestion.Video.getAssetLoader(for:inside:)(void (*a1)(uint64_t *, void), uint64_t a2, uint64_t a3, void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v25[-1] - v9;
  v11 = type metadata accessor for JournalingSuggestion.Video(0);
  v12 = *(*(v11 - 1) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v25[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for URL();
  (*(*(v15 - 8) + 16))(v14, a3, v15);
  v16 = v11[5];
  v17 = type metadata accessor for Date();
  (*(*(v17 - 8) + 56))(&v14[v16], 1, 1, v17);
  v18 = &v14[v11[6]];
  *v18 = 0u;
  *(v18 + 1) = 0u;
  v18[32] = 1;
  v19 = &v14[v11[7]];
  *v19 = 0u;
  *(v19 + 1) = 0u;
  v19[32] = 1;
  v20 = &v14[v11[8]];
  *v20 = 0u;
  *(v20 + 1) = 0u;
  v20[32] = 1;
  v21 = &v14[v11[9]];
  *v21 = 0;
  *(v21 + 1) = 0;
  _s21JournalingSuggestions11getMetadata_3key2asxSgSo17MOSuggestionAssetCyyXlG_So0ghD3KeyaxmtlF10Foundation4DateV_Tt2g5(a4, *MEMORY[0x277D29F88], v10);
  outlined assign with take of Date?(v10, &v14[v16]);
  v25[3] = v11;
  v25[4] = &protocol witness table for JournalingSuggestion.Video;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v25);
  outlined init with copy of JournalingSuggestion.Video(v14, boxed_opaque_existential_1);
  a1(v25, 0);
  outlined destroy of URL?(v25, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMd, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMR);
  return outlined destroy of JournalingSuggestion.Video(v14);
}

uint64_t (*specialized static JournalingSuggestion.Video.getAssetLoader(for:inside:)(void *a1))(void (*a1)(uint64_t *, void), uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v40 - v4;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v41 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v40 - v10;
  v12 = a1;
  v13 = [a1 assetType];
  v14 = *MEMORY[0x277D2A0F0];
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;
  if (v15 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v17 == v18)
  {

    v21 = v12;
    v22 = &off_278A60000;
  }

  else
  {
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v21 = v12;
    v22 = &off_278A60000;
    if ((v20 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v43 = [v21 v22[135]];
  v23 = swift_dynamicCast();
  v24 = *(v7 + 56);
  if (v23)
  {
    v24(v5, 0, 1, v6);
    v25 = *(v7 + 32);
    v25(v11, v5, v6);
    v26 = v41;
    v25(v41, v11, v6);
    v27 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v28 = swift_allocObject();
    v25((v28 + v27), v26, v6);
    *(v28 + ((v8 + v27 + 7) & 0xFFFFFFFFFFFFFFF8)) = v21;
    v29 = v21;
    return partial apply for closure #1 in static JournalingSuggestion.Video.getAssetLoader(for:inside:);
  }

  v24(v5, 1, 1, v6);
  outlined destroy of URL?(v5, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
LABEL_11:
  if (one-time initialization token for bridge != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  __swift_project_value_buffer(v31, static Logger.bridge);
  v32 = v21;
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v43 = v36;
    *v35 = 136315138;
    v42 = [v32 v22[135]];
    v37 = String.init<A>(describing:)();
    v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v38, &v43);

    *(v35 + 4) = v39;
    _os_log_impl(&dword_238A75000, v33, v34, "SuggestionVideo.getAssetLoader, Unexpected content: %s", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v36);
    MEMORY[0x23EE71510](v36, -1, -1);
    MEMORY[0x23EE71510](v35, -1, -1);
  }

  return 0;
}

uint64_t sub_238A87514()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t partial apply for closure #1 in static JournalingSuggestion.Video.getAssetLoader(for:inside:)(void (*a1)(uint64_t *, void), uint64_t a2)
{
  v5 = *(type metadata accessor for URL() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in static JournalingSuggestion.Video.getAssetLoader(for:inside:)(a1, a2, v2 + v6, v7);
}

uint64_t outlined init with copy of JournalingSuggestion.Video(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JournalingSuggestion.Video(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of JournalingSuggestion.Video(uint64_t a1)
{
  v2 = type metadata accessor for JournalingSuggestion.Video(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static JournalingSuggestionAsset.make(from:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v10[2] = a4;
  v10[3] = a5;
  v10[4] = a2;
  v10[5] = a3;

  static JournalingSuggestionAsset.make(from:completionHandler:)(a1, partial apply for closure #1 in static JournalingSuggestionAsset.make(from:completionHandler:), v10, a4, a5);
}

uint64_t closure #1 in static JournalingSuggestionAsset.make(from:completionHandler:)(uint64_t a1, void *a2, void (*a3)(uint64_t *), uint64_t a4, uint64_t a5)
{
  v33 = a1;
  v34 = a4;
  v36 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v8 = type metadata accessor for Result();
  v35 = *(v8 - 8);
  v9 = *(v35 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (v32 - v10);
  v12 = type metadata accessor for Optional();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = v32 - v16;
  v18 = *(*(a5 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v15);
  v21 = v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v24 = v32 - v23;
  if (a2)
  {
    *v11 = a2;
    swift_storeEnumTagMultiPayload();
    v25 = a2;
  }

  else
  {
    v32[1] = AssociatedTypeWitness;
    v26 = v22;
    (*(v13 + 16))(v17, v33, v12);
    if ((*(v26 + 48))(v17, 1, a5) != 1)
    {
      (*(v26 + 32))(v24, v17, a5);
      (*(v26 + 16))(v21, v24, a5);
      swift_dynamicCast();
      swift_storeEnumTagMultiPayload();
      v36(v11);
      (*(v26 + 8))(v24, a5);
      return (*(v35 + 8))(v11, v8);
    }

    (*(v13 + 8))(v17, v12);
    type metadata accessor for JournalingSuggestionsError();
    lazy protocol witness table accessor for type JournalingSuggestionsError and conformance JournalingSuggestionsError();
    v27 = swift_allocError();
    v29 = v28;
    *v28 = _typeName(_:qualified:)();
    v29[1] = v30;
    v29[2] = 0;
    v29[3] = 0;
    swift_storeEnumTagMultiPayload();
    *v11 = v27;
    swift_storeEnumTagMultiPayload();
  }

  v36(v11);
  return (*(v35 + 8))(v11, v8);
}

uint64_t sub_238A87B8C()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t static JournalingSuggestionAsset.make(from:completionHandler:)(uint64_t a1, void (*a2)(char *, void *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v34 = a5;
  v36 = a2;
  v35 = type metadata accessor for Optional();
  v8 = *(v35 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v35);
  v11 = &v33 - v10;
  v12 = type metadata accessor for JournalingSuggestionsError();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v16 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = (&v33 - v17);
  v19 = *(a1 + *(type metadata accessor for JournalingSuggestion.ItemContent(0) + 24));
  *v18 = _typeName(_:qualified:)();
  v18[1] = v20;
  v18[2] = 0;
  v18[3] = 0;
  swift_storeEnumTagMultiPayload();
  v21 = (v19 + 32);
  v22 = *(v19 + 16) + 1;
  while (--v22)
  {
    v23 = v21 + 4;
    v24 = *v21;
    v21 += 4;
    if (v24 == a4)
    {
      v26 = *(v23 - 2);
      v25 = *(v23 - 1);
      outlined init with copy of JournalingSuggestionsError(v18, v16);
      v27 = (*(v13 + 80) + 48) & ~*(v13 + 80);
      v28 = swift_allocObject();
      v29 = v34;
      v28[2] = a4;
      v28[3] = v29;
      v28[4] = v36;
      v28[5] = a3;
      outlined init with take of JournalingSuggestionsError(v16, v28 + v27);
      swift_retain_n();

      v26(partial apply for closure #2 in static JournalingSuggestionAsset.make(from:completionHandler:), v28);

      return outlined destroy of JournalingSuggestionsError(v18);
    }
  }

  (*(*(a4 - 8) + 56))(v11, 1, 1, a4);
  lazy protocol witness table accessor for type JournalingSuggestionsError and conformance JournalingSuggestionsError();
  v30 = swift_allocError();
  outlined init with copy of JournalingSuggestionsError(v18, v31);
  v36(v11, v30);

  (*(v8 + 8))(v11, v35);
  return outlined destroy of JournalingSuggestionsError(v18);
}

uint64_t closure #2 in static JournalingSuggestionAsset.make(from:completionHandler:)(uint64_t a1, void *a2, void (*a3)(char *, void *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v33 = a5;
  v34 = a1;
  v10 = type metadata accessor for Optional();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = v31 - v17;
  v19 = *(a6 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  v22 = v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    (*(v19 + 56))(v15, 1, 1, a6);
    v23 = a2;
    a3(v15, a2);

    return (*(v11 + 8))(v15, v10);
  }

  else
  {
    v31[1] = a4;
    v32 = v10;
    outlined init with copy of JournalingSuggestionAsset?(v34, v35);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s21JournalingSuggestions0A15SuggestionAsset_pSgMd, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMR);
    v25 = swift_dynamicCast();
    v26 = *(v19 + 56);
    if (v25)
    {
      v26(v18, 0, 1, a6);
      (*(v19 + 32))(v22, v18, a6);
      (*(v19 + 16))(v15, v22, a6);
      v26(v15, 0, 1, a6);
      a3(v15, 0);
      (*(v11 + 8))(v15, v32);
      return (*(v19 + 8))(v22, a6);
    }

    else
    {
      v26(v18, 1, 1, a6);
      v27 = *(v11 + 8);
      v28 = v32;
      v27(v18, v32);
      v26(v15, 1, 1, a6);
      type metadata accessor for JournalingSuggestionsError();
      lazy protocol witness table accessor for type JournalingSuggestionsError and conformance JournalingSuggestionsError();
      v29 = swift_allocError();
      outlined init with copy of JournalingSuggestionsError(v33, v30);
      a3(v15, v29);

      return (v27)(v15, v28);
    }
  }
}

uint64_t sub_238A88248()
{
  v1 = *(type metadata accessor for JournalingSuggestionsError() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 40);

  v6 = v0 + v3;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v11 = *(v6 + 8);

      v12 = *(v6 + 24);
      goto LABEL_11;
    }

    if (EnumCaseMultiPayload != 3)
    {
      goto LABEL_12;
    }

LABEL_7:
    v8 = *(v6 + 8);
LABEL_11:

    goto LABEL_12;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v0 + v3, 1, v9))
  {
    (*(v10 + 8))(v0 + v3, v9);
  }

LABEL_12:

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t outlined init with take of JournalingSuggestionsError(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JournalingSuggestionsError();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #2 in static JournalingSuggestionAsset.make(from:completionHandler:)(uint64_t a1, void *a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = *(type metadata accessor for JournalingSuggestionsError() - 8);
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2 + ((*(v7 + 80) + 48) & ~*(v7 + 80));

  return closure #2 in static JournalingSuggestionAsset.make(from:completionHandler:)(a1, a2, v8, v9, v10, v5);
}

uint64_t static JournalingSuggestionAsset.content(forItem:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](static JournalingSuggestionAsset.content(forItem:), 0, 0);
}

uint64_t static JournalingSuggestionAsset.content(forItem:)()
{
  v1 = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *(v2 + 16) = *(v0 + 32);
  *(v2 + 32) = v1;
  v3 = *(MEMORY[0x277D85A40] + 4);
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  v5 = type metadata accessor for Optional();
  *v4 = v0;
  v4[1] = static JournalingSuggestionAsset.content(forItem:);
  v6 = *(v0 + 16);

  return MEMORY[0x2822008A0](v6, 0, 0, 0xD000000000000011, 0x8000000238ADF490, partial apply for closure #1 in static JournalingSuggestionAsset.content(forItem:), v2, v5);
}

{
  v2 = *(*v1 + 56);
  v3 = *v1;
  v3[8] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](static JournalingSuggestionAsset.content(forItem:), 0, 0);
  }

  else
  {
    v4 = v3[6];

    v5 = v3[1];

    return v5();
  }
}

{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

uint64_t closure #1 in static JournalingSuggestionAsset.content(forItem:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Optional();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v8 = type metadata accessor for CheckedContinuation();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v16 - v11;
  (*(v9 + 16))(&v16 - v11, a1, v8);
  v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = a4;
  (*(v9 + 32))(v14 + v13, v12, v8);
  static JournalingSuggestionAsset.make(from:completionHandler:)(a2, partial apply for closure #1 in closure #1 in static JournalingSuggestionAsset.content(forItem:), v14, a3, a4);
}

uint64_t closure #1 in closure #1 in static JournalingSuggestionAsset.content(forItem:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v40 = a1;
  v41 = a2;
  v4 = type metadata accessor for Optional();
  v36 = *(v4 - 8);
  v5 = *(v36 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v38 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v36 - v9;
  v39 = *(a3 - 8);
  v11 = *(v39 + 64);
  MEMORY[0x28223BE20](v8);
  v37 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v14 = *(v42 + 64);
  v15 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v36 - v18;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v20 = type metadata accessor for Result();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v23 = (&v36 - v22);
  (*(v24 + 16))(&v36 - v22, v40, v20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v43 = *v23;
    type metadata accessor for CheckedContinuation();
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    v26 = v42;
    (*(v42 + 32))(v19, v23, AssociatedTypeWitness);
    (*(v26 + 16))(v17, v19, AssociatedTypeWitness);
    v27 = swift_dynamicCast();
    v28 = v39;
    v29 = *(v39 + 56);
    if (v27)
    {
      v29(v10, 0, 1, a3);
      v30 = v37;
      (*(v28 + 32))(v37, v10, a3);
      v31 = v38;
      (*(v28 + 16))(v38, v30, a3);
      v29(v31, 0, 1, a3);
      type metadata accessor for CheckedContinuation();
      CheckedContinuation.resume(returning:)();
      (*(v28 + 8))(v30, a3);
    }

    else
    {
      v29(v10, 1, 1, a3);
      (*(v36 + 8))(v10, v4);
      type metadata accessor for JournalingSuggestionsError();
      lazy protocol witness table accessor for type JournalingSuggestionsError and conformance JournalingSuggestionsError();
      v32 = swift_allocError();
      v34 = v33;
      *v33 = _typeName(_:qualified:)();
      v34[1] = v35;
      v34[2] = 0;
      v34[3] = 0;
      swift_storeEnumTagMultiPayload();
      v43 = v32;
      type metadata accessor for CheckedContinuation();
      CheckedContinuation.resume(throwing:)();
    }

    return (*(v42 + 8))(v19, AssociatedTypeWitness);
  }
}

uint64_t InternalAssetContent.providers.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t default associated conformance accessor for JournalingSuggestionAsset.JournalingSuggestionAsset.JournalingSuggestionContent: JournalingSuggestionAsset(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();

  return MEMORY[0x2821FE988](a3, a2, AssociatedTypeWitness, &protocol requirements base descriptor for JournalingSuggestionAsset, &associated conformance descriptor for JournalingSuggestionAsset.JournalingSuggestionAsset.JournalingSuggestionContent: JournalingSuggestionAsset);
}

uint64_t dispatch thunk of static InternalAssetProvider.getAssetLoader(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 24);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = static JournalingSuggestion.Workout.getAssetLoader(for:);

  return v11(a1, a2, a3);
}

uint64_t getEnumTagSinglePayload for InternalAssetContent.AssetProvider(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for InternalAssetContent.AssetProvider(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_238A8915C()
{
  v1 = *(v0 + 16);
  type metadata accessor for Optional();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v2 = type metadata accessor for CheckedContinuation();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v0 + v5, v2);

  return MEMORY[0x2821FE8E8](v0, v5 + v6, v4 | 7);
}

uint64_t partial apply for closure #1 in closure #1 in static JournalingSuggestionAsset.content(forItem:)(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  type metadata accessor for Optional();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v5 = *(type metadata accessor for CheckedContinuation() - 8);
  v6 = v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return closure #1 in closure #1 in static JournalingSuggestionAsset.content(forItem:)(a1, v6, v3);
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

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sytSgMd, &_sytSgMR);
      v23 = (v20 | v18);
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v24 = swift_task_create();

      outlined destroy of URL?(a3, &_sScPSgMd, &_sScPSgMR);

      return v24;
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
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sytSgMd, &_sytSgMR);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

id one-time initialization function for shared()
{
  result = [objc_allocWithZone(type metadata accessor for SuggestionSheetUIManager()) init];
  static SuggestionSheetUIManager.shared = result;
  return result;
}

{
  result = [objc_allocWithZone(type metadata accessor for SuggestionSheetManager()) init];
  static SuggestionSheetManager.shared = result;
  return result;
}

id SuggestionSheetUIManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t *SuggestionSheetUIManager.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return &static SuggestionSheetUIManager.shared;
}

id static SuggestionSheetUIManager.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = static SuggestionSheetUIManager.shared;

  return v1;
}

uint64_t key path setter for SuggestionSheetUIManager.journalConfiguration : SuggestionSheetUIManager(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21JournalingSuggestions20JournalConfigurationVSgMd, &_s21JournalingSuggestions20JournalConfigurationVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v9 - v6;
  outlined init with copy of URL?(a1, &v9 - v6, &_s21JournalingSuggestions20JournalConfigurationVSgMd, &_s21JournalingSuggestions20JournalConfigurationVSgMR);
  return (*((*MEMORY[0x277D85000] & **a2) + 0xD8))(v7);
}

void *SuggestionSheetUIManager.sceneSession.getter()
{
  v1 = OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_sceneSession;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void SuggestionSheetUIManager.sceneSession.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_sceneSession;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t key path setter for SuggestionSheetUIManager.currentNotificationSuggestionID : SuggestionSheetUIManager(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v9 - v6;
  outlined init with copy of URL?(a1, &v9 - v6, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  return (*((*MEMORY[0x277D85000] & **a2) + 0x108))(v7);
}

uint64_t SuggestionSheetUIManager.journalConfiguration.getter@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  swift_beginAccess();
  return outlined init with copy of URL?(v4 + v8, a4, a2, a3);
}

uint64_t SuggestionSheetUIManager.journalConfiguration.setter(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = *a2;
  swift_beginAccess();
  outlined assign with take of URL?(a1, v4 + v8, a3, a4);
  return swift_endAccess();
}

uint64_t key path setter for SuggestionSheetUIManager.pastNotificationSuggestionID : SuggestionSheetUIManager(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v9 - v6;
  outlined init with copy of URL?(a1, &v9 - v6, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  return (*((*MEMORY[0x277D85000] & **a2) + 0x120))(v7);
}

void *key path getter for SuggestionSheetUIManager.notificationSchedule : SuggestionSheetUIManager@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x130))(&v4);
  *a2 = v4;
  return result;
}

uint64_t key path setter for SuggestionSheetUIManager.notificationSchedule : SuggestionSheetUIManager(char *a1, void **a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*((*MEMORY[0x277D85000] & *v2) + 0x138))(&v4);
}

uint64_t SuggestionSheetUIManager.notificationSchedule.getter()
{
  return SuggestionSheetUIManager.notificationSchedule.getter();
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

void *sub_238A8A270@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x130))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_238A8A2E4(char *a1, void **a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*((*MEMORY[0x277D85000] & *v2) + 0x138))(&v4);
}

uint64_t SuggestionSheetUIManager.notificationSchedule.setter(char *a1)
{
  return SuggestionSheetUIManager.notificationSchedule.setter(a1);
}

{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v1;
  return static Published.subscript.setter();
}

uint64_t (*SuggestionSheetUIManager.notificationSchedule.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return SuggestionSheetUIManager.notificationAvailability.modify;
}

uint64_t key path setter for SuggestionSheetUIManager.$notificationSchedule : SuggestionSheetUIManager(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy21JournalingSuggestions0dE13ConfigurationC20NotificationScheduleOSg_GMd, &_s7Combine9PublishedV9PublisherVy21JournalingSuggestions0dE13ConfigurationC20NotificationScheduleOSg_GMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - v6;
  (*(v8 + 16))(&v10 - v6, a1);
  return (*((*MEMORY[0x277D85000] & **a2) + 0x150))(v7);
}

uint64_t SuggestionSheetUIManager.$notificationSchedule.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy21JournalingSuggestions0dE13ConfigurationC20NotificationScheduleOSg_GMd, &_s7Combine9PublishedV9PublisherVy21JournalingSuggestions0dE13ConfigurationC20NotificationScheduleOSg_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy21JournalingSuggestions0cD13ConfigurationC20NotificationScheduleOSgGMd, &_s7Combine9PublishedVy21JournalingSuggestions0cD13ConfigurationC20NotificationScheduleOSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*SuggestionSheetUIManager.$notificationSchedule.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy21JournalingSuggestions0dE13ConfigurationC20NotificationScheduleOSg_GMd, &_s7Combine9PublishedV9PublisherVy21JournalingSuggestions0dE13ConfigurationC20NotificationScheduleOSg_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager__notificationSchedule;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy21JournalingSuggestions0cD13ConfigurationC20NotificationScheduleOSgGMd, &_s7Combine9PublishedVy21JournalingSuggestions0cD13ConfigurationC20NotificationScheduleOSgGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return SuggestionSheetUIManager.$notificationAvailability.modify;
}

void *key path getter for SuggestionSheetUIManager.notificationAvailability : SuggestionSheetUIManager@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x160))(&v4);
  *a2 = v4;
  return result;
}

uint64_t key path setter for SuggestionSheetUIManager.notificationAvailability : SuggestionSheetUIManager(char *a1, void **a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*((*MEMORY[0x277D85000] & *v2) + 0x168))(&v4);
}

void *sub_238A8A950@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x160))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_238A8A9C4(char *a1, void **a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*((*MEMORY[0x277D85000] & *v2) + 0x168))(&v4);
}

uint64_t (*SuggestionSheetUIManager.notificationAvailability.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return SuggestionSheetUIManager.notificationAvailability.modify;
}

uint64_t key path setter for SuggestionSheetUIManager.$notificationAvailability : SuggestionSheetUIManager(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy21JournalingSuggestions0dE13ConfigurationC37NotificationAvailabilityStatusPrivateOSg_GMd, &_s7Combine9PublishedV9PublisherVy21JournalingSuggestions0dE13ConfigurationC37NotificationAvailabilityStatusPrivateOSg_GMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - v6;
  (*(v8 + 16))(&v10 - v6, a1);
  return (*((*MEMORY[0x277D85000] & **a2) + 0x180))(v7);
}

uint64_t SuggestionSheetUIManager.$notificationAvailability.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy21JournalingSuggestions0dE13ConfigurationC37NotificationAvailabilityStatusPrivateOSg_GMd, &_s7Combine9PublishedV9PublisherVy21JournalingSuggestions0dE13ConfigurationC37NotificationAvailabilityStatusPrivateOSg_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy21JournalingSuggestions0cD13ConfigurationC37NotificationAvailabilityStatusPrivateOSgGMd, &_s7Combine9PublishedVy21JournalingSuggestions0cD13ConfigurationC37NotificationAvailabilityStatusPrivateOSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*SuggestionSheetUIManager.$notificationAvailability.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy21JournalingSuggestions0dE13ConfigurationC37NotificationAvailabilityStatusPrivateOSg_GMd, &_s7Combine9PublishedV9PublisherVy21JournalingSuggestions0dE13ConfigurationC37NotificationAvailabilityStatusPrivateOSg_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager__notificationAvailability;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy21JournalingSuggestions0cD13ConfigurationC37NotificationAvailabilityStatusPrivateOSgGMd, &_s7Combine9PublishedVy21JournalingSuggestions0cD13ConfigurationC37NotificationAvailabilityStatusPrivateOSgGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return SuggestionSheetUIManager.$notificationAvailability.modify;
}

uint64_t key path setter for SuggestionSheetUIManager.connectionUUID : SuggestionSheetUIManager(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v9 - v6;
  outlined init with copy of URL?(a1, &v9 - v6, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  return (*((*MEMORY[0x277D85000] & **a2) + 0x198))(v7);
}

uint64_t SuggestionSheetUIManager.connectionUUID.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t SuggestionSheetUIManager.connectionUUID.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v9 - v5;
  swift_getKeyPath();
  swift_getKeyPath();
  outlined init with copy of URL?(a1, v6, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v7 = v1;
  static Published.subscript.setter();
  return outlined destroy of URL?(a1, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
}

uint64_t (*SuggestionSheetUIManager.connectionUUID.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return SuggestionSheetUIManager.connectionUUID.modify;
}

uint64_t key path setter for SuggestionSheetUIManager.$connectionUUID : SuggestionSheetUIManager(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy10Foundation4UUIDVSg_GMd, &_s7Combine9PublishedV9PublisherVy10Foundation4UUIDVSg_GMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - v6;
  (*(v8 + 16))(&v10 - v6, a1);
  return (*((*MEMORY[0x277D85000] & **a2) + 0x1B0))(v7);
}

uint64_t SuggestionSheetUIManager.$connectionUUID.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy10Foundation4UUIDVSg_GMd, &_s7Combine9PublishedV9PublisherVy10Foundation4UUIDVSg_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10Foundation4UUIDVSgGMd, &_s7Combine9PublishedVy10Foundation4UUIDVSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*SuggestionSheetUIManager.$connectionUUID.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy10Foundation4UUIDVSg_GMd, &_s7Combine9PublishedV9PublisherVy10Foundation4UUIDVSg_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager__connectionUUID;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10Foundation4UUIDVSgGMd, &_s7Combine9PublishedVy10Foundation4UUIDVSgGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return SuggestionSheetUIManager.$connectionUUID.modify;
}

uint64_t key path getter for SuggestionSheetUIManager.shouldRequestEmbeddedScene : SuggestionSheetUIManager@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x1C0))();
  *a2 = result & 1;
  return result;
}

uint64_t SuggestionSheetUIManager.shouldRequestEmbeddedScene.getter()
{
  return SuggestionSheetUIManager.shouldRequestEmbeddedScene.getter();
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_238A8B7A4@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x1C0))();
  *a2 = result & 1;
  return result;
}

uint64_t SuggestionSheetUIManager.shouldRequestEmbeddedScene.setter()
{
  return SuggestionSheetUIManager.shouldRequestEmbeddedScene.setter();
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return static Published.subscript.setter();
}

uint64_t (*SuggestionSheetUIManager.shouldRequestEmbeddedScene.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return SuggestionSheetUIManager.notificationAvailability.modify;
}

uint64_t key path setter for SuggestionSheetUIManager.$shouldRequestEmbeddedScene : SuggestionSheetUIManager(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - v6;
  (*(v8 + 16))(&v10 - v6, a1);
  return (*((*MEMORY[0x277D85000] & **a2) + 0x1E0))(v7);
}

uint64_t SuggestionSheetUIManager.$shouldRequestEmbeddedScene.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*SuggestionSheetUIManager.$shouldRequestEmbeddedScene.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager__shouldRequestEmbeddedScene;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return SuggestionSheetUIManager.$notificationAvailability.modify;
}

uint64_t key path getter for SuggestionSheetUIManager.shouldKeepSceneActive : SuggestionSheetUIManager@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x1F0))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_238A8BE48@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x1F0))();
  *a2 = result & 1;
  return result;
}

uint64_t (*SuggestionSheetUIManager.shouldKeepSceneActive.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return SuggestionSheetUIManager.notificationAvailability.modify;
}

void SuggestionSheetUIManager.notificationSchedule.modify(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = *(*a1 + 32);
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t key path setter for SuggestionSheetUIManager.$shouldKeepSceneActive : SuggestionSheetUIManager(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - v6;
  (*(v8 + 16))(&v10 - v6, a1);
  return (*((*MEMORY[0x277D85000] & **a2) + 0x210))(v7);
}

uint64_t SuggestionSheetUIManager.$notificationSchedule.getter(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a1;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t SuggestionSheetUIManager.$shouldKeepSceneActive.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*SuggestionSheetUIManager.$shouldKeepSceneActive.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager__shouldKeepSceneActive;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return SuggestionSheetUIManager.$notificationAvailability.modify;
}

void SuggestionSheetUIManager.$notificationSchedule.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[16];
  v6 = v3[13];
  v13 = v3[14];
  v8 = v3[11];
  v7 = v3[12];
  v10 = v3[9];
  v9 = v3[10];
  if (a2)
  {
    v4(v3[12], v6, v3[10]);
    swift_beginAccess();
    Published.projectedValue.setter();
    swift_endAccess();
    v11 = *(v8 + 8);
    v11(v6, v9);
    v12 = v13;
    v11(v13, v9);
  }

  else
  {
    swift_beginAccess();
    Published.projectedValue.setter();
    swift_endAccess();
    v12 = v13;
    (*(v8 + 8))(v13, v9);
  }

  free(v12);
  free(v6);
  free(v7);

  free(v3);
}

uint64_t SuggestionSheetUIManager.peekDetent.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21JournalingSuggestions20JournalConfigurationVSgMd, &_s21JournalingSuggestions20JournalConfigurationVSgMR);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v5 = (&v9 - v4);
  (*((*MEMORY[0x277D85000] & *v0) + 0xD0))(v3);
  v6 = type metadata accessor for JournalConfiguration(0);
  if (!(*(*(v6 - 8) + 48))(v5, 1, v6))
  {
    v8 = *v5;
  }

  return outlined destroy of URL?(v5, &_s21JournalingSuggestions20JournalConfigurationVSgMd, &_s21JournalingSuggestions20JournalConfigurationVSgMR);
}

id SuggestionSheetUIManager.presentationOptions.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v35 - v4;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21JournalingSuggestions20JournalConfigurationVSgMd, &_s21JournalingSuggestions20JournalConfigurationVSgMR);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v36 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v35 - v15;
  v17 = [objc_allocWithZone(type metadata accessor for SuggestionSheetPresenterOptions()) init];
  v18 = MEMORY[0x277D85000];
  v19 = *((*MEMORY[0x277D85000] & *v0) + 0xD0);
  v39 = (*MEMORY[0x277D85000] & *v0) + 208;
  v40 = v19;
  v19();
  v20 = type metadata accessor for JournalConfiguration(0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 48);
  v37 = v21 + 48;
  v38 = v22;
  if (v22(v16, 1, v20) || (v23 = *(v20 + 24), (*(v7 + 48))(&v16[v23], 1, v6)))
  {
    v24 = outlined destroy of URL?(v16, &_s21JournalingSuggestions20JournalConfigurationVSgMd, &_s21JournalingSuggestions20JournalConfigurationVSgMR);
    (*((*v18 & *v1) + 0x100))(v24);
    if ((*(v7 + 48))(v5, 1, v6))
    {
      v25 = outlined destroy of URL?(v5, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v26 = 0;
      goto LABEL_8;
    }

    (*(v7 + 16))(v10, v5, v6);
    v27 = &_s10Foundation4UUIDVSgMd;
    v28 = &_s10Foundation4UUIDVSgMR;
    v29 = v5;
  }

  else
  {
    (*(v7 + 16))(v10, &v16[v23], v6);
    v27 = &_s21JournalingSuggestions20JournalConfigurationVSgMd;
    v28 = &_s21JournalingSuggestions20JournalConfigurationVSgMR;
    v29 = v16;
  }

  outlined destroy of URL?(v29, v27, v28);
  UUID.uuidString.getter();
  v26 = v30;
  v25 = (*(v7 + 8))(v10, v6);
LABEL_8:
  (*((*MEMORY[0x277D85000] & *v1) + 0x238))(v25);
  v31 = dispatch thunk of SuggestionSheetPresenterOptions.fractionalPresentation.setter();
  if (!v26)
  {
    v32 = v36;
    (v40)(v31);
    if (!v38(v32, 1, v20))
    {
      v33 = *(v32 + 8);
    }

    outlined destroy of URL?(v32, &_s21JournalingSuggestions20JournalConfigurationVSgMd, &_s21JournalingSuggestions20JournalConfigurationVSgMR);
  }

  dispatch thunk of SuggestionSheetPresenterOptions.presentFullScreen.setter();
  dispatch thunk of SuggestionSheetPresenterOptions.selectedSuggestionID.setter();
  specialized static SuggestionSheetUIManager.getClientPlatformVersion()();
  dispatch thunk of SuggestionSheetPresenterOptions.allowEvergreen.setter();
  return v17;
}

uint64_t SuggestionSheetUIManager.servicePickerViewState()()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v14 = *(v1 - 8);
  v2 = *(v14 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v5 = *(v13 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v13);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v0 + OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_pickerQueue);
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = partial apply for closure #1 in SuggestionSheetUIManager.servicePickerViewState();
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_169;
  v10 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v15 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x23EE709F0](0, v8, v4, v10);
  _Block_release(v10);
  (*(v14 + 8))(v4, v1);
  (*(v5 + 8))(v8, v13);
}

void closure #1 in SuggestionSheetUIManager.servicePickerViewState()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v85 - v2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(Strong + OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_presenterServerConnection);
    if (!v6)
    {
LABEL_48:

      return;
    }

    v88 = OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_presenterServerConnection;
    v7 = OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_presentationLock;
    v8 = *(Strong + OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_presentationLock);
    v9 = v6;
    [v8 lock];
    v10 = &v5[OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_targetViewState];
    v11 = *&v5[OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_targetViewState];
    v12 = v5[OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_targetViewState + 8];
    v13 = &v5[OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_viewState];
    v14 = v5[OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_viewState + 8];
    if (v12)
    {
      if ((v5[OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_viewState + 8] & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    else if ((v5[OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_viewState + 8] & 1) != 0 || (v15 = *v13, v16 = *&v5[OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_targetViewState], v17 = SuggestionSheetViewState.rawValue.getter(), v17 != SuggestionSheetViewState.rawValue.getter()))
    {
LABEL_9:
      [*&v5[v7] unlock];
      if (one-time initialization token for bridge != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      v19 = __swift_project_value_buffer(v18, static Logger.bridge);
      v20 = v5;
      v89 = v19;
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v86 = v3;
        v87 = v9;
        v23 = swift_slowAlloc();
        *v23 = 134218496;
        if (v12)
        {
          v24 = 0;
        }

        else
        {
          v24 = SuggestionSheetViewState.rawValue.getter();
        }

        *(v23 + 4) = v24;
        *(v23 + 12) = 2048;
        if (v10[8])
        {
          v54 = 99;
        }

        else
        {
          v55 = *v10;
          v54 = SuggestionSheetViewState.rawValue.getter();
        }

        *(v23 + 14) = v54;
        *(v23 + 22) = 2048;
        if (v13[8])
        {
          v56 = 99;
        }

        else
        {
          v57 = *v13;
          v56 = SuggestionSheetViewState.rawValue.getter();
        }

        *(v23 + 24) = v56;

        _os_log_impl(&dword_238A75000, v21, v22, "servicePickerViewState, target, %ld, targetView, %ld, view, %ld", v23, 0x20u);
        MEMORY[0x23EE71510](v23, -1, -1);
        v3 = v86;
        v9 = v87;

        if (v12)
        {
LABEL_34:
          v58 = Logger.logObject.getter();
          v59 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v58, v59))
          {
            v60 = swift_slowAlloc();
            *v60 = 0;
            v61 = "nil targetViewState, ignoring update";
LABEL_45:
            v81 = v59;
            v82 = v58;
            v83 = v60;
            v84 = 2;
            goto LABEL_46;
          }

          goto LABEL_47;
        }
      }

      else
      {

        if (v12)
        {
          goto LABEL_34;
        }
      }

      v25 = *v10;
      v26 = v10[8];
      v27 = &v20[OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_transitionViewState];
      *v27 = v25;
      v27[8] = v26;
      if (((v13[8] & 1) != 0 || (v28 = *v13, v29 = SuggestionSheetViewState.rawValue.getter(), v29 == SuggestionSheetViewState.rawValue.getter())) && ((v30 = SuggestionSheetViewState.rawValue.getter(), v30 == SuggestionSheetViewState.rawValue.getter()) || (v31 = SuggestionSheetViewState.rawValue.getter(), v31 == SuggestionSheetViewState.rawValue.getter())))
      {
        v32 = Logger.logObject.getter();
        v33 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v32, v33))
        {
          v34 = v9;
          v35 = swift_slowAlloc();
          *v35 = 0;
          _os_log_impl(&dword_238A75000, v32, v33, "Requesting picker", v35, 2u);
          v36 = v35;
          v9 = v34;
          MEMORY[0x23EE71510](v36, -1, -1);
        }

        v37 = MEMORY[0x277D85000];
        v38 = (*((*MEMORY[0x277D85000] & *v20) + 0xE8))();
        if (!v38 || (v39 = v38, v40 = [v38 scene], v39, !v40))
        {
          v58 = Logger.logObject.getter();
          v59 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v58, v59))
          {
            v60 = swift_slowAlloc();
            *v60 = 0;
            v61 = "nil target scene";
            goto LABEL_45;
          }

LABEL_47:

          v5 = v9;
          goto LABEL_48;
        }

        v41 = v9;
        v42 = [v40 _FBSScene];
        v43 = [v42 identityToken];

        v44 = *&v5[v88];
        if (v44)
        {
          v45 = *((*v37 & *v20) + 0x240);
          v46 = v44;
          v47 = v43;
          v48 = v45();
          [v46 requestPresentationFor:v47 with:v48];
        }

        v49 = type metadata accessor for TaskPriority();
        (*(*(v49 - 8) + 56))(v3, 1, 1, v49);
        v50 = swift_allocObject();
        swift_unknownObjectWeakInit();
        type metadata accessor for MainActor();

        v51 = static MainActor.shared.getter();
        v52 = swift_allocObject();
        v53 = MEMORY[0x277D85700];
        v52[2] = v51;
        v52[3] = v53;
        v52[4] = v50;

        _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5(0, 0, v3, &async function pointer to partial apply for closure #1 in closure #1 in SuggestionSheetUIManager.servicePickerViewState(), v52);

        v9 = v41;
      }

      else
      {
        v62 = Logger.logObject.getter();
        v63 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v62, v63))
        {
          v64 = v20;
          v65 = v9;
          v66 = swift_slowAlloc();
          *v66 = 0;
          _os_log_impl(&dword_238A75000, v62, v63, "Posting picker state update: .dismissed", v66, 2u);
          v67 = v66;
          v9 = v65;
          v20 = v64;
          MEMORY[0x23EE71510](v67, -1, -1);
        }

        v68 = *&v5[v88];
        if (v68)
        {
          v69 = v20;
          v70 = *((*MEMORY[0x277D85000] & *v20) + 0x240);
          v71 = v68;
          v72 = v70();
          v20 = v69;
          v73 = v72;
          dispatch thunk of SuggestionSheetPresenterOptions.presentationIsAnimated.getter();

          isa = Bool._bridgeToObjectiveC()().super.super.isa;
          [v71 updatePickerWith:0 animated:isa];
        }

        v75 = type metadata accessor for TaskPriority();
        (*(*(v75 - 8) + 56))(v3, 1, 1, v75);
        v76 = swift_allocObject();
        swift_unknownObjectWeakInit();
        type metadata accessor for MainActor();

        v77 = static MainActor.shared.getter();
        v78 = swift_allocObject();
        v79 = MEMORY[0x277D85700];
        v78[2] = v77;
        v78[3] = v79;
        v78[4] = v76;

        _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5(0, 0, v3, &async function pointer to partial apply for closure #2 in closure #1 in SuggestionSheetUIManager.servicePickerViewState(), v78);

        *v27 = 0;
        v27[8] = 1;
      }

      v58 = Logger.logObject.getter();
      v80 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v58, v80))
      {
        v60 = swift_slowAlloc();
        *v60 = 134217984;
        *(v60 + 4) = SuggestionSheetViewState.rawValue.getter();
        v61 = "Expecting transition to %ld";
        v81 = v80;
        v82 = v58;
        v83 = v60;
        v84 = 12;
LABEL_46:
        _os_log_impl(&dword_238A75000, v82, v81, v61, v83, v84);
        MEMORY[0x23EE71510](v60, -1, -1);
        goto LABEL_47;
      }

      goto LABEL_47;
    }

    *v10 = 0;
    v10[8] = 1;
    goto LABEL_9;
  }
}

uint64_t closure #1 in closure #1 in SuggestionSheetUIManager.servicePickerViewState()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  type metadata accessor for MainActor();
  v4[7] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in closure #1 in SuggestionSheetUIManager.servicePickerViewState(), v6, v5);
}

uint64_t closure #1 in closure #1 in SuggestionSheetUIManager.servicePickerViewState()()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v4 = Strong;
  if (Strong)
  {
    (*((*MEMORY[0x277D85000] & *Strong) + 0x1C8))(1);
  }

  **(v0 + 40) = v4 == 0;
  v5 = *(v0 + 8);

  return v5();
}

uint64_t closure #2 in closure #1 in SuggestionSheetUIManager.servicePickerViewState()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  type metadata accessor for MainActor();
  v4[7] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #2 in closure #1 in SuggestionSheetUIManager.servicePickerViewState(), v6, v5);
}

uint64_t closure #2 in closure #1 in SuggestionSheetUIManager.servicePickerViewState()()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v4 = Strong;
  if (Strong)
  {
    (*((*MEMORY[0x277D85000] & *Strong) + 0x1C8))(0);
  }

  **(v0 + 40) = v4 == 0;
  v5 = *(v0 + 8);

  return v5();
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable () -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

Swift::Bool __swiftcall SuggestionSheetUIManager.activate()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_presenterServerConnection))
  {
    if (one-time initialization token for bridge != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.bridge);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_238A75000, v13, v14, "presenterServerConnection is already established, sync container view state", v15, 2u);
      MEMORY[0x23EE71510](v15, -1, -1);
    }

    v16 = (v1 + OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_viewState);
    if (*(v1 + OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_viewState + 8))
    {
      return 0;
    }

    v20 = *v16;
    v21 = SuggestionSheetViewState.rawValue.getter();
    if (v21 == SuggestionSheetViewState.rawValue.getter())
    {
      return 1;
    }

    else
    {
      if (v16[1])
      {
        return 0;
      }

      v22 = *v16;
      v23 = SuggestionSheetViewState.rawValue.getter();
      return v23 == SuggestionSheetViewState.rawValue.getter();
    }
  }

  else
  {
    v24[1] = *(v1 + OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_pickerQueue);
    v25 = v9;
    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = partial apply for closure #1 in SuggestionSheetUIManager.activate();
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_0;
    v24[0] = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v26 = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v19 = v24[0];
    MEMORY[0x23EE709F0](0, v11, v6, v24[0]);
    _Block_release(v19);
    (*(v3 + 8))(v6, v2);
    (*(v25 + 8))(v11, v7);

    return 0;
  }
}

void closure #1 in SuggestionSheetUIManager.activate()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_presenterServerConnection;
    if (!*(Strong + OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_presenterServerConnection))
    {
      if (one-time initialization token for bridge != -1)
      {
        swift_once();
      }

      v3 = type metadata accessor for Logger();
      __swift_project_value_buffer(v3, static Logger.bridge);
      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        _os_log_impl(&dword_238A75000, v4, v5, "Activating JournalingSuggestionsPicker", v6, 2u);
        MEMORY[0x23EE71510](v6, -1, -1);
      }

      v7 = [objc_allocWithZone(type metadata accessor for PresenterServerConnection()) init];
      v8 = v1;
      dispatch thunk of PresenterServerConnection.presenterDelegate.setter();
      v9 = *&v1[v2];
      *&v1[v2] = v7;
      v1 = v7;

      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&dword_238A75000, v10, v11, "Activated JournalingSuggestionsPicker", v12, 2u);
        MEMORY[0x23EE71510](v12, -1, -1);
      }
    }
  }
}

uint64_t SuggestionSheetUIManager.show(token:suggestionID:onCompletion:onDismiss:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v40 = a5;
  v41 = a6;
  v38 = a3;
  v39 = a4;
  v36[0] = a1;
  v44 = type metadata accessor for DispatchWorkItemFlags();
  v46 = *(v44 - 8);
  v8 = *(v46 + 64);
  MEMORY[0x28223BE20](v44);
  v42 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for DispatchQoS();
  v43 = *(v45 - 8);
  v10 = *(v43 + 64);
  MEMORY[0x28223BE20](v45);
  v37 = v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v16 = v36 - v15;
  v17 = type metadata accessor for UUID();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v21 = v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*((*MEMORY[0x277D85000] & *v6) + 0x2D8))(v20);
  v36[1] = *(v6 + OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_pickerQueue);
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v18 + 16))(v21, v36[0], v17);
  outlined init with copy of URL?(a2, v16, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v23 = (*(v18 + 80) + 24) & ~*(v18 + 80);
  v24 = (v19 + *(v13 + 80) + v23) & ~*(v13 + 80);
  v25 = (v14 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  *(v26 + 16) = v22;
  (*(v18 + 32))(v26 + v23, v21, v17);
  outlined init with take of UUID?(v16, v26 + v24, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v27 = (v26 + v25);
  v28 = v39;
  *v27 = v38;
  v27[1] = v28;
  v29 = (v26 + ((v25 + 23) & 0xFFFFFFFFFFFFFFF8));
  v30 = v41;
  *v29 = v40;
  v29[1] = v30;
  aBlock[4] = partial apply for closure #1 in SuggestionSheetUIManager.show(token:suggestionID:onCompletion:onDismiss:);
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_37;
  v31 = _Block_copy(aBlock);

  v32 = v37;
  static DispatchQoS.unspecified.getter();
  v47 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  v33 = v42;
  v34 = v44;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x23EE709F0](0, v32, v33, v31);
  _Block_release(v31);
  (*(v46 + 8))(v33, v34);
  (*(v43 + 8))(v32, v45);
}

void closure #1 in SuggestionSheetUIManager.show(token:suggestionID:onCompletion:onDismiss:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    (*((*MEMORY[0x277D85000] & *Strong) + 0x2E8))(a2, a3, a4, a5, a6, a7);
  }
}

uint64_t SuggestionSheetUIManager._show(token:suggestionID:onCompletion:onDismiss:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v117 = a2;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = v105 - v15;
  v118 = type metadata accessor for UUID();
  v120 = *(v118 - 8);
  v17 = *(v120 + 64);
  MEMORY[0x28223BE20](v118);
  v108 = v105 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  v19 = *(*(v113 - 8) + 64);
  MEMORY[0x28223BE20](v113);
  v114 = v105 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v107 = v105 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v27 = v105 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v109 = v105 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v115 = v105 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v116 = v105 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v36 = v105 - v35;
  MEMORY[0x28223BE20](v34);
  v38 = v105 - v37;
  v39 = swift_allocObject();
  *(v39 + 16) = a5;
  *(v39 + 24) = a6;
  v40 = *(v7 + OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_presenterServerConnection);
  v119 = v39;
  if (v40)
  {
    v106 = v27;
    v41 = v39;
    v110 = OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_presentationLock;
    v42 = *(v7 + OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_presentationLock);

    [v42 lock];
    v43 = OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_trackingTokens;
    swift_beginAccess();

    v44 = *(v7 + v43);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v121 = *(v7 + v43);
    *(v7 + v43) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a3, a4, partial apply for closure #1 in SuggestionSheetUIManager._show(token:suggestionID:onCompletion:onDismiss:), v41, a1, isUniquelyReferenced_nonNull_native, &_ss18_DictionaryStorageCy10Foundation4UUIDV21JournalingSuggestions24SuggestionSheetUIManagerC16TrackingHandlers33_2809B6256945CDF43DF9E9436E3E5BB3LLVGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV21JournalingSuggestions24SuggestionSheetUIManagerC16TrackingHandlers33_2809B6256945CDF43DF9E9436E3E5BB3LLVGMR);
    *(v7 + v43) = v121;
    swift_endAccess();
    if (one-time initialization token for bridge != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    v47 = __swift_project_value_buffer(v46, static Logger.bridge);
    v48 = v117;
    outlined init with copy of URL?(v117, v38, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v105[1] = v47;
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.info.getter();
    v51 = os_log_type_enabled(v49, v50);
    v52 = v120;
    if (v51)
    {
      v53 = swift_slowAlloc();
      v105[0] = swift_slowAlloc();
      v122[0] = v105[0];
      *v53 = 136315138;
      outlined init with copy of URL?(v38, v36, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v111 = *(v52 + 48);
      v112 = (v52 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
      v54 = v52;
      v55 = v118;
      if (v111(v36, 1, v118) == 1)
      {
        v56 = 1701736302;
        outlined destroy of URL?(v36, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        v57 = 0xE400000000000000;
      }

      else
      {
        v56 = UUID.uuidString.getter();
        v57 = v69;
        (*(v54 + 8))(v36, v55);
      }

      outlined destroy of URL?(v38, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v70 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v57, v122);

      *(v53 + 4) = v70;
      _os_log_impl(&dword_238A75000, v49, v50, "Notification suggestionID: %s", v53, 0xCu);
      v71 = v105[0];
      __swift_destroy_boxed_opaque_existential_1(v105[0]);
      MEMORY[0x23EE71510](v71, -1, -1);
      MEMORY[0x23EE71510](v53, -1, -1);

      v52 = v120;
      v48 = v117;
      v67 = v111;
      v68 = v112;
    }

    else
    {

      outlined destroy of URL?(v38, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v67 = *(v52 + 48);
      v68 = (v52 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    }

    v72 = v118;
    v73 = v67(v48, 1, v118);
    v74 = v115;
    if (v73 == 1)
    {
      v75 = v116;
      (*(v52 + 56))(v116, 1, 1, v72);
      (*((*MEMORY[0x277D85000] & *v7) + 0x108))(v75);
      v76 = v110;
      goto LABEL_32;
    }

    v77 = *((*MEMORY[0x277D85000] & *v7) + 0x118);
    v111 = v67;
    v77();
    v78 = *(v113 + 48);
    v112 = v68;
    v79 = v114;
    outlined init with copy of URL?(v48, v114, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v80 = v111;
    outlined init with copy of URL?(v74, v79 + v78, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if (v80(v79, 1, v72) == 1)
    {
      outlined destroy of URL?(v74, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      if (v80(v79 + v78, 1, v72) == 1)
      {
        outlined destroy of URL?(v79, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
LABEL_25:
        v88 = v48;
        v89 = v106;
        outlined init with copy of URL?(v88, v106, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        v90 = Logger.logObject.getter();
        v91 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v90, v91))
        {
          v92 = swift_slowAlloc();
          v93 = swift_slowAlloc();
          v122[0] = v93;
          *v92 = 136315138;
          v94 = v89;
          v95 = v107;
          outlined init with copy of URL?(v94, v107, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          if (v111(v95, 1, v72) == 1)
          {
            v96 = 1701736302;
            outlined destroy of URL?(v95, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
            v97 = 0xE400000000000000;
          }

          else
          {
            v96 = UUID.uuidString.getter();
            v97 = v98;
            (*(v120 + 8))(v95, v72);
          }

          v76 = v110;
          outlined destroy of URL?(v106, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          v99 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v96, v97, v122);

          *(v92 + 4) = v99;
          _os_log_impl(&dword_238A75000, v90, v91, "Notification suggestionID: %s matches past ID, ignoring...", v92, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v93);
          MEMORY[0x23EE71510](v93, -1, -1);
          MEMORY[0x23EE71510](v92, -1, -1);

          v52 = v120;
        }

        else
        {

          outlined destroy of URL?(v89, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          v76 = v110;
        }

        v100 = v116;
        (*(v52 + 56))(v116, 1, 1, v72);
        (*((*MEMORY[0x277D85000] & *v7) + 0x108))(v100);
        goto LABEL_32;
      }
    }

    else
    {
      v81 = v109;
      outlined init with copy of URL?(v79, v109, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      if (v80(v79 + v78, 1, v72) != 1)
      {
        v84 = v79 + v78;
        v85 = v108;
        (*(v52 + 32))(v108, v84, v72);
        lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
        LODWORD(v117) = dispatch thunk of static Equatable.== infix(_:_:)();
        v86 = v74;
        v87 = *(v52 + 8);
        v87(v85, v72);
        outlined destroy of URL?(v86, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        v87(v81, v72);
        outlined destroy of URL?(v79, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        if (v117)
        {
          goto LABEL_25;
        }

LABEL_23:
        v82 = v116;
        outlined init with copy of URL?(v48, v116, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        v83 = MEMORY[0x277D85000];
        (*((*MEMORY[0x277D85000] & *v7) + 0x108))(v82);
        outlined init with copy of URL?(v48, v82, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        (*((*v83 & *v7) + 0x120))(v82);
        v76 = v110;
LABEL_32:
        [*(v7 + v76) unlock];
        [*(v7 + v76) lock];
        v101 = v7 + OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_targetViewState;
        if ((*(v7 + OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_targetViewState + 8) & 1) != 0 || (v102 = *v101, v103 = SuggestionSheetViewState.rawValue.getter(), v103 != SuggestionSheetViewState.rawValue.getter()))
        {
          *v101 = 2;
          v101[8] = 0;
        }

        [*(v7 + v76) unlock];
        SuggestionSheetUIManager.servicePickerViewState()();
      }

      outlined destroy of URL?(v74, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      (*(v52 + 8))(v81, v72);
    }

    outlined destroy of URL?(v79, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
    goto LABEL_23;
  }

  v58 = one-time initialization token for bridge;

  if (v58 != -1)
  {
    swift_once();
  }

  v59 = type metadata accessor for Logger();
  __swift_project_value_buffer(v59, static Logger.bridge);
  v60 = Logger.logObject.getter();
  v61 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    *v62 = 0;
    _os_log_impl(&dword_238A75000, v60, v61, "Can't show suggestions picker, not activated", v62, 2u);
    MEMORY[0x23EE71510](v62, -1, -1);
  }

  v63 = type metadata accessor for TaskPriority();
  (*(*(v63 - 8) + 56))(v16, 1, 1, v63);
  type metadata accessor for MainActor();

  v64 = static MainActor.shared.getter();
  v65 = swift_allocObject();
  v66 = MEMORY[0x277D85700];
  v65[2] = v64;
  v65[3] = v66;
  v65[4] = a5;
  v65[5] = a6;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v16, &async function pointer to partial apply for closure #1 in closure #1 in SuggestionSheetUIManager._show(token:suggestionID:onCompletion:onDismiss:), v65);
}

uint64_t closure #1 in SuggestionSheetUIManager._show(token:suggestionID:onCompletion:onDismiss:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  type metadata accessor for MainActor();

  v9 = static MainActor.shared.getter();
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = a1;
  v10[5] = a2;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v7, &closure #1 in closure #1 in SuggestionSheetUIManager._show(token:suggestionID:onCompletion:onDismiss:)partial apply, v10);
}

uint64_t closure #1 in closure #1 in SuggestionSheetUIManager._show(token:suggestionID:onCompletion:onDismiss:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for MainActor();
  v5[4] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in closure #1 in SuggestionSheetUIManager._show(token:suggestionID:onCompletion:onDismiss:), v7, v6);
}

uint64_t closure #1 in closure #1 in SuggestionSheetUIManager._show(token:suggestionID:onCompletion:onDismiss:)()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];

  v3(v4);
  v5 = v0[1];

  return v5();
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7)
{
  v10 = v7;
  if (a1)
  {
    v16 = *v7;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v37 = *v7;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, a4, a5, isUniquelyReferenced_nonNull_native, a6, a7);
    v18 = type metadata accessor for UUID();
    result = (*(*(v18 - 8) + 8))(a5, v18);
    *v7 = v37;
  }

  else
  {
    v20 = *v7;
    v21 = specialized __RawDictionaryStorage.find<A>(_:)(a5);
    if (v22)
    {
      v23 = v21;
      v24 = *v10;
      v25 = swift_isUniquelyReferenced_nonNull_native();
      v26 = *v10;
      v38 = *v10;
      if (!v25)
      {
        specialized _NativeDictionary.copy()(a6, a7);
        v26 = v38;
      }

      v27 = *(v26 + 48);
      v28 = type metadata accessor for UUID();
      v29 = *(v28 - 8);
      v30 = *(v29 + 8);
      v31 = v23;
      v30(v27 + *(v29 + 72) * v23, v28);
      v32 = *(v26 + 56) + 32 * v23;
      v33 = *(v32 + 8);
      v34 = *(v32 + 24);

      specialized _NativeDictionary._delete(at:)(v31, v26);
      result = (v30)(a5, v28);
      *v10 = v26;
    }

    else
    {
      v35 = type metadata accessor for UUID();
      v36 = *(*(v35 - 8) + 8);

      return v36(a5, v35);
    }
  }

  return result;
}

Swift::Void __swiftcall SuggestionSheetUIManager.setNotificationScheduleConfiguration()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v19 = *(v2 - 8);
  v3 = *(v19 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v17 = *(v6 - 8);
  v18 = v6;
  v7 = *(v17 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for bridge != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.bridge);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_238A75000, v11, v12, "Beginning initialization of notification schedule config", v13, 2u);
    MEMORY[0x23EE71510](v13, -1, -1);
  }

  (*((*MEMORY[0x277D85000] & *v1) + 0x2D8))();
  v14 = *(v1 + OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_pickerQueue);
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = partial apply for closure #1 in SuggestionSheetUIManager.setNotificationScheduleConfiguration();
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_48;
  v16 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v20 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x23EE709F0](0, v9, v5, v16);
  _Block_release(v16);
  (*(v19 + 8))(v5, v2);
  (*(v17 + 8))(v9, v18);
}

void closure #1 in SuggestionSheetUIManager.setNotificationScheduleConfiguration()(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16 - v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v7 = *(Strong + OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_presenterServerConnection), v8 = Strong, v9 = v7, v8, v7))
  {
    v10 = type metadata accessor for TaskPriority();
    (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
    v11 = swift_allocObject();
    v11[2] = 0;
    v11[3] = 0;
    v11[4] = v9;
    v11[5] = a1;

    _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v5, &async function pointer to partial apply for closure #1 in closure #1 in SuggestionSheetUIManager.setNotificationScheduleConfiguration(), v11);
  }

  else
  {
    if (one-time initialization token for bridge != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.bridge);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_238A75000, v13, v14, "PresenterServerConnection is nil, unable to retrieve notification schedule type", v15, 2u);
      MEMORY[0x23EE71510](v15, -1, -1);
    }
  }
}

uint64_t closure #1 in closure #1 in SuggestionSheetUIManager.setNotificationScheduleConfiguration()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[20] = a4;
  v5[21] = a5;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v5[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in closure #1 in SuggestionSheetUIManager.setNotificationScheduleConfiguration(), 0, 0);
}

uint64_t closure #1 in closure #1 in SuggestionSheetUIManager.setNotificationScheduleConfiguration()()
{
  v1 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = closure #1 in closure #1 in SuggestionSheetUIManager.setNotificationScheduleConfiguration();
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySi_Sits5Error_pGMd, &_sSccySi_Sits5Error_pGMR);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) (@unowned Int, @unowned Int, @unowned NSError?) -> () with result type (Int, Int);
  v0[13] = &block_descriptor_160;
  v0[14] = v2;
  [v1 retrieveNotificationConfigurationWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 184) = v2;
  if (v2)
  {
    v3 = closure #1 in closure #1 in SuggestionSheetUIManager.setNotificationScheduleConfiguration();
  }

  else
  {
    v3 = closure #1 in closure #1 in SuggestionSheetUIManager.setNotificationScheduleConfiguration();
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[18];
  v4 = v0[19];
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v1, 1, 1, v5);
  type metadata accessor for MainActor();

  v6 = static MainActor.shared.getter();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v3;
  v7[5] = v2;
  v7[6] = v4;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v1, &async function pointer to partial apply for closure #1 in closure #1 in closure #1 in SuggestionSheetUIManager.setNotificationScheduleConfiguration(), v7);

  v9 = v0[1];

  return v9();
}

{
  v1 = v0[22];
  v2 = v0[23];
  swift_willThrow();

  v3 = v0[1];
  v4 = v0[23];

  return v3();
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) (@unowned Int, @unowned Int, @unowned NSError?) -> () with result type (Int, Int)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v8 = swift_allocError();
    *v9 = a4;
    v10 = a4;

    return MEMORY[0x282200958](v7, v8);
  }

  else
  {
    v11 = *(*(v7 + 64) + 40);
    *v11 = a2;
    v11[1] = a3;

    return MEMORY[0x282200950](v7);
  }
}

uint64_t closure #1 in closure #1 in closure #1 in SuggestionSheetUIManager.setNotificationScheduleConfiguration()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[21] = a5;
  v6[22] = a6;
  v6[20] = a4;
  type metadata accessor for MainActor();
  v6[23] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in closure #1 in closure #1 in SuggestionSheetUIManager.setNotificationScheduleConfiguration(), v8, v7);
}

uint64_t closure #1 in closure #1 in closure #1 in SuggestionSheetUIManager.setNotificationScheduleConfiguration()()
{
  v35 = v0;
  v1 = v0[23];

  if (one-time initialization token for bridge != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.bridge);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[20];
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = v5;
    _os_log_impl(&dword_238A75000, v3, v4, "NotificationScheduleType: %ld", v6, 0xCu);
    MEMORY[0x23EE71510](v6, -1, -1);
  }

  v7 = v0[20];

  switch(v7)
  {
    case 2:
      v13 = v0[21];
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
        break;
      }

      v10 = Strong;
      v32 = 2;
      (*((*MEMORY[0x277D85000] & *Strong) + 0x138))(&v32);
      goto LABEL_14;
    case 1:
      v11 = v0[21];
      swift_beginAccess();
      v12 = swift_unknownObjectWeakLoadStrong();
      if (!v12)
      {
        break;
      }

      v10 = v12;
      v33 = 1;
      (*((*MEMORY[0x277D85000] & *v12) + 0x138))(&v33);
      goto LABEL_14;
    case 0:
      v8 = v0[21];
      swift_beginAccess();
      v9 = swift_unknownObjectWeakLoadStrong();
      if (v9)
      {
        v10 = v9;
        v34 = 0;
        (*((*MEMORY[0x277D85000] & *v9) + 0x138))(&v34);
LABEL_14:
      }

      break;
  }

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = v0[22];
    v18 = swift_slowAlloc();
    *v18 = 134217984;
    *(v18 + 4) = v17;
    _os_log_impl(&dword_238A75000, v15, v16, "NotificationAvailability: %ld", v18, 0xCu);
    MEMORY[0x23EE71510](v18, -1, -1);
  }

  v19 = v0[22];

  switch(v19)
  {
    case 2:
      v25 = v0[21];
      swift_beginAccess();
      v26 = swift_unknownObjectWeakLoadStrong();
      if (!v26)
      {
        break;
      }

      v22 = v26;
      v29 = 2;
      (*((*MEMORY[0x277D85000] & *v26) + 0x168))(&v29);
      goto LABEL_26;
    case 1:
      v23 = v0[21];
      swift_beginAccess();
      v24 = swift_unknownObjectWeakLoadStrong();
      if (!v24)
      {
        break;
      }

      v22 = v24;
      v30 = 1;
      (*((*MEMORY[0x277D85000] & *v24) + 0x168))(&v30);
      goto LABEL_26;
    case 0:
      v20 = v0[21];
      swift_beginAccess();
      v21 = swift_unknownObjectWeakLoadStrong();
      if (v21)
      {
        v22 = v21;
        v31 = 0;
        (*((*MEMORY[0x277D85000] & *v21) + 0x168))(&v31);
LABEL_26:
      }

      break;
  }

  v27 = v0[1];

  return v27();
}

Swift::Int SuggestionSheetUIManager.DismissReason.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x23EE70D90](a1 & 1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SuggestionSheetUIManager.DismissReason()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x23EE70D90](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SuggestionSheetUIManager.DismissReason()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x23EE70D90](v1);
  return Hasher._finalize()();
}

void SuggestionSheetUIManager.dismiss(presentationToken:reason:)(uint64_t a1, int a2)
{
  v3 = v2;
  LODWORD(v35) = a2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*((*MEMORY[0x277D85000] & *v2) + 0x1F0))(v8))
  {
    if (one-time initialization token for bridge != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.bridge);
    v35 = Logger.logObject.getter();
    v12 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v35, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_238A75000, v35, v12, "Ignoring dismiss during transfer", v13, 2u);
      MEMORY[0x23EE71510](v13, -1, -1);
    }

    v14 = v35;
  }

  else
  {
    v15 = OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_presentationLock;
    v16 = &off_278A60000;
    [*(v2 + OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_presentationLock) lock];
    v17 = OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_trackingTokens;
    swift_beginAccess();
    v18 = *(v2 + v17);
    if (*(v18 + 16))
    {
      v19 = *(v3 + v17);

      v20 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
      if (v21)
      {
        v22 = (*(v18 + 56) + 32 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = v22[3];
        v33 = v22[2];
        v34 = v23;

        swift_retain_n();

        v26 = v33;
        v27 = outlined consume of SuggestionSheetUIManager.TrackingHandlers?(v34);
        v26(v27);
        v16 = &off_278A60000;
      }

      else
      {
      }
    }

    (*(v6 + 16))(v10, a1, v5);
    swift_beginAccess();
    specialized Dictionary.subscript.setter(0, 0, 0, 0, v10, &_ss18_DictionaryStorageCy10Foundation4UUIDV21JournalingSuggestions24SuggestionSheetUIManagerC16TrackingHandlers33_2809B6256945CDF43DF9E9436E3E5BB3LLVGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV21JournalingSuggestions24SuggestionSheetUIManagerC16TrackingHandlers33_2809B6256945CDF43DF9E9436E3E5BB3LLVGMR);
    swift_endAccess();
    v28 = *(*(v3 + v17) + 16);
    [*(v3 + v15) unlock];
    if (!v28 || (v35 & 1) == 0)
    {
      [*(v3 + v15) v16[146]];
      v29 = v3 + OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_targetViewState;
      if ((*(v3 + OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_targetViewState + 8) & 1) != 0 || (v30 = *v29, v31 = SuggestionSheetViewState.rawValue.getter(), v31 != SuggestionSheetViewState.rawValue.getter()))
      {
        *v29 = 0;
        v29[8] = 0;
      }

      [*(v3 + v15) unlock];
      SuggestionSheetUIManager.servicePickerViewState()();
    }
  }
}

Swift::Void __swiftcall SuggestionSheetUIManager.onApplicationMovedToForeground()()
{
  v1 = (v0 + OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_targetViewState);
  if ((*(v0 + OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_targetViewState + 8) & 1) == 0)
  {
    v2 = *v1;
    v3 = SuggestionSheetViewState.rawValue.getter();
    if (v3 == SuggestionSheetViewState.rawValue.getter() || (v4 = SuggestionSheetViewState.rawValue.getter(), v4 == SuggestionSheetViewState.rawValue.getter()))
    {
      v5 = OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_presentationLock;
      [*(v0 + OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_presentationLock) lock];
      *v1 = v2;
      *(v1 + 8) = 0;
      v6 = v0 + OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_viewState;
      *v6 = 0;
      *(v6 + 8) = 1;
      v7 = v0 + OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_transitionViewState;
      *v7 = 0;
      *(v7 + 8) = 1;
      [*(v0 + v5) unlock];

      SuggestionSheetUIManager.servicePickerViewState()();
    }
  }
}

id SuggestionSheetUIManager.init()()
{
  v1 = v0;
  v2 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v68 = *(v2 - 8);
  v69 = v2;
  v3 = *(v68 + 64);
  MEMORY[0x28223BE20](v2);
  v67 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for OS_dispatch_queue.Attributes();
  v5 = *(*(v66 - 8) + 64);
  MEMORY[0x28223BE20](v66);
  v65 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v64 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v62 = *(v10 - 8);
  v63 = v10;
  v11 = *(v62 + 64);
  MEMORY[0x28223BE20](v10);
  v61 = &v52 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10Foundation4UUIDVSgGMd, &_s7Combine9PublishedVy10Foundation4UUIDVSgGMR);
  v59 = *(v13 - 8);
  v60 = v13;
  v14 = *(v59 + 64);
  MEMORY[0x28223BE20](v13);
  v58 = &v52 - v15;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v16 = *(*(v57 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v57);
  v56 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v55 = &v52 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy21JournalingSuggestions0cD13ConfigurationC37NotificationAvailabilityStatusPrivateOSgGMd, &_s7Combine9PublishedVy21JournalingSuggestions0cD13ConfigurationC37NotificationAvailabilityStatusPrivateOSgGMR);
  v53 = *(v20 - 8);
  v54 = v20;
  v21 = *(v53 + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v52 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy21JournalingSuggestions0cD13ConfigurationC20NotificationScheduleOSgGMd, &_s7Combine9PublishedVy21JournalingSuggestions0cD13ConfigurationC20NotificationScheduleOSgGMR);
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v28 = &v52 - v27;
  v29 = OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_journalConfiguration;
  v30 = type metadata accessor for JournalConfiguration(0);
  (*(*(v30 - 8) + 56))(&v1[v29], 1, 1, v30);
  *&v1[OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_sceneSession] = 0;
  v31 = OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_currentNotificationSuggestionID;
  v32 = type metadata accessor for UUID();
  v33 = *(*(v32 - 8) + 56);
  v33(&v1[v31], 1, 1, v32);
  v33(&v1[OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_pastNotificationSuggestionID], 1, 1, v32);
  v34 = OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager__notificationSchedule;
  LOBYTE(v71) = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21JournalingSuggestions0aB13ConfigurationC20NotificationScheduleOSgMd, &_s21JournalingSuggestions0aB13ConfigurationC20NotificationScheduleOSgMR);
  Published.init(initialValue:)();
  (*(v25 + 32))(&v1[v34], v28, v24);
  v35 = OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager__notificationAvailability;
  LOBYTE(v71) = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21JournalingSuggestions0aB13ConfigurationC37NotificationAvailabilityStatusPrivateOSgMd, &_s21JournalingSuggestions0aB13ConfigurationC37NotificationAvailabilityStatusPrivateOSgMR);
  Published.init(initialValue:)();
  (*(v53 + 32))(&v1[v35], v23, v54);
  v36 = OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager__connectionUUID;
  v37 = v55;
  v33(v55, 1, 1, v32);
  v38 = v37;
  outlined init with copy of URL?(v37, v56, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v39 = v58;
  Published.init(initialValue:)();
  outlined destroy of URL?(v38, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(v59 + 32))(&v1[v36], v39, v60);
  v40 = OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager__shouldRequestEmbeddedScene;
  LOBYTE(v71) = 0;
  v41 = v61;
  Published.init(initialValue:)();
  v42 = v63;
  v43 = *(v62 + 32);
  v43(&v1[v40], v41, v63);
  v44 = OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager__shouldKeepSceneActive;
  LOBYTE(v71) = 0;
  Published.init(initialValue:)();
  v43(&v1[v44], v41, v42);
  *&v1[OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_presenterServerConnection] = 0;
  v45 = OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_pickerQueue;
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  static DispatchQoS.unspecified.getter();
  v71 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v68 + 104))(v67, *MEMORY[0x277D85260], v69);
  *&v1[v45] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v46 = &v1[OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_viewState];
  *v46 = 0;
  v46[8] = 1;
  v47 = &v1[OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_transitionViewState];
  *v47 = 0;
  v47[8] = 1;
  v48 = OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_presentationLock;
  *&v1[v48] = [objc_allocWithZone(MEMORY[0x277CCAC60]) init];
  v49 = &v1[OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_targetViewState];
  *v49 = 0;
  v49[8] = 1;
  *&v1[OBJC_IVAR____TtC21JournalingSuggestions24SuggestionSheetUIManager_trackingTokens] = MEMORY[0x277D84F98];
  v50 = type metadata accessor for SuggestionSheetUIManager();
  v70.receiver = v1;
  v70.super_class = v50;
  return objc_msgSendSuper2(&v70, sel_init);
}

id SuggestionSheetUIManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SuggestionSheetUIManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance SuggestionSheetUIManager@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SuggestionSheetUIManager();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t static Suggestion.content(for:)()
{
  result = specialized static Suggestion.contentImpl(for:)();
  if (result)
  {
    if (!*(result + 16))
    {

      return 0;
    }
  }

  return result;
}

uint64_t Suggestion.constructed()(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v2[10] = swift_getObjectType();
  v3 = type metadata accessor for SuggestionType();
  v2[11] = v3;
  v4 = *(v3 - 8);
  v2[12] = v4;
  v5 = *(v4 + 64) + 15;
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8) + 64) + 15;
  v2[15] = swift_task_alloc();
  v7 = type metadata accessor for JournalingSuggestion(0);
  v2[16] = v7;
  v8 = *(v7 - 8);
  v2[17] = v8;
  v9 = *(v8 + 64) + 15;
  v2[18] = swift_task_alloc();
  v10 = type metadata accessor for Date();
  v2[19] = v10;
  v11 = *(v10 - 8);
  v2[20] = v11;
  v12 = *(v11 + 64) + 15;
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](Suggestion.constructed(), 0, 0);
}

uint64_t Suggestion.constructed()()
{
  v1 = v0[9];
  v2 = Suggestion.assets.getter();
  v0[27] = v2;
  if (v2)
  {
    v3 = v2;
    v4 = v0[9];
    v5 = Suggestion.title.getter();
    if (v5)
    {
      v6 = v5;
      v7 = dispatch thunk of TemplatedString.localizedString.getter();
      v9 = v8;

      v0[28] = v7;
      v0[29] = v9;
      if (v9)
      {
        v10 = v0[9];
        v11 = Suggestion.dateRange.getter();
        if (v11)
        {
          v12 = v11;
          v14 = v0[25];
          v13 = v0[26];
          v15 = v0[19];
          v16 = v0[20];
          v17 = v0[9];
          DateRange.startDate.getter();

          v18 = *(v16 + 32);
          v18(v13, v14, v15);
          v19 = Suggestion.dateRange.getter();
          if (v19)
          {
            v20 = v19;
            v22 = v0[23];
            v21 = v0[24];
            v23 = v0[19];
            v24 = v0[10];
            DateRange.endDate.getter();

            v18(v21, v22, v23);
            v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21JournalingSuggestions0A10SuggestionV11ItemContentVSgMd, &_s21JournalingSuggestions0A10SuggestionV11ItemContentVSgMR);
            v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay21JournalingSuggestions0A10SuggestionV11ItemContentVGMd, &_sSay21JournalingSuggestions0A10SuggestionV11ItemContentVGMR);
            v27 = swift_task_alloc();
            v0[30] = v27;
            *(v27 + 16) = v3;
            *(v27 + 24) = v24;
            v28 = *(MEMORY[0x277D858E8] + 4);
            v29 = swift_task_alloc();
            v0[31] = v29;
            *v29 = v0;
            v29[1] = Suggestion.constructed();

            return MEMORY[0x282200600](v0 + 5, v25, v26, 0, 0, &async function pointer to partial apply for closure #1 in Suggestion.constructed(), v27, v25);
          }

          (*(v0[20] + 8))(v0[26], v0[19]);
        }
      }
    }
  }

  (*(v0[17] + 56))(v0[8], 1, 1, v0[16]);
  v31 = v0[25];
  v30 = v0[26];
  v33 = v0[23];
  v32 = v0[24];
  v35 = v0[21];
  v34 = v0[22];
  v36 = v0[18];
  v38 = v0[14];
  v37 = v0[15];
  v39 = v0[13];

  v40 = v0[1];

  return v40();
}

{
  v1 = *(*v0 + 248);
  v2 = *(*v0 + 240);
  v4 = *v0;

  return MEMORY[0x2822009F8](Suggestion.constructed(), 0, 0);
}

{
  v1 = v0[5];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[27];
    if (v3 >> 62)
    {
      if (v3 < 0)
      {
        v86 = v0[27];
      }

      else
      {
        v86 = v3 & 0xFFFFFFFFFFFFFF8;
      }

      v4 = MEMORY[0x23EE70C40](v86);
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v2 == v4)
    {
      v5 = v0[27];
    }

    else
    {
      if (one-time initialization token for bridge != -1)
      {
        swift_once();
      }

      v21 = v0[27];
      v22 = type metadata accessor for Logger();
      __swift_project_value_buffer(v22, static Logger.bridge);
      swift_bridgeObjectRetain_n();

      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 134218240;
        v26 = v0[27];
        if (v3 >> 62)
        {
          if (v3 < 0)
          {
            v29 = v0[27];
          }

          else
          {
            v29 = v26 & 0xFFFFFFFFFFFFFF8;
          }

          v27 = MEMORY[0x23EE70C40](v29);
          v30 = v0[27];
        }

        else
        {
          v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v25 + 4) = v27;

        *(v25 + 12) = 2048;
        v31 = *(v1 + 16);

        *(v25 + 14) = v31;

        _os_log_impl(&dword_238A75000, v23, v24, "assets input count=%ld, output count=%ld", v25, 0x16u);
        MEMORY[0x23EE71510](v25, -1, -1);
      }

      else
      {
        v28 = v0[27];
        swift_bridgeObjectRelease_n();

        swift_bridgeObjectRelease_n();
      }
    }

    v88 = v0[28];
    v89 = v0[29];
    v32 = v0[24];
    v33 = v0[21];
    v34 = v0[19];
    v35 = v0[18];
    v36 = v0[16];
    v37 = v0[9];
    v87 = v0[15];
    v38 = v36[6];
    v39 = *(v0[20] + 16);
    v39(v0[22], v0[26], v34);
    v39(v33, v32, v34);
    DateInterval.init(start:end:)();
    v40 = type metadata accessor for DateInterval();
    (*(*(v40 - 8) + 56))(&v35[v38], 0, 1, v40);
    v41 = v36[7];
    v42 = type metadata accessor for UUID();
    v43 = *(*(v42 - 8) + 56);
    v43(&v35[v41], 1, 1, v42);
    v44 = v36[8];
    v43(&v35[v44], 1, 1, v42);
    v45 = &v35[v36[11]];
    Suggestion.suggestionID.getter();
    v46 = NSObject.hashValue.getter();
    *v35 = v1;
    *(v35 + 1) = v88;
    *(v35 + 2) = v89;
    v90 = v36[9];
    *&v35[v90] = 0;
    v91 = v36[10];
    v35[v91] = 1;
    *&v35[v36[12]] = v46;
    Suggestion.suggestionID.getter();
    v43(v87, 0, 1, v42);
    outlined assign with take of URL?(v87, &v35[v41], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    Suggestion.transferID.getter();
    outlined assign with take of URL?(v87, &v35[v44], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v47 = Suggestion.prompt.getter();
    if (v47 && (v48 = v47, v49 = dispatch thunk of TemplatedString.localizedString.getter(), v51 = v50, v48, v51))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
      v52 = swift_allocObject();
      *(v52 + 16) = xmmword_238AD9800;
      *(v52 + 32) = v49;
      *(v52 + 40) = v51;
      *&v35[v90] = v52;
    }

    else
    {
      v52 = 0;
    }

    v54 = v0[13];
    v53 = v0[14];
    v55 = v0[11];
    v56 = v0[12];
    v57 = v0[9];
    Suggestion.suggestionType.getter();
    (*(v56 + 104))(v54, *MEMORY[0x277D2A198], v55);
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type SuggestionType and conformance SuggestionType, MEMORY[0x277D2A1A0]);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v58 = *(v56 + 8);
    v58(v54, v55);
    v58(v53, v55);
    if (v0[6] == v0[7])
    {
      v35[v91] = 0;
    }

    if (one-time initialization token for bridge != -1)
    {
      swift_once();
    }

    v59 = type metadata accessor for Logger();
    __swift_project_value_buffer(v59, static Logger.bridge);
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 134217984;
      if (v52)
      {
        v63 = *(v52 + 16);
      }

      else
      {
        v63 = 0;
      }

      *(v62 + 4) = v63;
      v64 = v62;
      _os_log_impl(&dword_238A75000, v60, v61, "prompts count=%ld", v62, 0xCu);
      MEMORY[0x23EE71510](v64, -1, -1);
    }

    v65 = v0[26];
    v66 = v0[24];
    v67 = v0[19];
    v68 = v0[20];
    v70 = v0[17];
    v69 = v0[18];
    v71 = v0[16];
    v72 = v0[8];

    v73 = *(v68 + 8);
    v73(v66, v67);
    v73(v65, v67);
    swift_beginAccess();
    outlined init with copy of JournalingSuggestion(v69, v72, type metadata accessor for JournalingSuggestion);
    (*(v70 + 56))(v72, 0, 1, v71);
    outlined destroy of JournalingSuggestion(v69, type metadata accessor for JournalingSuggestion);
  }

  else
  {
    v6 = v0[29];
    v7 = v0[27];
    v8 = v0[5];

    if (one-time initialization token for bridge != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logger.bridge);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_238A75000, v10, v11, "Error: No valid representation available for asset, dropping, asset type", v12, 2u);
      MEMORY[0x23EE71510](v12, -1, -1);
    }

    v13 = v0[26];
    v14 = v0[24];
    v15 = v0[19];
    v16 = v0[20];
    v17 = v0[16];
    v18 = v0[17];
    v19 = v0[8];

    v20 = *(v16 + 8);
    v20(v14, v15);
    v20(v13, v15);
    (*(v18 + 56))(v19, 1, 1, v17);
  }

  v75 = v0[25];
  v74 = v0[26];
  v77 = v0[23];
  v76 = v0[24];
  v79 = v0[21];
  v78 = v0[22];
  v80 = v0[18];
  v82 = v0[14];
  v81 = v0[15];
  v83 = v0[13];

  v84 = v0[1];

  return v84();
}