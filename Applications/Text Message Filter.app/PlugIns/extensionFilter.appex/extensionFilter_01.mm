Swift::Bool __swiftcall RegionPropertiesReader.isSupported(region:)(extensionFilter::Region *region)
{
  modelPipeline = region->modelPipeline;
  v2 = modelPipeline != 2 && region->smsFilterSupported;
  if (modelPipeline == 2 && region->smsFilterSupported)
  {
    v4[3] = &type metadata for IMFeatureFlags;
    v4[4] = lazy protocol witness table accessor for type IMFeatureFlags and conformance IMFeatureFlags();
    v2 = isFeatureEnabled(_:)();
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
  }

  return v2 & 1;
}

Swift::Void __swiftcall RegionPropertiesReader.printRegionProperties()()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v1 + 16);
    if (v2)
    {

      v3 = v2 - 1;
      for (i = 32; ; i += 144)
      {
        v18 = *(v1 + i);
        v5 = *(v1 + i + 16);
        v6 = *(v1 + i + 32);
        v7 = *(v1 + i + 64);
        v21 = *(v1 + i + 48);
        v22 = v7;
        v19 = v5;
        v20 = v6;
        v8 = *(v1 + i + 80);
        v9 = *(v1 + i + 96);
        v10 = *(v1 + i + 112);
        *(v25 + 9) = *(v1 + i + 121);
        v24 = v9;
        v25[0] = v10;
        v23 = v8;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
        v11 = swift_allocObject();
        *(v11 + 16) = xmmword_100023F10;
        *(v11 + 56) = &type metadata for Region;
        v12 = swift_allocObject();
        *(v11 + 32) = v12;
        v13 = v25[0];
        v12[7] = v24;
        v12[8] = v13;
        *(v12 + 137) = *(v25 + 9);
        v14 = v21;
        v12[3] = v20;
        v12[4] = v14;
        v15 = v23;
        v12[5] = v22;
        v12[6] = v15;
        v16 = v19;
        v12[1] = v18;
        v12[2] = v16;
        outlined init with copy of Region(&v18, v17);
        print(_:separator:terminator:)();

        if (!v3)
        {
          break;
        }

        --v3;
      }
    }
  }
}

uint64_t RegionPropertiesReader.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t RegionPropertiesReader.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

unint64_t specialized Region.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Region.CodingKeys.init(rawValue:), v2);

  if (v3 >= 0xF)
  {
    return 15;
  }

  else
  {
    return v3;
  }
}

uint64_t specialized Region.TrialParams.init(from:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15extensionFilter6RegionV11TrialParamsV10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15extensionFilter6RegionV11TrialParamsV10CodingKeysOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10[-v6];
  v8 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  lazy protocol witness table accessor for type Region.TrialParams.CodingKeys and conformance Region.TrialParams.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v10[15] = 0;
    LOBYTE(v8) = KeyedDecodingContainer.decode(_:forKey:)();
    v10[14] = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v8 & 1;
}

uint64_t specialized Region.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15extensionFilter6RegionV10CodingKeysOGMd, "@");
  v5 = *(v84 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v84);
  v8 = &v36 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Region.CodingKeys and conformance Region.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v10 = v5;
  LOBYTE(v62) = 0;
  v11 = v84;
  v13 = KeyedDecodingContainer.decode(_:forKey:)();
  v15 = v14;
  LOBYTE(v62) = 1;
  v50 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v62) = 2;
  v49 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v62) = 3;
  v48 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v62) = 4;
  v47 = KeyedDecodingContainer.decode(_:forKey:)();
  v52 = v16;
  LOBYTE(v62) = 5;
  v46 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v62) = 6;
  v17 = KeyedDecodingContainer.decode(_:forKey:)();
  v53 = 0;
  v43 = v17;
  v51 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd, &_sSaySiGMR);
  LOBYTE(v54) = 7;
  v44 = lazy protocol witness table accessor for type [Int] and conformance <A> [A](&lazy protocol witness table cache variable for type [Int] and conformance <A> [A], &_sSaySiGMd, &_sSaySiGMR);
  v45 = v19;
  v20 = v53;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v53 = v20;
  if (v20)
  {
    (*(v10 + 8))(v8, v11);
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v42 = v62;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, "0D");
    LOBYTE(v54) = 8;
    lazy protocol witness table accessor for type [Int] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A], &_sSaySSGMd, "0D");
    v23 = v53;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v53 = v23;
    if (v23)
    {
      (*(v10 + 8))(v8, v11);
      v22 = 0;
      v21 = 1;
    }

    else
    {
      v41 = v62;
      LOBYTE(v62) = 9;
      v24 = KeyedDecodingContainer.decode(_:forKey:)();
      v53 = 0;
      v25 = v24;
      LOBYTE(v54) = 10;
      lazy protocol witness table accessor for type Region.TrialParams and conformance Region.TrialParams();
      v26 = v53;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v53 = v26;
      if (!v26)
      {
        v39 = v62;
        v40 = v63;
        LOBYTE(v62) = 11;
        v38 = KeyedDecodingContainer.decode(_:forKey:)();
        v53 = 0;
        LOBYTE(v54) = 12;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v53 = 0;
        v37 = v62;
        LOBYTE(v54) = 13;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v53 = 0;
        v45 = v62;
        v80 = 14;
        lazy protocol witness table accessor for type Region.ModelPipeline and conformance Region.ModelPipeline();
        v27 = v53;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v53 = v27;
        if (!v27)
        {
          v28 = v50 & 1;
          LODWORD(v44) = v50 & 1;
          v48 &= 1u;
          v49 &= 1u;
          v50 = v38 & 1;
          (*(v10 + 8))(v8, v84);
          LODWORD(v84) = v81;
          *&v54 = v13;
          *(&v54 + 1) = v15;
          LOBYTE(v55) = v28;
          v29 = v48;
          v30 = v49;
          BYTE1(v55) = v49;
          BYTE2(v55) = v48;
          *(&v55 + 1) = v47;
          *&v56 = v52;
          v31 = v42;
          *(&v56 + 1) = v46;
          *&v57 = v43;
          *(&v57 + 1) = v51;
          *&v58 = v42;
          *(&v58 + 1) = v41;
          *&v59 = v25;
          BYTE8(v59) = v39;
          v60 = v40;
          LOBYTE(v61[0]) = v50;
          *(&v61[0] + 1) = v37;
          *&v61[1] = v45;
          BYTE8(v61[1]) = v81;
          outlined init with copy of Region(&v54, &v62);
          __swift_destroy_boxed_opaque_existential_1Tm(a1);
          v62 = v13;
          *&v63 = v15;
          BYTE8(v63) = v44;
          BYTE9(v63) = v30;
          BYTE10(v63) = v29;
          *(&v63 + 11) = *&v83[7];
          HIBYTE(v63) = v83[11];
          v64 = v47;
          v65 = v52;
          v66 = v46;
          v67 = v43;
          v68 = v51;
          v69 = v31;
          v70 = v41;
          v71 = v25;
          v72 = v39;
          *&v73[3] = *&v83[3];
          *v73 = *v83;
          v74 = v40;
          v75 = v50;
          *v76 = *v82;
          *&v76[3] = *&v82[3];
          v77 = v37;
          v78 = v45;
          v79 = v84;
          result = outlined destroy of Region(&v62);
          v32 = v61[0];
          a2[6] = v60;
          a2[7] = v32;
          *(a2 + 121) = *(v61 + 9);
          v33 = v57;
          a2[2] = v56;
          a2[3] = v33;
          v34 = v59;
          a2[4] = v58;
          a2[5] = v34;
          v35 = v55;
          *a2 = v54;
          a2[1] = v35;
          return result;
        }

        (*(v10 + 8))(v8, v84);
        __swift_destroy_boxed_opaque_existential_1Tm(a1);
      }

      (*(v10 + 8))(v8, v84);
      v21 = 1;
      v22 = 1;
    }
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);

  if (v21)
  {

    if ((v22 & 1) == 0)
    {
      return result;
    }
  }

  else if (!v22)
  {
    return result;
  }
}

unint64_t lazy protocol witness table accessor for type [Region] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [Region] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [Region] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay15extensionFilter6RegionVGMd, &_sSay15extensionFilter6RegionVGMR);
    lazy protocol witness table accessor for type Region and conformance Region();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [Region] and conformance <A> [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Region and conformance Region()
{
  result = lazy protocol witness table cache variable for type Region and conformance Region;
  if (!lazy protocol witness table cache variable for type Region and conformance Region)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Region and conformance Region);
  }

  return result;
}

uint64_t sub_10001635C()
{
  v1 = v0[3];

  v2 = v0[6];

  v3 = v0[9];

  v4 = v0[10];

  v5 = v0[11];

  v6 = v0[15];

  v7 = v0[17];

  v8 = v0[18];

  return _swift_deallocObject(v0, 153, 7);
}

