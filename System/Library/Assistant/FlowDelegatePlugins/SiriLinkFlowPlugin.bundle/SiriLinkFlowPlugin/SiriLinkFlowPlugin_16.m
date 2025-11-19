uint64_t OUTLINED_FUNCTION_4_43(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 32);
  return *(v2 + 16);
}

uint64_t OUTLINED_FUNCTION_6_29(uint64_t a1)
{
  result = __swift_getEnumTagSinglePayload(v1, 1, a1);
  v4 = *(v2 + 40);
  return result;
}

uint64_t OUTLINED_FUNCTION_14_23(uint64_t result)
{
  v4 = *(v2 + 48);
  v5 = *(v2 + 32);
  v3[6] = v1;
  v3[9] = result;
  v3[10] = 0x656D614E707061;
  v3[11] = 0xE700000000000000;
  return result;
}

void OUTLINED_FUNCTION_23_14(uint64_t a1@<X8>)
{
  v3 = *(v1 + 80);
  *(v2 + 128) = 0xD000000000000011;
  *(v2 + 136) = (a1 - 32) | 0x8000000000000000;
}

uint64_t specialized DisambiguationItemProtocol.getDisplayTitle()()
{
  type metadata accessor for CATSpeakableString();
  v1 = *v0;
  v2 = v0[1];

  static CATSpeakableString.stripTTSHint(print:)(v1, v2, v3, v4, v5, v6, v7, v8, v12, v13, v14);
  v10 = v9;

  return v10;
}

void *LNNeedsValueRequest.toDisambiguationItems(bundleIdentifier:actionParameterMetadata:selectedValues:locale:metadataProvider:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v14 = a7[3];
  v15 = a7[4];
  v16 = __swift_project_boxed_opaque_existential_1(a7, v14);
  return specialized LNNeedsValueRequest.toDisambiguationItems(bundleIdentifier:actionParameterMetadata:selectedValues:locale:metadataProvider:)(a1, a2, a3, a4, a5, a6, v16, v7, v14, v15);
}

void LNDisambiguationRequest.toDisambiguationItems(selectedValues:locale:)(unint64_t a1)
{
  if (a1)
  {
    if (a1 >> 62)
    {
      v3 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v3 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    }

    if (!v3)
    {
      return;
    }

    v48 = _swiftEmptyArrayStorage;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    if ((v3 & 0x8000000000000000) == 0)
    {
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v4 = *(a1 + 32);
        }

        OUTLINED_FUNCTION_21_17(v4, v5, v6, v7, v8, v9, v10, v11, v48, v12);

        OUTLINED_FUNCTION_16_28();
        if (v23)
        {
          OUTLINED_FUNCTION_14_8(v21);
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        OUTLINED_FUNCTION_4_44(v13, v14, v15, v16, v17, v18, v19, v20, v48, v22, v49, v50, v51);
      }

      while (!v24);
      return;
    }

    __break(1u);
LABEL_28:
    __break(1u);
    return;
  }

  v25 = [v1 providedValues];
  type metadata accessor for NSError(0, &lazy cache variable for type metadata for LNValue, LNValue_ptr);
  v26 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v27 = specialized Array.count.getter(v26);
  if (!v27)
  {

    return;
  }

  v28 = v27;
  v48 = _swiftEmptyArrayStorage;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  if (v28 < 0)
  {
    goto LABEL_28;
  }

  do
  {
    if ((v26 & 0xC000000000000001) != 0)
    {
      v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v29 = *(v26 + 32);
    }

    OUTLINED_FUNCTION_21_17(v29, v30, v31, v32, v33, v34, v35, v36, v48, v37);

    OUTLINED_FUNCTION_16_28();
    if (v23)
    {
      OUTLINED_FUNCTION_14_8(v46);
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    OUTLINED_FUNCTION_4_44(v38, v39, v40, v41, v42, v43, v44, v45, v48, v47, v49, v50, v51);
  }

  while (!v24);
}

uint64_t ShortcutsLinkDisambiguationItem.toDisambiguationVisualItem()@<X0>(void *a1@<X8>)
{
  v3 = ShortcutsLinkDisambiguationItem.getItemData()();
  if (v4 >> 60 == 15)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    result = 0;
  }

  else
  {
    v11 = v3;
    v12 = v4;
    type metadata accessor for CATSpeakableString();
    v7 = v1[2];
    v13 = v1[3];
    v9 = v1[4];
    static CATSpeakableString.stripTTSHint(print:)(*v1, v1[1], v14, v15, v16, v17, v18, v19, v32, v34, v36);
    v5 = v26;
    v6 = v27;
    if (v13)
    {
      static CATSpeakableString.stripTTSHint(print:)(v7, v13, v20, v21, v22, v23, v24, v25, v33, v35, v37);
      v7 = v28;
      v8 = v29;
    }

    else
    {
      v8 = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMd, &_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMR);
    inited = swift_initStackObject();
    OUTLINED_FUNCTION_1_51(inited, xmmword_216850);
    v31 = v9;
    AnyHashable.init<A>(_:)();
    inited[6].n128_u64[0] = &type metadata for Data;
    inited[4].n128_u64[1] = v11;
    inited[5].n128_u64[0] = v12;
    result = Dictionary.init(dictionaryLiteral:)();
  }

  *a1 = v5;
  a1[1] = v6;
  a1[2] = v7;
  a1[3] = v8;
  a1[4] = v9;
  a1[5] = result;
  return result;
}

uint64_t ShortcutsLinkDisambiguationItem.getItemData()()
{
  v1 = v0;
  v2 = objc_opt_self();
  v3 = *(v0 + 48);
  v15[0] = 0;
  v4 = [v2 archivedDataWithRootObject:v3 requiringSecureCoding:1 error:v15];
  v5 = v15[0];
  if (v4)
  {
    v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v7 = v5;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    if (one-time initialization token for voiceCommands != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Logger.voiceCommands);
    outlined init with copy of ShortcutsLinkDisambiguationItem(v1, v15);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    outlined destroy of ShortcutsLinkDisambiguationItem(v1);
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      *(v11 + 4) = v3;
      *v12 = v3;
      v13 = v3;
      _os_log_impl(&dword_0, v9, v10, "Could not archive disambiguation data for value: %@", v11, 0xCu);
      outlined destroy of NSObject?(v12);
    }

    return 0;
  }

  return v6;
}

uint64_t ShortcutsLinkDisambiguationItem.toDisambiguationItemModel()()
{
  OUTLINED_FUNCTION_8_0();
  *(v1 + 80) = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit14VisualPropertyVSgMd, &_s10SnippetKit14VisualPropertyVSgMR) - 8) + 64) + 15;
  *(v1 + 88) = swift_task_alloc();
  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v3, v4, v5);
}

{
  v1 = v0[10];
  v0[12] = ShortcutsLinkDisambiguationItem.getItemData()();
  v0[13] = v2;
  if (v2 >> 60 == 15)
  {
LABEL_10:
    v49 = v0[11];

    OUTLINED_FUNCTION_6_6();
    OUTLINED_FUNCTION_78();

    __asm { BRAA            X2, X16 }
  }

  v3 = v0[10];
  type metadata accessor for CATSpeakableString();
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  static CATSpeakableString.stripTTSHint(print:)(v4, v5, v9, v10, v11, v12, v13, v14, v52, v54, v56);
  v0[14] = v21;
  v0[15] = v22;
  if (v7)
  {
    static CATSpeakableString.stripTTSHint(print:)(v6, v7, v15, v16, v17, v18, v19, v20, v53, v55, v57);
    v6 = v24;
  }

  else
  {
    v23 = 0;
  }

  v0[16] = v6;
  v0[17] = v23;
  if (!v8)
  {
    v30 = v0[11];
    v31 = type metadata accessor for VisualProperty();
    OUTLINED_FUNCTION_63_7(v31);
    v32 = v0[16];
    v33 = v0[17];
    v35 = v0[14];
    v34 = v0[15];
    v37 = v0[12];
    v36 = v0[13];
    v38 = v0[11];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_10Foundation4DataVtGMd, &_ss23_ContiguousArrayStorageCySS_10Foundation4DataVtGMR);
    inited = swift_initStackObject();
    v40 = OUTLINED_FUNCTION_1_51(inited, xmmword_216850);
    v40[2].n128_u64[0] = v41;
    v40[2].n128_u64[1] = 0xE500000000000000;
    v40[3].n128_u64[0] = v37;
    v40[3].n128_u64[1] = v36;
    Dictionary.init(dictionaryLiteral:)();
    v42 = OUTLINED_FUNCTION_22_18();
    OUTLINED_FUNCTION_66(v42);
    OUTLINED_FUNCTION_18_25();
    v43 = OUTLINED_FUNCTION_73_3();
    OUTLINED_FUNCTION_2_45(v43, v44, v32, v33, v45, v46, v47, v48, v53);
    goto LABEL_10;
  }

  v25 = swift_task_alloc();
  v0[18] = v25;
  *v25 = v0;
  v25[1] = ShortcutsLinkDisambiguationItem.toDisambiguationItemModel();
  v26 = v0[11];
  OUTLINED_FUNCTION_78();

  return INImage.convertToVisualProperty()(v27);
}

{
  OUTLINED_FUNCTION_8_0();
  v1 = *(*v0 + 144);
  v6 = *v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v2, v3, v4);
}

void ShortcutsLinkDisambiguationItem.toDisambiguationItemModel()()
{
  v1 = v0[16];
  v2 = v0[17];
  v4 = v0[14];
  v3 = v0[15];
  v6 = v0[12];
  v5 = v0[13];
  v7 = v0[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_10Foundation4DataVtGMd, &_ss23_ContiguousArrayStorageCySS_10Foundation4DataVtGMR);
  inited = swift_initStackObject();
  v9 = OUTLINED_FUNCTION_1_51(inited, xmmword_216850);
  v9[2].n128_u64[0] = v10;
  v9[2].n128_u64[1] = 0xE500000000000000;
  v9[3].n128_u64[0] = v6;
  v9[3].n128_u64[1] = v5;
  Dictionary.init(dictionaryLiteral:)();
  v11 = OUTLINED_FUNCTION_22_18();
  OUTLINED_FUNCTION_66(v11);
  OUTLINED_FUNCTION_18_25();
  v12 = OUTLINED_FUNCTION_73_3();
  OUTLINED_FUNCTION_2_45(v12, v13, v1, v2, v14, v15, v16, v17, v21);
  v18 = v0[11];

  OUTLINED_FUNCTION_6_6();
  OUTLINED_FUNCTION_78();

  __asm { BRAA            X2, X16 }
}

void *Array<A>.toDisambiguationVisualItems()(uint64_t a1)
{
  v1 = 0;
  v2 = a1 + 80;
  v63 = _swiftEmptyArrayStorage;
  v3 = *(a1 + 16);
  v61 = xmmword_216850;
  v62 = a1 + 80;
  v65 = v3;
LABEL_2:
  v4 = (v2 + 56 * v1);
  while (v3 != v1)
  {
    if (v1 >= v3)
    {
      __break(1u);
LABEL_22:
      __break(1u);
    }

    if (__OFADD__(v1, 1))
    {
      goto LABEL_22;
    }

    v64 = v1 + 1;
    v66 = v1;
    v6 = *(v4 - 1);
    v5 = *v4;
    v8 = *(v4 - 3);
    v7 = *(v4 - 2);
    v10 = *(v4 - 5);
    v9 = *(v4 - 4);
    v11 = *(v4 - 6);
    v12 = objc_opt_self();
    v70[0] = 0;
    v68 = v7;

    v13 = v5;

    v69 = v8;

    v14 = [v12 archivedDataWithRootObject:v13 requiringSecureCoding:1 error:v70];
    v15 = v70[0];
    if (v14)
    {
      v67 = v9;
      v25 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v59 = v26;

      type metadata accessor for CATSpeakableString();
      static CATSpeakableString.stripTTSHint(print:)(v11, v10, v27, v28, v29, v30, v31, v32, v58, v59, v61.n128_u64[0]);
      v40 = v39;
      v42 = v41;
      if (v69)
      {
        static CATSpeakableString.stripTTSHint(print:)(v9, v69, v33, v34, v35, v36, v37, v38, v58, v60, v61.n128_u64[0]);
        v67 = v43;
        v45 = v44;
      }

      else
      {
        v45 = 0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMd, &_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMR);
      inited = swift_initStackObject();
      OUTLINED_FUNCTION_1_51(inited, v61);
      v70[0] = v47;
      v70[1] = 0xE500000000000000;
      v48 = v68;
      AnyHashable.init<A>(_:)();
      inited[6].n128_u64[0] = &type metadata for Data;
      inited[4].n128_u64[1] = v25;
      inited[5].n128_u64[0] = v60;
      v49 = Dictionary.init(dictionaryLiteral:)();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v54 = v63[2];
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v63 = v55;
      }

      v50 = v7;
      v52 = v63[2];
      v51 = v63[3];
      if (v52 >= v51 >> 1)
      {
        OUTLINED_FUNCTION_14_8(v51);
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v63 = v56;
      }

      v2 = v62;
      v63[2] = v52 + 1;
      v53 = &v63[6 * v52];
      v53[4] = v40;
      v53[5] = v42;
      v53[6] = v67;
      v53[7] = v45;
      v53[8] = v50;
      v53[9] = v49;
      v1 = v64;
      v3 = v65;
      goto LABEL_2;
    }

    v16 = v15;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0_1();
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Logger.voiceCommands);

    v18 = v68;

    v19 = v13;
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = OUTLINED_FUNCTION_48();
      v23 = OUTLINED_FUNCTION_23_15();
      *v22 = 138412290;
      *(v22 + 4) = v19;
      *v23 = v19;
      v24 = v19;
      _os_log_impl(&dword_0, v20, v21, "Could not archive disambiguation data for value: %@", v22, 0xCu);
      outlined destroy of NSObject?(v23);
      OUTLINED_FUNCTION_15_0();
      OUTLINED_FUNCTION_15_0();
    }

    v3 = v65;
    v1 = v66 + 1;
    v4 += 7;
  }

  return v63;
}

__n128 LNValue.toDisambiguationItem(locale:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __n128 *a3@<X8>)
{
  v4 = v3;
  v8 = [v4 displayRepresentation];
  if (v8)
  {
    v9 = v8;
    LNDisplayRepresentation.toDisambiguationItemComponent(locale:)(a1, a2, v24);

    v10 = v26;
    v11 = v27;
    v23 = v25;
    v12 = v24[0];
    v13 = v24[1];
  }

  else
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0_1();
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Logger.voiceCommands);
    v15 = v4;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = OUTLINED_FUNCTION_48();
      v19 = OUTLINED_FUNCTION_23_15();
      *v18 = 138412290;
      *(v18 + 4) = v15;
      *v19 = v15;
      v20 = v15;
      _os_log_impl(&dword_0, v16, v17, "Link LNDisplayRepresentation was nil for %@", v18, 0xCu);
      outlined destroy of NSObject?(v19);
      OUTLINED_FUNCTION_15_0();
      OUTLINED_FUNCTION_15_0();
    }

    v12 = 0;
    v10 = 0;
    v23 = 0u;
    v11 = _swiftEmptyArrayStorage;
    v13 = 0xE000000000000000;
  }

  v21 = v4;
  a3->n128_u64[0] = v12;
  a3->n128_u64[1] = v13;
  result = v23;
  a3[1] = v23;
  a3[2].n128_u64[0] = v10;
  a3[2].n128_u64[1] = v11;
  a3[3].n128_u64[0] = v21;
  return result;
}

void LNDisplayRepresentation.toDisambiguationItemComponent(locale:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = [v3 title];
  v8 = String._bridgeToObjectiveC()();
  v9 = &off_2B4000;
  v10 = [v7 localizedStringForLocaleIdentifier:v8];

  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v47 = v12;

  v13 = [v3 subtitle];
  if (v13)
  {
    v14 = v13;
    v15 = String._bridgeToObjectiveC()();
    v16 = [v14 localizedStringForLocaleIdentifier:v15];

    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = v18;
    v46 = v17;
  }

  else
  {
    v45 = 0;
    v46 = 0;
  }

  v19 = [v3 image];
  if (v19)
  {
    v20 = v19;
    objc_opt_self();
    v21 = swift_dynamicCastObjCClass();
    if (v21)
    {
      v22 = [v21 systemName];
      if (!v22)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v22 = String._bridgeToObjectiveC()();
      }

      v23 = [objc_opt_self() systemImageNamed:v22];

      goto LABEL_12;
    }
  }

  v24 = [v3 image];
  if (v24)
  {
    v20 = v24;
    v23 = [v24 inImage];
LABEL_12:

    v25 = v23;
    goto LABEL_14;
  }

  v23 = 0;
LABEL_14:
  v26 = outlined bridged method (pb) of @objc LNDisplayRepresentation.synonyms.getter(v3);
  if (!v26)
  {
LABEL_26:

LABEL_27:
    *a3 = v11;
    a3[1] = v47;
    a3[2] = v46;
    a3[3] = v45;
    a3[4] = v23;
    a3[5] = _swiftEmptyArrayStorage;
    return;
  }

  v27 = v26;
  v28 = specialized Array.count.getter(v26);
  if (!v28)
  {

    goto LABEL_26;
  }

  v29 = v28;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  if ((v29 & 0x8000000000000000) == 0)
  {
    v49 = v29;
    v50 = v27;
    v43 = v23;
    v44 = a3;
    v30 = 0;
    v48 = v27 & 0xC000000000000001;
    do
    {
      if (v48)
      {
        v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v31 = *(v27 + 8 * v30 + 32);
      }

      v32 = v31;
      v33 = a1;
      v34 = a2;
      v35 = String._bridgeToObjectiveC()();
      v36 = v9;
      v37 = [v32 v9[327]];

      v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v40 = v39;

      v41 = _swiftEmptyArrayStorage[2];
      if (v41 >= _swiftEmptyArrayStorage[3] >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      ++v30;
      _swiftEmptyArrayStorage[2] = v41 + 1;
      v42 = &_swiftEmptyArrayStorage[2 * v41];
      v42[4] = v38;
      v42[5] = v40;
      a2 = v34;
      a1 = v33;
      v9 = v36;
      v27 = v50;
    }

    while (v49 != v30);

    v23 = v43;

    a3 = v44;
    goto LABEL_27;
  }

  __break(1u);
}

id LNLinkEnumerationValueType.__allocating_init(enumerationIdentifier:)()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = String._bridgeToObjectiveC()();

  v2 = [v0 initWithEnumerationIdentifier:v1];

  return v2;
}

__n128 LNEnumCaseMetadata.toDisambiguationItem(valueType:locale:)@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v10 = [v5 displayRepresentation];
  LNDisplayRepresentation.toDisambiguationItemComponent(locale:)(a2, a3, v23);
  v20 = v23[1];
  v21 = v23[0];
  v11 = v24;
  v12 = v25;

  v13 = [v5 identifier];
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  v22[3] = &type metadata for String;
  v22[0] = v14;
  v22[1] = v16;
  v17 = objc_allocWithZone(LNValue);
  v18 = @nonobjc LNValue.init(_:valueType:)(v22, a1);
  result = v20;
  *a4 = v21;
  *(a4 + 16) = v20;
  *(a4 + 32) = v11;
  *(a4 + 40) = v12;
  *(a4 + 48) = v18;
  return result;
}

uint64_t outlined bridged method (pb) of @objc LNDisplayRepresentation.synonyms.getter(void *a1)
{
  v1 = [a1 synonyms];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for NSError(0, &lazy cache variable for type metadata for LNStaticDeferredLocalizedString, LNStaticDeferredLocalizedString_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void *specialized LNNeedsValueRequest.toDisambiguationItems(bundleIdentifier:actionParameterMetadata:selectedValues:locale:metadataProvider:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10)
{
  v99 = a6;
  v15 = a9;
  v16 = *(*(a9 - 8) + 64);
  __chkstk_darwin(a1);
  v18 = &v91 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = v19;
  (*(v19 + 16))(v18, v20, a9);
  v21 = &off_2B4000;
  v22 = [a3 valueType];
  objc_opt_self();
  v23 = swift_dynamicCastObjCClass();
  v98 = v18;
  if (v23)
  {
    v95 = v22;
    if (!a4)
    {
      v45 = v23;
      v53 = (*(a10 + 16))(a1, a2, a9);
      v91 = a9;
      v54 = specialized Array.count.getter(v53);
      v15 = 0;
      v93 = v53 & 0xC000000000000001;
      v94 = v54;
      v92 = v53 & 0xFFFFFFFFFFFFFF8;
      while (v94 != v15)
      {
        if (v93)
        {
          v55 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v15 >= *(v92 + 16))
          {
            goto LABEL_57;
          }

          v55 = *(v53 + 8 * v15 + 32);
        }

        if (__OFADD__(v15, 1))
        {
          __break(1u);
LABEL_57:
          __break(1u);
          goto LABEL_58;
        }

        v96 = v55;
        v56 = [v55 identifier];
        v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        a3 = v58;

        v59 = [v45 enumerationIdentifier];
        v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v61 = v60;

        if (v57 == v21 && a3 == v61)
        {

LABEL_44:

          type metadata accessor for NSError(0, &lazy cache variable for type metadata for LNLinkEnumerationValueType, LNLinkEnumerationValueType_ptr);
          v76 = [v45 enumerationIdentifier];
          static String._unconditionallyBridgeFromObjectiveC(_:)();

          v77 = LNLinkEnumerationValueType.__allocating_init(enumerationIdentifier:)();
          v78 = v96;
          v79 = [v96 cases];
          type metadata accessor for NSError(0, &lazy cache variable for type metadata for LNEnumCaseMetadata, LNEnumCaseMetadata_ptr);
          v80 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          v81 = specialized Array.count.getter(v80);
          if (!v81)
          {

            v27 = _swiftEmptyArrayStorage;
            goto LABEL_18;
          }

          v82 = v81;
          v100 = _swiftEmptyArrayStorage;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          if ((v82 & 0x8000000000000000) == 0)
          {
            v83 = 0;
            v27 = v100;
            do
            {
              if ((v80 & 0xC000000000000001) != 0)
              {
                v84 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                v84 = *(v80 + 8 * v83 + 32);
              }

              v85 = v84;
              LNEnumCaseMetadata.toDisambiguationItem(valueType:locale:)(v77, a5, v99, &v101);

              v100 = v27;
              v86 = v27[2];
              if (v86 >= v27[3] >> 1)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                v27 = v100;
              }

              ++v83;
              v27[2] = v86 + 1;
              v87 = &v27[7 * v86];
              v88 = v101;
              v89 = v102;
              v90 = v103;
              v87[10] = v104;
              *(v87 + 3) = v89;
              *(v87 + 4) = v90;
              *(v87 + 2) = v88;
            }

            while (v82 != v83);

            v44 = v96;
            goto LABEL_17;
          }

          __break(1u);
LABEL_61:
          swift_once();
LABEL_41:
          v64 = type metadata accessor for Logger();
          __swift_project_value_buffer(v64, static Logger.voiceCommands);
          v65 = v95;
          v66 = Logger.logObject.getter();
          v67 = static os_log_type_t.error.getter();

          v68 = os_log_type_enabled(v66, v67);
          v15 = v91;
          if (v68)
          {
            v69 = swift_slowAlloc();
            v70 = swift_slowAlloc();
            v101.n128_u64[0] = v70;
            *v69 = 136315138;
            v71 = [v45 enumerationIdentifier];
            v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v74 = v73;

            v75 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v72, v74, &v101);

            *(v69 + 4) = v75;
            _os_log_impl(&dword_0, v66, v67, "Could not find LNEnumMetadata for identifier: %s", v69, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v70);
          }

          else
          {
          }

          goto LABEL_25;
        }

        v63 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v63)
        {
          goto LABEL_44;
        }

        ++v15;
      }

      if (one-time initialization token for voiceCommands != -1)
      {
        goto LABEL_61;
      }

      goto LABEL_41;
    }

    v24 = specialized Array.count.getter(a4);
    if (!v24)
    {

LABEL_25:
      v27 = _swiftEmptyArrayStorage;
LABEL_26:
      v40 = v97;
      goto LABEL_27;
    }

    v25 = v24;
    v91 = a9;
    v100 = _swiftEmptyArrayStorage;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    if ((v25 & 0x8000000000000000) == 0)
    {
      v26 = 0;
      v27 = v100;
      do
      {
        if ((a4 & 0xC000000000000001) != 0)
        {
          v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v28 = *(a4 + 8 * v26 + 32);
        }

        v29 = v28;
        LNValue.toDisambiguationItem(locale:)(a5, v99, &v101);

        v100 = v27;
        v30 = v27[2];
        if (v30 >= v27[3] >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v27 = v100;
        }

        ++v26;
        v27[2] = v30 + 1;
        v31 = &v27[7 * v30];
        v32 = v101;
        v33 = v102;
        v34 = v103;
        v31[10] = v104;
        *(v31 + 3) = v33;
        *(v31 + 4) = v34;
        *(v31 + 2) = v32;
      }

      while (v25 != v26);
      v44 = v95;
LABEL_17:

LABEL_18:
      v15 = v91;
      goto LABEL_26;
    }

    __break(1u);
    swift_once();
    v46 = type metadata accessor for Logger();
    __swift_project_value_buffer(v46, static Logger.voiceCommands);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();
    v49 = os_log_type_enabled(v47, v48);
    v40 = v97;
    v50 = v95;
    if (v49)
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_0, v47, v48, "Could not create [ShortcutsLinkDisambiguationItem] for LNNeedsValueRequest", v51, 2u);
    }
  }

  else
  {

    if (one-time initialization token for voiceCommands != -1)
    {
LABEL_58:
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    __swift_project_value_buffer(v35, static Logger.voiceCommands);
    v36 = a3;
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();

    v39 = os_log_type_enabled(v37, v38);
    v40 = v97;
    if (v39)
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *v41 = 138412290;
      v43 = [v36 v21[325]];
      *(v41 + 4) = v43;
      *v42 = v43;
      _os_log_impl(&dword_0, v37, v38, "Can only create disambiguations for LNLinkEnumerationValueType, not %@", v41, 0xCu);
      outlined destroy of NSObject?(v42);
    }
  }

  v27 = _swiftEmptyArrayStorage;
LABEL_27:
  (*(v40 + 8))(v98, v15);
  return v27;
}

void *OUTLINED_FUNCTION_2_45(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{

  return WorkflowDataModels.DisambiguationItemModel.init(title:subtitle:thumbnail:invocationCommand:)(a1, a2, a3, a4, v9, 0xD000000000000043, a7, v10, a9);
}

uint64_t OUTLINED_FUNCTION_3_39(uint64_t a1)
{
  *(a1 + 8) = Array<A>.toDisambiguationItemModels();
  result = *(v1 + 104);
  v4 = *(v2 - 80);
  return result;
}

__n128 OUTLINED_FUNCTION_4_44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __n128 a10, __int128 a11, __int128 a12, uint64_t a13)
{
  *(v13 + 16) = v14;
  v16 = v13 + 56 * v15;
  result = a10;
  *(v16 + 80) = a13;
  *(v16 + 48) = a11;
  *(v16 + 64) = a12;
  *(v16 + 32) = a10;
  return result;
}

double OUTLINED_FUNCTION_21_17(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __n128 a10)
{

  *&result = LNValue.toDisambiguationItem(locale:)(v11, v10, &a10).n128_u64[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_22_18()
{

  return type metadata accessor for WorkflowDataModels.DisambiguationItemModel(0);
}

uint64_t OUTLINED_FUNCTION_23_15()
{

  return swift_slowAlloc();
}

uint64_t SiriWorkflowRunner.__allocating_init(workflowRunnerInput:deviceState:aceServiceInvoker:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_27_17();
  v4 = swift_allocObject();
  v5 = OUTLINED_FUNCTION_20_4();
  SiriWorkflowRunner.init(workflowRunnerInput:deviceState:aceServiceInvoker:)(v5, v6, a3);
  return v4;
}

void *SiriWorkflowRunner.init(workflowRunnerInput:deviceState:aceServiceInvoker:)(void *__src, void *a2, uint64_t *a3)
{
  v4 = v3;
  v3[2] = 0;
  v3[3] = 0;
  memcpy(v3 + 9, __src, 0x41uLL);
  outlined init with copy of SiriWorkflowRunnerInput(__src, v12);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v8 = SiriWorkflowRunnerInput.toWFSiriWorkflowRunnerClient(deviceState:aceServiceInvoker:dialogState:)(a2, a3, static WFDialogState.shared);
  v4[7] = type metadata accessor for NSError(0, &lazy cache variable for type metadata for WFSiriWorkflowRunnerClient, WFSiriWorkflowRunnerClient_ptr);
  v4[8] = &protocol witness table for WFSiriWorkflowRunnerClient;
  v4[4] = v8;
  swift_beginAccess();
  outlined init with copy of DeviceState((v4 + 4), v12);
  v9 = objc_allocWithZone(type metadata accessor for SiriStateObserver());
  v10 = SiriStateObserver.init(runnerClient:)(v12);
  outlined destroy of SiriWorkflowRunnerInput(__src);
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  v4[18] = v10;
  outlined init with take of Output(a2, v4 + 19);
  return v4;
}

uint64_t SiriWorkflowRunner.__allocating_init(runnerClient:siriStateObserver:deviceState:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_27_17();
  v4 = swift_allocObject();
  v5 = OUTLINED_FUNCTION_20_4();
  SiriWorkflowRunner.init(runnerClient:siriStateObserver:deviceState:)(v5, v6, a3);
  return v4;
}

uint64_t SiriWorkflowRunner.init(runnerClient:siriStateObserver:deviceState:)(uint64_t *a1, id a2, uint64_t a3)
{
  v4 = v3;
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  outlined init with copy of DeviceState(a1, v4 + 32);
  if (!a2)
  {
    outlined init with copy of DeviceState(a1, v10);
    v8 = objc_allocWithZone(type metadata accessor for SiriStateObserver());
    a2 = SiriStateObserver.init(runnerClient:)(v10);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  *(v4 + 144) = a2;
  outlined init with take of Output(a3, v4 + 152);
  *(v4 + 72) = 0u;
  *(v4 + 88) = 0u;
  *(v4 + 104) = 0u;
  *(v4 + 120) = 0u;
  *(v4 + 136) = -1;
  return v4;
}

uint64_t SiriWorkflowRunner.startExecution()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOy18SiriLinkFlowPlugin0D19WorkflowRunnerEventO__GMd, &_sScS12ContinuationV15BufferingPolicyOy18SiriLinkFlowPlugin0D19WorkflowRunnerEventO__GMR);
  OUTLINED_FUNCTION_7_1(v1);
  v3 = v2;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_35_15();
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v7 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v7, static Logger.voiceCommands);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_50(v9))
  {
    v10 = OUTLINED_FUNCTION_52();
    *v10 = 0;
    _os_log_impl(&dword_0, v8, v9, "#SiriWorkflowRunner creating async stream", v10, 2u);
    OUTLINED_FUNCTION_15_0();
  }

  type metadata accessor for SiriWorkflowRunnerEvent(0);
  (*(v3 + 104))(v0, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v1);
  return AsyncStream.init(_:bufferingPolicy:_:)();
}

uint64_t closure #1 in SiriWorkflowRunner.startExecution()(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMd, &_sScS12ContinuationVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v21[-1] - v7;
  v9 = *(v5 + 16);
  v9(&v21[-1] - v7, a1, v4);
  v10 = type metadata accessor for AnonymousSiriWorkflowRunnerClientDelegate(0);
  v11 = objc_allocWithZone(v10);
  v9(&v11[OBJC_IVAR____TtC18SiriLinkFlowPlugin41AnonymousSiriWorkflowRunnerClientDelegate_continuation], v8, v4);
  v24.receiver = v11;
  v24.super_class = v10;
  v12 = objc_msgSendSuper2(&v24, "init");
  (*(v5 + 8))(v8, v4);
  SiriWorkflowRunner.buildSiriStateObserver()();
  swift_beginAccess();
  v13 = *(a2 + 56);
  v14 = *(a2 + 64);
  __swift_mutable_project_boxed_opaque_existential_1(a2 + 32, v13);
  v15 = *(v14 + 16);
  v16 = v12;
  v15(v12, v13, v14);
  swift_endAccess();
  outlined init with copy of DeviceState(a2 + 32, v21);
  v17 = v22;
  v18 = v23;
  __swift_project_boxed_opaque_existential_1(v21, v22);
  (*(v18 + 64))(v17, v18);
  __swift_destroy_boxed_opaque_existential_1Tm(v21);
  *(swift_allocObject() + 16) = v16;
  return AsyncStream.Continuation.onTermination.setter();
}

