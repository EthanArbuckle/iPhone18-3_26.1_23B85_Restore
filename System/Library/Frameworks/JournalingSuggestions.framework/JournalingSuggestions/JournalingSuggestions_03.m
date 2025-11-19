uint64_t getEnumTagSinglePayload for JournalingSuggestion.GenericMedia.ColorVariant(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for JournalingSuggestion.GenericMedia.ColorVariant(uint64_t result, unsigned int a2, unsigned int a3)
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

const char *MOMomentsFeatureFlags.feature.getter(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = "MOAngelEnabled";
    v6 = "MODevEnabled";
    if (a1 != 2)
    {
      v6 = "MOLinkPreviewEnabled";
    }

    if (a1)
    {
      v5 = "MOInternalEnabled";
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = "MOAngelMomentsUIPresentationUpdate";
    v2 = "MOEmbeddedHostingDisabled";
    if (a1 != 7)
    {
      v2 = "MOEmbeddedHosting3PNonModalEnabled";
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = "MOAngelPullToRefreshEnabled";
    if (a1 != 4)
    {
      v3 = "MOAngelMomentsUIEnabled";
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

Swift::Int MOMomentsFeatureFlags.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x23EE70D90](a1);
  return Hasher._finalize()();
}

Swift::Int MOAppProtectionFeatureFlags.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x23EE70D90](0);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type MOMomentsFeatureFlags and conformance MOMomentsFeatureFlags()
{
  result = lazy protocol witness table cache variable for type MOMomentsFeatureFlags and conformance MOMomentsFeatureFlags;
  if (!lazy protocol witness table cache variable for type MOMomentsFeatureFlags and conformance MOMomentsFeatureFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MOMomentsFeatureFlags and conformance MOMomentsFeatureFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MOMomentsFeatureFlags and conformance MOMomentsFeatureFlags;
  if (!lazy protocol witness table cache variable for type MOMomentsFeatureFlags and conformance MOMomentsFeatureFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MOMomentsFeatureFlags and conformance MOMomentsFeatureFlags);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MOAppProtectionFeatureFlags and conformance MOAppProtectionFeatureFlags()
{
  result = lazy protocol witness table cache variable for type MOAppProtectionFeatureFlags and conformance MOAppProtectionFeatureFlags;
  if (!lazy protocol witness table cache variable for type MOAppProtectionFeatureFlags and conformance MOAppProtectionFeatureFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MOAppProtectionFeatureFlags and conformance MOAppProtectionFeatureFlags);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MOMomentsFeatureFlags(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MOMomentsFeatureFlags(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t closure #1 in static JournalingSuggestion.Contact.getAssetLoader(for:inside:)(void (*a1)(uint64_t *, void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for JournalingSuggestion.Contact(0);
  v12[3] = v9;
  v12[4] = &protocol witness table for JournalingSuggestion.Contact;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12);
  outlined init with copy of URL?(a5, boxed_opaque_existential_1 + *(v9 + 20));
  *boxed_opaque_existential_1 = a3;
  boxed_opaque_existential_1[1] = a4;

  a1(v12, 0);
  return outlined destroy of JournalingSuggestionAsset?(v12);
}

uint64_t (*specialized static JournalingSuggestion.Contact.getAssetLoader(for:inside:)(void *a1))(void (*a1)(uint64_t *, void), uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v29[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v8 = &v29[-v7];
  v9 = [a1 assetType];
  v10 = *MEMORY[0x277D2A060];
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  if (v11 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v13 == v14)
  {
  }

  else
  {
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  v17 = _s21JournalingSuggestions11getMetadata_3key2asxSgSo17MOSuggestionAssetCyyXlG_So0ghD3KeyaxmtlFSS_Tt2g5(a1, *MEMORY[0x277D29F30]);
  if (v18)
  {
    v19 = v17;
    v20 = v18;
    assetImageContentToUrl(_:)(a1, v8);
    v21 = type metadata accessor for URL();
    (*(*(v21 - 8) + 56))(v8, 0, 1, v21);
    outlined init with take of URL?(v8, v6);
    v22 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v23 = swift_allocObject();
    *(v23 + 16) = v19;
    *(v23 + 24) = v20;
    outlined init with take of URL?(v6, v23 + v22);
    return partial apply for closure #1 in static JournalingSuggestion.Contact.getAssetLoader(for:inside:);
  }

  if (one-time initialization token for bridge != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  __swift_project_value_buffer(v25, static Logger.bridge);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_238A75000, v26, v27, "SuggestionContact asset should carry .contactName metadata", v28, 2u);
    MEMORY[0x23EE71510](v28, -1, -1);
  }

  return 0;
}

uint64_t sub_238AC7CF0()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 24);

  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v3, 1, v6))
  {
    (*(v7 + 8))(v0 + v3, v6);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t partial apply for closure #1 in static JournalingSuggestion.Contact.getAssetLoader(for:inside:)(void (*a1)(uint64_t *, void), uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR) - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return closure #1 in static JournalingSuggestion.Contact.getAssetLoader(for:inside:)(a1, a2, v6, v7, v8);
}

uint64_t JournalingSuggestionsPicker.init(label:onCompletion:)@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21JournalingSuggestions0A27SuggestionPresentationTokenVSgMd, &_s21JournalingSuggestions0A27SuggestionPresentationTokenVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v20[-v10];
  v20[15] = 0;
  State.init(wrappedValue:)();
  v12 = v21;
  *a4 = v20[16];
  *(a4 + 8) = v12;
  v13 = type metadata accessor for JournalingSuggestionsPicker();
  v14 = v13[9];
  v15 = type metadata accessor for JournalingSuggestionPresentationToken(0);
  (*(*(v15 - 8) + 56))(v11, 1, 1, v15);
  v16 = property wrapper backing initializer of JournalingSuggestionsPicker._journalingSuggestionToken(v11);
  v17 = a4 + v13[10];
  result = a1(v16);
  v19 = (a4 + v13[11]);
  *v19 = a2;
  v19[1] = a3;
  return result;
}

uint64_t property wrapper backing initializer of JournalingSuggestionsPicker._journalingSuggestionToken(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21JournalingSuggestions0A27SuggestionPresentationTokenVSgMd, &_s21JournalingSuggestions0A27SuggestionPresentationTokenVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  outlined init with copy of URL?(a1, &v6 - v4, &_s21JournalingSuggestions0A27SuggestionPresentationTokenVSgMd, &_s21JournalingSuggestions0A27SuggestionPresentationTokenVSgMR);
  State.init(wrappedValue:)();
  return outlined destroy of URL?(a1, &_s21JournalingSuggestions0A27SuggestionPresentationTokenVSgMd, &_s21JournalingSuggestions0A27SuggestionPresentationTokenVSgMR);
}

uint64_t JournalingSuggestionsPicker.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v40 = a2;
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](a1);
  v7 = *(v6 + 16);
  v8 = *(v6 + 24);
  v9 = type metadata accessor for Button();
  v38 = *(v9 - 8);
  v10 = *(v38 + 64);
  MEMORY[0x28223BE20](v9);
  v35 = &v35 - v11;
  type metadata accessor for SuggestionPickerModifier(255);
  v12 = type metadata accessor for ModifiedContent();
  v39 = *(v12 - 8);
  v13 = *(v39 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v36 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v37 = &v35 - v16;
  (*(v4 + 16))(&v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  v17 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v7;
  *(v18 + 24) = v8;
  (*(v4 + 32))(v18 + v17, &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v41 = v7;
  v42 = v8;
  v43 = v2;
  v19 = v35;
  Button.init(action:label:)();
  v20 = JournalingSuggestionsPicker.$_isPresented.getter();
  v22 = v21;
  LOBYTE(v7) = v23;
  v24 = (v2 + *(a1 + 44));
  v25 = *v24;
  v26 = v24[1];
  WitnessTable = swift_getWitnessTable();
  v28 = v36;
  View.journalingSuggestionsPicker(isPresented:onCompletion:)(v20, v22, v7 & 1, v25, v26, v9, WitnessTable);

  (*(v38 + 8))(v19, v9);
  v29 = lazy protocol witness table accessor for type SuggestionPickerModifier and conformance SuggestionPickerModifier(&lazy protocol witness table cache variable for type SuggestionPickerModifier and conformance SuggestionPickerModifier, type metadata accessor for SuggestionPickerModifier);
  v44 = WitnessTable;
  v45 = v29;
  swift_getWitnessTable();
  v30 = v39;
  v31 = *(v39 + 16);
  v32 = v37;
  v31(v37, v28, v12);
  v33 = *(v30 + 8);
  v33(v28, v12);
  v31(v40, v32, v12);
  return (v33)(v32, v12);
}

uint64_t closure #1 in JournalingSuggestionsPicker.body.getter(char *a1)
{
  v1 = *a1;
  v2 = *(a1 + 1);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
  State.wrappedValue.getter();
  State.wrappedValue.setter();
}

uint64_t sub_238AC859C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = type metadata accessor for JournalingSuggestionsPicker();
  v4 = *(*(v3 - 1) + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(*(v3 - 1) + 64);
  v7 = v0 + v5;
  v8 = *(v0 + v5 + 8);

  v9 = v0 + v5 + v3[9];
  v10 = type metadata accessor for JournalingSuggestionPresentationToken(0);
  if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
  {
    v11 = type metadata accessor for UUID();
    v12 = *(v11 - 8);
    if (!(*(v12 + 48))(v9, 1, v11))
    {
      (*(v12 + 8))(v9, v11);
    }
  }

  v13 = *(v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy21JournalingSuggestions0D27SuggestionPresentationTokenVSgGMd, &_s7SwiftUI5StateVy21JournalingSuggestions0D27SuggestionPresentationTokenVSgGMR) + 28));

  (*(*(v2 - 8) + 8))(v7 + v3[10], v2);
  v14 = *(v7 + v3[11] + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + v6, v4 | 7);
}

uint64_t partial apply for closure #1 in JournalingSuggestionsPicker.body.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(type metadata accessor for JournalingSuggestionsPicker() - 8);
  v4 = (v0 + ((*(v3 + 80) + 32) & ~*(v3 + 80)));

  return closure #1 in JournalingSuggestionsPicker.body.getter(v4);
}

uint64_t closure #2 in JournalingSuggestionsPicker.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for JournalingSuggestionsPicker();
  v11 = *(v6 + 16);
  v11(v9, a1 + *(v10 + 40), a2);
  v11(a3, v9, a2);
  return (*(v6 + 8))(v9, a2);
}

uint64_t JournalingSuggestionsPicker.$_isPresented.getter()
{
  v3 = *v0;
  v4 = *(v0 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
  State.projectedValue.getter();
  return v2;
}

uint64_t View.journalingSuggestionsPicker(isPresented:onCompletion:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v33 = a7;
  v32 = a6;
  v12 = type metadata accessor for SuggestionPickerModifier(0);
  v13 = *(*(v12 - 1) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = (&v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(v14 + 36);
  v18 = type metadata accessor for JournalingSuggestionPresentationToken(0);
  (*(*(v18 - 8) + 56))(v16 + v17, 1, 1, v18);
  *(v16 + v12[6]) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMR);
  swift_storeEnumTagMultiPayload();
  *(v16 + v12[7]) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v19 = v12[10];
  v20 = type metadata accessor for JournalConfiguration(0);
  (*(*(v20 - 8) + 56))(v16 + v19, 1, 1, v20);
  *v16 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA10ScenePhaseO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA10ScenePhaseO_GMR);
  swift_storeEnumTagMultiPayload();
  v21 = v16 + v12[5];
  *v21 = swift_getKeyPath();
  v21[8] = 0;
  v22 = v16 + v12[8];
  *v22 = a1;
  *(v22 + 1) = a2;
  v22[16] = a3;
  v23 = (v16 + v12[11]);
  *v23 = a4;
  v23[1] = a5;
  v24 = v12[12];
  v25 = objc_allocWithZone(type metadata accessor for EmbeddedPicker());

  *(v16 + v24) = [v25 init];
  v26 = v12[13];
  *(v16 + v26) = [objc_allocWithZone(type metadata accessor for TransparentNotifierViewController()) init];
  v27 = v16 + v12[14];
  *v27 = implicit closure #2 in implicit closure #1 in variable initialization expression of SuggestionPickerModifier._sheetManager;
  *(v27 + 1) = 0;
  v27[16] = 0;
  v28 = v16 + v12[15];
  UUID.init()();
  v29 = v16 + v12[16];
  v34 = 0;
  State.init(wrappedValue:)();
  v30 = v36;
  *v29 = v35;
  *(v29 + 1) = v30;
  MEMORY[0x23EE6FF10](v16, v32, v12, v33);
  return outlined destroy of SuggestionPickerModifier(v16, type metadata accessor for SuggestionPickerModifier);
}

uint64_t JournalingSuggestionPresentationToken.init(suggestionIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 56))(a2, 1, 1, v4);

  return outlined assign with take of UUID?(a1, a2);
}

uint64_t JournalingSuggestionsConfiguration.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v4 = static SuggestionSheetUIManager.shared;
  *(v3 + 16) = static SuggestionSheetUIManager.shared;
  v5 = v4;
  ObservationRegistrar.init()();
  v6 = *((*MEMORY[0x277D85000] & *v5) + 0x2F0);
  v7 = v5;
  v6();

  return v3;
}

uint64_t JournalingSuggestionsConfiguration.init()()
{
  v1 = v0;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v2 = static SuggestionSheetUIManager.shared;
  *(v0 + 16) = static SuggestionSheetUIManager.shared;
  v3 = v2;
  ObservationRegistrar.init()();
  v4 = *(v0 + 16);
  v5 = *((*MEMORY[0x277D85000] & *v4) + 0x2F0);
  v6 = v4;
  v5();

  return v1;
}

uint64_t JournalingSuggestionsConfiguration.deinit()
{
  v1 = OBJC_IVAR____TtC21JournalingSuggestions34JournalingSuggestionsConfiguration___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t JournalingSuggestionsConfiguration.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC21JournalingSuggestions34JournalingSuggestionsConfiguration___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return swift_deallocClassInstance();
}

uint64_t JournalingSuggestionsPicker<>.init(_:onCompletion:)@<X0>(int a1@<W2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v26 = a3;
  v27 = a4;
  v25 = a2;
  v24[3] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21JournalingSuggestions0A27SuggestionPresentationTokenVSgMd, &_s21JournalingSuggestions0A27SuggestionPresentationTokenVSgMR);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v24 - v11;
  v28 = 0;
  State.init(wrappedValue:)();
  v13 = v30;
  *a5 = v29;
  *(a5 + 8) = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21JournalingSuggestions0aB6PickerVy7SwiftUI4TextVGMd, &_s21JournalingSuggestions0aB6PickerVy7SwiftUI4TextVGMR);
  v15 = v14[9];
  v16 = type metadata accessor for JournalingSuggestionPresentationToken(0);
  (*(*(v16 - 8) + 56))(v12, 1, 1, v16);
  outlined init with copy of URL?(v12, v10, &_s21JournalingSuggestions0A27SuggestionPresentationTokenVSgMd, &_s21JournalingSuggestions0A27SuggestionPresentationTokenVSgMR);
  State.init(wrappedValue:)();
  outlined destroy of URL?(v12, &_s21JournalingSuggestions0A27SuggestionPresentationTokenVSgMd, &_s21JournalingSuggestions0A27SuggestionPresentationTokenVSgMR);
  v17 = a5 + v14[10];
  result = Text.init(_:tableName:bundle:comment:)();
  *v17 = result;
  *(v17 + 8) = v19;
  *(v17 + 16) = v20 & 1;
  *(v17 + 24) = v21;
  v22 = (a5 + v14[11]);
  v23 = v27;
  *v22 = v26;
  v22[1] = v23;
  return result;
}

uint64_t JournalingSuggestionsPicker<>.init<A>(_:onCompletion:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v23 = a5;
  v24 = a2;
  v25 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21JournalingSuggestions0A27SuggestionPresentationTokenVSgMd, &_s21JournalingSuggestions0A27SuggestionPresentationTokenVSgMR);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v23 - v14;
  v26 = 0;
  State.init(wrappedValue:)();
  v16 = v28;
  *a6 = v27;
  *(a6 + 8) = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21JournalingSuggestions0aB6PickerVy7SwiftUI4TextVGMd, &_s21JournalingSuggestions0aB6PickerVy7SwiftUI4TextVGMR);
  v18 = v17[9];
  v19 = type metadata accessor for JournalingSuggestionPresentationToken(0);
  (*(*(v19 - 8) + 56))(v15, 1, 1, v19);
  outlined init with copy of URL?(v15, v13, &_s21JournalingSuggestions0A27SuggestionPresentationTokenVSgMd, &_s21JournalingSuggestions0A27SuggestionPresentationTokenVSgMR);
  State.init(wrappedValue:)();
  outlined destroy of URL?(v15, &_s21JournalingSuggestions0A27SuggestionPresentationTokenVSgMd, &_s21JournalingSuggestions0A27SuggestionPresentationTokenVSgMR);
  closure #1 in JournalingSuggestionsPicker<>.init<A>(_:onCompletion:)(a1, a4, a6 + v17[10]);
  v20 = (a6 + v17[11]);
  v21 = v25;
  *v20 = v24;
  v20[1] = v21;
  return (*(*(a4 - 8) + 8))(a1, a4);
}

uint64_t closure #1 in JournalingSuggestionsPicker<>.init<A>(_:onCompletion:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  (*(v6 + 16))(&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = Text.init<A>(_:)();
  *a3 = result;
  *(a3 + 8) = v8;
  *(a3 + 16) = v9 & 1;
  *(a3 + 24) = v10;
  return result;
}

uint64_t View.journalingSuggestionsPicker(isPresented:journalingSuggestionToken:onCompletion:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v33 = a8;
  v32 = a7;
  v14 = type metadata accessor for SuggestionPickerModifier(0);
  v15 = *(*(v14 - 1) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = (&v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of URL?(a4, v18 + *(v16 + 36), &_s21JournalingSuggestions0A27SuggestionPresentationTokenVSgMd, &_s21JournalingSuggestions0A27SuggestionPresentationTokenVSgMR);
  *(v18 + v14[6]) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMR);
  swift_storeEnumTagMultiPayload();
  *(v18 + v14[7]) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v19 = v14[10];
  v20 = type metadata accessor for JournalConfiguration(0);
  (*(*(v20 - 8) + 56))(v18 + v19, 1, 1, v20);
  *v18 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA10ScenePhaseO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA10ScenePhaseO_GMR);
  swift_storeEnumTagMultiPayload();
  v21 = v18 + v14[5];
  *v21 = swift_getKeyPath();
  v21[8] = 0;
  v22 = v18 + v14[8];
  *v22 = a1;
  *(v22 + 1) = a2;
  v22[16] = a3;
  v23 = (v18 + v14[11]);
  *v23 = a5;
  v23[1] = a6;
  v24 = v14[12];
  v25 = objc_allocWithZone(type metadata accessor for EmbeddedPicker());

  *(v18 + v24) = [v25 init];
  v26 = v14[13];
  *(v18 + v26) = [objc_allocWithZone(type metadata accessor for TransparentNotifierViewController()) init];
  v27 = v18 + v14[14];
  *v27 = implicit closure #2 in implicit closure #1 in variable initialization expression of SuggestionPickerModifier._sheetManager;
  *(v27 + 1) = 0;
  v27[16] = 0;
  v28 = v18 + v14[15];
  UUID.init()();
  v29 = v18 + v14[16];
  v34 = 0;
  State.init(wrappedValue:)();
  v30 = v36;
  *v29 = v35;
  *(v29 + 1) = v30;
  MEMORY[0x23EE6FF10](v18, v32, v14, v33);
  return outlined destroy of SuggestionPickerModifier(v18, type metadata accessor for SuggestionPickerModifier);
}

uint64_t JournalConfiguration.selectedSuggestionID.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for JournalConfiguration(0) + 24);

  return outlined assign with take of UUID?(a1, v3);
}

uint64_t JournalConfiguration.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0x3FE0000000000000;
  *(a1 + 8) = 0;
  v2 = *(type metadata accessor for JournalConfiguration(0) + 24);
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 56);

  return v4(a1 + v2, 1, 1, v3);
}

uint64_t static JournalConfiguration.makeConfigForFullScreen(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 0;
  v4 = *(type metadata accessor for JournalConfiguration(0) + 24);
  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  *a2 = 0x3FF0000000000000;

  return outlined assign with copy of UUID?(a1, a2 + v4);
}

uint64_t View.journalingSuggestionsPicker(isPresented:journalConfig:onCompletion:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v35 = a8;
  v34 = a7;
  v14 = type metadata accessor for SuggestionPickerModifier(0);
  v15 = *(*(v14 - 1) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = (&v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *(v16 + 36);
  v20 = type metadata accessor for JournalingSuggestionPresentationToken(0);
  (*(*(v20 - 8) + 56))(v18 + v19, 1, 1, v20);
  v21 = v14[10];
  outlined init with copy of JournalConfiguration(a4, v18 + v21, type metadata accessor for JournalConfiguration);
  v22 = type metadata accessor for JournalConfiguration(0);
  (*(*(v22 - 8) + 56))(v18 + v21, 0, 1, v22);
  *(v18 + v14[6]) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMR);
  swift_storeEnumTagMultiPayload();
  *(v18 + v14[7]) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  *v18 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA10ScenePhaseO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA10ScenePhaseO_GMR);
  swift_storeEnumTagMultiPayload();
  v23 = v18 + v14[5];
  *v23 = swift_getKeyPath();
  v23[8] = 0;
  v24 = v18 + v14[8];
  *v24 = a1;
  *(v24 + 1) = a2;
  v24[16] = a3;
  v25 = (v18 + v14[11]);
  *v25 = a5;
  v25[1] = a6;
  v26 = v14[12];
  v27 = objc_allocWithZone(type metadata accessor for EmbeddedPicker());

  *(v18 + v26) = [v27 init];
  v28 = v14[13];
  *(v18 + v28) = [objc_allocWithZone(type metadata accessor for TransparentNotifierViewController()) init];
  v29 = v18 + v14[14];
  *v29 = implicit closure #2 in implicit closure #1 in variable initialization expression of SuggestionPickerModifier._sheetManager;
  *(v29 + 1) = 0;
  v29[16] = 0;
  v30 = v18 + v14[15];
  UUID.init()();
  v31 = v18 + v14[16];
  v36 = 0;
  State.init(wrappedValue:)();
  v32 = v38;
  *v31 = v37;
  *(v31 + 1) = v32;
  MEMORY[0x23EE6FF10](v18, v34, v14, v35);
  return outlined destroy of SuggestionPickerModifier(v18, type metadata accessor for SuggestionPickerModifier);
}

uint64_t SuggestionPickerModifier.horizontalClass.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v16 - v10);
  v12 = type metadata accessor for SuggestionPickerModifier(0);
  outlined init with copy of URL?(v1 + *(v12 + 24), v11, &_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return outlined init with take of UserInterfaceSizeClass?(v11, a1);
  }

  v14 = *v11;
  static os_log_type_t.fault.getter();
  v15 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)();

  EnvironmentValues.init()();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v7, v3);
}

uint64_t SuggestionPickerModifier.modifierContent(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v88 = a2;
  v90 = type metadata accessor for ScenePhase();
  v89 = *(v90 - 8);
  v4 = *(v89 + 64);
  MEMORY[0x28223BE20](v90);
  v87 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for EnvironmentValues();
  v75 = *(v76 - 8);
  v6 = *(v75 + 64);
  MEMORY[0x28223BE20](v76);
  v74 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SuggestionPickerModifier(0);
  v96 = v8;
  v93 = *(v8 - 8);
  v92 = *(v93 + 64);
  MEMORY[0x28223BE20](v8);
  v81 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy21JournalingSuggestions016SuggestionPickerD033_315EC45933A08D2AC82BECE24BED7720LLVGMd, &_s7SwiftUI21_ViewModifier_ContentVy21JournalingSuggestions016SuggestionPickerD033_315EC45933A08D2AC82BECE24BED7720LLVGMR);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v74 - v13;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ZStackVyAA9TupleViewVyAA01_E16Modifier_ContentVy21JournalingSuggestions016SuggestionPickerF033_315EC45933A08D2AC82BECE24BED7720LLVG_AA08ModifiedG0VyANyAH34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGGMd, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA01_E16Modifier_ContentVy21JournalingSuggestions016SuggestionPickerF033_315EC45933A08D2AC82BECE24BED7720LLVG_AA08ModifiedG0VyANyAH34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGGMR);
  v15 = *(*(v91 - 1) + 64);
  MEMORY[0x28223BE20](v91);
  v17 = (&v74 - v16);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleE0VyAA01_e9Modifier_D0Vy21JournalingSuggestions016SuggestionPickerL033_315EC45933A08D2AC82BECE24BED7720LLVG_ACyACyAO34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionL0VGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleE0VyAA01_e9Modifier_D0Vy21JournalingSuggestions016SuggestionPickerL033_315EC45933A08D2AC82BECE24BED7720LLVG_ACyACyAO34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionL0VGMR);
  v18 = *(*(v82 - 8) + 64);
  MEMORY[0x28223BE20](v82);
  v94 = &v74 - v19;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAA15ModifiedContentVyAcAEAdeF_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleC0VyAA01_c9Modifier_I0Vy21JournalingSuggestions016SuggestionPickerL033_315EC45933A08D2AC82BECE24BED7720LLVG_AHyAHyAO34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionL0VG_So14UISceneSessionCSgQo_Md, &_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAA15ModifiedContentVyAcAEAdeF_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleC0VyAA01_c9Modifier_I0Vy21JournalingSuggestions016SuggestionPickerL033_315EC45933A08D2AC82BECE24BED7720LLVG_AHyAHyAO34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionL0VG_So14UISceneSessionCSgQo_MR);
  v83 = *(v84 - 8);
  v20 = *(v83 + 64);
  MEMORY[0x28223BE20](v84);
  v95 = &v74 - v21;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAeAEAfgH_Qrqd___SbyyctSQRd__lFQOyACyAeAEAfgH_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleE0VyAA01_e9Modifier_D0Vy21JournalingSuggestions016SuggestionPickerL033_315EC45933A08D2AC82BECE24BED7720LLVG_ACyACyAO34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionL0VG_So14UISceneSessionCSgQo__SbQo_A4_GMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAeAEAfgH_Qrqd___SbyyctSQRd__lFQOyACyAeAEAfgH_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleE0VyAA01_e9Modifier_D0Vy21JournalingSuggestions016SuggestionPickerL033_315EC45933A08D2AC82BECE24BED7720LLVG_ACyACyAO34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionL0VG_So14UISceneSessionCSgQo__SbQo_A4_GMR);
  v22 = *(*(v85 - 8) + 64);
  MEMORY[0x28223BE20](v85);
  v86 = &v74 - v23;
  *v17 = static Alignment.center.getter();
  v17[1] = v24;
  v80 = v17;
  v25 = v17 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA05TupleD0VyAA01_D16Modifier_ContentVy21JournalingSuggestions016SuggestionPickerI033_315EC45933A08D2AC82BECE24BED7720LLVG_AA08ModifiedJ0VyARyAL34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA06_FrameG0VGtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA05TupleD0VyAA01_D16Modifier_ContentVy21JournalingSuggestions016SuggestionPickerI033_315EC45933A08D2AC82BECE24BED7720LLVG_AA08ModifiedJ0VyARyAL34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA06_FrameG0VGtGGMR) + 44);
  v26 = *(v2 + *(v8 + 52));
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v79 = v103;
  v27 = v105;
  v78 = v107;
  v77 = v108;
  v110 = v104;
  v109 = v106;
  v28 = *(v11 + 16);
  v28(v14, a1, v10);
  LOBYTE(v17) = v110;
  LOBYTE(a1) = v109;
  v28(v25, v14, v10);
  v29 = &v25[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy21JournalingSuggestions016SuggestionPickerD033_315EC45933A08D2AC82BECE24BED7720LLVG_AA08ModifiedE0VyAJyAD34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtMd, &_s7SwiftUI21_ViewModifier_ContentVy21JournalingSuggestions016SuggestionPickerD033_315EC45933A08D2AC82BECE24BED7720LLVG_AA08ModifiedE0VyAJyAD34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtMR) + 48)];
  *v29 = v26;
  *(v29 + 1) = 0;
  *(v29 + 2) = v79;
  v29[24] = v17;
  *(v29 + 4) = v27;
  v29[40] = a1;
  v30 = v77;
  *(v29 + 6) = v78;
  *(v29 + 7) = v30;
  v31 = v97;
  v32 = (*(v11 + 8))(v14, v10);
  LOBYTE(v98) = (*((*MEMORY[0x277D85000] & *v26) + 0x58))(v32) & 1;
  v33 = v81;
  outlined init with copy of JournalConfiguration(v31, v81, type metadata accessor for SuggestionPickerModifier);
  v34 = *(v93 + 80);
  v35 = (v34 + 16) & ~v34;
  v36 = v35 + v92;
  v37 = swift_allocObject();
  outlined init with take of SuggestionPickerModifier(v33, v37 + v35, type metadata accessor for SuggestionPickerModifier);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type ZStack<TupleView<(_ViewModifier_Content<SuggestionPickerModifier>, ModifiedContent<ModifiedContent<EmbeddedJSPickerTransparentWrapper, _OpacityEffect>, _FrameLayout>)>> and conformance ZStack<A>, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA01_E16Modifier_ContentVy21JournalingSuggestions016SuggestionPickerF033_315EC45933A08D2AC82BECE24BED7720LLVG_AA08ModifiedG0VyANyAH34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGGMd, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA01_E16Modifier_ContentVy21JournalingSuggestions016SuggestionPickerF033_315EC45933A08D2AC82BECE24BED7720LLVG_AA08ModifiedG0VyANyAH34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGGMR);
  v38 = v94;
  v39 = v80;
  View.onChange<A>(of:initial:_:)();

  outlined destroy of URL?(v39, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA01_E16Modifier_ContentVy21JournalingSuggestions016SuggestionPickerF033_315EC45933A08D2AC82BECE24BED7720LLVG_AA08ModifiedG0VyANyAH34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGGMd, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA01_E16Modifier_ContentVy21JournalingSuggestions016SuggestionPickerF033_315EC45933A08D2AC82BECE24BED7720LLVG_AA08ModifiedG0VyANyAH34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGGMR);
  outlined init with copy of JournalConfiguration(v31, v33, type metadata accessor for SuggestionPickerModifier);
  v92 = v36;
  v40 = swift_allocObject();
  v93 = v35;
  v41 = v40 + v35;
  v42 = v33;
  outlined init with take of SuggestionPickerModifier(v33, v41, type metadata accessor for SuggestionPickerModifier);
  v43 = v82;
  v44 = &v38[*(v82 + 36)];
  *v44 = partial apply for closure #3 in SuggestionPickerModifier.modifierContent(content:);
  v44[1] = v40;
  v44[2] = 0;
  v44[3] = 0;
  v45 = v31 + *(v96 + 20);
  v46 = *v45;
  if (*(v45 + 8) == 1)
  {
    v47 = v46;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v48 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v49 = v74;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<UISceneSession?>.Content(v46, 0);
    (*(v75 + 8))(v49, v76);
    v47 = v98;
    v46 = v98;
  }

  v98 = v46;
  v79 = type metadata accessor for SuggestionPickerModifier;
  outlined init with copy of JournalConfiguration(v31, v42, type metadata accessor for SuggestionPickerModifier);
  v50 = swift_allocObject();
  v80 = v34;
  v91 = type metadata accessor for SuggestionPickerModifier;
  v51 = v93;
  outlined init with take of SuggestionPickerModifier(v42, v50 + v93, type metadata accessor for SuggestionPickerModifier);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14UISceneSessionCSgMd, &_sSo14UISceneSessionCSgMR);
  v77 = lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>();
  v52 = lazy protocol witness table accessor for type UISceneSession? and conformance <A> A?();
  v53 = v94;
  View.onChange<A>(of:initial:_:)();

  outlined destroy of URL?(v53, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleE0VyAA01_e9Modifier_D0Vy21JournalingSuggestions016SuggestionPickerL033_315EC45933A08D2AC82BECE24BED7720LLVG_ACyACyAO34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionL0VGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleE0VyAA01_e9Modifier_D0Vy21JournalingSuggestions016SuggestionPickerL033_315EC45933A08D2AC82BECE24BED7720LLVG_ACyACyAO34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionL0VGMR);
  v54 = v97;
  v55 = v97 + *(v96 + 32);
  v56 = *v55;
  v57 = *(v55 + 8);
  LOBYTE(v55) = *(v55 + 16);
  v98 = v56;
  v99 = v57;
  LOBYTE(v100) = v55;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd, &_s7SwiftUI7BindingVySbGMR);
  MEMORY[0x23EE6FFD0](&v102, v58);
  v59 = v79;
  outlined init with copy of JournalConfiguration(v54, v42, v79);
  v60 = swift_allocObject();
  outlined init with take of SuggestionPickerModifier(v42, v60 + v51, v91);
  v98 = v43;
  v99 = v78;
  v100 = v77;
  v101 = v52;
  swift_getOpaqueTypeConformance2();
  v61 = v86;
  v62 = v84;
  v63 = v95;
  View.onChange<A>(of:initial:_:)();

  (*(v83 + 8))(v63, v62);
  v64 = v97;
  v65 = v59;
  outlined init with copy of JournalConfiguration(v97, v42, v59);
  v66 = swift_allocObject();
  v67 = v93;
  v68 = v91;
  outlined init with take of SuggestionPickerModifier(v42, v66 + v93, v91);
  v69 = (v61 + *(v85 + 36));
  *v69 = 0;
  v69[1] = 0;
  v69[2] = partial apply for closure #6 in SuggestionPickerModifier.modifierContent(content:);
  v69[3] = v66;
  v70 = v87;
  specialized Environment.wrappedValue.getter(v87);
  outlined init with copy of JournalConfiguration(v64, v42, v65);
  v71 = swift_allocObject();
  outlined init with take of SuggestionPickerModifier(v42, v71 + v67, v68);
  lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type SuggestionPickerModifier and conformance SuggestionPickerModifier(&lazy protocol witness table cache variable for type ScenePhase and conformance ScenePhase, MEMORY[0x277CDD6C8]);
  v72 = v90;
  View.onChange<A>(of:initial:_:)();

  (*(v89 + 8))(v70, v72);
  return outlined destroy of URL?(v61, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAeAEAfgH_Qrqd___SbyyctSQRd__lFQOyACyAeAEAfgH_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleE0VyAA01_e9Modifier_D0Vy21JournalingSuggestions016SuggestionPickerL033_315EC45933A08D2AC82BECE24BED7720LLVG_ACyACyAO34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionL0VG_So14UISceneSessionCSgQo__SbQo_A4_GMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAeAEAfgH_Qrqd___SbyyctSQRd__lFQOyACyAeAEAfgH_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleE0VyAA01_e9Modifier_D0Vy21JournalingSuggestions016SuggestionPickerL033_315EC45933A08D2AC82BECE24BED7720LLVG_ACyACyAO34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionL0VG_So14UISceneSessionCSgQo__SbQo_A4_GMR);
}