unint64_t lazy protocol witness table accessor for type Region.CodingKeys and conformance Region.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Region.CodingKeys and conformance Region.CodingKeys;
  if (!lazy protocol witness table cache variable for type Region.CodingKeys and conformance Region.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Region.CodingKeys and conformance Region.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Region.CodingKeys and conformance Region.CodingKeys;
  if (!lazy protocol witness table cache variable for type Region.CodingKeys and conformance Region.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Region.CodingKeys and conformance Region.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Region.CodingKeys and conformance Region.CodingKeys;
  if (!lazy protocol witness table cache variable for type Region.CodingKeys and conformance Region.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Region.CodingKeys and conformance Region.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Region.CodingKeys and conformance Region.CodingKeys;
  if (!lazy protocol witness table cache variable for type Region.CodingKeys and conformance Region.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Region.CodingKeys and conformance Region.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Region.TrialParams.CodingKeys and conformance Region.TrialParams.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Region.TrialParams.CodingKeys and conformance Region.TrialParams.CodingKeys;
  if (!lazy protocol witness table cache variable for type Region.TrialParams.CodingKeys and conformance Region.TrialParams.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Region.TrialParams.CodingKeys and conformance Region.TrialParams.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Region.TrialParams.CodingKeys and conformance Region.TrialParams.CodingKeys;
  if (!lazy protocol witness table cache variable for type Region.TrialParams.CodingKeys and conformance Region.TrialParams.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Region.TrialParams.CodingKeys and conformance Region.TrialParams.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Region.TrialParams.CodingKeys and conformance Region.TrialParams.CodingKeys;
  if (!lazy protocol witness table cache variable for type Region.TrialParams.CodingKeys and conformance Region.TrialParams.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Region.TrialParams.CodingKeys and conformance Region.TrialParams.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Region.TrialParams.CodingKeys and conformance Region.TrialParams.CodingKeys;
  if (!lazy protocol witness table cache variable for type Region.TrialParams.CodingKeys and conformance Region.TrialParams.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Region.TrialParams.CodingKeys and conformance Region.TrialParams.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Region.ModelPipeline and conformance Region.ModelPipeline()
{
  result = lazy protocol witness table cache variable for type Region.ModelPipeline and conformance Region.ModelPipeline;
  if (!lazy protocol witness table cache variable for type Region.ModelPipeline and conformance Region.ModelPipeline)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Region.ModelPipeline and conformance Region.ModelPipeline);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Region.ModelPipeline and conformance Region.ModelPipeline;
  if (!lazy protocol witness table cache variable for type Region.ModelPipeline and conformance Region.ModelPipeline)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Region.ModelPipeline and conformance Region.ModelPipeline);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Region.ModelPipeline and conformance Region.ModelPipeline;
  if (!lazy protocol witness table cache variable for type Region.ModelPipeline and conformance Region.ModelPipeline)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Region.ModelPipeline and conformance Region.ModelPipeline);
  }

  return result;
}

__n128 __swift_memcpy137_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 121) = *(a2 + 121);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Region(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 137))
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

uint64_t storeEnumTagSinglePayload for Region(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 136) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 137) = 1;
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

    *(result + 137) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Region.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 14;
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

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Region.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Region.TrialParams(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for Region.TrialParams(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for Region.TrialParams.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Region.TrialParams.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Region.ModelPipeline(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Region.ModelPipeline(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t lazy protocol witness table accessor for type [Int] and conformance <A> [A](unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t lazy protocol witness table accessor for type Region.TrialParams and conformance Region.TrialParams()
{
  result = lazy protocol witness table cache variable for type Region.TrialParams and conformance Region.TrialParams;
  if (!lazy protocol witness table cache variable for type Region.TrialParams and conformance Region.TrialParams)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Region.TrialParams and conformance Region.TrialParams);
  }

  return result;
}

Swift::Int IMFeatureFlags.hashValue.getter()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance IMFeatureFlags()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t getEnumTagSinglePayload for IMFeatureFlags(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for IMFeatureFlags(_WORD *result, int a2, int a3)
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

Swift::Void __swiftcall SmsFilterModelPipeline.loadDefaultBasicModel()()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v26[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __chkstk_darwin(v5);
  v10 = &v26[-v9];
  if (((*(*v0 + 560))(v8) & 1) == 0 || ((*(*v0 + 576))() & 1) == 0)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, logger);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "smsfilter: trial-basicModel is not available. fallback to default basicModel.", v14, 2u);
    }

    v15 = [objc_opt_self() mainBundle];
    v16 = String._bridgeToObjectiveC()();
    v17 = String._bridgeToObjectiveC()();
    v18 = [v15 URLForResource:v16 withExtension:v17];

    if (v18)
    {
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      type metadata accessor for NLModel();
      (*(v3 + 16))(v7, v10, v2);
      v19 = @nonobjc NLModel.__allocating_init(contentsOf:)(v7);
      v20 = (*(*v1 + 184))(v19);
      v21 = (*(*v1 + 176))(v20);
      if (v21)
      {

        v22 = Logger.logObject.getter();
        v23 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          *v24 = 0;
          v25 = "smsfilter: init default basic model.";
LABEL_13:
          _os_log_impl(&_mh_execute_header, v22, v23, v25, v24, 2u);
        }
      }

      else
      {
        v22 = Logger.logObject.getter();
        v23 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          *v24 = 0;
          v25 = "smsfilter: failed to load default basic model.";
          goto LABEL_13;
        }
      }

      (*(v3 + 8))(v10, v2);
    }
  }
}

unint64_t type metadata accessor for NLModel()
{
  result = lazy cache variable for type metadata for NLModel;
  if (!lazy cache variable for type metadata for NLModel)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NLModel);
  }

  return result;
}

id @nonobjc NLModel.__allocating_init(contentsOf:)(uint64_t a1)
{
  URL._bridgeToObjectiveC()(__stack_chk_guard);
  v3 = v2;
  v12 = 0;
  v4 = [swift_getObjCClassFromMetadata() modelWithContentsOfURL:v2 error:&v12];

  v5 = v12;
  if (v4)
  {
    v6 = type metadata accessor for URL();
    v7 = *(*(v6 - 8) + 8);
    v8 = v5;
    v7(a1, v6);
  }

  else
  {
    v9 = v12;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v10 = type metadata accessor for URL();
    (*(*(v10 - 8) + 8))(a1, v10);
  }

  return v4;
}

Swift::Int SFEError.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

uint64_t getEnumTagSinglePayload for SFEError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SFEError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