objc_class *AnonymousSiriWorkflowRunnerClientDelegate.__allocating_init(continuation:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = OBJC_IVAR____TtC18SiriLinkFlowPlugin41AnonymousSiriWorkflowRunnerClientDelegate_continuation;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMd, &_sScS12ContinuationVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMR);
  (*(*(v5 - 8) + 16))(&v3[v4], a1, v5);
  v9.receiver = v3;
  v9.super_class = v1;
  objc_msgSendSuper2(&v9, "init");
  v6 = OUTLINED_FUNCTION_63_0();
  v7(v6);
  return v1;
}

void SiriWorkflowRunner.buildSiriStateObserver()()
{
  v1 = v0;
  v2 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OS_dispatch_queue.Attributes();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  type metadata accessor for NSError(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  v18[1] = _swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v3 + 104))(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v2);
  v11 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v12 = v1[2];
  v1[2] = v11;
  v13 = v11;

  v14 = v1[18];
  objc_allocWithZone(AFNotifyObserver);
  v15 = v14;
  v16 = @nonobjc AFNotifyObserver.init(name:options:queue:delegate:)(0xD000000000000023, 0x8000000000234350, 1, v11, v14);
  v17 = v1[3];
  v1[3] = v16;
}

void closure #1 in closure #1 in SiriWorkflowRunner.startExecution()()
{
  if (one-time initialization token for voiceCommands != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.voiceCommands);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_0, oslog, v1, "continuation.onTermination called", v2, 2u);
  }
}

Swift::Void __swiftcall SiriWorkflowRunner.continueRunningOnAppLaunch()()
{
  v1 = v0;
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v2 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v2, static Logger.voiceCommands);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_50(v4))
  {
    v5 = OUTLINED_FUNCTION_52();
    *v5 = 0;
    _os_log_impl(&dword_0, v3, v4, "#SiriWorkflowRunner continueRunningOnAppLaunch", v5, 2u);
    OUTLINED_FUNCTION_15_0();
  }

  (*(&stru_68.reloff + (swift_isaMask & **(v1 + 144))))();
}

Swift::Bool __swiftcall SiriWorkflowRunner.isLastStep()()
{
  swift_beginAccess();
  outlined init with copy of DeviceState(v0 + 32, v3);
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  v1 = SiriRunnerClient.isLastStep()();
  __swift_destroy_boxed_opaque_existential_1Tm(v3);
  return v1;
}

uint64_t SiriWorkflowRunner.pauseShortcut()()
{
  *(v1 + 152) = v0;
  return _swift_task_switch(SiriWorkflowRunner.pauseShortcut(), 0, 0);
}

{
  v1 = v0[19];
  swift_beginAccess();
  outlined init with copy of DeviceState((v1 + 4), (v0 + 11));
  v2 = v0[14];
  v3 = v0[15];
  __swift_project_boxed_opaque_existential_1(v0 + 11, v2);
  v4 = (*(v3 + 72))(v2, v3);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 11);
  memcpy(v0 + 2, v1 + 9, 0x41uLL);
  v5 = static WFPausedShortcutConverter.toUserData(pausedShortcutData:runnerInput:)(v4, (v0 + 2));
  type metadata accessor for NSError(0, &lazy cache variable for type metadata for SKIDirectInvocationPayload, SKIDirectInvocationPayload_ptr);
  v6 = SKIDirectInvocationPayload.__allocating_init(identifier:)();
  specialized _dictionaryUpCast<A, B, C, D>(_:)(v5);
  v8 = v7;

  outlined bridged method (mbnn) of @objc SKIDirectInvocationPayload.userData.setter(v8, v6);
  v9 = v1[23];
  __swift_project_boxed_opaque_existential_1(v1 + 19, v1[22]);
  v10 = DeviceState.asInvocationContext.getter();
  [v10 setInputOrigin:SAInputOriginDialogButtonTapValue];
  v11 = [objc_opt_self() runSiriKitExecutorCommandWithContext:v10 payload:v6];
  v12 = [objc_allocWithZone(SAIntentGroupSiriKitAppSelectionState) init];
  v13 = [objc_allocWithZone(SASyncAppIdentifyingInfo) init];
  v14 = String._bridgeToObjectiveC()();
  [v13 setBundleId:v14];

  [v12 setRequestedApp:v13];
  [v11 setAppSelectionState:v12];

  v15 = v0[1];

  return v15(v11);
}

uint64_t SiriWorkflowRunner.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));
  outlined consume of SiriWorkflowRunnerInput?(*(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136));

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 152));
  return v0;
}

uint64_t SiriWorkflowRunner.__deallocating_deinit()
{
  SiriWorkflowRunner.deinit();
  OUTLINED_FUNCTION_27_17();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for SiriWorkflowRunning.pauseShortcut() in conformance SiriWorkflowRunner()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for LocationProviding.getCurrentLocation() in conformance LocationProvider;

  return SiriWorkflowRunner.pauseShortcut()();
}

uint64_t AnonymousSiriWorkflowRunnerClientDelegate.continuation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18SiriLinkFlowPlugin41AnonymousSiriWorkflowRunnerClientDelegate_continuation;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMd, &_sScS12ContinuationVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMR);
  v5 = OUTLINED_FUNCTION_7(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

char *AnonymousSiriWorkflowRunnerClientDelegate.init(continuation:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC18SiriLinkFlowPlugin41AnonymousSiriWorkflowRunnerClientDelegate_continuation;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMd, &_sScS12ContinuationVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMR);
  (*(*(v5 - 8) + 16))(&v1[v4], a1, v5);
  v9.receiver = v1;
  v9.super_class = ObjectType;
  objc_msgSendSuper2(&v9, "init");
  v6 = OUTLINED_FUNCTION_63_0();
  v7(v6);
  return v1;
}

void AnonymousSiriWorkflowRunnerClientDelegate.workflowRunnerClient(_:didFinishRunningWorkflowWithOutput:error:cancelled:)()
{
  OUTLINED_FUNCTION_40_0();
  v26 = v2;
  v4 = v3;
  v6 = v5;
  v7 = type metadata accessor for SiriWorkflowRunnerEvent(0);
  v8 = OUTLINED_FUNCTION_7(v7);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_3_40();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy18SiriLinkFlowPlugin0D19WorkflowRunnerEventO__GMd, &_sScS12ContinuationV11YieldResultOy18SiriLinkFlowPlugin0D19WorkflowRunnerEventO__GMR);
  OUTLINED_FUNCTION_7_1(v11);
  v13 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v16);
  OUTLINED_FUNCTION_29_17();
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v17 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v17, static Logger.voiceCommands);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_50(v19))
  {
    *OUTLINED_FUNCTION_52() = 0;
    OUTLINED_FUNCTION_26_19();
    _os_log_impl(v20, v21, v22, v23, v24, 2u);
    OUTLINED_FUNCTION_15_0();
  }

  *v0 = v6;
  *(v0 + 8) = v4;
  *(v0 + 16) = v26 & 1;
  swift_storeEnumTagMultiPayload();
  v25 = v6;
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMd, &_sScS12ContinuationVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMR);
  OUTLINED_FUNCTION_33_9();
  AsyncStream.Continuation.yield(_:)();
  (*(v13 + 8))(v1, v11);
  OUTLINED_FUNCTION_42();
}

void AnonymousSiriWorkflowRunnerClientDelegate.workflowRunnerClient(_:performSiriRequest:completionHandler:)()
{
  OUTLINED_FUNCTION_40_0();
  v3 = v2;
  v39 = v4;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy18SiriLinkFlowPlugin0D19WorkflowRunnerEventO__GMd, &_sScS12ContinuationV11YieldResultOy18SiriLinkFlowPlugin0D19WorkflowRunnerEventO__GMR);
  OUTLINED_FUNCTION_7_1(v7);
  v9 = v8;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_30_14();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriLinkFlowPlugin0A19WorkflowRunnerEventOSgMd, &_s18SiriLinkFlowPlugin0A19WorkflowRunnerEventOSgMR) - 8) + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v14);
  OUTLINED_FUNCTION_29_17();
  v15 = type metadata accessor for SiriWorkflowRunnerEvent(0);
  v16 = OUTLINED_FUNCTION_7(v15);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  OUTLINED_FUNCTION_50_0();
  v37 = v19 - v20;
  __chkstk_darwin(v21);
  v38 = v35 - v22;
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v23 = type metadata accessor for Logger();
  __swift_project_value_buffer(v23, static Logger.voiceCommands);
  v24 = v6;
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v36 = v9;
    v28 = v27;
    v29 = swift_slowAlloc();
    v35[1] = v3;
    v30 = v29;
    *v28 = 138412290;
    *(v28 + 4) = v24;
    *v29 = v24;
    v31 = v24;
    OUTLINED_FUNCTION_46(&dword_0, v32, v33, "#AnonymousSiriWorkflowRunnerClientDelegate request=%@");
    outlined destroy of Any?(v30, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_15_0();
    v9 = v36;
    OUTLINED_FUNCTION_15_0();
  }

  static AnonymousSiriWorkflowRunnerClientDelegate.mapRunnerEvent(from:handler:)();
  if (__swift_getEnumTagSinglePayload(v1, 1, v15) == 1)
  {
    outlined destroy of Any?(v1, &_s18SiriLinkFlowPlugin0A19WorkflowRunnerEventOSgMd, &_s18SiriLinkFlowPlugin0A19WorkflowRunnerEventOSgMR);
  }

  else
  {
    v34 = v38;
    outlined init with take of SiriWorkflowRunnerEvent(v1, v38);
    outlined init with copy of SiriWorkflowRunnerEvent(v34, v37);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMd, &_sScS12ContinuationVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMR);
    AsyncStream.Continuation.yield(_:)();
    (*(v9 + 8))(v0, v7);
    outlined destroy of SiriWorkflowRunnerEvent(v34);
  }

  OUTLINED_FUNCTION_42();
}

void static AnonymousSiriWorkflowRunnerClientDelegate.mapRunnerEvent(from:handler:)()
{
  OUTLINED_FUNCTION_40_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = type metadata accessor for URL();
  v9 = OUTLINED_FUNCTION_7_1(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v9);
  OUTLINED_FUNCTION_3();
  v16 = v15 - v14;
  v17 = type metadata accessor for SiriWorkflowRunnerEvent(0);
  v18 = OUTLINED_FUNCTION_7(v17);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  OUTLINED_FUNCTION_50_0();
  v23 = v21 - v22;
  __chkstk_darwin(v24);
  v26 = (&v102 - v25);
  objc_opt_self();
  v27 = OUTLINED_FUNCTION_23_16();
  if (v27)
  {
    v28 = [v27 utterance];
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;

    OUTLINED_FUNCTION_26_1();
    v32 = swift_allocObject();
    *(v32 + 16) = v3;
    *(v32 + 24) = v1;
    *v26 = v29;
    v26[1] = v31;
    v26[2] = partial apply for closure #1 in static AnonymousSiriWorkflowRunnerClientDelegate.mapRunnerEvent(from:handler:);
    v26[3] = v32;
    OUTLINED_FUNCTION_20_4();
LABEL_3:
    swift_storeEnumTagMultiPayload();
LABEL_11:
    outlined init with take of SiriWorkflowRunnerEvent(v26, v7);
    __swift_storeEnumTagSinglePayload(v7, 0, 1, v17);

    OUTLINED_FUNCTION_42();
    return;
  }

  v103 = v3;
  objc_opt_self();
  v33 = OUTLINED_FUNCTION_23_16();
  if (v33)
  {
    v34 = v33;
    v35 = [v33 URL];
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v11 + 32))(v23, v16, v8);
    v36 = [v34 bundleIdentifier];
    if (v36)
    {
      v37 = v36;
      v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v40 = v39;
    }

    else
    {
      v38 = 0;
      v40 = 0;
    }

    v49 = v103;
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV3url_SSSg8bundleIdyyc17completionHandlertMd, &_s10Foundation3URLV3url_SSSg8bundleIdyyc17completionHandlertMR);
    v51 = (v23 + *(v50 + 48));
    v52 = (v23 + *(v50 + 64));
    *v51 = v38;
    v51[1] = v40;
    OUTLINED_FUNCTION_26_1();
    v53 = swift_allocObject();
    *(v53 + 16) = v49;
    *(v53 + 24) = v1;
    *v52 = partial apply for closure #2 in static AnonymousSiriWorkflowRunnerClientDelegate.mapRunnerEvent(from:handler:);
    v52[1] = v53;
    swift_storeEnumTagMultiPayload();
    outlined init with take of SiriWorkflowRunnerEvent(v23, v26);
    goto LABEL_11;
  }

  objc_opt_self();
  v41 = OUTLINED_FUNCTION_23_16();
  if (v41)
  {
    v42 = v41;
    v43 = [v41 userActivity];
    v44 = [v42 bundleIdentifier];
    v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v47 = v46;

    OUTLINED_FUNCTION_26_1();
    v48 = swift_allocObject();
    *(v48 + 16) = v103;
    *(v48 + 24) = v1;
    *v26 = v43;
    v26[1] = v45;
    v26[2] = v47;
    v26[3] = partial apply for closure #3 in static AnonymousSiriWorkflowRunnerClientDelegate.mapRunnerEvent(from:handler:);
    v26[4] = v48;
    OUTLINED_FUNCTION_20_4();
    goto LABEL_3;
  }

  objc_opt_self();
  v54 = OUTLINED_FUNCTION_23_16();
  v55 = v103;
  if (v54)
  {
    v56 = [v54 intent];
    OUTLINED_FUNCTION_26_1();
    v57 = swift_allocObject();
    *(v57 + 16) = v55;
    *(v57 + 24) = v1;
    *v26 = v56;
    v26[1] = partial apply for closure #4 in static AnonymousSiriWorkflowRunnerClientDelegate.mapRunnerEvent(from:handler:);
    v26[2] = v57;
    OUTLINED_FUNCTION_20_4();
    goto LABEL_3;
  }

  objc_opt_self();
  v58 = OUTLINED_FUNCTION_23_16();
  if (v58)
  {
    v59 = [v58 dialogRequest];
    OUTLINED_FUNCTION_26_1();
    v60 = swift_allocObject();
    *(v60 + 16) = v55;
    *(v60 + 24) = v1;
    *v26 = v59;
    v26[1] = partial apply for closure #5 in static AnonymousSiriWorkflowRunnerClientDelegate.mapRunnerEvent(from:handler:);
    v26[2] = v60;
    OUTLINED_FUNCTION_20_4();
    goto LABEL_3;
  }

  objc_opt_self();
  v61 = OUTLINED_FUNCTION_23_16();
  if (v61)
  {
    v62 = [v61 interaction];
    OUTLINED_FUNCTION_26_1();
    v63 = swift_allocObject();
    *(v63 + 16) = v55;
    *(v63 + 24) = v1;
    *v26 = v62;
    v26[1] = partial apply for closure #6 in static AnonymousSiriWorkflowRunnerClientDelegate.mapRunnerEvent(from:handler:);
    v26[2] = v63;
    OUTLINED_FUNCTION_20_4();
    goto LABEL_3;
  }

  objc_opt_self();
  v64 = OUTLINED_FUNCTION_23_16();
  if (v64)
  {
    v65 = [v64 bundleIdentifier];
    v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v68 = v67;

    OUTLINED_FUNCTION_26_1();
    v69 = swift_allocObject();
    *(v69 + 16) = v55;
    *(v69 + 24) = v1;
    *v26 = v66;
    v26[1] = v68;
    v26[2] = partial apply for closure #7 in static AnonymousSiriWorkflowRunnerClientDelegate.mapRunnerEvent(from:handler:);
    v26[3] = v69;
    OUTLINED_FUNCTION_20_4();
    goto LABEL_3;
  }

  objc_opt_self();
  v70 = OUTLINED_FUNCTION_23_16();
  if (v70)
  {
    v71 = v70;
    v72 = [v70 action];
    v73 = [v71 bundleIdentifier];
    v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v76 = v75;

    LOBYTE(v71) = [v71 showWhenRun];
    OUTLINED_FUNCTION_26_1();
    v77 = swift_allocObject();
    *(v77 + 16) = v55;
    *(v77 + 24) = v1;
    *v26 = v72;
    v26[1] = v74;
    v26[2] = v76;
    *(v26 + 24) = v71;
    v26[4] = partial apply for closure #8 in static AnonymousSiriWorkflowRunnerClientDelegate.mapRunnerEvent(from:handler:);
    v26[5] = v77;
    OUTLINED_FUNCTION_20_4();
    goto LABEL_3;
  }

  objc_opt_self();
  if (OUTLINED_FUNCTION_23_16())
  {
    OUTLINED_FUNCTION_26_1();
    v78 = swift_allocObject();
    *(v78 + 16) = v55;
    *(v78 + 24) = v1;
    *v26 = partial apply for closure #9 in static AnonymousSiriWorkflowRunnerClientDelegate.mapRunnerEvent(from:handler:);
    v26[1] = v78;
    OUTLINED_FUNCTION_20_4();
    goto LABEL_3;
  }

  objc_opt_self();
  v79 = OUTLINED_FUNCTION_23_16();
  if (v79)
  {
    v80 = [v79 bundleIdentifier];
    v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v83 = v82;

    OUTLINED_FUNCTION_26_1();
    v84 = swift_allocObject();
    *(v84 + 16) = v55;
    *(v84 + 24) = v1;
    *v26 = v81;
    v26[1] = v83;
    v26[2] = partial apply for closure #10 in static AnonymousSiriWorkflowRunnerClientDelegate.mapRunnerEvent(from:handler:);
    v26[3] = v84;
    OUTLINED_FUNCTION_20_4();
    goto LABEL_3;
  }

  objc_opt_self();
  v85 = OUTLINED_FUNCTION_23_16();
  if (v85)
  {
    v86 = [v85 needsPreciseLocation];
    OUTLINED_FUNCTION_26_1();
    v87 = swift_allocObject();
    *(v87 + 16) = v103;
    *(v87 + 24) = v1;
    *v26 = v86;
    v26[1] = partial apply for closure #11 in static AnonymousSiriWorkflowRunnerClientDelegate.mapRunnerEvent(from:handler:);
    v26[2] = v87;
    OUTLINED_FUNCTION_20_4();
    goto LABEL_3;
  }

  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v88 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v88, static Logger.voiceCommands);
  v89 = v5;
  v90 = Logger.logObject.getter();
  v91 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v90, v91))
  {
    v92 = swift_slowAlloc();
    v93 = swift_slowAlloc();
    *v92 = 138412290;
    *(v92 + 4) = v89;
    *v93 = v89;
    v94 = v89;
    OUTLINED_FUNCTION_46(&dword_0, v95, v96, "#AnonymousSiriWorkflowRunnerClientDelegate unknown request=%@");
    outlined destroy of Any?(v93, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_15_0();
    OUTLINED_FUNCTION_15_0();
  }

  OUTLINED_FUNCTION_42();

  __swift_storeEnumTagSinglePayload(v97, v98, v99, v100);
}

void AnonymousSiriWorkflowRunnerClientDelegate.workflowRunnerClient(_:didStartActionWithIdentifier:)()
{
  OUTLINED_FUNCTION_40_0();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy18SiriLinkFlowPlugin0D19WorkflowRunnerEventO__GMd, &_sScS12ContinuationV11YieldResultOy18SiriLinkFlowPlugin0D19WorkflowRunnerEventO__GMR);
  OUTLINED_FUNCTION_7_1(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v10);
  OUTLINED_FUNCTION_35_15();
  v35 = type metadata accessor for SiriWorkflowRunnerEvent(0);
  v11 = OUTLINED_FUNCTION_7(v35);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  OUTLINED_FUNCTION_50_0();
  v16 = v14 - v15;
  __chkstk_darwin(v17);
  v19 = (&v33 - v18);
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v20 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v20, static Logger.voiceCommands);

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v33 = v7;
    v24 = v4;
    v25 = v23;
    v26 = swift_slowAlloc();
    v34 = v5;
    v27 = v26;
    v36 = v26;
    *v25 = 136315138;
    *(v25 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v2, &v36);
    OUTLINED_FUNCTION_26_19();
    _os_log_impl(v28, v29, v30, v31, v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    v5 = v34;
    OUTLINED_FUNCTION_15_0();
    v4 = v24;
    v7 = v33;
    OUTLINED_FUNCTION_15_0();
  }

  *v19 = v4;
  v19[1] = v2;
  swift_storeEnumTagMultiPayload();
  outlined init with copy of SiriWorkflowRunnerEvent(v19, v16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMd, &_sScS12ContinuationVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMR);
  AsyncStream.Continuation.yield(_:)();
  (*(v7 + 8))(v0, v5);
  outlined destroy of SiriWorkflowRunnerEvent(v19);
  OUTLINED_FUNCTION_42();
}

void closure #1 in static AnonymousSiriWorkflowRunnerClientDelegate.mapRunnerEvent(from:handler:)(uint64_t a1, void (*a2)(void))
{
  v4 = objc_allocWithZone(WFSiriSpeakTextResponse);
  swift_errorRetain();
  v5 = @nonobjc WFSiriSpeakTextResponse.init(error:)(a1);
  a2();
}

void closure #2 in static AnonymousSiriWorkflowRunnerClientDelegate.mapRunnerEvent(from:handler:)(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, Class *a5)
{
  v7 = objc_allocWithZone(*a5);
  swift_errorRetain();
  v8 = @nonobjc WFSiriSpeakTextResponse.init(error:)(a2);
  a3();
}

void closure #5 in static AnonymousSiriWorkflowRunnerClientDelegate.mapRunnerEvent(from:handler:)(uint64_t a1, void (*a2)(void))
{
  v3 = [objc_allocWithZone(WFSiriDialogResponse) initWithDialogResponse:a1];
  a2();
}

void closure #4 in static AnonymousSiriWorkflowRunnerClientDelegate.mapRunnerEvent(from:handler:)(void *a1, uint64_t a2, void (*a3)(void), uint64_t a4, Class *a5, SEL *a6)
{
  v10 = objc_allocWithZone(*a5);
  v11 = a1;
  swift_errorRetain();
  v12 = @nonobjc WFSiriKitIntentResponse.init(interaction:andError:)(a1, a2, a6);
  a3();
}

void closure #9 in static AnonymousSiriWorkflowRunnerClientDelegate.mapRunnerEvent(from:handler:)(char a1, void (*a2)(void))
{
  v3 = [objc_allocWithZone(WFSiriPunchOutResponse) initWithShouldPunchOut:a1 & 1];
  a2();
}

void closure #10 in static AnonymousSiriWorkflowRunnerClientDelegate.mapRunnerEvent(from:handler:)(char a1, uint64_t a2, void (*a3)(id))
{
  objc_allocWithZone(WFSiriAppProtectionResponse);
  swift_errorRetain();
  v6 = @nonobjc WFSiriAppProtectionResponse.init(didUnlock:andError:)(a1, a2);
  if (one-time initialization token for voiceCommands != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.voiceCommands);
  v18 = v6;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v10 = 136315394;
    v12 = v18;
    v13 = [v12 description];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, &v19);

    *(v10 + 4) = v17;
    *(v10 + 12) = 1024;
    LODWORD(v17) = [v12 didUnlock];

    *(v10 + 14) = v17;
    _os_log_impl(&dword_0, v8, v9, "#AnonymousSiriWorkflowRunnerClientDelegate setting WFSiriAppProtectionResponse=%s; didUnlock=%{BOOL}d", v10, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
  }

  else
  {
  }

  a3(v18);
}

void closure #11 in static AnonymousSiriWorkflowRunnerClientDelegate.mapRunnerEvent(from:handler:)(char a1, uint64_t a2, void (*a3)(void))
{
  v6 = objc_allocWithZone(WFSiriLocationAuthorizationResponse);
  if (a2)
  {
    swift_errorRetain();
    v7 = @nonobjc WFSiriSpeakTextResponse.init(error:)(a2);
  }

  else
  {
    v7 = [v6 initWithDidAuthorize:a1 & 1];
  }

  v8 = one-time initialization token for voiceCommands;
  v9 = v7;
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.voiceCommands);
  swift_errorRetain();
  v11 = v9;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v24 = a1;
    v14 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v14 = 136315650;
    v15 = v11;
    v16 = [v15 description];
    v25 = a3;
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, &v26);

    *(v14 + 4) = v20;
    *(v14 + 12) = 1024;
    *(v14 + 14) = v24 & 1;
    *(v14 + 18) = 2080;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd, _ss5Error_pSgMR);
    v21 = String.init<A>(describing:)();
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v26);

    *(v14 + 20) = v23;
    a3 = v25;
    _os_log_impl(&dword_0, v12, v13, "#AnonymousSiriWorkflowRunnerClientDelegate setting WFSiriLocationAuthorizationResponse=%s; didAuthorize=%{BOOL}d; error=%s", v14, 0x1Cu);
    swift_arrayDestroy();
  }

  a3(v11);
}

void AnonymousSiriWorkflowRunnerClientDelegate.workflowRunnerClient(_:executeLinkAction:inApplication:completionHandler:)()
{
  OUTLINED_FUNCTION_40_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for SiriWorkflowRunnerEvent(0);
  v7 = OUTLINED_FUNCTION_7(v6);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_3();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMd, &_sScS12ContinuationVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMR);
  OUTLINED_FUNCTION_7_1(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v13);
  OUTLINED_FUNCTION_14_25(v14, v36);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy18SiriLinkFlowPlugin0D19WorkflowRunnerEventO__GMd, &_sScS12ContinuationV11YieldResultOy18SiriLinkFlowPlugin0D19WorkflowRunnerEventO__GMR);
  OUTLINED_FUNCTION_7_1(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v18);
  OUTLINED_FUNCTION_13_23(v19, v37);
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v20 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v20, static Logger.voiceCommands);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();
  if (OUTLINED_FUNCTION_30_1(v22))
  {
    v23 = OUTLINED_FUNCTION_52();
    OUTLINED_FUNCTION_5_28(v23);
    OUTLINED_FUNCTION_26(&dword_0, v24, v25, "#AnonymousSiriWorkflowRunnerClientDelegate unexpected request executeLinkAction, this method is being deprecated.");
    OUTLINED_FUNCTION_6_30();
  }

  v26 = OUTLINED_FUNCTION_7_29(OBJC_IVAR____TtC18SiriLinkFlowPlugin41AnonymousSiriWorkflowRunnerClientDelegate_continuation);
  v27(v26);
  if (v3)
  {
    OUTLINED_FUNCTION_26_1();
    v28 = swift_allocObject();
    *(v28 + 16) = v3;
    *(v28 + 24) = v1;
  }

  OUTLINED_FUNCTION_26_1();
  v29 = swift_allocObject();
  v30 = OUTLINED_FUNCTION_20_17(v29);
  OUTLINED_FUNCTION_36_12(v30);
  OUTLINED_FUNCTION_32_16();
  v31 = v5;
  OUTLINED_FUNCTION_11_25();
  v32 = OUTLINED_FUNCTION_25_13();
  v33(v32);
  v34 = OUTLINED_FUNCTION_24_19();
  v35(v34);
  OUTLINED_FUNCTION_42();
}

void AnonymousSiriWorkflowRunnerClientDelegate.workflowRunnerClient(_:speakTextWithUtterance:completionHandler:)()
{
  OUTLINED_FUNCTION_40_0();
  v4 = v3;
  v24 = v6;
  v25 = v5;
  v8 = v7;
  v9 = type metadata accessor for SiriWorkflowRunnerEvent(0);
  v10 = OUTLINED_FUNCTION_7(v9);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  OUTLINED_FUNCTION_3_40();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy18SiriLinkFlowPlugin0D19WorkflowRunnerEventO__GMd, &_sScS12ContinuationV11YieldResultOy18SiriLinkFlowPlugin0D19WorkflowRunnerEventO__GMR);
  OUTLINED_FUNCTION_7_1(v13);
  v15 = v14;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v18);
  OUTLINED_FUNCTION_31_14();
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v19 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v19, static Logger.voiceCommands);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();
  if (OUTLINED_FUNCTION_30_1(v21))
  {
    v22 = OUTLINED_FUNCTION_52();
    *v22 = 0;
    _os_log_impl(&dword_0, v20, v0, "#AnonymousSiriWorkflowRunnerClientDelegate unexpected request speakTextWithUtterance", v22, 2u);
    OUTLINED_FUNCTION_15_0();
  }

  OUTLINED_FUNCTION_26_1();
  v23 = swift_allocObject();
  *(v23 + 16) = v24;
  *(v23 + 24) = v4;
  *v1 = v25;
  v1[1] = v8;
  v1[2] = partial apply for closure #1 in AnonymousSiriWorkflowRunnerClientDelegate.workflowRunnerClient(_:speakTextWithUtterance:completionHandler:);
  v1[3] = v23;
  swift_storeEnumTagMultiPayload();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMd, &_sScS12ContinuationVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMR);
  AsyncStream.Continuation.yield(_:)();
  (*(v15 + 8))(v2, v13);
  OUTLINED_FUNCTION_42();
}

void AnonymousSiriWorkflowRunnerClientDelegate.workflowRunnerClient(_:open:withBundleIdentifier:completionHandler:)()
{
  OUTLINED_FUNCTION_40_0();
  v35 = v2;
  v4 = v3;
  v6 = v5;
  v33 = v7;
  v34 = v8;
  v9 = type metadata accessor for SiriWorkflowRunnerEvent(0);
  v10 = OUTLINED_FUNCTION_7(v9);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_35_15();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy18SiriLinkFlowPlugin0D19WorkflowRunnerEventO__GMd, &_sScS12ContinuationV11YieldResultOy18SiriLinkFlowPlugin0D19WorkflowRunnerEventO__GMR);
  OUTLINED_FUNCTION_7_1(v13);
  v15 = v14;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v18);
  OUTLINED_FUNCTION_29_17();
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v19 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v19, static Logger.voiceCommands);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();
  if (OUTLINED_FUNCTION_50(v21))
  {
    *OUTLINED_FUNCTION_52() = 0;
    OUTLINED_FUNCTION_26_19();
    _os_log_impl(v22, v23, v24, v25, v26, 2u);
    OUTLINED_FUNCTION_15_0();
  }

  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV3url_SSSg8bundleIdyyc17completionHandlertMd, &_s10Foundation3URLV3url_SSSg8bundleIdyyc17completionHandlertMR);
  v28 = (v0 + *(v27 + 48));
  v29 = (v0 + *(v27 + 64));
  v30 = type metadata accessor for URL();
  OUTLINED_FUNCTION_7(v30);
  (*(v31 + 16))(v0, v33);
  *v28 = v34;
  v28[1] = v6;
  OUTLINED_FUNCTION_26_1();
  v32 = swift_allocObject();
  *(v32 + 16) = v4;
  *(v32 + 24) = v35;
  *v29 = partial apply for closure #1 in AnonymousSiriWorkflowRunnerClientDelegate.workflowRunnerClient(_:open:withBundleIdentifier:completionHandler:);
  v29[1] = v32;
  swift_storeEnumTagMultiPayload();

  _sSo14LNActionOutputCSgs5Error_pSgIeggg_SgWOy_0(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMd, &_sScS12ContinuationVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMR);
  OUTLINED_FUNCTION_33_9();
  AsyncStream.Continuation.yield(_:)();
  (*(v15 + 8))(v1, v13);
  OUTLINED_FUNCTION_42();
}