void closure #2 in SuggestionPickerModifier.modifierContent(content:)(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21JournalingSuggestions0A27SuggestionPresentationTokenVSgMd, &_s21JournalingSuggestions0A27SuggestionPresentationTokenVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v61 = v60 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v62 = v60 - v10;
  v66 = type metadata accessor for JournalConfiguration(0);
  v11 = *(v66 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v66);
  v64 = v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21JournalingSuggestions20JournalConfigurationVSgMd, &_s21JournalingSuggestions20JournalConfigurationVSgMR);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = v60 - v19;
  v21 = type metadata accessor for SuggestionPickerModifier(0);
  v22 = *(*(v21 - 1) + 64);
  v23 = MEMORY[0x28223BE20](v21);
  v63 = v60 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v27 = v60 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = v60 - v28;
  v65 = *a2;
  if (one-time initialization token for picker != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  v31 = __swift_project_value_buffer(v30, static Logger.picker);
  outlined init with copy of JournalConfiguration(a3, v29, type metadata accessor for SuggestionPickerModifier);
  outlined init with copy of JournalConfiguration(a3, v27, type metadata accessor for SuggestionPickerModifier);
  v60[1] = v31;
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v32, v33))
  {
    outlined destroy of SuggestionPickerModifier(v27, type metadata accessor for SuggestionPickerModifier);
    outlined destroy of SuggestionPickerModifier(v29, type metadata accessor for SuggestionPickerModifier);
    goto LABEL_11;
  }

  v60[0] = a3;
  v34 = swift_slowAlloc();
  *v34 = 67109376;
  v35 = &v29[v21[8]];
  v36 = *v35;
  v37 = *(v35 + 1);
  LOBYTE(v35) = v35[16];
  v68 = v36;
  v69 = v37;
  v70 = v35;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd, &_s7SwiftUI7BindingVySbGMR);
  MEMORY[0x23EE6FFD0](&v67, v38);
  v39 = v67;
  outlined destroy of SuggestionPickerModifier(v29, type metadata accessor for SuggestionPickerModifier);
  *(v34 + 4) = v39;
  *(v34 + 8) = 1024;
  outlined init with copy of URL?(&v27[v21[10]], v20, &_s21JournalingSuggestions20JournalConfigurationVSgMd, &_s21JournalingSuggestions20JournalConfigurationVSgMR);
  if ((*(v11 + 48))(v20, 1, v66) == 1)
  {
    outlined destroy of URL?(v20, &_s21JournalingSuggestions20JournalConfigurationVSgMd, &_s21JournalingSuggestions20JournalConfigurationVSgMR);
LABEL_9:
    v41 = 0;
    goto LABEL_10;
  }

  v40 = v20[8];
  outlined destroy of SuggestionPickerModifier(v20, type metadata accessor for JournalConfiguration);
  if ((v40 & 1) == 0)
  {
    goto LABEL_9;
  }

  v41 = 1;
LABEL_10:
  outlined destroy of SuggestionPickerModifier(v27, type metadata accessor for SuggestionPickerModifier);
  *(v34 + 10) = v41;
  _os_log_impl(&dword_238A75000, v32, v33, "SuggestionPickerModifier viewHasAppeared, presenting=%{BOOL}d, presentFullScreen=%{BOOL}d", v34, 0xEu);
  MEMORY[0x23EE71510](v34, -1, -1);
  a3 = v60[0];
LABEL_11:

  if (!v65)
  {
    return;
  }

  outlined init with copy of URL?(a3 + v21[10], v18, &_s21JournalingSuggestions20JournalConfigurationVSgMd, &_s21JournalingSuggestions20JournalConfigurationVSgMR);
  if ((*(v11 + 48))(v18, 1, v66) == 1)
  {
    outlined destroy of URL?(v18, &_s21JournalingSuggestions20JournalConfigurationVSgMd, &_s21JournalingSuggestions20JournalConfigurationVSgMR);
  }

  else
  {
    v42 = v64;
    outlined init with take of SuggestionPickerModifier(v18, v64, type metadata accessor for JournalConfiguration);
    v43 = *(v42 + 8);
    outlined destroy of SuggestionPickerModifier(v42, type metadata accessor for JournalConfiguration);
    if (v43 != 1)
    {
      return;
    }
  }

  SuggestionPickerModifier.activatePicker()();
  v44 = a3 + v21[8];
  v45 = *v44;
  v46 = *(v44 + 8);
  LOBYTE(v44) = *(v44 + 16);
  v68 = v45;
  v69 = v46;
  v70 = v44;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd, &_s7SwiftUI7BindingVySbGMR);
  MEMORY[0x23EE6FFD0](&v67);
  if (v67 == 1)
  {
    v48 = v61;
    outlined init with copy of URL?(a3 + v21[9], v61, &_s21JournalingSuggestions0A27SuggestionPresentationTokenVSgMd, &_s21JournalingSuggestions0A27SuggestionPresentationTokenVSgMR);
    v49 = type metadata accessor for JournalingSuggestionPresentationToken(0);
    if ((*(*(v49 - 8) + 48))(v48, 1, v49) == 1)
    {
      outlined destroy of URL?(v48, &_s21JournalingSuggestions0A27SuggestionPresentationTokenVSgMd, &_s21JournalingSuggestions0A27SuggestionPresentationTokenVSgMR);
      v50 = type metadata accessor for UUID();
      v51 = v62;
      (*(*(v50 - 8) + 56))(v62, 1, 1, v50);
    }

    else
    {
      v51 = v62;
      outlined init with copy of URL?(v48, v62, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      outlined destroy of SuggestionPickerModifier(v48, type metadata accessor for JournalingSuggestionPresentationToken);
    }

    v52 = v63;
    SuggestionPickerModifier.updatePresentation(for:)(v51);
    outlined destroy of URL?(v51, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    outlined init with copy of JournalConfiguration(a3, v52, type metadata accessor for SuggestionPickerModifier);
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 67109120;
      v56 = v52 + v21[8];
      v57 = *v56;
      v58 = *(v56 + 8);
      LOBYTE(v56) = *(v56 + 16);
      v68 = v57;
      v69 = v58;
      v70 = v56;
      MEMORY[0x23EE6FFD0](&v67, v47);
      v59 = v67;
      outlined destroy of SuggestionPickerModifier(v52, type metadata accessor for SuggestionPickerModifier);
      *(v55 + 4) = v59;
      _os_log_impl(&dword_238A75000, v53, v54, "SuggestionPickerModifier viewHasAppeared shouldPresentRightAway, presenting=%{BOOL}d", v55, 8u);
      MEMORY[0x23EE71510](v55, -1, -1);
    }

    else
    {
      outlined destroy of SuggestionPickerModifier(v52, type metadata accessor for SuggestionPickerModifier);
    }
  }
}

void SuggestionPickerModifier.activatePicker()()
{
  v1 = v0;
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SuggestionPickerModifier(0);
  v8 = v0 + *(v7 + 20);
  v9 = *v8;
  v10 = *(v8 + 8);
  if (v10 == 1)
  {
    v11 = v9;
    v12 = v9;
    if (!v9)
    {
      return;
    }
  }

  else
  {
    v13 = *v8;

    static os_log_type_t.fault.getter();
    v14 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<UISceneSession?>.Content(v9, 0);
    (*(v3 + 8))(v6, v2);
    v12 = v31;
    if (!v31)
    {
      return;
    }
  }

  v30 = v3;

  if (one-time initialization token for picker != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Logger.picker);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_238A75000, v16, v17, "Scene session non nil, activating the sheet manager", v18, 2u);
    MEMORY[0x23EE71510](v18, -1, -1);
  }

  v19 = (v1 + *(v7 + 56));
  v20 = *v19;
  v21 = v19[1];
  v22 = *(v19 + 16);
  type metadata accessor for SuggestionSheetUIManager();
  lazy protocol witness table accessor for type SuggestionPickerModifier and conformance SuggestionPickerModifier(&lazy protocol witness table cache variable for type SuggestionSheetUIManager and conformance SuggestionSheetUIManager, type metadata accessor for SuggestionSheetUIManager);
  v23 = StateObject.wrappedValue.getter();
  if (v10)
  {
    v24 = v9;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v29 = v2;
    v25 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<UISceneSession?>.Content(v9, 0);
    (*(v30 + 8))(v6, v29);
    v9 = v31;
  }

  v26 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v23) + 0xF0))(v9);

  v27 = StateObject.wrappedValue.getter();
  (*((*v26 & *v27) + 0x2D8))();
}

void SuggestionPickerModifier.updatePresentation(for:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21JournalingSuggestions20JournalConfigurationVSgMd, &_s21JournalingSuggestions20JournalConfigurationVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v116 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21JournalingSuggestions0A27SuggestionPresentationTokenVSgMd, &_s21JournalingSuggestions0A27SuggestionPresentationTokenVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v126 = &v116 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v116 - v12;
  v14 = type metadata accessor for EnvironmentValues();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v125 = &v116 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for SuggestionPickerModifier(0);
  v127 = *(v18 - 1);
  v19 = *(v127 + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v128 = &v116 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v20);
  v129 = &v116 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v116 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v116 - v27;
  v29 = *(v26 + 32);
  v130 = v1;
  v30 = v1 + v29;
  v31 = *v30;
  v32 = *(v30 + 8);
  LOBYTE(v30) = *(v30 + 16);
  v132[0] = v31;
  v132[1] = v32;
  v133 = v30;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd, &_s7SwiftUI7BindingVySbGMR);
  MEMORY[0x23EE6FFD0](&v131, v33);
  if (v131 == 1)
  {
    v120 = v15;
    v121 = v14;
    v34 = v6;
    v35 = a1;
    if (one-time initialization token for picker != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    v37 = __swift_project_value_buffer(v36, static Logger.picker);
    v38 = v130;
    outlined init with copy of JournalConfiguration(v130, v28, type metadata accessor for SuggestionPickerModifier);
    outlined init with copy of JournalConfiguration(v38, v25, type metadata accessor for SuggestionPickerModifier);
    v123 = v37;
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.debug.getter();
    v41 = os_log_type_enabled(v39, v40);
    v124 = v35;
    if (v41)
    {
      v117 = v40;
      v118 = v39;
      v42 = swift_slowAlloc();
      v116 = swift_slowAlloc();
      v132[0] = v116;
      v43 = v42;
      *v42 = 136315394;
      v44 = &v28[v18[5]];
      v45 = *v44;
      LODWORD(v44) = v44[8];
      v122 = v34;
      v119 = v13;
      if (v44 == 1)
      {
        v46 = v45;
        v47 = v121;
      }

      else
      {

        static os_log_type_t.fault.getter();
        v60 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        v61 = v125;
        EnvironmentValues.init()();
        swift_getAtKeyPath();
        outlined consume of Environment<UISceneSession?>.Content(v45, 0);
        v62 = v61;
        v47 = v121;
        (*(v120 + 8))(v62, v121);
        v45 = v131;
      }

      v63 = v43;
      if (v45 && (v64 = [v45 scene], v45, v64))
      {
        v65 = [v64 _FBSScene];

        v66 = [v65 identityToken];
        v67 = [v66 stringRepresentation];

        v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v70 = v69;
      }

      else
      {
        v70 = 0xE300000000000000;
        v68 = 7104878;
      }

      outlined destroy of SuggestionPickerModifier(v28, type metadata accessor for SuggestionPickerModifier);
      v71 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v68, v70, v132);

      *(v63 + 1) = v71;
      *(v63 + 6) = 2080;
      v72 = &v25[v18[5]];
      v73 = *v72;
      if (v72[8] == 1)
      {
        v74 = v73;
      }

      else
      {

        static os_log_type_t.fault.getter();
        v75 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        v76 = v125;
        EnvironmentValues.init()();
        swift_getAtKeyPath();
        outlined consume of Environment<UISceneSession?>.Content(v73, 0);
        (*(v120 + 8))(v76, v47);
        v73 = v131;
      }

      v59 = v122;
      v58 = v119;
      v77 = v117;
      v78 = 7104878;
      if (v73)
      {
        v79 = [v73 scene];

        if (v79)
        {
          [v79 _referenceBounds];

          v78 = CGRect.debugDescription.getter();
          v81 = v80;
        }

        else
        {
          v81 = 0xE300000000000000;
          v78 = 7104878;
        }
      }

      else
      {
        v81 = 0xE300000000000000;
      }

      outlined destroy of SuggestionPickerModifier(v25, type metadata accessor for SuggestionPickerModifier);
      v82 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v78, v81, v132);

      *(v63 + 14) = v82;
      v83 = v77;
      v84 = v118;
      _os_log_impl(&dword_238A75000, v118, v83, "Presenting picker, %s, bounds=%s", v63, 0x16u);
      v85 = v116;
      swift_arrayDestroy();
      MEMORY[0x23EE71510](v85, -1, -1);
      MEMORY[0x23EE71510](v63, -1, -1);
    }

    else
    {

      outlined destroy of SuggestionPickerModifier(v28, type metadata accessor for SuggestionPickerModifier);
      outlined destroy of SuggestionPickerModifier(v25, type metadata accessor for SuggestionPickerModifier);
      v58 = v13;
      v59 = v34;
    }

    v86 = v129;
    outlined init with copy of JournalConfiguration(v130, v129, type metadata accessor for SuggestionPickerModifier);
    v87 = Logger.logObject.getter();
    v88 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      v132[0] = v90;
      *v89 = 136315138;
      v91 = v126;
      outlined init with copy of URL?(v86 + v18[9], v126, &_s21JournalingSuggestions0A27SuggestionPresentationTokenVSgMd, &_s21JournalingSuggestions0A27SuggestionPresentationTokenVSgMR);
      v92 = type metadata accessor for JournalingSuggestionPresentationToken(0);
      if ((*(*(v92 - 8) + 48))(v91, 1, v92) == 1)
      {
        v93 = v91;
        v94 = 7104878;
        outlined destroy of URL?(v93, &_s21JournalingSuggestions0A27SuggestionPresentationTokenVSgMd, &_s21JournalingSuggestions0A27SuggestionPresentationTokenVSgMR);
        v95 = 0xE300000000000000;
      }

      else
      {
        v122 = v59;
        outlined init with copy of URL?(v91, v58, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        outlined destroy of SuggestionPickerModifier(v91, type metadata accessor for JournalingSuggestionPresentationToken);
        v96 = type metadata accessor for UUID();
        v97 = *(v96 - 8);
        if ((*(v97 + 48))(v58, 1, v96) == 1)
        {
          v94 = 7104878;
          outlined destroy of URL?(v58, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          v95 = 0xE300000000000000;
        }

        else
        {
          v94 = UUID.uuidString.getter();
          v98 = v58;
          v95 = v99;
          (*(v97 + 8))(v98, v96);
        }

        v59 = v122;
        v86 = v129;
      }

      outlined destroy of SuggestionPickerModifier(v86, type metadata accessor for SuggestionPickerModifier);
      v100 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v94, v95, v132);

      *(v89 + 4) = v100;
      _os_log_impl(&dword_238A75000, v87, v88, "Presentation token notificationSuggestionID: %s", v89, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v90);
      MEMORY[0x23EE71510](v90, -1, -1);
      MEMORY[0x23EE71510](v89, -1, -1);
    }

    else
    {

      outlined destroy of SuggestionPickerModifier(v86, type metadata accessor for SuggestionPickerModifier);
    }

    v101 = v130;
    v102 = (v130 + v18[14]);
    v103 = *v102;
    v104 = v102[1];
    v105 = *(v102 + 16);
    type metadata accessor for SuggestionSheetUIManager();
    lazy protocol witness table accessor for type SuggestionPickerModifier and conformance SuggestionPickerModifier(&lazy protocol witness table cache variable for type SuggestionSheetUIManager and conformance SuggestionSheetUIManager, type metadata accessor for SuggestionSheetUIManager);
    v106 = StateObject.wrappedValue.getter();
    outlined init with copy of URL?(v101 + v18[10], v59, &_s21JournalingSuggestions20JournalConfigurationVSgMd, &_s21JournalingSuggestions20JournalConfigurationVSgMR);
    v107 = v59;
    v108 = MEMORY[0x277D85000];
    (*((*MEMORY[0x277D85000] & *v106) + 0xD8))(v107);

    v57 = StateObject.wrappedValue.getter();
    v109 = v18[15];
    v110 = (v101 + v18[11]);
    v111 = *v110;
    v112 = v110[1];
    v113 = v128;
    outlined init with copy of JournalConfiguration(v101, v128, type metadata accessor for SuggestionPickerModifier);
    v114 = (*(v127 + 80) + 16) & ~*(v127 + 80);
    v115 = swift_allocObject();
    outlined init with take of SuggestionPickerModifier(v113, v115 + v114, type metadata accessor for SuggestionPickerModifier);
    (*((*v108 & *v57) + 0x2E0))(v101 + v109, v124, v111, v112, partial apply for closure #1 in SuggestionPickerModifier.updatePresentation(for:), v115);
  }

  else
  {
    if (one-time initialization token for picker != -1)
    {
      swift_once();
    }

    v48 = type metadata accessor for Logger();
    __swift_project_value_buffer(v48, static Logger.picker);
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_238A75000, v49, v50, "dismissing picker", v51, 2u);
      MEMORY[0x23EE71510](v51, -1, -1);
    }

    v52 = v130;
    v53 = (v130 + v18[14]);
    v54 = *v53;
    v55 = v53[1];
    v56 = *(v53 + 16);
    type metadata accessor for SuggestionSheetUIManager();
    lazy protocol witness table accessor for type SuggestionPickerModifier and conformance SuggestionPickerModifier(&lazy protocol witness table cache variable for type SuggestionSheetUIManager and conformance SuggestionSheetUIManager, type metadata accessor for SuggestionSheetUIManager);
    v57 = StateObject.wrappedValue.getter();
    (*((*MEMORY[0x277D85000] & *v57) + 0x2F8))(v52 + v18[15], 0);
  }
}

void closure #3 in SuggestionPickerModifier.modifierContent(content:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21JournalingSuggestions0A27SuggestionPresentationTokenVSgMd, &_s21JournalingSuggestions0A27SuggestionPresentationTokenVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v55 = &v54 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v56 = &v54 - v7;
  v58 = type metadata accessor for JournalConfiguration(0);
  v8 = *(v58 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v58);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21JournalingSuggestions20JournalConfigurationVSgMd, &_s21JournalingSuggestions20JournalConfigurationVSgMR);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v54 - v17;
  v19 = type metadata accessor for SuggestionPickerModifier(0);
  v20 = *(*(v19 - 1) + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v54 - v24;
  if (one-time initialization token for picker != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  v27 = __swift_project_value_buffer(v26, static Logger.picker);
  outlined init with copy of JournalConfiguration(a1, v25, type metadata accessor for SuggestionPickerModifier);
  v59 = a1;
  outlined init with copy of JournalConfiguration(a1, v23, type metadata accessor for SuggestionPickerModifier);
  v57 = v27;
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v28, v29))
  {
    outlined destroy of SuggestionPickerModifier(v23, type metadata accessor for SuggestionPickerModifier);
    outlined destroy of SuggestionPickerModifier(v25, type metadata accessor for SuggestionPickerModifier);
    v36 = v58;
    goto LABEL_11;
  }

  v54 = v11;
  v30 = swift_slowAlloc();
  *v30 = 67109376;
  v31 = &v25[v19[8]];
  v32 = *v31;
  v33 = *(v31 + 1);
  LOBYTE(v31) = v31[16];
  v61 = v32;
  v62 = v33;
  v63 = v31;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd, &_s7SwiftUI7BindingVySbGMR);
  MEMORY[0x23EE6FFD0](&v60, v34);
  v35 = v60;
  outlined destroy of SuggestionPickerModifier(v25, type metadata accessor for SuggestionPickerModifier);
  *(v30 + 4) = v35;
  *(v30 + 8) = 1024;
  outlined init with copy of URL?(&v23[v19[10]], v18, &_s21JournalingSuggestions20JournalConfigurationVSgMd, &_s21JournalingSuggestions20JournalConfigurationVSgMR);
  v36 = v58;
  if ((*(v8 + 48))(v18, 1, v58) == 1)
  {
    outlined destroy of URL?(v18, &_s21JournalingSuggestions20JournalConfigurationVSgMd, &_s21JournalingSuggestions20JournalConfigurationVSgMR);
LABEL_9:
    v38 = 0;
    goto LABEL_10;
  }

  v37 = v18[8];
  outlined destroy of SuggestionPickerModifier(v18, type metadata accessor for JournalConfiguration);
  if ((v37 & 1) == 0)
  {
    goto LABEL_9;
  }

  v38 = 1;
LABEL_10:
  outlined destroy of SuggestionPickerModifier(v23, type metadata accessor for SuggestionPickerModifier);
  *(v30 + 10) = v38;
  _os_log_impl(&dword_238A75000, v28, v29, "SuggestionPickerModifier onAppear, wait for viewDidAppear, presenting=%{BOOL}d, presentFullScreen=%{BOOL}d", v30, 0xEu);
  MEMORY[0x23EE71510](v30, -1, -1);
  v11 = v54;
LABEL_11:

  v39 = v59;
  SuggestionPickerModifier.activatePicker()();
  outlined init with copy of URL?(v39 + v19[10], v16, &_s21JournalingSuggestions20JournalConfigurationVSgMd, &_s21JournalingSuggestions20JournalConfigurationVSgMR);
  if ((*(v8 + 48))(v16, 1, v36) == 1)
  {
    outlined destroy of URL?(v16, &_s21JournalingSuggestions20JournalConfigurationVSgMd, &_s21JournalingSuggestions20JournalConfigurationVSgMR);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_238A75000, v40, v41, "SuggestionPickerModifier onAppear, missing config", v42, 2u);
      MEMORY[0x23EE71510](v42, -1, -1);
    }
  }

  else
  {
    outlined init with take of SuggestionPickerModifier(v16, v11, type metadata accessor for JournalConfiguration);
    v43 = (v39 + v19[8]);
    v44 = *v43;
    v45 = v43[1];
    LOBYTE(v43) = *(v43 + 16);
    v61 = v44;
    v62 = v45;
    v63 = v43;
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd, &_s7SwiftUI7BindingVySbGMR);
    MEMORY[0x23EE6FFD0](&v60, v46);
    if (v60 == 1 && (v11[8] & 1) == 0)
    {
      v50 = v55;
      outlined init with copy of URL?(v39 + v19[9], v55, &_s21JournalingSuggestions0A27SuggestionPresentationTokenVSgMd, &_s21JournalingSuggestions0A27SuggestionPresentationTokenVSgMR);
      v51 = type metadata accessor for JournalingSuggestionPresentationToken(0);
      if ((*(*(v51 - 8) + 48))(v50, 1, v51) == 1)
      {
        outlined destroy of URL?(v50, &_s21JournalingSuggestions0A27SuggestionPresentationTokenVSgMd, &_s21JournalingSuggestions0A27SuggestionPresentationTokenVSgMR);
        v52 = type metadata accessor for UUID();
        v53 = v56;
        (*(*(v52 - 8) + 56))(v56, 1, 1, v52);
      }

      else
      {
        v53 = v56;
        outlined init with copy of URL?(v50, v56, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        outlined destroy of SuggestionPickerModifier(v50, type metadata accessor for JournalingSuggestionPresentationToken);
      }

      SuggestionPickerModifier.updatePresentation(for:)(v53);
      outlined destroy of URL?(v53, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    }

    else
    {
      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        *v49 = 0;
        _os_log_impl(&dword_238A75000, v47, v48, "SuggestionPickerModifier onAppear, wait for viewDidAppear", v49, 2u);
        MEMORY[0x23EE71510](v49, -1, -1);
      }
    }

    outlined destroy of SuggestionPickerModifier(v11, type metadata accessor for JournalConfiguration);
  }
}