double static RegexMessageReader.processRegexMessages(filePath:)@<D0>(_OWORD *a1@<X8>)
{
  specialized static RegexMessageReader.processRegexMessages(filePath:)(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

extensionFilter::Regex::CodingKeys_optional __swiftcall Regex.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v2._countAndFlagsBits = stringValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Regex.CodingKeys.init(rawValue:), v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

unint64_t Regex.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  v1 = 0xD000000000000017;
  v2 = 0xD00000000000001CLL;
  if (a1 != 2)
  {
    v2 = 0xD000000000000020;
  }

  if (a1)
  {
    v1 = 0xD00000000000001ALL;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Regex.CodingKeys(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = Regex.CodingKeys.stringValue.getter(*a1);
  v5 = v4;
  if (v3 == Regex.CodingKeys.stringValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Regex.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Regex.CodingKeys.stringValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Regex.CodingKeys()
{
  Regex.CodingKeys.stringValue.getter(*v0);
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Regex.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Regex.CodingKeys.stringValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

extensionFilter::Regex::CodingKeys_optional protocol witness for RawRepresentable.init(rawValue:) in conformance Regex.CodingKeys@<W0>(Swift::String *a1@<X0>, extensionFilter::Regex::CodingKeys_optional *a2@<X8>)
{
  result.value = Regex.CodingKeys.init(stringValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance Regex.CodingKeys@<X0>(unint64_t *a1@<X8>)
{
  result = Regex.CodingKeys.stringValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Regex.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Regex.CodingKeys and conformance Regex.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Regex.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Regex.CodingKeys and conformance Regex.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

extensionFilter::Regex::SubclassificationMap::CodingKeys_optional __swiftcall Regex.SubclassificationMap.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v2._countAndFlagsBits = stringValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Regex.SubclassificationMap.CodingKeys.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t Regex.SubclassificationMap.CodingKeys.stringValue.getter(char a1)
{
  if (!a1)
  {
    return 0x65636E616E6946;
  }

  if (a1 == 1)
  {
    return 0x73726564724FLL;
  }

  return 0x7265646E696D6552;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Regex.SubclassificationMap.CodingKeys(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x73726564724FLL;
  if (v2 != 1)
  {
    v4 = 0x7265646E696D6552;
    v3 = 0xE900000000000073;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x65636E616E6946;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x73726564724FLL;
  if (*a2 != 1)
  {
    v8 = 0x7265646E696D6552;
    v7 = 0xE900000000000073;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x65636E616E6946;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Regex.SubclassificationMap.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Regex.SubclassificationMap.CodingKeys()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Regex.SubclassificationMap.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

extensionFilter::Regex::SubclassificationMap::CodingKeys_optional protocol witness for RawRepresentable.init(rawValue:) in conformance Regex.SubclassificationMap.CodingKeys@<W0>(Swift::String *a1@<X0>, extensionFilter::Regex::SubclassificationMap::CodingKeys_optional *a2@<X8>)
{
  result.value = Regex.SubclassificationMap.CodingKeys.init(stringValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance Regex.SubclassificationMap.CodingKeys(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x73726564724FLL;
  if (v2 != 1)
  {
    v5 = 0x7265646E696D6552;
    v4 = 0xE900000000000073;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x65636E616E6946;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance Regex.SubclassificationMap.CodingKeys()
{
  v1 = 0x73726564724FLL;
  if (*v0 != 1)
  {
    v1 = 0x7265646E696D6552;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x65636E616E6946;
  }
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Regex.SubclassificationMap.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Regex.SubclassificationMap.CodingKeys and conformance Regex.SubclassificationMap.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Regex.SubclassificationMap.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Regex.SubclassificationMap.CodingKeys and conformance Regex.SubclassificationMap.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Regex.allowList.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t Regex.SubclassificationMap.ordersList.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t Regex.SubclassificationMap.remindersList.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t Regex.SubclassificationMap.init(from:)(uint64_t *a1)
{
  result = specialized Regex.SubclassificationMap.init(from:)(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t protocol witness for Decodable.init(from:) in conformance Regex.SubclassificationMap@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized Regex.SubclassificationMap.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t Regex.subclassificationMap.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];

  return v1;
}

uint64_t Regex.subclassificationMap.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[3];

  v8 = v3[4];

  v9 = v3[5];

  v3[3] = a1;
  v3[4] = a2;
  v3[5] = a3;
  return result;
}

uint64_t Regex.init(allowList:promotionalList:transactionalList:subclassificationMap:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

double Regex.init(from:)@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  specialized Regex.init(from:)(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t specialized static RegexMessageReader.processRegexMessages(filePath:)@<X0>(uint64_t *a1@<X8>)
{
  v57 = a1;
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = v2[8];
  v4 = __chkstk_darwin(v1);
  v6 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v55 - v8;
  __chkstk_darwin(v7);
  v11 = &v55 - v10;
  URL.init(fileURLWithPath:)();
  v12 = [objc_opt_self() defaultManager];
  URL.path.getter();
  v13 = String._bridgeToObjectiveC()();

  v14 = [v12 fileExistsAtPath:v13];

  if (v14)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, logger);
    v16 = v2[2];
    v56 = v11;
    v16(v6, v11, v1);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v55 = v2;
      v21 = v20;
      v58 = v20;
      *v19 = 136315138;
      lazy protocol witness table accessor for type URL and conformance URL();
      v22 = dispatch thunk of CustomStringConvertible.description.getter();
      v24 = v23;
      v25 = v55[1];
      v25(v6, v1);
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, &v58);

      *(v19 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v17, v18, "smsfilter: regex url: %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
    }

    else
    {

      v25 = v2[1];
      v25(v6, v1);
    }

    v42 = v56;
    v43 = Data.init(contentsOf:options:)();
    v45 = v44;
    v46 = type metadata accessor for PropertyListDecoder();
    v47 = *(v46 + 48);
    v48 = *(v46 + 52);
    swift_allocObject();
    PropertyListDecoder.init()();
    lazy protocol witness table accessor for type Regex and conformance Regex();
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
    v25(v42, v1);

    result = outlined consume of Data._Representation(v43, v45);
    v51 = v58;
    v52 = v59;
    v53 = v60;
    v54 = v61;
  }

  else
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    __swift_project_value_buffer(v27, logger);
    (v2[2])(v9, v11, v1);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v58 = v31;
      *v30 = 136315138;
      lazy protocol witness table accessor for type URL and conformance URL();
      v32 = dispatch thunk of CustomStringConvertible.description.getter();
      v33 = v1;
      v34 = v2;
      v36 = v35;
      v37 = v34[1];
      v38 = v9;
      v39 = v33;
      v37(v38, v33);
      v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v36, &v58);

      *(v30 + 4) = v40;
      _os_log_impl(&_mh_execute_header, v28, v29, "smsfilter: regex file %s doesn't exist.", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v31);

      result = (v37)(v11, v39);
    }

    else
    {

      v49 = v2[1];
      v49(v9, v1);
      result = (v49)(v11, v1);
    }

    v51 = 0;
    v54 = 0;
    v52 = 0uLL;
    v53 = 0uLL;
  }

  v50 = v57;
  *v57 = v51;
  *(v50 + 1) = v52;
  *(v50 + 3) = v53;
  v50[5] = v54;
  return result;
}

uint64_t specialized Regex.SubclassificationMap.init(from:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15extensionFilter5RegexV20SubclassificationMapV10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15extensionFilter5RegexV20SubclassificationMapV10CodingKeysOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Regex.SubclassificationMap.CodingKeys and conformance Regex.SubclassificationMap.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, "0D");
  v11 = 0;
  lazy protocol witness table accessor for type [String] and conformance <A> [A]();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v10 = v12;
  v11 = 1;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v11 = 2;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v4 + 8))(v7, v3);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v10;
}

uint64_t specialized Regex.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15extensionFilter5RegexV10CodingKeysOGMd, "R;");
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Regex.CodingKeys and conformance Regex.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    v19 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, "0D");
    v22 = 0;
    lazy protocol witness table accessor for type [String] and conformance <A> [A]();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v11 = v20;
    v22 = 1;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v18 = v20;
    v22 = 2;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v12 = v20;
    v22 = 3;
    lazy protocol witness table accessor for type Regex.SubclassificationMap and conformance Regex.SubclassificationMap();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v9, v5);
    v13 = v21;
    v17 = v20;
    result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v16 = v18;
    v15 = v19;
    *v19 = v11;
    v15[1] = v16;
    v15[2] = v12;
    *(v15 + 3) = v17;
    v15[5] = v13;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Regex.CodingKeys and conformance Regex.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Regex.CodingKeys and conformance Regex.CodingKeys;
  if (!lazy protocol witness table cache variable for type Regex.CodingKeys and conformance Regex.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Regex.CodingKeys and conformance Regex.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Regex.CodingKeys and conformance Regex.CodingKeys;
  if (!lazy protocol witness table cache variable for type Regex.CodingKeys and conformance Regex.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Regex.CodingKeys and conformance Regex.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Regex.CodingKeys and conformance Regex.CodingKeys;
  if (!lazy protocol witness table cache variable for type Regex.CodingKeys and conformance Regex.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Regex.CodingKeys and conformance Regex.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Regex.CodingKeys and conformance Regex.CodingKeys;
  if (!lazy protocol witness table cache variable for type Regex.CodingKeys and conformance Regex.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Regex.CodingKeys and conformance Regex.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Regex.SubclassificationMap.CodingKeys and conformance Regex.SubclassificationMap.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Regex.SubclassificationMap.CodingKeys and conformance Regex.SubclassificationMap.CodingKeys;
  if (!lazy protocol witness table cache variable for type Regex.SubclassificationMap.CodingKeys and conformance Regex.SubclassificationMap.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Regex.SubclassificationMap.CodingKeys and conformance Regex.SubclassificationMap.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Regex.SubclassificationMap.CodingKeys and conformance Regex.SubclassificationMap.CodingKeys;
  if (!lazy protocol witness table cache variable for type Regex.SubclassificationMap.CodingKeys and conformance Regex.SubclassificationMap.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Regex.SubclassificationMap.CodingKeys and conformance Regex.SubclassificationMap.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Regex.SubclassificationMap.CodingKeys and conformance Regex.SubclassificationMap.CodingKeys;
  if (!lazy protocol witness table cache variable for type Regex.SubclassificationMap.CodingKeys and conformance Regex.SubclassificationMap.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Regex.SubclassificationMap.CodingKeys and conformance Regex.SubclassificationMap.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Regex.SubclassificationMap.CodingKeys and conformance Regex.SubclassificationMap.CodingKeys;
  if (!lazy protocol witness table cache variable for type Regex.SubclassificationMap.CodingKeys and conformance Regex.SubclassificationMap.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Regex.SubclassificationMap.CodingKeys and conformance Regex.SubclassificationMap.CodingKeys);
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Regex(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t storeEnumTagSinglePayload for Regex(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Regex.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Regex.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t lazy protocol witness table accessor for type [String] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [String] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [String] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, "0D");
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Regex.SubclassificationMap and conformance Regex.SubclassificationMap()
{
  result = lazy protocol witness table cache variable for type Regex.SubclassificationMap and conformance Regex.SubclassificationMap;
  if (!lazy protocol witness table cache variable for type Regex.SubclassificationMap and conformance Regex.SubclassificationMap)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Regex.SubclassificationMap and conformance Regex.SubclassificationMap);
  }

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

unint64_t lazy protocol witness table accessor for type Regex and conformance Regex()
{
  result = lazy protocol witness table cache variable for type Regex and conformance Regex;
  if (!lazy protocol witness table cache variable for type Regex and conformance Regex)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Regex and conformance Regex);
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

uint64_t SmsFilterModelPipeline.__allocating_init(region:)(__int128 *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  SmsFilterModelPipeline.init(region:)(a1);
  return v5;
}

uint64_t SmsFilterModelPipeline._modelVersion.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t SmsFilterModelPipeline._modelVersion.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 48);
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
}

uint64_t SmsFilterModelPipeline._promotionalThreshold.setter(double a1)
{
  result = swift_beginAccess();
  *(v1 + 56) = a1;
  return result;
}

uint64_t SmsFilterModelPipeline._transactionalThreshold.setter(double a1)
{
  result = swift_beginAccess();
  *(v1 + 64) = a1;
  return result;
}

void *SmsFilterModelPipeline._trialManager.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 216);
  v2 = v1;
  return v1;
}

void SmsFilterModelPipeline._trialManager.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 216);
  *(v1 + 216) = a1;
}

uint64_t SmsFilterModelPipeline._initDone.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 224) = a1;
  return result;
}

uint64_t SmsFilterModelPipeline._checkForMainModel.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 225) = a1;
  return result;
}

uint64_t key path setter for SmsFilterModelPipeline._dateCheckpoint : SmsFilterModelPipeline(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v9 - v6;
  outlined init with copy of Pipeline?(a1, &v9 - v6, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  return (*(**a2 + 424))(v7);
}

uint64_t SmsFilterModelPipeline._dateCheckpoint.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15extensionFilter22SmsFilterModelPipeline__dateCheckpoint;
  swift_beginAccess();
  return outlined init with copy of Pipeline?(v1 + v3, a1, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
}

uint64_t SmsFilterModelPipeline._dateCheckpoint.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15extensionFilter22SmsFilterModelPipeline__dateCheckpoint;
  swift_beginAccess();
  outlined assign with take of Date?(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t SmsFilterModelPipeline._retryTransitionTimerForMainModel.getter()
{
  v1 = OBJC_IVAR____TtC15extensionFilter22SmsFilterModelPipeline__retryTransitionTimerForMainModel;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SmsFilterModelPipeline._retryTransitionTimerForMainModel.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15extensionFilter22SmsFilterModelPipeline__retryTransitionTimerForMainModel;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t SmsFilterModelPipeline.init(region:)(__int128 *a1)
{
  v2 = v1;
  v4 = a1[6];
  v5 = a1[7];
  v6 = a1[4];
  v51 = a1[5];
  v52 = v4;
  v53[0] = v5;
  *(v53 + 9) = *(a1 + 121);
  v7 = a1[3];
  v48 = a1[2];
  v49 = v7;
  v50 = v6;
  v8 = a1[1];
  v46 = *a1;
  v47 = v8;
  *(v2 + 48) = 0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  __asm { FMOV            V0.2D, #0.5 }

  *(v2 + 56) = _Q0;
  _s15extensionFilter6RegionVSgWOi0_(v54);
  v14 = v54[6];
  *(v2 + 152) = v54[5];
  *(v2 + 168) = v14;
  *(v2 + 184) = v55[0];
  *(v2 + 193) = *(v55 + 9);
  v15 = v54[0];
  *(v2 + 88) = v54[1];
  v16 = v54[3];
  *(v2 + 104) = v54[2];
  *(v2 + 120) = v16;
  *(v2 + 136) = v54[4];
  *(v2 + 72) = v15;
  *(v2 + 216) = 0;
  *(v2 + 224) = 0;
  v17 = OBJC_IVAR____TtC15extensionFilter22SmsFilterModelPipeline__dateCheckpoint;
  v18 = type metadata accessor for Date();
  (*(*(v18 - 8) + 56))(v2 + v17, 1, 1, v18);
  *(v2 + OBJC_IVAR____TtC15extensionFilter22SmsFilterModelPipeline__retryTransitionTimerForMainModel) = 1440;
  v19 = [objc_allocWithZone(SmsFilterTrialModelManager) init];
  swift_beginAccess();
  v20 = *(v2 + 216);
  *(v2 + 216) = v19;
  v21 = v19;

  if (v21)
  {

    v43[0] = v53[0];
    *(v43 + 9) = *(v53 + 9);
    v38 = v48;
    v39 = v49;
    v41 = v51;
    v42 = v52;
    v40 = v50;
    v36 = v46;
    v37 = v47;
    Regex.SubclassificationMap.init(financeList:ordersList:remindersList:)(&v36, v22, v23);
    swift_beginAccess();
    v24 = *(v2 + 168);
    v44[5] = *(v2 + 152);
    v44[6] = v24;
    v45[0] = *(v2 + 184);
    *(v45 + 9) = *(v2 + 193);
    v25 = *(v2 + 88);
    v26 = *(v2 + 120);
    v44[2] = *(v2 + 104);
    v44[3] = v26;
    v44[4] = *(v2 + 136);
    v44[0] = *(v2 + 72);
    v44[1] = v25;
    v27 = v41;
    *(v2 + 136) = v40;
    *(v2 + 152) = v27;
    *(v2 + 168) = v42;
    v28 = v36;
    *(v2 + 88) = v37;
    v29 = v39;
    *(v2 + 104) = v38;
    *(v2 + 120) = v29;
    *(v2 + 72) = v28;
    *(v2 + 193) = *(v43 + 9);
    *(v2 + 184) = v43[0];
    v30 = outlined destroy of Region?(v44, &_s15extensionFilter6RegionVSgMd, &_s15extensionFilter6RegionVSgMR);
    (*(*v2 + 472))(v30);
  }

  else
  {
    outlined destroy of Region(a1);
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    __swift_project_value_buffer(v31, logger);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "smsfilter pipeline: _trialManager failed to init", v34, 2u);
    }
  }

  return v2;
}

uint64_t outlined assign with take of Date?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

Swift::Void __swiftcall SmsFilterModelPipeline.initModels()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v2 = *(*(v1 - 8) + 64);
  v3 = __chkstk_darwin(v1 - 8);
  v5 = &v22 - v4;
  v6 = *(*v0 + 560);
  if ((v6)(v3))
  {
    v7 = (*v0 + 344);
    v8 = *v7;
    v9 = (*v7)();
    if (v9)
    {
      v10 = v9;
      (*(*v0 + 320))(v24);
      v27[0] = v24[5];
      v27[1] = v24[6];
      v28[0] = v25[0];
      *(v28 + 9) = *(v25 + 9);
      v26[2] = v24[2];
      v26[3] = v24[3];
      v26[4] = v24[4];
      v26[0] = v24[0];
      v26[1] = v24[1];
      if (_s15extensionFilter6RegionVSgWOg(v26) != 1)
      {
        v29 = *(v27 + 8);
        v30 = *(&v27[1] + 1);
        outlined init with copy of Region.TrialParams(&v29, &v23);
        outlined destroy of Region?(v24, &_s15extensionFilter6RegionVSgMd, &_s15extensionFilter6RegionVSgMR);
        v11 = String._bridgeToObjectiveC()();
        outlined destroy of Region.TrialParams(&v29);
        [v10 initializeWithNamespace:v11];

        SmsFilterModelPipeline.loadTrialMainModelWithThresholds()();
        SmsFilterModelPipeline.loadFallbackModel()();
        SmsFilterModelPipeline.loadTrialSubClassificationModel()();
        if (v6())
        {
          v12 = v8();
          if (v12)
          {
            v13 = v12;
            v14 = [v12 getModelVersion];
            v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v17 = v16;

            (*(*v0 + 256))(v15, v17);
          }
        }

        goto LABEL_7;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

LABEL_7:
  v18 = (*(*v0 + 200))();
  v19 = v18;
  if (v18)
  {
  }

  v20 = (*(*v0 + 400))(v19 == 0);
  if ((*(*v0 + 392))(v20))
  {
    Date.init()();
    v21 = type metadata accessor for Date();
    (*(*(v21 - 8) + 56))(v5, 0, 1, v21);
    (*(*v0 + 424))(v5);
  }

  (*(*v0 + 376))(1);
}

Swift::Void __swiftcall SmsFilterModelPipeline.update()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = v36 - v5;
  v7 = (*v0 + 392);
  v8 = *v7;
  v9 = (*v7)(v4);
  if (v9)
  {
    v9 = SmsFilterModelPipeline.retryTransitionTimerForMainModelExpired()();
    if (v9)
    {
      v9 = (*(*v0 + 376))(0);
    }
  }

  v10 = (*v0 + 560);
  v11 = *v10;
  if (((*v10)(v9) & 1) == 0)
  {
    goto LABEL_9;
  }

  v12 = (*v0 + 344);
  v13 = *v12;
  v14 = (*v12)();
  if (!v14)
  {
    __break(1u);
    goto LABEL_29;
  }

  v15 = v14;
  v16 = [v14 updateAvailable];

  if (!v16)
  {
    goto LABEL_9;
  }

  (*(*v1 + 376))(0);
  (*(*v1 + 208))(0);
  (*(*v1 + 184))(0);
  (*(*v1 + 232))(0);
  v17 = (*(*v1 + 256))(0, 0);
  v18 = (v13)(v17);
  if (!v18)
  {
LABEL_29:
    __break(1u);
    return;
  }

  v19 = v18;
  [v18 cleanupModels];

LABEL_9:
  v36[1] = v7;
  v20 = *(*v1 + 200);
  v21 = v20();
  if (v21 || (v21 = (*(*v1 + 176))()) != 0)
  {
  }

  else
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    __swift_project_value_buffer(v32, logger);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "smsfilter pipeline: both models are nil, try loading them again...", v35, 2u);
    }

    (*(*v1 + 376))(0);
  }

  if (((*(*v1 + 368))() & 1) == 0)
  {
    if (v11())
    {
      SmsFilterModelPipeline.loadTrialMainModelWithThresholds()();
      SmsFilterModelPipeline.loadFallbackModel()();
      SmsFilterModelPipeline.loadTrialSubClassificationModel()();
      if (v11())
      {
        v22 = (*(*v1 + 344))();
        if (v22)
        {
          v23 = v22;
          v24 = [v22 getModelVersion];
          v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v27 = v26;

          (*(*v1 + 256))(v25, v27);
        }
      }
    }

    v28 = v20();
    v29 = v28;
    if (v28)
    {
    }

    v30 = (*(*v1 + 400))(v29 == 0);
    if (v8(v30))
    {
      Date.init()();
      v31 = type metadata accessor for Date();
      (*(*(v31 - 8) + 56))(v6, 0, 1, v31);
      (*(*v1 + 424))(v6);
    }

    (*(*v1 + 376))(1);
  }
}

Swift::Void __swiftcall SmsFilterModelPipeline.cleanup()()
{
  if (((*(*v0 + 560))() & 1) == 0)
  {
    goto LABEL_4;
  }

  v1 = (*(*v0 + 344))();
  if (v1)
  {
    v2 = v1;
    [v1 cleanupModels];

LABEL_4:
    (*(*v0 + 352))(0);
    _s15extensionFilter6RegionVSgWOi0_(v3);
    v5[6] = v3[6];
    v6[0] = v4[0];
    *(v6 + 9) = *(v4 + 9);
    v5[2] = v3[2];
    v5[3] = v3[3];
    v5[4] = v3[4];
    v5[5] = v3[5];
    v5[0] = v3[0];
    v5[1] = v3[1];
    (*(*v0 + 328))(v5);
    (*(*v0 + 208))(0);
    (*(*v0 + 184))(0);
    (*(*v0 + 232))(0);
    (*(*v0 + 256))(0, 0);
    return;
  }

  __break(1u);
}

ILMessageFilterQueryResponse __swiftcall SmsFilterModelPipeline.classify(messageBody:)(Swift::String messageBody)
{
  object = messageBody._object;
  countAndFlagsBits = messageBody._countAndFlagsBits;
  v17 = 1;
  v16 = 8;
  v4 = objc_autoreleasePoolPush();
  specialized closure #1 in SmsFilterModelPipeline.classify(messageBody:)(v1, countAndFlagsBits, object, &v17, &v16);
  objc_autoreleasePoolPop(v4);
  v5 = swift_beginAccess();
  v6 = v17;
  if (v17 == 4)
  {
    if ((*(*v1 + 568))(v5))
    {
      v7 = (*(*v1 + 504))(countAndFlagsBits, object);
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v16;
  (*(*v1 + 248))();
  v10 = v9;
  v11 = [objc_allocWithZone(ILMessageFilterQueryResponse) init];
  [v11 setAction:v6];
  [v11 setSubAction:v7];
  if (v8 == 8)
  {
    v12 = 0;
  }

  else
  {
    lazy protocol witness table accessor for type SFEError and conformance SFEError();
    swift_allocError();
    *v13 = v8;
    v12 = _convertErrorToNSError(_:)();
  }

  [v11 setError:v12];

  if (v10)
  {
    v14 = String._bridgeToObjectiveC()();
  }

  else
  {
    v14 = 0;
  }

  [v11 setVersion:v14];

  return v11;
}

void specialized closure #1 in SmsFilterModelPipeline.classify(messageBody:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, _BYTE *a5)
{
  v8 = *(*a1 + 200);
  v9 = v8();
  if (v9)
  {

    v10 = v8();
    if (v10)
    {
      v11 = v10;
      v12 = NLModel.predictedLabelHypotheses(for:maximumCount:)();

      v13 = 0;
      v14 = 0;
      v15 = 1 << *(v12 + 32);
      v16 = -1;
      if (v15 < 64)
      {
        v16 = ~(-1 << v15);
      }

      v17 = v16 & *(v12 + 64);
      v18 = (v15 + 63) >> 6;
      v5 = 0.0;
      v19 = 0xE000000000000000;
      if (v17)
      {
        while (1)
        {
          v20 = v14;
LABEL_11:

          v21 = __clz(__rbit64(v17));
          v17 &= v17 - 1;
          v22 = v21 | (v20 << 6);
          v23 = (*(v12 + 48) + 16 * v22);
          v13 = *v23;
          v19 = v23[1];
          v5 = *(*(v12 + 56) + 8 * v22);

          if (!v17)
          {
            goto LABEL_7;
          }
        }
      }

      while (1)
      {
LABEL_7:
        v20 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          __break(1u);
          goto LABEL_70;
        }

        if (v20 >= v18)
        {
          break;
        }

        v17 = *(v12 + 64 + 8 * v20);
        ++v14;
        if (v17)
        {
          v14 = v20;
          goto LABEL_11;
        }
      }

      v24 = v13 == 0x6F69746F6D6F7250 && v19 == 0xEB000000006C616ELL;
      v25 = v24;
      if (v24 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (*(*a1 + 272))() <= v5)
      {
        v26 = 3;
      }

      else
      {
        if ((!v25 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || v5 >= (*(*a1 + 272))()) && (v13 != 0x746361736E617254 || v19 != 0xED00006C616E6F69) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
LABEL_43:
          if (one-time initialization token for logger != -1)
          {
            goto LABEL_71;
          }

LABEL_44:
          v41 = type metadata accessor for Logger();
          __swift_project_value_buffer(v41, logger);

          v42 = Logger.logObject.getter();
          v43 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v42, v43))
          {
            v44 = swift_slowAlloc();
            v69 = swift_slowAlloc();
            *v44 = 136315906;
            v45 = (*(*a1 + 552))();
            v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v46, &v69);

            *(v44 + 4) = v47;
            *(v44 + 12) = 2082;
            v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v19, &v69);

            *(v44 + 14) = v48;
            *(v44 + 22) = 2048;
            *(v44 + 24) = v5;
            *(v44 + 32) = 2082;
            swift_beginAccess();
            v49 = specialized String.init(filterAction:)(*a4);
            v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v50, &v69);

            *(v44 + 34) = v51;
            _os_log_impl(&_mh_execute_header, v42, v43, "[%s] smsfilter pipeline: mainmodel: (%{public}s, %f, %{public}s)", v44, 0x2Au);
            swift_arrayDestroy();
          }

          else
          {
          }

          return;
        }

        v26 = 4;
      }

      swift_beginAccess();
      *a4 = v26;
      goto LABEL_43;
    }

    __break(1u);
LABEL_73:
    __break(1u);
    return;
  }

  v27 = *(*a1 + 176);
  v28 = v27();
  if (v28)
  {

    v29 = v27();
    if (v29)
    {
      v30 = v29;
      v19 = NLModel.predictedLabelHypotheses(for:maximumCount:)();

      v31 = 0;
      v32 = 0;
      v13 = v19 + 64;
      v33 = 1 << *(v19 + 32);
      v34 = -1;
      if (v33 < 64)
      {
        v34 = ~(-1 << v33);
      }

      v35 = v34 & *(v19 + 64);
      v36 = (v33 + 63) >> 6;
      v37 = 0xE000000000000000;
      while (v35)
      {
        v38 = v32;
LABEL_39:

        v39 = __clz(__rbit64(v35));
        v35 &= v35 - 1;
        v40 = (*(v19 + 48) + ((v38 << 10) | (16 * v39)));
        v31 = *v40;
        v37 = v40[1];
      }

      while (1)
      {
        v38 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
          break;
        }

        if (v38 >= v36)
        {

          if (v31 == 0x6F69746F6D6F7250 && v37 == 0xEB000000006C616ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            v56 = 3;
            goto LABEL_58;
          }

          if (v31 == 0x746361736E617254 && v37 == 0xED00006C616E6F69)
          {

LABEL_68:
            v56 = 4;
LABEL_58:
            swift_beginAccess();
            *a4 = v56;
          }

          else
          {
            v67 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v67)
            {
              goto LABEL_68;
            }
          }

          if (one-time initialization token for logger != -1)
          {
            swift_once();
          }

          v57 = type metadata accessor for Logger();
          __swift_project_value_buffer(v57, logger);

          v58 = Logger.logObject.getter();
          v59 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v58, v59))
          {
            v60 = swift_slowAlloc();
            v69 = swift_slowAlloc();
            *v60 = 136315394;
            v61 = (*(*a1 + 552))();
            v63 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v62, &v69);

            *(v60 + 4) = v63;
            *(v60 + 12) = 2082;
            swift_beginAccess();
            v64 = specialized String.init(filterAction:)(*a4);
            v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v65, &v69);

            *(v60 + 14) = v66;
            _os_log_impl(&_mh_execute_header, v58, v59, "[%s] smsfilter pipeline: basicmodel: (%{public}s)", v60, 0x16u);
            swift_arrayDestroy();
          }

          return;
        }

        v35 = *(v13 + 8 * v38);
        ++v32;
        if (v35)
        {
          v32 = v38;
          goto LABEL_39;
        }
      }