void AnonymousSiriWorkflowRunnerClientDelegate.workflowRunnerClient(_:handle:withBundleIdentifier:completionHandler:)()
{
  OUTLINED_FUNCTION_40_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v44 = v6;
  v8 = v7;
  v9 = type metadata accessor for SiriWorkflowRunnerEvent(0);
  v10 = OUTLINED_FUNCTION_7(v9);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  OUTLINED_FUNCTION_3();
  v15 = (v14 - v13);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMd, &_sScS12ContinuationVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMR);
  OUTLINED_FUNCTION_7_1(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v19);
  OUTLINED_FUNCTION_14_25(v20, v42);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy18SiriLinkFlowPlugin0D19WorkflowRunnerEventO__GMd, &_sScS12ContinuationV11YieldResultOy18SiriLinkFlowPlugin0D19WorkflowRunnerEventO__GMR);
  OUTLINED_FUNCTION_7_1(v21);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v24);
  OUTLINED_FUNCTION_13_23(v25, v43);
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v26 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v26, static Logger.voiceCommands);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();
  if (OUTLINED_FUNCTION_30_1(v28))
  {
    v29 = OUTLINED_FUNCTION_52();
    OUTLINED_FUNCTION_5_28(v29);
    OUTLINED_FUNCTION_26(&dword_0, v30, v31, "#AnonymousSiriWorkflowRunnerClientDelegate unexpected request handle userActivity");
    OUTLINED_FUNCTION_6_30();
  }

  v32 = OUTLINED_FUNCTION_7_29(OBJC_IVAR____TtC18SiriLinkFlowPlugin41AnonymousSiriWorkflowRunnerClientDelegate_continuation);
  v33(v32);
  if (v3)
  {
    OUTLINED_FUNCTION_26_1();
    v34 = swift_allocObject();
    *(v34 + 16) = v3;
    *(v34 + 24) = v1;
    v35 = partial apply for thunk for @escaping @callee_guaranteed (@unowned Bool, @guaranteed Error?) -> ();
  }

  else
  {
    v35 = specialized thunk for @escaping @callee_guaranteed (@in_guaranteed Bool, @guaranteed Error?) -> ();
    v34 = 0;
  }

  OUTLINED_FUNCTION_26_1();
  v36 = swift_allocObject();
  *(v36 + 16) = v35;
  *(v36 + 24) = v34;
  *v15 = v8;
  v15[1] = v44;
  v15[2] = v5;
  v15[3] = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Bool, @in_guaranteed Error?) -> (@out ());
  v15[4] = v36;
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_32_16();
  v37 = v8;
  OUTLINED_FUNCTION_11_25();
  v38 = OUTLINED_FUNCTION_25_13();
  v39(v38);
  v40 = OUTLINED_FUNCTION_24_19();
  v41(v40);
  OUTLINED_FUNCTION_42();
}

void AnonymousSiriWorkflowRunnerClientDelegate.workflowRunnerClient(_:execute:completionHandler:)()
{
  OUTLINED_FUNCTION_40_0();
  v37 = v0;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = type metadata accessor for SiriWorkflowRunnerEvent(0);
  v10 = OUTLINED_FUNCTION_7(v9);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_35_15();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMd, &_sScS12ContinuationVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMR);
  OUTLINED_FUNCTION_7_1(v13);
  v15 = v14;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v18);
  OUTLINED_FUNCTION_30_14();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy18SiriLinkFlowPlugin0D19WorkflowRunnerEventO__GMd, &_sScS12ContinuationV11YieldResultOy18SiriLinkFlowPlugin0D19WorkflowRunnerEventO__GMR);
  v20 = OUTLINED_FUNCTION_7_1(v19);
  v39 = v21;
  v40 = v20;
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v24);
  v38 = &v35 - v25;
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v26 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v26, static Logger.voiceCommands);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();
  if (OUTLINED_FUNCTION_50(v28))
  {
    v29 = OUTLINED_FUNCTION_52();
    v36 = v2;
    *v29 = 0;
    _os_log_impl(&dword_0, v27, v28, "#AnonymousSiriWorkflowRunnerClientDelegate unexpected request execute intent", v29, 2u);
    v2 = v36;
    OUTLINED_FUNCTION_15_0();
  }

  (*(v15 + 16))(v2, v37 + OBJC_IVAR____TtC18SiriLinkFlowPlugin41AnonymousSiriWorkflowRunnerClientDelegate_continuation, v13);
  if (v6)
  {
    OUTLINED_FUNCTION_26_1();
    v30 = swift_allocObject();
    *(v30 + 16) = v6;
    *(v30 + 24) = v4;
    v31 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed INInteraction?, @guaranteed Error?) -> ();
  }

  else
  {
    v31 = specialized thunk for @escaping @callee_guaranteed (@in_guaranteed LNActionOutput?, @guaranteed Error?) -> ();
    v30 = 0;
  }

  OUTLINED_FUNCTION_26_1();
  v32 = swift_allocObject();
  *(v32 + 16) = v31;
  *(v32 + 24) = v30;
  *v1 = v8;
  v1[1] = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed INInteraction?, @in_guaranteed Error?) -> (@out ());
  v1[2] = v32;
  swift_storeEnumTagMultiPayload();
  _sSo14LNActionOutputCSgs5Error_pSgIeggg_SgWOy_0(v6);
  v33 = v8;
  v34 = v38;
  AsyncStream.Continuation.yield(_:)();
  (*(v15 + 8))(v2, v13);
  (*(v39 + 8))(v34, v40);
  OUTLINED_FUNCTION_42();
}

void AnonymousSiriWorkflowRunnerClientDelegate.workflowRunnerClient(_:show:completionHandler:)()
{
  AnonymousSiriWorkflowRunnerClientDelegate.workflowRunnerClient(_:show:completionHandler:)();
}

{
  OUTLINED_FUNCTION_40_0();
  v23 = v3;
  v5 = v4;
  v25 = v6;
  v8 = v7;
  v24 = type metadata accessor for SiriWorkflowRunnerEvent(0);
  v9 = OUTLINED_FUNCTION_7(v24);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  OUTLINED_FUNCTION_3_40();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy18SiriLinkFlowPlugin0D19WorkflowRunnerEventO__GMd, &_sScS12ContinuationV11YieldResultOy18SiriLinkFlowPlugin0D19WorkflowRunnerEventO__GMR);
  OUTLINED_FUNCTION_7_1(v12);
  v14 = v13;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v17);
  OUTLINED_FUNCTION_31_14();
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v18 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v18, static Logger.voiceCommands);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();
  if (OUTLINED_FUNCTION_30_1(v20))
  {
    v21 = OUTLINED_FUNCTION_52();
    *v21 = 0;
    _os_log_impl(&dword_0, v19, v0, v23, v21, 2u);
    OUTLINED_FUNCTION_15_0();
  }

  *v1 = v8;
  v1[1] = v25;
  v1[2] = v5;
  swift_storeEnumTagMultiPayload();
  v22 = v8;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMd, &_sScS12ContinuationVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMR);
  AsyncStream.Continuation.yield(_:)();
  (*(v14 + 8))(v2, v12);
  OUTLINED_FUNCTION_42();
}

void AnonymousSiriWorkflowRunnerClientDelegate.workflowRunnerClient(_:openApp:completionHandler:)()
{
  OUTLINED_FUNCTION_40_0();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v24 = v9;
  v23 = type metadata accessor for SiriWorkflowRunnerEvent(0);
  v10 = OUTLINED_FUNCTION_7(v23);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  OUTLINED_FUNCTION_3_40();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy18SiriLinkFlowPlugin0D19WorkflowRunnerEventO__GMd, &_sScS12ContinuationV11YieldResultOy18SiriLinkFlowPlugin0D19WorkflowRunnerEventO__GMR);
  OUTLINED_FUNCTION_7_1(v13);
  v15 = v14;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v18);
  OUTLINED_FUNCTION_31_14();
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v19 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v19, static Logger.voiceCommands);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();
  if (OUTLINED_FUNCTION_30_1(v21))
  {
    v22 = OUTLINED_FUNCTION_52();
    *v22 = 0;
    _os_log_impl(&dword_0, v20, v0, "#AnonymousSiriWorkflowRunnerClientDelegate unexpected request openApp", v22, 2u);
    OUTLINED_FUNCTION_15_0();
  }

  *v1 = v24;
  v1[1] = v8;
  v1[2] = v6;
  v1[3] = v4;
  swift_storeEnumTagMultiPayload();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMd, &_sScS12ContinuationVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMR);
  AsyncStream.Continuation.yield(_:)();
  (*(v15 + 8))(v2, v13);
  OUTLINED_FUNCTION_42();
}

void AnonymousSiriWorkflowRunnerClientDelegate.workflowRunnerClient(_:executeLinkAction:inApplication:withNameOverride:completionHandler:)()
{
  OUTLINED_FUNCTION_40_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for SiriWorkflowRunnerEvent(0);
  v7 = OUTLINED_FUNCTION_7(v6);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_3();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMd, &_sScS12ContinuationVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMR);
  OUTLINED_FUNCTION_7_1(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v13);
  OUTLINED_FUNCTION_14_25(v14, v36);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy18SiriLinkFlowPlugin0D19WorkflowRunnerEventO__GMd, &_sScS12ContinuationV11YieldResultOy18SiriLinkFlowPlugin0D19WorkflowRunnerEventO__GMR);
  OUTLINED_FUNCTION_7_1(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v18);
  OUTLINED_FUNCTION_13_23(v19, v37);
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v20 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v20, static Logger.voiceCommands);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();
  if (OUTLINED_FUNCTION_30_1(v22))
  {
    v23 = OUTLINED_FUNCTION_52();
    OUTLINED_FUNCTION_5_28(v23);
    OUTLINED_FUNCTION_26(&dword_0, v24, v25, "#AnonymousSiriWorkflowRunnerClientDelegate unexpected request executeLinkAction with name override");
    OUTLINED_FUNCTION_6_30();
  }

  v26 = OUTLINED_FUNCTION_7_29(OBJC_IVAR____TtC18SiriLinkFlowPlugin41AnonymousSiriWorkflowRunnerClientDelegate_continuation);
  v27(v26);
  if (v3)
  {
    OUTLINED_FUNCTION_26_1();
    v28 = swift_allocObject();
    *(v28 + 16) = v3;
    *(v28 + 24) = v1;
  }

  OUTLINED_FUNCTION_26_1();
  v29 = swift_allocObject();
  v30 = OUTLINED_FUNCTION_20_17(v29);
  OUTLINED_FUNCTION_36_12(v30);
  OUTLINED_FUNCTION_32_16();
  v31 = v5;
  OUTLINED_FUNCTION_11_25();
  v32 = OUTLINED_FUNCTION_25_13();
  v33(v32);
  v34 = OUTLINED_FUNCTION_24_19();
  v35(v34);
  OUTLINED_FUNCTION_42();
}

void AnonymousSiriWorkflowRunnerClientDelegate.workflowRunnerClient(_:punchOutRequestedWithCompletionHandler:)()
{
  OUTLINED_FUNCTION_40_0();
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for SiriWorkflowRunnerEvent(0);
  v7 = OUTLINED_FUNCTION_7(v6);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  OUTLINED_FUNCTION_3_40();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy18SiriLinkFlowPlugin0D19WorkflowRunnerEventO__GMd, &_sScS12ContinuationV11YieldResultOy18SiriLinkFlowPlugin0D19WorkflowRunnerEventO__GMR);
  OUTLINED_FUNCTION_7_1(v10);
  v12 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_29_0();
  __chkstk_darwin(v15);
  OUTLINED_FUNCTION_30_14();
  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0();
  }

  v16 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_59(v16, static Logger.voiceCommands);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();
  if (OUTLINED_FUNCTION_50(v18))
  {
    v19 = OUTLINED_FUNCTION_52();
    *v19 = 0;
    _os_log_impl(&dword_0, v17, v18, "#AnonymousSiriWorkflowRunnerClientDelegate unexpected request punchOutRequested", v19, 2u);
    OUTLINED_FUNCTION_15_0();
  }

  *v0 = v5;
  v0[1] = v3;
  swift_storeEnumTagMultiPayload();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMd, &_sScS12ContinuationVy18SiriLinkFlowPlugin0B19WorkflowRunnerEventO_GMR);
  AsyncStream.Continuation.yield(_:)();
  (*(v12 + 8))(v1, v10);
  OUTLINED_FUNCTION_42();
}

id @nonobjc WFSiriKitIntentResponse.init(interaction:andError:)(void *a1, uint64_t a2, SEL *a3)
{
  v5 = v3;
  if (a2)
  {
    v7 = _convertErrorToNSError(_:)();
  }

  else
  {
    v7 = 0;
  }

  v8 = [v5 *a3];

  return v8;
}

id @nonobjc WFSiriAppProtectionResponse.init(didUnlock:andError:)(char a1, uint64_t a2)
{
  if (a2)
  {
    v4 = _convertErrorToNSError(_:)();
  }

  else
  {
    v4 = 0;
  }

  v5 = [v2 initWithDidUnlock:a1 & 1 andError:v4];

  return v5;
}

id @nonobjc WFSiriSpeakTextResponse.init(error:)(uint64_t a1)
{
  if (a1)
  {
    v2 = _convertErrorToNSError(_:)();
  }

  else
  {
    v2 = 0;
  }

  v3 = [v1 initWithError:v2];

  return v3;
}

void *outlined consume of SiriWorkflowRunnerInput?(void *result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8, unsigned __int8 a9)
{
  if (a9 != 255)
  {
    return outlined consume of SiriWorkflowRunnerInput(result, a2, a3, a4, a5, a6, a7, a8, a9);
  }

  return result;
}

uint64_t outlined init with copy of SiriWorkflowRunnerEvent(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriWorkflowRunnerEvent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of SiriWorkflowRunnerEvent(uint64_t a1)
{
  v2 = type metadata accessor for SiriWorkflowRunnerEvent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_171970()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_26_1();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t partial apply for closure #1 in AnonymousSiriWorkflowRunnerClientDelegate.workflowRunnerClient(_:speakTextWithUtterance:completionHandler:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(a1 == 0, a1);
}

uint64_t sub_171AD0()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  OUTLINED_FUNCTION_26_1();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t partial apply for closure #1 in AnonymousSiriWorkflowRunnerClientDelegate.workflowRunnerClient(_:open:withBundleIdentifier:completionHandler:)(uint64_t result)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v1 + 24);
    return v2(result & 1);
  }

  return result;
}

uint64_t _sSo14LNActionOutputCSgs5Error_pSgIeggg_SgWOy_0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Bool, @in_guaranteed Error?) -> (@out ())(char a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v7 = a1;
  v6 = a2;
  return v3(&v7, &v6);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@unowned Bool, @guaranteed Error?) -> ()(unsigned __int8 *a1, void *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(*a1, *a2);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@guaranteed INInteraction?, @guaranteed Error?) -> ()(void *a1, void *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(*a1, *a2);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed LNActionOutput?, @in_guaranteed Error?) -> (@out ())(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = a2;
  v7 = a1;
  return v3(&v7, &v6);
}

void type metadata completion function for SiriWorkflowRunnerEvent()
{
  type metadata accessor for (action: LNAction, bundleId: String, showWhenRun: Bool, completionHandler: ())();
  if (v0 <= 0x3F)
  {
    type metadata accessor for (utterance: String, completionHandler: ())(319, &lazy cache variable for type metadata for (utterance: String, completionHandler: ()));
    if (v1 <= 0x3F)
    {
      type metadata accessor for (url: URL, bundleId: String?, completionHandler: ())();
      if (v2 <= 0x3F)
      {
        type metadata accessor for (userActivity: NSUserActivity, bundleId: String, completionHandler: ())();
        if (v3 <= 0x3F)
        {
          type metadata accessor for (intent: INIntent, completionHandler: ())(319, &lazy cache variable for type metadata for (intent: INIntent, completionHandler: ()), &lazy cache variable for type metadata for INIntent, INIntent_ptr);
          if (v4 <= 0x3F)
          {
            type metadata accessor for (intent: INIntent, completionHandler: ())(319, &lazy cache variable for type metadata for (dialogRequest: WFDialogRequest, completionHandler: ()), &lazy cache variable for type metadata for WFDialogRequest, WFDialogRequest_ptr);
            if (v5 <= 0x3F)
            {
              type metadata accessor for (intent: INIntent, completionHandler: ())(319, &lazy cache variable for type metadata for (interaction: INInteraction, completionHandler: ()), &lazy cache variable for type metadata for INInteraction, INInteraction_ptr);
              if (v6 <= 0x3F)
              {
                type metadata accessor for (utterance: String, completionHandler: ())(319, &lazy cache variable for type metadata for (bundleIdentifier: String, completionHandler: ()));
                if (v7 <= 0x3F)
                {
                  type metadata accessor for (output: WFContentCollection?, error: Error?, cancelled: Bool)();
                  if (v8 <= 0x3F)
                  {
                    type metadata accessor for (completionHandler: ())();
                    if (v9 <= 0x3F)
                    {
                      type metadata accessor for (utterance: String, completionHandler: ())(319, &lazy cache variable for type metadata for (bundleId: String, completionHandler: ()));
                      if (v10 <= 0x3F)
                      {
                        type metadata accessor for (utterance: String, completionHandler: ())(319, &lazy cache variable for type metadata for (needsPreciseLocation: Bool, completionHandler: ()));
                        if (v11 <= 0x3F)
                        {
                          type metadata accessor for (actionID: String)();
                          if (v12 <= 0x3F)
                          {
                            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
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

void type metadata accessor for (action: LNAction, bundleId: String, showWhenRun: Bool, completionHandler: ())()
{
  if (!lazy cache variable for type metadata for (action: LNAction, bundleId: String, showWhenRun: Bool, completionHandler: ()))
  {
    __chkstk_darwin(0);
    type metadata accessor for NSError(255, &lazy cache variable for type metadata for LNAction, LNAction_ptr);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_syycMd, &_syycMR);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &lazy cache variable for type metadata for (action: LNAction, bundleId: String, showWhenRun: Bool, completionHandler: ()));
    }
  }
}

void type metadata accessor for (url: URL, bundleId: String?, completionHandler: ())()
{
  if (!lazy cache variable for type metadata for (url: URL, bundleId: String?, completionHandler: ()))
  {
    type metadata accessor for URL();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSSSgMd, &_sSSSgMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_syycMd, &_syycMR);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &lazy cache variable for type metadata for (url: URL, bundleId: String?, completionHandler: ()));
    }
  }
}

void type metadata accessor for (userActivity: NSUserActivity, bundleId: String, completionHandler: ())()
{
  if (!lazy cache variable for type metadata for (userActivity: NSUserActivity, bundleId: String, completionHandler: ()))
  {
    type metadata accessor for NSError(255, &lazy cache variable for type metadata for NSUserActivity, NSUserActivity_ptr);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_syycMd, &_syycMR);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &lazy cache variable for type metadata for (userActivity: NSUserActivity, bundleId: String, completionHandler: ()));
    }
  }
}

void type metadata accessor for (intent: INIntent, completionHandler: ())(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    type metadata accessor for NSError(255, a3, a4);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_syycMd, &_syycMR);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void type metadata accessor for (output: WFContentCollection?, error: Error?, cancelled: Bool)()
{
  if (!lazy cache variable for type metadata for (output: WFContentCollection?, error: Error?, cancelled: Bool))
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSo19WFContentCollectionCSgMd, &_sSo19WFContentCollectionCSgMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pSgMd, _ss5Error_pSgMR);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &lazy cache variable for type metadata for (output: WFContentCollection?, error: Error?, cancelled: Bool));
    }
  }
}

void type metadata accessor for (completionHandler: ())()
{
  if (!lazy cache variable for type metadata for (completionHandler: ()))
  {
    v0 = type metadata accessor for ()();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for (completionHandler: ()));
    }
  }
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

void type metadata accessor for (utterance: String, completionHandler: ())(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_syycMd, &_syycMR);
    OUTLINED_FUNCTION_20_4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void *type metadata accessor for (actionID: String)()
{
  result = lazy cache variable for type metadata for (actionID: String);
  if (!lazy cache variable for type metadata for (actionID: String))
  {
    result = &type metadata for String;
    atomic_store(&type metadata for String, &lazy cache variable for type metadata for (actionID: String));
  }

  return result;
}

void type metadata completion function for AnonymousSiriWorkflowRunnerClientDelegate()
{
  type metadata accessor for AsyncStream<SiriWorkflowRunnerEvent>.Continuation();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for AsyncStream<SiriWorkflowRunnerEvent>.Continuation()
{
  if (!lazy cache variable for type metadata for AsyncStream<SiriWorkflowRunnerEvent>.Continuation)
  {
    type metadata accessor for SiriWorkflowRunnerEvent(255);
    v0 = type metadata accessor for AsyncStream.Continuation();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AsyncStream<SiriWorkflowRunnerEvent>.Continuation);
    }
  }
}

uint64_t sub_172430()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_17247C()
{

  return _swift_deallocObject(v0, 24, 7);
}

_WORD *OUTLINED_FUNCTION_5_28(_WORD *result)
{
  *(v2 - 136) = v1;
  *result = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_6_30()
{
  v2 = *(v0 - 136);
}

uint64_t OUTLINED_FUNCTION_7_29@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v2 - 128) + a1;
  return *(v2 - 88);
}

uint64_t OUTLINED_FUNCTION_11_25()
{
  v2 = *(v0 - 120);
  v3 = *(v0 - 88);

  return AsyncStream.Continuation.yield(_:)();
}

uint64_t OUTLINED_FUNCTION_20_17(uint64_t result)
{
  *(result + 16) = v2;
  *(result + 24) = v1;
  v7 = *(v6 - 96);
  *v5 = v3;
  *(v5 + 8) = v7;
  *(v5 + 16) = v4;
  *(v5 + 24) = 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_23_16()
{

  return swift_dynamicCastObjCClass();
}

uint64_t OUTLINED_FUNCTION_24_19()
{
  v2 = *(v1 - 104);
  v3 = *(*(v1 - 112) + 8);
  return v0;
}

uint64_t OUTLINED_FUNCTION_32_16()
{
  _sSo14LNActionOutputCSgs5Error_pSgIeggg_SgWOy_0(v0);
}

uint64_t OUTLINED_FUNCTION_36_12(uint64_t a1)
{
  *(v2 + 32) = v1;
  *(v2 + 40) = a1;

  return swift_storeEnumTagMultiPayload();
}

Swift::Bool __swiftcall AppInstallInfoProvider.isShortcutsAppInstalled()()
{
  v0 = objc_allocWithZone(LSApplicationRecord);
  v1 = @nonobjc LSApplicationRecord.init(bundleIdentifier:allowPlaceholder:)(0xD000000000000013, 0x800000000022F740, 0);
  v3 = v1;
  if (!v1)
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Logger.voiceCommands);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_0, v3, v4, "#SiriLinkFlowPlugin cannot find application record for Shortcuts", v5, 2u);
    }

    goto LABEL_14;
  }

  v6 = [v1 applicationState];
  v7 = [v6 isInstalled];

  if ((v7 & 1) == 0)
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logger.voiceCommands);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_0, v10, v11, "#SiriLinkFlowPlugin Shortcuts app is not installed on device", v12, 2u);
    }

LABEL_14:
    v8 = 0;
    goto LABEL_15;
  }

  v8 = 1;
LABEL_15:

  return v8;
}

uint64_t UsoVoiceCommandsCustomTask.getArguments()()
{
  v2 = v1;
  v3 = v0;
  if (one-time initialization token for voiceCommands != -1)
  {
    goto LABEL_74;
  }

LABEL_2:
  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.voiceCommands);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *&v83[0] = swift_slowAlloc();
    *v7 = 136315394;
    v8 = (*(*v3 + 104))();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, v83);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    v12 = (*(*v3 + 112))(v11);
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, v83);

    *(v7 + 14) = v14;
    _os_log_impl(&dword_0, v5, v6, "Attempting to convert USOGraph for verb: %s bundleId: %s", v7, 0x16u);
    swift_arrayDestroy();
  }

  if (!*(v3 + 16))
  {
    v68 = type metadata accessor for TransformationError();
    lazy protocol witness table accessor for type TransformationError and conformance TransformationError();
    swift_allocError();
    *v69 = 0xD000000000000016;
    v69[1] = 0x80000000002343C0;
    OUTLINED_FUNCTION_21_2(v68);
    (*(v70 + 104))();
    return swift_willThrow();
  }

  v3 = UsoTask.arguments.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayypGMd, &_sSayypGMR);
  v77 = Dictionary.init(dictionaryLiteral:)();
  v15 = 0;
  v16 = v3 + 64;
  v73 = v3 + 64;
  v74 = v3;
  v17 = 1 << *(v3 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(v3 + 64);
  v20 = (v17 + 63) >> 6;
  v71 = v2;
  v72 = v20;
  if (!v19)
  {
LABEL_8:
    while (1)
    {
      v21 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v21 >= v20)
      {

        return v77;
      }

      v19 = *(v16 + 8 * v21);
      ++v15;
      if (v19)
      {
        v15 = v21;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  while (1)
  {
LABEL_12:
    v75 = v19;
    v76 = v15;
    v22 = __clz(__rbit64(v19)) | (v15 << 6);
    v23 = (*(v74 + 48) + 16 * v22);
    v78 = *v23;
    v80 = v23[1];
    v24 = *(*(v74 + 56) + 8 * v22);
    if (v24 >> 62)
    {
      v3 = _CocoaArrayWrapper.endIndex.getter();
      if (!v3)
      {
        goto LABEL_48;
      }

LABEL_14:
      if (v3 >= 1)
      {

        v2 = 0;
        v25 = _swiftEmptyArrayStorage;
        while (1)
        {
          if ((v24 & 0xC000000000000001) != 0)
          {
            specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v26 = *(v24 + 8 * v2 + 32);
          }

          v27 = dispatch thunk of UsoValue.getAsPrimitiveValueString()();
          if (v28)
          {
            v29 = v27;
            v30 = v28;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              OUTLINED_FUNCTION_3_41();
              v25 = v43;
            }

            v31 = v25[2];
            if (v31 >= v25[3] >> 1)
            {
              OUTLINED_FUNCTION_2_46();
              v25 = v44;
            }

            v25[2] = v31 + 1;
            v32 = &v25[2 * v31];
            v32[4] = v29;
            v32[5] = v30;
          }

          if (dispatch thunk of UsoValue.getAsEntity()())
          {
            v33 = UsoEntity.attributes.getter();

            if (*(v33 + 16) && (v34 = specialized __RawDictionaryStorage.find<A>(_:)(0x6156676E69727473, 0xEB0000000065756CLL), (v35 & 1) != 0))
            {
              v36 = *(*(v33 + 56) + 8 * v34);

              if (v36 >> 62)
              {
                if (!_CocoaArrayWrapper.endIndex.getter())
                {
LABEL_45:

                  goto LABEL_41;
                }
              }

              else if (!*(&dword_10 + (v36 & 0xFFFFFFFFFFFFFF8)))
              {
                goto LABEL_45;
              }

              if ((v36 & 0xC000000000000001) != 0)
              {
                specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (!*(&dword_10 + (v36 & 0xFFFFFFFFFFFFFF8)))
                {
                  goto LABEL_70;
                }

                v37 = *(v36 + 32);
              }

              v38 = dispatch thunk of UsoValue.getAsPrimitiveValueString()();
              if (v39)
              {
                v40 = v39;
                v79 = v38;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  OUTLINED_FUNCTION_3_41();
                  v25 = v45;
                }

                v41 = v25[2];
                if (v41 >= v25[3] >> 1)
                {
                  OUTLINED_FUNCTION_2_46();
                  v25 = v46;
                }

                v25[2] = v41 + 1;
                v42 = &v25[2 * v41];
                v42[4] = v79;
                v42[5] = v40;
                goto LABEL_41;
              }
            }

            else
            {
            }
          }

LABEL_41:
          if (v3 == ++v2)
          {

            v2 = v71;
            goto LABEL_49;
          }
        }
      }

LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      swift_once();
      goto LABEL_2;
    }

    v3 = *(&dword_10 + (v24 & 0xFFFFFFFFFFFFFF8));
    if (v3)
    {
      goto LABEL_14;
    }

LABEL_48:

    v25 = _swiftEmptyArrayStorage;
LABEL_49:
    v3 = v25[2];
    if (v3)
    {
      v84 = _swiftEmptyArrayStorage;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
      v47 = v84;
      v48 = v25 + 5;
      do
      {
        v81 = *(v48 - 1);
        v82 = *v48;

        swift_dynamicCast();
        v84 = v47;
        v50 = v47[2];
        v49 = v47[3];
        if (v50 >= v49 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v49 > 1), v50 + 1, 1);
          v47 = v84;
        }

        v47[2] = v50 + 1;
        outlined init with take of Any(v83, &v47[4 * v50 + 4]);
        v48 += 2;
        --v3;
      }

      while (v3);
    }

    else
    {

      v47 = _swiftEmptyArrayStorage;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v83[0] = v77;
    v52 = specialized __RawDictionaryStorage.find<A>(_:)(v78, v80);
    v54 = *(v77 + 16);
    v55 = (v53 & 1) == 0;
    v56 = v54 + v55;
    if (__OFADD__(v54, v55))
    {
      goto LABEL_71;
    }

    v3 = v52;
    v57 = v53;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSSayypGGMd, &_ss17_NativeDictionaryVySSSayypGGMR);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v56))
    {
      break;
    }

    v16 = v73;
LABEL_61:
    v60 = *&v83[0];
    v77 = *&v83[0];
    if (v57)
    {
      v61 = *(*&v83[0] + 56);
      v62 = *(v61 + 8 * v3);
      *(v61 + 8 * v3) = v47;
    }

    else
    {
      *(*&v83[0] + 8 * (v3 >> 6) + 64) |= 1 << v3;
      v63 = (v60[6] + 16 * v3);
      *v63 = v78;
      v63[1] = v80;
      *(v60[7] + 8 * v3) = v47;
      v64 = v60[2];
      v65 = __OFADD__(v64, 1);
      v66 = v64 + 1;
      if (v65)
      {
        goto LABEL_73;
      }

      v60[2] = v66;
    }

    v15 = v76;
    v19 = (v75 - 1) & v75;
    v20 = v72;
    if (!v19)
    {
      goto LABEL_8;
    }
  }

  v58 = specialized __RawDictionaryStorage.find<A>(_:)(v78, v80);
  v16 = v73;
  if ((v57 & 1) == (v59 & 1))
  {
    v3 = v58;
    goto LABEL_61;
  }

  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t UsoVoiceCommandsCustomTask.verb.getter()
{
  if (*(v0 + 16))
  {
    return UsoTask.verbString.getter();
  }

  else
  {
    return 0;
  }
}

uint64_t UsoVoiceCommandsCustomTask.bundleId.getter()
{
  if (!*(v0 + 16))
  {
    return 0;
  }

  UsoTask.baseEntityAsString.getter();
  lazy protocol witness table accessor for type String and conformance String();
  v1 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  return v1;
}

unint64_t UsoVoiceCommandsCustomTask.bundleIdWithCustomIntentTypePrefix.getter()
{
  v1._countAndFlagsBits = (*(*v0 + 112))();
  String.append(_:)(v1);

  return 0xD000000000000017;
}

uint64_t UsoVoiceCommandsCustomTask.fullyQualifiedIntentWithBundleId.getter()
{
  v8 = (*(*v0 + 120))();

  v1._countAndFlagsBits = 46;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);

  v3 = (*(*v0 + 104))(v2);
  v5 = v4;

  v6._countAndFlagsBits = v3;
  v6._object = v5;
  String.append(_:)(v6);

  return v8;
}