void closure #4 in SuggestionPickerModifier.modifierContent(content:)(uint64_t a1)
{
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SuggestionPickerModifier(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v34 - v12;
  if (one-time initialization token for picker != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Logger.picker);
  outlined init with copy of JournalConfiguration(a1, v13, type metadata accessor for SuggestionPickerModifier);
  outlined init with copy of JournalConfiguration(a1, v11, type metadata accessor for SuggestionPickerModifier);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v37 = v3;
    v17 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v43 = v38;
    *v17 = 136315394;
    v18 = &v13[*(v7 + 20)];
    v19 = *v18;
    if (v18[8] == 1)
    {
      v20 = v19;
      if (v19)
      {
LABEL_6:
        v21 = [v19 description];

        v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v24 = v23;

LABEL_10:
        outlined destroy of SuggestionPickerModifier(v13, type metadata accessor for SuggestionPickerModifier);
        v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, &v43);

        *(v17 + 4) = v27;
        *(v17 + 12) = 1024;
        v28 = &v11[*(v7 + 32)];
        v29 = *v28;
        v30 = *(v28 + 1);
        LOBYTE(v28) = v28[16];
        v40 = v29;
        v41 = v30;
        v42 = v28;
        v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd, &_s7SwiftUI7BindingVySbGMR);
        MEMORY[0x23EE6FFD0](&v39, v31);
        v32 = v39;
        outlined destroy of SuggestionPickerModifier(v11, type metadata accessor for SuggestionPickerModifier);
        *(v17 + 14) = v32;
        _os_log_impl(&dword_238A75000, v15, v16, "Scene session changed, %s, presenting=%{BOOL}d", v17, 0x12u);
        v33 = v38;
        __swift_destroy_boxed_opaque_existential_1(v38);
        MEMORY[0x23EE71510](v33, -1, -1);
        MEMORY[0x23EE71510](v17, -1, -1);

        goto LABEL_11;
      }
    }

    else
    {

      static os_log_type_t.fault.getter();
      v35 = v2;
      v25 = static Log.runtimeIssuesLog.getter();
      v36 = v7;
      v26 = v25;
      os_log(_:dso:log:_:_:)();

      v7 = v36;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      outlined consume of Environment<UISceneSession?>.Content(v19, 0);
      (*(v37 + 8))(v6, v35);
      v19 = v40;
      if (v40)
      {
        goto LABEL_6;
      }
    }

    v24 = 0xE300000000000000;
    v22 = 7104878;
    goto LABEL_10;
  }

  outlined destroy of SuggestionPickerModifier(v11, type metadata accessor for SuggestionPickerModifier);

  outlined destroy of SuggestionPickerModifier(v13, type metadata accessor for SuggestionPickerModifier);
LABEL_11:
  SuggestionPickerModifier.activatePicker()();
}

uint64_t closure #5 in SuggestionPickerModifier.modifierContent(content:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21JournalingSuggestions0A27SuggestionPresentationTokenVSgMd, &_s21JournalingSuggestions0A27SuggestionPresentationTokenVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v14 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v14 - v8;
  SuggestionPickerModifier.activatePicker()();
  v10 = type metadata accessor for SuggestionPickerModifier(0);
  outlined init with copy of URL?(a1 + *(v10 + 36), v5, &_s21JournalingSuggestions0A27SuggestionPresentationTokenVSgMd, &_s21JournalingSuggestions0A27SuggestionPresentationTokenVSgMR);
  v11 = type metadata accessor for JournalingSuggestionPresentationToken(0);
  if ((*(*(v11 - 8) + 48))(v5, 1, v11) == 1)
  {
    outlined destroy of URL?(v5, &_s21JournalingSuggestions0A27SuggestionPresentationTokenVSgMd, &_s21JournalingSuggestions0A27SuggestionPresentationTokenVSgMR);
    v12 = type metadata accessor for UUID();
    (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  }

  else
  {
    outlined init with copy of URL?(v5, v9, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    outlined destroy of SuggestionPickerModifier(v5, type metadata accessor for JournalingSuggestionPresentationToken);
  }

  SuggestionPickerModifier.updatePresentation(for:)(v9);
  return outlined destroy of URL?(v9, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
}

void closure #7 in SuggestionPickerModifier.modifierContent(content:)(uint64_t a1)
{
  v2 = type metadata accessor for ScenePhase();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v22[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v22[-v8];
  specialized Environment.wrappedValue.getter(&v22[-v8]);
  (*(v3 + 104))(v7, *MEMORY[0x277CDD6B8], v2);
  v10 = static ScenePhase.== infix(_:_:)();
  v11 = *(v3 + 8);
  v11(v7, v2);
  v11(v9, v2);
  if (v10)
  {
    v12 = type metadata accessor for SuggestionPickerModifier(0);
    v13 = (a1 + *(v12 + 32));
    v14 = *v13;
    v15 = v13[1];
    LOBYTE(v13) = *(v13 + 16);
    v24 = v14;
    v25 = v15;
    v26 = v13;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd, &_s7SwiftUI7BindingVySbGMR);
    MEMORY[0x23EE6FFD0](&v23, v16);
    if (v23 == 1)
    {
      v17 = (a1 + *(v12 + 56));
      v18 = *v17;
      v19 = v17[1];
      v20 = *(v17 + 16);
      type metadata accessor for SuggestionSheetUIManager();
      lazy protocol witness table accessor for type SuggestionPickerModifier and conformance SuggestionPickerModifier(&lazy protocol witness table cache variable for type SuggestionSheetUIManager and conformance SuggestionSheetUIManager, type metadata accessor for SuggestionSheetUIManager);
      v21 = StateObject.wrappedValue.getter();
      (*((*MEMORY[0x277D85000] & *v21) + 0x300))();
    }
  }
}

id implicit closure #2 in implicit closure #1 in variable initialization expression of SuggestionPickerModifier._sheetManager()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = static SuggestionSheetUIManager.shared;

  return v1;
}

void SuggestionPickerModifier.presentAndUpdateEmbeddedPicker()()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v139 = *(v2 - 8);
  v140 = v2;
  v3 = *(v139 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v126 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v134 = &v126 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v132 = &v126 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v133 = &v126 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v126 - v15;
  MEMORY[0x28223BE20](v14);
  v136 = &v126 - v17;
  v141 = type metadata accessor for SuggestionPickerModifier(0);
  v18 = *(*(v141 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v141);
  v21 = &v126 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v126 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v126 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v126 - v28;
  if (one-time initialization token for picker != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  v31 = __swift_project_value_buffer(v30, static Logger.picker);
  outlined init with copy of JournalConfiguration(v1, v29, type metadata accessor for SuggestionPickerModifier);
  outlined init with copy of JournalConfiguration(v1, v27, type metadata accessor for SuggestionPickerModifier);
  outlined init with copy of JournalConfiguration(v1, v24, type metadata accessor for SuggestionPickerModifier);
  outlined init with copy of JournalConfiguration(v1, v21, type metadata accessor for SuggestionPickerModifier);
  v135 = v31;
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.debug.getter();
  v34 = os_log_type_enabled(v32, v33);
  v35 = v24;
  v36 = MEMORY[0x277D85000];
  v137 = v16;
  v138 = v6;
  if (v34)
  {
    v127 = v33;
    v128 = v32;
    v129 = v35;
    v130 = v21;
    v131 = v1;
    v37 = MEMORY[0x277D85000];
    v38 = swift_slowAlloc();
    v126 = swift_slowAlloc();
    v143 = v126;
    *v38 = 67109890;
    v39 = v141;
    v40 = &v29[*(v141 + 56)];
    v41 = *v40;
    v42 = *(v40 + 1);
    v43 = v40[16];
    type metadata accessor for SuggestionSheetUIManager();
    lazy protocol witness table accessor for type SuggestionPickerModifier and conformance SuggestionPickerModifier(&lazy protocol witness table cache variable for type SuggestionSheetUIManager and conformance SuggestionSheetUIManager, type metadata accessor for SuggestionSheetUIManager);
    v44 = StateObject.wrappedValue.getter();
    LOBYTE(v42) = (*((*v37 & *v44) + 0x1C0))();

    v45 = v29;
    v46 = v39;
    outlined destroy of SuggestionPickerModifier(v45, type metadata accessor for SuggestionPickerModifier);
    *(v38 + 4) = v42 & 1;
    *(v38 + 8) = 2080;
    v47 = &v27[v39[14]];
    v48 = *v47;
    v49 = *(v47 + 1);
    v50 = v47[16];
    v51 = StateObject.wrappedValue.getter();
    v52 = v37;
    v53 = *v37 & *v51;
    v54 = v136;
    (*(v53 + 400))();

    v56 = v139;
    v55 = v140;
    if ((*(v139 + 48))(v54, 1, v140))
    {
      outlined destroy of URL?(v54, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v57 = 0xE300000000000000;
      v58 = 7104878;
    }

    else
    {
      v60 = v134;
      (*(v56 + 16))(v134, v54, v55);
      outlined destroy of URL?(v54, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v61 = v56;
      v58 = UUID.uuidString.getter();
      v62 = v55;
      v57 = v63;
      (*(v61 + 8))(v60, v62);
    }

    v64 = v130;
    v65 = v128;
    outlined destroy of SuggestionPickerModifier(v27, type metadata accessor for SuggestionPickerModifier);
    v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v57, &v143);

    *(v38 + 10) = v66;
    *(v38 + 18) = 1024;
    v67 = v129;
    v68 = v129 + v46[8];
    v69 = *v68;
    v70 = *(v68 + 8);
    LOBYTE(v68) = *(v68 + 16);
    v144 = v69;
    v145 = v70;
    v146 = v68;
    v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd, &_s7SwiftUI7BindingVySbGMR);
    MEMORY[0x23EE6FFD0](&v142, v71);
    LODWORD(v66) = v142;
    outlined destroy of SuggestionPickerModifier(v67, type metadata accessor for SuggestionPickerModifier);
    *(v38 + 20) = v66;
    *(v38 + 24) = 1024;
    v72 = v64 + v46[16];
    v73 = *v72;
    v74 = *(v72 + 8);
    LOBYTE(v144) = v73;
    v145 = v74;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
    State.wrappedValue.getter();
    v75 = v142;
    outlined destroy of SuggestionPickerModifier(v64, type metadata accessor for SuggestionPickerModifier);
    *(v38 + 26) = v75;
    _os_log_impl(&dword_238A75000, v65, v127, "[presentAndUpdateEmbeddedPicker] shouldRequestEmbeddedScene=%{BOOL}d, connectionUUID=%s, presenting=%{BOOL}d, embeddedPickerPresented=%{BOOL}d", v38, 0x1Eu);
    v76 = v126;
    __swift_destroy_boxed_opaque_existential_1(v126);
    MEMORY[0x23EE71510](v76, -1, -1);
    MEMORY[0x23EE71510](v38, -1, -1);

    v59 = v131;
    v36 = v52;
  }

  else
  {
    outlined destroy of SuggestionPickerModifier(v21, type metadata accessor for SuggestionPickerModifier);
    outlined destroy of SuggestionPickerModifier(v35, type metadata accessor for SuggestionPickerModifier);
    outlined destroy of SuggestionPickerModifier(v29, type metadata accessor for SuggestionPickerModifier);

    outlined destroy of SuggestionPickerModifier(v27, type metadata accessor for SuggestionPickerModifier);
    v46 = v141;
    v59 = v1;
  }

  v77 = (v59 + v46[14]);
  v78 = *v77;
  v79 = v77[1];
  v80 = *(v77 + 16);
  type metadata accessor for SuggestionSheetUIManager();
  lazy protocol witness table accessor for type SuggestionPickerModifier and conformance SuggestionPickerModifier(&lazy protocol witness table cache variable for type SuggestionSheetUIManager and conformance SuggestionSheetUIManager, type metadata accessor for SuggestionSheetUIManager);
  v81 = StateObject.wrappedValue.getter();
  v82 = (*((*v36 & *v81) + 0x1C0))();

  if ((v82 & 1) == 0)
  {
    goto LABEL_16;
  }

  v136 = v78;
  v83 = StateObject.wrappedValue.getter();
  v84 = v137;
  (*((*v36 & *v83) + 0x190))();

  v86 = v139;
  v85 = v140;
  v134 = *(v139 + 48);
  if ((v134)(v84, 1, v140) == 1)
  {
    outlined destroy of URL?(v84, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v46 = v141;
LABEL_16:
    v102 = v59 + v46[8];
    v103 = *v102;
    v104 = *(v102 + 8);
    LOBYTE(v102) = *(v102 + 16);
    v144 = v103;
    v145 = v104;
    v146 = v102;
    v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd, &_s7SwiftUI7BindingVySbGMR);
    MEMORY[0x23EE6FFD0](&v143, v105);
    if ((v143 & 1) == 0)
    {
      v106 = StateObject.wrappedValue.getter();
      v107 = (*((*v36 & *v106) + 0x1C0))();

      if ((v107 & 1) == 0)
      {
        v108 = Logger.logObject.getter();
        v109 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v108, v109))
        {
          v110 = swift_slowAlloc();
          *v110 = 0;
          _os_log_impl(&dword_238A75000, v108, v109, "[presentAndUpdateEmbeddedPicker] dismissed embedded picker", v110, 2u);
          v111 = v110;
          v46 = v141;
          MEMORY[0x23EE71510](v111, -1, -1);
        }

        v112 = v59 + v46[16];
        v113 = *v112;
        v114 = *(v112 + 8);
        LOBYTE(v144) = v113;
        v145 = v114;
        LOBYTE(v143) = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
        State.wrappedValue.setter();
        v115 = StateObject.wrappedValue.getter();
        v116 = (*((*v36 & *v115) + 0x1F0))();

        if ((v116 & 1) == 0)
        {
          v117 = *(v59 + v46[12]);
          EmbeddedPicker.endSceneHostingSession()();
        }
      }
    }

    return;
  }

  (*(v86 + 32))(v138, v84, v85);
  v87 = v85;
  v88 = v141;
  v89 = v59 + *(v141 + 32);
  v90 = *v89;
  v91 = *(v89 + 8);
  LOBYTE(v89) = *(v89 + 16);
  v144 = v90;
  v145 = v91;
  v146 = v89;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd, &_s7SwiftUI7BindingVySbGMR);
  v93 = v86;
  MEMORY[0x23EE6FFD0](&v143, v92);
  if (v143 != 1)
  {
    (*(v86 + 8))(v138, v87);
    v46 = v88;
    v36 = MEMORY[0x277D85000];
    goto LABEL_16;
  }

  v94 = *(v59 + v88[12]);
  v95 = v133;
  v96 = v138;
  (*(v93 + 16))(v133, v138, v87);
  (*(v93 + 56))(v95, 0, 1, v87);
  v97 = v132;
  outlined init with copy of URL?(v95, v132, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v98 = v87;
  v99 = (v134)(v97, 1, v87);
  v100 = v96;
  if (v99 == 1)
  {
    isa = 0;
  }

  else
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v93 + 8))(v97, v98);
  }

  [v94 setupSceneHostingWithConnectionUUID_];

  outlined destroy of URL?(v95, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v118 = Logger.logObject.getter();
  v119 = static os_log_type_t.debug.getter();
  v120 = os_log_type_enabled(v118, v119);
  v121 = v141;
  if (v120)
  {
    v122 = swift_slowAlloc();
    *v122 = 0;
    _os_log_impl(&dword_238A75000, v118, v119, "[presentAndUpdateEmbeddedPicker] instantiated embedded picker", v122, 2u);
    MEMORY[0x23EE71510](v122, -1, -1);
  }

  v123 = v59 + *(v121 + 64);
  v124 = *v123;
  v125 = *(v123 + 8);
  LOBYTE(v144) = v124;
  v145 = v125;
  LOBYTE(v143) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
  State.wrappedValue.setter();
  (*(v139 + 8))(v100, v140);
}

uint64_t SuggestionPickerModifier.nonModalEmbeddedPicker()@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v27 = type metadata accessor for PresentationBackgroundInteraction();
  v2 = *(v27 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v27);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE33presentationBackgroundInteractionyQrAA012PresentationeF0VFQOyAA15ModifiedContentVy21JournalingSuggestions16EmbeddedJSPickerVAA01_E13StyleModifierVyAA5ColorVGG_Qo_Md, &_s7SwiftUI4ViewPAAE33presentationBackgroundInteractionyQrAA012PresentationeF0VFQOyAA15ModifiedContentVy21JournalingSuggestions16EmbeddedJSPickerVAA01_E13StyleModifierVyAA5ColorVGG_Qo_MR);
  v28 = *(v6 - 8);
  v7 = *(v28 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE19presentationDetentsyQrShyAA18PresentationDetentVGFQOyAcAE0D21BackgroundInteractionyQrAA0fhI0VFQOyAA15ModifiedContentVy21JournalingSuggestions16EmbeddedJSPickerVAA01_H13StyleModifierVyAA5ColorVGG_Qo__Qo_Md, &_s7SwiftUI4ViewPAAE19presentationDetentsyQrShyAA18PresentationDetentVGFQOyAcAE0D21BackgroundInteractionyQrAA0fhI0VFQOyAA15ModifiedContentVy21JournalingSuggestions16EmbeddedJSPickerVAA01_H13StyleModifierVyAA5ColorVGG_Qo__Qo_MR);
  v11 = *(v10 - 8);
  v29 = v10;
  v30 = v11;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v27 - v13;
  v15 = *(v1 + *(type metadata accessor for SuggestionPickerModifier(0) + 48));
  v16 = static Color.clear.getter();
  v17 = static Edge.Set.all.getter();
  v32 = v15;
  v33 = v16;
  v34 = v17;
  static PresentationBackgroundInteraction.enabled.getter();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy21JournalingSuggestions16EmbeddedJSPickerVAA24_BackgroundStyleModifierVyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVy21JournalingSuggestions16EmbeddedJSPickerVAA24_BackgroundStyleModifierVyAA5ColorVGGMR);
  v19 = lazy protocol witness table accessor for type ModifiedContent<EmbeddedJSPicker, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
  View.presentationBackgroundInteraction(_:)();
  (*(v2 + 8))(v5, v27);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI18PresentationDetentVGMd, &_ss23_ContiguousArrayStorageCy7SwiftUI18PresentationDetentVGMR);
  v20 = *(type metadata accessor for PresentationDetent() - 8);
  v21 = *(v20 + 72);
  v22 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_238AD9810;
  static PresentationDetent.fraction(_:)();
  static PresentationDetent.large.getter();
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7SwiftUI18PresentationDetentV_Tt0g5Tf4g_n(v23);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v32 = v18;
  v33 = v19;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  View.presentationDetents(_:)();

  (*(v28 + 8))(v9, v6);
  v32 = v6;
  v33 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v25 = v29;
  View.presentationDragIndicator(_:)();
  return (*(v30 + 8))(v14, v25);
}

uint64_t SuggestionPickerModifier.isPad.getter()
{
  v0 = type metadata accessor for UserInterfaceSizeClass();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v27 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI22UserInterfaceSizeClassOSg_ADtMd, &_s7SwiftUI22UserInterfaceSizeClassOSg_ADtMR);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v26 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v26 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v26 - v17;
  SuggestionPickerModifier.horizontalClass.getter(&v26 - v17);
  (*(v1 + 104))(v16, *MEMORY[0x277CE0560], v0);
  (*(v1 + 56))(v16, 0, 1, v0);
  v19 = *(v5 + 56);
  outlined init with copy of URL?(v18, v8, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  outlined init with copy of URL?(v16, &v8[v19], &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  v20 = *(v1 + 48);
  if (v20(v8, 1, v0) != 1)
  {
    outlined init with copy of URL?(v8, v13, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
    if (v20(&v8[v19], 1, v0) != 1)
    {
      v22 = &v8[v19];
      v23 = v27;
      (*(v1 + 32))(v27, v22, v0);
      lazy protocol witness table accessor for type SuggestionPickerModifier and conformance SuggestionPickerModifier(&lazy protocol witness table cache variable for type UserInterfaceSizeClass and conformance UserInterfaceSizeClass, MEMORY[0x277CE0570]);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v24 = *(v1 + 8);
      v24(v23, v0);
      outlined destroy of URL?(v16, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
      outlined destroy of URL?(v18, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
      v24(v13, v0);
      outlined destroy of URL?(v8, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
      return v21 & 1;
    }

    outlined destroy of URL?(v16, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
    outlined destroy of URL?(v18, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
    (*(v1 + 8))(v13, v0);
    goto LABEL_6;
  }

  outlined destroy of URL?(v16, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  outlined destroy of URL?(v18, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  if (v20(&v8[v19], 1, v0) != 1)
  {
LABEL_6:
    outlined destroy of URL?(v8, &_s7SwiftUI22UserInterfaceSizeClassOSg_ADtMd, &_s7SwiftUI22UserInterfaceSizeClassOSg_ADtMR);
    v21 = 0;
    return v21 & 1;
  }

  outlined destroy of URL?(v8, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  v21 = 1;
  return v21 & 1;
}

uint64_t SuggestionPickerModifier.detentDependentStyle()@<X0>(uint64_t a1@<X8>)
{
  v73 = a1;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE22presentationBackgroundyQrqd__AA10ShapeStyleRd__lFQOyAA15ModifiedContentVy21JournalingSuggestions16EmbeddedJSPickerVAA01_eG8ModifierVyAA5ColorVGG_ANQo_Md, &_s7SwiftUI4ViewPAAE22presentationBackgroundyQrqd__AA10ShapeStyleRd__lFQOyAA15ModifiedContentVy21JournalingSuggestions16EmbeddedJSPickerVAA01_eG8ModifierVyAA5ColorVGG_ANQo_MR);
  v64 = *(v68 - 8);
  v2 = *(v64 + 64);
  MEMORY[0x28223BE20](v68);
  v63 = &v62 - v3;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA4ViewPAAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAgAE0G7DetentsyQrShyAA18PresentationDetentVGFQOyAgAE0G21BackgroundInteractionyQrAA0lnO0VFQOyAA08ModifiedD0Vy21JournalingSuggestions16EmbeddedJSPickerVAA01_N13StyleModifierVyAA5ColorVGG_Qo__Qo__Qo_AgAE0gN0yQrqd__AA05ShapeU0Rd__lFQOyA0__AZQo__GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyAA4ViewPAAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAgAE0G7DetentsyQrShyAA18PresentationDetentVGFQOyAgAE0G21BackgroundInteractionyQrAA0lnO0VFQOyAA08ModifiedD0Vy21JournalingSuggestions16EmbeddedJSPickerVAA01_N13StyleModifierVyAA5ColorVGG_Qo__Qo__Qo_AgAE0gN0yQrqd__AA05ShapeU0Rd__lFQOyA0__AZQo__GMR);
  v4 = *(*(v66 - 8) + 64);
  MEMORY[0x28223BE20](v66);
  v67 = &v62 - v5;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAeAE0F7DetentsyQrShyAA18PresentationDetentVGFQOyAeAE0F21BackgroundInteractionyQrAA0kmN0VFQOyAA08ModifiedD0Vy21JournalingSuggestions16EmbeddedJSPickerVAA01_M13StyleModifierVyAA5ColorVGG_Qo__Qo__Qo_AeAE0fM0yQrqd__AA05ShapeT0Rd__lFQOyAZ_AXQo_GMd, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAeAE0F7DetentsyQrShyAA18PresentationDetentVGFQOyAeAE0F21BackgroundInteractionyQrAA0kmN0VFQOyAA08ModifiedD0Vy21JournalingSuggestions16EmbeddedJSPickerVAA01_M13StyleModifierVyAA5ColorVGG_Qo__Qo__Qo_AeAE0fM0yQrqd__AA05ShapeT0Rd__lFQOyAZ_AXQo_GMR);
  v6 = *(*(v72 - 8) + 64);
  MEMORY[0x28223BE20](v72);
  v69 = &v62 - v7;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA4ViewPAAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAgAE0G7DetentsyQrShyAA18PresentationDetentVGFQOyAgAE0G21BackgroundInteractionyQrAA0lnO0VFQOyAA08ModifiedD0Vy21JournalingSuggestions16EmbeddedJSPickerVAA01_N13StyleModifierVyAA5ColorVGG_Qo__Qo__Qo_ACyA3_AgAE0gN0yQrqd__AA05ShapeU0Rd__lFQOyA0__AZQo_G_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyAA4ViewPAAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAgAE0G7DetentsyQrShyAA18PresentationDetentVGFQOyAgAE0G21BackgroundInteractionyQrAA0lnO0VFQOyAA08ModifiedD0Vy21JournalingSuggestions16EmbeddedJSPickerVAA01_N13StyleModifierVyAA5ColorVGG_Qo__Qo__Qo_ACyA3_AgAE0gN0yQrqd__AA05ShapeU0Rd__lFQOyA0__AZQo_G_GMR);
  v8 = *(*(v70 - 8) + 64);
  MEMORY[0x28223BE20](v70);
  v71 = &v62 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAcAE0D7DetentsyQrShyAA18PresentationDetentVGFQOyAcAE0D21BackgroundInteractionyQrAA0ikL0VFQOyAA15ModifiedContentVy21JournalingSuggestions16EmbeddedJSPickerVAA01_K13StyleModifierVyAA5ColorVGG_Qo__Qo__Qo_Md, &_s7SwiftUI4ViewPAAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAcAE0D7DetentsyQrShyAA18PresentationDetentVGFQOyAcAE0D21BackgroundInteractionyQrAA0ikL0VFQOyAA15ModifiedContentVy21JournalingSuggestions16EmbeddedJSPickerVAA01_K13StyleModifierVyAA5ColorVGG_Qo__Qo__Qo_MR);
  v65 = *(v10 - 8);
  v11 = *(v65 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v62 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21JournalingSuggestions20JournalConfigurationVSgMd, &_s21JournalingSuggestions20JournalConfigurationVSgMR);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v62 - v16;
  v18 = type metadata accessor for JournalConfiguration(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for SuggestionPickerModifier(0);
  outlined init with copy of URL?(v1 + *(v23 + 40), v17, &_s21JournalingSuggestions20JournalConfigurationVSgMd, &_s21JournalingSuggestions20JournalConfigurationVSgMR);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    outlined destroy of URL?(v17, &_s21JournalingSuggestions20JournalConfigurationVSgMd, &_s21JournalingSuggestions20JournalConfigurationVSgMR);
  }

  else
  {
    outlined init with take of SuggestionPickerModifier(v17, v22, type metadata accessor for JournalConfiguration);
    v24 = v22[8];
    outlined destroy of SuggestionPickerModifier(v22, type metadata accessor for JournalConfiguration);
    if ((v24 & 1) == 0 && (SuggestionPickerModifier.isPad.getter() & 1) == 0)
    {
      SuggestionPickerModifier.nonModalEmbeddedPicker()(v13);
      v55 = v65;
      (*(v65 + 16))(v71, v13, v10);
      swift_storeEnumTagMultiPayload();
      v56 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE19presentationDetentsyQrShyAA18PresentationDetentVGFQOyAcAE0D21BackgroundInteractionyQrAA0fhI0VFQOyAA15ModifiedContentVy21JournalingSuggestions16EmbeddedJSPickerVAA01_H13StyleModifierVyAA5ColorVGG_Qo__Qo_Md, &_s7SwiftUI4ViewPAAE19presentationDetentsyQrShyAA18PresentationDetentVGFQOyAcAE0D21BackgroundInteractionyQrAA0fhI0VFQOyAA15ModifiedContentVy21JournalingSuggestions16EmbeddedJSPickerVAA01_H13StyleModifierVyAA5ColorVGG_Qo__Qo_MR);
      v57 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE33presentationBackgroundInteractionyQrAA012PresentationeF0VFQOyAA15ModifiedContentVy21JournalingSuggestions16EmbeddedJSPickerVAA01_E13StyleModifierVyAA5ColorVGG_Qo_Md, &_s7SwiftUI4ViewPAAE33presentationBackgroundInteractionyQrAA012PresentationeF0VFQOyAA15ModifiedContentVy21JournalingSuggestions16EmbeddedJSPickerVAA01_E13StyleModifierVyAA5ColorVGG_Qo_MR);
      v58 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy21JournalingSuggestions16EmbeddedJSPickerVAA24_BackgroundStyleModifierVyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVy21JournalingSuggestions16EmbeddedJSPickerVAA24_BackgroundStyleModifierVyAA5ColorVGGMR);
      v59 = lazy protocol witness table accessor for type ModifiedContent<EmbeddedJSPicker, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
      v75 = v58;
      v76 = v59;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v75 = v57;
      v76 = OpaqueTypeConformance2;
      v61 = swift_getOpaqueTypeConformance2();
      v75 = v56;
      v76 = v61;
      swift_getOpaqueTypeConformance2();
      lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.presentationDragIndicator(_:)>>.0, <<opaque return type of View.presentationBackground<A>(_:)>>.0> and conformance <> _ConditionalContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      return (*(v55 + 8))(v13, v10);
    }
  }

  v78 = &type metadata for MOMomentsFeatureFlags;
  v79 = lazy protocol witness table accessor for type MOMomentsFeatureFlags and conformance MOMomentsFeatureFlags();
  LOBYTE(v75) = 8;
  v25 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_1(&v75);
  v26 = v10;
  if (v25)
  {
    SuggestionPickerModifier.nonModalEmbeddedPicker()(v13);
    v27 = v65;
    (*(v65 + 16))(v67, v13, v26);
    swift_storeEnumTagMultiPayload();
    v28 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE19presentationDetentsyQrShyAA18PresentationDetentVGFQOyAcAE0D21BackgroundInteractionyQrAA0fhI0VFQOyAA15ModifiedContentVy21JournalingSuggestions16EmbeddedJSPickerVAA01_H13StyleModifierVyAA5ColorVGG_Qo__Qo_Md, &_s7SwiftUI4ViewPAAE19presentationDetentsyQrShyAA18PresentationDetentVGFQOyAcAE0D21BackgroundInteractionyQrAA0fhI0VFQOyAA15ModifiedContentVy21JournalingSuggestions16EmbeddedJSPickerVAA01_H13StyleModifierVyAA5ColorVGG_Qo__Qo_MR);
    v29 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE33presentationBackgroundInteractionyQrAA012PresentationeF0VFQOyAA15ModifiedContentVy21JournalingSuggestions16EmbeddedJSPickerVAA01_E13StyleModifierVyAA5ColorVGG_Qo_Md, &_s7SwiftUI4ViewPAAE33presentationBackgroundInteractionyQrAA012PresentationeF0VFQOyAA15ModifiedContentVy21JournalingSuggestions16EmbeddedJSPickerVAA01_E13StyleModifierVyAA5ColorVGG_Qo_MR);
    v30 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy21JournalingSuggestions16EmbeddedJSPickerVAA24_BackgroundStyleModifierVyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVy21JournalingSuggestions16EmbeddedJSPickerVAA24_BackgroundStyleModifierVyAA5ColorVGGMR);
    v31 = lazy protocol witness table accessor for type ModifiedContent<EmbeddedJSPicker, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
    v75 = v30;
    v76 = v31;
    v32 = swift_getOpaqueTypeConformance2();
    v75 = v29;
    v76 = v32;
    v33 = swift_getOpaqueTypeConformance2();
    v75 = v28;
    v76 = v33;
    swift_getOpaqueTypeConformance2();
    v75 = v30;
    v76 = MEMORY[0x277CE0F78];
    v77 = v31;
    v78 = MEMORY[0x277CE0F60];
    swift_getOpaqueTypeConformance2();
    v34 = v69;
    _ConditionalContent<>.init(storage:)();
    (*(v27 + 8))(v13, v26);
  }

  else
  {
    v35 = *(v1 + *(v23 + 48));
    v36 = static Color.clear.getter();
    v37 = static Edge.Set.all.getter();
    v75 = v35;
    v76 = v36;
    LOBYTE(v77) = v37;
    v74 = static Color.clear.getter();
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy21JournalingSuggestions16EmbeddedJSPickerVAA24_BackgroundStyleModifierVyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVy21JournalingSuggestions16EmbeddedJSPickerVAA24_BackgroundStyleModifierVyAA5ColorVGGMR);
    v39 = lazy protocol witness table accessor for type ModifiedContent<EmbeddedJSPicker, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
    v40 = MEMORY[0x277CE0F60];
    v41 = v63;
    View.presentationBackground<A>(_:)();

    v42 = v64;
    v43 = v68;
    (*(v64 + 16))(v67, v41, v68);
    swift_storeEnumTagMultiPayload();
    v44 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE19presentationDetentsyQrShyAA18PresentationDetentVGFQOyAcAE0D21BackgroundInteractionyQrAA0fhI0VFQOyAA15ModifiedContentVy21JournalingSuggestions16EmbeddedJSPickerVAA01_H13StyleModifierVyAA5ColorVGG_Qo__Qo_Md, &_s7SwiftUI4ViewPAAE19presentationDetentsyQrShyAA18PresentationDetentVGFQOyAcAE0D21BackgroundInteractionyQrAA0fhI0VFQOyAA15ModifiedContentVy21JournalingSuggestions16EmbeddedJSPickerVAA01_H13StyleModifierVyAA5ColorVGG_Qo__Qo_MR);
    v45 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE33presentationBackgroundInteractionyQrAA012PresentationeF0VFQOyAA15ModifiedContentVy21JournalingSuggestions16EmbeddedJSPickerVAA01_E13StyleModifierVyAA5ColorVGG_Qo_Md, &_s7SwiftUI4ViewPAAE33presentationBackgroundInteractionyQrAA012PresentationeF0VFQOyAA15ModifiedContentVy21JournalingSuggestions16EmbeddedJSPickerVAA01_E13StyleModifierVyAA5ColorVGG_Qo_MR);
    v75 = v38;
    v76 = v39;
    v46 = swift_getOpaqueTypeConformance2();
    v75 = v45;
    v76 = v46;
    v47 = swift_getOpaqueTypeConformance2();
    v75 = v44;
    v76 = v47;
    swift_getOpaqueTypeConformance2();
    v75 = v38;
    v76 = MEMORY[0x277CE0F78];
    v77 = v39;
    v78 = v40;
    swift_getOpaqueTypeConformance2();
    v34 = v69;
    _ConditionalContent<>.init(storage:)();
    (*(v42 + 8))(v41, v43);
  }

  outlined init with copy of URL?(v34, v71, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAeAE0F7DetentsyQrShyAA18PresentationDetentVGFQOyAeAE0F21BackgroundInteractionyQrAA0kmN0VFQOyAA08ModifiedD0Vy21JournalingSuggestions16EmbeddedJSPickerVAA01_M13StyleModifierVyAA5ColorVGG_Qo__Qo__Qo_AeAE0fM0yQrqd__AA05ShapeT0Rd__lFQOyAZ_AXQo_GMd, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAeAE0F7DetentsyQrShyAA18PresentationDetentVGFQOyAeAE0F21BackgroundInteractionyQrAA0kmN0VFQOyAA08ModifiedD0Vy21JournalingSuggestions16EmbeddedJSPickerVAA01_M13StyleModifierVyAA5ColorVGG_Qo__Qo__Qo_AeAE0fM0yQrqd__AA05ShapeT0Rd__lFQOyAZ_AXQo_GMR);
  swift_storeEnumTagMultiPayload();
  v48 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE19presentationDetentsyQrShyAA18PresentationDetentVGFQOyAcAE0D21BackgroundInteractionyQrAA0fhI0VFQOyAA15ModifiedContentVy21JournalingSuggestions16EmbeddedJSPickerVAA01_H13StyleModifierVyAA5ColorVGG_Qo__Qo_Md, &_s7SwiftUI4ViewPAAE19presentationDetentsyQrShyAA18PresentationDetentVGFQOyAcAE0D21BackgroundInteractionyQrAA0fhI0VFQOyAA15ModifiedContentVy21JournalingSuggestions16EmbeddedJSPickerVAA01_H13StyleModifierVyAA5ColorVGG_Qo__Qo_MR);
  v49 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE33presentationBackgroundInteractionyQrAA012PresentationeF0VFQOyAA15ModifiedContentVy21JournalingSuggestions16EmbeddedJSPickerVAA01_E13StyleModifierVyAA5ColorVGG_Qo_Md, &_s7SwiftUI4ViewPAAE33presentationBackgroundInteractionyQrAA012PresentationeF0VFQOyAA15ModifiedContentVy21JournalingSuggestions16EmbeddedJSPickerVAA01_E13StyleModifierVyAA5ColorVGG_Qo_MR);
  v50 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy21JournalingSuggestions16EmbeddedJSPickerVAA24_BackgroundStyleModifierVyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVy21JournalingSuggestions16EmbeddedJSPickerVAA24_BackgroundStyleModifierVyAA5ColorVGGMR);
  v51 = lazy protocol witness table accessor for type ModifiedContent<EmbeddedJSPicker, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
  v75 = v50;
  v76 = v51;
  v52 = swift_getOpaqueTypeConformance2();
  v75 = v49;
  v76 = v52;
  v53 = swift_getOpaqueTypeConformance2();
  v75 = v48;
  v76 = v53;
  swift_getOpaqueTypeConformance2();
  lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.presentationDragIndicator(_:)>>.0, <<opaque return type of View.presentationBackground<A>(_:)>>.0> and conformance <> _ConditionalContent<A, B>();
  _ConditionalContent<>.init(storage:)();
  return outlined destroy of URL?(v34, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAeAE0F7DetentsyQrShyAA18PresentationDetentVGFQOyAeAE0F21BackgroundInteractionyQrAA0kmN0VFQOyAA08ModifiedD0Vy21JournalingSuggestions16EmbeddedJSPickerVAA01_M13StyleModifierVyAA5ColorVGG_Qo__Qo__Qo_AeAE0fM0yQrqd__AA05ShapeT0Rd__lFQOyAZ_AXQo_GMd, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAeAE0F7DetentsyQrShyAA18PresentationDetentVGFQOyAeAE0F21BackgroundInteractionyQrAA0kmN0VFQOyAA08ModifiedD0Vy21JournalingSuggestions16EmbeddedJSPickerVAA01_M13StyleModifierVyAA5ColorVGG_Qo__Qo__Qo_AeAE0fM0yQrqd__AA05ShapeT0Rd__lFQOyAZ_AXQo_GMR);
}