LABEL_70:
      __break(1u);
LABEL_71:
      swift_once();
      goto LABEL_44;
    }

    goto LABEL_73;
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v52 = type metadata accessor for Logger();
  __swift_project_value_buffer(v52, logger);
  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    *v55 = 0;
    _os_log_impl(&_mh_execute_header, v53, v54, "smsfilter: no active smsfilter", v55, 2u);
  }

  *a5 = 4;
}

uint64_t SmsFilterModelPipeline.subclassify(messageBody:)(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v5 = objc_autoreleasePoolPush();
  specialized closure #1 in SmsFilterModelPipeline.subclassify(messageBody:)(v2, a1, a2, &v7);
  objc_autoreleasePoolPop(v5);
  swift_beginAccess();
  return v7;
}

void specialized closure #1 in SmsFilterModelPipeline.subclassify(messageBody:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = *(*a1 + 224);
  v6 = v5();
  if (v6)
  {

    v7 = v5();
    if (v7)
    {
      v8 = v7;
      v9 = NLModel.predictedLabelHypotheses(for:maximumCount:)();

      v10 = 0;
      v11 = 0;
      v12 = 1 << *(v9 + 32);
      v13 = -1;
      if (v12 < 64)
      {
        v13 = ~(-1 << v12);
      }

      v14 = v13 & *(v9 + 64);
      v15 = (v12 + 63) >> 6;
      v16 = 0xE000000000000000;
      v17 = 0.0;
      if (v14)
      {
        while (1)
        {
          v18 = v11;
LABEL_11:

          v19 = __clz(__rbit64(v14));
          v14 &= v14 - 1;
          v20 = v19 | (v18 << 6);
          v21 = (*(v9 + 48) + 16 * v20);
          v10 = *v21;
          v16 = v21[1];
          v17 = *(*(v9 + 56) + 8 * v20);

          if (!v14)
          {
            goto LABEL_7;
          }
        }
      }

      while (1)
      {
LABEL_7:
        v18 = (v11 + 1);
        if (__OFADD__(v11, 1))
        {
          __break(1u);
          goto LABEL_39;
        }

        if (v18 >= v15)
        {
          break;
        }

        v14 = *(v9 + 64 + 8 * v18);
        v11 = (v11 + 1);
        if (v14)
        {
          v11 = v18;
          goto LABEL_11;
        }
      }

      if (v17 < 0.6)
      {
        v22 = 0;
        v11 = a4;
        goto LABEL_24;
      }

      v11 = a4;
      if (v10 == 0x7265646E696D6552 && v16 == 0xE900000000000073 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v22 = 10003;
        goto LABEL_24;
      }

      if (v10 == 0x73726564724FLL && v16 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v22 = 10002;
        goto LABEL_24;
      }

      if (v10 == 0x65636E616E6946 && v16 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v22 = 10001;
        goto LABEL_24;
      }

LABEL_39:
      v22 = 0;
LABEL_24:
      swift_beginAccess();
      *v11 = v22;
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v31 = type metadata accessor for Logger();
      __swift_project_value_buffer(v31, logger);

      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        *v34 = 136315906;
        v35 = (*(*a1 + 552))();
        v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, &v43);

        *(v34 + 4) = v37;
        *(v34 + 12) = 2082;
        v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v16, &v43);

        *(v34 + 14) = v38;
        *(v34 + 22) = 2048;
        *(v34 + 24) = v17;
        *(v34 + 32) = 2082;
        swift_beginAccess();
        v39 = specialized String.init(filterSubAction:)(*v11);
        v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, &v43);

        *(v34 + 34) = v41;
        _os_log_impl(&_mh_execute_header, v32, v33, "[%s] smsfilter pipeline: sub-classification model: (%{public}s, %f, %{public}s)", v34, 0x2Au);
        swift_arrayDestroy();
      }

      else
      {
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, logger);

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v44 = v27;
      *v26 = 136315138;
      v28 = (*(*a1 + 552))();
      v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, &v44);

      *(v26 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v24, v25, "[%s] smsfilter pipeline: no active sub-classification-model", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
    }
  }
}