uint64_t one-time initialization function for customIntentTransformer()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy0A8Ontology7UsoTaskCSo8INIntentCGMd, &_s13SiriUtilities11TransformerVy0A8Ontology7UsoTaskCSo8INIntentCGMR);
  __swift_allocate_value_buffer(v0, static Transformer<>.customIntentTransformer);
  __swift_project_value_buffer(v0, static Transformer<>.customIntentTransformer);
  type metadata accessor for UsoTask();
  type metadata accessor for INIntent();
  return Transformer.init(transform:)();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy0A14LinkFlowPlugin26UsoVoiceCommandsCustomTaskCSo8INIntentCGMd, &_s13SiriUtilities11TransformerVy0A14LinkFlowPlugin26UsoVoiceCommandsCustomTaskCSo8INIntentCGMR);
  __swift_allocate_value_buffer(v0, static Transformer<>.customIntentTransformer);
  __swift_project_value_buffer(v0, static Transformer<>.customIntentTransformer);
  type metadata accessor for UsoVoiceCommandsCustomTask();
  type metadata accessor for INIntent();
  return Transformer.init(transform:)();
}

uint64_t closure #1 in closure #1 in variable initialization expression of static Transformer<>.customIntentTransformer@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v5 = *a1;
  type metadata accessor for UsoVoiceCommandsCustomTask();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v7 = one-time initialization token for customIntentTransformer;

  if (v7 != -1)
  {
    swift_once();
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy0A14LinkFlowPlugin26UsoVoiceCommandsCustomTaskCSo8INIntentCGMd, &_s13SiriUtilities11TransformerVy0A14LinkFlowPlugin26UsoVoiceCommandsCustomTaskCSo8INIntentCGMR);
  __swift_project_value_buffer(v8, static Transformer<>.customIntentTransformer);
  v9 = Transformer.transform.getter();
  v12 = v6;
  v9(&v11, &v12);

  if (!v3)
  {
    *a2 = v11;
  }

  return result;
}

uint64_t Transformer<>.customIntentTransformer.unsafeMutableAddressor()
{
  if (one-time initialization token for customIntentTransformer != -1)
  {
    OUTLINED_FUNCTION_1_52();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy0A14LinkFlowPlugin26UsoVoiceCommandsCustomTaskCSo8INIntentCGMd, &_s13SiriUtilities11TransformerVy0A14LinkFlowPlugin26UsoVoiceCommandsCustomTaskCSo8INIntentCGMR);

  return __swift_project_value_buffer(v0, static Transformer<>.customIntentTransformer);
}

{
  if (one-time initialization token for customIntentTransformer != -1)
  {
    OUTLINED_FUNCTION_0_33();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy0A8Ontology7UsoTaskCSo8INIntentCGMd, &_s13SiriUtilities11TransformerVy0A8Ontology7UsoTaskCSo8INIntentCGMR);

  return __swift_project_value_buffer(v0, static Transformer<>.customIntentTransformer);
}

uint64_t static Transformer<>.customIntentTransformer.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for customIntentTransformer != -1)
  {
    OUTLINED_FUNCTION_0_33();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy0A8Ontology7UsoTaskCSo8INIntentCGMd, &_s13SiriUtilities11TransformerVy0A8Ontology7UsoTaskCSo8INIntentCGMR);
  __swift_project_value_buffer(v2, static Transformer<>.customIntentTransformer);
  OUTLINED_FUNCTION_21_2(v2);
  v4 = *(v3 + 16);

  return v4(a1);
}

{
  if (one-time initialization token for customIntentTransformer != -1)
  {
    OUTLINED_FUNCTION_1_52();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVy0A14LinkFlowPlugin26UsoVoiceCommandsCustomTaskCSo8INIntentCGMd, &_s13SiriUtilities11TransformerVy0A14LinkFlowPlugin26UsoVoiceCommandsCustomTaskCSo8INIntentCGMR);
  __swift_project_value_buffer(v2, static Transformer<>.customIntentTransformer);
  OUTLINED_FUNCTION_21_2(v2);
  v4 = *(v3 + 16);

  return v4(a1);
}

void closure #1 in closure #1 in variable initialization expression of static Transformer<>.customIntentTransformer(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = (*(**a1 + 96))();
  v6 = v2;
  if (v2)
  {
    return;
  }

  v7 = v5;
  v236 = a2;
  v237 = *(*v4 + 128);
  v238 = v4;
  v237();
  v8 = String._bridgeToObjectiveC()();

  v9 = INIntentCreate();

  v10 = Dictionary.init(dictionaryLiteral:)();
  v11 = v10;
  v12 = v7 + 64;
  v13 = 1 << *(v7 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(v7 + 64);
  v16 = (v13 + 63) >> 6;
  v17 = v10;
  v242 = v9;
  v239 = v7;
  v240 = v7 + 64;
  v241 = v16;
LABEL_5:
  while (2)
  {
    while (2)
    {
      while (2)
      {
        v255 = v11;
        if (v15)
        {
          goto LABEL_10;
        }

        do
        {
          v18 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_238:
            __break(1u);
LABEL_239:
            __break(1u);
LABEL_240:
            __break(1u);
LABEL_241:
            __break(1u);
LABEL_242:
            __break(1u);
LABEL_243:
            __break(1u);
LABEL_244:
            __break(1u);
LABEL_245:
            __break(1u);
            goto LABEL_246;
          }

          if (v18 >= v16)
          {

            swift_isUniquelyReferenced_nonNull_native();
            *&v267 = _swiftEmptyDictionarySingleton;
            specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v11, 0x6574656D61726170, 0xEA00000000007372);
            if (one-time initialization token for voiceCommands == -1)
            {
LABEL_227:
              v208 = type metadata accessor for Logger();
              __swift_project_value_buffer(v208, static Logger.voiceCommands);

              v209 = Logger.logObject.getter();
              v210 = static os_log_type_t.debug.getter();

              if (os_log_type_enabled(v209, v210))
              {
                v211 = swift_slowAlloc();
                v212 = swift_slowAlloc();
                *&v267 = v212;
                *v211 = 136315138;
                __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
                v213 = Dictionary.description.getter();
                v215 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v213, v214, &v267);
                v9 = v242;

                *(v211 + 4) = v215;
                _os_log_impl(&dword_0, v209, v210, "Creating custom intent with parameters converted from custom USOGraph: %s", v211, 0xCu);
                __swift_destroy_boxed_opaque_existential_1Tm(v212);
              }

              v216 = objc_opt_self();
              __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
              isa = Dictionary._bridgeToObjectiveC()().super.isa;

              *&v267 = 0;
              v218 = [v216 dataWithJSONObject:isa options:1 error:&v267];

              v219 = v267;
              if (v218)
              {
                v220 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
                v222 = v221;

                v237();
                v223 = String._bridgeToObjectiveC()();

                v224 = Data._bridgeToObjectiveC()().super.isa;
                v225 = INIntentCreate();

                if (v225)
                {
                  v226 = *(*v238 + 112);
                  v227 = v226();
                  outlined bridged method (mbnn) of @objc SAUIButton.text.setter(v227, v228, v225, &selRef__setLaunchId_);
                  v229 = [v225 _metadata];
                  if (v229)
                  {
                    v230 = v229;
                    v231 = v226();
                    outlined bridged method (mbnn) of @objc SAUIButton.text.setter(v231, v232, v230, &selRef_setLaunchId_);

                    outlined consume of Data._Representation(v220, v222);
                  }

                  else
                  {

                    outlined consume of Data._Representation(v220, v222);
                  }

                  *v236 = v225;
                }

                else
                {
                  v234 = type metadata accessor for TransformationError();
                  lazy protocol witness table accessor for type TransformationError and conformance TransformationError();
                  swift_allocError();
                  *v235 = 0xD000000000000030;
                  v235[1] = 0x8000000000234440;
                  (*(*(v234 - 8) + 104))(v235, enum case for TransformationError.cannotTransform(_:), v234);
                  swift_willThrow();

                  outlined consume of Data._Representation(v220, v222);
                }
              }

              else
              {
                v233 = v219;
                _convertNSErrorToError(_:)();

                swift_willThrow();
              }

              return;
            }

LABEL_246:
            swift_once();
            goto LABEL_227;
          }

          v15 = *(v12 + 8 * v18);
          ++v6;
        }

        while (!v15);
        v6 = v18;
LABEL_10:
        v244 = (v15 - 1) & v15;
        v19 = __clz(__rbit64(v15)) | (v6 << 6);
        v20 = (*(v7 + 48) + 16 * v19);
        v21 = *v20;
        v22 = v20[1];
        v23 = *(*(v7 + 56) + 8 * v19);

        v243 = v6;
        if (!v9)
        {
          v54 = 0;
          goto LABEL_38;
        }

        v24 = [v9 _codableDescription];
        v257 = v21;
        v25 = outlined bridged method (mbgnn) of @objc INCodableDescription.attribute(byKeyPath:)(v21, v22, v24);

        if (!v25)
        {
          v54 = 0;
LABEL_37:
          v21 = v257;
LABEL_38:

          v55 = static Transformer<>.convertAllOtherParams(attribute:parameter:values:)(v54, v21, v22, v23);

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          specialized LazyMapSequence.makeIterator()(v55, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, v272);
          v9 = v272[1];
          v57 = v272[3];
          v58 = v272[4];
          v247 = v272[5];
          v250 = v272[0];
          v59 = (v272[2] + 64) >> 6;

          v258 = v255;
          while (1)
          {
            if (v58)
            {
              v253 = isUniquelyReferenced_nonNull_native;
              v60 = v58;
              v61 = v57;
              goto LABEL_46;
            }

            v62 = v57;
            do
            {
              v61 = v62 + 1;
              if (__OFADD__(v62, 1))
              {
                __break(1u);
                goto LABEL_238;
              }

              if (v61 >= v59)
              {
                goto LABEL_60;
              }

              v60 = *(v9 + v61);
              ++v62;
            }

            while (!v60);
            v253 = isUniquelyReferenced_nonNull_native;
LABEL_46:
            v63 = __clz(__rbit64(v60)) | (v61 << 6);
            v64 = (*(v250 + 48) + 16 * v63);
            v66 = *v64;
            v65 = v64[1];
            outlined init with copy of Any(*(v250 + 56) + 32 * v63, &v261);
            *&v264 = v66;
            *(&v264 + 1) = v65;
            outlined init with take of Any(&v261, &v265);
            v67 = v264;

            if (!*(&v67 + 1))
            {
LABEL_60:
              v269 = 0u;
              v267 = 0u;
              v268 = 0u;
LABEL_61:
              v12 = v240;
              v16 = v241;
              v6 = v243;
              v15 = v244;
              v17 = v258;

              outlined consume of Set<String>.Iterator._Variant();

              v11 = v258;
              v9 = v242;
              v7 = v239;
              goto LABEL_5;
            }

            v261 = v67;
            v262 = v265;
            v263 = v266;
            v247(&v267, &v261);
            outlined destroy of Siri_Nlu_External_UserDialogAct?(&v261, &_sSS3key_yp5valuetMd, &_sSS3key_yp5valuetMR);
            v68 = *(&v267 + 1);
            if (!*(&v267 + 1))
            {
              goto LABEL_61;
            }

            v69 = v267;
            outlined init with take of Any(&v268, &v264);
            v71 = specialized __RawDictionaryStorage.find<A>(_:)(v69, v68);
            v72 = v258[2];
            v73 = (v70 & 1) == 0;
            v74 = v72 + v73;
            if (__OFADD__(v72, v73))
            {
              goto LABEL_241;
            }

            v75 = v70;
            if (v258[3] >= v74)
            {
              if (v253)
              {
                if (v70)
                {
                  goto LABEL_56;
                }
              }

              else
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSypGMd, &_ss17_NativeDictionaryVySSypGMR);
                _NativeDictionary.copy()();
                if (v75)
                {
                  goto LABEL_56;
                }
              }

LABEL_52:
              v255[(v71 >> 6) + 8] |= 1 << v71;
              v78 = (v255[6] + 16 * v71);
              *v78 = v69;
              v78[1] = v68;
              outlined init with take of Any(&v264, (v255[7] + 32 * v71));
              v79 = v255[2];
              v51 = __OFADD__(v79, 1);
              v80 = v79 + 1;
              if (!v51)
              {
                v258 = v255;
                v255[2] = v80;
                goto LABEL_57;
              }

              goto LABEL_242;
            }

            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v74, v253 & 1);
            v76 = specialized __RawDictionaryStorage.find<A>(_:)(v69, v68);
            if ((v75 & 1) != (v77 & 1))
            {
              goto LABEL_258;
            }

            v71 = v76;
            if ((v75 & 1) == 0)
            {
              goto LABEL_52;
            }

LABEL_56:

            v258 = v255;
            v81 = (v255[7] + 32 * v71);
            __swift_destroy_boxed_opaque_existential_1Tm(v81);
            outlined init with take of Any(&v264, v81);
LABEL_57:
            v58 = (v60 - 1) & v60;
            isUniquelyReferenced_nonNull_native = 1;
            v57 = v61;
          }
        }

        objc_opt_self();
        v245 = v25;
        if (swift_dynamicCastObjCClass())
        {

          v26 = static Transformer<>.convertCustomObject(attribute:parameter:values:)(v25, v257, v22, v23);

          v27 = swift_isUniquelyReferenced_nonNull_native();
          v260 = v17;
          specialized LazyMapSequence.makeIterator()(v26, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, v270);
          v9 = v270[1];
          v28 = v270[3];
          v29 = v270[4];
          v246 = v270[5];
          v249 = v270[0];
          v30 = (v270[2] + 64) >> 6;

          v256 = v17;
          while (1)
          {
            if (v29)
            {
              v252 = v27;
              v31 = v29;
              v32 = v28;
            }

            else
            {
              v33 = v28;
              do
              {
                v32 = v33 + 1;
                if (__OFADD__(v33, 1))
                {
                  goto LABEL_239;
                }

                if (v32 >= v30)
                {
                  goto LABEL_62;
                }

                v31 = *(v9 + v32);
                ++v33;
              }

              while (!v31);
              v252 = v27;
            }

            v34 = __clz(__rbit64(v31)) | (v32 << 6);
            v35 = (*(v249 + 48) + 16 * v34);
            v37 = *v35;
            v36 = v35[1];
            outlined init with copy of Any(*(v249 + 56) + 32 * v34, &v261);
            *&v264 = v37;
            *(&v264 + 1) = v36;
            outlined init with take of Any(&v261, &v265);
            v38 = v264;

            if (!*(&v38 + 1))
            {
LABEL_62:
              v269 = 0u;
              v267 = 0u;
              v268 = 0u;
LABEL_63:
              v7 = v239;
              v16 = v241;
              v15 = v244;
              v11 = v256;

              outlined consume of Set<String>.Iterator._Variant();

              v17 = v256;
LABEL_89:
              v9 = v242;
              v6 = v243;
              v12 = v240;
              goto LABEL_5;
            }

            v261 = v38;
            v262 = v265;
            v263 = v266;
            v246(&v267, &v261);
            outlined destroy of Siri_Nlu_External_UserDialogAct?(&v261, &_sSS3key_yp5valuetMd, &_sSS3key_yp5valuetMR);
            v39 = *(&v267 + 1);
            if (!*(&v267 + 1))
            {
              goto LABEL_63;
            }

            v40 = v267;
            outlined init with take of Any(&v268, &v264);
            v42 = specialized __RawDictionaryStorage.find<A>(_:)(v40, v39);
            v43 = v256[2];
            v44 = (v41 & 1) == 0;
            v45 = v43 + v44;
            if (__OFADD__(v43, v44))
            {
              goto LABEL_243;
            }

            v46 = v41;
            if (v256[3] >= v45)
            {
              if (v252)
              {
                if (v41)
                {
                  goto LABEL_31;
                }
              }

              else
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSypGMd, &_ss17_NativeDictionaryVySSypGMR);
                _NativeDictionary.copy()();
                if (v46)
                {
                  goto LABEL_31;
                }
              }
            }

            else
            {
              specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v45, v252 & 1);
              v47 = specialized __RawDictionaryStorage.find<A>(_:)(v40, v39);
              if ((v46 & 1) != (v48 & 1))
              {
                goto LABEL_258;
              }

              v42 = v47;
              if (v46)
              {
LABEL_31:

                v256 = v260;
                v53 = (v260[7] + 32 * v42);
                __swift_destroy_boxed_opaque_existential_1Tm(v53);
                outlined init with take of Any(&v264, v53);
                goto LABEL_32;
              }
            }

            v260[(v42 >> 6) + 8] |= 1 << v42;
            v49 = (v260[6] + 16 * v42);
            *v49 = v40;
            v49[1] = v39;
            outlined init with take of Any(&v264, (v260[7] + 32 * v42));
            v50 = v260[2];
            v51 = __OFADD__(v50, 1);
            v52 = v50 + 1;
            if (v51)
            {
              goto LABEL_244;
            }

            v256 = v260;
            v260[2] = v52;
LABEL_32:
            v29 = (v31 - 1) & v31;
            v27 = 1;
            v28 = v32;
          }
        }

        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {

          v82 = static Transformer<>.convertEnum(attribute:parameter:values:)(v25, v257, v22, v23);

          v83 = swift_isUniquelyReferenced_nonNull_native();
          specialized LazyMapSequence.makeIterator()(v82, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, v271);
          v9 = v271[1];
          v84 = v271[3];
          v85 = v271[4];
          v248 = v271[5];
          v251 = v271[0];
          v86 = (v271[2] + 64) >> 6;

          v259 = v255;
          if (!v85)
          {
            goto LABEL_67;
          }

          while (2)
          {
            v254 = v83;
            v87 = v85;
            v88 = v84;
LABEL_72:
            v90 = __clz(__rbit64(v87)) | (v88 << 6);
            v91 = (*(v251 + 48) + 16 * v90);
            v93 = *v91;
            v92 = v91[1];
            outlined init with copy of Any(*(v251 + 56) + 32 * v90, &v261);
            *&v264 = v93;
            *(&v264 + 1) = v92;
            outlined init with take of Any(&v261, &v265);
            v94 = v264;

            if (!*(&v94 + 1))
            {
LABEL_87:
              v269 = 0u;
              v267 = 0u;
              v268 = 0u;
LABEL_88:
              v7 = v239;
              v16 = v241;
              v15 = v244;
              v17 = v259;

              outlined consume of Set<String>.Iterator._Variant();

              v11 = v259;
              goto LABEL_89;
            }

            v261 = v94;
            v262 = v265;
            v263 = v266;
            v248(&v267, &v261);
            outlined destroy of Siri_Nlu_External_UserDialogAct?(&v261, &_sSS3key_yp5valuetMd, &_sSS3key_yp5valuetMR);
            v95 = *(&v267 + 1);
            if (!*(&v267 + 1))
            {
              goto LABEL_88;
            }

            v96 = v267;
            outlined init with take of Any(&v268, &v264);
            v98 = specialized __RawDictionaryStorage.find<A>(_:)(v96, v95);
            v99 = v259[2];
            v100 = (v97 & 1) == 0;
            v101 = v99 + v100;
            if (__OFADD__(v99, v100))
            {
              goto LABEL_245;
            }

            v102 = v97;
            if (v259[3] >= v101)
            {
              if (v254)
              {
                if ((v97 & 1) == 0)
                {
                  goto LABEL_78;
                }
              }

              else
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSypGMd, &_ss17_NativeDictionaryVySSypGMR);
                _NativeDictionary.copy()();
                if ((v102 & 1) == 0)
                {
                  goto LABEL_78;
                }
              }
            }

            else
            {
              specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v101, v254 & 1);
              v103 = specialized __RawDictionaryStorage.find<A>(_:)(v96, v95);
              if ((v102 & 1) != (v104 & 1))
              {
                goto LABEL_258;
              }

              v98 = v103;
              if ((v102 & 1) == 0)
              {
LABEL_78:
                v255[(v98 >> 6) + 8] |= 1 << v98;
                v105 = (v255[6] + 16 * v98);
                *v105 = v96;
                v105[1] = v95;
                outlined init with take of Any(&v264, (v255[7] + 32 * v98));
                v106 = v255[2];
                v51 = __OFADD__(v106, 1);
                v107 = v106 + 1;
                if (v51)
                {
                  __break(1u);
                  goto LABEL_248;
                }

                v259 = v255;
                v255[2] = v107;
                goto LABEL_83;
              }
            }

            v259 = v255;
            v108 = (v255[7] + 32 * v98);
            __swift_destroy_boxed_opaque_existential_1Tm(v108);
            outlined init with take of Any(&v264, v108);
LABEL_83:
            v85 = (v87 - 1) & v87;
            v83 = 1;
            v84 = v88;
            if (v85)
            {
              continue;
            }

            break;
          }

LABEL_67:
          v89 = v84;
          do
          {
            v88 = v89 + 1;
            if (__OFADD__(v89, 1))
            {
              goto LABEL_240;
            }

            if (v88 >= v86)
            {
              goto LABEL_87;
            }

            v87 = *(v9 + v88);
            ++v89;
          }

          while (!v87);
          v254 = v83;
          goto LABEL_72;
        }

        objc_opt_self();
        if (!swift_dynamicCastObjCClass())
        {
          v54 = v25;
          goto LABEL_37;
        }

        if (!*(v23 + 16) || (outlined init with copy of Any(v23 + 32, &v267), (swift_dynamicCast() & 1) == 0))
        {

          v16 = v241;
          v15 = v244;
          v11 = v255;
          continue;
        }

        break;
      }

      v109 = v264;
      if ([v25 valueType] != &dword_18 + 3)
      {
        v127 = String.lowercased()();

        v128 = v127._countAndFlagsBits == 97 && v127._object == 0xE100000000000000;
        if (v128 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          v129 = v6;

          *(&v268 + 1) = &type metadata for Int;
          *&v267 = 1;
          outlined init with take of Any(&v267, &v264);
          v130 = swift_isUniquelyReferenced_nonNull_native();
          *&v261 = v255;
          v131 = specialized __RawDictionaryStorage.find<A>(_:)(v257, v22);
          v133 = v255[2];
          v134 = (v132 & 1) == 0;
          v135 = v133 + v134;
          if (!__OFADD__(v133, v134))
          {
            v123 = v131;
            v136 = v132;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSypGMd, &_ss17_NativeDictionaryVySSypGMR);
            if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v130, v135))
            {
              v137 = specialized __RawDictionaryStorage.find<A>(_:)(v257, v22);
              v12 = v240;
              if ((v136 & 1) != (v138 & 1))
              {
                goto LABEL_258;
              }

              v123 = v137;
            }

            else
            {
              v12 = v240;
            }

            v6 = v129;
            v11 = v261;
            if ((v136 & 1) == 0)
            {
              *(v261 + 8 * (v123 >> 6) + 64) |= 1 << v123;
              v143 = (v11[6] + 16 * v123);
              *v143 = v257;
              v143[1] = v22;
              outlined init with take of Any(&v264, (v11[7] + 32 * v123));
              v144 = v11[2];
              v51 = __OFADD__(v144, 1);
              v141 = v144 + 1;
              if (!v51)
              {
LABEL_122:
                v11[2] = v141;

                goto LABEL_123;
              }

LABEL_251:
              __break(1u);
            }

            goto LABEL_120;
          }

LABEL_249:
          __break(1u);
LABEL_250:
          __break(1u);
          goto LABEL_251;
        }

        v145 = v127._countAndFlagsBits == 6647407 && v127._object == 0xE300000000000000;
        if (v145 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          v146 = v6;

          *(&v268 + 1) = &type metadata for Int;
          *&v267 = 1;
          outlined init with take of Any(&v267, &v264);
          v147 = swift_isUniquelyReferenced_nonNull_native();
          *&v261 = v255;
          v148 = specialized __RawDictionaryStorage.find<A>(_:)(v257, v22);
          v150 = v255[2];
          v151 = (v149 & 1) == 0;
          v152 = v150 + v151;
          if (__OFADD__(v150, v151))
          {
            __break(1u);
          }

          else
          {
            v123 = v148;
            v153 = v149;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSypGMd, &_ss17_NativeDictionaryVySSypGMR);
            if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v147, v152))
            {
              v154 = specialized __RawDictionaryStorage.find<A>(_:)(v257, v22);
              v12 = v240;
              if ((v153 & 1) != (v155 & 1))
              {
                goto LABEL_258;
              }

              v123 = v154;
            }

            else
            {
              v12 = v240;
            }

            v6 = v146;
            v11 = v261;
            if (v153)
            {
              goto LABEL_120;
            }

            *(v261 + 8 * (v123 >> 6) + 64) |= 1 << v123;
            v156 = (v11[6] + 16 * v123);
            *v156 = v257;
            v156[1] = v22;
            outlined init with take of Any(&v264, (v11[7] + 32 * v123));
            v157 = v11[2];
            v51 = __OFADD__(v157, 1);
            v141 = v157 + 1;
            if (!v51)
            {
              goto LABEL_122;
            }
          }

          __break(1u);
          goto LABEL_254;
        }

        v158 = v127._countAndFlagsBits == 7305076 && v127._object == 0xE300000000000000;
        if (v158 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          v159 = v6;

          *(&v268 + 1) = &type metadata for Int;
          *&v267 = 2;
          outlined init with take of Any(&v267, &v264);
          v160 = swift_isUniquelyReferenced_nonNull_native();
          *&v261 = v255;
          v161 = specialized __RawDictionaryStorage.find<A>(_:)(v257, v22);
          v163 = v255[2];
          v164 = (v162 & 1) == 0;
          v165 = v163 + v164;
          if (!__OFADD__(v163, v164))
          {
            v166 = v161;
            v167 = v162;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSypGMd, &_ss17_NativeDictionaryVySSypGMR);
            if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v160, v165))
            {
              v168 = specialized __RawDictionaryStorage.find<A>(_:)(v257, v22);
              v12 = v240;
              if ((v167 & 1) != (v169 & 1))
              {
                goto LABEL_258;
              }

              v166 = v168;
            }

            else
            {
              v12 = v240;
            }

            v6 = v159;
            v11 = v261;
            if (v167)
            {
              v170 = (*(v261 + 56) + 32 * v166);
              __swift_destroy_boxed_opaque_existential_1Tm(v170);
              outlined init with take of Any(&v264, v170);
            }

            else
            {
              specialized _NativeDictionary._insert(at:key:value:)(v166, v257, v22, &v264, v261);
            }

            v15 = v244;
            v17 = v11;
            v7 = v239;
            v16 = v241;
            continue;
          }

LABEL_254:
          __break(1u);
          goto LABEL_255;
        }

        v171 = v127._countAndFlagsBits == 0x6565726874 && v127._object == 0xE500000000000000;
        if (v171 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          *(&v268 + 1) = &type metadata for Int;
          *&v267 = 3;
          outlined init with take of Any(&v267, &v264);
          v172 = swift_isUniquelyReferenced_nonNull_native();
          *&v261 = v255;
          v173 = specialized __RawDictionaryStorage.find<A>(_:)(v257, v22);
          v175 = v255[2];
          v176 = (v174 & 1) == 0;
          v177 = v175 + v176;
          if (__OFADD__(v175, v176))
          {
LABEL_255:
            __break(1u);
LABEL_256:
            __break(1u);
LABEL_257:
            __break(1u);
            goto LABEL_258;
          }
        }

        else
        {
          v183 = v127._countAndFlagsBits == 1920298854 && v127._object == 0xE400000000000000;
          if (v183 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            *(&v268 + 1) = &type metadata for Int;
            *&v267 = 4;
            outlined init with take of Any(&v267, &v264);
            v172 = swift_isUniquelyReferenced_nonNull_native();
            *&v261 = v255;
            v173 = specialized __RawDictionaryStorage.find<A>(_:)(v257, v22);
            v184 = v255[2];
            v185 = (v174 & 1) == 0;
            v177 = v184 + v185;
            if (__OFADD__(v184, v185))
            {
              goto LABEL_256;
            }
          }

          else
          {
            v186 = v127._countAndFlagsBits == 1702259046 && v127._object == 0xE400000000000000;
            if (v186 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              *(&v268 + 1) = &type metadata for Int;
              *&v267 = 5;
              outlined init with take of Any(&v267, &v264);
              v172 = swift_isUniquelyReferenced_nonNull_native();
              *&v261 = v255;
              v173 = specialized __RawDictionaryStorage.find<A>(_:)(v257, v22);
              v187 = v255[2];
              v188 = (v174 & 1) == 0;
              v177 = v187 + v188;
              if (__OFADD__(v187, v188))
              {
                goto LABEL_257;
              }
            }

            else
            {
              v189 = v127._countAndFlagsBits == 7891315 && v127._object == 0xE300000000000000;
              if (v189 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                *(&v268 + 1) = &type metadata for Int;
                *&v267 = 6;
                outlined init with take of Any(&v267, &v264);
                v172 = swift_isUniquelyReferenced_nonNull_native();
                *&v261 = v255;
                v173 = specialized __RawDictionaryStorage.find<A>(_:)(v257, v22);
                v190 = v255[2];
                v191 = (v174 & 1) == 0;
                v177 = v190 + v191;
                if (__OFADD__(v190, v191))
                {
                  goto LABEL_259;
                }
              }

              else
              {
                v192 = v127._countAndFlagsBits == 0x6E65766573 && v127._object == 0xE500000000000000;
                if (v192 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  *(&v268 + 1) = &type metadata for Int;
                  *&v267 = 7;
                  outlined init with take of Any(&v267, &v264);
                  v172 = swift_isUniquelyReferenced_nonNull_native();
                  *&v261 = v255;
                  v173 = specialized __RawDictionaryStorage.find<A>(_:)(v257, v22);
                  v193 = v255[2];
                  v194 = (v174 & 1) == 0;
                  v177 = v193 + v194;
                  if (__OFADD__(v193, v194))
                  {
                    goto LABEL_260;
                  }
                }

                else
                {
                  v195 = v127._countAndFlagsBits == 0x7468676965 && v127._object == 0xE500000000000000;
                  if (v195 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {

                    *(&v268 + 1) = &type metadata for Int;
                    *&v267 = 8;
                    outlined init with take of Any(&v267, &v264);
                    v172 = swift_isUniquelyReferenced_nonNull_native();
                    *&v261 = v255;
                    v173 = specialized __RawDictionaryStorage.find<A>(_:)(v257, v22);
                    v196 = v255[2];
                    v197 = (v174 & 1) == 0;
                    v177 = v196 + v197;
                    if (__OFADD__(v196, v197))
                    {
                      goto LABEL_261;
                    }
                  }

                  else
                  {
                    v198 = v127._countAndFlagsBits == 1701734766 && v127._object == 0xE400000000000000;
                    if (!v198 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                    {
                      if (v127._countAndFlagsBits == 7234932 && v127._object == 0xE300000000000000)
                      {
                      }

                      else
                      {
                        v202 = _stringCompareWithSmolCheck(_:_:expecting:)();

                        if ((v202 & 1) == 0)
                        {
                          if (one-time initialization token for voiceCommands != -1)
                          {
                            swift_once();
                          }

                          v203 = type metadata accessor for Logger();
                          __swift_project_value_buffer(v203, static Logger.voiceCommands);
                          v204 = Logger.logObject.getter();
                          v205 = static os_log_type_t.error.getter();
                          if (os_log_type_enabled(v204, v205))
                          {
                            v206 = swift_slowAlloc();
                            *v206 = 0;
                            _os_log_impl(&dword_0, v204, v205, "Rudimentary conversion of #s 1-10 are supported, Custom NL models will do the conversion in the future", v206, 2u);
                          }

                          v207 = static Transformer<>.convertAllOtherParams(attribute:parameter:values:)(v25, v257, v22, v23);

                          v11 = specialized Dictionary.merging(_:uniquingKeysWith:)(v207, v255);

                          goto LABEL_164;
                        }
                      }

                      *(&v268 + 1) = &type metadata for Int;
                      *&v267 = 10;
                      outlined init with take of Any(&v267, &v264);
                      swift_isUniquelyReferenced_nonNull_native();
                      *&v261 = v255;
                      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v264, v257, v22);

                      v11 = v261;
LABEL_164:
                      v17 = v11;
                      v9 = v242;
                      v6 = v243;
                      v7 = v239;
                      v12 = v240;
                      v16 = v241;
                      v15 = v244;
                      continue;
                    }

                    *(&v268 + 1) = &type metadata for Int;
                    *&v267 = 9;
                    outlined init with take of Any(&v267, &v264);
                    v172 = swift_isUniquelyReferenced_nonNull_native();
                    *&v261 = v255;
                    v173 = specialized __RawDictionaryStorage.find<A>(_:)(v257, v22);
                    v199 = v255[2];
                    v200 = (v174 & 1) == 0;
                    v177 = v199 + v200;
                    if (__OFADD__(v199, v200))
                    {
                      goto LABEL_262;
                    }
                  }
                }
              }
            }
          }
        }

        v178 = v173;
        v179 = v174;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSypGMd, &_ss17_NativeDictionaryVySSypGMR);
        if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v172, v177))
        {
          v180 = specialized __RawDictionaryStorage.find<A>(_:)(v257, v22);
          if ((v179 & 1) != (v181 & 1))
          {
            goto LABEL_258;
          }

          v178 = v180;
        }

        v11 = v261;
        if (v179)
        {
          v182 = (*(v261 + 56) + 32 * v178);
          __swift_destroy_boxed_opaque_existential_1Tm(v182);
          outlined init with take of Any(&v264, v182);
        }

        else
        {
          specialized _NativeDictionary._insert(at:key:value:)(v178, v257, v22, &v264, v261);
        }

        goto LABEL_164;
      }

      break;
    }

    v110 = v6;

    if (one-time initialization token for voiceCommands != -1)
    {
      swift_once();
    }

    v111 = type metadata accessor for Logger();
    __swift_project_value_buffer(v111, static Logger.voiceCommands);
    v112 = Logger.logObject.getter();
    v113 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v112, v113))
    {
      v114 = swift_slowAlloc();
      *v114 = 0;
      _os_log_impl(&dword_0, v112, v113, "Location resolution not currently supported with Custom NL", v114, 2u);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SStGMd, &_ss23_ContiguousArrayStorageCySS_SStGMR);
    v115 = swift_allocObject();
    *(v115 + 16) = xmmword_216850;
    *(v115 + 32) = 1701667182;
    *(v115 + 40) = 0xE400000000000000;
    *(v115 + 48) = v109;
    v116 = Dictionary.init(dictionaryLiteral:)();
    *(&v268 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
    *&v267 = v116;
    outlined init with take of Any(&v267, &v264);
    v117 = swift_isUniquelyReferenced_nonNull_native();
    *&v261 = v255;
    v118 = specialized __RawDictionaryStorage.find<A>(_:)(v257, v22);
    v120 = v255[2];
    v121 = (v119 & 1) == 0;
    v122 = v120 + v121;
    if (__OFADD__(v120, v121))
    {
LABEL_248:
      __break(1u);
      goto LABEL_249;
    }

    v123 = v118;
    v124 = v119;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSypGMd, &_ss17_NativeDictionaryVySSypGMR);
    if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(v117, v122))
    {
      v12 = v240;
LABEL_114:
      v6 = v110;
      v11 = v261;
      if ((v124 & 1) == 0)
      {
        *(v261 + 8 * (v123 >> 6) + 64) |= 1 << v123;
        v139 = (v11[6] + 16 * v123);
        *v139 = v257;
        v139[1] = v22;
        outlined init with take of Any(&v264, (v11[7] + 32 * v123));
        v140 = v11[2];
        v51 = __OFADD__(v140, 1);
        v141 = v140 + 1;
        if (!v51)
        {
          goto LABEL_122;
        }

        goto LABEL_250;
      }

LABEL_120:
      v142 = (v11[7] + 32 * v123);
      __swift_destroy_boxed_opaque_existential_1Tm(v142);
      outlined init with take of Any(&v264, v142);

LABEL_123:
      v7 = v239;
      v16 = v241;
      v15 = v244;
      v17 = v11;
      continue;
    }

    break;
  }

  v125 = specialized __RawDictionaryStorage.find<A>(_:)(v257, v22);
  v12 = v240;
  if ((v124 & 1) == (v126 & 1))
  {
    v123 = v125;
    goto LABEL_114;
  }