uint64_t SuggestionPickerModifier.platformDependentEmbeddedStyle(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaBRd__lFQOyAcAE0G6Change2of7initial_Qrqd___SbyyctSQRd__lFQOyAA15ModifiedContentVyAcAEAlmN_Qrqd___SbyyctSQRd__lFQOyAcAEAlmN_Qrqd___SbyyctSQRd__lFQOyAPyAcAEAlmN_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleC0VyAA01_c9Modifier_O0Vy21JournalingSuggestions016SuggestionPickerR033_315EC45933A08D2AC82BECE24BED7720LLVG_APyAPyAW34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionR0VG_So14UISceneSessionCSgQo__SbQo_A12_G_AA10ScenePhaseOQo__AA012_ConditionalO0VyAcAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAcAE19presentationDetentsyQrShyAA18PresentationDetentVGFQOyAcAE33presentationBackgroundInteractionyQrAA33PresentationBackgroundInteractionVFQOyAPyAW16EmbeddedJSPickerVAA016_BackgroundStyleR0VyAA5ColorVGG_Qo__Qo__Qo_A24_yA45_AcAE22presentationBackgroundyQrqd__AA10ShapeStyleRd__lFQOyA42__A40_Qo_GGQo_Md, &_s7SwiftUI4ViewPAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaBRd__lFQOyAcAE0G6Change2of7initial_Qrqd___SbyyctSQRd__lFQOyAA15ModifiedContentVyAcAEAlmN_Qrqd___SbyyctSQRd__lFQOyAcAEAlmN_Qrqd___SbyyctSQRd__lFQOyAPyAcAEAlmN_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleC0VyAA01_c9Modifier_O0Vy21JournalingSuggestions016SuggestionPickerR033_315EC45933A08D2AC82BECE24BED7720LLVG_APyAPyAW34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionR0VG_So14UISceneSessionCSgQo__SbQo_A12_G_AA10ScenePhaseOQo__AA012_ConditionalO0VyAcAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAcAE19presentationDetentsyQrShyAA18PresentationDetentVGFQOyAcAE33presentationBackgroundInteractionyQrAA33PresentationBackgroundInteractionVFQOyAPyAW16EmbeddedJSPickerVAA016_BackgroundStyleR0VyAA5ColorVGG_Qo__Qo__Qo_A24_yA45_AcAE22presentationBackgroundyQrqd__AA10ShapeStyleRd__lFQOyA42__A40_Qo_GGQo_MR);
  v58 = *(v67 - 8);
  v4 = *(v58 + 64);
  MEMORY[0x28223BE20](v67);
  v57 = &v55 - v5;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAA4ViewPAAE15fullScreenCover11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaHRd__lFQOyAiAE0M6Change2of7initial_Qrqd___SbyyctSQRd__lFQOyAGyAiAEArsT_Qrqd___SbyyctSQRd__lFQOyAiAEArsT_Qrqd___SbyyctSQRd__lFQOyAGyAiAEArsT_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleG0VyAA01_g9Modifier_D0Vy21JournalingSuggestions016SuggestionPickerV033_315EC45933A08D2AC82BECE24BED7720LLVG_AGyAGyA_34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionV0VG_So14UISceneSessionCSgQo__SbQo_A16_G_AA10ScenePhaseOQo__AGyACyAiAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAiAE19presentationDetentsyQrShyAA18PresentationDetentVGFQOyAiAE33presentationBackgroundInteractionyQrAA33PresentationBackgroundInteractionVFQOyAGyA_16EmbeddedJSPickerVAA016_BackgroundStyleV0VyAA5ColorVGG_Qo__Qo__Qo_ACyA47_AiAE22presentationBackgroundyQrqd__AA10ShapeStyleRd__lFQOyA44__A42_Qo_GGAA30_SafeAreaRegionsIgnoringLayoutVGQo_AA012_TransactionV0VGAiAE5sheetAklMQrAP_AQqd__yctAaHRd__lFQOyA26__A52_Qo__GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAA4ViewPAAE15fullScreenCover11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaHRd__lFQOyAiAE0M6Change2of7initial_Qrqd___SbyyctSQRd__lFQOyAGyAiAEArsT_Qrqd___SbyyctSQRd__lFQOyAiAEArsT_Qrqd___SbyyctSQRd__lFQOyAGyAiAEArsT_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleG0VyAA01_g9Modifier_D0Vy21JournalingSuggestions016SuggestionPickerV033_315EC45933A08D2AC82BECE24BED7720LLVG_AGyAGyA_34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionV0VG_So14UISceneSessionCSgQo__SbQo_A16_G_AA10ScenePhaseOQo__AGyACyAiAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAiAE19presentationDetentsyQrShyAA18PresentationDetentVGFQOyAiAE33presentationBackgroundInteractionyQrAA33PresentationBackgroundInteractionVFQOyAGyA_16EmbeddedJSPickerVAA016_BackgroundStyleV0VyAA5ColorVGG_Qo__Qo__Qo_ACyA47_AiAE22presentationBackgroundyQrqd__AA10ShapeStyleRd__lFQOyA44__A42_Qo_GGAA30_SafeAreaRegionsIgnoringLayoutVGQo_AA012_TransactionV0VGAiAE5sheetAklMQrAP_AQqd__yctAaHRd__lFQOyA26__A52_Qo__GMR);
  v6 = *(*(v64 - 8) + 64);
  MEMORY[0x28223BE20](v64);
  v65 = &v55 - v7;
  v8 = type metadata accessor for SuggestionPickerModifier(0);
  v9 = v8 - 8;
  v59 = *(v8 - 8);
  v10 = *(v59 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v12 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v55 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAA15ModifiedContentVyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAHyAcAEAdeF_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleC0VyAA01_c9Modifier_I0Vy21JournalingSuggestions016SuggestionPickerL033_315EC45933A08D2AC82BECE24BED7720LLVG_AHyAHyAO34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionL0VG_So14UISceneSessionCSgQo__SbQo_A4_G_AA10ScenePhaseOQo_Md, &_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAA15ModifiedContentVyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAHyAcAEAdeF_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleC0VyAA01_c9Modifier_I0Vy21JournalingSuggestions016SuggestionPickerL033_315EC45933A08D2AC82BECE24BED7720LLVG_AHyAHyAO34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionL0VG_So14UISceneSessionCSgQo__SbQo_A4_G_AA10ScenePhaseOQo_MR);
  v61 = *(v15 - 8);
  v62 = v15;
  v16 = *(v61 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v55 - v17;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE15fullScreenCover11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaDRd__lFQOyAeAE0K6Change2of7initial_Qrqd___SbyyctSQRd__lFQOyACyAeAEAnoP_Qrqd___SbyyctSQRd__lFQOyAeAEAnoP_Qrqd___SbyyctSQRd__lFQOyACyAeAEAnoP_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleE0VyAA01_e9Modifier_D0Vy21JournalingSuggestions016SuggestionPickerT033_315EC45933A08D2AC82BECE24BED7720LLVG_ACyACyAW34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionT0VG_So14UISceneSessionCSgQo__SbQo_A12_G_AA10ScenePhaseOQo__ACyAA012_ConditionalD0VyAeAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAeAE19presentationDetentsyQrShyAA18PresentationDetentVGFQOyAeAE33presentationBackgroundInteractionyQrAA33PresentationBackgroundInteractionVFQOyACyAW16EmbeddedJSPickerVAA016_BackgroundStyleT0VyAA5ColorVGG_Qo__Qo__Qo_A24_yA45_AeAE22presentationBackgroundyQrqd__AA10ShapeStyleRd__lFQOyA42__A40_Qo_GGAA30_SafeAreaRegionsIgnoringLayoutVGQo_AA012_TransactionT0VGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE15fullScreenCover11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaDRd__lFQOyAeAE0K6Change2of7initial_Qrqd___SbyyctSQRd__lFQOyACyAeAEAnoP_Qrqd___SbyyctSQRd__lFQOyAeAEAnoP_Qrqd___SbyyctSQRd__lFQOyACyAeAEAnoP_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleE0VyAA01_e9Modifier_D0Vy21JournalingSuggestions016SuggestionPickerT033_315EC45933A08D2AC82BECE24BED7720LLVG_ACyACyAW34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionT0VG_So14UISceneSessionCSgQo__SbQo_A12_G_AA10ScenePhaseOQo__ACyAA012_ConditionalD0VyAeAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAeAE19presentationDetentsyQrShyAA18PresentationDetentVGFQOyAeAE33presentationBackgroundInteractionyQrAA33PresentationBackgroundInteractionVFQOyACyAW16EmbeddedJSPickerVAA016_BackgroundStyleT0VyAA5ColorVGG_Qo__Qo__Qo_A24_yA45_AeAE22presentationBackgroundyQrqd__AA10ShapeStyleRd__lFQOyA42__A40_Qo_GGAA30_SafeAreaRegionsIgnoringLayoutVGQo_AA012_TransactionT0VGMR);
  v19 = *(*(v63 - 8) + 64);
  MEMORY[0x28223BE20](v63);
  v21 = &v55 - v20;
  v22 = SuggestionPickerModifier.isPad.getter();
  v60 = v18;
  SuggestionPickerModifier.modifierContent(content:)(a1, v18);
  v23 = v2 + *(v9 + 72);
  v24 = *v23;
  v25 = *(v23 + 8);
  v72 = v24;
  v73 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
  State.projectedValue.getter();
  if (v22)
  {
    v56 = v69;
    v57 = v68;
    LODWORD(v58) = v70;
    outlined init with copy of JournalConfiguration(v2, v14, type metadata accessor for SuggestionPickerModifier);
    v26 = (*(v59 + 80) + 16) & ~*(v59 + 80);
    v27 = swift_allocObject();
    outlined init with take of SuggestionPickerModifier(v14, v27 + v26, type metadata accessor for SuggestionPickerModifier);
    outlined init with copy of JournalConfiguration(v2, v12, type metadata accessor for SuggestionPickerModifier);
    v28 = swift_allocObject();
    outlined init with take of SuggestionPickerModifier(v12, v28 + v26, type metadata accessor for SuggestionPickerModifier);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyAA4ViewPAAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAgAE0G7DetentsyQrShyAA18PresentationDetentVGFQOyAgAE0G21BackgroundInteractionyQrAA0lnO0VFQOyACy21JournalingSuggestions16EmbeddedJSPickerVAA01_N13StyleModifierVyAA5ColorVGG_Qo__Qo__Qo_AEyA1_AgAE0gN0yQrqd__AA05ShapeT0Rd__lFQOyAZ_AXQo_GGAA30_SafeAreaRegionsIgnoringLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyAA4ViewPAAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAgAE0G7DetentsyQrShyAA18PresentationDetentVGFQOyAgAE0G21BackgroundInteractionyQrAA0lnO0VFQOyACy21JournalingSuggestions16EmbeddedJSPickerVAA01_N13StyleModifierVyAA5ColorVGG_Qo__Qo__Qo_AEyA1_AgAE0gN0yQrqd__AA05ShapeT0Rd__lFQOyAZ_AXQo_GGAA30_SafeAreaRegionsIgnoringLayoutVGMR);
    v29 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAeAEAfgH_Qrqd___SbyyctSQRd__lFQOyACyAeAEAfgH_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleE0VyAA01_e9Modifier_D0Vy21JournalingSuggestions016SuggestionPickerL033_315EC45933A08D2AC82BECE24BED7720LLVG_ACyACyAO34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionL0VG_So14UISceneSessionCSgQo__SbQo_A4_GMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAeAEAfgH_Qrqd___SbyyctSQRd__lFQOyACyAeAEAfgH_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleE0VyAA01_e9Modifier_D0Vy21JournalingSuggestions016SuggestionPickerL033_315EC45933A08D2AC82BECE24BED7720LLVG_ACyACyAO34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionL0VG_So14UISceneSessionCSgQo__SbQo_A4_GMR);
    v30 = type metadata accessor for ScenePhase();
    v31 = lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>();
    v32 = lazy protocol witness table accessor for type SuggestionPickerModifier and conformance SuggestionPickerModifier(&lazy protocol witness table cache variable for type ScenePhase and conformance ScenePhase, MEMORY[0x277CDD6C8]);
    v68 = v29;
    v69 = v30;
    v70 = v31;
    v71 = v32;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type ModifiedContent<_ConditionalContent<<<opaque return type of View.presentationDragIndicator(_:)>>.0, _ConditionalContent<<<opaque return type of View.presentationDragIndicator(_:)>>.0, <<opaque return type of View.presentationBackground<A>(_:)>>.0>>, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>();
    v33 = v62;
    v34 = v60;
    View.fullScreenCover<A>(isPresented:onDismiss:content:)();

    (*(v61 + 8))(v34, v33);
    v35 = &v21[*(v63 + 36)];
    *v35 = closure #3 in SuggestionPickerModifier.platformDependentEmbeddedStyle(content:);
    v35[1] = 0;
    outlined init with copy of URL?(v21, v65, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE15fullScreenCover11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaDRd__lFQOyAeAE0K6Change2of7initial_Qrqd___SbyyctSQRd__lFQOyACyAeAEAnoP_Qrqd___SbyyctSQRd__lFQOyAeAEAnoP_Qrqd___SbyyctSQRd__lFQOyACyAeAEAnoP_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleE0VyAA01_e9Modifier_D0Vy21JournalingSuggestions016SuggestionPickerT033_315EC45933A08D2AC82BECE24BED7720LLVG_ACyACyAW34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionT0VG_So14UISceneSessionCSgQo__SbQo_A12_G_AA10ScenePhaseOQo__ACyAA012_ConditionalD0VyAeAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAeAE19presentationDetentsyQrShyAA18PresentationDetentVGFQOyAeAE33presentationBackgroundInteractionyQrAA33PresentationBackgroundInteractionVFQOyACyAW16EmbeddedJSPickerVAA016_BackgroundStyleT0VyAA5ColorVGG_Qo__Qo__Qo_A24_yA45_AeAE22presentationBackgroundyQrqd__AA10ShapeStyleRd__lFQOyA42__A40_Qo_GGAA30_SafeAreaRegionsIgnoringLayoutVGQo_AA012_TransactionT0VGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE15fullScreenCover11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaDRd__lFQOyAeAE0K6Change2of7initial_Qrqd___SbyyctSQRd__lFQOyACyAeAEAnoP_Qrqd___SbyyctSQRd__lFQOyAeAEAnoP_Qrqd___SbyyctSQRd__lFQOyACyAeAEAnoP_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleE0VyAA01_e9Modifier_D0Vy21JournalingSuggestions016SuggestionPickerT033_315EC45933A08D2AC82BECE24BED7720LLVG_ACyACyAW34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionT0VG_So14UISceneSessionCSgQo__SbQo_A12_G_AA10ScenePhaseOQo__ACyAA012_ConditionalD0VyAeAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAeAE19presentationDetentsyQrShyAA18PresentationDetentVGFQOyAeAE33presentationBackgroundInteractionyQrAA33PresentationBackgroundInteractionVFQOyACyAW16EmbeddedJSPickerVAA016_BackgroundStyleT0VyAA5ColorVGG_Qo__Qo__Qo_A24_yA45_AeAE22presentationBackgroundyQrqd__AA10ShapeStyleRd__lFQOyA42__A40_Qo_GGAA30_SafeAreaRegionsIgnoringLayoutVGQo_AA012_TransactionT0VGMR);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.fullScreenCover<A>(isPresented:onDismiss:content:)>>.0, _TransactionModifier> and conformance <> ModifiedContent<A, B>();
    v36 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAeAE0F7DetentsyQrShyAA18PresentationDetentVGFQOyAeAE0F21BackgroundInteractionyQrAA0kmN0VFQOyAA08ModifiedD0Vy21JournalingSuggestions16EmbeddedJSPickerVAA01_M13StyleModifierVyAA5ColorVGG_Qo__Qo__Qo_ACyA1_AeAE0fM0yQrqd__AA05ShapeT0Rd__lFQOyAZ_AXQo_GGMd, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAeAE0F7DetentsyQrShyAA18PresentationDetentVGFQOyAeAE0F21BackgroundInteractionyQrAA0kmN0VFQOyAA08ModifiedD0Vy21JournalingSuggestions16EmbeddedJSPickerVAA01_M13StyleModifierVyAA5ColorVGG_Qo__Qo__Qo_ACyA1_AeAE0fM0yQrqd__AA05ShapeT0Rd__lFQOyAZ_AXQo_GGMR);
    v37 = lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.presentationDragIndicator(_:)>>.0, _ConditionalContent<<<opaque return type of View.presentationDragIndicator(_:)>>.0, <<opaque return type of View.presentationBackground<A>(_:)>>.0>> and conformance <> _ConditionalContent<A, B>();
    v68 = v33;
    v69 = v36;
    v70 = OpaqueTypeConformance2;
    v71 = v37;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return outlined destroy of URL?(v21, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE15fullScreenCover11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaDRd__lFQOyAeAE0K6Change2of7initial_Qrqd___SbyyctSQRd__lFQOyACyAeAEAnoP_Qrqd___SbyyctSQRd__lFQOyAeAEAnoP_Qrqd___SbyyctSQRd__lFQOyACyAeAEAnoP_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleE0VyAA01_e9Modifier_D0Vy21JournalingSuggestions016SuggestionPickerT033_315EC45933A08D2AC82BECE24BED7720LLVG_ACyACyAW34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionT0VG_So14UISceneSessionCSgQo__SbQo_A12_G_AA10ScenePhaseOQo__ACyAA012_ConditionalD0VyAeAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAeAE19presentationDetentsyQrShyAA18PresentationDetentVGFQOyAeAE33presentationBackgroundInteractionyQrAA33PresentationBackgroundInteractionVFQOyACyAW16EmbeddedJSPickerVAA016_BackgroundStyleT0VyAA5ColorVGG_Qo__Qo__Qo_A24_yA45_AeAE22presentationBackgroundyQrqd__AA10ShapeStyleRd__lFQOyA42__A40_Qo_GGAA30_SafeAreaRegionsIgnoringLayoutVGQo_AA012_TransactionT0VGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE15fullScreenCover11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaDRd__lFQOyAeAE0K6Change2of7initial_Qrqd___SbyyctSQRd__lFQOyACyAeAEAnoP_Qrqd___SbyyctSQRd__lFQOyAeAEAnoP_Qrqd___SbyyctSQRd__lFQOyACyAeAEAnoP_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleE0VyAA01_e9Modifier_D0Vy21JournalingSuggestions016SuggestionPickerT033_315EC45933A08D2AC82BECE24BED7720LLVG_ACyACyAW34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionT0VG_So14UISceneSessionCSgQo__SbQo_A12_G_AA10ScenePhaseOQo__ACyAA012_ConditionalD0VyAeAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAeAE19presentationDetentsyQrShyAA18PresentationDetentVGFQOyAeAE33presentationBackgroundInteractionyQrAA33PresentationBackgroundInteractionVFQOyACyAW16EmbeddedJSPickerVAA016_BackgroundStyleT0VyAA5ColorVGG_Qo__Qo__Qo_A24_yA45_AeAE22presentationBackgroundyQrqd__AA10ShapeStyleRd__lFQOyA42__A40_Qo_GGAA30_SafeAreaRegionsIgnoringLayoutVGQo_AA012_TransactionT0VGMR);
  }

  else
  {
    v55 = v68;
    LODWORD(v56) = v70;
    outlined init with copy of JournalConfiguration(v2, v14, type metadata accessor for SuggestionPickerModifier);
    v39 = (*(v59 + 80) + 16) & ~*(v59 + 80);
    v40 = swift_allocObject();
    outlined init with take of SuggestionPickerModifier(v14, v40 + v39, type metadata accessor for SuggestionPickerModifier);
    outlined init with copy of JournalConfiguration(v2, v12, type metadata accessor for SuggestionPickerModifier);
    v41 = swift_allocObject();
    outlined init with take of SuggestionPickerModifier(v12, v41 + v39, type metadata accessor for SuggestionPickerModifier);
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAeAE0F7DetentsyQrShyAA18PresentationDetentVGFQOyAeAE0F21BackgroundInteractionyQrAA0kmN0VFQOyAA08ModifiedD0Vy21JournalingSuggestions16EmbeddedJSPickerVAA01_M13StyleModifierVyAA5ColorVGG_Qo__Qo__Qo_ACyA1_AeAE0fM0yQrqd__AA05ShapeT0Rd__lFQOyAZ_AXQo_GGMd, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAeAE0F7DetentsyQrShyAA18PresentationDetentVGFQOyAeAE0F21BackgroundInteractionyQrAA0kmN0VFQOyAA08ModifiedD0Vy21JournalingSuggestions16EmbeddedJSPickerVAA01_M13StyleModifierVyAA5ColorVGG_Qo__Qo__Qo_ACyA1_AeAE0fM0yQrqd__AA05ShapeT0Rd__lFQOyAZ_AXQo_GGMR);
    v43 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAeAEAfgH_Qrqd___SbyyctSQRd__lFQOyACyAeAEAfgH_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleE0VyAA01_e9Modifier_D0Vy21JournalingSuggestions016SuggestionPickerL033_315EC45933A08D2AC82BECE24BED7720LLVG_ACyACyAO34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionL0VG_So14UISceneSessionCSgQo__SbQo_A4_GMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAeAEAfgH_Qrqd___SbyyctSQRd__lFQOyACyAeAEAfgH_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleE0VyAA01_e9Modifier_D0Vy21JournalingSuggestions016SuggestionPickerL033_315EC45933A08D2AC82BECE24BED7720LLVG_ACyACyAO34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionL0VG_So14UISceneSessionCSgQo__SbQo_A4_GMR);
    v44 = type metadata accessor for ScenePhase();
    v45 = lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>();
    v46 = lazy protocol witness table accessor for type SuggestionPickerModifier and conformance SuggestionPickerModifier(&lazy protocol witness table cache variable for type ScenePhase and conformance ScenePhase, MEMORY[0x277CDD6C8]);
    v68 = v43;
    v69 = v44;
    v70 = v45;
    v71 = v46;
    v53 = swift_getOpaqueTypeConformance2();
    v54 = lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.presentationDragIndicator(_:)>>.0, _ConditionalContent<<<opaque return type of View.presentationDragIndicator(_:)>>.0, <<opaque return type of View.presentationBackground<A>(_:)>>.0>> and conformance <> _ConditionalContent<A, B>();
    v47 = v57;
    v48 = v62;
    v49 = v60;
    View.sheet<A>(isPresented:onDismiss:content:)();

    (*(v61 + 8))(v49, v48);
    v50 = v58;
    v51 = v67;
    (*(v58 + 16))(v65, v47, v67);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.fullScreenCover<A>(isPresented:onDismiss:content:)>>.0, _TransactionModifier> and conformance <> ModifiedContent<A, B>();
    v68 = v48;
    v69 = v42;
    v70 = v53;
    v71 = v54;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v50 + 8))(v47, v51);
  }
}