void SmsFilterModelPipeline.loadTrialMainModelWithThresholds()()
{
  v1 = v0;
  if ((*(*v0 + 560))())
  {
    v2 = (*(*v0 + 344))();
    if (v2)
    {
      v3 = v2;
      (*(*v0 + 184))(0);
      v16 = [v3 getMainModel];
      if (v16)
      {
        type metadata accessor for NLModel();
        v4 = v16;
        v5 = specialized @nonobjc NLModel.__allocating_init(mlModel:)(v4);

        v6 = *(*v1 + 208);
        v7 = v5;
        v6(v5);
        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v8 = type metadata accessor for Logger();
        __swift_project_value_buffer(v8, logger);
        v9 = Logger.logObject.getter();
        v10 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v9, v10))
        {
          v11 = swift_slowAlloc();
          *v11 = 0;
          _os_log_impl(&_mh_execute_header, v9, v10, "smsfilter pipeline: mainmodel initialized.", v11, 2u);
        }

        (*(*v1 + 280))([v3 loadPromotionalThreshold]);
        (*(*v1 + 304))([v3 loadTransactionalThreshold]);
      }

      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v12 = type metadata accessor for Logger();
      __swift_project_value_buffer(v12, logger);

      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 134218240;
        *(v15 + 4) = (*(*v1 + 272))();
        *(v15 + 12) = 2048;
        *(v15 + 14) = (*(*v1 + 296))();
        _os_log_impl(&_mh_execute_header, v13, v14, "smsfilter pipeline thresholds: promo: %f, trans : %f", v15, 0x16u);
      }
    }
  }
}

void SmsFilterModelPipeline.loadFallbackModel()()
{
  v1 = v0;
  v2 = (*(*v0 + 200))();
  if (v2)
  {
LABEL_2:

    return;
  }

  if (((*(*v0 + 560))() & 1) == 0)
  {
    return;
  }

  if ((*(*v0 + 576))())
  {
    v3 = (*(*v0 + 344))();
    if (!v3)
    {
      return;
    }

    v14 = v3;
    v4 = [v3 getBasicModel];
    if (!v4)
    {
      v2 = v14;
      goto LABEL_2;
    }

    v5 = v4;
    type metadata accessor for NLModel();
    v13 = v5;
    v6 = specialized @nonobjc NLModel.__allocating_init(mlModel:)(v13);

    v7 = *(*v1 + 184);
    v8 = v6;
    v7(v6);
    (*(*v1 + 448))([v14 loadTransitionTimer]);
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, logger);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 134217984;
      *(v12 + 4) = (*(*v1 + 440))();

      _os_log_impl(&_mh_execute_header, v10, v11, "smsfilter pipeline: fallbasck to basic model, transitionTimer : %ld minutes", v12, 0xCu);

      v2 = v13;
      goto LABEL_2;
    }
  }

  else
  {

    SmsFilterModelPipeline.loadDefaultBasicModel()();
  }
}

void SmsFilterModelPipeline.loadTrialSubClassificationModel()()
{
  v1 = v0;
  if ((*(*v0 + 568))() & 1) != 0 && ((*(*v0 + 560))())
  {
    v2 = (*(*v0 + 344))();
    if (v2)
    {
      v3 = v2;
      v4 = [v2 getSubClassificationModel];
      if (v4)
      {
        v5 = v4;
        type metadata accessor for NLModel();
        v14 = v5;
        v6 = specialized @nonobjc NLModel.__allocating_init(mlModel:)(v14);

        v8 = *(*v1 + 232);
        v9 = v6;
        v8(v6);
        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v10 = type metadata accessor for Logger();
        __swift_project_value_buffer(v10, logger);
        v11 = Logger.logObject.getter();
        v12 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v11, v12))
        {
          v13 = swift_slowAlloc();
          *v13 = 0;
          _os_log_impl(&_mh_execute_header, v11, v12, "smsfilter pipeline: sub-classification initialized.", v13, 2u);
        }

        v7 = v14;
      }

      else
      {
        v7 = v3;
      }
    }
  }
}