LABEL_258:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_259:
  __break(1u);
LABEL_260:
  __break(1u);
LABEL_261:
  __break(1u);
LABEL_262:
  __break(1u);
}

uint64_t static Transformer<>.convertCustomObject(attribute:parameter:values:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = Dictionary.init(dictionaryLiteral:)();
  if (a1)
  {
    if ([a1 valueType] == &stru_B8.size + 1)
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        specialized Collection.first.getter(a4, &v26);
        if (v27)
        {
          outlined init with take of Any(&v26, v28);
          v9 = a1;
          if (INCodableAttribute.supportsMultipleValues.getter())
          {
            v23 = a2;
            v10 = *(a4 + 16);
            if (v10)
            {
              v11 = a4 + 32;
              v12 = _swiftEmptyArrayStorage;
              do
              {
                outlined init with copy of Any(v11, &v26);
                if (swift_dynamicCast())
                {
                  v13 = v25[0];
                  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SSSgtGMd, &_ss23_ContiguousArrayStorageCySS_SSSgtGMR);
                  inited = swift_initStackObject();
                  *(inited + 16) = xmmword_216850;
                  strcpy((inited + 32), "displayString");
                  *(inited + 46) = -4864;
                  *(inited + 48) = v13;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
                  v15 = Dictionary.init(dictionaryLiteral:)();
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v17 = v12[2];
                    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
                    v12 = v18;
                  }

                  v16 = v12[2];
                  if (v16 >= v12[3] >> 1)
                  {
                    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
                    v12 = v19;
                  }

                  v12[2] = v16 + 1;
                  v12[v16 + 4] = v15;
                }

                v11 += 32;
                --v10;
              }

              while (v10);
            }

            else
            {
              v12 = _swiftEmptyArrayStorage;
            }

            v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySDyS2SSgGGMd, &_sSaySDyS2SSgGGMR);
            *&v26 = v12;
            outlined init with take of Any(&v26, v25);

            swift_isUniquelyReferenced_nonNull_native();
            v24 = v8;
            specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v25, v23, a3);
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
            v20 = swift_initStackObject();
            *(v20 + 16) = xmmword_216850;
            strcpy((v20 + 32), "displayString");
            *(v20 + 46) = -4864;
            outlined init with copy of Any(v28, v20 + 48);

            v21 = Dictionary.init(dictionaryLiteral:)();
            v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
            *&v26 = v21;
            outlined init with take of Any(&v26, v25);
            swift_isUniquelyReferenced_nonNull_native();
            v24 = v8;
            specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v25, a2, a3);
          }

          v8 = v24;
          __swift_destroy_boxed_opaque_existential_1Tm(v28);
        }

        else
        {
          outlined destroy of Siri_Nlu_External_UserDialogAct?(&v26, &_sypSgMd, &_sypSgMR);
        }
      }
    }
  }

  return v8;
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

uint64_t static Transformer<>.convertEnum(attribute:parameter:values:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = &type metadata for Any;
  v9 = Dictionary.init(dictionaryLiteral:)();
  if (!a1)
  {
    return v9;
  }

  if ([a1 valueType] != &stru_20.vmsize + 1)
  {
    return v9;
  }

  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (!v10)
  {
    return v9;
  }

  v11 = v10;
  v12 = a1;
  v44 = v11;
  if ((INCodableAttribute.supportsMultipleValues.getter() & 1) == 0)
  {
    specialized Collection.first.getter(a4, &v48);
    if (!*(&v49 + 1))
    {

      outlined destroy of Siri_Nlu_External_UserDialogAct?(&v48, &_sypSgMd, &_sypSgMR);
      return v9;
    }

    if (swift_dynamicCast())
    {
      v48 = v45[0];
      *&v45[0] = 32;
      *(&v45[0] + 1) = 0xE100000000000000;
      v46 = 0;
      v47 = 0xE000000000000000;
      lazy protocol witness table accessor for type String and conformance String();
      StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

      v30 = String.lowercased()();

      v31 = outlined bridged method (mbnn) of @objc INCodableEnumAttribute.value(withName:)(v30._countAndFlagsBits, v30._object, v11);
      if (v31)
      {
        v32 = v31;
        v33 = outlined bridged method (pb) of @objc INIntentSlotDescription.name.getter(v31);
        if (v34)
        {
          *(&v49 + 1) = &type metadata for String;
          *&v48 = v33;
          *(&v48 + 1) = v34;
          outlined init with take of Any(&v48, v45);

          swift_isUniquelyReferenced_nonNull_native();
          v46 = v9;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v45, a2, a3);

LABEL_25:

          return v46;
        }

        v48 = 0u;
        v49 = 0u;

        outlined destroy of Siri_Nlu_External_UserDialogAct?(&v48, &_sypSgMd, &_sypSgMR);
        v35 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
        if (v36)
        {
          v37 = v35;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v46 = v9;
          v39 = *(v9 + 24);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSypGMd, &_ss17_NativeDictionaryVySSypGMR);
          _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v39);
          v9 = v46;
          v40 = *(*(v46 + 48) + 16 * v37 + 8);

          outlined init with take of Any((*(v46 + 56) + 32 * v37), v45);
          _NativeDictionary._delete(at:)();
        }

        else
        {
          memset(v45, 0, sizeof(v45));
        }

        outlined destroy of Siri_Nlu_External_UserDialogAct?(v45, &_sypSgMd, &_sypSgMR);
      }
    }

    return v9;
  }

  v41 = v12;
  v42 = v9;
  v43 = a3;
  v13 = *(a4 + 16);
  if (!v13)
  {
    v15 = _swiftEmptyArrayStorage;
LABEL_24:
    *(&v49 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    *&v48 = v15;
    outlined init with take of Any(&v48, v45);

    swift_isUniquelyReferenced_nonNull_native();
    v46 = v42;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v45, a2, v43);

    goto LABEL_25;
  }

  v14 = a4 + 32;
  v15 = _swiftEmptyArrayStorage;
  v16 = v11;
  while (1)
  {
    outlined init with copy of Any(v14, &v48);
    if (swift_dynamicCast())
    {
      break;
    }

LABEL_16:
    v14 += 32;
    if (!--v13)
    {
      goto LABEL_24;
    }
  }

  v17 = v8;
  v48 = v45[0];
  *&v45[0] = 32;
  *(&v45[0] + 1) = 0xE100000000000000;
  v46 = 0;
  v47 = 0xE000000000000000;
  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v18 = String.lowercased()();

  v19 = outlined bridged method (mbgnn) of @objc INCodableEnumAttribute.value(withName:)(v18._countAndFlagsBits, v18._object, v16);
  if (!v19)
  {

    goto LABEL_16;
  }

  v20 = v19;
  result = outlined bridged method (pb) of @objc INIntentSlotDescription.name.getter(v19);
  if (v22)
  {
    v23 = result;
    v24 = v22;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v27 = v15[2];
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v15 = v28;
    }

    v25 = v15[2];
    if (v25 >= v15[3] >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v15 = v29;
    }

    v15[2] = v25 + 1;
    v26 = &v15[2 * v25];
    v26[4] = v23;
    v26[5] = v24;
    v8 = v17;
    v16 = v44;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t static Transformer<>.convertAllOtherParams(attribute:parameter:values:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = Dictionary.init(dictionaryLiteral:)();
  if (a1)
  {
    v9 = a1;
    if (INCodableAttribute.supportsMultipleValues.getter())
    {
      v23 = v9;
      v10 = *(a4 + 16);
      if (v10)
      {
        v11 = a4 + 32;
        v12 = _swiftEmptyArrayStorage;
        do
        {
          outlined init with copy of Any(v11, &v26);
          if (swift_dynamicCast())
          {
            v13 = v25[0];
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v15 = v12[2];
              specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
              v12 = v16;
            }

            v14 = v12[2];
            if (v14 >= v12[3] >> 1)
            {
              specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
              v12 = v17;
            }

            v12[2] = v14 + 1;
            *&v12[2 * v14 + 4] = v13;
          }

          v11 += 32;
          --v10;
        }

        while (v10);
      }

      else
      {
        v12 = _swiftEmptyArrayStorage;
      }

      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      *&v26 = v12;
      outlined init with take of Any(&v26, v25);

      swift_isUniquelyReferenced_nonNull_native();
      v24 = v8;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v25, a2, a3);

      goto LABEL_25;
    }
  }

  specialized Collection.first.getter(a4, &v26);
  if (v27)
  {
    if (swift_dynamicCast())
    {
      v27 = &type metadata for String;
      v26 = v25[0];
      outlined init with take of Any(&v26, v25);

      swift_isUniquelyReferenced_nonNull_native();
      v24 = v8;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v25, a2, a3);
LABEL_25:

      return v24;
    }
  }

  else
  {
    outlined destroy of Siri_Nlu_External_UserDialogAct?(&v26, &_sypSgMd, &_sypSgMR);
  }

  if (one-time initialization token for voiceCommands != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static Logger.voiceCommands);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_0, v19, v20, "Not all parameter types are supported in custom NL -> INIntent conversion.", v21, 2u);
  }

  return v8;
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
  v36 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (!*(v5 + 16))
  {
LABEL_34:

LABEL_35:
    *v3 = v8;
    return result;
  }

  v35 = v3;
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
        goto LABEL_37;
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

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      specialized UnsafeMutablePointer.assign(repeating:count:)(0, (v34 + 63) >> 6, v5 + 64);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
    goto LABEL_34;
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
    v23 = (*(v5 + 56) + 32 * v19);
    if (v36)
    {
      outlined init with take of Any(v23, v37);
    }

    else
    {
      outlined init with copy of Any(v23, v37);
    }

    v24 = *(v8 + 40);
    Hasher.init(_seed:)();
    String.hash(into:)();
    result = Hasher._finalize()();
    v25 = -1 << *(v8 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    v33 = (*(v8 + 48) + 16 * v28);
    *v33 = v21;
    v33[1] = v22;
    result = outlined init with take of Any(v37, (*(v8 + 56) + 32 * v28));
    ++*(v8 + 16);
    if (!v13)
    {
      goto LABEL_9;
    }
  }

  v29 = 0;
  v30 = (63 - v25) >> 6;
  while (++v27 != v30 || (v29 & 1) == 0)
  {
    v31 = v27 == v30;
    if (v27 == v30)
    {
      v27 = 0;
    }

    v29 |= v31;
    v32 = *(v15 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_26;
    }
  }

LABEL_37:
  __break(1u);
  return result;
}

unint64_t type metadata accessor for INIntent()
{
  result = lazy cache variable for type metadata for INIntent;
  if (!lazy cache variable for type metadata for INIntent)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for INIntent);
  }

  return result;
}

uint64_t specialized closure #1 in Dictionary.merge(_:uniquingKeysWith:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  outlined init with copy of Any(a4, a1);

  return a2;
}

uint64_t specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized closure #1 in Dictionary.merge(_:uniquingKeysWith:)((a2 + 2), *a1, a1[1], (a1 + 2));
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  specialized LazyMapSequence.makeIterator()(a1, a2, a3, v32);
  v30[2] = v32[0];
  v30[3] = v32[1];
  v30[4] = v32[2];
  v31 = v33;

  while (1)
  {
    specialized LazyMapSequence.Iterator.next()(&v29);
    v7 = *(&v29 + 1);
    if (!*(&v29 + 1))
    {
      outlined consume of Set<String>.Iterator._Variant();
    }

    v8 = v29;
    outlined init with take of Any(v30, v28);
    v9 = *a5;
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(v8, v7);
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      break;
    }

    v15 = v10;
    if (v9[3] >= v14)
    {
      if (a4)
      {
        if (v10)
        {
          goto LABEL_10;
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSypGMd, &_ss17_NativeDictionaryVySSypGMR);
        _NativeDictionary.copy()();
        if (v15)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a4 & 1);
      v16 = *a5;
      v17 = specialized __RawDictionaryStorage.find<A>(_:)(v8, v7);
      if ((v15 & 1) != (v18 & 1))
      {
        goto LABEL_18;
      }

      v11 = v17;
      if (v15)
      {
LABEL_10:
        v19 = *a5;
        outlined init with copy of Any(v28, v27);
        __swift_destroy_boxed_opaque_existential_1Tm(v28);

        v20 = (v19[7] + 32 * v11);
        __swift_destroy_boxed_opaque_existential_1Tm(v20);
        outlined init with take of Any(v27, v20);
        goto LABEL_14;
      }
    }

    v21 = *a5;
    *(*a5 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v22 = (v21[6] + 16 * v11);
    *v22 = v8;
    v22[1] = v7;
    outlined init with take of Any(v28, (v21[7] + 32 * v11));
    v23 = v21[2];
    v24 = __OFADD__(v23, 1);
    v25 = v23 + 1;
    if (v24)
    {
      goto LABEL_17;
    }

    v21[2] = v25;
LABEL_14:
    a4 = 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

id outlined bridged method (mbnn) of @objc INCodableEnumAttribute.value(withName:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();

  v5 = [a3 valueWithName:v4];

  return v5;
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

uint64_t specialized LazyMapSequence.Iterator.next()@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_7:
    v9 = (v7 - 1) & v7;
    v10 = __clz(__rbit64(v7)) | (v8 << 6);
    v11 = (*(v3 + 48) + 16 * v10);
    v13 = *v11;
    v12 = v11[1];
    outlined init with copy of Any(*(v3 + 56) + 32 * v10, v19);
    *&v20 = v13;
    *(&v20 + 1) = v12;
    outlined init with take of Any(v19, &v21);

    v15 = *(&v20 + 1);
    v16 = v20;
LABEL_8:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v5;
    v1[3] = v6;
    v1[4] = v9;
    if (v15)
    {
      v18 = v1[5];
      v17 = v1[6];
      *&v19[0] = v16;
      *(&v19[0] + 1) = v15;
      v19[1] = v21;
      v19[2] = v22;
      v18(v19);
      return outlined destroy of Siri_Nlu_External_UserDialogAct?(v19, &_sSS3key_yp5valuetMd, &_sSS3key_yp5valuetMR);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    while (1)
    {
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v8 >= ((v5 + 64) >> 6))
      {
        v15 = 0;
        v16 = 0;
        v9 = 0;
        v21 = 0u;
        v22 = 0u;
        v20 = 0u;
        goto LABEL_8;
      }

      v7 = *(v4 + 8 * v8);
      ++v6;
      if (v7)
      {
        v6 = v8;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_33()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_52()
{

  return swift_once();
}

void OUTLINED_FUNCTION_2_46()
{

  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

void OUTLINED_FUNCTION_3_41()
{
  v2 = *(v0 + 16) + 1;

  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

uint64_t WorkflowWatchSnippetProvider.buildSnippetForShowAlert(dialogRequest:shortcutName:appBundleId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t WorkflowWatchSnippetProvider.buildSnippetForShowAlert(dialogRequest:shortcutName:appBundleId:)()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[2];
  v6 = v0[3];
  v7 = [objc_allocWithZone(SAAppsLaunchApp) init];
  v0[8] = v7;
  outlined bridged method (mbgnn) of @objc SAAppsLaunchApp.launchId.setter(v3, v2, v7);
  v8 = v7;
  v0[9] = specialized WorkflowWatchSnippetProvider.makeItemGroup(command:title:appBundleId:)(v8, v6, v4, v3, v2);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, _ss23_ContiguousArrayStorageCySSGMR);
  v9 = swift_allocObject();
  v0[10] = v9;
  *(v9 + 16) = xmmword_216840;
  v10 = [v5 okButton];
  v11 = [v10 title];

  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  *(v9 + 32) = v12;
  *(v9 + 40) = v14;
  v15 = [v5 cancelButton];
  v16 = v15;
  if (v15)
  {
    v17 = [v15 title];

    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;
  }

  else
  {
    v19 = 0xE000000000000000;
  }

  v20 = v0[7];
  *(v9 + 48) = v16;
  *(v9 + 56) = v19;
  v21 = *(*v20 + 168);
  v28 = (v21 + *v21);
  v22 = v21[1];
  v23 = swift_task_alloc();
  v0[11] = v23;
  *v23 = v0;
  v23[1] = WorkflowWatchSnippetProvider.buildSnippetForShowAlert(dialogRequest:shortcutName:appBundleId:);
  v24 = v0[6];
  v25 = v0[7];
  v26 = v0[5];

  return v28(v9, v26, v24);
}

{
  OUTLINED_FUNCTION_8_0();
  v1 = *v0;
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  v5 = *(v4 + 88);
  *v3 = *v0;
  *(v2 + 96) = v6;

  v7 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v7, v8, v9);
}

{
  v1 = *(v0 + 96);
  if (v1)
  {
    result = outlined bridged method (pb) of @objc SAUIConfirmationOptions.denyText.getter(*(v0 + 96));
    if (v3)
    {
      v4 = OUTLINED_FUNCTION_3_42();
      result = outlined bridged method (pb) of @objc SAUIConfirmationOptions.denyCommands.getter(v4);
      if (result)
      {
        v5 = OUTLINED_FUNCTION_4_45();

        result = outlined bridged method (pb) of @objc SAUIConfirmationOptions.confirmText.getter(v1);
        if (v6)
        {
          v7 = OUTLINED_FUNCTION_3_42();
          result = outlined bridged method (pb) of @objc SAUIConfirmationOptions.confirmCommands.getter(v7);
          if (result)
          {
            v8 = *(v0 + 72);
            v9 = OUTLINED_FUNCTION_4_45();

            result = outlined bridged method (pb) of @objc SASTItemGroup.templateItems.getter(v8);
            v24 = result;
            if (result)
            {
              v10 = v9;
              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              OUTLINED_FUNCTION_2_47(v24);
              if (v12)
              {
                OUTLINED_FUNCTION_1_53(v11);
                OUTLINED_FUNCTION_11_26();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              if (v24)
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16SASTTemplateItem_pMd, &_sSo16SASTTemplateItem_pMR);
                v13.super.isa = Array._bridgeToObjectiveC()().super.isa;
              }

              else
              {
                v13.super.isa = 0;
              }

              v15 = *(v0 + 72);
              [v15 setTemplateItems:v13.super.isa];

              result = outlined bridged method (pb) of @objc SASTItemGroup.templateItems.getter(v15);
              v25 = result;
              if (result)
              {
                v16 = *(v0 + 80);

                v17 = v5;
                specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                OUTLINED_FUNCTION_2_47(v25);
                if (v12)
                {
                  OUTLINED_FUNCTION_1_53(v18);
                  OUTLINED_FUNCTION_11_26();
                }

                specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                if (v25)
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16SASTTemplateItem_pMd, &_sSo16SASTTemplateItem_pMR);
                  v19.super.isa = Array._bridgeToObjectiveC()().super.isa;
                }

                else
                {
                  v19.super.isa = 0;
                }

                [*(v0 + 72) setTemplateItems:v19.super.isa];

                goto LABEL_20;
              }

LABEL_28:
              __break(1u);
              return result;
            }

LABEL_27:
            __break(1u);
            goto LABEL_28;
          }

LABEL_26:
          __break(1u);
          goto LABEL_27;
        }

LABEL_25:
        __break(1u);
        goto LABEL_26;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_25;
  }

  v14 = *(v0 + 80);

LABEL_20:
  v21 = *(v0 + 64);
  v20 = *(v0 + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v22 = OUTLINED_FUNCTION_64();
  *(v22 + 16) = xmmword_216010;
  *(v22 + 32) = v20;

  OUTLINED_FUNCTION_6_6();

  return v23(v22);
}

uint64_t WorkflowWatchSnippetProvider.buildSnippetForConfirmInteraction(dialogRequest:shortcutName:appBundleId:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[9] = v2;
  v1[10] = v0;
  v1[7] = v3;
  v1[8] = v4;
  v1[5] = v5;
  v1[6] = v6;
  v7 = *(*(type metadata accessor for CATOption() - 8) + 64) + 15;
  v1[11] = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v8, v9, v10);
}

{
  v1 = v0[5];
  v2 = [v1 interaction];
  v3 = [v2 intent];
  v0[12] = v3;

  v4 = [v1 interaction];
  v5 = [v4 intentResponse];
  v0[13] = v5;

  v6 = swift_task_alloc();
  v0[14] = v6;
  *v6 = v0;
  v6[1] = WorkflowWatchSnippetProvider.buildSnippetForConfirmInteraction(dialogRequest:shortcutName:appBundleId:);
  v7 = v0[10];

  return WorkflowWatchSnippetProvider.makeIntentSnippet(intent:intentResponse:shortcutName:)(v3, v5);
}

{
  OUTLINED_FUNCTION_8_0();
  v1 = *v0;
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  v5 = *(v4 + 112);
  *v3 = *v0;
  *(v2 + 120) = v6;

  v7 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v7, v8, v9);
}

{
  if (*(v0 + 120))
  {
    v2 = *(v0 + 88);
    v1 = *(v0 + 96);
    v3 = *(v0 + 80);
    type metadata accessor for RunVoiceCommandCATs();
    static CATOption.defaultMode.getter();
    v4 = CATWrapper.__allocating_init(options:globals:)();
    *(v0 + 128) = v4;
    type metadata accessor for CATButtonLabelTemplating();
    inited = swift_initStackObject();
    *(v0 + 136) = inited;
    *(inited + 16) = v4;
    v6 = [v1 verb];
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    *(v0 + 144) = v9;
    v10 = swift_task_alloc();
    *(v0 + 152) = v10;
    *v10 = v0;
    v10[1] = WorkflowWatchSnippetProvider.buildSnippetForConfirmInteraction(dialogRequest:shortcutName:appBundleId:);

    return CATButtonLabelTemplating.getYesAndCancelButtonTemplates(deviceState:intentVerb:)(v3 + 16, v7, v9);
  }

  else
  {
    v12 = *(v0 + 96);

    v13 = *(v0 + 88);

    OUTLINED_FUNCTION_6_6();

    return v14(_swiftEmptyArrayStorage);
  }
}

{
  OUTLINED_FUNCTION_8_0();
  v1 = *v0;
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  v5 = *(v4 + 168);
  *v3 = *v0;
  *(v2 + 176) = v6;

  v7 = OUTLINED_FUNCTION_4();

  return _swift_task_switch(v7, v8, v9);
}

{
  v1 = *(v0 + 176);
  if (v1)
  {
    result = outlined bridged method (pb) of @objc SAUIConfirmationOptions.denyText.getter(*(v0 + 176));
    if (v3)
    {
      v4 = OUTLINED_FUNCTION_3_42();
      result = outlined bridged method (pb) of @objc SAUIConfirmationOptions.denyCommands.getter(v4);
      if (result)
      {
        v5 = OUTLINED_FUNCTION_4_45();

        result = outlined bridged method (pb) of @objc SAUIConfirmationOptions.confirmText.getter(v1);
        if (v6)
        {
          v7 = OUTLINED_FUNCTION_3_42();
          result = outlined bridged method (pb) of @objc SAUIConfirmationOptions.confirmCommands.getter(v7);
          if (result)
          {
            v8 = *(v0 + 120);
            v9 = OUTLINED_FUNCTION_4_45();

            result = outlined bridged method (pb) of @objc SASTItemGroup.templateItems.getter(v8);
            v27 = result;
            if (result)
            {
              v10 = v9;
              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              OUTLINED_FUNCTION_2_47(v27);
              if (v12)
              {
                OUTLINED_FUNCTION_1_53(v11);
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              if (v27)
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16SASTTemplateItem_pMd, &_sSo16SASTTemplateItem_pMR);
                v13.super.isa = Array._bridgeToObjectiveC()().super.isa;
              }

              else
              {
                v13.super.isa = 0;
              }

              v19 = *(v0 + 120);
              [v19 setTemplateItems:{v13.super.isa, v27}];

              result = outlined bridged method (pb) of @objc SASTItemGroup.templateItems.getter(v19);
              v28 = result;
              if (result)
              {
                v20 = *(v0 + 160);

                v21 = v5;
                specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                OUTLINED_FUNCTION_2_47(v28);
                if (v12)
                {
                  OUTLINED_FUNCTION_1_53(v22);
                  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                }

                specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                if (v28)
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16SASTTemplateItem_pMd, &_sSo16SASTTemplateItem_pMR);
                  v23.super.isa = Array._bridgeToObjectiveC()().super.isa;
                }

                else
                {
                  v23.super.isa = 0;
                }

                v16 = *(v0 + 120);
                v18 = *(v0 + 96);
                v17 = *(v0 + 104);
                [v16 setTemplateItems:{v23.super.isa, v28}];

                goto LABEL_20;
              }

LABEL_28:
              __break(1u);
              return result;
            }

LABEL_27:
            __break(1u);
            goto LABEL_28;
          }

LABEL_26:
          __break(1u);
          goto LABEL_27;
        }

LABEL_25:
        __break(1u);
        goto LABEL_26;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_25;
  }

  v14 = *(v0 + 160);
  v16 = *(v0 + 120);
  v15 = *(v0 + 128);
  v18 = *(v0 + 96);
  v17 = *(v0 + 104);

LABEL_20:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v24 = OUTLINED_FUNCTION_64();
  *(v24 + 16) = xmmword_216010;
  *(v24 + 32) = v16;

  v25 = *(v0 + 88);

  OUTLINED_FUNCTION_6_6();

  return v26(v24);
}

uint64_t WorkflowWatchSnippetProvider.buildSnippetForConfirmInteraction(dialogRequest:shortcutName:appBundleId:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 152);
  v5 = *(*v1 + 144);
  v6 = *(*v1 + 80);
  v7 = *v1;
  v3[20] = a1;

  v8 = *(*v6 + 168);
  v15 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  v3[21] = v10;
  *v10 = v7;
  v10[1] = WorkflowWatchSnippetProvider.buildSnippetForConfirmInteraction(dialogRequest:shortcutName:appBundleId:);
  v11 = v3[10];
  v12 = v3[9];
  v13 = v3[8];

  return v15(a1, v13, v12);
}

uint64_t WorkflowWatchSnippetProvider.makeDisambiguationViews(disambiguationItems:shortcutName:appBundleId:utteranceViews:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[4] = a5;
  v6[5] = v5;
  v6[2] = a1;
  v6[3] = a4;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t WorkflowWatchSnippetProvider.makeDisambiguationViews(disambiguationItems:shortcutName:appBundleId:utteranceViews:)()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = WorkflowWatchSnippetProvider.cardSectionsFromDetailedSelectionItems(disambiguationItems:appBundleId:)(v0[2]);
  v4 = [objc_allocWithZone(SASTItemGroup) init];

  if (v3 >> 62)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16SASTTemplateItem_pMd, &_sSo16SASTTemplateItem_pMR);
    v5 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {
    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    v5 = v3;
  }

  outlined bridged method (mbnn) of @objc SASTItemGroup.templateItems.setter(v5, v4);
  v6 = v4;
  [v6 setCanUseServerTTS:1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v7 = OUTLINED_FUNCTION_64();
  *(v7 + 16) = xmmword_216010;
  *(v7 + 32) = v6;

  OUTLINED_FUNCTION_6_6();

  return v8(v7);
}

void *WorkflowWatchSnippetProvider.cardSectionsFromDetailedSelectionItems(disambiguationItems:appBundleId:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    v22 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v4 = (a1 + 80);
    do
    {
      v5 = *(v4 - 5);
      v6 = *(v4 - 4);
      v7 = *(v4 - 3);
      v8 = *(v4 - 2);
      v9 = *(v4 - 1);
      v10 = *v4;
      *&v15 = *(v4 - 6);
      *(&v15 + 1) = v5;
      v16 = v6;
      v17 = v7;
      v18 = v8;
      v19 = v9;
      v20 = v10;
      v11 = v8;

      v12 = v10;

      closure #1 in WorkflowWatchSnippetProvider.cardSectionsFromDetailedSelectionItems(disambiguationItems:appBundleId:)(&v15, &v21);
      v13 = v18;

      v4 += 7;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v14 = v22[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v2;
    }

    while (v2);
    return v22;
  }

  return result;
}