uint64_t closure #2 in SuggestionPickerModifier.platformDependentEmbeddedStyle(content:)@<X0>(uint64_t a1@<X8>)
{
  SuggestionPickerModifier.detentDependentStyle()(a1);
  v2 = static SafeAreaRegions.all.getter();
  v3 = static Edge.Set.all.getter();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyAA4ViewPAAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAgAE0G7DetentsyQrShyAA18PresentationDetentVGFQOyAgAE0G21BackgroundInteractionyQrAA0lnO0VFQOyACy21JournalingSuggestions16EmbeddedJSPickerVAA01_N13StyleModifierVyAA5ColorVGG_Qo__Qo__Qo_AEyA1_AgAE0gN0yQrqd__AA05ShapeT0Rd__lFQOyAZ_AXQo_GGAA30_SafeAreaRegionsIgnoringLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyAA4ViewPAAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAgAE0G7DetentsyQrShyAA18PresentationDetentVGFQOyAgAE0G21BackgroundInteractionyQrAA0lnO0VFQOyACy21JournalingSuggestions16EmbeddedJSPickerVAA01_N13StyleModifierVyAA5ColorVGG_Qo__Qo__Qo_AEyA1_AgAE0gN0yQrqd__AA05ShapeT0Rd__lFQOyAZ_AXQo_GGAA30_SafeAreaRegionsIgnoringLayoutVGMR);
  v5 = a1 + *(result + 36);
  *v5 = v2;
  *(v5 + 8) = v3;
  return result;
}

void closure #6 in SuggestionPickerModifier.modifierContent(content:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SuggestionPickerModifier(0);
  v5 = (a1 + *(v4 + 56));
  v6 = *v5;
  v7 = v5[1];
  v8 = *(v5 + 16);
  type metadata accessor for SuggestionSheetUIManager();
  lazy protocol witness table accessor for type SuggestionPickerModifier and conformance SuggestionPickerModifier(&lazy protocol witness table cache variable for type SuggestionSheetUIManager and conformance SuggestionSheetUIManager, type metadata accessor for SuggestionSheetUIManager);
  v9 = StateObject.wrappedValue.getter();
  (*((*MEMORY[0x277D85000] & *v9) + 0x2F8))(a1 + *(v4 + 60), a2);
}

uint64_t SuggestionPickerModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v111 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAA15ModifiedContentVyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAHyAcAEAdeF_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleC0VyAA01_c9Modifier_I0Vy21JournalingSuggestions016SuggestionPickerL033_315EC45933A08D2AC82BECE24BED7720LLVG_AHyAHyAO34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionL0VG_So14UISceneSessionCSgQo__SbQo_A4_G_AA10ScenePhaseOQo_Md, &_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAA15ModifiedContentVyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAHyAcAEAdeF_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleC0VyAA01_c9Modifier_I0Vy21JournalingSuggestions016SuggestionPickerL033_315EC45933A08D2AC82BECE24BED7720LLVG_AHyAHyAO34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionL0VG_So14UISceneSessionCSgQo__SbQo_A4_G_AA10ScenePhaseOQo_MR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v88 - v8;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAgAEAhiJ_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAgAEAhiJ_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAgAEAhiJ_Qrqd___Sbyqd___qd__tctSQRd__lFQOyACyAA08ModifiedD0VyAgAE15fullScreenCover11isPresented0G7Dismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaFRd__lFQOyAgAEAhiJ_Qrqd___SbyyctSQRd__lFQOyALyAgAEAhiJ_Qrqd___SbyyctSQRd__lFQOyAgAEAhiJ_Qrqd___SbyyctSQRd__lFQOyALyAgAEAhiJ_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleF0VyAA01_f9Modifier_D0Vy21JournalingSuggestions016SuggestionPickerV033_315EC45933A08D2AC82BECE24BED7720LLVG_ALyALyA_34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionV0VG_So14UISceneSessionCSgQo__SbQo_A16_G_AA10ScenePhaseOQo__ALyACyAgAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAgAE19presentationDetentsyQrShyAA18PresentationDetentVGFQOyAgAE33presentationBackgroundInteractionyQrAA33PresentationBackgroundInteractionVFQOyALyA_16EmbeddedJSPickerVAA016_BackgroundStyleV0VyAA5ColorVGG_Qo__Qo__Qo_ACyA47_AgAE22presentationBackgroundyQrqd__AA10ShapeStyleRd__lFQOyA44__A42_Qo_GGAA30_SafeAreaRegionsIgnoringLayoutVGQo_AA012_TransactionV0VGAgAE5sheetAnoPQrAS_ATqd__yctAaFRd__lFQOyA26__A52_Qo_G_10Foundation4UUIDVSgQo__SbQo__SbQo__SbQo_A26__GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyAA4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAgAEAhiJ_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAgAEAhiJ_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAgAEAhiJ_Qrqd___Sbyqd___qd__tctSQRd__lFQOyACyAA08ModifiedD0VyAgAE15fullScreenCover11isPresented0G7Dismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaFRd__lFQOyAgAEAhiJ_Qrqd___SbyyctSQRd__lFQOyALyAgAEAhiJ_Qrqd___SbyyctSQRd__lFQOyAgAEAhiJ_Qrqd___SbyyctSQRd__lFQOyALyAgAEAhiJ_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleF0VyAA01_f9Modifier_D0Vy21JournalingSuggestions016SuggestionPickerV033_315EC45933A08D2AC82BECE24BED7720LLVG_ALyALyA_34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionV0VG_So14UISceneSessionCSgQo__SbQo_A16_G_AA10ScenePhaseOQo__ALyACyAgAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAgAE19presentationDetentsyQrShyAA18PresentationDetentVGFQOyAgAE33presentationBackgroundInteractionyQrAA33PresentationBackgroundInteractionVFQOyALyA_16EmbeddedJSPickerVAA016_BackgroundStyleV0VyAA5ColorVGG_Qo__Qo__Qo_ACyA47_AgAE22presentationBackgroundyQrqd__AA10ShapeStyleRd__lFQOyA44__A42_Qo_GGAA30_SafeAreaRegionsIgnoringLayoutVGQo_AA012_TransactionV0VGAgAE5sheetAnoPQrAS_ATqd__yctAaFRd__lFQOyA26__A52_Qo_G_10Foundation4UUIDVSgQo__SbQo__SbQo__SbQo_A26__GMR);
  v10 = *(*(v113 - 8) + 64);
  MEMORY[0x28223BE20](v113);
  v115 = v88 - v11;
  v12 = type metadata accessor for SuggestionPickerModifier(0);
  v98 = *(v12 - 8);
  v13 = *(v98 + 64);
  MEMORY[0x28223BE20](v12);
  v116 = v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = v14;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v15 = *(*(v108 - 8) + 64);
  MEMORY[0x28223BE20](v108);
  v17 = v88 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA4ViewPAAE15fullScreenCover11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaFRd__lFQOyAgAE0L6Change2of7initial_Qrqd___SbyyctSQRd__lFQOyAEyAgAEApqR_Qrqd___SbyyctSQRd__lFQOyAgAEApqR_Qrqd___SbyyctSQRd__lFQOyAEyAgAEApqR_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleF0VyAA01_f9Modifier_D0Vy21JournalingSuggestions016SuggestionPickerU033_315EC45933A08D2AC82BECE24BED7720LLVG_AEyAEyAY34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionU0VG_So14UISceneSessionCSgQo__SbQo_A14_G_AA10ScenePhaseOQo__AEyACyAgAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAgAE19presentationDetentsyQrShyAA18PresentationDetentVGFQOyAgAE33presentationBackgroundInteractionyQrAA33PresentationBackgroundInteractionVFQOyAEyAY16EmbeddedJSPickerVAA016_BackgroundStyleU0VyAA5ColorVGG_Qo__Qo__Qo_ACyA45_AgAE22presentationBackgroundyQrqd__AA10ShapeStyleRd__lFQOyA42__A40_Qo_GGAA30_SafeAreaRegionsIgnoringLayoutVGQo_AA012_TransactionU0VGAgAE5sheetAijKQrAN_AOqd__yctAaFRd__lFQOyA24__A50_Qo_GMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA4ViewPAAE15fullScreenCover11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaFRd__lFQOyAgAE0L6Change2of7initial_Qrqd___SbyyctSQRd__lFQOyAEyAgAEApqR_Qrqd___SbyyctSQRd__lFQOyAgAEApqR_Qrqd___SbyyctSQRd__lFQOyAEyAgAEApqR_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleF0VyAA01_f9Modifier_D0Vy21JournalingSuggestions016SuggestionPickerU033_315EC45933A08D2AC82BECE24BED7720LLVG_AEyAEyAY34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionU0VG_So14UISceneSessionCSgQo__SbQo_A14_G_AA10ScenePhaseOQo__AEyACyAgAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAgAE19presentationDetentsyQrShyAA18PresentationDetentVGFQOyAgAE33presentationBackgroundInteractionyQrAA33PresentationBackgroundInteractionVFQOyAEyAY16EmbeddedJSPickerVAA016_BackgroundStyleU0VyAA5ColorVGG_Qo__Qo__Qo_ACyA45_AgAE22presentationBackgroundyQrqd__AA10ShapeStyleRd__lFQOyA42__A40_Qo_GGAA30_SafeAreaRegionsIgnoringLayoutVGQo_AA012_TransactionU0VGAgAE5sheetAijKQrAN_AOqd__yctAaFRd__lFQOyA24__A50_Qo_GMR);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = v88 - v20;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA19_ConditionalContentVyAA08ModifiedI0VyAcAE15fullScreenCover11isPresented0D7Dismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaBRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAJyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAJyAcAEAdeF_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleC0VyAA01_c9Modifier_I0Vy21JournalingSuggestions016SuggestionPickerU033_315EC45933A08D2AC82BECE24BED7720LLVG_AJyAJyAY34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionU0VG_So14UISceneSessionCSgQo__SbQo_A14_G_AA10ScenePhaseOQo__AJyAHyAcAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAcAE19presentationDetentsyQrShyAA18PresentationDetentVGFQOyAcAE33presentationBackgroundInteractionyQrAA33PresentationBackgroundInteractionVFQOyAJyAY16EmbeddedJSPickerVAA016_BackgroundStyleU0VyAA5ColorVGG_Qo__Qo__Qo_AHyA45_AcAE22presentationBackgroundyQrqd__AA10ShapeStyleRd__lFQOyA42__A40_Qo_GGAA30_SafeAreaRegionsIgnoringLayoutVGQo_AA012_TransactionU0VGAcAE5sheetAlmNQrAQ_ARqd__yctAaBRd__lFQOyA24__A50_Qo_G_10Foundation4UUIDVSgQo_Md, &_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA19_ConditionalContentVyAA08ModifiedI0VyAcAE15fullScreenCover11isPresented0D7Dismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaBRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAJyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAJyAcAEAdeF_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleC0VyAA01_c9Modifier_I0Vy21JournalingSuggestions016SuggestionPickerU033_315EC45933A08D2AC82BECE24BED7720LLVG_AJyAJyAY34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionU0VG_So14UISceneSessionCSgQo__SbQo_A14_G_AA10ScenePhaseOQo__AJyAHyAcAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAcAE19presentationDetentsyQrShyAA18PresentationDetentVGFQOyAcAE33presentationBackgroundInteractionyQrAA33PresentationBackgroundInteractionVFQOyAJyAY16EmbeddedJSPickerVAA016_BackgroundStyleU0VyAA5ColorVGG_Qo__Qo__Qo_AHyA45_AcAE22presentationBackgroundyQrqd__AA10ShapeStyleRd__lFQOyA42__A40_Qo_GGAA30_SafeAreaRegionsIgnoringLayoutVGQo_AA012_TransactionU0VGAcAE5sheetAlmNQrAQ_ARqd__yctAaBRd__lFQOyA24__A50_Qo_G_10Foundation4UUIDVSgQo_MR);
  v99 = *(v109 - 8);
  v22 = *(v99 + 64);
  MEMORY[0x28223BE20](v109);
  v107 = v88 - v23;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAEAdeF_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA19_ConditionalContentVyAA08ModifiedI0VyAcAE15fullScreenCover11isPresented0D7Dismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaBRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAJyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAJyAcAEAdeF_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleC0VyAA01_c9Modifier_I0Vy21JournalingSuggestions016SuggestionPickerU033_315EC45933A08D2AC82BECE24BED7720LLVG_AJyAJyAY34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionU0VG_So14UISceneSessionCSgQo__SbQo_A14_G_AA10ScenePhaseOQo__AJyAHyAcAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAcAE19presentationDetentsyQrShyAA18PresentationDetentVGFQOyAcAE33presentationBackgroundInteractionyQrAA33PresentationBackgroundInteractionVFQOyAJyAY16EmbeddedJSPickerVAA016_BackgroundStyleU0VyAA5ColorVGG_Qo__Qo__Qo_AHyA45_AcAE22presentationBackgroundyQrqd__AA10ShapeStyleRd__lFQOyA42__A40_Qo_GGAA30_SafeAreaRegionsIgnoringLayoutVGQo_AA012_TransactionU0VGAcAE5sheetAlmNQrAQ_ARqd__yctAaBRd__lFQOyA24__A50_Qo_G_10Foundation4UUIDVSgQo__SbQo_Md, &_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAEAdeF_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA19_ConditionalContentVyAA08ModifiedI0VyAcAE15fullScreenCover11isPresented0D7Dismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaBRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAJyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAJyAcAEAdeF_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleC0VyAA01_c9Modifier_I0Vy21JournalingSuggestions016SuggestionPickerU033_315EC45933A08D2AC82BECE24BED7720LLVG_AJyAJyAY34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionU0VG_So14UISceneSessionCSgQo__SbQo_A14_G_AA10ScenePhaseOQo__AJyAHyAcAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAcAE19presentationDetentsyQrShyAA18PresentationDetentVGFQOyAcAE33presentationBackgroundInteractionyQrAA33PresentationBackgroundInteractionVFQOyAJyAY16EmbeddedJSPickerVAA016_BackgroundStyleU0VyAA5ColorVGG_Qo__Qo__Qo_AHyA45_AcAE22presentationBackgroundyQrqd__AA10ShapeStyleRd__lFQOyA42__A40_Qo_GGAA30_SafeAreaRegionsIgnoringLayoutVGQo_AA012_TransactionU0VGAcAE5sheetAlmNQrAQ_ARqd__yctAaBRd__lFQOyA24__A50_Qo_G_10Foundation4UUIDVSgQo__SbQo_MR);
  v101 = *(v110 - 8);
  v24 = *(v101 + 64);
  MEMORY[0x28223BE20](v110);
  v100 = v88 - v25;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAEAdeF_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAEAdeF_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA19_ConditionalContentVyAA08ModifiedI0VyAcAE15fullScreenCover11isPresented0D7Dismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaBRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAJyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAJyAcAEAdeF_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleC0VyAA01_c9Modifier_I0Vy21JournalingSuggestions016SuggestionPickerU033_315EC45933A08D2AC82BECE24BED7720LLVG_AJyAJyAY34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionU0VG_So14UISceneSessionCSgQo__SbQo_A14_G_AA10ScenePhaseOQo__AJyAHyAcAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAcAE19presentationDetentsyQrShyAA18PresentationDetentVGFQOyAcAE33presentationBackgroundInteractionyQrAA33PresentationBackgroundInteractionVFQOyAJyAY16EmbeddedJSPickerVAA016_BackgroundStyleU0VyAA5ColorVGG_Qo__Qo__Qo_AHyA45_AcAE22presentationBackgroundyQrqd__AA10ShapeStyleRd__lFQOyA42__A40_Qo_GGAA30_SafeAreaRegionsIgnoringLayoutVGQo_AA012_TransactionU0VGAcAE5sheetAlmNQrAQ_ARqd__yctAaBRd__lFQOyA24__A50_Qo_G_10Foundation4UUIDVSgQo__SbQo__SbQo_Md, &_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAEAdeF_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAEAdeF_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA19_ConditionalContentVyAA08ModifiedI0VyAcAE15fullScreenCover11isPresented0D7Dismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaBRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAJyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAJyAcAEAdeF_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleC0VyAA01_c9Modifier_I0Vy21JournalingSuggestions016SuggestionPickerU033_315EC45933A08D2AC82BECE24BED7720LLVG_AJyAJyAY34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionU0VG_So14UISceneSessionCSgQo__SbQo_A14_G_AA10ScenePhaseOQo__AJyAHyAcAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAcAE19presentationDetentsyQrShyAA18PresentationDetentVGFQOyAcAE33presentationBackgroundInteractionyQrAA33PresentationBackgroundInteractionVFQOyAJyAY16EmbeddedJSPickerVAA016_BackgroundStyleU0VyAA5ColorVGG_Qo__Qo__Qo_AHyA45_AcAE22presentationBackgroundyQrqd__AA10ShapeStyleRd__lFQOyA42__A40_Qo_GGAA30_SafeAreaRegionsIgnoringLayoutVGQo_AA012_TransactionU0VGAcAE5sheetAlmNQrAQ_ARqd__yctAaBRd__lFQOyA24__A50_Qo_G_10Foundation4UUIDVSgQo__SbQo__SbQo_MR);
  v103 = *(v112 - 8);
  v26 = *(v103 + 64);
  MEMORY[0x28223BE20](v112);
  v102 = v88 - v27;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAEAdeF_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAEAdeF_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAEAdeF_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA19_ConditionalContentVyAA08ModifiedI0VyAcAE15fullScreenCover11isPresented0D7Dismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaBRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAJyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAJyAcAEAdeF_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleC0VyAA01_c9Modifier_I0Vy21JournalingSuggestions016SuggestionPickerU033_315EC45933A08D2AC82BECE24BED7720LLVG_AJyAJyAY34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionU0VG_So14UISceneSessionCSgQo__SbQo_A14_G_AA10ScenePhaseOQo__AJyAHyAcAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAcAE19presentationDetentsyQrShyAA18PresentationDetentVGFQOyAcAE33presentationBackgroundInteractionyQrAA33PresentationBackgroundInteractionVFQOyAJyAY16EmbeddedJSPickerVAA016_BackgroundStyleU0VyAA5ColorVGG_Qo__Qo__Qo_AHyA45_AcAE22presentationBackgroundyQrqd__AA10ShapeStyleRd__lFQOyA42__A40_Qo_GGAA30_SafeAreaRegionsIgnoringLayoutVGQo_AA012_TransactionU0VGAcAE5sheetAlmNQrAQ_ARqd__yctAaBRd__lFQOyA24__A50_Qo_G_10Foundation4UUIDVSgQo__SbQo__SbQo__SbQo_Md, &_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAEAdeF_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAEAdeF_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAEAdeF_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA19_ConditionalContentVyAA08ModifiedI0VyAcAE15fullScreenCover11isPresented0D7Dismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaBRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAJyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAJyAcAEAdeF_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleC0VyAA01_c9Modifier_I0Vy21JournalingSuggestions016SuggestionPickerU033_315EC45933A08D2AC82BECE24BED7720LLVG_AJyAJyAY34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionU0VG_So14UISceneSessionCSgQo__SbQo_A14_G_AA10ScenePhaseOQo__AJyAHyAcAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAcAE19presentationDetentsyQrShyAA18PresentationDetentVGFQOyAcAE33presentationBackgroundInteractionyQrAA33PresentationBackgroundInteractionVFQOyAJyAY16EmbeddedJSPickerVAA016_BackgroundStyleU0VyAA5ColorVGG_Qo__Qo__Qo_AHyA45_AcAE22presentationBackgroundyQrqd__AA10ShapeStyleRd__lFQOyA42__A40_Qo_GGAA30_SafeAreaRegionsIgnoringLayoutVGQo_AA012_TransactionU0VGAcAE5sheetAlmNQrAQ_ARqd__yctAaBRd__lFQOyA24__A50_Qo_G_10Foundation4UUIDVSgQo__SbQo__SbQo__SbQo_MR);
  v105 = *(v114 - 8);
  v28 = *(v105 + 64);
  MEMORY[0x28223BE20](v114);
  v104 = v88 - v29;
  v122 = &type metadata for MOMomentsFeatureFlags;
  v123 = lazy protocol witness table accessor for type MOMomentsFeatureFlags and conformance MOMomentsFeatureFlags();
  LOBYTE(v119) = 7;
  v30 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_1(&v119);
  if (v30)
  {
    SuggestionPickerModifier.modifierContent(content:)(a1, v9);
    (*(v6 + 16))(v115, v9, v5);
    swift_storeEnumTagMultiPayload();
    v31 = lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<<<opaque return type of View.fullScreenCover<A>(isPresented:onDismiss:content:)>>.0, _TransactionModifier>, <<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0> and conformance <> _ConditionalContent<A, B>();
    v32 = lazy protocol witness table accessor for type UUID? and conformance <A> A?();
    v119 = v18;
    v120 = v108;
    v121 = v31;
    v122 = v32;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v34 = MEMORY[0x277D839B0];
    v119 = v109;
    v120 = MEMORY[0x277D839B0];
    v35 = MEMORY[0x277D839C8];
    v121 = OpaqueTypeConformance2;
    v122 = MEMORY[0x277D839C8];
    v36 = swift_getOpaqueTypeConformance2();
    v119 = v110;
    v120 = v34;
    v121 = v36;
    v122 = v35;
    v37 = swift_getOpaqueTypeConformance2();
    v119 = v112;
    v120 = v34;
    v121 = v37;
    v122 = v35;
    swift_getOpaqueTypeConformance2();
    v38 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAeAEAfgH_Qrqd___SbyyctSQRd__lFQOyACyAeAEAfgH_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleE0VyAA01_e9Modifier_D0Vy21JournalingSuggestions016SuggestionPickerL033_315EC45933A08D2AC82BECE24BED7720LLVG_ACyACyAO34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionL0VG_So14UISceneSessionCSgQo__SbQo_A4_GMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAeAEAfgH_Qrqd___SbyyctSQRd__lFQOyACyAeAEAfgH_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleE0VyAA01_e9Modifier_D0Vy21JournalingSuggestions016SuggestionPickerL033_315EC45933A08D2AC82BECE24BED7720LLVG_ACyACyAO34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionL0VG_So14UISceneSessionCSgQo__SbQo_A4_GMR);
    v39 = type metadata accessor for ScenePhase();
    v40 = lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>();
    v41 = lazy protocol witness table accessor for type SuggestionPickerModifier and conformance SuggestionPickerModifier(&lazy protocol witness table cache variable for type ScenePhase and conformance ScenePhase, MEMORY[0x277CDD6C8]);
    v119 = v38;
    v120 = v39;
    v121 = v40;
    v122 = v41;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v6 + 8))(v9, v5);
  }

  else
  {
    SuggestionPickerModifier.platformDependentEmbeddedStyle(content:)(a1, v21);
    v90 = v12;
    v43 = v3 + *(v12 + 56);
    v94 = v3;
    v44 = *(v43 + 8);
    v96 = *v43;
    v89 = *(v43 + 16);
    v95 = type metadata accessor for SuggestionSheetUIManager();
    v97 = lazy protocol witness table accessor for type SuggestionPickerModifier and conformance SuggestionPickerModifier(&lazy protocol witness table cache variable for type SuggestionSheetUIManager and conformance SuggestionSheetUIManager, type metadata accessor for SuggestionSheetUIManager);
    v88[1] = v44;
    v45 = StateObject.wrappedValue.getter();
    (*((*MEMORY[0x277D85000] & *v45) + 0x190))();

    v106 = type metadata accessor for SuggestionPickerModifier;
    v46 = v116;
    outlined init with copy of JournalConfiguration(v3, v116, type metadata accessor for SuggestionPickerModifier);
    v91 = v5;
    v98 = *(v98 + 80);
    v47 = (v98 + 16) & ~v98;
    v48 = swift_allocObject();
    v93 = type metadata accessor for SuggestionPickerModifier;
    outlined init with take of SuggestionPickerModifier(v46, v48 + v47, type metadata accessor for SuggestionPickerModifier);
    v49 = lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<<<opaque return type of View.fullScreenCover<A>(isPresented:onDismiss:content:)>>.0, _TransactionModifier>, <<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0> and conformance <> _ConditionalContent<A, B>();
    v50 = lazy protocol witness table accessor for type UUID? and conformance <A> A?();
    v51 = v18;
    v52 = v108;
    View.onChange<A>(of:initial:_:)();

    outlined destroy of URL?(v17, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    outlined destroy of URL?(v21, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA4ViewPAAE15fullScreenCover11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaFRd__lFQOyAgAE0L6Change2of7initial_Qrqd___SbyyctSQRd__lFQOyAEyAgAEApqR_Qrqd___SbyyctSQRd__lFQOyAgAEApqR_Qrqd___SbyyctSQRd__lFQOyAEyAgAEApqR_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleF0VyAA01_f9Modifier_D0Vy21JournalingSuggestions016SuggestionPickerU033_315EC45933A08D2AC82BECE24BED7720LLVG_AEyAEyAY34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionU0VG_So14UISceneSessionCSgQo__SbQo_A14_G_AA10ScenePhaseOQo__AEyACyAgAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAgAE19presentationDetentsyQrShyAA18PresentationDetentVGFQOyAgAE33presentationBackgroundInteractionyQrAA33PresentationBackgroundInteractionVFQOyAEyAY16EmbeddedJSPickerVAA016_BackgroundStyleU0VyAA5ColorVGG_Qo__Qo__Qo_ACyA45_AgAE22presentationBackgroundyQrqd__AA10ShapeStyleRd__lFQOyA42__A40_Qo_GGAA30_SafeAreaRegionsIgnoringLayoutVGQo_AA012_TransactionU0VGAgAE5sheetAijKQrAN_AOqd__yctAaFRd__lFQOyA24__A50_Qo_GMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA4ViewPAAE15fullScreenCover11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaFRd__lFQOyAgAE0L6Change2of7initial_Qrqd___SbyyctSQRd__lFQOyAEyAgAEApqR_Qrqd___SbyyctSQRd__lFQOyAgAEApqR_Qrqd___SbyyctSQRd__lFQOyAEyAgAEApqR_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleF0VyAA01_f9Modifier_D0Vy21JournalingSuggestions016SuggestionPickerU033_315EC45933A08D2AC82BECE24BED7720LLVG_AEyAEyAY34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionU0VG_So14UISceneSessionCSgQo__SbQo_A14_G_AA10ScenePhaseOQo__AEyACyAgAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAgAE19presentationDetentsyQrShyAA18PresentationDetentVGFQOyAgAE33presentationBackgroundInteractionyQrAA33PresentationBackgroundInteractionVFQOyAEyAY16EmbeddedJSPickerVAA016_BackgroundStyleU0VyAA5ColorVGG_Qo__Qo__Qo_ACyA45_AgAE22presentationBackgroundyQrqd__AA10ShapeStyleRd__lFQOyA42__A40_Qo_GGAA30_SafeAreaRegionsIgnoringLayoutVGQo_AA012_TransactionU0VGAgAE5sheetAijKQrAN_AOqd__yctAaFRd__lFQOyA24__A50_Qo_GMR);
    v53 = StateObject.wrappedValue.getter();
    v54 = (*((*MEMORY[0x277D85000] & *v53) + 0x1C0))();

    v118 = v54 & 1;
    v55 = v116;
    outlined init with copy of JournalConfiguration(v94, v116, v106);
    v92 = v47;
    v56 = swift_allocObject() + v47;
    v57 = v93;
    outlined init with take of SuggestionPickerModifier(v55, v56, v93);
    v119 = v51;
    v120 = v52;
    v121 = v49;
    v122 = v50;
    v108 = MEMORY[0x277CE0E30];
    v58 = swift_getOpaqueTypeConformance2();
    v59 = v100;
    v60 = v109;
    v61 = v107;
    View.onChange<A>(of:initial:_:)();

    (*(v99 + 8))(v61, v60);
    v62 = StateObject.wrappedValue.getter();
    v63 = (*((*MEMORY[0x277D85000] & *v62) + 0x1F0))();

    v118 = v63 & 1;
    v64 = v94;
    v65 = v116;
    outlined init with copy of JournalConfiguration(v94, v116, v106);
    v66 = v92;
    v67 = swift_allocObject();
    outlined init with take of SuggestionPickerModifier(v65, v67 + v66, v57);
    v119 = v60;
    v120 = MEMORY[0x277D839B0];
    v121 = v58;
    v68 = MEMORY[0x277D839C8];
    v122 = MEMORY[0x277D839C8];
    v69 = swift_getOpaqueTypeConformance2();
    v70 = v102;
    v71 = v110;
    v72 = v68;
    View.onChange<A>(of:initial:_:)();

    (*(v101 + 8))(v59, v71);
    v73 = v64 + *(v90 + 32);
    v74 = *v73;
    v75 = *(v73 + 8);
    LOBYTE(v73) = *(v73 + 16);
    v119 = v74;
    v120 = v75;
    LOBYTE(v121) = v73;
    v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd, &_s7SwiftUI7BindingVySbGMR);
    MEMORY[0x23EE6FFD0](&v118, v76);
    outlined init with copy of JournalConfiguration(v64, v65, v106);
    v77 = v92;
    v78 = swift_allocObject();
    outlined init with take of SuggestionPickerModifier(v65, v78 + v77, v93);
    v119 = v71;
    v120 = MEMORY[0x277D839B0];
    v121 = v69;
    v122 = v72;
    v79 = swift_getOpaqueTypeConformance2();
    v80 = v104;
    v81 = v112;
    View.onChange<A>(of:initial:_:)();

    (*(v103 + 8))(v70, v81);
    v82 = v105;
    v83 = v114;
    (*(v105 + 16))(v115, v80, v114);
    swift_storeEnumTagMultiPayload();
    v119 = v81;
    v120 = MEMORY[0x277D839B0];
    v121 = v79;
    v122 = MEMORY[0x277D839C8];
    swift_getOpaqueTypeConformance2();
    v84 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAeAEAfgH_Qrqd___SbyyctSQRd__lFQOyACyAeAEAfgH_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleE0VyAA01_e9Modifier_D0Vy21JournalingSuggestions016SuggestionPickerL033_315EC45933A08D2AC82BECE24BED7720LLVG_ACyACyAO34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionL0VG_So14UISceneSessionCSgQo__SbQo_A4_GMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAeAEAfgH_Qrqd___SbyyctSQRd__lFQOyACyAeAEAfgH_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleE0VyAA01_e9Modifier_D0Vy21JournalingSuggestions016SuggestionPickerL033_315EC45933A08D2AC82BECE24BED7720LLVG_ACyACyAO34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionL0VG_So14UISceneSessionCSgQo__SbQo_A4_GMR);
    v85 = type metadata accessor for ScenePhase();
    v86 = lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>();
    v87 = lazy protocol witness table accessor for type SuggestionPickerModifier and conformance SuggestionPickerModifier(&lazy protocol witness table cache variable for type ScenePhase and conformance ScenePhase, MEMORY[0x277CDD6C8]);
    v119 = v84;
    v120 = v85;
    v121 = v86;
    v122 = v87;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v82 + 8))(v80, v83);
  }
}