Swift::String __swiftcall SmsFilterModelPipeline.getRegion()()
{
  (*(*v0 + 320))(v5);
  v7[6] = v5[6];
  v8[0] = v6[0];
  *(v8 + 9) = *(v6 + 9);
  v7[2] = v5[2];
  v7[3] = v5[3];
  v7[4] = v5[4];
  v7[5] = v5[5];
  v7[0] = v5[0];
  v7[1] = v5[1];
  v1 = _s15extensionFilter6RegionVSgWOg(v7);
  if (v1 == 1)
  {
    __break(1u);
  }

  else
  {
    v3 = v7[0];

    outlined destroy of Region?(v5, &_s15extensionFilter6RegionVSgMd, &_s15extensionFilter6RegionVSgMR);
    v2 = (v3 >> 64);
    v1 = v3;
  }

  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

Swift::Bool __swiftcall SmsFilterModelPipeline.trialSupportEnabled()()
{
  (*(*v0 + 320))(v4);
  v8 = v4[6];
  v9[0] = v5[0];
  *(v9 + 9) = *(v5 + 9);
  v6[2] = v4[2];
  v6[3] = v4[3];
  v6[4] = v4[4];
  v7 = v4[5];
  v6[0] = v4[0];
  v6[1] = v4[1];
  v1 = _s15extensionFilter6RegionVSgWOg(v6);
  if (v1 == 1)
  {
    __break(1u);
  }

  else
  {
    v2 = BYTE8(v7);
    outlined destroy of Region?(v4, &_s15extensionFilter6RegionVSgMd, &_s15extensionFilter6RegionVSgMR);
    LOBYTE(v1) = v2 & 1;
  }

  return v1;
}

Swift::Bool __swiftcall SmsFilterModelPipeline.subClassificationModelAvailable()()
{
  (*(*v0 + 320))(v4);
  v6[6] = v4[6];
  v7[0] = v5[0];
  *(v7 + 9) = *(v5 + 9);
  v6[2] = v4[2];
  v6[3] = v4[3];
  v6[4] = v4[4];
  v6[5] = v4[5];
  v6[0] = v4[0];
  v6[1] = v4[1];
  v1 = _s15extensionFilter6RegionVSgWOg(v6);
  if (v1 == 1)
  {
    __break(1u);
  }

  else
  {
    v2 = v7[0];
    outlined destroy of Region?(v4, &_s15extensionFilter6RegionVSgMd, &_s15extensionFilter6RegionVSgMR);
    LOBYTE(v1) = v2 & 1;
  }

  return v1;
}

Swift::Bool __swiftcall SmsFilterModelPipeline.trialBasicModelAvailable()()
{
  (*(*v0 + 320))(v4);
  v12 = v4[6];
  v13[0] = v5[0];
  *(v13 + 9) = *(v5 + 9);
  v8 = v4[2];
  v9 = v4[3];
  v10 = v4[4];
  v11 = v4[5];
  v6 = v4[0];
  v7 = v4[1];
  v1 = _s15extensionFilter6RegionVSgWOg(&v6);
  if (v1 == 1)
  {
    __break(1u);
  }

  else
  {
    v2 = BYTE1(v7);
    outlined destroy of Region?(v4, &_s15extensionFilter6RegionVSgMd, &_s15extensionFilter6RegionVSgMR);
    LOBYTE(v1) = v2 & 1;
  }

  return v1;
}

uint64_t SmsFilterModelPipeline.retryTransitionTimerForMainModelExpired()()
{
  v1 = v0;
  v2 = type metadata accessor for DateComponents();
  v41 = *(v2 - 8);
  v42 = v2;
  v3 = *(v41 + 64);
  __chkstk_darwin(v2);
  v43 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Calendar();
  v39 = *(v5 - 8);
  v40 = v5;
  v6 = *(v39 + 64);
  __chkstk_darwin(v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v37 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v36 - v13;
  v15 = type metadata accessor for Date();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = Date.init()();
  (*(*v0 + 416))(v20);
  v38 = v16;
  result = (*(v16 + 48))(v14, 1, v15);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_7;
  }

  static Calendar.current.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation8CalendarV9ComponentOGMd, &_ss23_ContiguousArrayStorageCy10Foundation8CalendarV9ComponentOGMR);
  v22 = type metadata accessor for Calendar.Component();
  v23 = *(v22 - 8);
  v24 = *(v23 + 72);
  v25 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_100023F10;
  (*(v23 + 104))(v26 + v25, enum case for Calendar.Component.second(_:), v22);
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10Foundation8CalendarV9ComponentO_Tt0g5Tf4g_n(v26);
  swift_setDeallocating();
  (*(v23 + 8))(v26 + v25, v22);
  swift_deallocClassInstance();
  v27 = v43;
  Calendar.dateComponents(_:from:to:)();

  result = DateComponents.second.getter();
  if (v28)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v29 = result;
  (*(v41 + 8))(v27, v42);
  (*(v39 + 8))(v8, v40);
  v30 = v29 / 60;
  v31 = v38;
  v32 = *(v38 + 8);
  v33 = v32(v14, v15);
  v34 = (*(*v1 + 440))(v33);
  if (v29 / 60 >= v34)
  {
    v35 = v37;
    (*(v31 + 16))(v37, v19, v15);
    (*(v31 + 56))(v35, 0, 1, v15);
    (*(*v1 + 424))(v35);
  }

  v32(v19, v15);
  return v30 >= v34;
}

uint64_t SmsFilterModelPipeline.deinit()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 152);
  v3 = *(v0 + 184);
  v7[6] = *(v0 + 168);
  v8[0] = v3;
  *(v8 + 9) = *(v0 + 193);
  v4 = *(v0 + 88);
  v5 = *(v0 + 120);
  v7[2] = *(v0 + 104);
  v7[3] = v5;
  v7[4] = *(v0 + 136);
  v7[5] = v2;
  v7[0] = *(v0 + 72);
  v7[1] = v4;
  outlined destroy of Region?(v7, &_s15extensionFilter6RegionVSgMd, &_s15extensionFilter6RegionVSgMR);

  outlined destroy of Region?(v0 + OBJC_IVAR____TtC15extensionFilter22SmsFilterModelPipeline__dateCheckpoint, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  return v0;
}

uint64_t SmsFilterModelPipeline.__deallocating_deinit()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 152);
  v3 = *(v0 + 184);
  v9[6] = *(v0 + 168);
  v10[0] = v3;
  *(v10 + 9) = *(v0 + 193);
  v4 = *(v0 + 88);
  v5 = *(v0 + 120);
  v9[2] = *(v0 + 104);
  v9[3] = v5;
  v9[4] = *(v0 + 136);
  v9[5] = v2;
  v9[0] = *(v0 + 72);
  v9[1] = v4;
  outlined destroy of Region?(v9, &_s15extensionFilter6RegionVSgMd, &_s15extensionFilter6RegionVSgMR);

  outlined destroy of Region?(v0 + OBJC_IVAR____TtC15extensionFilter22SmsFilterModelPipeline__dateCheckpoint, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);
  return swift_deallocClassInstance();
}

uint64_t sub_10001D660@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 176))();
  *a2 = result;
  return result;
}

uint64_t sub_10001D6AC(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 184);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_10001D704@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 200))();
  *a2 = result;
  return result;
}

uint64_t sub_10001D750(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 208);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_10001D7A8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 224))();
  *a2 = result;
  return result;
}

uint64_t sub_10001D7F4(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 232);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_10001D84C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 248))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_10001D898(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 256);

  return v4(v2, v3);
}

__n128 sub_10001DA50@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(**a1 + 320))(v7);
  v3 = v8[0];
  *(a2 + 96) = v7[6];
  *(a2 + 112) = v3;
  *(a2 + 121) = *(v8 + 9);
  v4 = v7[3];
  *(a2 + 32) = v7[2];
  *(a2 + 48) = v4;
  v5 = v7[5];
  *(a2 + 64) = v7[4];
  *(a2 + 80) = v5;
  result = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_10001DAD4(_OWORD *a1, uint64_t a2)
{
  v2 = a1[3];
  v9[2] = a1[2];
  v9[3] = v2;
  *(v10 + 9) = *(a1 + 121);
  v3 = a1[7];
  v9[6] = a1[6];
  v10[0] = v3;
  v4 = a1[5];
  v9[4] = a1[4];
  v9[5] = v4;
  v5 = a1[1];
  v9[0] = *a1;
  v9[1] = v5;
  v6 = *(**a2 + 328);
  outlined init with copy of Pipeline?(v9, &v8, &_s15extensionFilter6RegionVSgMd, &_s15extensionFilter6RegionVSgMR);
  return v6(v9);
}

uint64_t sub_10001DB88@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 344))();
  *a2 = result;
  return result;
}

uint64_t sub_10001DBDC(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 352);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_10001DC3C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 368))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_10001DCE4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 392))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_10001DDDC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 440))();
  *a2 = result;
  return result;
}

uint64_t type metadata accessor for SmsFilterModelPipeline()
{
  result = type metadata singleton initialization cache for SmsFilterModelPipeline;
  if (!type metadata singleton initialization cache for SmsFilterModelPipeline)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for SmsFilterModelPipeline()
{
  type metadata accessor for Date?();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Date?()
{
  if (!lazy cache variable for type metadata for Date?)
  {
    type metadata accessor for Date();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Date?);
    }
  }
}

id specialized @nonobjc NLModel.__allocating_init(mlModel:)(uint64_t a1)
{
  v5 = 0;
  v1 = [swift_getObjCClassFromMetadata() modelWithMLModel:a1 error:&v5];
  if (v1)
  {
    v2 = v5;
  }

  else
  {
    v3 = v5;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v1;
}

void *_sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10Foundation8CalendarV9ComponentO_Tt0g5Tf4g_n(uint64_t a1)
{
  v2 = type metadata accessor for Calendar.Component();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation8CalendarV9ComponentOGMd, &_ss11_SetStorageCy10Foundation8CalendarV9ComponentOGMR);
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
      lazy protocol witness table accessor for type Calendar.Component and conformance Calendar.Component(&lazy protocol witness table cache variable for type Calendar.Component and conformance Calendar.Component);
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
          lazy protocol witness table accessor for type Calendar.Component and conformance Calendar.Component(&lazy protocol witness table cache variable for type Calendar.Component and conformance Calendar.Component);
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

  return &_swiftEmptySetSingleton;
}

uint64_t lazy protocol witness table accessor for type Calendar.Component and conformance Calendar.Component(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Calendar.Component();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t one-time initialization function for _queue()
{
  v10 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v10 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9[1] = type metadata accessor for OS_dispatch_queue();
  static DispatchQoS.unspecified.getter();
  v11 = _swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, &type metadata accessor for OS_dispatch_queue.Attributes);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v10);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  _queue = result;
  return result;
}

id MessageFilterExtension.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MessageFilterExtension.init()()
{
  v29.receiver = v0;
  v29.super_class = swift_getObjectType();
  v1 = objc_msgSendSuper2(&v29, "init");
  v2 = one-time initialization token for logger;
  v3 = v1;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, logger);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v27 = v8;
    *v7 = 136446210;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x322E302E3631, 0xE600000000000000, &v27);
    _os_log_impl(&_mh_execute_header, v5, v6, "SMSfilter: init, ver: %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
  }

  My = getMyRegions()();
  if (My)
  {
    v10 = My;
    specialized MessageFilterExtension.handleSimRemoval()();
    v11 = *(v10 + 16);
    if (v11)
    {
      v12 = (v10 + 40);
      do
      {
        v13 = *(v12 - 1);
        v14 = *v12;

        specialized MessageFilterExtension.initSMSFilter(for:)(v13, v14);

        v12 += 2;
        --v11;
      }

      while (v11);
    }

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v15, v16))
    {

      goto LABEL_19;
    }

    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v28 = v18;
    *v17 = 136315394;
    v19 = Array.description.getter();
    v21 = v20;

    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, &v28);

    *(v17 + 4) = v22;
    *(v17 + 12) = 2048;
    if (one-time initialization token for _smsfilters != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if (_smsfilters._rawValue >> 62)
    {
      v23 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v23 = *((_smsfilters._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v17 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v15, v16, "SMSfilter: init done, regions = %s, #filters = %ld", v17, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);

    goto LABEL_17;
  }

  v15 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v15, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v15, v24, "smsfilter: no supported region", v25, 2u);
LABEL_17:
  }

LABEL_19:

  return v3;
}

id MessageFilterExtension.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void MessageFilterExtension.handle(_:context:completion:)(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, logger);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "smsfilter: capabilitiesQueryRequest", v7, 2u);
  }

  v8 = specialized MessageFilterExtension.subClassificationCapabilities()();
  a3();
}