void closure #1 in WorkflowWatchSnippetProvider.cardSectionsFromDetailedSelectionItems(disambiguationItems:appBundleId:)(__int128 *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v24 = *a1;
  v25 = v2;
  v26 = a1[2];
  v27 = *(a1 + 6);
  v3 = [objc_allocWithZone(SAUIDecoratedText) init];
  v4 = specialized DisambiguationItemProtocol.toDisplayString()();
  outlined bridged method (mbnn) of @objc SAUIDecoratedText.text.setter(v4, v5, v3);
  v6 = [objc_allocWithZone(SASTCommandTemplateAction) init];
  v20 = v26;
  v7 = static SLFDisambiguationItemConverter.toDirectInvocationPayload(title:)(v24, *(&v24 + 1));
  static Device.current.getter();
  __swift_project_boxed_opaque_existential_1(v23, v23[3]);
  v8 = DeviceState.asInvocationContext.getter();
  [v8 setInputOrigin:SAInputOriginDialogButtonTapValue];
  v9 = objc_opt_self();
  v21 = v7;
  v10 = [v9 runSiriKitExecutorCommandWithContext:v8 payload:v7];
  v11 = [objc_allocWithZone(SAIntentGroupSiriKitAppSelectionState) init];
  v12 = [objc_allocWithZone(SASyncAppIdentifyingInfo) init];
  v13 = String._bridgeToObjectiveC()();
  [v12 setBundleId:v13];

  [v11 setRequestedApp:v12];
  [v10 setAppSelectionState:v11];

  v14 = [v9 wrapCommandInStartLocalRequest:v10];
  __swift_destroy_boxed_opaque_existential_1Tm(v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_216010;
  *(v15 + 32) = v14;
  v16 = v14;
  outlined bridged method (mbnn) of @objc SASTCommandTemplateAction.commands.setter(v15, v6);
  v17 = [objc_allocWithZone(SASTColumnDataListItem) init];
  [v17 setTitle:v3];
  [v17 setAction:v6];
  if (v20)
  {
    v18 = v20;
    v19 = static OutputUtils.buildNanoImage(from:)(v18);
    [v17 setImageResource:v19];
  }

  *a2 = v17;
}

uint64_t WorkflowWatchSnippetProvider.makeIntentSnippet(intent:intentResponse:shortcutName:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t WorkflowWatchSnippetProvider.makeIntentSnippet(intent:intentResponse:shortcutName:)()
{
  if (one-time initialization token for voiceCommands != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.voiceCommands);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "#WorkflowWatchSnippetProvider building intents snippet", v4, 2u);
  }

  v5 = *(v0 + 24);

  if (v5)
  {
    v6 = *(v0 + 16);
    v7 = *(v0 + 24);
    v8 = outlined bridged method (pb) of @objc INIntent.launchId.getter(v6);
    if (v9)
    {
      v10 = v8;
      v11 = v9;
      v13 = *(v0 + 24);
      v12 = *(v0 + 32);
      v14 = *(v0 + 16);
      type metadata accessor for App();

      App.__allocating_init(appIdentifier:)();
      type metadata accessor for SAIntentGroupLaunchAppWithIntent();
      v15 = v7;
      v16 = static SAIntentGroupLaunchAppWithIntent.launchAppWithIntent(app:intent:intentResponse:)();

      static LocaleUtils.siriLanguageCode()();
      v17 = String._bridgeToObjectiveC()();

      v18 = [v14 _titleForLanguage:v17];

      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;

      v22 = v16;
      v23 = specialized WorkflowWatchSnippetProvider.makeItemGroup(command:title:appBundleId:)(v22, v19, v21, v10, v11);

      goto LABEL_10;
    }
  }

  v23 = 0;
LABEL_10:
  OUTLINED_FUNCTION_6_6();

  return v24(v23);
}

id WorkflowWatchSnippetProvider.makeBodyText(intentTitle:)(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(SAUIDecoratedText) init];
  outlined bridged method (mbgnn) of @objc SAUIDecoratedText.text.setter(a1, a2, v4);
  v5 = [objc_allocWithZone(SASTLineDetailItem) init];
  [v5 setTitle:v4];

  return v5;
}

id WorkflowWatchSnippetProvider.getButtonItemForLabel(label:commands:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [objc_allocWithZone(SAUIDecoratedText) init];
  v5 = OUTLINED_FUNCTION_9_26();
  outlined bridged method (mbgnn) of @objc SAUIDecoratedText.text.setter(v5, v6, v7);
  v8 = [objc_allocWithZone(SASTCommandTemplateAction) init];
  outlined bridged method (mbgnn) of @objc SASTCommandTemplateAction.commands.setter(a3, v8);
  v9 = [objc_allocWithZone(SASTButtonItem) init];
  [v9 setDecoratedLabel:v3];
  [v9 setCentered:1];
  [v9 setAction:v8];

  return v9;
}

void outlined bridged method (mbgnn) of @objc SAUIDecoratedText.text.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();
  [a3 setText:v4];
}

void outlined bridged method (mbgnn) of @objc SASTApplicationBannerItem.bundleId.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();
  [a3 setBundleId:v4];
}

void outlined bridged method (mbgnn) of @objc SASTCommandTemplateAction.commands.setter(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [a2 setCommands:isa];
}

id specialized WorkflowWatchSnippetProvider.makeItemGroup(command:title:appBundleId:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  specialized WorkflowWatchSnippetProvider.makeApplicationBanner(appBundleId:command:)(a4, a5, a1);
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    OUTLINED_FUNCTION_11_26();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  WorkflowWatchSnippetProvider.makeBodyText(intentTitle:)(a2, a3);
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    OUTLINED_FUNCTION_11_26();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v7 = [objc_allocWithZone(SASTItemGroup) init];
  outlined bridged method (mbnn) of @objc SASTItemGroup.templateItems.setter(_swiftEmptyArrayStorage, v7);
  return v7;
}

void *specialized WorkflowWatchSnippetProvider.makeApplicationBanner(appBundleId:command:)(uint64_t a1, uint64_t a2, void *a3)
{
  [objc_allocWithZone(SASTApplicationBannerItem) init];
  v5 = OUTLINED_FUNCTION_9_26();
  outlined bridged method (mbgnn) of @objc SASTApplicationBannerItem.bundleId.setter(v5, v6, v7);
  v8 = [objc_allocWithZone(SASTCommandTemplateAction) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v9 = OUTLINED_FUNCTION_64();
  *(v9 + 16) = xmmword_216010;
  *(v9 + 32) = a3;
  v10 = a3;
  outlined bridged method (mbnn) of @objc SASTCommandTemplateAction.commands.setter(v9, v8);
  [v3 setAction:v8];

  return v3;
}

void OUTLINED_FUNCTION_2_47(uint64_t a1@<X8>)
{
  v1 = a1 & 0xFFFFFFFFFFFFFF8;
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
}

id OUTLINED_FUNCTION_4_45()
{

  return WorkflowWatchSnippetProvider.getButtonItemForLabel(label:commands:)(v1, v0, v2);
}

uint64_t OUTLINED_FUNCTION_11_26()
{

  return specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
}

uint64_t get_enum_tag_for_layout_string_18SiriLinkFlowPlugin20InputCompletionStateO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

void DescribeCustomIntentItemCatTemplater.makeTemplate(item:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *v4;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  static DialogHelper.globals.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_216850;
  *(inited + 32) = 1835365481;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = a1;
  *(inited + 56) = a2;

  v11 = Dictionary.init(dictionaryLiteral:)();
  v12 = objc_opt_self();
  v13 = String._bridgeToObjectiveC()();
  specialized _dictionaryUpCast<A, B, C, D>(_:)(v11);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v15 = Dictionary._bridgeToObjectiveC()().super.isa;

  v16 = swift_allocObject();
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = 0xD000000000000028;
  v16[5] = 0x800000000022E9B0;
  aBlock[4] = partial apply for closure #1 in DescribeCustomIntentItemCatTemplater.makeTemplate(item:_:);
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed CATResult, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_7;
  v17 = _Block_copy(aBlock);

  [v12 execute:v9 catId:v13 parameters:isa globals:v15 completion:v17];
  _Block_release(v17);
}

uint64_t closure #1 in DescribeCustomIntentItemCatTemplater.makeTemplate(item:_:)(void *a1, uint64_t a2, void (*a3)(void *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = (&v25 - v12);
  v14 = type metadata accessor for TemplatingResult();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    *v13 = a2;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    a3(v13);
    return outlined destroy of String?(v13, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  }

  else
  {

    v20 = [a1 print];
    v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = a3;
    v22 = v21;

    v23 = [a1 speak];
    v24 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    TemplatingResult.init(dialogId:print:speak:)(v26, a6, v22, v24, v18);
    (*(v15 + 16))(v13, v18, v14);
    swift_storeEnumTagMultiPayload();
    v25(v13);
    outlined destroy of String?(v13, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
    return (*(v15 + 8))(v18, v14);
  }
}

double DescribeCustomIntentItemViewBuilder.makeViews(withTemplate:)()
{
  v1 = *(v0 + 16);
  v2 = dispatch thunk of ViewFactory.makeSummaryView(templateResult:snippets:listenAfterSpeaking:canUseServerTTS:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v3 = swift_allocObject();
  *&result = 1;
  *(v3 + 16) = xmmword_216010;
  *(v3 + 32) = v2;
  return result;
}

uint64_t DescribeCustomIntentItemOutputProvider.__allocating_init(item:templating:viewBuilder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, char *, uint64_t, uint64_t, uint64_t))
{
  v11 = a4[3];
  v12 = a4[4];
  v13 = __swift_mutable_project_boxed_opaque_existential_1(a4, v11);
  v14 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16);
  v18 = a5(a1, a2, a3, v16, v5, v11, v12);
  __swift_destroy_boxed_opaque_existential_1Tm(a4);
  return v18;
}

uint64_t DescribeCustomIntentItemOutputProvider.makeOutput(_:)(uint64_t a1, uint64_t a2)
{
  v5 = v2[12];
  v6 = v2[13];
  __swift_project_boxed_opaque_existential_1(v2 + 9, v5);
  v7 = v2[2];
  v8 = v2[3];
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = v2;
  v10 = *(v6 + 8);

  v10(v7, v8, partial apply for closure #1 in DescribeCustomIntentItemOutputProvider.makeOutput(_:), v9, v5, v6);
}

uint64_t closure #1 in DescribeCustomIntentItemOutputProvider.makeOutput(_:)(uint64_t a1, void (*a2)(__int128 *), uint64_t a3, void *a4)
{
  v7 = type metadata accessor for AceOutput();
  v8 = *(v7 - 8);
  v29 = v7;
  v30 = v8;
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TemplatingResult();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  v20 = (&v27 - v19);
  outlined init with copy of Result<TemplatingResult, Error>(a1, &v27 - v19);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *&v31 = *v20;
    v34 = 1;
    swift_errorRetain();
    a2(&v31);
  }

  else
  {
    v27 = v13;
    v28 = v12;
    (*(v13 + 32))(v16, v20, v12);
    v21 = a4[7];
    v22 = a4[8];
    __swift_project_boxed_opaque_existential_1(a4 + 4, v21);
    if ((*(v22 + 8))(v16, v21, v22) >> 62)
    {
      type metadata accessor for SABaseCommand();
      _bridgeCocoaArray<A>(_:)();
    }

    else
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      type metadata accessor for SABaseCommand();
    }

    v33 = 0;
    v31 = 0u;
    v32 = 0u;
    AceOutput.init(commands:flowActivity:)();
    v23 = v29;
    *(&v32 + 1) = v29;
    v33 = &protocol witness table for AceOutput;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v31);
    v25 = v30;
    (*(v30 + 16))(boxed_opaque_existential_1, v11, v23);
    v34 = 0;
    a2(&v31);
    (*(v25 + 8))(v11, v23);
    (*(v27 + 8))(v16, v28);
  }

  return outlined destroy of String?(&v31, &_ss6ResultOy11SiriKitFlow6Output_ps5Error_pGMd, &_ss6ResultOy11SiriKitFlow6Output_ps5Error_pGMR);
}

void *specialized DescribeCustomIntentItemOutputProvider.__allocating_init(item:templating:viewBuilder:)(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *(a6 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(a1);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DescribeCustomIntentItemOutputProvider();
  v17 = swift_allocObject();
  (*(v13 + 16))(v16, a4, a6);
  v18 = specialized DescribeCustomIntentItemOutputProvider.init(item:templating:viewBuilder:)(a1, a2, a3, v16, v17, a6, a7);
  (*(v13 + 8))(a4, a6);
  return v18;
}

uint64_t sub_179538()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *specialized DescribeCustomIntentItemOutputProvider.init(item:templating:viewBuilder:)(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  a5[7] = a6;
  a5[8] = a7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a5 + 4);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, a4, a6);
  a5[2] = a1;
  a5[3] = a2;
  outlined init with take of AceServiceInvokerAsync(a3, (a5 + 9));
  return a5;
}

uint64_t sub_179630()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t ActionPerformedVisual.init(appBundleId:prompt:viewData:deviceState:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X6>, void *a8@<X8>)
{
  type metadata accessor for App();

  App.__allocating_init(appIdentifier:)();
  v15 = specialized App.toAppDisplayName(_:appInfoResolving:isFirstParty:)(a7, 2);
  v17 = v16;

  result = __swift_destroy_boxed_opaque_existential_1Tm(a7);
  *a8 = a1;
  a8[1] = a2;
  a8[2] = v15;
  a8[3] = v17;
  a8[4] = a3;
  a8[5] = a4;
  a8[6] = a5;
  a8[7] = a6;
  return result;
}

uint64_t ActionPerformedVisual.response.getter()
{
  OUTLINED_FUNCTION_8_0();
  v1[39] = v2;
  v1[40] = v0;
  v3 = type metadata accessor for SeparatorStyle();
  v1[41] = v3;
  OUTLINED_FUNCTION_5_0(v3);
  v1[42] = v4;
  v6 = *(v5 + 64) + 15;
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v7 = *(*(type metadata accessor for Separators() - 8) + 64) + 15;
  v1[45] = swift_task_alloc();
  v8 = type metadata accessor for ComponentWrapper();
  v1[46] = v8;
  OUTLINED_FUNCTION_5_0(v8);
  v1[47] = v9;
  v11 = *(v10 + 64) + 15;
  v1[48] = swift_task_alloc();
  v1[49] = swift_task_alloc();
  v12 = type metadata accessor for CustomCanvas();
  v1[50] = v12;
  OUTLINED_FUNCTION_5_0(v12);
  v1[51] = v13;
  v15 = *(v14 + 64) + 15;
  v1[52] = swift_task_alloc();
  v1[53] = swift_task_alloc();
  v1[54] = swift_task_alloc();

  return _swift_task_switch(ActionPerformedVisual.response.getter, 0, 0);
}

{
  v1 = *(v0 + 320);
  v2 = v1[5];
  if (v2)
  {
    v3 = v1[4];
    v4 = one-time initialization token for encoder;
    v5 = v1[5];

    if (v4 != -1)
    {
      OUTLINED_FUNCTION_1_17();
    }

    *(v0 + 104) = v3;
    *(v0 + 112) = v2;
    *(v0 + 184) = 5;
    lazy protocol witness table accessor for type SiriLinkViewModel and conformance SiriLinkViewModel();
    dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    v7 = *(v0 + 432);
    v9 = *(v0 + 400);
    v8 = *(v0 + 408);
    v65 = *(v0 + 384);
    v10 = *(v0 + 376);
    v60 = *(v0 + 392);
    v62 = *(v0 + 368);
    v11 = *(v0 + 352);
    v57 = *(v0 + 360);
    v12 = *(v0 + 336);
    v13 = *(v0 + 344);
    v14 = *(v0 + 328);
    OUTLINED_FUNCTION_4_15();
    OUTLINED_FUNCTION_6_31();
    *(v0 + 256) = v9;
    *(v0 + 264) = &protocol witness table for CustomCanvas;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 232));
    (*(v8 + 16))(boxed_opaque_existential_1, v7, v9);
    v16 = *(v12 + 104);
    v16(v11, enum case for SeparatorStyle.edgeToEdge(_:), v14);
    v16(v13, enum case for SeparatorStyle.standard(_:), v14);
    Separators.init(top:bottom:)();
    ComponentWrapper.init(_:separators:)();
    v17 = v62;
    v63 = *(v10 + 16);
    v63(v65, v60, v17);
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v6 = v18;
    v19 = v18[2];
    if (v19 >= v18[3] >> 1)
    {
      OUTLINED_FUNCTION_5_29();
      v6 = v47;
    }

    v20 = *(v0 + 432);
    v21 = *(v0 + 400);
    v22 = *(v0 + 408);
    v23 = *(v0 + 392);
    v58 = *(v0 + 384);
    v25 = *(v0 + 368);
    v24 = *(v0 + 376);

    v26 = *(v24 + 8);
    v26(v23, v25);
    (*(v22 + 8))(v20, v21);
    *(v0 + 296) = v25;
    *(v0 + 304) = &protocol witness table for ComponentWrapper;
    v27 = __swift_allocate_boxed_opaque_existential_1((v0 + 272));
    v63(v27, v58, v25);
    v6[2] = v19 + 1;
    outlined init with take of AceServiceInvokerAsync((v0 + 272), &v6[5 * v19 + 4]);
    v26(v58, v25);
    v1 = *(v0 + 320);
  }

  else
  {
    v6 = _swiftEmptyArrayStorage;
  }

  v28 = v1[6];
  v29 = v1[7];
  v30 = *v1;
  v31 = v1[1];
  v33 = v1[2];
  v32 = v1[3];
  outlined copy of Data._Representation(v28, v29);
  v34 = one-time initialization token for encoder;

  if (v34 != -1)
  {
    OUTLINED_FUNCTION_1_17();
  }

  *(v0 + 16) = v28;
  *(v0 + 24) = v29;
  *(v0 + 32) = v30;
  *(v0 + 40) = v31;
  *(v0 + 48) = v33;
  *(v0 + 56) = v32;
  *(v0 + 96) = 0;
  lazy protocol witness table accessor for type SiriLinkViewModel and conformance SiriLinkViewModel();
  dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v36 = *(v0 + 416);
  v35 = *(v0 + 424);
  v37 = *(v0 + 400);
  v38 = *(v0 + 408);
  OUTLINED_FUNCTION_4_15();
  OUTLINED_FUNCTION_6_31();
  v56 = *(v38 + 16);
  v56(v36, v35, v37);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v48 = v6[2];
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v6 = v49;
  }

  v39 = v6[2];
  if (v39 >= v6[3] >> 1)
  {
    OUTLINED_FUNCTION_5_29();
    v6 = v50;
  }

  v52 = *(v0 + 424);
  v53 = *(v0 + 432);
  v41 = *(v0 + 408);
  v40 = *(v0 + 416);
  v42 = *(v0 + 400);
  v54 = *(v0 + 392);
  v55 = *(v0 + 384);
  v59 = *(v0 + 360);
  v61 = *(v0 + 352);
  v64 = *(v0 + 344);
  v51 = *(v0 + 312);
  *(v0 + 216) = v42;
  *(v0 + 224) = &protocol witness table for CustomCanvas;
  v43 = __swift_allocate_boxed_opaque_existential_1((v0 + 192));
  v56(v43, v40, v42);
  v6[2] = v39 + 1;
  outlined init with take of AceServiceInvokerAsync((v0 + 192), &v6[5 * v39 + 4]);
  v44 = *(v41 + 8);
  v44(v40, v42);
  Response.init(_:backgrounds:ornaments:hideRedactedElements:)();
  outlined consume of Data._Representation(v28, v29);

  v44(v52, v42);

  OUTLINED_FUNCTION_6_0();

  return v45();
}

uint64_t ActionPerformedVisual.data.getter()
{
  OUTLINED_FUNCTION_8_0();
  v1 = type metadata accessor for Response();
  v0[2] = v1;
  OUTLINED_FUNCTION_5_0(v1);
  v0[3] = v2;
  v4 = *(v3 + 64) + 15;
  v0[4] = swift_task_alloc();
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = DisambiguationVisual.data.getter;

  return ActionPerformedVisual.response.getter();
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for ActionPerformedVisual(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ActionPerformedVisual(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void OUTLINED_FUNCTION_5_29()
{

  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

uint64_t OUTLINED_FUNCTION_6_31()
{

  return CustomCanvas.init(bundleName:viewId:viewData:componentName:safeForLogging:requestsKeyWindow:hideConversationKeyline:)();
}

_BYTE *storeEnumTagSinglePayload for CustomIntentFlowErrors(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x17A238);
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

uint64_t INCodableAttribute.supportsMultipleValues.getter()
{
  result = outlined bridged method (pb) of @objc INCodableDescription.dictionaryRepresentation()(v0);
  if (result)
  {
    specialized Dictionary.subscript.getter(0xD000000000000027, 0x8000000000234590, result, &v3);

    if (v4)
    {
      if (swift_dynamicCast())
      {
        return v2 == 1;
      }
    }

    else
    {
      outlined destroy of Any?(&v3);
    }

    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t LNValueType.getLNValue(usoParse:parameterMetadata:locale:)()
{
  OUTLINED_FUNCTION_8_0();
  v1[109] = v0;
  v1[108] = v2;
  v1[107] = v3;
  v1[106] = v4;
  v5 = type metadata accessor for PersonNameComponents();
  v1[110] = v5;
  OUTLINED_FUNCTION_5_0(v5);
  v1[111] = v6;
  v8 = *(v7 + 64);
  v1[112] = OUTLINED_FUNCTION_28();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  OUTLINED_FUNCTION_14(v9);
  v11 = *(v10 + 64);
  v1[113] = OUTLINED_FUNCTION_27();
  v1[114] = swift_task_alloc();
  v12 = type metadata accessor for PlaceDescriptorEntity();
  v1[115] = v12;
  OUTLINED_FUNCTION_5_0(v12);
  v1[116] = v13;
  v15 = *(v14 + 64);
  v1[117] = OUTLINED_FUNCTION_28();
  v16 = type metadata accessor for PlaceDescriptor();
  v1[118] = v16;
  OUTLINED_FUNCTION_5_0(v16);
  v1[119] = v17;
  v19 = *(v18 + 64);
  v1[120] = OUTLINED_FUNCTION_28();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10GeoToolbox15PlaceDescriptorVSgMd, &_s10GeoToolbox15PlaceDescriptorVSgMR);
  OUTLINED_FUNCTION_14(v20);
  v22 = *(v21 + 64);
  v1[121] = OUTLINED_FUNCTION_27();
  v1[122] = swift_task_alloc();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference14RecommendationOyAA8LocationVGSgMd, &_s13SiriInference14RecommendationOyAA8LocationVGSgMR);
  OUTLINED_FUNCTION_14(v23);
  v25 = *(v24 + 64);
  v1[123] = OUTLINED_FUNCTION_27();
  v1[124] = swift_task_alloc();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference14RecommendationOyAA8LocationVGMd, &_s13SiriInference14RecommendationOyAA8LocationVGMR);
  v1[125] = v26;
  OUTLINED_FUNCTION_5_0(v26);
  v1[126] = v27;
  v29 = *(v28 + 64);
  v1[127] = OUTLINED_FUNCTION_27();
  v1[128] = swift_task_alloc();
  v30 = type metadata accessor for URL();
  v1[129] = v30;
  OUTLINED_FUNCTION_5_0(v30);
  v1[130] = v31;
  v33 = *(v32 + 64);
  v1[131] = OUTLINED_FUNCTION_28();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_14(v34);
  v36 = *(v35 + 64);
  v1[132] = OUTLINED_FUNCTION_27();
  v1[133] = swift_task_alloc();
  v37 = type metadata accessor for Calendar.RecurrenceRule();
  v1[134] = v37;
  OUTLINED_FUNCTION_5_0(v37);
  v1[135] = v38;
  v40 = *(v39 + 64);
  v1[136] = OUTLINED_FUNCTION_28();
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8CalendarV14RecurrenceRuleVSgMd, &_s10Foundation8CalendarV14RecurrenceRuleVSgMR);
  OUTLINED_FUNCTION_14(v41);
  v43 = *(v42 + 64);
  v1[137] = OUTLINED_FUNCTION_27();
  v1[138] = swift_task_alloc();
  v44 = type metadata accessor for DateInterval();
  v1[139] = v44;
  OUTLINED_FUNCTION_5_0(v44);
  v1[140] = v45;
  v47 = *(v46 + 64);
  v1[141] = OUTLINED_FUNCTION_28();
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  OUTLINED_FUNCTION_14(v48);
  v50 = *(v49 + 64);
  v1[142] = OUTLINED_FUNCTION_27();
  v1[143] = swift_task_alloc();
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  OUTLINED_FUNCTION_14(v51);
  v53 = *(v52 + 64);
  v1[144] = OUTLINED_FUNCTION_27();
  v1[145] = swift_task_alloc();
  v54 = type metadata accessor for Date();
  v1[146] = v54;
  OUTLINED_FUNCTION_5_0(v54);
  v1[147] = v55;
  v57 = *(v56 + 64);
  v1[148] = OUTLINED_FUNCTION_28();
  v58 = type metadata accessor for DateComponents();
  v1[149] = v58;
  OUTLINED_FUNCTION_5_0(v58);
  v1[150] = v59;
  v61 = *(v60 + 64);
  v1[151] = OUTLINED_FUNCTION_27();
  v1[152] = swift_task_alloc();
  v1[153] = swift_task_alloc();
  v62 = type metadata accessor for Siri_Nlu_External_UserDialogAct.DateTimeHydrator();
  v1[154] = v62;
  OUTLINED_FUNCTION_14(v62);
  v64 = *(v63 + 64);
  v1[155] = OUTLINED_FUNCTION_27();
  v1[156] = swift_task_alloc();
  v65 = type metadata accessor for TimeZone();
  v1[157] = v65;
  OUTLINED_FUNCTION_5_0(v65);
  v1[158] = v66;
  v68 = *(v67 + 64);
  v1[159] = OUTLINED_FUNCTION_27();
  v1[160] = swift_task_alloc();
  v1[161] = swift_task_alloc();
  v1[162] = swift_task_alloc();
  v1[163] = swift_task_alloc();
  v69 = type metadata accessor for Calendar();
  v1[164] = v69;
  OUTLINED_FUNCTION_5_0(v69);
  v1[165] = v70;
  v72 = *(v71 + 64);
  v1[166] = OUTLINED_FUNCTION_27();
  v1[167] = swift_task_alloc();
  v1[168] = swift_task_alloc();
  v1[169] = swift_task_alloc();
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_14(v73);
  v75 = *(v74 + 64);
  v1[170] = OUTLINED_FUNCTION_27();
  v1[171] = swift_task_alloc();
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  OUTLINED_FUNCTION_14(v76);
  v78 = *(v77 + 64);
  v1[172] = OUTLINED_FUNCTION_28();
  v79 = type metadata accessor for Siri_Nlu_External_UserParse();
  v1[173] = v79;
  OUTLINED_FUNCTION_5_0(v79);
  v1[174] = v80;
  v82 = *(v81 + 64);
  v1[175] = OUTLINED_FUNCTION_27();
  v1[176] = swift_task_alloc();
  v83 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v1[177] = v83;
  OUTLINED_FUNCTION_5_0(v83);
  v1[178] = v84;
  v86 = *(v85 + 64);
  v1[179] = OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v87, v88, v89);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  v5 = *(v4 + 1448);
  *v3 = *v1;
  *(v2 + 1456) = v6;
  *(v2 + 1464) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  v5 = *(v4 + 1480);
  *v3 = *v1;
  *(v2 + 1488) = v6;
  *(v2 + 1496) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_9_0();
  v5 = v4;
  OUTLINED_FUNCTION_3_0();
  *v6 = v5;
  v8 = *(v7 + 1504);
  v9 = *v2;
  OUTLINED_FUNCTION_3_0();
  *v10 = v9;
  v5[189] = v0;

  v11 = OUTLINED_FUNCTION_37_11();
  v12(v11);
  if (v0)
  {
    (*(v3 + 8))(v0, v1);
  }

  else
  {
    (*(v3 + 8))(0, v1);
    __swift_destroy_boxed_opaque_existential_1Tm(v5 + 42);
    __swift_destroy_boxed_opaque_existential_1Tm(v5 + 37);
  }

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v13, v14, v15);
}

{
  v2 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v4 = v3;
  v5 = v2[190];
  *v4 = *v1;
  *(v3 + 1528) = v0;

  (*(v2[165] + 8))(v2[166], v2[164]);
  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  v5 = *(v4 + 1536);
  v6 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v7 = v6;
  *(v8 + 1544) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v9, v10, v11);
}

{
  v33 = v0;
  v1 = v0[125];
  v2 = v0[124];
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v2, 1, v1);
  v4 = v0[160];
  v5 = v0[158];
  v6 = v0[157];
  if (EnumTagSinglePayload == 1)
  {
    (*(v5 + 8))(v0[160], v0[157]);
    outlined destroy of String?(v2, &_s13SiriInference14RecommendationOyAA8LocationVGSgMd, &_s13SiriInference14RecommendationOyAA8LocationVGSgMR);
    v7 = 0;
  }

  else
  {
    v8 = v0[128];
    v9 = v0[126];
    (*(v9 + 32))(v8, v2, v1);
    v7 = static InputUtils.getPlacemark(_:)();
    (*(v9 + 8))(v8, v1);
    (*(v5 + 8))(v4, v6);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 27);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 22);
  OUTLINED_FUNCTION_12_26();
  if (v7)
  {
    v10 = v0[109];
    v32[3] = type metadata accessor for NSError(0, &lazy cache variable for type metadata for CLPlacemark, CLPlacemark_ptr);
    v32[0] = v7;
    v11 = objc_allocWithZone(LNValue);
    v31 = @nonobjc LNValue.init(_:valueType:)(v32, v10);
    v12 = *(v6 + 8);
    v13 = OUTLINED_FUNCTION_9_3();
    v14(v13);
  }

  else
  {
    v15 = *(v6 + 8);
    v16 = OUTLINED_FUNCTION_9_3();
    v17(v16);
    v31 = 0;
  }

  OUTLINED_FUNCTION_0_34();
  v20 = v0[128];
  v21 = v0[127];
  v22 = v0[124];
  v23 = v0[123];
  v24 = v0[122];
  v25 = v0[121];
  v26 = v0[120];
  v27 = v0[117];
  v28 = v0[114];
  v29 = v0[113];
  v30 = v0[112];

  OUTLINED_FUNCTION_6_6();

  return v18(v31);
}

{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  v5 = *(v4 + 1552);
  v6 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v7 = v6;
  *(v8 + 1560) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v9, v10, v11);
}

{
  v2 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v4 = v3;
  v5 = *(v2 + 1584);
  v6 = *v1;
  OUTLINED_FUNCTION_3_3();
  *v7 = v6;
  *(v9 + 1592) = v8;
  *(v9 + 1600) = v0;

  OUTLINED_FUNCTION_11_1();

  return _swift_task_switch(v10, v11, v12);
}