void closure #1 in SuggestionPickerModifier.body(content:)()
{
  if (one-time initialization token for picker != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.picker);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_238A75000, v1, v2, "connection UUID received", v3, 2u);
    MEMORY[0x23EE71510](v3, -1, -1);
  }

  SuggestionPickerModifier.presentAndUpdateEmbeddedPicker()();
}

void closure #2 in SuggestionPickerModifier.body(content:)()
{
  if (one-time initialization token for picker != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.picker);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_238A75000, v1, v2, "shouldRequestEmbeddedScene received", v3, 2u);
    MEMORY[0x23EE71510](v3, -1, -1);
  }

  SuggestionPickerModifier.presentAndUpdateEmbeddedPicker()();
}

void closure #3 in SuggestionPickerModifier.body(content:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for SuggestionPickerModifier(0);
  v5 = (a3 + *(v4 + 56));
  v6 = *v5;
  v7 = v5[1];
  v8 = *(v5 + 16);
  type metadata accessor for SuggestionSheetUIManager();
  lazy protocol witness table accessor for type SuggestionPickerModifier and conformance SuggestionPickerModifier(&lazy protocol witness table cache variable for type SuggestionSheetUIManager and conformance SuggestionSheetUIManager, type metadata accessor for SuggestionSheetUIManager);
  v9 = StateObject.wrappedValue.getter();
  LOBYTE(v7) = (*((*MEMORY[0x277D85000] & *v9) + 0x1F0))();

  if ((v7 & 1) == 0)
  {
    v10 = *(a3 + *(v4 + 48));
    EmbeddedPicker.endSceneHostingSession()();
  }
}

uint64_t closure #4 in SuggestionPickerModifier.body(content:)()
{
  Transaction.disablesAnimations.setter();
  withTransaction<A>(_:_:)();
}

uint64_t closure #1 in SuggestionPickerModifier.updatePresentation(for:)(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for SuggestionPickerModifier(0) + 32));
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd, &_s7SwiftUI7BindingVySbGMR);
  return Binding.wrappedValue.setter();
}

uint64_t key path setter for EnvironmentValues.scenePhase : EnvironmentValues(uint64_t a1)
{
  v2 = type metadata accessor for ScenePhase();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.scenePhase.setter();
}