void closure #1 in MessageFilterExtension.handle(_:context:completion:)(uint64_t a1, void *a2, void (*a3)(objc_class *), uint64_t a4)
{
  v54 = a4;
  v55 = a3;
  v52 = a2;
  v51 = type metadata accessor for OSSignpostError();
  v4 = *(v51 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v51);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OSSignpostID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v49 - v15;
  __chkstk_darwin(v14);
  v18 = &v49 - v17;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v50 = v4;
  v56 = v13;
  v19 = type metadata accessor for Logger();
  v53 = __swift_project_value_buffer(v19, logger);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "smsfilter: queryRequest", v22, 2u);
  }

  if (one-time initialization token for signposter != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v23, signposter);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v24 = OSSignposter.logHandle.getter();
  v25 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    v27 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v24, v25, v27, "HandleQueryRequest", "", v26, 2u);
  }

  (*(v9 + 16))(v16, v18, v8);
  v28 = type metadata accessor for OSSignpostIntervalState();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  OSSignpostIntervalState.init(id:isOpen:)();
  v31 = *(v9 + 8);
  v31(v18, v8);
  v32 = specialized MessageFilterExtension.offlineAction(for:)(v52);
  v33 = OSSignposter.logHandle.getter();
  v34 = v56;
  OSSignpostIntervalState.signpostID.getter();
  v35 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    v37 = v50;
    v36 = v51;
    if ((*(v50 + 88))(v7, v51) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v38 = "[Error] Interval already ended";
    }

    else
    {
      (*(v37 + 8))(v7, v36);
      v38 = "";
    }

    v39 = swift_slowAlloc();
    *v39 = 0;
    v40 = v56;
    v41 = OSSignpostID.rawValue.getter();
    v42 = v38;
    v34 = v40;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v33, v35, v41, "HandleQueryRequest", v42, v39, 2u);
  }

  v31(v34, v8);
  v43 = v32;
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    *v46 = 138412290;
    *(v46 + 4) = v43;
    *v47 = v43;
    v48 = v43;
    _os_log_impl(&_mh_execute_header, v44, v45, "smsfilter: queryResponse=%@", v46, 0xCu);
    outlined destroy of Region?(v47, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  }

  v55(v43);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable () -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo24ILMessageFilterSubActionV_Tt1g5(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo24ILMessageFilterSubActionVGMd, &_ss23_ContiguousArrayStorageCySo24ILMessageFilterSubActionVGMR);
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
  v4[3] = 2 * (v9 >> 3);
  return result;
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

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned Int)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t specialized _ArrayBuffer._consumeAndCreateNew()(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0, a1);
}

uint64_t specialized Set._Variant.insert(_:)(Swift::UInt *a1, Swift::UInt a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  v7 = Hasher._finalize()();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + 8 * v9) != a2)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v11 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t specialized _NativeSet.resize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo24ILMessageFilterSubActionVGMd, &_ss11_SetStorageCySo24ILMessageFilterSubActionVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v7 = 0;
    v8 = (v3 + 56);
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
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v18);
      result = Hasher._finalize()();
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

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

void specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::UInt a1, unint64_t a2, char a3)
{
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
      specialized _NativeSet.copy()();
      a2 = v7;
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v10 = Hasher._finalize()();
  v11 = -1 << *(v8 + 32);
  a2 = v10 & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    v13 = v10 & ~v11;
    type metadata accessor for ILMessageFilterSubAction(0);
    a2 = v13;
    while (*(*(v8 + 48) + 8 * a2) != a1)
    {
      a2 = (a2 + 1) & v12;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
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

void *specialized _NativeSet.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo24ILMessageFilterSubActionVGMd, &_ss11_SetStorageCySo24ILMessageFilterSubActionVGMR);
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

uint64_t specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo24ILMessageFilterSubActionVGMd, &_ss11_SetStorageCySo24ILMessageFilterSubActionVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
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
      v18 = *(v6 + 40);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v17);
      result = Hasher._finalize()();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
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

        v2 = v26;
        goto LABEL_28;
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

void *specialized Sequence._copySequenceContents(initializing:)(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t specialized MessageFilterExtension.handleSimRemoval()()
{
  if (one-time initialization token for _smsfilters != -1)
  {
LABEL_40:
    swift_once();
  }

  v0 = &_smsfilters;
  swift_beginAccess();
  rawValue = _smsfilters._rawValue;
  if (_smsfilters._rawValue >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((_smsfilters._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v2)
  {
  }

  v4 = 0;
  v42 = rawValue & 0xC000000000000001;
  v43 = 0;
  v41 = rawValue & 0xFFFFFFFFFFFFFF8;
  v5 = -1;
  *&v3 = 136315138;
  v38 = v3;
  v39 = rawValue;
  v40 = v2;
  while (1)
  {
    if (v42)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_37;
      }
    }

    else
    {
      if (v4 >= *(v41 + 16))
      {
        goto LABEL_38;
      }

      v7 = *(rawValue + 8 * v4 + 32);

      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }
    }

    swift_beginAccess();
    memmove(__dst, (v7 + 72), 0x89uLL);
    result = _s15extensionFilter6RegionVSgWOg(__dst);
    if (result == 1)
    {
      break;
    }

    v44 = v8;
    v45 = v5;
    v11 = *(v7 + 72);
    v10 = *(v7 + 80);

    My = getMyRegions()();
    if (My)
    {
      v13 = My;
      *&v46 = v11;
      *(&v46 + 1) = v10;
      __chkstk_darwin(My);
      v37[2] = &v46;
      v14 = v43;
      v15 = specialized Sequence.contains(where:)(_sSTsSQ7ElementRpzrlE8containsySbABFSbABXEfU_SaySSG_TG5TA_0, v37, v13);
      v43 = v14;

      if (v15)
      {

        rawValue = v39;
        v6 = v45;
        goto LABEL_7;
      }

      rawValue = v39;
    }

    else
    {
    }

    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, logger);

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();

    v19 = os_log_type_enabled(v17, v18);
    v6 = v45;
    if (v19)
    {
      v20 = v0;
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v49 = v22;
      *v21 = v38;
      memmove(&v46, (v7 + 72), 0x89uLL);
      result = _s15extensionFilter6RegionVSgWOg(&v46);
      if (result == 1)
      {
        goto LABEL_45;
      }

      v24 = *(v7 + 72);
      v23 = *(v7 + 80);

      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v23, &v49);

      *(v21 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v17, v18, "smsfilter: remove filter instance for (%s)", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);

      v0 = v20;
      rawValue = v39;
      v6 = v45;
    }

    else
    {
    }

    swift_beginAccess();
    v26 = v0->_rawValue;
    if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v26 & 0x8000000000000000) != 0 || (v26 & 0x4000000000000000) != 0)
    {
      v26 = specialized _ArrayBuffer._consumeAndCreateNew()(v26);
    }

    v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4 >= v27)
    {
      goto LABEL_39;
    }

    v28 = v27 - 1;
    v29 = *((v26 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20);
    memmove(((v26 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 32), ((v26 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 40), 8 * (v6 + v27));
    *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) = v28;
    _smsfilters._rawValue = v26;
    swift_endAccess();
    swift_beginAccess();
    outlined init with copy of Pipeline?(v29 + 16, &v46);
    if (*(&v47 + 1))
    {
      outlined destroy of Region?(&v46, &_s15extensionFilter8Pipeline_pSgMd, &_s15extensionFilter8Pipeline_pSgMR);
      result = outlined init with copy of Pipeline?(v29 + 16, &v46);
      v30 = *(&v47 + 1);
      if (!*(&v47 + 1))
      {
        goto LABEL_43;
      }

      v31 = v48;
      __swift_project_boxed_opaque_existential_1(&v46, *(&v47 + 1));
      (*(v31 + 16))(v30, v31);
      __swift_destroy_boxed_opaque_existential_1Tm(&v46);
      result = swift_beginAccess();
      v32 = *(v29 + 56);
      if (!v32)
      {
        goto LABEL_44;
      }

      v33 = *(*v32 + 320);
      v34 = *(v29 + 56);

      v33(v35);
    }

    else
    {

      outlined destroy of Region?(&v46, &_s15extensionFilter8Pipeline_pSgMd, &_s15extensionFilter8Pipeline_pSgMR);
    }

    v48 = 0;
    v46 = 0u;
    v47 = 0u;
    swift_beginAccess();
    outlined assign with take of Pipeline?(&v46, v29 + 16);
    swift_endAccess();
    swift_beginAccess();
    v36 = *(v29 + 56);
    *(v29 + 56) = 0;

LABEL_7:
    ++v4;
    v5 = v6 - 1;
    if (v44 == v40)
    {
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
  return result;
}

void specialized MessageFilterExtension.initSMSFilter(for:)(uint64_t a1, unint64_t a2)
{
  if (one-time initialization token for _smsfilters != -1)
  {
LABEL_38:
    swift_once();
  }

  swift_beginAccess();
  rawValue = _smsfilters._rawValue;
  if (_smsfilters._rawValue >> 62)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((_smsfilters._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v5)
  {
    v6 = 0;
    while (1)
    {
      if ((rawValue & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
LABEL_17:
          __break(1u);
          goto LABEL_18;
        }
      }

      else
      {
        if (v6 >= *((rawValue & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_38;
        }

        v7 = *(rawValue + 8 * v6 + 32);

        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_17;
        }
      }

      swift_beginAccess();
      memmove(__dst, (v7 + 72), 0x89uLL);
      if (_s15extensionFilter6RegionVSgWOg(__dst) == 1)
      {
        __break(1u);
        return;
      }

      if (*(v7 + 72) == a1 && *(v7 + 80) == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      ++v6;
      if (v8 == v5)
      {
        goto LABEL_18;
      }
    }

    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, logger);

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v32 = v24;
      *v23 = 136315138;
      *(v23 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v32);
      _os_log_impl(&_mh_execute_header, v21, v22, "smsfilter: found a matching smsfilter for region: (%s)", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
    }

    goto LABEL_36;
  }

LABEL_18:

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, logger);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    __dst[0] = v13;
    *v12 = 136315138;
    *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, __dst);
    _os_log_impl(&_mh_execute_header, v10, v11, "smsfilter: no matching smsfilter found for region: (%s), so add one!", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
  }

  v14 = type metadata accessor for SmsFilter();
  swift_allocObject();

  v15 = SmsFilter.init(for:)(a1, a2);
  swift_beginAccess();
  memmove(__dst, (v15 + 72), 0x89uLL);
  if (_s15extensionFilter6RegionVSgWOg(__dst) != 1)
  {
    swift_beginAccess();

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_smsfilters._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_smsfilters._rawValue & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v30 = *((_smsfilters._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v31[0] = v28;
      *v27 = 136315138;
      *(v27 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v31);
      _os_log_impl(&_mh_execute_header, v25, v26, "smsfilter: new filter instance for (%s) created.", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_100023F10;
    *(v29 + 56) = v14;
    *(v29 + 32) = v15;

    print(_:separator:terminator:)();

LABEL_36:

    return;
  }

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v31[0] = v19;
    *v18 = 136315138;
    *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v31);
    _os_log_impl(&_mh_execute_header, v16, v17, "smsfilter: no active filter for region : (%s)", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
  }
}

uint64_t specialized MessageFilterExtension.subClassificationCapabilities()()
{
  v29 = &_swiftEmptySetSingleton;
  v30 = &_swiftEmptySetSingleton;
  if (one-time initialization token for _smsfilters != -1)
  {
LABEL_35:
    swift_once();
  }

  swift_beginAccess();
  rawValue = _smsfilters._rawValue;
  if (_smsfilters._rawValue >> 62)
  {
    v1 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v1 = *((_smsfilters._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v1)
  {
    v17 = &_swiftEmptySetSingleton;
LABEL_25:

    v18 = [objc_allocWithZone(ILMessageFilterCapabilitiesQueryResponse) init];
    v19 = v17[2];
    if (v19)
    {
      v20 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo24ILMessageFilterSubActionV_Tt1g5(v17[2], 0);
      v21 = specialized Sequence._copySequenceContents(initializing:)(&__dst, v20 + 4, v19, v17);
      outlined consume of Set<ILMessageFilterSubAction>.Iterator._Variant();
      if (v21 == v19)
      {
        goto LABEL_29;
      }

      __break(1u);
    }

LABEL_29:
    ILMessageFilterCapabilitiesQueryResponse.transactionalSubActions.setter();
    v22 = v29;
    v23 = v29[2];
    if (v23)
    {
      v24 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo24ILMessageFilterSubActionV_Tt1g5(v29[2], 0);
      v25 = specialized Sequence._copySequenceContents(initializing:)(&__dst, v24 + 4, v23, v22);
      outlined consume of Set<ILMessageFilterSubAction>.Iterator._Variant();
      if (v25 == v23)
      {
LABEL_33:
        ILMessageFilterCapabilitiesQueryResponse.promotionalSubActions.setter();
        return v18;
      }

      __break(1u);
    }

    goto LABEL_33;
  }

  v2 = 0;
  v3 = rawValue & 0xC000000000000001;
  v4 = rawValue & 0xFFFFFFFFFFFFFF8;
  v5 = (rawValue + 32);
  v26 = v5;
  while (1)
  {
    if (v3)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v7 = __OFADD__(v2++, 1);
      if (v7)
      {
LABEL_22:
        __break(1u);
LABEL_23:
        v17 = v30;
        goto LABEL_25;
      }
    }

    else
    {
      if (v2 >= *(v4 + 16))
      {
        __break(1u);
        goto LABEL_35;
      }

      v6 = *&v5[8 * v2];

      v7 = __OFADD__(v2++, 1);
      if (v7)
      {
        goto LABEL_22;
      }
    }

    swift_beginAccess();
    memmove(&__dst, (v6 + 72), 0x89uLL);
    result = _s15extensionFilter6RegionVSgWOg(&__dst);
    if (result == 1)
    {
      break;
    }

    if (*(v6 + 184) == 1)
    {
      v9.super.isa = SmsFilter.subClassificationCapabilities()().super.isa;
      v10 = ILMessageFilterCapabilitiesQueryResponse.transactionalSubActions.getter();
      v11 = *(v10 + 16);
      if (v11)
      {
        v12 = (v10 + 32);
        do
        {
          v13 = *v12++;
          specialized Set._Variant.insert(_:)(&v27, v13);
          --v11;
        }

        while (v11);
      }

      v14 = ILMessageFilterCapabilitiesQueryResponse.promotionalSubActions.getter();
      v15 = *(v14 + 16);
      if (v15)
      {
        v16 = 32;
        do
        {
          specialized Set._Variant.insert(_:)(&v27, *(v14 + v16));
          v16 += 8;
          --v15;
        }

        while (v15);
      }

      v5 = v26;
      if (v2 == v1)
      {
        goto LABEL_23;
      }
    }

    else
    {

      if (v2 == v1)
      {
        goto LABEL_23;
      }
    }
  }

  __break(1u);
  return result;
}

void specialized MessageFilterExtension.handle(_:context:completion:)(uint64_t a1)
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, logger);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "smsfilter: capabilitiesQueryRequest", v5, 2u);
  }

  v6 = specialized MessageFilterExtension.subClassificationCapabilities()();
  (*(a1 + 16))(a1, v6);
}

uint64_t specialized MessageFilterExtension.handle(_:context:completion:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v7 - 8);
  v8 = *(v24 + 64);
  __chkstk_darwin(v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DispatchQoS();
  v11 = *(v23 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v23);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for _queue != -1)
  {
    swift_once();
  }

  v15 = _queue;
  v16 = swift_allocObject();
  v16[2] = v3;
  v16[3] = a1;
  v16[4] = a2;
  v16[5] = a3;
  aBlock[4] = partial apply for closure #1 in MessageFilterExtension.handle(_:context:completion:);
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_1;
  v17 = _Block_copy(aBlock);
  v18 = v15;
  v19 = v3;
  v20 = a1;

  static DispatchQoS.unspecified.getter();
  v25 = _swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);

  (*(v24 + 8))(v10, v7);
  (*(v11 + 8))(v14, v23);
}