void LNValueType.getLNValue(usoParse:parameterMetadata:locale:)()
{
  v298 = v0;
  v2 = *(v0 + 1416);
  v3 = *(v0 + 1408);
  v4 = *(v0 + 1392);
  v5 = *(v0 + 1384);
  v6 = *(v0 + 1376);
  v7 = *(v0 + 848);
  USOParse.userParse.getter();
  v8 = Siri_Nlu_External_UserParse.userDialogActs.getter();
  v9 = *(v4 + 8);
  v9(v3, v5);
  specialized Collection.first.getter(v8, v6);

  if (__swift_getEnumTagSinglePayload(v6, 1, v2) == 1)
  {
    outlined destroy of String?(*(v0 + 1376), &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.voiceCommands);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v11, v12))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_26(&dword_0, v13, v14, "#ShortcutsLinkPromptForFlowStrategy: missing UDA");
    }

    goto LABEL_7;
  }

  v20 = *(v0 + 1400);
  v21 = *(v0 + 1384);
  v22 = *(v0 + 848);
  (*(*(v0 + 1424) + 32))(*(v0 + 1432), *(v0 + 1376), *(v0 + 1416));
  USOParse.userParse.getter();
  v23 = Siri_Nlu_External_UserParse.userDialogActs.getter();
  v24 = OUTLINED_FUNCTION_9_3();
  (v9)(v24);
  isa = v23[2].isa;

  if (isa >= 2)
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    v26 = type metadata accessor for Logger();
    __swift_project_value_buffer(v26, static Logger.voiceCommands);
    v23 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v27))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_26(&dword_0, v28, v29, "#ShortcutsLinkPromptForFlowStrategy: more than one task found in UDA");
    }
  }

  v31 = static LNValueTypeMap.mapLNValueTypeToIntentValueType(valueType:)(*(v0 + 872));
  v33 = v32;
  if (!v30)
  {
    v42 = OUTLINED_FUNCTION_9_3();
    outlined consume of VoiceCommandIntentValueType(v42, v43, 0);
LABEL_21:
    OUTLINED_FUNCTION_39_15();
    Siri_Nlu_External_UserDialogAct.stringValue.getter();
    if (v33)
    {
LABEL_22:
      v44 = OUTLINED_FUNCTION_5_30();
      v45(v44);
      OUTLINED_FUNCTION_2_48();
      v46 = *(v0 + 1360);
      v47 = *(v0 + 1352);
      v48 = *(v0 + 1344);
      OUTLINED_FUNCTION_3_43();
      OUTLINED_FUNCTION_14_26();

      v49 = *(v0 + 8);
      OUTLINED_FUNCTION_28_12();

      __asm { BRAA            X1, X16 }
    }

    OUTLINED_FUNCTION_12_26();
    if (v62)
    {
      v63 = *(v0 + 872);
      v297 = &type metadata for String;
      v295 = v61;
      v296 = v62;
LABEL_32:
      v64 = objc_allocWithZone(LNValue);
      @nonobjc LNValue.init(_:valueType:)(&v295, v63);
      v65 = *(v5 + 8);
      v66 = OUTLINED_FUNCTION_9_3();
      v67(v66);
    }

    else
    {
LABEL_89:
      v187 = *(v5 + 8);
      v188 = OUTLINED_FUNCTION_9_3();
      v189(v188);
    }

LABEL_7:
    OUTLINED_FUNCTION_2_48();
    v15 = *(v0 + 1360);
    v16 = *(v0 + 1352);
    v17 = *(v0 + 1344);
    OUTLINED_FUNCTION_3_43();
    OUTLINED_FUNCTION_14_26();

    OUTLINED_FUNCTION_6_6();
    OUTLINED_FUNCTION_28_12();

    __asm { BRAA            X2, X16 }
  }

  if (v30 == 1)
  {
    v34 = *(v0 + 1432);
    v35 = *(v0 + 864);
    v36 = Siri_Nlu_External_UserDialogAct.measurementValue(locale:)();
    v39 = v38;
    if (v38 != -1)
    {
      v40 = v36;
      v41 = v37;
      ParsedMeasurement.toLNValue(unitType:parameterMetadata:valueType:)(v31, *(v0 + 856), *(v0 + 872), v36, v37, v38 & 1);
      outlined consume of ParsedMeasurement?(v40, v41, v39);
    }

LABEL_33:
    v68 = OUTLINED_FUNCTION_5_30();
    v69(v68);
    goto LABEL_7;
  }

  v5 = v0 + 832;
  switch(v31)
  {
    case 1uLL:
      OUTLINED_FUNCTION_39_15();
      Siri_Nlu_External_UserDialogAct.stringValue.getter();
      if (v33)
      {
        goto LABEL_22;
      }

      if (v101)
      {
        v102 = *(v0 + 872);
        v103 = type metadata accessor for NSError(0, &lazy cache variable for type metadata for NSAttributedString, NSAttributedString_ptr);
        swift_bridgeObjectRetain_n();
        v104._countAndFlagsBits = OUTLINED_FUNCTION_22_4();
        v297 = v103;
        v295 = NSAttributedString.__allocating_init(string:)(v104).super.isa;
        objc_allocWithZone(LNValue);
        @nonobjc LNValue.init(_:valueType:)(&v295, v102);
        OUTLINED_FUNCTION_1_18();
        swift_bridgeObjectRelease_n();
      }

      goto LABEL_33;
    case 2uLL:
      v114 = *(v0 + 1432);
      Siri_Nlu_External_UserDialogAct.BOOLValue.getter();
      OUTLINED_FUNCTION_12_26();
      if (v116 == 2)
      {
        goto LABEL_89;
      }

      v63 = *(v0 + 872);
      v297 = &type metadata for Bool;
      LOBYTE(v295) = v115 & 1;
      goto LABEL_32;
    case 3uLL:
      v87 = *(v0 + 1432);
      v88 = Siri_Nlu_External_UserDialogAct.currencyValue(locale:)(*(v0 + 864));
      OUTLINED_FUNCTION_12_26();
      if (!v89)
      {
        goto LABEL_89;
      }

      v63 = *(v0 + 872);
      v90 = &lazy cache variable for type metadata for INCurrencyAmount;
      v91 = INCurrencyAmount_ptr;
      goto LABEL_88;
    case 4uLL:
      v138 = *(v0 + 1432);
      v139 = *(v0 + 1352);
      v140 = *(v0 + 1304);
      *(v0 + 560) = type metadata accessor for DateTimeResolver();
      *(v0 + 568) = &protocol witness table for DateTimeResolver;
      __swift_allocate_boxed_opaque_existential_1((v0 + 536));
      DateTimeResolver.init()();
      static AceService.currentAsync.getter();
      v141 = type metadata accessor for LocationProvider();
      v142 = OUTLINED_FUNCTION_50_8();
      OUTLINED_FUNCTION_11_27(v142);
      outlined init with take of AceServiceInvokerAsync((v0 + 616), v142 + 24);
      *(v0 + 600) = v141;
      *(v0 + 608) = &protocol witness table for LocationProvider;
      *(v0 + 576) = v142;
      static Calendar.current.getter();
      static TimeZone.current.getter();
      if (!Siri_Nlu_External_UserDialogAct.userDialogTask.getter())
      {
        goto LABEL_100;
      }

      static UsoTask_CodegenConverter.convert(task:)();

      if (!*(v0 + 808))
      {
        v240 = *(v0 + 1352);
        OUTLINED_FUNCTION_53_5();
        v241 = *(v0 + 1304);
        OUTLINED_FUNCTION_8_28();
        v242();
        v243 = OUTLINED_FUNCTION_7_30();
        v244(v243);
        outlined destroy of String?(v0 + 784, &_sypSgMd, &_sypSgMR);
        goto LABEL_105;
      }

      type metadata accessor for UsoTask_execute_common_VoiceCommand();
      if ((swift_dynamicCast() & 1) == 0 || (v172 = *(v0 + 840), dispatch thunk of Uso_VerbTemplate_ReferenceVoiceCommandPayload.payload.getter(), OUTLINED_FUNCTION_1_18(), , !v172) || (v173 = dispatch thunk of UsoEntity_common_VoiceCommandPayload.dateTime.getter(), , !v173))
      {
LABEL_100:
        v206 = *(v0 + 1352);
        OUTLINED_FUNCTION_53_5();
        v207 = *(v0 + 1304);
        OUTLINED_FUNCTION_8_28();
        v208();
        v209 = OUTLINED_FUNCTION_7_30();
        v210(v209);
LABEL_105:
        __swift_storeEnumTagSinglePayload(*(v0 + 1368), 1, 1, *(v0 + 1168));
        v245 = *(v0 + 1368);
        v246 = *(v0 + 1360);
        v247 = *(v0 + 1168);
        v248 = OUTLINED_FUNCTION_62_8();
        __swift_destroy_boxed_opaque_existential_1Tm(v248);
        v249 = OUTLINED_FUNCTION_22_4();
        outlined init with copy of PersonNameComponents?(v249, v250, v251, v252);
        v253 = OUTLINED_FUNCTION_14_12();
        __swift_getEnumTagSinglePayload(v253, v254, v247);
        OUTLINED_FUNCTION_23_17();
        v156 = *(v0 + 1368);
        if (v255 == 1)
        {
          v158 = &_s10Foundation4DateVSgMd;
          v159 = &_s10Foundation4DateVSgMR;
          goto LABEL_107;
        }

        v257 = *(v0 + 1360);
        v258 = *(v0 + 1184);
        v259 = *(v0 + 1176);
        v260 = *(v0 + 1168);
        OUTLINED_FUNCTION_22_19();
        v261 = OUTLINED_FUNCTION_56_5();
        v262(v261);
        *(v0 + 776) = v260;
        __swift_allocate_boxed_opaque_existential_1((v0 + 752));
        OUTLINED_FUNCTION_34_15();
        v263();
        v264 = objc_allocWithZone(LNValue);
        @nonobjc LNValue.init(_:valueType:)((v0 + 752), v1);
        v265 = OUTLINED_FUNCTION_42_11();
        v266(v265);
        v158 = &_s10Foundation4DateVSgMd;
        v159 = &_s10Foundation4DateVSgMR;
LABEL_109:
        v256 = v156;
        goto LABEL_114;
      }

      v174 = *(v0 + 1352);
      v175 = *(v0 + 1320);
      v176 = *(v0 + 1312);
      OUTLINED_FUNCTION_52_8(*(v0 + 1304));
      v177 = *(v0 + 1248);
      *(v0 + 1440) = OUTLINED_FUNCTION_59_8();

      outlined init with copy of DeviceState(v0 + 536, v177);
      outlined init with copy of DeviceState(v0 + 576, v177 + 40);
      v178 = *(v0 + 864);
      v179 = type metadata accessor for Locale();
      OUTLINED_FUNCTION_4_11(v179);
      (*(v180 + 16))(v177 + v178, v9);
      v181 = OUTLINED_FUNCTION_48_10();
      v182(v181);
      v183 = OUTLINED_FUNCTION_57_6();
      v184(v183);
      v185 = swift_task_alloc();
      *(v0 + 1448) = v185;
      *v185 = v0;
      v185[1] = LNValueType.getLNValue(usoParse:parameterMetadata:locale:);
      v186 = *(v0 + 1248);
LABEL_96:
      OUTLINED_FUNCTION_28_12();

      Siri_Nlu_External_UserDialogAct.DateTimeHydrator.hydrate(dateTime:)();
      return;
    case 5uLL:
      v148 = *(v0 + 1432);
      v149 = *(v0 + 1344);
      v150 = *(v0 + 1296);
      *(v0 + 440) = type metadata accessor for DateTimeResolver();
      *(v0 + 448) = &protocol witness table for DateTimeResolver;
      __swift_allocate_boxed_opaque_existential_1((v0 + 416));
      DateTimeResolver.init()();
      static AceService.currentAsync.getter();
      v151 = type metadata accessor for LocationProvider();
      v152 = OUTLINED_FUNCTION_50_8();
      OUTLINED_FUNCTION_11_27(v152);
      outlined init with take of AceServiceInvokerAsync((v0 + 496), v152 + 24);
      *(v0 + 480) = v151;
      *(v0 + 488) = &protocol witness table for LocationProvider;
      *(v0 + 456) = v152;
      static Calendar.current.getter();
      static TimeZone.current.getter();
      if (!Siri_Nlu_External_UserDialogAct.userDialogTask.getter())
      {
        goto LABEL_101;
      }

      static UsoTask_CodegenConverter.convert(task:)();

      if (*(v0 + 744))
      {
        type metadata accessor for UsoTask_execute_common_VoiceCommand();
        if (swift_dynamicCast())
        {
          v190 = *v5;
          dispatch thunk of Uso_VerbTemplate_ReferenceVoiceCommandPayload.payload.getter();
          OUTLINED_FUNCTION_1_18();

          if (v190)
          {
            v191 = dispatch thunk of UsoEntity_common_VoiceCommandPayload.dateTime.getter();

            if (v191)
            {
              v192 = *(v0 + 1344);
              v193 = *(v0 + 1320);
              v194 = *(v0 + 1312);
              OUTLINED_FUNCTION_52_8(*(v0 + 1296));
              v195 = *(v0 + 1240);
              *(v0 + 1472) = OUTLINED_FUNCTION_59_8();

              outlined init with copy of DeviceState(v0 + 416, v195);
              outlined init with copy of DeviceState(v0 + 456, v195 + 40);
              v196 = *(v151 + 24);
              v197 = type metadata accessor for Locale();
              OUTLINED_FUNCTION_4_11(v197);
              (*(v198 + 16))(v195 + v196, v9);
              v199 = OUTLINED_FUNCTION_48_10();
              v200(v199);
              v201 = OUTLINED_FUNCTION_57_6();
              v202(v201);
              v203 = swift_task_alloc();
              *(v0 + 1480) = v203;
              *v203 = v0;
              v203[1] = LNValueType.getLNValue(usoParse:parameterMetadata:locale:);
              v204 = *(v0 + 1240);
              goto LABEL_96;
            }
          }
        }

LABEL_101:
        v211 = *(v0 + 1344);
        OUTLINED_FUNCTION_53_5();
        v212 = *(v0 + 1296);
        OUTLINED_FUNCTION_8_28();
        v213();
        v214 = OUTLINED_FUNCTION_7_30();
        v215(v214);
      }

      else
      {
        v267 = *(v0 + 1344);
        OUTLINED_FUNCTION_53_5();
        v268 = *(v0 + 1296);
        OUTLINED_FUNCTION_8_28();
        v269();
        v270 = OUTLINED_FUNCTION_7_30();
        v271(v270);
        outlined destroy of String?(v0 + 720, &_sypSgMd, &_sypSgMR);
      }

      v272 = *(v0 + 1192);
      v273 = *(v0 + 1160);
      v274 = *(v0 + 1152);
      v275 = OUTLINED_FUNCTION_14_12();
      __swift_storeEnumTagSinglePayload(v275, v276, 1, v272);
      v277 = OUTLINED_FUNCTION_61_4();
      __swift_destroy_boxed_opaque_existential_1Tm(v277);
      v278 = OUTLINED_FUNCTION_9_3();
      outlined init with copy of PersonNameComponents?(v278, v279, v280, v281);
      __swift_getEnumTagSinglePayload(v274, 1, v272);
      OUTLINED_FUNCTION_23_17();
      if (v282 == 1)
      {
        v256 = *(v0 + 1160);
        v158 = &_s10Foundation14DateComponentsVSgMd;
        v159 = &_s10Foundation14DateComponentsVSgMR;
      }

      else
      {
        v283 = *(v0 + 1208);
        v284 = *(v0 + 1200);
        v285 = *(v0 + 1192);
        v286 = *(v0 + 1160);
        v287 = *(v0 + 1152);
        OUTLINED_FUNCTION_22_19();
        v288(v283);
        *(v0 + 712) = v285;
        __swift_allocate_boxed_opaque_existential_1((v0 + 688));
        OUTLINED_FUNCTION_54_9();
        v289();
        v290 = objc_allocWithZone(LNValue);
        @nonobjc LNValue.init(_:valueType:)((v0 + 688), v1);
        (*(v284 + 8))(v283, v285);
        v158 = &_s10Foundation14DateComponentsVSgMd;
        v159 = &_s10Foundation14DateComponentsVSgMR;
        v256 = v286;
      }

      goto LABEL_114;
    case 6uLL:
      v117 = *(v0 + 1336);
      v118 = *(v0 + 1288);
      *(v0 + 320) = type metadata accessor for DateTimeResolver();
      *(v0 + 328) = &protocol witness table for DateTimeResolver;
      __swift_allocate_boxed_opaque_existential_1((v0 + 296));
      DateTimeResolver.init()();
      static AceService.currentAsync.getter();
      v119 = type metadata accessor for LocationProvider();
      v120 = OUTLINED_FUNCTION_50_8();
      OUTLINED_FUNCTION_11_27(v120);
      outlined init with take of AceServiceInvokerAsync((v0 + 376), v120 + 24);
      *(v0 + 360) = v119;
      *(v0 + 368) = &protocol witness table for LocationProvider;
      *(v0 + 336) = v120;
      static Calendar.current.getter();
      static TimeZone.current.getter();
      swift_task_alloc();
      OUTLINED_FUNCTION_20_0();
      *(v0 + 1504) = v121;
      *v121 = v122;
      OUTLINED_FUNCTION_58_7(v121);
      v123 = *(v0 + 1336);
      v124 = *(v0 + 1288);
      v125 = *(v0 + 1144);
      v126 = *(v0 + 864);
      OUTLINED_FUNCTION_28_12();

      Siri_Nlu_External_UserDialogAct.dateIntervalValue(dateTimeResolving:locationProviding:locale:calendar:timeZone:)();
      return;
    case 7uLL:
      OUTLINED_FUNCTION_39_15();
      v161 = Siri_Nlu_External_UserDialogAct.durationValue()();
      if (v33)
      {
        goto LABEL_22;
      }

      v164 = *(v0 + 1432);
      v165 = *(v0 + 1424);
      v166 = *(v0 + 1416);
      if (v163)
      {
        v167 = *(v165 + 8);
        v168 = OUTLINED_FUNCTION_9_3();
        v169(v168);
      }

      else
      {
        v232 = v161;
        v233 = v162;
        v234 = *(v0 + 872);
        v235 = type metadata accessor for LNCodableValue();
        *(v0 + 816) = v232;
        *(v0 + 824) = v233;
        v297 = v235;
        v295 = LNCodableValue.init<A>(_:)();
        v236 = objc_allocWithZone(LNValue);
        @nonobjc LNValue.init(_:valueType:)(&v295, v234);
        v237 = *(v165 + 8);
        v238 = OUTLINED_FUNCTION_9_3();
        v239(v238);
      }

      goto LABEL_7;
    case 8uLL:
      v95 = *(v0 + 1328);
      static Calendar.current.getter();
      swift_task_alloc();
      OUTLINED_FUNCTION_20_0();
      *(v0 + 1520) = v96;
      *v96 = v97;
      OUTLINED_FUNCTION_58_7(v96);
      v98 = *(v0 + 1328);
      v99 = *(v0 + 1104);
      OUTLINED_FUNCTION_28_12();

      Siri_Nlu_External_UserDialogAct.recurrenceRuleValue(calendar:)();
      return;
    case 9uLL:
      OUTLINED_FUNCTION_39_15();
      Siri_Nlu_External_UserDialogAct.doubleValue.getter();
      if (v33)
      {
        goto LABEL_22;
      }

      OUTLINED_FUNCTION_12_26();
      if (v160)
      {
        goto LABEL_89;
      }

      v63 = *(v0 + 872);
      v94 = &type metadata for Double;
      goto LABEL_73;
    case 0xAuLL:
      OUTLINED_FUNCTION_39_15();
      v83 = Siri_Nlu_External_UserDialogAct.entityValue.getter();
      if (v33)
      {
        goto LABEL_22;
      }

      if (v84)
      {
        v297 = &type metadata for String;
        v295 = v83;
        v296 = v84;
        objc_opt_self();
        OUTLINED_FUNCTION_1_18();

        v85 = [v23 stringValueType];
        v86 = objc_allocWithZone(LNValue);
        @nonobjc LNValue.init(_:valueType:)(&v295, v85);
        OUTLINED_FUNCTION_1_18();
      }

      goto LABEL_33;
    case 0xBuLL:
      OUTLINED_FUNCTION_39_15();
      Siri_Nlu_External_UserDialogAct.intValue.getter();
      if (v33)
      {
        goto LABEL_22;
      }

      OUTLINED_FUNCTION_12_26();
      if (v93)
      {
        goto LABEL_89;
      }

      v63 = *(v0 + 872);
      v94 = &type metadata for Int64;
LABEL_73:
      v297 = v94;
      v295 = v92;
      goto LABEL_32;
    case 0xCuLL:
      v143 = *(v0 + 1432);
      v144 = *(v0 + 864);
      v5 = type metadata accessor for ContactResolver();
      v145 = *(v5 + 48);
      v146 = *(v5 + 52);
      swift_allocObject();
      v147 = ContactResolver.init()();
      *(v0 + 40) = v5;
      *(v0 + 48) = &protocol witness table for ContactResolver;
      *(v0 + 16) = v147;
      v88 = Siri_Nlu_External_UserDialogAct.personValue(contactResolver:locale:)(v0 + 16, v144);
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
      OUTLINED_FUNCTION_12_26();
      if (!v88)
      {
        goto LABEL_89;
      }

      v63 = *(v0 + 872);
      v90 = &lazy cache variable for type metadata for INPerson;
      v91 = INPerson_ptr;
LABEL_88:
      v297 = type metadata accessor for NSError(0, v90, v91);
      v295 = v88;
      goto LABEL_32;
    case 0xDuLL:
      v78 = *(v0 + 1432);
      Siri_Nlu_External_UserDialogAct.personNameComponentsValue()(*(v0 + 912));
      v79 = *(v0 + 880);
      outlined init with copy of PersonNameComponents?(*(v0 + 912), *(v0 + 904), &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
      OUTLINED_FUNCTION_6_14();
      if (v80)
      {
        OUTLINED_FUNCTION_10_34();
        outlined destroy of String?(*(v0 + 912), &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
        v81 = OUTLINED_FUNCTION_7_30();
        v82(v81);
      }

      else
      {
        v216 = *(v0 + 896);
        v217 = *(v0 + 888);
        v218 = *(v0 + 872);
        (*(v217 + 32))(v216, *(v0 + 904), *(v0 + 880));
        closure #7 in LNValueType.getLNValue(usoParse:parameterMetadata:locale:)(v216, v218, &type metadata accessor for PersonNameComponents, &type metadata accessor for LNCodableValue, &LNCodableValue.init(_:), &v295);
        v219 = *(v217 + 8);
        v220 = OUTLINED_FUNCTION_22_4();
        v221(v220);
        OUTLINED_FUNCTION_10_34();
        outlined destroy of String?(*(v0 + 912), &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
        v293 = OUTLINED_FUNCTION_7_30();
        v294(v293);
      }

      goto LABEL_7;
    case 0xEuLL:
      v105 = *(v0 + 1280);
      *(v0 + 200) = type metadata accessor for LocationResolver();
      *(v0 + 208) = &protocol witness table for LocationResolver;
      __swift_allocate_boxed_opaque_existential_1((v0 + 176));
      LocationResolver.init()();
      static AceService.currentAsync.getter();
      v106 = type metadata accessor for LocationProvider();
      v107 = OUTLINED_FUNCTION_50_8();
      OUTLINED_FUNCTION_11_27(v107);
      outlined init with take of AceServiceInvokerAsync((v0 + 256), v107 + 24);
      *(v0 + 240) = v106;
      *(v0 + 248) = &protocol witness table for LocationProvider;
      *(v0 + 216) = v107;
      static TimeZone.current.getter();
      swift_task_alloc();
      OUTLINED_FUNCTION_20_0();
      *(v0 + 1536) = v108;
      *v108 = v109;
      OUTLINED_FUNCTION_58_7(v108);
      v110 = *(v0 + 1280);
      v111 = *(v0 + 992);
      v112 = *(v0 + 864);
      goto LABEL_53;
    case 0xFuLL:
      v70 = *(v0 + 1272);
      *(v0 + 80) = type metadata accessor for LocationResolver();
      *(v0 + 88) = &protocol witness table for LocationResolver;
      __swift_allocate_boxed_opaque_existential_1((v0 + 56));
      LocationResolver.init()();
      static AceService.currentAsync.getter();
      v71 = type metadata accessor for LocationProvider();
      v72 = OUTLINED_FUNCTION_50_8();
      OUTLINED_FUNCTION_11_27(v72);
      outlined init with take of AceServiceInvokerAsync((v0 + 136), v72 + 24);
      *(v0 + 120) = v71;
      *(v0 + 128) = &protocol witness table for LocationProvider;
      *(v0 + 96) = v72;
      static TimeZone.current.getter();
      swift_task_alloc();
      OUTLINED_FUNCTION_20_0();
      *(v0 + 1552) = v73;
      *v73 = v74;
      OUTLINED_FUNCTION_58_7(v73);
      v75 = *(v0 + 1272);
      v76 = *(v0 + 984);
      v77 = *(v0 + 864);
LABEL_53:
      OUTLINED_FUNCTION_28_12();

      Siri_Nlu_External_UserDialogAct.getLocationRecommendation(locationResolving:locationProviding:locale:timeZone:)();
      return;
    case 0x10uLL:
      goto LABEL_21;
    case 0x11uLL:
      if (one-time initialization token for voiceCommands != -1)
      {
        OUTLINED_FUNCTION_0();
      }

      v128 = type metadata accessor for Logger();
      __swift_project_value_buffer(v128, static Logger.voiceCommands);
      v129 = Logger.logObject.getter();
      v130 = static os_log_type_t.error.getter();
      v131 = os_log_type_enabled(v129, v130);
      v132 = *(v0 + 1432);
      v133 = *(v0 + 1424);
      v134 = *(v0 + 1416);
      if (v131)
      {
        v135 = swift_slowAlloc();
        *v135 = 0;
        _os_log_impl(&dword_0, v129, v130, "#ShortcutsLinkPromptForFlowStrategy creating prompt for unsupported type", v135, 2u);

        v136 = OUTLINED_FUNCTION_9_3();
        outlined consume of VoiceCommandIntentValueType(v136, v137, 2);
      }

      else
      {
      }

      (*(v133 + 8))(v132, v134);
      goto LABEL_7;
    case 0x12uLL:
      v153 = *(v0 + 1432);
      Siri_Nlu_External_UserDialogAct.urlValue.getter(*(v0 + 1064));
      v154 = *(v0 + 1056);
      v155 = *(v0 + 1032);
      outlined init with copy of PersonNameComponents?(*(v0 + 1064), v154, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      __swift_getEnumTagSinglePayload(v154, 1, v155);
      OUTLINED_FUNCTION_23_17();
      v156 = *(v0 + 1064);
      if (v157 == 1)
      {
        v158 = &_s10Foundation3URLVSgMd;
        v159 = &_s10Foundation3URLVSgMR;
LABEL_107:
        v256 = v156;
LABEL_114:
        outlined destroy of String?(v256, v158, v159);
        v291 = OUTLINED_FUNCTION_15_25();
        v292(v291);
        goto LABEL_7;
      }

      v222 = *(v0 + 1056);
      v223 = *(v0 + 1048);
      v224 = *(v0 + 1040);
      v225 = *(v0 + 1032);
      OUTLINED_FUNCTION_22_19();
      v226 = OUTLINED_FUNCTION_56_5();
      v227(v226);
      *(v0 + 680) = v225;
      __swift_allocate_boxed_opaque_existential_1((v0 + 656));
      OUTLINED_FUNCTION_34_15();
      v228();
      v229 = objc_allocWithZone(LNValue);
      @nonobjc LNValue.init(_:valueType:)((v0 + 656), v1);
      v230 = OUTLINED_FUNCTION_42_11();
      v231(v230);
      v158 = &_s10Foundation3URLVSgMd;
      v159 = &_s10Foundation3URLVSgMR;
      goto LABEL_109;
    default:
      v52 = *(v0 + 872);
      objc_opt_self();
      v53 = swift_dynamicCastObjCClass();
      *(v0 + 1568) = v53;
      if (!v53)
      {
        v170 = OUTLINED_FUNCTION_5_30();
        v171(v170);
        goto LABEL_7;
      }

      v54 = v53;
      v55 = *(v0 + 872);
      *(v0 + 1576) = [v54 memberValueType];
      v56 = swift_task_alloc();
      *(v0 + 1584) = v56;
      *v56 = v0;
      v56[1] = LNValueType.getLNValue(usoParse:parameterMetadata:locale:);
      v57 = *(v0 + 864);
      v58 = *(v0 + 856);
      v59 = *(v0 + 848);
      OUTLINED_FUNCTION_28_12();

      LNValueType.getLNValue(usoParse:parameterMetadata:locale:)();
      return;
  }
}

uint64_t LNValueType.getLNValue(usoParse:parameterMetadata:locale:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46)
{
  OUTLINED_FUNCTION_45_8();
  OUTLINED_FUNCTION_51_10();
  v50 = v47[182];
  v51 = v47[180];
  v52 = v47[171];
  OUTLINED_FUNCTION_41_12();
  v53 = v47[163];
  v54 = v47[158];
  v55 = v47[157];
  v98 = v47[156];
  v99 = v56;
  if (v50)
  {
    a37 = v46;
    a38 = v47[163];
    v57 = v47[153];
    a39 = v47[157];
    a40 = v48;
    v58 = v47[152];
    v59 = v47[150];
    v60 = v47[149];

    dispatch thunk of DateTime.dateComponents.getter();

    (*(v59 + 32))(v57, v58, v60);
    Calendar.date(from:)();

    (*(v59 + 8))(v57, v60);
    outlined destroy of Siri_Nlu_External_UserDialogAct.DateTimeHydrator(v98);
    (*(v54 + 8))(a38, a39);
    (*(v49 + 8))(a37, a40);
  }

  else
  {
    v61 = v47[146];

    outlined destroy of Siri_Nlu_External_UserDialogAct.DateTimeHydrator(v98);
    (*(v54 + 8))(v53, v55);
    v62 = OUTLINED_FUNCTION_17_27();
    v63(v62);
    __swift_storeEnumTagSinglePayload(v99, 1, 1, v61);
  }

  v64 = v47[171];
  v65 = v47[170];
  v66 = v47[146];
  v67 = OUTLINED_FUNCTION_62_8();
  __swift_destroy_boxed_opaque_existential_1Tm(v67);
  v68 = OUTLINED_FUNCTION_22_4();
  outlined init with copy of PersonNameComponents?(v68, v69, v70, v71);
  v72 = OUTLINED_FUNCTION_14_12();
  __swift_getEnumTagSinglePayload(v72, v73, v66);
  OUTLINED_FUNCTION_23_17();
  v74 = v47[171];
  if (v75 == 1)
  {
    outlined destroy of String?(v47[171], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v76 = OUTLINED_FUNCTION_15_25();
    v77(v76);
    v100 = 0;
  }

  else
  {
    v78 = v47[170];
    v79 = v47[148];
    v80 = v47[147];
    v81 = v47[146];
    OUTLINED_FUNCTION_22_19();
    v82 = OUTLINED_FUNCTION_56_5();
    v83(v82);
    v47[97] = v81;
    __swift_allocate_boxed_opaque_existential_1(v47 + 94);
    OUTLINED_FUNCTION_34_15();
    v84();
    objc_allocWithZone(LNValue);
    v100 = @nonobjc LNValue.init(_:valueType:)(v47 + 94, v51);
    v85 = OUTLINED_FUNCTION_42_11();
    v86(v85);
    outlined destroy of String?(v74, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v87 = OUTLINED_FUNCTION_15_25();
    v88(v87);
  }

  OUTLINED_FUNCTION_0_34();
  OUTLINED_FUNCTION_4_46();

  OUTLINED_FUNCTION_19_16();
  OUTLINED_FUNCTION_44_13();

  return v91(v89, v90, v91, v92, v93, v94, v95, v96, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, v98, v100, a43, a44, a45, a46);
}

{
  OUTLINED_FUNCTION_45_8();
  OUTLINED_FUNCTION_51_10();
  v47 = v46[184];
  v48 = v46[168];
  v49 = v46[165];
  v50 = v46[164];
  v51 = v46[162];
  v52 = v46[158];
  v53 = v46[157];
  v54 = v46[155];
  if (v46[186])
  {
    v89 = v46[155];
    v55 = v46[157];
    v56 = v46[162];
    v57 = v46[164];
    v58 = v46[168];
    v59 = v46[145];

    v48 = v58;
    v50 = v57;
    v51 = v56;
    v53 = v55;
    v54 = v89;
    dispatch thunk of DateTime.dateComponents.getter();

    v60 = 0;
  }

  else
  {
    v61 = v46[184];

    v60 = 1;
  }

  outlined destroy of Siri_Nlu_External_UserDialogAct.DateTimeHydrator(v54);
  (*(v52 + 8))(v51, v53);
  v63 = *(v49 + 8);
  v62 = (v49 + 8);
  v63(v48, v50);
  v64 = v46[149];
  v65 = v46[145];
  v66 = v46[144];
  __swift_storeEnumTagSinglePayload(v65, v60, 1, v64);
  v67 = OUTLINED_FUNCTION_61_4();
  __swift_destroy_boxed_opaque_existential_1Tm(v67);
  outlined init with copy of PersonNameComponents?(v65, v66, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  __swift_getEnumTagSinglePayload(v66, 1, v64);
  OUTLINED_FUNCTION_23_17();
  if (v68 == 1)
  {
    outlined destroy of String?(v46[145], &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
    v69 = OUTLINED_FUNCTION_15_25();
    v70(v69);
    v90 = 0;
  }

  else
  {
    v71 = v46[151];
    v72 = v46[150];
    v73 = v46[149];
    v74 = v46[145];
    v75 = v46[144];
    OUTLINED_FUNCTION_22_19();
    v76(v71);
    v46[89] = v73;
    __swift_allocate_boxed_opaque_existential_1(v46 + 86);
    OUTLINED_FUNCTION_54_9();
    v77();
    objc_allocWithZone(LNValue);
    v90 = @nonobjc LNValue.init(_:valueType:)(v46 + 86, v62);
    (*(v72 + 8))(v71, v73);
    outlined destroy of String?(v74, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
    v78 = OUTLINED_FUNCTION_15_25();
    v79(v78);
  }

  OUTLINED_FUNCTION_0_34();
  OUTLINED_FUNCTION_4_46();

  OUTLINED_FUNCTION_19_16();
  OUTLINED_FUNCTION_44_13();

  return v82(v80, v81, v82, v83, v84, v85, v86, v87, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, v90, a43, a44, a45, a46);
}

{
  OUTLINED_FUNCTION_45_8();
  OUTLINED_FUNCTION_51_10();
  v47 = v46[125];
  v48 = v46[123];
  OUTLINED_FUNCTION_6_14();
  if (v49)
  {
    v50 = v46[122];
    v51 = v46[118];
    (*(v46[158] + 8))(v46[159], v46[157]);
    outlined destroy of String?(v48, &_s13SiriInference14RecommendationOyAA8LocationVGSgMd, &_s13SiriInference14RecommendationOyAA8LocationVGSgMR);
    v52 = OUTLINED_FUNCTION_14_12();
    __swift_storeEnumTagSinglePayload(v52, v53, 1, v51);
  }

  else
  {
    (*(v46[126] + 32))(v46[127], v48, v47);
    if (static InputUtils.getPlacemark(_:)())
    {
      v54 = v46[122];
      PlaceDescriptor.init(placemark:)();
      v55 = 0;
    }

    else
    {
      v55 = 1;
    }

    v56 = v46[159];
    v57 = v46[158];
    v58 = v46[157];
    v59 = v46[127];
    v60 = v46[126];
    v61 = v46[125];
    __swift_storeEnumTagSinglePayload(v46[122], v55, 1, v46[118]);
    v62 = OUTLINED_FUNCTION_17_27();
    v63(v62);
    v64 = OUTLINED_FUNCTION_16_29();
    v65(v64);
  }

  v66 = v46[122];
  v67 = v46[121];
  v68 = v46[118];
  __swift_destroy_boxed_opaque_existential_1Tm(v46 + 12);
  __swift_destroy_boxed_opaque_existential_1Tm(v46 + 7);
  v69 = OUTLINED_FUNCTION_22_4();
  outlined init with copy of PersonNameComponents?(v69, v70, v71, v72);
  v73 = OUTLINED_FUNCTION_14_12();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v73, v74, v68);
  v76 = v46[179];
  v77 = v46[178];
  v78 = v46[122];
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of String?(v46[122], &_s10GeoToolbox15PlaceDescriptorVSgMd, &_s10GeoToolbox15PlaceDescriptorVSgMR);
    v79 = *(v77 + 8);
    v80 = OUTLINED_FUNCTION_22_4();
    v81(v80);
    v101 = 0;
  }

  else
  {
    v82 = v46[121];
    v83 = v46[120];
    a41 = v46[177];
    v84 = v46[119];
    v85 = v46[118];
    v86 = v46[117];
    v87 = v46[116];
    v88 = v46[115];
    v89 = *(v84 + 32);
    v90 = OUTLINED_FUNCTION_56_5();
    v91(v90);
    a40 = v76;
    PlaceDescriptor.convertToEntity()();
    lazy protocol witness table accessor for type PlaceDescriptorEntity and conformance PlaceDescriptorEntity();
    v101 = SystemIntentValueConvertibleEntity.asValue.getter();
    (*(v87 + 8))(v86, v88);
    (*(v84 + 8))(v83, v85);
    outlined destroy of String?(v78, &_s10GeoToolbox15PlaceDescriptorVSgMd, &_s10GeoToolbox15PlaceDescriptorVSgMR);
    (*(v77 + 8))(v76, a41);
  }

  OUTLINED_FUNCTION_0_34();
  OUTLINED_FUNCTION_4_46();

  OUTLINED_FUNCTION_19_16();
  OUTLINED_FUNCTION_44_13();

  return v94(v92, v93, v94, v95, v96, v97, v98, v99, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, v101, a43, a44, a45, a46);
}

{
  OUTLINED_FUNCTION_45_8();
  OUTLINED_FUNCTION_51_10();
  if (*(v46 + 1592))
  {
    v48 = [*(v46 + 1568) memberValueType];
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      OUTLINED_FUNCTION_12_26();
      v49 = *(v46 + 872);

      v50 = *(v47 + 8);
      v51 = OUTLINED_FUNCTION_9_3();
      v52(v51);
      v75 = *(v46 + 1592);
    }

    else
    {
      v55 = *(v46 + 1592);
      v56 = *(v46 + 1432);
      v57 = *(v46 + 1424);
      v58 = *(v46 + 1416);
      v59 = *(v46 + 872);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v60 = swift_allocObject();
      *(v60 + 16) = xmmword_216010;
      *(v60 + 32) = v55;
      v61 = v55;
      v62 = [v61 valueType];
      objc_allocWithZone(LNValue);
      v75 = @nonobjc LNValue.init(_:memberValueType:)(v60, v62);

      v63 = *(v57 + 8);
      v64 = OUTLINED_FUNCTION_9_3();
      v65(v64);
    }
  }

  else
  {

    v53 = OUTLINED_FUNCTION_5_30();
    v54(v53);
    v75 = 0;
  }

  OUTLINED_FUNCTION_0_34();
  OUTLINED_FUNCTION_4_46();

  OUTLINED_FUNCTION_19_16();
  OUTLINED_FUNCTION_44_13();

  return v68(v66, v67, v68, v69, v70, v71, v72, v73, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, v75, a43, a44, a45, a46);
}

uint64_t LNValueType.getLNValue(usoParse:parameterMetadata:locale:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  OUTLINED_FUNCTION_26_20();
  OUTLINED_FUNCTION_33_10();
  v49 = v48[180];
  v50 = v48[156];

  outlined destroy of Siri_Nlu_External_UserDialogAct.DateTimeHydrator(v50);
  v67 = v48[183];
  OUTLINED_FUNCTION_31_15();
  OUTLINED_FUNCTION_41_12();
  v51 = v48[163];
  OUTLINED_FUNCTION_8_28();
  v52();
  v53 = OUTLINED_FUNCTION_17_27();
  v54(v53);
  v55 = OUTLINED_FUNCTION_16_29();
  v56(v55);
  v57 = OUTLINED_FUNCTION_62_8();
  __swift_destroy_boxed_opaque_existential_1Tm(v57);
  OUTLINED_FUNCTION_1_54();

  OUTLINED_FUNCTION_13_24();
  OUTLINED_FUNCTION_24_20();

  return v59(v58, v59, v60, v61, v62, v63, v64, v65, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, v67, a45, a46, a47, a48);
}

{
  OUTLINED_FUNCTION_26_20();
  OUTLINED_FUNCTION_33_10();
  v49 = v48[184];
  v50 = v48[155];

  outlined destroy of Siri_Nlu_External_UserDialogAct.DateTimeHydrator(v50);
  v70 = v48[187];
  OUTLINED_FUNCTION_31_15();
  v51 = v48[168];
  v52 = v48[165];
  v53 = v48[164];
  v54 = v48[162];
  OUTLINED_FUNCTION_8_28();
  v55();
  v56 = OUTLINED_FUNCTION_17_27();
  v57(v56);
  v58 = OUTLINED_FUNCTION_16_29();
  v59(v58);
  v60 = OUTLINED_FUNCTION_61_4();
  __swift_destroy_boxed_opaque_existential_1Tm(v60);
  OUTLINED_FUNCTION_1_54();

  OUTLINED_FUNCTION_13_24();
  OUTLINED_FUNCTION_24_20();

  return v62(v61, v62, v63, v64, v65, v66, v67, v68, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, v70, a45, a46, a47, a48);
}

{
  OUTLINED_FUNCTION_26_20();
  OUTLINED_FUNCTION_33_10();
  v49 = v48[139];
  outlined init with copy of PersonNameComponents?(v48[143], v48[142], &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  OUTLINED_FUNCTION_6_14();
  if (v50)
  {
    OUTLINED_FUNCTION_10_34();
    outlined destroy of String?(v48[143], &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
    v51 = OUTLINED_FUNCTION_7_30();
    v52(v51);
    v88 = 0;
  }

  else
  {
    v53 = v48[189];
    v54 = v48[109];
    (*(v48[140] + 32))(v48[141], v48[142], v48[139]);
    v55 = OUTLINED_FUNCTION_22_4();
    closure #7 in LNValueType.getLNValue(usoParse:parameterMetadata:locale:)(v55, v56, v57, v58, v59, v60);
    if (v53)
    {
      v61 = v48[141];
      v62 = v48[139];
      v63 = *(v48[140] + 8);
      OUTLINED_FUNCTION_24_20();

      return v67(v64, v65, v66, v67, v68, v69, v70, v71, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48);
    }

    v73 = v48[179];
    v74 = v48[178];
    v75 = v48[177];
    v76 = v48[143];
    (*(v48[140] + 8))(v48[141], v48[139]);
    outlined destroy of String?(v76, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
    v77 = *(v74 + 8);
    v78 = OUTLINED_FUNCTION_22_4();
    v79(v78);
    v88 = a43;
  }

  OUTLINED_FUNCTION_0_34();
  OUTLINED_FUNCTION_25_14();

  OUTLINED_FUNCTION_6_6();
  OUTLINED_FUNCTION_24_20();

  return v82(v80, v81, v82, v83, v84, v85, v86, v87, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, v88, a43, a44, a45, a46, a47, a48);
}

{
  OUTLINED_FUNCTION_26_20();
  OUTLINED_FUNCTION_33_10();
  OUTLINED_FUNCTION_10_34();
  v49 = v48[160];
  OUTLINED_FUNCTION_8_28();
  v50();
  v51 = OUTLINED_FUNCTION_7_30();
  v52(v51);
  __swift_destroy_boxed_opaque_existential_1Tm(v48 + 27);
  __swift_destroy_boxed_opaque_existential_1Tm(v48 + 22);
  v62 = v48[193];
  OUTLINED_FUNCTION_1_54();

  OUTLINED_FUNCTION_13_24();
  OUTLINED_FUNCTION_24_20();

  return v54(v53, v54, v55, v56, v57, v58, v59, v60, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, v62, a45, a46, a47, a48);
}

{
  OUTLINED_FUNCTION_26_20();
  OUTLINED_FUNCTION_33_10();
  OUTLINED_FUNCTION_10_34();
  v49 = v48[159];
  OUTLINED_FUNCTION_8_28();
  v50();
  v51 = OUTLINED_FUNCTION_7_30();
  v52(v51);
  __swift_destroy_boxed_opaque_existential_1Tm(v48 + 12);
  __swift_destroy_boxed_opaque_existential_1Tm(v48 + 7);
  v62 = v48[195];
  OUTLINED_FUNCTION_1_54();

  OUTLINED_FUNCTION_13_24();
  OUTLINED_FUNCTION_24_20();

  return v54(v53, v54, v55, v56, v57, v58, v59, v60, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, v62, a45, a46, a47, a48);
}

{
  OUTLINED_FUNCTION_26_20();
  OUTLINED_FUNCTION_33_10();
  v49 = OUTLINED_FUNCTION_5_30();
  v50(v49);
  __swift_destroy_boxed_opaque_existential_1Tm(v48 + 42);
  __swift_destroy_boxed_opaque_existential_1Tm(v48 + 37);
  v60 = v48[189];
  OUTLINED_FUNCTION_1_54();

  OUTLINED_FUNCTION_13_24();
  OUTLINED_FUNCTION_24_20();

  return v52(v51, v52, v53, v54, v55, v56, v57, v58, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, v60, a45, a46, a47, a48);
}

{
  OUTLINED_FUNCTION_26_20();
  OUTLINED_FUNCTION_33_10();
  v49 = OUTLINED_FUNCTION_5_30();
  v50(v49);
  v60 = *(v48 + 1528);
  OUTLINED_FUNCTION_1_54();

  OUTLINED_FUNCTION_13_24();
  OUTLINED_FUNCTION_24_20();

  return v52(v51, v52, v53, v54, v55, v56, v57, v58, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, v60, a45, a46, a47, a48);
}

{
  OUTLINED_FUNCTION_26_20();
  OUTLINED_FUNCTION_33_10();
  OUTLINED_FUNCTION_10_34();

  v49 = OUTLINED_FUNCTION_7_30();
  v50(v49);
  v60 = *(v48 + 1600);
  OUTLINED_FUNCTION_1_54();

  OUTLINED_FUNCTION_13_24();
  OUTLINED_FUNCTION_24_20();

  return v52(v51, v52, v53, v54, v55, v56, v57, v58, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, v60, a45, a46, a47, a48);
}

void LNValueType.getLNValue(usoParse:parameterMetadata:locale:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55, uint64_t a56)
{
  OUTLINED_FUNCTION_26_20();
  a55 = v57;
  a56 = v58;
  OUTLINED_FUNCTION_33_10();
  a54 = v56;
  v59 = v56[134];
  outlined init with copy of PersonNameComponents?(v56[138], v56[137], &_s10Foundation8CalendarV14RecurrenceRuleVSgMd, &_s10Foundation8CalendarV14RecurrenceRuleVSgMR);
  OUTLINED_FUNCTION_6_14();
  if (v60)
  {
    OUTLINED_FUNCTION_10_34();
    outlined destroy of String?(v56[138], &_s10Foundation8CalendarV14RecurrenceRuleVSgMd, &_s10Foundation8CalendarV14RecurrenceRuleVSgMR);
    v61 = OUTLINED_FUNCTION_7_30();
    v62(v61);
    v78 = 0;
  }

  else
  {
    v63 = v56[191];
    v64 = v56[136];
    v65 = v56[109];
    (*(v56[135] + 32))(v64, v56[137], v56[134]);
    closure #7 in LNValueType.getLNValue(usoParse:parameterMetadata:locale:)(v64, v65, &type metadata accessor for Calendar.RecurrenceRule, &type metadata accessor for LNRecurrenceRuleBridge, &LNRecurrenceRuleBridge.init(rule:), &a43);
    v66 = OUTLINED_FUNCTION_16_29();
    v67(v66);
    if (v63)
    {
      OUTLINED_FUNCTION_24_20();
      return;
    }

    OUTLINED_FUNCTION_10_34();
    outlined destroy of String?(v56[138], &_s10Foundation8CalendarV14RecurrenceRuleVSgMd, &_s10Foundation8CalendarV14RecurrenceRuleVSgMR);
    v68 = OUTLINED_FUNCTION_7_30();
    v69(v68);
    v78 = a43;
  }

  OUTLINED_FUNCTION_0_34();
  OUTLINED_FUNCTION_25_14();

  OUTLINED_FUNCTION_6_6();
  OUTLINED_FUNCTION_24_20();

  v72(v70, v71, v72, v73, v74, v75, v76, v77, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, v78, a43, a44, a45, a46, a47, a48);
}

NSAttributedString __swiftcall NSAttributedString.__allocating_init(string:)(Swift::String string)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v2 = String._bridgeToObjectiveC()();

  v3 = [v1 initWithString:v2];

  return v3;
}

id closure #7 in LNValueType.getLNValue(usoParse:parameterMetadata:locale:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t (*a3)(void)@<X3>, uint64_t (*a4)(void)@<X4>, uint64_t (*a5)(char *)@<X5>, void *a6@<X8>)
{
  v11 = a3(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = v20 - v14;
  v16 = a4(0);
  (*(v12 + 16))(v15, a1, v11);
  v17 = a5(v15);
  v20[3] = v16;
  v20[0] = v17;
  v18 = objc_allocWithZone(LNValue);
  result = @nonobjc LNValue.init(_:valueType:)(v20, a2);
  *a6 = result;
  return result;
}

id @nonobjc LNValue.init(_:valueType:)(uint64_t *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v5 = [v2 initWithValue:_bridgeAnythingToObjectiveC<A>(_:)() valueType:a2];
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v5;
}

id @nonobjc LNValue.init(_:memberValueType:)(uint64_t a1, void *a2)
{
  type metadata accessor for NSError(0, &lazy cache variable for type metadata for LNValue, LNValue_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v5 = [v2 initWithValues:isa memberValueType:a2];

  return v5;
}

unint64_t lazy protocol witness table accessor for type PlaceDescriptorEntity and conformance PlaceDescriptorEntity()
{
  result = lazy protocol witness table cache variable for type PlaceDescriptorEntity and conformance PlaceDescriptorEntity;
  if (!lazy protocol witness table cache variable for type PlaceDescriptorEntity and conformance PlaceDescriptorEntity)
  {
    type metadata accessor for PlaceDescriptorEntity();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlaceDescriptorEntity and conformance PlaceDescriptorEntity);
  }

  return result;
}

uint64_t outlined init with copy of PersonNameComponents?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_4_11(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_0_34()
{
  result = v0[179];
  v2 = v0[176];
  v3 = v0[175];
  v4 = v0[172];
  v5 = v0[171];
  v6 = v0[170];
  v7 = v0[169];
  v8 = v0[168];
  v9 = v0[167];
  v10 = v0[166];
  v12 = v0[163];
  v13 = v0[162];
  v14 = v0[161];
  v15 = v0[160];
  v16 = v0[159];
  v17 = v0[156];
  v18 = v0[155];
  v19 = v0[153];
  v20 = v0[152];
  v21 = v0[151];
  v22 = v0[148];
  v23 = v0[145];
  v24 = v0[144];
  v25 = v0[143];
  v26 = v0[142];
  v27 = v0[141];
  v28 = v0[138];
  v29 = v0[137];
  v30 = v0[136];
  v31 = v0[133];
  v11 = v0[132];
  v32 = v0[131];
  return result;
}

uint64_t OUTLINED_FUNCTION_1_54()
{
  v3 = v0[179];
  v4 = v0[176];
  v5 = v0[175];
  v6 = v0[172];
  v7 = v0[171];
  v8 = v0[170];
  v9 = v0[169];
  v10 = v0[168];
  v11 = v0[167];
  v12 = v0[166];
  v19 = v0[163];
  v20 = v0[162];
  v21 = v0[161];
  v22 = v0[160];
  v23 = v0[159];
  v24 = v0[156];
  v25 = v0[155];
  v26 = v0[153];
  v27 = v0[152];
  v28 = v0[151];
  v29 = v0[148];
  v30 = v0[145];
  v31 = v0[144];
  v32 = v0[143];
  v33 = v0[142];
  v34 = v0[141];
  v35 = v0[138];
  v36 = v0[137];
  v37 = v0[136];
  v38 = v0[133];
  v39 = v0[132];
  v40 = v0[131];
  v13 = v0[127];
  *(v1 - 176) = v0[128];
  *(v1 - 168) = v13;
  v14 = v0[123];
  *(v1 - 160) = v0[124];
  *(v1 - 152) = v14;
  v15 = v0[121];
  *(v1 - 144) = v0[122];
  *(v1 - 136) = v15;
  v16 = v0[117];
  *(v1 - 128) = v0[120];
  *(v1 - 120) = v16;
  v17 = v0[113];
  *(v1 - 112) = v0[114];
  *(v1 - 104) = v17;
  *(v1 - 96) = v0[112];
}

uint64_t OUTLINED_FUNCTION_2_48()
{
  result = v0[179];
  v2 = v0[176];
  v3 = v0[175];
  v4 = v0[172];
  v5 = v0[171];
  return result;
}

void OUTLINED_FUNCTION_3_43()
{
  v1 = v0[167];
  v2 = v0[166];
  v3 = v0[163];
  v4 = v0[162];
}

uint64_t OUTLINED_FUNCTION_4_46()
{
  v9 = v0[128];
  v3 = v0[124];
  *(v1 - 168) = v0[127];
  *(v1 - 160) = v3;
  v4 = v0[122];
  *(v1 - 152) = v0[123];
  *(v1 - 144) = v4;
  v5 = v0[120];
  *(v1 - 136) = v0[121];
  *(v1 - 128) = v5;
  v6 = v0[114];
  *(v1 - 120) = v0[117];
  *(v1 - 112) = v6;
  v7 = v0[112];
  *(v1 - 104) = v0[113];
  *(v1 - 96) = v7;
}

uint64_t OUTLINED_FUNCTION_5_30()
{
  result = v0[179];
  v2 = v0[177];
  v3 = *(v0[178] + 8);
  return result;
}

void OUTLINED_FUNCTION_10_34()
{
  v1 = v0[179];
  v2 = v0[178];
  v3 = v0[177];
}

void OUTLINED_FUNCTION_12_26()
{
  v1 = v0[179];
  v2 = v0[178];
  v3 = v0[177];
}

uint64_t OUTLINED_FUNCTION_13_24()
{
  result = v0 + 8;
  v3 = *(v0 + 8);
  v4 = *(v1 - 88);
  return result;
}

uint64_t OUTLINED_FUNCTION_14_26()
{
  v8 = v0[161];
  v9 = v0[160];
  v10 = v0[159];
  v11 = v0[156];
  v12 = v0[155];
  v13 = v0[153];
  v14 = v0[152];
  v15 = v0[151];
  v16 = v0[148];
  v17 = v0[145];
  v18 = v0[144];
  v19 = v0[143];
  v20 = v0[142];
  v21 = v0[141];
  v22 = v0[138];
  v23 = v0[137];
  v24 = v0[136];
  v25 = v0[133];
  v26 = v0[132];
  v27 = v0[131];
  v28 = v0[128];
  v29 = v0[127];
  v30 = v0[124];
  v3 = v0[122];
  *(v1 - 192) = v0[123];
  *(v1 - 184) = v3;
  v4 = v0[120];
  *(v1 - 176) = v0[121];
  *(v1 - 168) = v4;
  v5 = v0[114];
  *(v1 - 160) = v0[117];
  *(v1 - 152) = v5;
  v6 = v0[112];
  *(v1 - 144) = v0[113];
  *(v1 - 136) = v6;
}

void OUTLINED_FUNCTION_23_17()
{
  v1 = v0[179];
  v2 = v0[178];
  v3 = v0[177];
}

uint64_t OUTLINED_FUNCTION_25_14()
{
  v8 = v0[128];
  v9 = v0[127];
  v3 = v0[123];
  *(v1 - 176) = v0[124];
  *(v1 - 168) = v3;
  v4 = v0[121];
  *(v1 - 160) = v0[122];
  *(v1 - 152) = v4;
  v5 = v0[117];
  *(v1 - 144) = v0[120];
  *(v1 - 136) = v5;
  v6 = v0[113];
  *(v1 - 128) = v0[114];
  *(v1 - 120) = v6;
  *(v1 - 112) = v0[112];
}

void OUTLINED_FUNCTION_31_15()
{
  v1 = v0[179];
  v2 = v0[178];
  v3 = v0[177];
}

uint64_t OUTLINED_FUNCTION_37_11()
{
  v1 = v0[167];
  v2 = v0[165];
  v3 = v0[164];
  result = v0[161];
  v5 = v0[157];
  v6 = *(v0[158] + 8);
  return result;
}

void OUTLINED_FUNCTION_41_12()
{
  v1 = v0[169];
  v2 = v0[165];
  v3 = v0[164];
}

uint64_t OUTLINED_FUNCTION_48_10()
{
  v4 = *(v0 + 16);
  result = v2 + *(v1 + 28);
  v6 = *(v3 - 144);
  return result;
}

uint64_t OUTLINED_FUNCTION_50_8()
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_52_8(uint64_t a1@<X8>)
{
  *(v3 - 128) = a1;
  v4 = *(v2 + 1264);
  v5 = *(v2 + 1256);
  *(v3 - 144) = v1;
  *(v3 - 136) = v5;
}

uint64_t OUTLINED_FUNCTION_57_6()
{
  v4 = *(v0 + 16);
  result = v2 + *(v1 + 32);
  v7 = *(v3 - 136);
  v6 = *(v3 - 128);
  return result;
}

uint64_t OUTLINED_FUNCTION_58_7(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 1432);
  return result;
}

uint64_t OUTLINED_FUNCTION_59_8()
{
  v2 = *(v0 + 1232);
  v3 = *(v0 + 864);

  return UsoEntity_common_DateTime.toDateTime(recurrencePattern:)();
}

uint64_t static LNSnippetEnvironment.getEnvironmentFor(localeIdentifier:serviceInvoker:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  return _swift_task_switch(static LNSnippetEnvironment.getEnvironmentFor(localeIdentifier:serviceInvoker:), 0, 0);
}

uint64_t static LNSnippetEnvironment.getEnvironmentFor(localeIdentifier:serviceInvoker:)()
{
  v1 = v0[8];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = [objc_allocWithZone(SAUISnippetDisplayConfigurationRequest) init];
  v0[9] = v4;
  v5 = async function pointer to AceServiceInvokerAsync.submit<A>(_:)[1];
  v6 = swift_task_alloc();
  v0[10] = v6;
  v7 = type metadata accessor for NSError(0, &lazy cache variable for type metadata for SABaseCommand, SABaseCommand_ptr);
  *v6 = v0;
  v6[1] = static LNSnippetEnvironment.getEnvironmentFor(localeIdentifier:serviceInvoker:);

  return AceServiceInvokerAsync.submit<A>(_:)(v4, v2, v7, v3);
}

{
  v1 = v0[11];
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    v4 = v0[11];
    v6 = v0[6];
    v5 = v0[7];
    type metadata accessor for NSError(0, &lazy cache variable for type metadata for LNSnippetEnvironment, LNSnippetEnvironment_ptr);
    v7 = v4;
    v8 = static LNSnippetEnvironment.make(from:localeIdentifier:)(v3);
    v9 = v7;
  }

  else
  {
    if (one-time initialization token for voiceCommands != -1)
    {
      OUTLINED_FUNCTION_0_1();
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.voiceCommands);
    v9 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    v12 = os_log_type_enabled(v9, v11);
    v7 = v0[11];
    if (v12)
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_0, v9, v11, "#LNSnippetEnvironment for deviceState got  nil environment", v13, 2u);
      OUTLINED_FUNCTION_15_1();
    }

    v8 = 0;
  }

  v14 = v0[1];

  return v14(v8);
}

{
  v18 = v0;

  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0_1();
    swift_once();
  }

  v1 = *(v0 + 96);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.voiceCommands);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 96);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v10 = *(v0 + 16);
    v9 = *(v0 + 24);
    v11 = *(v0 + 32);
    v12 = Error.localizedDescription.getter();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v17);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_0, v3, v4, "Hit error while trying to fetch snippet display config from UI layer %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    OUTLINED_FUNCTION_15_1();

    OUTLINED_FUNCTION_15_1();
  }

  else
  {
  }

  v15 = *(v0 + 8);

  return v15(0);
}