uint64_t specialized Environment.wrappedValue.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA10ScenePhaseO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA10ScenePhaseO_GMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v17 - v11);
  outlined init with copy of URL?(v2, &v17 - v11, &_s7SwiftUI11EnvironmentV7ContentOyAA10ScenePhaseO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA10ScenePhaseO_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = type metadata accessor for ScenePhase();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    static os_log_type_t.fault.getter();
    v16 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t key path setter for EnvironmentValues.horizontalSizeClass : EnvironmentValues(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v12 - v9;
  outlined init with copy of URL?(a1, &v12 - v9, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  return a5(v10);
}

uint64_t sub_238AD15B8@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.sceneSession.getter();
  *a1 = result;
  return result;
}

uint64_t outlined assign with take of UUID?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

BOOL specialized static JournalingSuggestionPresentationToken.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v23 - v16;
  v18 = *(v15 + 56);
  outlined init with copy of URL?(a1, &v23 - v16, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined init with copy of URL?(a2, &v17[v18], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) != 1)
  {
    outlined init with copy of URL?(v17, v12, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if (v19(&v17[v18], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v17[v18], v4);
      lazy protocol witness table accessor for type SuggestionPickerModifier and conformance SuggestionPickerModifier(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *(v5 + 8);
      v22(v8, v4);
      v22(v12, v4);
      outlined destroy of URL?(v17, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      return (v21 & 1) != 0;
    }

    (*(v5 + 8))(v12, v4);
LABEL_6:
    outlined destroy of URL?(v17, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
    return 0;
  }

  if (v19(&v17[v18], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  outlined destroy of URL?(v17, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  return 1;
}

uint64_t lazy protocol witness table accessor for type SuggestionPickerModifier and conformance SuggestionPickerModifier(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined assign with copy of UUID?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type JournalingSuggestionsConfiguration.NotificationSchedule and conformance JournalingSuggestionsConfiguration.NotificationSchedule()
{
  result = lazy protocol witness table cache variable for type JournalingSuggestionsConfiguration.NotificationSchedule and conformance JournalingSuggestionsConfiguration.NotificationSchedule;
  if (!lazy protocol witness table cache variable for type JournalingSuggestionsConfiguration.NotificationSchedule and conformance JournalingSuggestionsConfiguration.NotificationSchedule)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JournalingSuggestionsConfiguration.NotificationSchedule and conformance JournalingSuggestionsConfiguration.NotificationSchedule);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type JournalingSuggestionsConfiguration.NotificationAvailabilityStatusPrivate and conformance JournalingSuggestionsConfiguration.NotificationAvailabilityStatusPrivate()
{
  result = lazy protocol witness table cache variable for type JournalingSuggestionsConfiguration.NotificationAvailabilityStatusPrivate and conformance JournalingSuggestionsConfiguration.NotificationAvailabilityStatusPrivate;
  if (!lazy protocol witness table cache variable for type JournalingSuggestionsConfiguration.NotificationAvailabilityStatusPrivate and conformance JournalingSuggestionsConfiguration.NotificationAvailabilityStatusPrivate)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JournalingSuggestionsConfiguration.NotificationAvailabilityStatusPrivate and conformance JournalingSuggestionsConfiguration.NotificationAvailabilityStatusPrivate);
  }

  return result;
}

void type metadata completion function for JournalingSuggestionsPicker(uint64_t a1)
{
  type metadata accessor for State<Bool>(319, &lazy cache variable for type metadata for State<Bool>, MEMORY[0x277CE10B8]);
  if (v2 <= 0x3F)
  {
    type metadata accessor for State<JournalingSuggestionPresentationToken?>(319, &lazy cache variable for type metadata for State<JournalingSuggestionPresentationToken?>, &_s21JournalingSuggestions0A27SuggestionPresentationTokenVSgMd, &_s21JournalingSuggestions0A27SuggestionPresentationTokenVSgMR, MEMORY[0x277CE10B8]);
    if (v3 <= 0x3F)
    {
      v4 = *(a1 + 16);
      swift_checkMetadataState();
      if (v5 <= 0x3F)
      {
        type metadata accessor for ()();
        if (v6 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for JournalingSuggestionsPicker(int *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(type metadata accessor for UUID() - 8);
  v7 = v6;
  v8 = *(v6 + 84);
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  v10 = v9 - 1;
  v11 = *(*(a3 + 16) - 8);
  v12 = *(v11 + 84);
  v13 = *(v6 + 80);
  v14 = *(v6 + 64);
  v15 = *(v11 + 80);
  v16 = 7;
  if (!v8)
  {
    v16 = 8;
  }

  if (v8 >= 2)
  {
    v17 = v16;
  }

  else
  {
    v10 = 0;
    v17 = v16 + 1;
  }

  if (v10 <= v12)
  {
    v18 = *(v11 + 84);
  }

  else
  {
    v18 = v10;
  }

  if (v18 <= 0x7FFFFFFF)
  {
    v19 = 0x7FFFFFFF;
  }

  else
  {
    v19 = v18;
  }

  if (!a2)
  {
    return 0;
  }

  v20 = v13 & 0xF8;
  v21 = v20 | 7;
  v22 = ((v17 + v14) & 0xFFFFFFFFFFFFFFF8) + 8;
  v23 = *(v11 + 64) + 7;
  if (v19 < a2)
  {
    v24 = ((v23 + ((v22 + v15 + ((v20 + 23) & ~v21)) & ~v15)) & 0xFFFFFFFFFFFFFFF8) + 16;
    v25 = v24 & 0xFFFFFFF8;
    if ((v24 & 0xFFFFFFF8) != 0)
    {
      v26 = 2;
    }

    else
    {
      v26 = a2 - v19 + 1;
    }

    if (v26 >= 0x10000)
    {
      v27 = 4;
    }

    else
    {
      v27 = 2;
    }

    if (v26 < 0x100)
    {
      v27 = 1;
    }

    if (v26 >= 2)
    {
      v28 = v27;
    }

    else
    {
      v28 = 0;
    }

    if (v28 > 1)
    {
      if (v28 == 2)
      {
        v29 = *(a1 + v24);
        if (v29)
        {
          goto LABEL_30;
        }
      }

      else
      {
        v29 = *(a1 + v24);
        if (v29)
        {
          goto LABEL_30;
        }
      }
    }

    else if (v28)
    {
      v29 = *(a1 + v24);
      if (v29)
      {
LABEL_30:
        v30 = v29 - 1;
        if (v25)
        {
          v30 = 0;
          v31 = *a1;
        }

        else
        {
          v31 = 0;
        }

        return v19 + (v31 | v30) + 1;
      }
    }
  }

  v32 = (a1 + v21 + 16) & ~v21;
  if (v10 == v19)
  {
    if (v8 >= 2)
    {
      v33 = (*(v7 + 48))(v32);
      v34 = v33 >= 2;
      result = v33 - 2;
      if (result != 0 && v34)
      {
        return result;
      }
    }

    return 0;
  }

  v36 = (v32 + v15 + v22) & ~v15;
  if (v12 == v19)
  {
    v37 = *(v11 + 48);

    return v37(v36, v12);
  }

  else
  {
    v38 = *((v23 + v36) & 0xFFFFFFFFFFFFFFF8);
    if (v38 >= 0xFFFFFFFF)
    {
      LODWORD(v38) = -1;
    }

    return (v38 + 1);
  }
}

void storeEnumTagSinglePayload for JournalingSuggestionsPicker(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  if (v10)
  {
    v11 = v10 - 1;
  }

  else
  {
    v11 = 0;
  }

  if (v10)
  {
    v12 = *(*(v8 - 8) + 64);
  }

  else
  {
    v12 = *(*(v8 - 8) + 64) + 1;
  }

  if (v10 >= 2)
  {
    v13 = v11 - 1;
  }

  else
  {
    v13 = 0;
  }

  if (v10 >= 2)
  {
    v14 = v12;
  }

  else
  {
    v14 = v12 + 1;
  }

  if (v13 <= 0x7FFFFFFE)
  {
    v15 = 2147483646;
  }

  else
  {
    v15 = v13;
  }

  v16 = *(*(a4 + 16) - 8);
  v17 = *(v16 + 84);
  v18 = *(v9 + 80);
  v19 = *(v16 + 80);
  if (v17 <= v15)
  {
    v20 = v15;
  }

  else
  {
    v20 = *(v16 + 84);
  }

  if (v20 <= 0x7FFFFFFF)
  {
    v20 = 0x7FFFFFFF;
  }

  v21 = v18 & 0xF8 | 7;
  v22 = ((v14 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v23 = *(v16 + 64) + 7;
  v24 = ((v23 + ((v22 + v19 + (((v18 & 0xF8) + 23) & ~v21)) & ~v19)) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v23 + ((v22 + v19 + (((*(v9 + 80) & 0xF8) + 23) & ~v21)) & ~v19)) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v25 = a3 - v20 + 1;
  }

  else
  {
    v25 = 2;
  }

  if (v25 >= 0x10000)
  {
    v26 = 4;
  }

  else
  {
    v26 = 2;
  }

  if (v25 < 0x100)
  {
    v26 = 1;
  }

  if (v25 >= 2)
  {
    v27 = v26;
  }

  else
  {
    v27 = 0;
  }

  if (v20 < a3)
  {
    v28 = v27;
  }

  else
  {
    v28 = 0;
  }

  if (a2 > v20)
  {
    if (v24)
    {
      v29 = 1;
    }

    else
    {
      v29 = a2 - v20;
    }

    if (v24)
    {
      v30 = ~v20 + a2;
      bzero(a1, v24);
      *a1 = v30;
    }

    if (v28 > 1)
    {
      if (v28 == 2)
      {
        *(a1 + v24) = v29;
      }

      else
      {
        *(a1 + v24) = v29;
      }
    }

    else if (v28)
    {
      *(a1 + v24) = v29;
    }

    return;
  }

  if (v28 > 1)
  {
    if (v28 != 2)
    {
      *(a1 + v24) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_53;
    }

    *(a1 + v24) = 0;
LABEL_52:
    if (!a2)
    {
      return;
    }

    goto LABEL_53;
  }

  if (!v28)
  {
    goto LABEL_52;
  }

  *(a1 + v24) = 0;
  if (!a2)
  {
    return;
  }

LABEL_53:
  v31 = ((a1 + v21 + 16) & ~v21);
  if (v13 == v20)
  {
    if (v15 >= a2)
    {
      if (a2 + 1 <= v11)
      {
        if (a2 != -1 && v10 >= 2)
        {
          v40 = *(v9 + 56);

          v40(v31, (a2 + 2));
        }
      }

      else
      {
        if (v12 <= 3)
        {
          v36 = ~(-1 << (8 * v12));
        }

        else
        {
          v36 = -1;
        }

        if (v12)
        {
          v37 = v36 & (a2 - v11);
          if (v12 <= 3)
          {
            v38 = v12;
          }

          else
          {
            v38 = 4;
          }

          bzero(v31, v12);
          if (v38 > 2)
          {
            if (v38 == 3)
            {
              *v31 = v37;
              v31[2] = BYTE2(v37);
            }

            else
            {
              *v31 = v37;
            }
          }

          else if (v38 == 1)
          {
            *v31 = v37;
          }

          else
          {
            *v31 = v37;
          }
        }
      }
    }

    else
    {
      v32 = (v14 + 7) & 0xFFFFFFF8;
      if (v32 != -8)
      {
        v33 = ~v15 + a2;
        bzero(v31, (v32 + 8));
        *v31 = v33;
      }
    }
  }

  else
  {
    v34 = &v31[v19 + v22] & ~v19;
    if (v17 == v20)
    {
      v35 = *(v16 + 56);

      v35(v34, a2, v17);
    }

    else
    {
      v39 = ((v23 + v34) & 0xFFFFFFFFFFFFFFF8);
      if ((a2 & 0x80000000) != 0)
      {
        *v39 = a2 & 0x7FFFFFFF;
        v39[1] = 0;
      }

      else
      {
        *v39 = (a2 - 1);
      }
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

uint64_t sub_238AD22F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_238AD2380(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void type metadata completion function for JournalingSuggestionPresentationToken()
{
  type metadata accessor for UUID?(319, &lazy cache variable for type metadata for UUID?, MEMORY[0x277CC95F0], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t type metadata completion function for JournalingSuggestionsConfiguration()
{
  result = type metadata accessor for ObservationRegistrar();
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

uint64_t sub_238AD2644(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 24);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_238AD2714(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = a2 + 1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void type metadata completion function for JournalConfiguration()
{
  type metadata accessor for UUID?(319, &lazy cache variable for type metadata for UUID?, MEMORY[0x277CC95F0], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_238AD2874(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for Button();
  type metadata accessor for SuggestionPickerModifier(255);
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type SuggestionPickerModifier and conformance SuggestionPickerModifier(&lazy protocol witness table cache variable for type SuggestionPickerModifier and conformance SuggestionPickerModifier, type metadata accessor for SuggestionPickerModifier);
  return swift_getWitnessTable();
}

uint64_t sub_238AD293C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for SuggestionPickerModifier(255);
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type SuggestionPickerModifier and conformance SuggestionPickerModifier(&lazy protocol witness table cache variable for type SuggestionPickerModifier and conformance SuggestionPickerModifier, type metadata accessor for SuggestionPickerModifier);
  return swift_getWitnessTable();
}

uint64_t sub_238AD29EC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA10ScenePhaseOGMd, &_s7SwiftUI11EnvironmentVyAA10ScenePhaseOGMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_6:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA22UserInterfaceSizeClassOSgGMd, &_s7SwiftUI11EnvironmentVyAA22UserInterfaceSizeClassOSgGMR);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[6];
LABEL_5:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_6;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v15 = *(a1 + a3[8] + 8);
    if (v15 >= 0xFFFFFFFF)
    {
      LODWORD(v15) = -1;
    }

    return (v15 + 1);
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21JournalingSuggestions0A27SuggestionPresentationTokenVSgMd, &_s21JournalingSuggestions0A27SuggestionPresentationTokenVSgMR);
    if (*(*(v16 - 8) + 84) == a2)
    {
      v8 = v16;
      v12 = *(v16 - 8);
      v13 = a3[9];
      goto LABEL_5;
    }

    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21JournalingSuggestions20JournalConfigurationVSgMd, &_s21JournalingSuggestions20JournalConfigurationVSgMR);
    if (*(*(v17 - 8) + 84) == a2)
    {
      v8 = v17;
      v12 = *(v17 - 8);
      v13 = a3[10];
      goto LABEL_5;
    }

    v18 = type metadata accessor for UUID();
    v19 = *(*(v18 - 8) + 48);
    v20 = a1 + a3[15];

    return v19(v20, a2, v18);
  }
}

uint64_t sub_238AD2C38(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA10ScenePhaseOGMd, &_s7SwiftUI11EnvironmentVyAA10ScenePhaseOGMR);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_6:

    return v11(v12, a2, a2, v10);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA22UserInterfaceSizeClassOSgGMd, &_s7SwiftUI11EnvironmentVyAA22UserInterfaceSizeClassOSgGMR);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[6];
LABEL_5:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_6;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[8] + 8) = (a2 - 1);
    return result;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21JournalingSuggestions0A27SuggestionPresentationTokenVSgMd, &_s21JournalingSuggestions0A27SuggestionPresentationTokenVSgMR);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[9];
    goto LABEL_5;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21JournalingSuggestions20JournalConfigurationVSgMd, &_s21JournalingSuggestions20JournalConfigurationVSgMR);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[10];
    goto LABEL_5;
  }

  v18 = type metadata accessor for UUID();
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[15];

  return v19(v20, a2, a2, v18);
}

void type metadata completion function for SuggestionPickerModifier()
{
  type metadata accessor for UUID?(319, &lazy cache variable for type metadata for Environment<ScenePhase>, MEMORY[0x277CDD6C8], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for State<JournalingSuggestionPresentationToken?>(319, &lazy cache variable for type metadata for Environment<UISceneSession?>, &_sSo14UISceneSessionCSgMd, &_sSo14UISceneSessionCSgMR, MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for State<JournalingSuggestionPresentationToken?>(319, &lazy cache variable for type metadata for Environment<UserInterfaceSizeClass?>, &_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR, MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for State<Bool>(319, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x277CE11F8]);
        if (v3 <= 0x3F)
        {
          type metadata accessor for UUID?(319, &lazy cache variable for type metadata for JournalingSuggestionPresentationToken?, type metadata accessor for JournalingSuggestionPresentationToken, MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            type metadata accessor for UUID?(319, &lazy cache variable for type metadata for JournalConfiguration?, type metadata accessor for JournalConfiguration, MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              type metadata accessor for ()();
              if (v6 <= 0x3F)
              {
                type metadata accessor for StateObject<SuggestionSheetUIManager>();
                if (v7 <= 0x3F)
                {
                  type metadata accessor for UUID();
                  if (v8 <= 0x3F)
                  {
                    type metadata accessor for State<Bool>(319, &lazy cache variable for type metadata for State<Bool>, MEMORY[0x277CE10B8]);
                    if (v9 <= 0x3F)
                    {
                      swift_cvw_initStructMetadataWithLayoutString();
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

void type metadata accessor for State<JournalingSuggestionPresentationToken?>(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

void type metadata accessor for State<Bool>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D839B0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata accessor for StateObject<SuggestionSheetUIManager>()
{
  if (!lazy cache variable for type metadata for StateObject<SuggestionSheetUIManager>)
  {
    type metadata accessor for SuggestionSheetUIManager();
    lazy protocol witness table accessor for type SuggestionPickerModifier and conformance SuggestionPickerModifier(&lazy protocol witness table cache variable for type SuggestionSheetUIManager and conformance SuggestionSheetUIManager, type metadata accessor for SuggestionSheetUIManager);
    v0 = type metadata accessor for StateObject();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StateObject<SuggestionSheetUIManager>);
    }
  }
}

uint64_t outlined init with copy of JournalConfiguration(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void outlined consume of Environment<UISceneSession?>.Content(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t outlined consume of StateObject<SuggestionSheetUIManager>.Storage(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return MEMORY[0x2821F96F8]();
  }

  else
  {
  }
}

void partial apply for closure #1 in SuggestionPickerModifier.body(content:)()
{
  v0 = *(*(type metadata accessor for SuggestionPickerModifier(0) - 8) + 80);

  closure #1 in SuggestionPickerModifier.body(content:)();
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<<<opaque return type of View.fullScreenCover<A>(isPresented:onDismiss:content:)>>.0, _TransactionModifier>, <<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<<<opaque return type of View.fullScreenCover<A>(isPresented:onDismiss:content:)>>.0, _TransactionModifier>, <<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<<<opaque return type of View.fullScreenCover<A>(isPresented:onDismiss:content:)>>.0, _TransactionModifier>, <<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA4ViewPAAE15fullScreenCover11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaFRd__lFQOyAgAE0L6Change2of7initial_Qrqd___SbyyctSQRd__lFQOyAEyAgAEApqR_Qrqd___SbyyctSQRd__lFQOyAgAEApqR_Qrqd___SbyyctSQRd__lFQOyAEyAgAEApqR_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleF0VyAA01_f9Modifier_D0Vy21JournalingSuggestions016SuggestionPickerU033_315EC45933A08D2AC82BECE24BED7720LLVG_AEyAEyAY34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionU0VG_So14UISceneSessionCSgQo__SbQo_A14_G_AA10ScenePhaseOQo__AEyACyAgAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAgAE19presentationDetentsyQrShyAA18PresentationDetentVGFQOyAgAE33presentationBackgroundInteractionyQrAA33PresentationBackgroundInteractionVFQOyAEyAY16EmbeddedJSPickerVAA016_BackgroundStyleU0VyAA5ColorVGG_Qo__Qo__Qo_ACyA45_AgAE22presentationBackgroundyQrqd__AA10ShapeStyleRd__lFQOyA42__A40_Qo_GGAA30_SafeAreaRegionsIgnoringLayoutVGQo_AA012_TransactionU0VGAgAE5sheetAijKQrAN_AOqd__yctAaFRd__lFQOyA24__A50_Qo_GMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA4ViewPAAE15fullScreenCover11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaFRd__lFQOyAgAE0L6Change2of7initial_Qrqd___SbyyctSQRd__lFQOyAEyAgAEApqR_Qrqd___SbyyctSQRd__lFQOyAgAEApqR_Qrqd___SbyyctSQRd__lFQOyAEyAgAEApqR_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleF0VyAA01_f9Modifier_D0Vy21JournalingSuggestions016SuggestionPickerU033_315EC45933A08D2AC82BECE24BED7720LLVG_AEyAEyAY34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionU0VG_So14UISceneSessionCSgQo__SbQo_A14_G_AA10ScenePhaseOQo__AEyACyAgAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAgAE19presentationDetentsyQrShyAA18PresentationDetentVGFQOyAgAE33presentationBackgroundInteractionyQrAA33PresentationBackgroundInteractionVFQOyAEyAY16EmbeddedJSPickerVAA016_BackgroundStyleU0VyAA5ColorVGG_Qo__Qo__Qo_ACyA45_AgAE22presentationBackgroundyQrqd__AA10ShapeStyleRd__lFQOyA42__A40_Qo_GGAA30_SafeAreaRegionsIgnoringLayoutVGQo_AA012_TransactionU0VGAgAE5sheetAijKQrAN_AOqd__yctAaFRd__lFQOyA24__A50_Qo_GMR);
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.fullScreenCover<A>(isPresented:onDismiss:content:)>>.0, _TransactionModifier> and conformance <> ModifiedContent<A, B>();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAA15ModifiedContentVyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAHyAcAEAdeF_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleC0VyAA01_c9Modifier_I0Vy21JournalingSuggestions016SuggestionPickerL033_315EC45933A08D2AC82BECE24BED7720LLVG_AHyAHyAO34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionL0VG_So14UISceneSessionCSgQo__SbQo_A4_G_AA10ScenePhaseOQo_Md, &_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAA15ModifiedContentVyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAHyAcAEAdeF_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleC0VyAA01_c9Modifier_I0Vy21JournalingSuggestions016SuggestionPickerL033_315EC45933A08D2AC82BECE24BED7720LLVG_AHyAHyAO34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionL0VG_So14UISceneSessionCSgQo__SbQo_A4_G_AA10ScenePhaseOQo_MR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAeAE0F7DetentsyQrShyAA18PresentationDetentVGFQOyAeAE0F21BackgroundInteractionyQrAA0kmN0VFQOyAA08ModifiedD0Vy21JournalingSuggestions16EmbeddedJSPickerVAA01_M13StyleModifierVyAA5ColorVGG_Qo__Qo__Qo_ACyA1_AeAE0fM0yQrqd__AA05ShapeT0Rd__lFQOyAZ_AXQo_GGMd, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAeAE0F7DetentsyQrShyAA18PresentationDetentVGFQOyAeAE0F21BackgroundInteractionyQrAA0kmN0VFQOyAA08ModifiedD0Vy21JournalingSuggestions16EmbeddedJSPickerVAA01_M13StyleModifierVyAA5ColorVGG_Qo__Qo__Qo_ACyA1_AeAE0fM0yQrqd__AA05ShapeT0Rd__lFQOyAZ_AXQo_GGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAeAEAfgH_Qrqd___SbyyctSQRd__lFQOyACyAeAEAfgH_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleE0VyAA01_e9Modifier_D0Vy21JournalingSuggestions016SuggestionPickerL033_315EC45933A08D2AC82BECE24BED7720LLVG_ACyACyAO34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionL0VG_So14UISceneSessionCSgQo__SbQo_A4_GMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAeAEAfgH_Qrqd___SbyyctSQRd__lFQOyACyAeAEAfgH_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleE0VyAA01_e9Modifier_D0Vy21JournalingSuggestions016SuggestionPickerL033_315EC45933A08D2AC82BECE24BED7720LLVG_ACyACyAO34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionL0VG_So14UISceneSessionCSgQo__SbQo_A4_GMR);
    type metadata accessor for ScenePhase();
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type SuggestionPickerModifier and conformance SuggestionPickerModifier(&lazy protocol witness table cache variable for type ScenePhase and conformance ScenePhase, MEMORY[0x277CDD6C8]);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.presentationDragIndicator(_:)>>.0, _ConditionalContent<<<opaque return type of View.presentationDragIndicator(_:)>>.0, <<opaque return type of View.presentationBackground<A>(_:)>>.0>> and conformance <> _ConditionalContent<A, B>();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<<<opaque return type of View.fullScreenCover<A>(isPresented:onDismiss:content:)>>.0, _TransactionModifier>, <<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.fullScreenCover<A>(isPresented:onDismiss:content:)>>.0, _TransactionModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.fullScreenCover<A>(isPresented:onDismiss:content:)>>.0, _TransactionModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.fullScreenCover<A>(isPresented:onDismiss:content:)>>.0, _TransactionModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE15fullScreenCover11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaDRd__lFQOyAeAE0K6Change2of7initial_Qrqd___SbyyctSQRd__lFQOyACyAeAEAnoP_Qrqd___SbyyctSQRd__lFQOyAeAEAnoP_Qrqd___SbyyctSQRd__lFQOyACyAeAEAnoP_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleE0VyAA01_e9Modifier_D0Vy21JournalingSuggestions016SuggestionPickerT033_315EC45933A08D2AC82BECE24BED7720LLVG_ACyACyAW34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionT0VG_So14UISceneSessionCSgQo__SbQo_A12_G_AA10ScenePhaseOQo__ACyAA012_ConditionalD0VyAeAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAeAE19presentationDetentsyQrShyAA18PresentationDetentVGFQOyAeAE33presentationBackgroundInteractionyQrAA33PresentationBackgroundInteractionVFQOyACyAW16EmbeddedJSPickerVAA016_BackgroundStyleT0VyAA5ColorVGG_Qo__Qo__Qo_A24_yA45_AeAE22presentationBackgroundyQrqd__AA10ShapeStyleRd__lFQOyA42__A40_Qo_GGAA30_SafeAreaRegionsIgnoringLayoutVGQo_AA012_TransactionT0VGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE15fullScreenCover11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaDRd__lFQOyAeAE0K6Change2of7initial_Qrqd___SbyyctSQRd__lFQOyACyAeAEAnoP_Qrqd___SbyyctSQRd__lFQOyAeAEAnoP_Qrqd___SbyyctSQRd__lFQOyACyAeAEAnoP_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleE0VyAA01_e9Modifier_D0Vy21JournalingSuggestions016SuggestionPickerT033_315EC45933A08D2AC82BECE24BED7720LLVG_ACyACyAW34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionT0VG_So14UISceneSessionCSgQo__SbQo_A12_G_AA10ScenePhaseOQo__ACyAA012_ConditionalD0VyAeAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAeAE19presentationDetentsyQrShyAA18PresentationDetentVGFQOyAeAE33presentationBackgroundInteractionyQrAA33PresentationBackgroundInteractionVFQOyACyAW16EmbeddedJSPickerVAA016_BackgroundStyleT0VyAA5ColorVGG_Qo__Qo__Qo_A24_yA45_AeAE22presentationBackgroundyQrqd__AA10ShapeStyleRd__lFQOyA42__A40_Qo_GGAA30_SafeAreaRegionsIgnoringLayoutVGQo_AA012_TransactionT0VGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAA15ModifiedContentVyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAHyAcAEAdeF_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleC0VyAA01_c9Modifier_I0Vy21JournalingSuggestions016SuggestionPickerL033_315EC45933A08D2AC82BECE24BED7720LLVG_AHyAHyAO34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionL0VG_So14UISceneSessionCSgQo__SbQo_A4_G_AA10ScenePhaseOQo_Md, &_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAA15ModifiedContentVyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAHyAcAEAdeF_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleC0VyAA01_c9Modifier_I0Vy21JournalingSuggestions016SuggestionPickerL033_315EC45933A08D2AC82BECE24BED7720LLVG_AHyAHyAO34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionL0VG_So14UISceneSessionCSgQo__SbQo_A4_G_AA10ScenePhaseOQo_MR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyAA4ViewPAAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAgAE0G7DetentsyQrShyAA18PresentationDetentVGFQOyAgAE0G21BackgroundInteractionyQrAA0lnO0VFQOyACy21JournalingSuggestions16EmbeddedJSPickerVAA01_N13StyleModifierVyAA5ColorVGG_Qo__Qo__Qo_AEyA1_AgAE0gN0yQrqd__AA05ShapeT0Rd__lFQOyAZ_AXQo_GGAA30_SafeAreaRegionsIgnoringLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyAA4ViewPAAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAgAE0G7DetentsyQrShyAA18PresentationDetentVGFQOyAgAE0G21BackgroundInteractionyQrAA0lnO0VFQOyACy21JournalingSuggestions16EmbeddedJSPickerVAA01_N13StyleModifierVyAA5ColorVGG_Qo__Qo__Qo_AEyA1_AgAE0gN0yQrqd__AA05ShapeT0Rd__lFQOyAZ_AXQo_GGAA30_SafeAreaRegionsIgnoringLayoutVGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAeAEAfgH_Qrqd___SbyyctSQRd__lFQOyACyAeAEAfgH_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleE0VyAA01_e9Modifier_D0Vy21JournalingSuggestions016SuggestionPickerL033_315EC45933A08D2AC82BECE24BED7720LLVG_ACyACyAO34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionL0VG_So14UISceneSessionCSgQo__SbQo_A4_GMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAeAEAfgH_Qrqd___SbyyctSQRd__lFQOyACyAeAEAfgH_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleE0VyAA01_e9Modifier_D0Vy21JournalingSuggestions016SuggestionPickerL033_315EC45933A08D2AC82BECE24BED7720LLVG_ACyACyAO34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionL0VG_So14UISceneSessionCSgQo__SbQo_A4_GMR);
    type metadata accessor for ScenePhase();
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type SuggestionPickerModifier and conformance SuggestionPickerModifier(&lazy protocol witness table cache variable for type ScenePhase and conformance ScenePhase, MEMORY[0x277CDD6C8]);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type ModifiedContent<_ConditionalContent<<<opaque return type of View.presentationDragIndicator(_:)>>.0, _ConditionalContent<<<opaque return type of View.presentationDragIndicator(_:)>>.0, <<opaque return type of View.presentationBackground<A>(_:)>>.0>>, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.fullScreenCover<A>(isPresented:onDismiss:content:)>>.0, _TransactionModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAeAEAfgH_Qrqd___SbyyctSQRd__lFQOyACyAeAEAfgH_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleE0VyAA01_e9Modifier_D0Vy21JournalingSuggestions016SuggestionPickerL033_315EC45933A08D2AC82BECE24BED7720LLVG_ACyACyAO34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionL0VG_So14UISceneSessionCSgQo__SbQo_A4_GMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAeAEAfgH_Qrqd___SbyyctSQRd__lFQOyACyAeAEAfgH_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleE0VyAA01_e9Modifier_D0Vy21JournalingSuggestions016SuggestionPickerL033_315EC45933A08D2AC82BECE24BED7720LLVG_ACyACyAO34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionL0VG_So14UISceneSessionCSgQo__SbQo_A4_GMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAA15ModifiedContentVyAcAEAdeF_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleC0VyAA01_c9Modifier_I0Vy21JournalingSuggestions016SuggestionPickerL033_315EC45933A08D2AC82BECE24BED7720LLVG_AHyAHyAO34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionL0VG_So14UISceneSessionCSgQo_Md, &_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAA15ModifiedContentVyAcAEAdeF_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleC0VyAA01_c9Modifier_I0Vy21JournalingSuggestions016SuggestionPickerL033_315EC45933A08D2AC82BECE24BED7720LLVG_AHyAHyAO34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionL0VG_So14UISceneSessionCSgQo_MR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleE0VyAA01_e9Modifier_D0Vy21JournalingSuggestions016SuggestionPickerL033_315EC45933A08D2AC82BECE24BED7720LLVG_ACyACyAO34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionL0VGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleE0VyAA01_e9Modifier_D0Vy21JournalingSuggestions016SuggestionPickerL033_315EC45933A08D2AC82BECE24BED7720LLVG_ACyACyAO34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionL0VGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSo14UISceneSessionCSgMd, &_sSo14UISceneSessionCSgMR);
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type UISceneSession? and conformance <A> A?();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleE0VyAA01_e9Modifier_D0Vy21JournalingSuggestions016SuggestionPickerL033_315EC45933A08D2AC82BECE24BED7720LLVG_ACyACyAO34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionL0VGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleE0VyAA01_e9Modifier_D0Vy21JournalingSuggestions016SuggestionPickerL033_315EC45933A08D2AC82BECE24BED7720LLVG_ACyACyAO34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionL0VGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ZStackVyAA9TupleViewVyAA01_E16Modifier_ContentVy21JournalingSuggestions016SuggestionPickerF033_315EC45933A08D2AC82BECE24BED7720LLVG_AA08ModifiedG0VyANyAH34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGGMd, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA01_E16Modifier_ContentVy21JournalingSuggestions016SuggestionPickerF033_315EC45933A08D2AC82BECE24BED7720LLVG_AA08ModifiedG0VyANyAH34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type ZStack<TupleView<(_ViewModifier_Content<SuggestionPickerModifier>, ModifiedContent<ModifiedContent<EmbeddedJSPickerTransparentWrapper, _OpacityEffect>, _FrameLayout>)>> and conformance ZStack<A>, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA01_E16Modifier_ContentVy21JournalingSuggestions016SuggestionPickerF033_315EC45933A08D2AC82BECE24BED7720LLVG_AA08ModifiedG0VyANyAH34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGGMd, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA01_E16Modifier_ContentVy21JournalingSuggestions016SuggestionPickerF033_315EC45933A08D2AC82BECE24BED7720LLVG_AA08ModifiedG0VyANyAH34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGGMR);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UISceneSession? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type UISceneSession? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type UISceneSession? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSo14UISceneSessionCSgMd, &_sSo14UISceneSessionCSgMR);
    lazy protocol witness table accessor for type SuggestionPickerModifier and conformance SuggestionPickerModifier(&lazy protocol witness table cache variable for type UISceneSession and conformance NSObject, type metadata accessor for UISceneSession);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UISceneSession? and conformance <A> A?);
  }

  return result;
}

unint64_t type metadata accessor for UISceneSession()
{
  result = lazy cache variable for type metadata for UISceneSession;
  if (!lazy cache variable for type metadata for UISceneSession)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UISceneSession);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ConditionalContent<<<opaque return type of View.presentationDragIndicator(_:)>>.0, _ConditionalContent<<<opaque return type of View.presentationDragIndicator(_:)>>.0, <<opaque return type of View.presentationBackground<A>(_:)>>.0>>, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ConditionalContent<<<opaque return type of View.presentationDragIndicator(_:)>>.0, _ConditionalContent<<<opaque return type of View.presentationDragIndicator(_:)>>.0, <<opaque return type of View.presentationBackground<A>(_:)>>.0>>, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ConditionalContent<<<opaque return type of View.presentationDragIndicator(_:)>>.0, _ConditionalContent<<<opaque return type of View.presentationDragIndicator(_:)>>.0, <<opaque return type of View.presentationBackground<A>(_:)>>.0>>, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyAA4ViewPAAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAgAE0G7DetentsyQrShyAA18PresentationDetentVGFQOyAgAE0G21BackgroundInteractionyQrAA0lnO0VFQOyACy21JournalingSuggestions16EmbeddedJSPickerVAA01_N13StyleModifierVyAA5ColorVGG_Qo__Qo__Qo_AEyA1_AgAE0gN0yQrqd__AA05ShapeT0Rd__lFQOyAZ_AXQo_GGAA30_SafeAreaRegionsIgnoringLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyAA4ViewPAAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAgAE0G7DetentsyQrShyAA18PresentationDetentVGFQOyAgAE0G21BackgroundInteractionyQrAA0lnO0VFQOyACy21JournalingSuggestions16EmbeddedJSPickerVAA01_N13StyleModifierVyAA5ColorVGG_Qo__Qo__Qo_AEyA1_AgAE0gN0yQrqd__AA05ShapeT0Rd__lFQOyAZ_AXQo_GGAA30_SafeAreaRegionsIgnoringLayoutVGMR);
    lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.presentationDragIndicator(_:)>>.0, _ConditionalContent<<<opaque return type of View.presentationDragIndicator(_:)>>.0, <<opaque return type of View.presentationBackground<A>(_:)>>.0>> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ConditionalContent<<<opaque return type of View.presentationDragIndicator(_:)>>.0, _ConditionalContent<<<opaque return type of View.presentationDragIndicator(_:)>>.0, <<opaque return type of View.presentationBackground<A>(_:)>>.0>>, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.presentationDragIndicator(_:)>>.0, _ConditionalContent<<<opaque return type of View.presentationDragIndicator(_:)>>.0, <<opaque return type of View.presentationBackground<A>(_:)>>.0>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<<<opaque return type of View.presentationDragIndicator(_:)>>.0, _ConditionalContent<<<opaque return type of View.presentationDragIndicator(_:)>>.0, <<opaque return type of View.presentationBackground<A>(_:)>>.0>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<<<opaque return type of View.presentationDragIndicator(_:)>>.0, _ConditionalContent<<<opaque return type of View.presentationDragIndicator(_:)>>.0, <<opaque return type of View.presentationBackground<A>(_:)>>.0>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAeAE0F7DetentsyQrShyAA18PresentationDetentVGFQOyAeAE0F21BackgroundInteractionyQrAA0kmN0VFQOyAA08ModifiedD0Vy21JournalingSuggestions16EmbeddedJSPickerVAA01_M13StyleModifierVyAA5ColorVGG_Qo__Qo__Qo_ACyA1_AeAE0fM0yQrqd__AA05ShapeT0Rd__lFQOyAZ_AXQo_GGMd, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAeAE0F7DetentsyQrShyAA18PresentationDetentVGFQOyAeAE0F21BackgroundInteractionyQrAA0kmN0VFQOyAA08ModifiedD0Vy21JournalingSuggestions16EmbeddedJSPickerVAA01_M13StyleModifierVyAA5ColorVGG_Qo__Qo__Qo_ACyA1_AeAE0fM0yQrqd__AA05ShapeT0Rd__lFQOyAZ_AXQo_GGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE19presentationDetentsyQrShyAA18PresentationDetentVGFQOyAcAE0D21BackgroundInteractionyQrAA0fhI0VFQOyAA15ModifiedContentVy21JournalingSuggestions16EmbeddedJSPickerVAA01_H13StyleModifierVyAA5ColorVGG_Qo__Qo_Md, &_s7SwiftUI4ViewPAAE19presentationDetentsyQrShyAA18PresentationDetentVGFQOyAcAE0D21BackgroundInteractionyQrAA0fhI0VFQOyAA15ModifiedContentVy21JournalingSuggestions16EmbeddedJSPickerVAA01_H13StyleModifierVyAA5ColorVGG_Qo__Qo_MR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE33presentationBackgroundInteractionyQrAA012PresentationeF0VFQOyAA15ModifiedContentVy21JournalingSuggestions16EmbeddedJSPickerVAA01_E13StyleModifierVyAA5ColorVGG_Qo_Md, &_s7SwiftUI4ViewPAAE33presentationBackgroundInteractionyQrAA012PresentationeF0VFQOyAA15ModifiedContentVy21JournalingSuggestions16EmbeddedJSPickerVAA01_E13StyleModifierVyAA5ColorVGG_Qo_MR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy21JournalingSuggestions16EmbeddedJSPickerVAA24_BackgroundStyleModifierVyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVy21JournalingSuggestions16EmbeddedJSPickerVAA24_BackgroundStyleModifierVyAA5ColorVGGMR);
    lazy protocol witness table accessor for type ModifiedContent<EmbeddedJSPicker, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.presentationDragIndicator(_:)>>.0, <<opaque return type of View.presentationBackground<A>(_:)>>.0> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<<<opaque return type of View.presentationDragIndicator(_:)>>.0, _ConditionalContent<<<opaque return type of View.presentationDragIndicator(_:)>>.0, <<opaque return type of View.presentationBackground<A>(_:)>>.0>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<EmbeddedJSPicker, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<EmbeddedJSPicker, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<EmbeddedJSPicker, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy21JournalingSuggestions16EmbeddedJSPickerVAA24_BackgroundStyleModifierVyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVy21JournalingSuggestions16EmbeddedJSPickerVAA24_BackgroundStyleModifierVyAA5ColorVGGMR);
    lazy protocol witness table accessor for type EmbeddedJSPicker and conformance EmbeddedJSPicker();
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type _BackgroundStyleModifier<Color> and conformance _BackgroundStyleModifier<A>, &_s7SwiftUI24_BackgroundStyleModifierVyAA5ColorVGMd, &_s7SwiftUI24_BackgroundStyleModifierVyAA5ColorVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<EmbeddedJSPicker, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.presentationDragIndicator(_:)>>.0, <<opaque return type of View.presentationBackground<A>(_:)>>.0> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<<<opaque return type of View.presentationDragIndicator(_:)>>.0, <<opaque return type of View.presentationBackground<A>(_:)>>.0> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<<<opaque return type of View.presentationDragIndicator(_:)>>.0, <<opaque return type of View.presentationBackground<A>(_:)>>.0> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAeAE0F7DetentsyQrShyAA18PresentationDetentVGFQOyAeAE0F21BackgroundInteractionyQrAA0kmN0VFQOyAA08ModifiedD0Vy21JournalingSuggestions16EmbeddedJSPickerVAA01_M13StyleModifierVyAA5ColorVGG_Qo__Qo__Qo_AeAE0fM0yQrqd__AA05ShapeT0Rd__lFQOyAZ_AXQo_GMd, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAeAE0F7DetentsyQrShyAA18PresentationDetentVGFQOyAeAE0F21BackgroundInteractionyQrAA0kmN0VFQOyAA08ModifiedD0Vy21JournalingSuggestions16EmbeddedJSPickerVAA01_M13StyleModifierVyAA5ColorVGG_Qo__Qo__Qo_AeAE0fM0yQrqd__AA05ShapeT0Rd__lFQOyAZ_AXQo_GMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE19presentationDetentsyQrShyAA18PresentationDetentVGFQOyAcAE0D21BackgroundInteractionyQrAA0fhI0VFQOyAA15ModifiedContentVy21JournalingSuggestions16EmbeddedJSPickerVAA01_H13StyleModifierVyAA5ColorVGG_Qo__Qo_Md, &_s7SwiftUI4ViewPAAE19presentationDetentsyQrShyAA18PresentationDetentVGFQOyAcAE0D21BackgroundInteractionyQrAA0fhI0VFQOyAA15ModifiedContentVy21JournalingSuggestions16EmbeddedJSPickerVAA01_H13StyleModifierVyAA5ColorVGG_Qo__Qo_MR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE33presentationBackgroundInteractionyQrAA012PresentationeF0VFQOyAA15ModifiedContentVy21JournalingSuggestions16EmbeddedJSPickerVAA01_E13StyleModifierVyAA5ColorVGG_Qo_Md, &_s7SwiftUI4ViewPAAE33presentationBackgroundInteractionyQrAA012PresentationeF0VFQOyAA15ModifiedContentVy21JournalingSuggestions16EmbeddedJSPickerVAA01_E13StyleModifierVyAA5ColorVGG_Qo_MR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy21JournalingSuggestions16EmbeddedJSPickerVAA24_BackgroundStyleModifierVyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVy21JournalingSuggestions16EmbeddedJSPickerVAA24_BackgroundStyleModifierVyAA5ColorVGGMR);
    lazy protocol witness table accessor for type ModifiedContent<EmbeddedJSPicker, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<<<opaque return type of View.presentationDragIndicator(_:)>>.0, <<opaque return type of View.presentationBackground<A>(_:)>>.0> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UUID? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type UUID? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type UUID? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    lazy protocol witness table accessor for type SuggestionPickerModifier and conformance SuggestionPickerModifier(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UUID? and conformance <A> A?);
  }

  return result;
}

uint64_t objectdestroy_56Tm()
{
  v1 = type metadata accessor for SuggestionPickerModifier(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA10ScenePhaseO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA10ScenePhaseO_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for ScenePhase();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  outlined consume of Environment<UISceneSession?>.Content(*(v5 + v1[5]), *(v5 + v1[5] + 8));
  v8 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA22UserInterfaceSizeClassOSg_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = type metadata accessor for UserInterfaceSizeClass();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v5 + v8, 1, v9))
    {
      (*(v10 + 8))(v5 + v8, v9);
    }
  }

  else
  {
    v11 = *(v5 + v8);
  }

  v12 = v1[7];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = type metadata accessor for UserInterfaceSizeClass();
    v14 = *(v13 - 8);
    if (!(*(v14 + 48))(v5 + v12, 1, v13))
    {
      (*(v14 + 8))(v5 + v12, v13);
    }
  }

  else
  {
    v15 = *(v5 + v12);
  }

  v16 = (v5 + v1[8]);
  v17 = *v16;

  v18 = v16[1];

  v19 = v1[9];
  v20 = type metadata accessor for JournalingSuggestionPresentationToken(0);
  if (!(*(*(v20 - 8) + 48))(v5 + v19, 1, v20))
  {
    v21 = type metadata accessor for UUID();
    v22 = *(v21 - 8);
    if (!(*(v22 + 48))(v5 + v19, 1, v21))
    {
      (*(v22 + 8))(v5 + v19, v21);
    }
  }

  v23 = v5 + v1[10];
  v24 = type metadata accessor for JournalConfiguration(0);
  if (!(*(*(v24 - 8) + 48))(v23, 1, v24))
  {
    v25 = *(v24 + 24);
    v26 = type metadata accessor for UUID();
    v27 = *(v26 - 8);
    if (!(*(v27 + 48))(&v23[v25], 1, v26))
    {
      (*(v27 + 8))(&v23[v25], v26);
    }
  }

  v28 = *(v5 + v1[11] + 8);

  outlined consume of StateObject<SuggestionSheetUIManager>.Storage(*(v5 + v1[14]), *(v5 + v1[14] + 8), *(v5 + v1[14] + 16));
  v29 = v1[15];
  v30 = type metadata accessor for UUID();
  (*(*(v30 - 8) + 8))(v5 + v29, v30);
  v31 = *(v5 + v1[16] + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t partial apply for closure #2 in SuggestionPickerModifier.body(content:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for SuggestionPickerModifier(0) - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2, v7);
}

uint64_t partial apply for closure #3 in SuggestionPickerModifier.modifierContent(content:)(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for SuggestionPickerModifier(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t outlined destroy of SuggestionPickerModifier(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of SuggestionPickerModifier(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t partial apply for closure #5 in SuggestionPickerModifier.platformDependentEmbeddedStyle(content:)@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SuggestionPickerModifier(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  return SuggestionPickerModifier.detentDependentStyle()(a1);
}

uint64_t partial apply for closure #2 in SuggestionPickerModifier.platformDependentEmbeddedStyle(content:)@<X0>(uint64_t a1@<X8>)
{
  v2 = *(*(type metadata accessor for SuggestionPickerModifier(0) - 8) + 80);

  return closure #2 in SuggestionPickerModifier.platformDependentEmbeddedStyle(content:)(a1);
}

uint64_t _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7SwiftUI18PresentationDetentV_Tt0g5Tf4g_n(uint64_t a1)
{
  v2 = type metadata accessor for PresentationDetent();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy7SwiftUI18PresentationDetentVGMd, &_ss11_SetStorageCy7SwiftUI18PresentationDetentVGMR);
    v10 = static _SetStorage.allocate(capacity:)();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      lazy protocol witness table accessor for type SuggestionPickerModifier and conformance SuggestionPickerModifier(&lazy protocol witness table cache variable for type PresentationDetent and conformance PresentationDetent, MEMORY[0x277CDDE90]);
      v18 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          lazy protocol witness table accessor for type SuggestionPickerModifier and conformance SuggestionPickerModifier(&lazy protocol witness table cache variable for type PresentationDetent and conformance PresentationDetent, MEMORY[0x277CDDE90]);
          v25 = dispatch thunk of static Equatable.== infix(_:_:)();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t outlined init with take of UserInterfaceSizeClass?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI22UserInterfaceSizeClassOSgMd, &_s7SwiftUI22UserInterfaceSizeClassOSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAeAEAfgH_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAeAEAfgH_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAeAEAfgH_Qrqd___Sbyqd___qd__tctSQRd__lFQOyACyAA08ModifiedD0VyAeAE15fullScreenCover11isPresented0F7Dismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaDRd__lFQOyAeAEAfgH_Qrqd___SbyyctSQRd__lFQOyAJyAeAEAfgH_Qrqd___SbyyctSQRd__lFQOyAeAEAfgH_Qrqd___SbyyctSQRd__lFQOyAJyAeAEAfgH_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleE0VyAA01_e9Modifier_D0Vy21JournalingSuggestions016SuggestionPickerU033_315EC45933A08D2AC82BECE24BED7720LLVG_AJyAJyAY34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionU0VG_So14UISceneSessionCSgQo__SbQo_A14_G_AA10ScenePhaseOQo__AJyACyAeAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAeAE19presentationDetentsyQrShyAA18PresentationDetentVGFQOyAeAE33presentationBackgroundInteractionyQrAA33PresentationBackgroundInteractionVFQOyAJyAY16EmbeddedJSPickerVAA016_BackgroundStyleU0VyAA5ColorVGG_Qo__Qo__Qo_ACyA45_AeAE22presentationBackgroundyQrqd__AA10ShapeStyleRd__lFQOyA42__A40_Qo_GGAA30_SafeAreaRegionsIgnoringLayoutVGQo_AA012_TransactionU0VGAeAE5sheetAlmNQrAQ_ARqd__yctAaDRd__lFQOyA24__A50_Qo_G_10Foundation4UUIDVSgQo__SbQo__SbQo__SbQo_A24_GMd, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAeAEAfgH_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAeAEAfgH_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAeAEAfgH_Qrqd___Sbyqd___qd__tctSQRd__lFQOyACyAA08ModifiedD0VyAeAE15fullScreenCover11isPresented0F7Dismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaDRd__lFQOyAeAEAfgH_Qrqd___SbyyctSQRd__lFQOyAJyAeAEAfgH_Qrqd___SbyyctSQRd__lFQOyAeAEAfgH_Qrqd___SbyyctSQRd__lFQOyAJyAeAEAfgH_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleE0VyAA01_e9Modifier_D0Vy21JournalingSuggestions016SuggestionPickerU033_315EC45933A08D2AC82BECE24BED7720LLVG_AJyAJyAY34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionU0VG_So14UISceneSessionCSgQo__SbQo_A14_G_AA10ScenePhaseOQo__AJyACyAeAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAeAE19presentationDetentsyQrShyAA18PresentationDetentVGFQOyAeAE33presentationBackgroundInteractionyQrAA33PresentationBackgroundInteractionVFQOyAJyAY16EmbeddedJSPickerVAA016_BackgroundStyleU0VyAA5ColorVGG_Qo__Qo__Qo_ACyA45_AeAE22presentationBackgroundyQrqd__AA10ShapeStyleRd__lFQOyA42__A40_Qo_GGAA30_SafeAreaRegionsIgnoringLayoutVGQo_AA012_TransactionU0VGAeAE5sheetAlmNQrAQ_ARqd__yctAaDRd__lFQOyA24__A50_Qo_G_10Foundation4UUIDVSgQo__SbQo__SbQo__SbQo_A24_GMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAEAdeF_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAEAdeF_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA19_ConditionalContentVyAA08ModifiedI0VyAcAE15fullScreenCover11isPresented0D7Dismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaBRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAJyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAJyAcAEAdeF_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleC0VyAA01_c9Modifier_I0Vy21JournalingSuggestions016SuggestionPickerU033_315EC45933A08D2AC82BECE24BED7720LLVG_AJyAJyAY34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionU0VG_So14UISceneSessionCSgQo__SbQo_A14_G_AA10ScenePhaseOQo__AJyAHyAcAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAcAE19presentationDetentsyQrShyAA18PresentationDetentVGFQOyAcAE33presentationBackgroundInteractionyQrAA33PresentationBackgroundInteractionVFQOyAJyAY16EmbeddedJSPickerVAA016_BackgroundStyleU0VyAA5ColorVGG_Qo__Qo__Qo_AHyA45_AcAE22presentationBackgroundyQrqd__AA10ShapeStyleRd__lFQOyA42__A40_Qo_GGAA30_SafeAreaRegionsIgnoringLayoutVGQo_AA012_TransactionU0VGAcAE5sheetAlmNQrAQ_ARqd__yctAaBRd__lFQOyA24__A50_Qo_G_10Foundation4UUIDVSgQo__SbQo__SbQo_Md, &_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAEAdeF_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAEAdeF_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA19_ConditionalContentVyAA08ModifiedI0VyAcAE15fullScreenCover11isPresented0D7Dismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaBRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAJyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAJyAcAEAdeF_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleC0VyAA01_c9Modifier_I0Vy21JournalingSuggestions016SuggestionPickerU033_315EC45933A08D2AC82BECE24BED7720LLVG_AJyAJyAY34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionU0VG_So14UISceneSessionCSgQo__SbQo_A14_G_AA10ScenePhaseOQo__AJyAHyAcAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAcAE19presentationDetentsyQrShyAA18PresentationDetentVGFQOyAcAE33presentationBackgroundInteractionyQrAA33PresentationBackgroundInteractionVFQOyAJyAY16EmbeddedJSPickerVAA016_BackgroundStyleU0VyAA5ColorVGG_Qo__Qo__Qo_AHyA45_AcAE22presentationBackgroundyQrqd__AA10ShapeStyleRd__lFQOyA42__A40_Qo_GGAA30_SafeAreaRegionsIgnoringLayoutVGQo_AA012_TransactionU0VGAcAE5sheetAlmNQrAQ_ARqd__yctAaBRd__lFQOyA24__A50_Qo_G_10Foundation4UUIDVSgQo__SbQo__SbQo_MR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAEAdeF_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA19_ConditionalContentVyAA08ModifiedI0VyAcAE15fullScreenCover11isPresented0D7Dismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaBRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAJyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAJyAcAEAdeF_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleC0VyAA01_c9Modifier_I0Vy21JournalingSuggestions016SuggestionPickerU033_315EC45933A08D2AC82BECE24BED7720LLVG_AJyAJyAY34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionU0VG_So14UISceneSessionCSgQo__SbQo_A14_G_AA10ScenePhaseOQo__AJyAHyAcAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAcAE19presentationDetentsyQrShyAA18PresentationDetentVGFQOyAcAE33presentationBackgroundInteractionyQrAA33PresentationBackgroundInteractionVFQOyAJyAY16EmbeddedJSPickerVAA016_BackgroundStyleU0VyAA5ColorVGG_Qo__Qo__Qo_AHyA45_AcAE22presentationBackgroundyQrqd__AA10ShapeStyleRd__lFQOyA42__A40_Qo_GGAA30_SafeAreaRegionsIgnoringLayoutVGQo_AA012_TransactionU0VGAcAE5sheetAlmNQrAQ_ARqd__yctAaBRd__lFQOyA24__A50_Qo_G_10Foundation4UUIDVSgQo__SbQo_Md, &_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAEAdeF_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA19_ConditionalContentVyAA08ModifiedI0VyAcAE15fullScreenCover11isPresented0D7Dismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaBRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAJyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAJyAcAEAdeF_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleC0VyAA01_c9Modifier_I0Vy21JournalingSuggestions016SuggestionPickerU033_315EC45933A08D2AC82BECE24BED7720LLVG_AJyAJyAY34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionU0VG_So14UISceneSessionCSgQo__SbQo_A14_G_AA10ScenePhaseOQo__AJyAHyAcAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAcAE19presentationDetentsyQrShyAA18PresentationDetentVGFQOyAcAE33presentationBackgroundInteractionyQrAA33PresentationBackgroundInteractionVFQOyAJyAY16EmbeddedJSPickerVAA016_BackgroundStyleU0VyAA5ColorVGG_Qo__Qo__Qo_AHyA45_AcAE22presentationBackgroundyQrqd__AA10ShapeStyleRd__lFQOyA42__A40_Qo_GGAA30_SafeAreaRegionsIgnoringLayoutVGQo_AA012_TransactionU0VGAcAE5sheetAlmNQrAQ_ARqd__yctAaBRd__lFQOyA24__A50_Qo_G_10Foundation4UUIDVSgQo__SbQo_MR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA19_ConditionalContentVyAA08ModifiedI0VyAcAE15fullScreenCover11isPresented0D7Dismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaBRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAJyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAJyAcAEAdeF_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleC0VyAA01_c9Modifier_I0Vy21JournalingSuggestions016SuggestionPickerU033_315EC45933A08D2AC82BECE24BED7720LLVG_AJyAJyAY34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionU0VG_So14UISceneSessionCSgQo__SbQo_A14_G_AA10ScenePhaseOQo__AJyAHyAcAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAcAE19presentationDetentsyQrShyAA18PresentationDetentVGFQOyAcAE33presentationBackgroundInteractionyQrAA33PresentationBackgroundInteractionVFQOyAJyAY16EmbeddedJSPickerVAA016_BackgroundStyleU0VyAA5ColorVGG_Qo__Qo__Qo_AHyA45_AcAE22presentationBackgroundyQrqd__AA10ShapeStyleRd__lFQOyA42__A40_Qo_GGAA30_SafeAreaRegionsIgnoringLayoutVGQo_AA012_TransactionU0VGAcAE5sheetAlmNQrAQ_ARqd__yctAaBRd__lFQOyA24__A50_Qo_G_10Foundation4UUIDVSgQo_Md, &_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA19_ConditionalContentVyAA08ModifiedI0VyAcAE15fullScreenCover11isPresented0D7Dismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaBRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAJyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAJyAcAEAdeF_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleC0VyAA01_c9Modifier_I0Vy21JournalingSuggestions016SuggestionPickerU033_315EC45933A08D2AC82BECE24BED7720LLVG_AJyAJyAY34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionU0VG_So14UISceneSessionCSgQo__SbQo_A14_G_AA10ScenePhaseOQo__AJyAHyAcAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAcAE19presentationDetentsyQrShyAA18PresentationDetentVGFQOyAcAE33presentationBackgroundInteractionyQrAA33PresentationBackgroundInteractionVFQOyAJyAY16EmbeddedJSPickerVAA016_BackgroundStyleU0VyAA5ColorVGG_Qo__Qo__Qo_AHyA45_AcAE22presentationBackgroundyQrqd__AA10ShapeStyleRd__lFQOyA42__A40_Qo_GGAA30_SafeAreaRegionsIgnoringLayoutVGQo_AA012_TransactionU0VGAcAE5sheetAlmNQrAQ_ARqd__yctAaBRd__lFQOyA24__A50_Qo_G_10Foundation4UUIDVSgQo_MR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA4ViewPAAE15fullScreenCover11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaFRd__lFQOyAgAE0L6Change2of7initial_Qrqd___SbyyctSQRd__lFQOyAEyAgAEApqR_Qrqd___SbyyctSQRd__lFQOyAgAEApqR_Qrqd___SbyyctSQRd__lFQOyAEyAgAEApqR_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleF0VyAA01_f9Modifier_D0Vy21JournalingSuggestions016SuggestionPickerU033_315EC45933A08D2AC82BECE24BED7720LLVG_AEyAEyAY34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionU0VG_So14UISceneSessionCSgQo__SbQo_A14_G_AA10ScenePhaseOQo__AEyACyAgAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAgAE19presentationDetentsyQrShyAA18PresentationDetentVGFQOyAgAE33presentationBackgroundInteractionyQrAA33PresentationBackgroundInteractionVFQOyAEyAY16EmbeddedJSPickerVAA016_BackgroundStyleU0VyAA5ColorVGG_Qo__Qo__Qo_ACyA45_AgAE22presentationBackgroundyQrqd__AA10ShapeStyleRd__lFQOyA42__A40_Qo_GGAA30_SafeAreaRegionsIgnoringLayoutVGQo_AA012_TransactionU0VGAgAE5sheetAijKQrAN_AOqd__yctAaFRd__lFQOyA24__A50_Qo_GMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA4ViewPAAE15fullScreenCover11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaFRd__lFQOyAgAE0L6Change2of7initial_Qrqd___SbyyctSQRd__lFQOyAEyAgAEApqR_Qrqd___SbyyctSQRd__lFQOyAgAEApqR_Qrqd___SbyyctSQRd__lFQOyAEyAgAEApqR_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleF0VyAA01_f9Modifier_D0Vy21JournalingSuggestions016SuggestionPickerU033_315EC45933A08D2AC82BECE24BED7720LLVG_AEyAEyAY34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionU0VG_So14UISceneSessionCSgQo__SbQo_A14_G_AA10ScenePhaseOQo__AEyACyAgAE25presentationDragIndicatoryQrAA10VisibilityOFQOyAgAE19presentationDetentsyQrShyAA18PresentationDetentVGFQOyAgAE33presentationBackgroundInteractionyQrAA33PresentationBackgroundInteractionVFQOyAEyAY16EmbeddedJSPickerVAA016_BackgroundStyleU0VyAA5ColorVGG_Qo__Qo__Qo_ACyA45_AgAE22presentationBackgroundyQrqd__AA10ShapeStyleRd__lFQOyA42__A40_Qo_GGAA30_SafeAreaRegionsIgnoringLayoutVGQo_AA012_TransactionU0VGAgAE5sheetAijKQrAN_AOqd__yctAaFRd__lFQOyA24__A50_Qo_GMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<<<opaque return type of View.fullScreenCover<A>(isPresented:onDismiss:content:)>>.0, _TransactionModifier>, <<opaque return type of View.sheet<A>(isPresented:onDismiss:content:)>>.0> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type UUID? and conformance <A> A?();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAeAEAfgH_Qrqd___SbyyctSQRd__lFQOyACyAeAEAfgH_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleE0VyAA01_e9Modifier_D0Vy21JournalingSuggestions016SuggestionPickerL033_315EC45933A08D2AC82BECE24BED7720LLVG_ACyACyAO34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionL0VG_So14UISceneSessionCSgQo__SbQo_A4_GMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAeAEAfgH_Qrqd___SbyyctSQRd__lFQOyACyAeAEAfgH_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ZStackVyAA05TupleE0VyAA01_e9Modifier_D0Vy21JournalingSuggestions016SuggestionPickerL033_315EC45933A08D2AC82BECE24BED7720LLVG_ACyACyAO34EmbeddedJSPickerTransparentWrapperVAA14_OpacityEffectVGAA12_FrameLayoutVGtGG_SbQo_AA017_AppearanceActionL0VG_So14UISceneSessionCSgQo__SbQo_A4_GMR);
    type metadata accessor for ScenePhase();
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type SuggestionPickerModifier and conformance SuggestionPickerModifier(&lazy protocol witness table cache variable for type ScenePhase and conformance ScenePhase, MEMORY[0x277CDD6C8]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t protocol witness for static InternalAssetProvider.getAssetLoader(for:) in conformance JournalingSuggestion.Reflection()
{
  v1 = specialized static JournalingSuggestion.Reflection.getAssetLoader(for:)();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t closure #1 in static JournalingSuggestion.Reflection.getAssetLoader(for:)(void (*a1)(uint64_t *, void), uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v11 = swift_allocObject();
  *(v11 + 16) = a6;
  *(v11 + 24) = a5;
  v12 = objc_allocWithZone(MEMORY[0x277D75348]);
  v23 = _sSo7UIColorC21JournalingSuggestionsE12dynamicColor5light4darkA2B_ABtFZABSo17UITraitCollectionCcfU_TA_0;
  v24 = v11;
  v19 = MEMORY[0x277D85DD0];
  v20 = 1107296256;
  v21 = thunk for @escaping @callee_guaranteed (@guaranteed UITraitCollection) -> (@owned UIColor);
  v22 = &block_descriptor_3;
  v13 = _Block_copy(&v19);

  v14 = a6;
  v15 = a5;
  v16 = [v12 initWithDynamicProvider_];
  _Block_release(v13);

  v17 = MEMORY[0x23EE6FF50](v16);
  v22 = &type metadata for JournalingSuggestion.Reflection;
  v23 = &protocol witness table for JournalingSuggestion.Reflection;
  v19 = a3;
  v20 = a4;
  v21 = v17;

  a1(&v19, 0);
  outlined destroy of JournalingSuggestionAsset?(&v19);
}

uint64_t (*specialized static JournalingSuggestion.Reflection.getAssetLoader(for:)())(void (*a1)(uint64_t *, void), uint64_t a2)
{
  result = Asset.transferRepresentation.getter();
  if (result)
  {
    v1 = result;
    type metadata accessor for TransferReflectionViewModel();
    if (swift_dynamicCastClass() && (v2 = dispatch thunk of TransferReflectionViewModel.prompt.getter(), v3))
    {
      v4 = v2;
      v5 = v3;
      v6 = dispatch thunk of TransferReflectionViewModel.lightBackgroundColor.getter();
      if (v6)
      {
        v7 = v6;
        v8 = dispatch thunk of TransferReflectionViewModel.darkBackgroundColor.getter();

        if (v8)
        {
          v9 = swift_allocObject();
          v9[2] = v4;
          v9[3] = v5;
          v9[4] = v7;
          v9[5] = v8;
          return partial apply for closure #1 in static JournalingSuggestion.Reflection.getAssetLoader(for:);
        }
      }

      else
      {
      }
    }

    else
    {
    }

    return 0;
  }

  return result;
}

uint64_t sub_238AD5138()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_238AD518C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t protocol witness for static InternalAssetProvider.getAssetLoader(for:) in conformance JournalingSuggestion.LivePhoto(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for static InternalAssetProvider.getAssetLoader(for:) in conformance JournalingSuggestion.Workout;

  return specialized static JournalingSuggestion.LivePhoto.getAssetLoader(for:)(a1);
}

uint64_t static JournalingSuggestion.LivePhoto.getAssetLoader(for:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = static JournalingSuggestion.Workout.getAssetLoader(for:);

  return specialized static JournalingSuggestion.LivePhoto.getAssetLoader(for:)(a1);
}

uint64_t closure #1 in static JournalingSuggestion.LivePhoto.getAssetLoader(for:)(void (*a1)(uint64_t *, void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v61 = a2;
  v62 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v56 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v56 - v14;
  v16 = type metadata accessor for JournalingSuggestion.LivePhoto(0);
  v17 = *(*(v16 - 1) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for URL();
  v21 = *(*(v20 - 8) + 16);
  v21(v19, a3, v20);
  v21(&v19[v16[5]], a4, v20);
  v22 = v16[6];
  v23 = type metadata accessor for Date();
  v24 = *(*(v23 - 8) + 56);
  *&v63 = v22;
  v24(&v19[v22], 1, 1, v23);
  v60 = a5;
  dispatch thunk of AssetViewModel.baseDateInterval.getter();
  v25 = type metadata accessor for DateInterval();
  v26 = *(v25 - 8);
  if ((*(v26 + 48))(v11, 1, v25) == 1)
  {
    outlined destroy of URL?(v11, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
    v27 = 1;
  }

  else
  {
    DateInterval.start.getter();
    (*(v26 + 8))(v11, v25);
    v27 = 0;
  }

  v24(v15, v27, 1, v23);
  outlined assign with take of Date?(v15, &v19[v63]);
  v28 = dispatch thunk of TransferPhotoFamilyViewModel.landscapeCropRect.getter();
  v29 = 0uLL;
  v63 = 0u;
  v30 = 0uLL;
  if (v28)
  {
    dispatch thunk of ScreenRect.cgRect.getter();
    v57 = v31;
    v58 = v32;
    v56 = v33;
    v59 = v34;

    *&v30 = v56;
    *&v29 = v57;
    *(&v29 + 1) = v58;
    *(&v30 + 1) = v59;
  }

  v35 = &v19[v16[7]];
  *v35 = v29;
  *(v35 + 1) = v30;
  v35[32] = v28 == 0;
  v36 = dispatch thunk of TransferPhotoFamilyViewModel.squareCropRect.getter();
  v37 = 0uLL;
  if (v36)
  {
    dispatch thunk of ScreenRect.cgRect.getter();
    v63 = v38;
    v57 = v40;
    v58 = v39;
    v59 = v41;

    *&v37 = v57;
    *&v42 = v63;
    *(&v42 + 1) = v58;
    v63 = v42;
    *(&v37 + 1) = v59;
  }

  v43 = &v19[v16[8]];
  *v43 = v63;
  *(v43 + 1) = v37;
  v43[32] = v36 == 0;
  v44 = dispatch thunk of TransferPhotoFamilyViewModel.portraitCropRect.getter();
  if (v44)
  {
    dispatch thunk of ScreenRect.cgRect.getter();
    v58 = v45;
    v59 = v46;
    v57 = v47;
    v63 = v48;

    *&v50 = v57;
    *&v49 = v58;
    *(&v49 + 1) = v59;
    *(&v50 + 1) = v63;
  }

  else
  {
    v49 = 0uLL;
    v50 = 0uLL;
  }

  v51 = &v19[v16[9]];
  v52 = &v19[v16[10]];
  *v51 = v49;
  *(v51 + 1) = v50;
  v51[32] = v44 == 0;
  *v52 = dispatch thunk of TransferPhotoFamilyViewModel.photoIdentifier.getter();
  v52[1] = v53;
  v64[3] = v16;
  v64[4] = &protocol witness table for JournalingSuggestion.LivePhoto;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v64);
  outlined init with copy of JournalingSuggestion.LivePhoto(v19, boxed_opaque_existential_1);
  v62(v64, 0);
  outlined destroy of URL?(v64, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMd, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMR);
  return outlined destroy of JournalingSuggestion.LivePhoto(v19);
}

uint64_t specialized static JournalingSuggestion.LivePhoto.getAssetLoader(for:)(uint64_t a1)
{
  v1[2] = a1;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v1[4] = swift_task_alloc();
  v3 = type metadata accessor for URL();
  v1[5] = v3;
  v4 = *(v3 - 8);
  v1[6] = v4;
  v1[7] = *(v4 + 64);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized static JournalingSuggestion.LivePhoto.getAssetLoader(for:), 0, 0);
}

uint64_t specialized static JournalingSuggestion.LivePhoto.getAssetLoader(for:)()
{
  v1 = v0[2];
  v2 = Asset.transferRepresentation.getter();
  v0[12] = v2;
  if (v2)
  {
    v3 = v2;
    type metadata accessor for TransferLivePhotoViewModel();
    v4 = swift_dynamicCastClass();
    v0[13] = v4;
    if (v4)
    {
      v5 = dispatch thunk of TransferLivePhotoViewModel.urlBasedVideo.getter();
      v0[14] = v5;
      if (v5)
      {
        v6 = *(MEMORY[0x277D2A180] + 4);
        v20 = (*MEMORY[0x277D2A180] + MEMORY[0x277D2A180]);
        v7 = swift_task_alloc();
        v0[15] = v7;
        *v7 = v0;
        v7[1] = specialized static JournalingSuggestion.LivePhoto.getAssetLoader(for:);
        v8 = v0[4];

        return v20(v8);
      }

      v10 = v0[5];
      v11 = v0[6];
      v12 = v0[4];

      (*(v11 + 56))(v12, 1, 1, v10);
      outlined destroy of URL?(v0[4], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    }

    else
    {
    }
  }

  v14 = v0[10];
  v13 = v0[11];
  v16 = v0[8];
  v15 = v0[9];
  v18 = v0[3];
  v17 = v0[4];

  v19 = v0[1];

  return v19(0, 0);
}

{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 112);
  v4 = *v0;

  return MEMORY[0x2822009F8](specialized static JournalingSuggestion.LivePhoto.getAssetLoader(for:), 0, 0);
}

{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v0 + 32);
  v4 = *(v2 + 48);
  *(v0 + 128) = v4;
  *(v0 + 136) = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v3, 1, v1) == 1)
  {

    v5 = *(v0 + 32);
LABEL_8:
    outlined destroy of URL?(v5, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v19 = *(v0 + 80);
    v18 = *(v0 + 88);
    v21 = *(v0 + 64);
    v20 = *(v0 + 72);
    v23 = *(v0 + 24);
    v22 = *(v0 + 32);

    v24 = *(v0 + 8);

    return v24(0, 0);
  }

  v6 = *(v0 + 104);
  v7 = *(v0 + 88);
  v8 = *(v2 + 32);
  *(v0 + 144) = v8;
  *(v0 + 152) = (v2 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v8(v7, v3, v1);
  v9 = dispatch thunk of TransferLivePhotoViewModel.urlBasedImage.getter();
  *(v0 + 160) = v9;
  if (!v9)
  {
    v14 = *(v0 + 40);
    v15 = *(v0 + 48);
    v16 = *(v0 + 24);

    (*(v15 + 56))(v16, 1, 1, v14);
    v17 = *(v0 + 24);
    (*(*(v0 + 48) + 8))(*(v0 + 88), *(v0 + 40));
    v5 = v17;
    goto LABEL_8;
  }

  v10 = *(MEMORY[0x277D2A178] + 4);
  v25 = (*MEMORY[0x277D2A178] + MEMORY[0x277D2A178]);
  v11 = swift_task_alloc();
  *(v0 + 168) = v11;
  *v11 = v0;
  v11[1] = specialized static JournalingSuggestion.LivePhoto.getAssetLoader(for:);
  v12 = *(v0 + 24);

  return v25(v12);
}

{
  v1 = *(*v0 + 168);
  v2 = *(*v0 + 160);
  v4 = *v0;

  return MEMORY[0x2822009F8](specialized static JournalingSuggestion.LivePhoto.getAssetLoader(for:), 0, 0);
}

{
  v1 = *(v0 + 136);
  v2 = *(v0 + 40);
  v3 = *(v0 + 24);
  if ((*(v0 + 128))(v3, 1, v2) == 1)
  {

    v4 = *(v0 + 24);
    (*(*(v0 + 48) + 8))(*(v0 + 88), *(v0 + 40));
    outlined destroy of URL?(v4, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v5 = 0;
    v6 = 0;
  }

  else
  {
    v8 = *(v0 + 144);
    v7 = *(v0 + 152);
    v9 = *(v0 + 80);
    v25 = *(v0 + 88);
    v11 = *(v0 + 64);
    v10 = *(v0 + 72);
    v26 = v10;
    v27 = *(v0 + 104);
    v12 = *(v0 + 48);
    v13 = *(v0 + 56);
    v8(v9, v3, v2);
    v8(v10, v9, v2);
    v8(v11, v25, v2);
    v14 = *(v12 + 80);
    v15 = (v14 + 16) & ~v14;
    v16 = (v13 + v14 + v15) & ~v14;
    v6 = swift_allocObject();
    v8(v6 + v15, v26, v2);
    v8(v6 + v16, v11, v2);
    *(v6 + ((v13 + v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v27;
    v5 = partial apply for closure #1 in static JournalingSuggestion.LivePhoto.getAssetLoader(for:);
  }

  v18 = *(v0 + 80);
  v17 = *(v0 + 88);
  v20 = *(v0 + 64);
  v19 = *(v0 + 72);
  v22 = *(v0 + 24);
  v21 = *(v0 + 32);

  v23 = *(v0 + 8);

  return v23(v5, v6);
}

uint64_t sub_238AD6088()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 8);
  v4 = *(v2 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v2 + 64);
  v7 = (v6 + v4 + v5) & ~v4;
  v8 = (v6 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v3(v0 + v5, v1);
  v3(v0 + v7, v1);

  return MEMORY[0x2821FE8E8](v0, v8 + 8, v4 | 7);
}

uint64_t partial apply for closure #1 in static JournalingSuggestion.LivePhoto.getAssetLoader(for:)(void (*a1)(uint64_t *, void), uint64_t a2)
{
  v5 = *(type metadata accessor for URL() - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 16) & ~v6;
  v8 = *(v5 + 64);
  v9 = (v8 + v6 + v7) & ~v6;
  v10 = *(v2 + ((v8 + v9 + 7) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in static JournalingSuggestion.LivePhoto.getAssetLoader(for:)(a1, a2, v2 + v7, v2 + v9, v10);
}

uint64_t protocol witness for static InternalAssetProvider.getAssetLoader(for:) in conformance JournalingSuggestion.MotionActivity()
{
  v1 = specialized static JournalingSuggestion.MotionActivity.getAssetLoader(for:)();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t closure #1 in static JournalingSuggestion.MotionActivity.getAssetLoader(for:)(void (*a1)(uint64_t *, void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[1] = a2;
  v24 = a1;
  v6 = type metadata accessor for MotionActivity();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for JournalingSuggestion.MotionActivity(0);
  v12 = *(*(v11 - 1) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for URL();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v14, a3, v15);
  (*(v16 + 56))(v14, 0, 1, v15);
  v17 = v11[6];
  v18 = type metadata accessor for DateInterval();
  (*(*(v18 - 8) + 56))(&v14[v17], 1, 1, v18);
  v19 = v11[5];
  v20 = v11[7];
  v14[v20] = 3;
  *&v14[v19] = a4;
  MotionActivity.init(rawValue:)();
  MotionActivity.asMovementType.getter(v25);
  (*(v7 + 8))(v10, v6);
  v14[v20] = v25[0];
  v25[3] = v11;
  v25[4] = &protocol witness table for JournalingSuggestion.MotionActivity;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v25);
  outlined init with copy of JournalingSuggestion.MotionActivity(v14, boxed_opaque_existential_1);
  v24(v25, 0);
  outlined destroy of JournalingSuggestion.MotionActivity(v14);
  return outlined destroy of URL?(v25, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMd, &_s21JournalingSuggestions0A15SuggestionAsset_pSgMR);
}

uint64_t MotionActivity.asMovementType.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for MotionActivity();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v18 - v10;
  (*(v5 + 16))(&v18 - v10, v2, v4);
  static MotionActivity.walk.getter();
  lazy protocol witness table accessor for type MotionActivity and conformance MotionActivity();
  v12 = dispatch thunk of static Equatable.== infix(_:_:)();
  v13 = *(v5 + 8);
  v13(v9, v4);
  if (v12)
  {
    result = (v13)(v11, v4);
    v15 = 1;
  }

  else
  {
    static MotionActivity.run.getter();
    v16 = dispatch thunk of static Equatable.== infix(_:_:)();
    v13(v9, v4);
    if (v16)
    {
      result = (v13)(v11, v4);
      v15 = 0;
    }

    else
    {
      static MotionActivity.runAndWalk.getter();
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      v13(v9, v4);
      result = (v13)(v11, v4);
      if (v17)
      {
        v15 = 2;
      }

      else
      {
        v15 = 3;
      }
    }
  }

  *a1 = v15;
  return result;
}

uint64_t (*specialized static JournalingSuggestion.MotionActivity.getAssetLoader(for:)())(void (*a1)(uint64_t *, void), uint64_t a2)
{
  v0 = type metadata accessor for UUID();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v48 - v7;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v13 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v56 = &v48 - v14;
  result = Asset.transferRepresentation.getter();
  if (result)
  {
    v16 = result;
    type metadata accessor for TransferMotionActivityViewModel();
    v17 = swift_dynamicCastClass();
    if (!v17)
    {
      goto LABEL_12;
    }

    v54 = v17;
    v18 = dispatch thunk of AssetViewModel.baseImage.getter();
    if (!v18)
    {
      goto LABEL_12;
    }

    v19 = v18;
    v53 = v1;
    v20 = Image.uiImage.getter();

    v55 = v20;
    if (!v20)
    {
      goto LABEL_12;
    }

    v21 = [objc_opt_self() defaultManager];
    v22 = v9;
    v23 = [v21 temporaryDirectory];

    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    UUID.init()();
    UUID.uuidString.getter();
    (*(v53 + 8))(v4, v0);
    URL.appendingPathComponent(_:)();

    v52 = v10;
    v53 = v22;
    v24 = *(v10 + 8);
    v24(v13, v22);
    v25 = v55;
    v26 = UIImageHEICRepresentation(v55);
    if (v26)
    {
      v27 = v26;
      v50 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v28;

      URL.appendingPathExtension(_:)();
    }

    else
    {
      v49 = v24;
      v30 = UIImagePNGRepresentation(v25);
      if (!v30)
      {
LABEL_10:
        v36 = v52;
        v35 = v53;
        (*(v52 + 56))(v8, 0, 1, v53);
        v37 = v56;
        v55 = *(v36 + 32);
        (v55)(v56, v8, v35);
        v38 = dispatch thunk of TransferMotionActivityViewModel.steps.getter();
        if ((v39 & 1) == 0)
        {
          v51 = v38;
          v40 = dispatch thunk of TransferMotionActivityViewModel.motionActivityTypeRawValue.getter();
          v42 = v41;

          if ((v42 & 1) == 0)
          {
            v43 = v55;
            v44 = v53;
            (v55)(v13, v56, v53);
            v45 = (*(v52 + 80) + 16) & ~*(v52 + 80);
            v46 = (v11 + v45 + 7) & 0xFFFFFFFFFFFFFFF8;
            v47 = swift_allocObject();
            (v43)(v47 + v45, v13, v44);
            *(v47 + v46) = v51;
            *(v47 + ((v46 + 15) & 0xFFFFFFFFFFFFFFF8)) = v40;
            return partial apply for closure #1 in static JournalingSuggestion.MotionActivity.getAssetLoader(for:);
          }

          v49(v56, v53);
          return 0;
        }

        v49(v37, v35);

LABEL_12:
        return 0;
      }

      v31 = v30;
      v50 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v32;

      URL.appendingPathExtension(_:)();
      v24 = v49;
    }

    v33 = v53;
    v24(v8, v53);
    (*(v52 + 32))(v8, v13, v33);
    v34 = v50;
    v51 = v29;
    Data.write(to:options:)();
    v49 = v24;
    outlined consume of Data._Representation(v34, v51);
    v25 = v55;
    goto LABEL_10;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MotionActivity and conformance MotionActivity()
{
  result = lazy protocol witness table cache variable for type MotionActivity and conformance MotionActivity;
  if (!lazy protocol witness table cache variable for type MotionActivity and conformance MotionActivity)
  {
    type metadata accessor for MotionActivity();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MotionActivity and conformance MotionActivity);
  }

  return result;
}

uint64_t sub_238AD6CC4()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t partial apply for closure #1 in static JournalingSuggestion.MotionActivity.getAssetLoader(for:)(void (*a1)(uint64_t *, void), uint64_t a2)
{
  v5 = *(type metadata accessor for URL() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + v7);
  v9 = *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in static JournalingSuggestion.MotionActivity.getAssetLoader(for:)(a1, a2, v2 + v6, v8);
}

uint64_t View.onChange<A>(of:initial:_:)()
{
  return MEMORY[0x282133288]();
}

{
  return MEMORY[0x282133290]();
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = MEMORY[0x2821FBCC8]();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}