uint64_t sub_1000210BC()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100021108()
{
  v1 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t specialized MessageFilterExtension.getSmsFilter(for:)(uint64_t a1, unint64_t a2)
{
  if (one-time initialization token for _smsfilters != -1)
  {
    goto LABEL_54;
  }

LABEL_2:
  swift_beginAccess();
  rawValue = _smsfilters._rawValue;
  if (_smsfilters._rawValue >> 62)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((_smsfilters._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v5)
  {
    goto LABEL_18;
  }

  v6 = 0;
  while (1)
  {
    if ((rawValue & 0xC000000000000001) != 0)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
LABEL_17:
        __break(1u);
LABEL_18:

        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v10 = type metadata accessor for Logger();
        __swift_project_value_buffer(v10, logger);

        v11 = Logger.logObject.getter();
        v12 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v11, v12))
        {
          v13 = swift_slowAlloc();
          v14 = swift_slowAlloc();
          __dst[0] = v14;
          *v13 = 136315138;
          *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, __dst);
          _os_log_impl(&_mh_execute_header, v11, v12, "smsfilter: no smsfilter is found for region: (%s)", v13, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v14);
        }

        return 0;
      }
    }

    else
    {
      if (v6 >= *((rawValue & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        swift_once();
        goto LABEL_2;
      }

      v7 = *(rawValue + 8 * v6 + 32);

      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_17;
      }
    }

    swift_beginAccess();
    memmove(__dst, (v7 + 72), 0x89uLL);
    result = _s15extensionFilter6RegionVSgWOg(__dst);
    if (result == 1)
    {
      __break(1u);
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    if (*(v7 + 72) == a1 && *(v7 + 80) == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    ++v6;
    if (v8 == v5)
    {
      goto LABEL_18;
    }
  }

  v15 = one-time initialization token for logger;

  if (v15 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, logger);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *&v40 = v20;
    *v19 = 136315138;
    *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v40);
    _os_log_impl(&_mh_execute_header, v17, v18, "smsfilter: found smsfilter for sim region: (%s)", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
  }

  swift_beginAccess();
  outlined init with copy of Pipeline?(v7 + 16, &v40);
  v21 = *(&v41 + 1);
  outlined destroy of Region?(&v40, &_s15extensionFilter8Pipeline_pSgMd, &_s15extensionFilter8Pipeline_pSgMR);
  if (v21)
  {
    SmsFilter.update()();
    goto LABEL_49;
  }

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v43 = v25;
    *v24 = 136315138;
    memmove(&v40, (v7 + 72), 0x89uLL);
    result = _s15extensionFilter6RegionVSgWOg(&v40);
    if (result != 1)
    {
      v26 = *(v7 + 72);
      v27 = *(v7 + 80);

      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, &v43);

      *(v24 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v22, v23, "smsfilter: cleanup to load filter for region: (%s)", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v25);

      goto LABEL_32;
    }

LABEL_60:
    __break(1u);
    return result;
  }

LABEL_32:

  a2 = _smsfilters._rawValue;
  if (_smsfilters._rawValue >> 62)
  {
    a1 = _CocoaArrayWrapper.endIndex.getter();
    if (!a1)
    {
      goto LABEL_48;
    }
  }

  else
  {
    a1 = *((_smsfilters._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!a1)
    {
      goto LABEL_48;
    }
  }

  v29 = 0;
  while (2)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v35 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        goto LABEL_52;
      }
    }

    else
    {
      if (v29 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_53;
      }

      v34 = *(a2 + 8 * v29 + 32);

      v35 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        goto LABEL_52;
      }
    }

    swift_beginAccess();
    outlined init with copy of Pipeline?(v34 + 16, &v40);
    v36 = *(&v41 + 1);
    outlined destroy of Region?(&v40, &_s15extensionFilter8Pipeline_pSgMd, &_s15extensionFilter8Pipeline_pSgMR);
    if (!v36)
    {
LABEL_36:
      v42 = 0;
      v40 = 0u;
      v41 = 0u;
      swift_beginAccess();
      outlined assign with take of Pipeline?(&v40, v34 + 16);
      swift_endAccess();
      swift_beginAccess();
      v33 = *(v34 + 56);
      *(v34 + 56) = 0;

      ++v29;
      if (v35 == a1)
      {
        goto LABEL_47;
      }

      continue;
    }

    break;
  }

  result = outlined init with copy of Pipeline?(v34 + 16, &v40);
  v37 = *(&v41 + 1);
  if (!*(&v41 + 1))
  {
    goto LABEL_59;
  }

  v38 = v42;
  __swift_project_boxed_opaque_existential_1(&v40, *(&v41 + 1));
  (*(v38 + 16))(v37, v38);
  __swift_destroy_boxed_opaque_existential_1Tm(&v40);
  swift_beginAccess();
  v39 = *(v34 + 56);
  if (v39)
  {
    v30 = *(*v39 + 320);
    v31 = *(v34 + 56);

    v30(v32);

    goto LABEL_36;
  }

  __break(1u);
LABEL_47:

LABEL_48:
  SmsFilter.load()();
LABEL_49:

  return v7;
}

Class specialized MessageFilterExtension.offlineAction(for:)(void *a1)
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, logger);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "smsfilter: offlineAction", v5, 2u);
  }

  v6 = [a1 messageBody];
  if (!v6)
  {
    goto LABEL_13;
  }

  v7 = v6;
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11 = [a1 sender];
  if (!v11)
  {
LABEL_12:

LABEL_13:
    v25 = [objc_allocWithZone(ILMessageFilterQueryResponse) init];
    [v25 setAction:1];
    [v25 setSubAction:0];
    lazy protocol witness table accessor for type SFEError and conformance SFEError();
    swift_allocError();
    *v26 = 0;
    goto LABEL_14;
  }

  v12 = v11;
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v16 = [a1 receiverISOCountryCode];
  if (!v16)
  {

    goto LABEL_12;
  }

  v17 = v16;
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  if (specialized MessageFilterExtension.getSmsFilter(for:)(v18, v20))
  {

    v21._countAndFlagsBits = v13;
    v21._object = v15;
    v22._countAndFlagsBits = v8;
    v22._object = v10;
    isa = SmsFilter.classifyAction(sender:messageBody:)(v21, v22).super.isa;

    return isa;
  }

  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v34 = v31;
    *v30 = 136315138;
    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v34);

    *(v30 + 4) = v32;
    _os_log_impl(&_mh_execute_header, v28, v29, "smsfilter: no smsfilter found for - %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v31);
  }

  else
  {
  }

  v25 = [objc_allocWithZone(ILMessageFilterQueryResponse) init];
  [v25 setAction:1];
  [v25 setSubAction:0];
  lazy protocol witness table accessor for type SFEError and conformance SFEError();
  swift_allocError();
  *v33 = 1;
LABEL_14:
  v27 = _convertErrorToNSError(_:)();

  [v25 setError:v27];

  [v25 setVersion:0];
  return v25;
}

uint64_t outlined init with copy of Pipeline?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15extensionFilter8Pipeline_pSgMd, &_s15extensionFilter8Pipeline_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
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

uint64_t lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(unint64_t *a1, void (*a2)(uint64_t))
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

Swift::String __swiftcall Substring.uppercased()()
{
  v0 = Substring.uppercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}