uint64_t static LNSnippetEnvironment.getEnvironmentFor(localeIdentifier:serviceInvoker:)(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 80);
  v7 = *v2;
  *(v3 + 88) = a1;
  *(v3 + 96) = v1;

  if (v1)
  {
    v5 = static LNSnippetEnvironment.getEnvironmentFor(localeIdentifier:serviceInvoker:);
  }

  else
  {

    v5 = static LNSnippetEnvironment.getEnvironmentFor(localeIdentifier:serviceInvoker:);
  }

  return _swift_task_switch(v5, 0, 0);
}

id CodableEnvironment.init(from:)(uint64_t *a1, uint64_t a2)
{
  type metadata accessor for CodableEnvironment.CodingKeys();
  OUTLINED_FUNCTION_1_55();
  swift_getWitnessTable();
  v4 = type metadata accessor for KeyedDecodingContainer();
  v5 = OUTLINED_FUNCTION_7_1(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    type metadata accessor for NSError(0, &lazy cache variable for type metadata for NSKeyedUnarchiver, NSKeyedUnarchiver_ptr);
    v11 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
    v20 = v11;
    if (v11)
    {
      v22 = OUTLINED_FUNCTION_3_44();
      v23(v22);
      OUTLINED_FUNCTION_6_32();
      goto LABEL_8;
    }

    type metadata accessor for CodableEnvironment.Error();
    swift_getWitnessTable();
    swift_allocError();
    swift_willThrow();
    OUTLINED_FUNCTION_6_32();
    v9 = OUTLINED_FUNCTION_3_44();
    v10(v9);
  }

  if (one-time initialization token for voiceCommands != -1)
  {
    OUTLINED_FUNCTION_0_1();
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Logger.voiceCommands);
  swift_errorRetain();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v25 = v16;
    *v15 = 136315138;
    swift_getErrorValue();
    v17 = Error.localizedDescription.getter();
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v25);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_0, v13, v14, "Failed to decode Environment; creating an empty Environment instead. Error: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    OUTLINED_FUNCTION_15_1();

    OUTLINED_FUNCTION_15_1();
  }

  v20 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];

LABEL_8:
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v20;
}

uint64_t CodableEnvironment.encode(to:)(void *a1, void *a2)
{
  type metadata accessor for CodableEnvironment.CodingKeys();
  OUTLINED_FUNCTION_1_55();
  WitnessTable = swift_getWitnessTable();
  v4 = type metadata accessor for KeyedEncodingContainer();
  v5 = OUTLINED_FUNCTION_7_1(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  v11 = &v25 - v10;
  v12 = objc_opt_self();
  v28[0] = a2;
  type metadata accessor for Optional();
  v13 = Optional._bridgeToObjectiveC()();
  v28[0] = 0;
  v14 = [v12 archivedDataWithRootObject:v13 requiringSecureCoding:1 error:v28];
  swift_unknownObjectRelease();
  v15 = v28[0];
  if (v14)
  {
    v26 = v7;
    v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v19 = a1[3];
    v20 = a1;
    v21 = v4;
    v22 = v20[4];
    __swift_project_boxed_opaque_existential_1(v20, v19);
    dispatch thunk of Encoder.container<A>(keyedBy:)();
    v28[0] = v16;
    v28[1] = v18;
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v26 + 8))(v11, v21);
    return OUTLINED_FUNCTION_6_32();
  }

  else
  {
    v24 = v15;
    _convertNSErrorToError(_:)();

    return swift_willThrow();
  }
}

BOOL CodableEnvironment.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of CodableEnvironment.CodingKeys.init(rawValue:), v2);

  return v3 != 0;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CodableEnvironment<A>.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return == infix<A>(_:_:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance CodableEnvironment<A>.CodingKeys(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>.hashValue.getter(a1, a2, WitnessTable, &protocol witness table for String);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CodableEnvironment<A>.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>.hash(into:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

uint64_t protocol witness for Hashable._rawHashValue(seed:) in conformance CodableEnvironment<A>.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return RawRepresentable<>._rawHashValue(seed:)(a1, a2, a3, WitnessTable, &protocol witness table for String);
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance CodableEnvironment<A>.CodingKeys@<W0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = CodableEnvironment.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance CodableEnvironment<A>.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = CodableEnvironment.CodingKeys.init(stringValue:)();
  *a1 = result & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CodableEnvironment<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.description.getter(a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CodableEnvironment<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.debugDescription.getter(a1, WitnessTable);
}

id protocol witness for Decodable.init(from:) in conformance CodableEnvironment<A>@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = CodableEnvironment.init(from:)(a1, *(a2 + 16));
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t type metadata instantiation function for CodableEnvironment()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for CodableEnvironment(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 8))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for CodableEnvironment(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CodableEnvironment.CodingKeys(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x180CD0);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}