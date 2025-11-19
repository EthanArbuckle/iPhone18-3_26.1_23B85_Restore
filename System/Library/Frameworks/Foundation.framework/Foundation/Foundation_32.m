uint64_t specialized closure #1 in FormatterCache.formatter(for:creator:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t (*a3)(uint64_t, void, void, void, void)@<X2>, uint64_t *a4@<X8>)
{
  result = a3(a1, *a2, a2[1], a2[2], a2[3]);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

void *__cdecl NSZoneMalloc(NSZone *zone, NSUInteger size)
{
  if (!zone)
  {
    zone = malloc_default_zone();
  }

  return malloc_type_zone_malloc(zone, size, 0x409734D7uLL);
}

uint64_t protocol witness for _LocaleProtocol.identifierCapturingPreferences.getter in conformance _LocaleICU()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t outlined init with copy of FloatingPointRoundingRule?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss25FloatingPointRoundingRuleOSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *ICUNumberFormatterBase.init(skeleton:localeIdentifier:)(uint64_t a1, unint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v2[3] = a1;
  v2[4] = a2;

  v5 = MEMORY[0x1865CB200](a1, a2);
  if (v5)
  {
    v6 = v5;
    v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs6UInt16V_Tt1gq5(v5, 0);

    v8 = specialized Sequence._copySequenceContents(initializing:)(&v11, (v7 + 4), v6, a1, a2);

    if (v8 != v6)
    {
      goto LABEL_13;
    }
  }

  else
  {

    v7 = MEMORY[0x1E69E7CC0];
  }

  v11 = 0;
  if (v7[2] >> 31)
  {
    __break(1u);
LABEL_13:
    __break(1u);
  }

  String.utf8CString.getter();

  v9 = unumf_openForSkeletonAndLocale();

  if (v9)
  {
    if (v11 <= 0)
    {
      v2[2] = v9;
      return v2;
    }

    unumf_close();
  }

  type metadata accessor for ICUNumberFormatterBase();
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t ICUNumberFormatterBase.FormatResult.__deallocating_deinit()
{
  unumf_closeResult();

  return swift_deallocClassInstance();
}

uint64_t JSONDecoderImpl.unwrapURL<A>(from:for:_:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v73 = a7;
  v74 = a5;
  v77 = a4;
  v69 = a8;
  v72 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v68 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v64 - v15;
  v71 = type metadata accessor for Optional();
  v70 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  MEMORY[0x1EEE9AC00](v17);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v64 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v64 - v24;
  if ((a3 & 0xE0) == 0xA0 && !(a2 | a1) && a3 == 160)
  {
    v69 = type metadata accessor for DecodingError();
    swift_allocError();
    v68 = v26;
    *v26 = &type metadata for URL;
    v27 = v70;
    v28 = *(v70 + 16);
    v29 = v71;
    v28(v25, v74, v71);
    v28(v20, v25, v29);
    v30 = v72;
    if ((*(v72 + 48))(v20, 1, a6) == 1)
    {
      v31 = *(v27 + 8);
      v31(v20, v29);
      _CodingPathNode.path.getter(v77);
      v31(v25, v29);
    }

    else
    {
      (*(v30 + 32))(v16, v20, a6);
      v44 = _CodingPathNode.path.getter(v77);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_181218E20;
      v46 = v73;
      *(inited + 56) = a6;
      *(inited + 64) = v46;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
      (*(v30 + 16))(boxed_opaque_existential_0, v16, a6);
      v75 = v44;
      specialized Array.append<A>(contentsOf:)(inited);
      (*(v30 + 8))(v16, a6);
      (*(v27 + 8))(v25, v29);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
    v75 = 0;
    v76 = 0xE000000000000000;
    _StringGuts.grow(_:)(55);
    MEMORY[0x1865CB0E0](0xD000000000000019, 0x8000000181481E50);
    MEMORY[0x1865CB0E0](5001813, 0xE300000000000000);
    MEMORY[0x1865CB0E0](0xD00000000000001CLL, 0x8000000181481E70);
    v48 = v68;
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v69 - 1) + 104))(v48, *MEMORY[0x1E69E6B08]);
  }

  else
  {
    v66 = v23;
    v67 = v22;
    result = JSONDecoderImpl.unwrapString<A>(from:for:_:)(a1, a2, a3, v77, v74, a6, v73);
    if (v8)
    {
      return result;
    }

    v34 = v33;
    if (one-time initialization token for compatibility2 != -1)
    {
      v63 = result;
      swift_once();
      result = v63;
    }

    v35 = result;
    v36 = v72;
    if (static URL.compatibility2 == 1 || (_foundation_swift_url_feature_enabled() & 1) == 0)
    {
      v37 = type metadata accessor for _BridgedURL();
      v38 = &protocol witness table for _BridgedURL;
    }

    else
    {
      v37 = type metadata accessor for _SwiftURL();
      v38 = &protocol witness table for _SwiftURL;
    }

    v39 = v38[1];

    if (v39(v35, v34, v37, v38))
    {
      v40 = (v38[56])(v37, v38);
      v42 = v41;

      result = swift_unknownObjectRelease();
      v43 = v69;
      *v69 = v40;
      v43[1] = v42;
      return result;
    }

    v69 = type metadata accessor for DecodingError();
    swift_allocError();
    v65 = v49;
    v50 = v70;
    v51 = *(v70 + 16);
    v52 = v67;
    v53 = v71;
    v51(v67, v74, v71);
    v54 = v66;
    v51(v66, v52, v53);
    if ((*(v36 + 48))(v54, 1, a6) == 1)
    {
      v55 = *(v50 + 8);
      v55(v54, v53);
      _CodingPathNode.path.getter(v77);
      v55(v52, v53);
    }

    else
    {
      v56 = v68;
      (*(v36 + 32))(v68, v54, a6);
      v57 = _CodingPathNode.path.getter(v77);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
      v58 = v50;
      v59 = swift_initStackObject();
      *(v59 + 16) = xmmword_181218E20;
      v60 = v73;
      *(v59 + 56) = a6;
      *(v59 + 64) = v60;
      v61 = __swift_allocate_boxed_opaque_existential_0((v59 + 32));
      (*(v36 + 16))(v61, v56, a6);
      v75 = v57;
      specialized Array.append<A>(contentsOf:)(v59);
      (*(v36 + 8))(v56, a6);
      (*(v58 + 8))(v52, v53);
    }

    v62 = v65;
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v69 - 1) + 104))(v62, *MEMORY[0x1E69E6B00]);
  }

  return swift_willThrow();
}

void TimeZone.init(from:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation8TimeZoneV10CodingKeys33_FCA19904DF8ABA4A431CA6B8207AE9D9LLOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v21 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TimeZone.CodingKeys and conformance TimeZone.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    LOBYTE(v21[0]) = 1;
    v9 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    if (v9 == 2 || (v9 & 1) == 0)
    {
      LOBYTE(v21[0]) = 0;
      v12 = KeyedDecodingContainer.decode(_:forKey:)();
      v14 = v13;
      if (one-time initialization token for cache != -1)
      {
        v20 = v12;
        swift_once();
        v12 = v20;
      }

      v22 = v21;
      v15 = static TimeZoneCache.cache;
      MEMORY[0x1EEE9AC00](v12);
      v21[-2] = v16;
      v21[-1] = v14;
      os_unfair_lock_lock(v15 + 30);
      closure #1 in TimeZoneCache.fixed(_:)partial apply(v21);
      os_unfair_lock_unlock(v15 + 30);
      inited = v21[0];
      v11 = v21[1];

      if (!inited)
      {
        v17 = type metadata accessor for DecodingError();
        swift_allocError();
        v22 = v18;
        __swift_project_boxed_opaque_existential_1(a1, a1[3]);
        dispatch thunk of Decoder.codingPath.getter();
        v19 = v22;
        DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
        (*(*(v17 - 8) + 104))(v19, *MEMORY[0x1E69E6B00], v17);
        swift_willThrow();
        (*(v6 + 8))(v8, v5);
        goto LABEL_8;
      }
    }

    else
    {
      if (one-time initialization token for cache != -1)
      {
        swift_once();
      }

      type metadata accessor for _TimeZoneAutoupdating();
      inited = swift_initStaticObject();
      v11 = _s10Foundation16_TimeZoneBridgedCAcA01_bC8ProtocolAAWlTm_1(&lazy protocol witness table cache variable for type _TimeZoneAutoupdating and conformance _TimeZoneAutoupdating, type metadata accessor for _TimeZoneAutoupdating);
    }

    (*(v6 + 8))(v8, v5);
    *a2 = inited;
    a2[1] = v11;
  }

LABEL_8:
  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t Calendar.identifier.getter()
{
  v1 = *(v0 + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 24))(ObjectType, v1);
}

uint64_t type metadata instantiation function for MeasurementFormatUnitUsage()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t Usage.rawValue.getter(char a1)
{
  result = 0x746C7561666564;
  switch(a1)
  {
    case 1:
      result = 0x6E6F73726570;
      break;
    case 2:
      result = 1685024614;
      break;
    case 3:
      result = 0x682D6E6F73726570;
      break;
    case 4:
      result = 1684107122;
      break;
    case 5:
      result = 0x656C2D6C61636F66;
      break;
    case 6:
      v3 = 1852399986;
      goto LABEL_13;
    case 7:
      v3 = 2003791475;
LABEL_13:
      result = v3 | 0x6C6C616600000000;
      break;
    case 8:
      result = 0x79746C6269736976;
      break;
    case 9:
      result = 0x6372746D6F726162;
      break;
    case 10:
      result = 1684957559;
      break;
    case 11:
      result = 0x72656874616577;
      break;
    case 12:
      result = 0x6469756C66;
      break;
    case 13:
      result = 0x6469766F72507361;
      break;
    default:
      return result;
  }

  return result;
}

id NSUnitLength.init(forLocale:usage:)(uint64_t a1, char *a2, unint64_t *a3)
{
  v43 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 8);
  v36 = *a2;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v38 = [ObjCClassFromMetadata baseUnit];
  ObjectType = swift_getObjectType();
  (*(v4 + 448))(&v41, ObjectType, v4);
  v6 = v42;
  if (v42)
  {
    v7 = v41;
    v8 = (*(v4 + 64))(ObjectType, v4);
    v41 = 29549;
    v42 = 0xE200000000000000;
    specialized static Locale.identifierWithKeywordValue(_:key:value:)(v8);

    outlined consume of Locale.LanguageCode?(v7, v6);
  }

  else
  {
    (*(v4 + 64))(ObjectType, v4);
  }

  type metadata accessor for NSMorphologyPronoun(0, a3);
  v9 = [swift_getObjCClassFromMetadata() icuType];
  if (!v9)
  {
    Usage.rawValue.getter(v36);
    goto LABEL_32;
  }

  v10 = v9;
  isTaggedPointer = _objc_isTaggedPointer(v9);
  v12 = v10;
  v13 = v12;
  if (!isTaggedPointer)
  {
    goto LABEL_10;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v12);
  if (TaggedPointerTag)
  {
    if (TaggedPointerTag != 22)
    {
      if (TaggedPointerTag == 2)
      {
        MEMORY[0x1EEE9AC00](TaggedPointerTag);
        v15 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        v17 = v16;

        goto LABEL_28;
      }

LABEL_10:
      v41 = 0;
      if (__CFStringIsCF())
      {
        if (v41)
        {
LABEL_26:
          v15 = String.init(_cocoaString:)();
          v17 = v27;
          goto LABEL_27;
        }
      }

      else
      {
        v18 = v13;
        v19 = String.init(_nativeStorage:)();
        if (v20)
        {
          v15 = v19;
          v17 = v20;

          goto LABEL_28;
        }

        v41 = [v18 length];
        if (v41)
        {
          goto LABEL_26;
        }
      }

      v21 = Usage.rawValue.getter(v36);
      v23 = v22;
      goto LABEL_33;
    }

    result = [v13 UTF8String];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v25 = String.init(utf8String:)(result);
    if (v26)
    {
      goto LABEL_22;
    }

    __break(1u);
  }

  _CFIndirectTaggedPointerStringGetContents();
  v25 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
  if (!v26)
  {
    [v13 mutableCopy];
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
    swift_dynamicCast();
    v15 = v39;
    v17 = v40;
    goto LABEL_27;
  }

LABEL_22:
  v15 = v25;
  v17 = v26;

LABEL_27:
LABEL_28:
  v21 = Usage.rawValue.getter(v36);
  v23 = v28;
  if (v17)
  {
    if (v15 == 0x796772656E65 && v17 == 0xE600000000000000)
    {
LABEL_34:
      if (v21 == 0x746C7561666564 && v23 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        v29 = 0;
        goto LABEL_39;
      }

LABEL_38:
      v29 = 0;
      goto LABEL_39;
    }

LABEL_33:
    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_34;
  }

LABEL_32:
  v29 = 1;
LABEL_39:
  String.utf8CString.getter();

  if ((v29 & 1) == 0)
  {
    String.utf8CString.getter();
  }

  String.utf8CString.getter();
  uameasfmt_getUnitsForUsage();

  swift_unknownObjectRelease();

  v34 = getDimensionUnitFromUnitSpecifier(0);

  if (v34)
  {
    objc_opt_self();
    v35 = swift_dynamicCastObjCClass();
    if (v35)
    {
      v31 = v35;
    }

    else
    {

      v31 = v38;
    }

    v30 = ObjCClassFromMetadata;
  }

  else
  {
    v30 = ObjCClassFromMetadata;
    v31 = v38;
  }

  v32 = [objc_allocWithZone(v30) initWithDimension_];
  if (!v32)
  {
    __break(1u);
  }

  v33 = v32;
  swift_unknownObjectRelease();

  return v33;
}

void *specialized closure #1 in JSONMap.withBuffer<A>(for:perform:)@<X0>(void *result@<X0>, void *(*a2)(uint64_t *__return_ptr, uint64_t, uint64_t, void, uint64_t)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, _DWORD *a5@<X8>)
{
  v7 = result[1];
  v8 = v7 < a4 + a3 || v7 < a4;
  if (v8 || (a4 | a3) < 0 || v7 <= a3)
  {
    __break(1u);
  }

  else
  {
    result = a2(&v9, *result + a3, a4, *result, v7);
    if (!v5)
    {
      *a5 = v9;
    }
  }

  return result;
}

{
  v7 = result[1];
  v8 = v7 < a4 + a3 || v7 < a4;
  if (v8 || (a4 | a3) < 0 || v7 <= a3)
  {
    __break(1u);
  }

  else
  {
    result = a2(&v9, *result + a3, a4, *result, v7);
    if (!v5)
    {
      *a5 = v9;
    }
  }

  return result;
}

uint64_t MeasurementFormatUnitUsage.hash(into:)()
{
  String.hash(into:)();
}

id NSUnitPressure.init(forLocale:usage:)(uint64_t a1, char *a2)
{

  return NSUnitLength.init(forLocale:usage:)(a1, a2, &lazy cache variable for type metadata for NSUnitPressure);
}

void _LocaleICU.temperatureUnit.getter(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 136);
  v4 = *(v1 + 168);
  v10[6] = *(v1 + 152);
  *v11 = v4;
  *&v11[12] = *(v1 + 180);
  v5 = *(v1 + 72);
  v6 = *(v1 + 104);
  v10[2] = *(v1 + 88);
  v10[3] = v6;
  v10[4] = *(v1 + 120);
  v10[5] = v3;
  v10[0] = *(v1 + 56);
  v10[1] = v5;
  if (_s10Foundation17LocalePreferencesVSgWOg(v10) == 1 || v11[25] == 2)
  {
    v7 = *(v1 + 200);
    os_unfair_lock_lock(v7 + 134);
    partial apply for closure #1 in _LocaleICU.temperatureUnit.getter(&v7[4], &v9);
    os_unfair_lock_unlock(v7 + 134);
    v8 = v9;
  }

  else
  {
    v8 = v11[25] & 1;
  }

  *a1 = v8;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TimeZone()
{
  v1 = *(v0 + 8);
  Hasher.init(_seed:)();
  ObjectType = swift_getObjectType();
  (*(v1 + 120))(v4, ObjectType, v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for _LocaleProtocol.forceTemperatureUnit.getter in conformance _LocaleAutoupdating()
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  LocaleCache._currentAndCache.getter();
  v1 = v0;
  ObjectType = swift_getObjectType();
  (*(v1 + 456))(ObjectType, v1);

  return swift_unknownObjectRelease();
}

void *partial apply for specialized closure #1 in JSONMap.withBuffer<A>(for:perform:)@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  return specialized closure #1 in JSONMap.withBuffer<A>(for:perform:)(a1, *(v2 + 16), *(v2 + 32), *(v2 + 40), a2);
}

{
  return partial apply for specialized closure #1 in JSONMap.withBuffer<A>(for:perform:)(a1, a2);
}

{
  return specialized closure #1 in JSONMap.withBuffer<A>(for:perform:)(a1, *(v2 + 16), *(v2 + 32), *(v2 + 40), a2);
}

unint64_t specialized _parseInteger<A>(_:)(unsigned __int8 *a1, uint64_t a2)
{
  if (!a2)
  {
    goto LABEL_37;
  }

  v2 = *a1;
  if (v2 == 43)
  {
    if (a2 >= 2)
    {
      v13 = a1 + 1;
      if (a1 + 1 < &a1[a2])
      {
        v14 = 0;
        v15 = a2 - 1;
        while (1)
        {
          v16 = *v13 - 48;
          if (v16 > 9)
          {
            break;
          }

          v7 = 0;
          v17 = 10 * v14;
          v18 = v17 != v17;
          v10 = __OFADD__(v17, v16);
          v14 = v17 + v16;
          v19 = v10;
          v12 = 1;
          if (!v18 && (v19 & 1) == 0)
          {
            v12 = 0;
            ++v13;
            v7 = v14;
            if (--v15)
            {
              continue;
            }
          }

          return v7 | (v12 << 32);
        }

        goto LABEL_37;
      }

      goto LABEL_36;
    }

    goto LABEL_37;
  }

  if (v2 != 45)
  {
    if (a2 >= 1)
    {
      v20 = 0;
      v21 = &a1[a2];
      while (1)
      {
        v22 = *a1 - 48;
        if (v22 > 9)
        {
          break;
        }

        v7 = 0;
        v23 = 10 * v20;
        v24 = v23 != v23;
        v10 = __OFADD__(v23, v22);
        v20 = v23 + v22;
        v25 = v10;
        v12 = 1;
        if (!v24 && (v25 & 1) == 0)
        {
          v12 = 0;
          ++a1;
          v7 = v20;
          if (a1 < v21)
          {
            continue;
          }
        }

        return v7 | (v12 << 32);
      }

      goto LABEL_37;
    }

    goto LABEL_36;
  }

  if (a2 < 2)
  {
LABEL_37:
    v7 = 0;
    v12 = 1;
    return v7 | (v12 << 32);
  }

  v3 = a1 + 1;
  if (a1 + 1 < &a1[a2])
  {
    v4 = 0;
    v5 = a2 - 1;
    while (1)
    {
      v6 = *v3 - 48;
      if (v6 > 9)
      {
        break;
      }

      v7 = 0;
      v8 = 10 * v4;
      v9 = v8 != v8;
      v10 = __OFSUB__(v8, v6);
      v4 = v8 - v6;
      v11 = v10;
      v12 = 1;
      if (!v9 && (v11 & 1) == 0)
      {
        v12 = 0;
        ++v3;
        v7 = v4;
        if (--v5)
        {
          continue;
        }
      }

      return v7 | (v12 << 32);
    }

    goto LABEL_37;
  }

LABEL_36:
  v7 = 0;
  v12 = 0;
  return v7 | (v12 << 32);
}

{
  if (!a2)
  {
    goto LABEL_37;
  }

  v2 = *a1;
  if (v2 == 43)
  {
    if (a2 >= 2)
    {
      v13 = a1 + 1;
      if (a1 + 1 < &a1[a2])
      {
        v14 = 0;
        v15 = a2 - 1;
        while (1)
        {
          v16 = *v13 - 48;
          if (v16 > 9)
          {
            break;
          }

          v7 = 0;
          v17 = 10 * v14;
          v18 = (v17 & 0xFFFFFFFF00000000) != 0;
          v10 = __CFADD__(v17, v16);
          v14 = v17 + v16;
          v19 = v10;
          v12 = 1;
          if (!v18 && (v19 & 1) == 0)
          {
            v12 = 0;
            ++v13;
            v7 = v14;
            if (--v15)
            {
              continue;
            }
          }

          return v7 | (v12 << 32);
        }

        goto LABEL_37;
      }

      goto LABEL_36;
    }

    goto LABEL_37;
  }

  if (v2 != 45)
  {
    if (a2 >= 1)
    {
      v20 = 0;
      v21 = &a1[a2];
      while (1)
      {
        v22 = *a1 - 48;
        if (v22 > 9)
        {
          break;
        }

        v7 = 0;
        v23 = 10 * v20;
        v24 = (v23 & 0xFFFFFFFF00000000) != 0;
        v10 = __CFADD__(v23, v22);
        v20 = v23 + v22;
        v25 = v10;
        v12 = 1;
        if (!v24 && (v25 & 1) == 0)
        {
          v12 = 0;
          ++a1;
          v7 = v20;
          if (a1 < v21)
          {
            continue;
          }
        }

        return v7 | (v12 << 32);
      }

      goto LABEL_37;
    }

    goto LABEL_36;
  }

  if (a2 < 2)
  {
LABEL_37:
    v7 = 0;
    v12 = 1;
    return v7 | (v12 << 32);
  }

  v3 = a1 + 1;
  if (a1 + 1 < &a1[a2])
  {
    v4 = 0;
    v5 = a2 - 1;
    while (1)
    {
      v6 = *v3 - 48;
      if (v6 > 9)
      {
        break;
      }

      v7 = 0;
      v8 = 10 * v4;
      v9 = (v8 & 0xFFFFFFFF00000000) != 0;
      v10 = v8 >= v6;
      v4 = v8 - v6;
      v11 = !v10;
      v12 = 1;
      if (!v9 && (v11 & 1) == 0)
      {
        v12 = 0;
        ++v3;
        v7 = v4;
        if (--v5)
        {
          continue;
        }
      }

      return v7 | (v12 << 32);
    }

    goto LABEL_37;
  }

LABEL_36:
  v7 = 0;
  v12 = 0;
  return v7 | (v12 << 32);
}

void *URL.append<A>(path:directoryHint:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = *a2;
  v10 = *v4;
  v11 = v5[1];
  ObjectType = swift_getObjectType();
  v15 = v9;
  result = (*(v11 + 352))(v16, a1, &v15, a3, a4, ObjectType, v11);
  v14 = v16[0];
  if (v16[0])
  {
    v11 = v16[1];
    result = swift_unknownObjectRelease();
    v10 = v14;
  }

  *v5 = v10;
  v5[1] = v11;
  return result;
}

uint64_t protocol witness for _LocaleProtocol.forceMeasurementSystem.getter in conformance _LocaleAutoupdating()
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  LocaleCache._currentAndCache.getter();
  v1 = v0;
  ObjectType = swift_getObjectType();
  (*(v1 + 448))(ObjectType, v1);

  return swift_unknownObjectRelease();
}

uint64_t closure #1 in _LocaleICU.temperatureUnit.getter@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(result + 312);
  if (v3 == 2)
  {
    v4 = result;
    String.utf8CString.getter();
    uameasfmt_getUnitsForUsage();

    *(v4 + 312) = 1;
    *a2 = 1;
  }

  else
  {
    *a2 = v3 & 1;
  }

  return result;
}

id NSUnitSpeed.init(forLocale:usage:)(uint64_t a1, char *a2)
{

  return NSUnitLength.init(forLocale:usage:)(a1, a2, &lazy cache variable for type metadata for NSUnitSpeed);
}

unint64_t lazy protocol witness table accessor for type TimeZone and conformance TimeZone()
{
  result = lazy protocol witness table cache variable for type TimeZone and conformance TimeZone;
  if (!lazy protocol witness table cache variable for type TimeZone and conformance TimeZone)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TimeZone and conformance TimeZone);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TimeZone and conformance TimeZone;
  if (!lazy protocol witness table cache variable for type TimeZone and conformance TimeZone)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TimeZone and conformance TimeZone);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TimeZone and conformance TimeZone;
  if (!lazy protocol witness table cache variable for type TimeZone and conformance TimeZone)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TimeZone and conformance TimeZone);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TimeZone and conformance TimeZone;
  if (!lazy protocol witness table cache variable for type TimeZone and conformance TimeZone)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TimeZone and conformance TimeZone);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TimeZone and conformance TimeZone;
  if (!lazy protocol witness table cache variable for type TimeZone and conformance TimeZone)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TimeZone and conformance TimeZone);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TimeZone and conformance TimeZone;
  if (!lazy protocol witness table cache variable for type TimeZone and conformance TimeZone)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TimeZone and conformance TimeZone);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TimeZone and conformance TimeZone;
  if (!lazy protocol witness table cache variable for type TimeZone and conformance TimeZone)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TimeZone and conformance TimeZone);
  }

  return result;
}

NSUnitVolume *getDimensionUnitFromUnitSpecifier(int a1)
{
  if (a1 > 1)
  {
    if (a1 - 256 > 4)
    {
      if (a1 - 512 > 8)
      {
        if ((a1 - 4609) <= 8 && ((1 << (a1 - 1)) & 0x103) != 0)
        {
          v2 = NSUnitConcentrationMass;
          return [(__objc2_class *)v2 baseUnit];
        }

        v4 = a1 & 0xFFFFFFFC;
        if (v4 == 3328)
        {
          v1 = NSUnitFuelEfficiency;
          if (a1 == 3331)
          {
            return +[NSUnitFuelEfficiency milesPerImperialGallon];
          }

          else
          {
            if (a1 != 3329)
            {
              goto LABEL_3;
            }

            return +[NSUnitFuelEfficiency milesPerGallon];
          }
        }

        else
        {
          if (a1 == 4611)
          {
            v2 = NSUnitDispersion;
            return [(__objc2_class *)v2 baseUnit];
          }

          if (a1 - 1024 > 9)
          {
            if ((a1 & 0xFFFFFFFE) == 0xF00)
            {
              v1 = NSUnitElectricCurrent;
              if (a1 != 3841)
              {
                goto LABEL_3;
              }

              return +[NSUnitElectricCurrent milliamperes];
            }

            else
            {
              if (a1 == 3842)
              {
                v2 = NSUnitElectricResistance;
                return [(__objc2_class *)v2 baseUnit];
              }

              if (a1 == 3843)
              {
                v2 = NSUnitElectricPotentialDifference;
                return [(__objc2_class *)v2 baseUnit];
              }

              if (a1 - 3072 > 5)
              {
                if (v4 == 4096)
                {
                  v1 = NSUnitFrequency;
                  switch(a1)
                  {
                    case 4097:
                      return +[NSUnitFrequency kilohertz];
                    case 4098:
                      return +[NSUnitFrequency megahertz];
                    case 4099:
                      return +[NSUnitFrequency gigahertz];
                    default:
                      goto LABEL_3;
                  }
                }

                else
                {
                  if (a1 == 4352)
                  {
                    v2 = NSUnitIlluminance;
                    return [(__objc2_class *)v2 baseUnit];
                  }

                  if (a1 - 3584 > 0xA)
                  {
                    if (a1 - 1280 > 0x12)
                    {
                      if (a1 - 1536 > 0xA)
                      {
                        if (a1 - 1792 > 5)
                        {
                          if (a1 > 2051)
                          {
                            if (a1 > 2054)
                            {
                              if (a1 == 2055)
                              {
                                return +[NSUnitPressure megapascals];
                              }

                              if (a1 == 2057)
                              {
                                return +[NSUnitPressure bars];
                              }
                            }

                            else
                            {
                              if (a1 == 2052)
                              {
                                return +[NSUnitPressure poundsForcePerSquareInch];
                              }

                              if (a1 == 2054)
                              {
                                return +[NSUnitPressure kilopascals];
                              }
                            }
                          }

                          else
                          {
                            if (a1 > 2049)
                            {
                              if (a1 == 2050)
                              {
                                return +[NSUnitPressure millibars];
                              }

                              else
                              {
                                return +[NSUnitPressure millimetersOfMercury];
                              }
                            }

                            if (a1 == 2048)
                            {
                              return +[NSUnitPressure hectopascals];
                            }

                            if (a1 == 2049)
                            {
                              return +[NSUnitPressure inchesOfMercury];
                            }
                          }

                          if (v4 == 2304)
                          {
                            v1 = NSUnitSpeed;
                            switch(a1)
                            {
                              case 2307:
                                return +[NSUnitSpeed knots];
                              case 2306:
                                return +[NSUnitSpeed milesPerHour];
                              case 2305:
                                return +[NSUnitSpeed kilometersPerHour];
                              default:
                                goto LABEL_3;
                            }
                          }

                          else if (a1 - 2560 > 2)
                          {
                            if ((a1 - 2823) < 0x10 || (a1 - 2816) <= 0x18 && ((1 << a1) & 0x100003F) != 0)
                            {
                              v1 = NSUnitVolume;
                              switch(a1)
                              {
                                case 2817:
                                  result = +[NSUnitVolume cubicKilometers];
                                  break;
                                case 2818:
                                  result = +[NSUnitVolume cubicMiles];
                                  break;
                                case 2819:
                                  result = +[NSUnitVolume milliliters];
                                  break;
                                case 2820:
                                  result = +[NSUnitVolume centiliters];
                                  break;
                                case 2821:
                                  result = +[NSUnitVolume deciliters];
                                  break;
                                case 2823:
                                  result = +[NSUnitVolume megaliters];
                                  break;
                                case 2824:
                                  result = +[NSUnitVolume cubicCentimeters];
                                  break;
                                case 2825:
                                  result = +[NSUnitVolume cubicMeters];
                                  break;
                                case 2826:
                                  result = +[NSUnitVolume cubicInches];
                                  break;
                                case 2827:
                                  result = +[NSUnitVolume cubicFeet];
                                  break;
                                case 2828:
                                  result = +[NSUnitVolume cubicYards];
                                  break;
                                case 2829:
                                  result = +[NSUnitVolume acreFeet];
                                  break;
                                case 2830:
                                  result = +[NSUnitVolume bushels];
                                  break;
                                case 2831:
                                  result = +[NSUnitVolume teaspoons];
                                  break;
                                case 2832:
                                  result = +[NSUnitVolume tablespoons];
                                  break;
                                case 2833:
                                  result = +[NSUnitVolume fluidOunces];
                                  break;
                                case 2834:
                                  result = +[NSUnitVolume cups];
                                  break;
                                case 2835:
                                  result = +[NSUnitVolume pints];
                                  break;
                                case 2836:
                                  result = +[NSUnitVolume quarts];
                                  break;
                                case 2837:
                                  result = +[NSUnitVolume gallons];
                                  break;
                                case 2838:
                                  result = +[NSUnitVolume metricCups];
                                  break;
                                case 2840:
                                  result = +[NSUnitVolume imperialGallons];
                                  break;
                                default:
                                  goto LABEL_3;
                              }
                            }

                            else
                            {
                              return 0;
                            }
                          }

                          else
                          {
                            v1 = NSUnitTemperature;
                            if (a1 == 2561)
                            {
                              return +[NSUnitTemperature fahrenheit];
                            }

                            else
                            {
                              if (a1 != 2560)
                              {
                                goto LABEL_3;
                              }

                              return +[NSUnitTemperature celsius];
                            }
                          }
                        }

                        else
                        {
                          v1 = NSUnitPower;
                          if (a1 <= 1794)
                          {
                            if (a1 == 1793)
                            {
                              return +[NSUnitPower kilowatts];
                            }

                            else
                            {
                              if (a1 != 1794)
                              {
                                goto LABEL_3;
                              }

                              return +[NSUnitPower horsepower];
                            }
                          }

                          else
                          {
                            switch(a1)
                            {
                              case 1795:
                                return +[NSUnitPower milliwatts];
                              case 1796:
                                return +[NSUnitPower megawatts];
                              case 1797:
                                return +[NSUnitPower gigawatts];
                              default:
                                goto LABEL_3;
                            }
                          }
                        }
                      }

                      else
                      {
                        v1 = NSUnitMass;
                        if (a1 > 1541)
                        {
                          if (a1 <= 1543)
                          {
                            if (a1 == 1542)
                            {
                              return +[NSUnitMass milligrams];
                            }

                            else
                            {
                              return +[NSUnitMass metricTons];
                            }
                          }

                          else
                          {
                            switch(a1)
                            {
                              case 1544:
                                return +[NSUnitMass shortTons];
                              case 1545:
                                return +[NSUnitMass carats];
                              case 1546:
                                return +[NSUnitMass ouncesTroy];
                              default:
                                goto LABEL_3;
                            }
                          }
                        }

                        else if (a1 <= 1538)
                        {
                          if (a1 == 1536)
                          {
                            return +[NSUnitMass grams];
                          }

                          else
                          {
                            if (a1 != 1538)
                            {
                              goto LABEL_3;
                            }

                            return +[NSUnitMass ounces];
                          }
                        }

                        else if (a1 == 1539)
                        {
                          return +[NSUnitMass poundsMass];
                        }

                        else if (a1 == 1540)
                        {
                          return +[NSUnitMass stones];
                        }

                        else
                        {
                          return +[NSUnitMass micrograms];
                        }
                      }
                    }

                    else
                    {
                      v1 = NSUnitLength;
                      switch(a1)
                      {
                        case 1281:
                          result = +[NSUnitLength centimeters];
                          break;
                        case 1282:
                          result = +[NSUnitLength kilometers];
                          break;
                        case 1283:
                          result = +[NSUnitLength millimeters];
                          break;
                        case 1284:
                          result = +[NSUnitLength picometers];
                          break;
                        case 1285:
                          result = +[NSUnitLength feet];
                          break;
                        case 1286:
                          result = +[NSUnitLength inches];
                          break;
                        case 1287:
                          result = +[NSUnitLength miles];
                          break;
                        case 1288:
                          result = +[NSUnitLength yards];
                          break;
                        case 1289:
                          result = +[NSUnitLength lightyears];
                          break;
                        case 1290:
                          result = +[NSUnitLength decimeters];
                          break;
                        case 1291:
                          result = +[NSUnitLength micrometers];
                          break;
                        case 1292:
                          result = +[NSUnitLength nanometers];
                          break;
                        case 1293:
                          result = +[NSUnitLength nauticalMiles];
                          break;
                        case 1294:
                          result = +[NSUnitLength fathoms];
                          break;
                        case 1295:
                          result = +[NSUnitLength furlongs];
                          break;
                        case 1296:
                          result = +[NSUnitLength astronomicalUnits];
                          break;
                        case 1297:
                          result = +[NSUnitLength parsecs];
                          break;
                        case 1298:
                          result = +[NSUnitLength scandinavianMiles];
                          break;
                        default:
                          goto LABEL_3;
                      }
                    }
                  }

                  else
                  {
                    v1 = NSUnitInformationStorage;
                    if (a1 > 3589)
                    {
                      if (a1 <= 3591)
                      {
                        if (a1 == 3590)
                        {
                          return +[NSUnitInformationStorage megabits];
                        }

                        else
                        {
                          return +[NSUnitInformationStorage megabytes];
                        }
                      }

                      else
                      {
                        switch(a1)
                        {
                          case 3592:
                            return +[NSUnitInformationStorage terabits];
                          case 3593:
                            return +[NSUnitInformationStorage terabytes];
                          case 3594:
                            return +[NSUnitInformationStorage petabytes];
                          default:
                            goto LABEL_3;
                        }
                      }
                    }

                    else if (a1 <= 3586)
                    {
                      if (a1 == 3584)
                      {
                        return +[NSUnitInformationStorage bits];
                      }

                      else
                      {
                        if (a1 != 3586)
                        {
                          goto LABEL_3;
                        }

                        return +[NSUnitInformationStorage gigabits];
                      }
                    }

                    else if (a1 == 3587)
                    {
                      return +[NSUnitInformationStorage gigabytes];
                    }

                    else if (a1 == 3588)
                    {
                      return +[NSUnitInformationStorage kilobits];
                    }

                    else
                    {
                      return +[NSUnitInformationStorage kilobytes];
                    }
                  }
                }
              }

              else
              {
                v1 = NSUnitEnergy;
                if (a1 <= 3074)
                {
                  if (a1 == 3072)
                  {
                    return +[NSUnitEnergy calories];
                  }

                  else
                  {
                    if (a1 != 3073)
                    {
                      goto LABEL_3;
                    }

                    return +[NSUnitEnergy foodcalories];
                  }
                }

                else
                {
                  switch(a1)
                  {
                    case 3075:
                      return +[NSUnitEnergy kilocalories];
                    case 3077:
                      return +[NSUnitEnergy kilowattHours];
                    case 3076:
                      return +[NSUnitEnergy kilojoules];
                    default:
                      goto LABEL_3;
                  }
                }
              }
            }
          }

          else
          {
            v1 = NSUnitDuration;
            if (a1 <= 1030)
            {
              if (a1 == 1028)
              {
                return +[NSUnitDuration hours];
              }

              else
              {
                if (a1 != 1029)
                {
                  goto LABEL_3;
                }

                return +[NSUnitDuration minutes];
              }
            }

            else
            {
              switch(a1)
              {
                case 1031:
                  return +[NSUnitDuration milliseconds];
                case 1032:
                  return +[NSUnitDuration microseconds];
                case 1033:
                  return +[NSUnitDuration nanoseconds];
                default:
                  goto LABEL_3;
              }
            }
          }
        }
      }

      else
      {
        v1 = NSUnitArea;
        if (a1 > 516)
        {
          if (a1 > 518)
          {
            if (a1 == 519)
            {
              return +[NSUnitArea squareInches];
            }

            else
            {
              if (a1 != 520)
              {
                goto LABEL_3;
              }

              return +[NSUnitArea squareYards];
            }
          }

          else if (a1 == 517)
          {
            return +[NSUnitArea hectares];
          }

          else
          {
            return +[NSUnitArea squareCentimeters];
          }
        }

        else if (a1 > 514)
        {
          if (a1 == 515)
          {
            return +[NSUnitArea squareMiles];
          }

          else
          {
            return +[NSUnitArea acres];
          }
        }

        else if (a1 == 513)
        {
          return +[NSUnitArea squareKilometers];
        }

        else
        {
          if (a1 != 514)
          {
            goto LABEL_3;
          }

          return +[NSUnitArea squareFeet];
        }
      }
    }

    else
    {
      v1 = NSUnitAngle;
      if (a1 > 258)
      {
        if (a1 == 259)
        {
          return +[NSUnitAngle radians];
        }

        else
        {
          if (a1 != 260)
          {
            goto LABEL_3;
          }

          return +[NSUnitAngle revolutions];
        }
      }

      else if (a1 == 257)
      {
        return +[NSUnitAngle arcMinutes];
      }

      else
      {
        if (a1 != 258)
        {
          goto LABEL_3;
        }

        return +[NSUnitAngle arcSeconds];
      }
    }
  }

  else
  {
    v1 = NSUnitAcceleration;
    if (a1)
    {
LABEL_3:
      v2 = v1;
      return [(__objc2_class *)v2 baseUnit];
    }

    return +[NSUnitAcceleration gravity];
  }

  return result;
}

char *static Locale.preferredLanguages.getter()
{
  if (one-time initialization token for cache != -1)
  {
LABEL_40:
    swift_once();
  }

  v0 = String._bridgeToObjectiveCImpl()();
  v1 = CFPreferencesCopyAppValue(v0, *MEMORY[0x1E695E8A8]);
  swift_unknownObjectRelease();
  if (v1 && (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd), (swift_dynamicCast() & 1) != 0))
  {
    v2 = v28;
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC0];
  }

  v27 = *(v2 + 16);
  if (v27)
  {
    v3 = 0;
    v26 = *MEMORY[0x1E695E4A8];
    v4 = v2 + 40;
    v5 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v3 >= *(v2 + 16))
      {
        __break(1u);
        goto LABEL_40;
      }

      v6 = String._bridgeToObjectiveCImpl()();

      CanonicalLanguageIdentifierFromString = CFLocaleCreateCanonicalLanguageIdentifierFromString(v26, v6);
      swift_unknownObjectRelease();
      if (!CanonicalLanguageIdentifierFromString)
      {
        break;
      }

      isTaggedPointer = _objc_isTaggedPointer(CanonicalLanguageIdentifierFromString);
      v9 = CanonicalLanguageIdentifierFromString;
      v10 = v9;
      if ((isTaggedPointer & 1) == 0)
      {
        goto LABEL_15;
      }

      TaggedPointerTag = _objc_getTaggedPointerTag(v9);
      if (!TaggedPointerTag)
      {
        _CFIndirectTaggedPointerStringGetContents();
        v19 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
        if (!v20)
        {
          [(__CFString *)v10 mutableCopy];
          _bridgeAnyObjectToAny(_:)();

          swift_unknownObjectRelease();
          swift_dynamicCast();
          v12 = v28;
          v14 = v29;
LABEL_30:

          goto LABEL_31;
        }

        goto LABEL_25;
      }

      if (TaggedPointerTag == 22)
      {
        v18 = [(__CFString *)v10 UTF8String];
        if (!v18)
        {
          goto LABEL_41;
        }

        v19 = String.init(utf8String:)(v18);
        if (!v20)
        {
          __break(1u);
LABEL_41:
          __break(1u);
        }

LABEL_25:
        v12 = v19;
        v14 = v20;

        goto LABEL_31;
      }

      if (TaggedPointerTag != 2)
      {
LABEL_15:
        LOBYTE(v28) = 0;
        if (__CFStringIsCF())
        {
        }

        else
        {
          v15 = v10;
          v16 = String.init(_nativeStorage:)();
          if (v17)
          {
            v12 = v16;
            v14 = v17;

            goto LABEL_31;
          }

          if ([(__CFString *)v15 length])
          {
            v12 = String.init(_cocoaString:)();
            v14 = v21;
            goto LABEL_30;
          }
        }

        goto LABEL_18;
      }

      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      v12 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v14 = v13;

LABEL_31:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 2) + 1, 1, v5);
      }

      v23 = *(v5 + 2);
      v22 = *(v5 + 3);
      if (v23 >= v22 >> 1)
      {
        v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v5);
      }

      ++v3;
      *(v5 + 2) = v23 + 1;
      v24 = &v5[16 * v23];
      *(v24 + 4) = v12;
      *(v24 + 5) = v14;
      v4 += 16;
      if (v27 == v3)
      {
        goto LABEL_38;
      }
    }

LABEL_18:
    v12 = 0;
    v14 = 0xE000000000000000;
    goto LABEL_31;
  }

  v5 = MEMORY[0x1E69E7CC0];
LABEL_38:

  return v5;
}

id NSUnitLength.init(forLocale:usage:)(uint64_t a1, char *a2)
{

  return NSUnitLength.init(forLocale:usage:)(a1, a2, &lazy cache variable for type metadata for NSUnitLength);
}

id NSUnitTemperature.init(forLocale:usage:)(uint64_t a1, char *a2)
{
  v39[4] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 8);
  v3 = *a2;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [ObjCClassFromMetadata baseUnit];
  ObjectType = swift_getObjectType();
  (*(v2 + 456))(v39, ObjectType, v2);
  v7 = v39[0];
  if (LOBYTE(v39[0]) == 2)
  {
    type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSUnitTemperature);
    (*(v2 + 64))(ObjectType, v2);
    v8 = [swift_getObjCClassFromMetadata() icuType];
    if (!v8)
    {
      Usage.rawValue.getter(v3);
      goto LABEL_34;
    }

    v9 = v8;
    isTaggedPointer = _objc_isTaggedPointer(v8);
    v11 = v9;
    v12 = v11;
    if (!isTaggedPointer)
    {
      goto LABEL_12;
    }

    TaggedPointerTag = _objc_getTaggedPointerTag(v11);
    if (TaggedPointerTag)
    {
      if (TaggedPointerTag != 22)
      {
        if (TaggedPointerTag == 2)
        {
          MEMORY[0x1EEE9AC00](TaggedPointerTag);
          v14 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v16 = v15;

          goto LABEL_30;
        }

LABEL_12:
        v39[0] = 0;
        if (__CFStringIsCF())
        {
          if (v39[0])
          {
LABEL_28:
            v14 = String.init(_cocoaString:)();
            v16 = v29;
            goto LABEL_29;
          }
        }

        else
        {
          v20 = v12;
          v21 = String.init(_nativeStorage:)();
          if (v22)
          {
            v14 = v21;
            v16 = v22;

            goto LABEL_30;
          }

          v39[0] = [v20 length];
          if (v39[0])
          {
            goto LABEL_28;
          }
        }

        v23 = Usage.rawValue.getter(v3);
        v25 = v24;
        goto LABEL_35;
      }

      result = [v12 UTF8String];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v27 = String.init(utf8String:)(result);
      if (v28)
      {
        goto LABEL_24;
      }

      __break(1u);
    }

    _CFIndirectTaggedPointerStringGetContents();
    v27 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v28)
    {
      [v12 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v14 = v37;
      v16 = v38;
      goto LABEL_29;
    }

LABEL_24:
    v14 = v27;
    v16 = v28;

LABEL_29:
LABEL_30:
    v23 = Usage.rawValue.getter(v3);
    v25 = v30;
    if (v16)
    {
      if (v14 == 0x796772656E65 && v16 == 0xE600000000000000)
      {
LABEL_36:
        if (v23 == 0x746C7561666564 && v25 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          v31 = 0;
          goto LABEL_41;
        }

LABEL_40:
        v31 = 0;
        goto LABEL_41;
      }

LABEL_35:
      if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_36;
    }

LABEL_34:
    v31 = 1;
LABEL_41:
    String.utf8CString.getter();

    if ((v31 & 1) == 0)
    {
      String.utf8CString.getter();
    }

    String.utf8CString.getter();
    uameasfmt_getUnitsForUsage();

    swift_unknownObjectRelease();

    v34 = getDimensionUnitFromUnitSpecifier(0);

    if (v34)
    {
      objc_opt_self();
      v35 = swift_dynamicCastObjCClass();
      if (v35)
      {
        v36 = v35;

        v5 = v36;
      }

      else
      {
      }
    }

    goto LABEL_44;
  }

  v17 = objc_opt_self();
  if (v7)
  {
    v18 = [v17 celsius];
  }

  else
  {
    v18 = [v17 fahrenheit];
  }

  v19 = v18;

  v5 = v19;
LABEL_44:
  v32 = [objc_allocWithZone(ObjCClassFromMetadata) initWithDimension_];
  if (!v32)
  {
    __break(1u);
  }

  v33 = v32;
  swift_unknownObjectRelease();

  return v33;
}

uint64_t protocol witness for _LocaleProtocol.forceTemperatureUnit.getter in conformance _LocaleICU@<X0>(char *a1@<X8>)
{
  v3 = *(v1 + 136);
  v4 = *(v1 + 168);
  v9[6] = *(v1 + 152);
  *v10 = v4;
  *&v10[12] = *(v1 + 180);
  v5 = *(v1 + 72);
  v6 = *(v1 + 104);
  v9[2] = *(v1 + 88);
  v9[3] = v6;
  v9[4] = *(v1 + 120);
  v9[5] = v3;
  v9[0] = *(v1 + 56);
  v9[1] = v5;
  result = _s10Foundation17LocalePreferencesVSgWOg(v9);
  v8 = v10[25];
  if (result == 1)
  {
    v8 = 2;
  }

  *a1 = v8;
  return result;
}

uint64_t protocol witness for _LocaleProtocol.region.getter in conformance _LocaleAutoupdating()
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  LocaleCache._currentAndCache.getter();
  v1 = v0;
  ObjectType = swift_getObjectType();
  (*(v1 + 376))(ObjectType, v1);

  return swift_unknownObjectRelease();
}

uint64_t NSURLSession.data(for:delegate:)()
{
  v1 = *(v0 + 104);
  type metadata accessor for NSURLSession.CancelState();
  v7 = *(v0 + 112);
  inited = swift_initStackObject();
  *(v0 + 128) = inited;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCySo12NSURLSessionC10FoundationE11CancelStateC0F0VSo16os_unfair_lock_sVGMd);
  v3 = swift_initStackObject();
  *(v0 + 136) = v3;
  *(v3 + 32) = 0;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(inited + 16) = v3;
  v4 = swift_task_alloc();
  *(v0 + 144) = v4;
  *(v4 + 16) = v7;
  *(v4 + 32) = v1;
  *(v4 + 40) = inited;
  v5 = swift_task_alloc();
  *(v0 + 152) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataV_So13NSURLResponseCtMd);
  *v5 = v0;
  v5[1] = NSURLSession.data(for:delegate:);

  return MEMORY[0x1EEE6DE18](v0 + 80, &async function pointer to partial apply for closure #1 in NSURLSession.data(for:delegate:));
}

{
  swift_setDeallocating();

  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[12];
  v4 = v0[1];

  return v4(v1, v2, v3);
}

{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = NSURLSession.data(for:delegate:);
  }

  else
  {

    v2 = NSURLSession.data(for:delegate:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  swift_setDeallocating();

  v1 = *(v0 + 8);

  return v1();
}

void closure #1 in closure #1 in NSURLSession.data(for:delegate:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10Foundation4DataV_So13NSURLResponseCts5Error_pGMd);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v20 - v12;
  [*(a3 + 16) copy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSMutableURLRequest);
  swift_dynamicCast();
  v14 = aBlock[6];
  (*(v10 + 16))(v13, a1, v9);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = swift_allocObject();
  (*(v10 + 32))(v16 + v15, v13, v9);
  aBlock[4] = partial apply for closure #1 in closure #1 in closure #1 in NSURLSession.data(for:delegate:);
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Data?, @guaranteed NSURLResponse?, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_191;
  v17 = _Block_copy(aBlock);

  v18 = [a2 _dataTaskWithRequest_delegate_completionHandler_];
  _Block_release(v17);

  [v18 set:1 callCompletionHandlerInline:?];
  [v18 resume];
  v19 = *(v21 + 16);
  v22 = v18;
  os_unfair_lock_lock((v19 + 32));
  closure #1 in NSURLSession.CancelState.activate(task:)partial apply((v19 + 16), aBlock);
  os_unfair_lock_unlock((v19 + 32));
  if ((aBlock[0] & 1) == 0)
  {
    [v18 cancel];
  }
}

uint64_t specialized _NSDecimalMultiplyByPowerOf10(_:_:_:_:)(uint64_t a1, uint64_t a2, __int16 a3)
{
  *a1 = specialized NSDecimal._multiplyByPowerOfTen(power:roundingMode:)(a3, *a2, *(a2 + 8), *(a2 + 16));
  *(a1 + 8) = v4;
  *(a1 + 10) = v5;
  *(a1 + 12) = v6;
  *(a1 + 14) = v7;
  *(a1 + 16) = v8;
  *(a1 + 18) = v9;
  return 0;
}

void *_checkErrorAndRound(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, NSDecimal *retstr, uint64_t a7, void *a8)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a1 && (result = [a8 exceptionDuringOperation:a2 error:a1 leftOperand:a3 rightOperand:a4]) != 0)
  {
    if (a5 == 0x7FFF)
    {
      return result;
    }

    v16 = 0uLL;
    v17 = 0;
    [result decimalValue];
    _NSDecimalRound(a7, &v16, a5, retstr);
    v12 = objc_opt_self();
    v14 = *a7;
    LODWORD(v15) = *(a7 + 16);
    v13 = &v14;
  }

  else
  {
    if (a5 != 0x7FFF)
    {
      _NSDecimalRound(a7, a7, a5, retstr);
    }

    v12 = objc_opt_self();
    v16 = *a7;
    v17 = *(a7 + 16);
    v13 = &v16;
  }

  return [v12 decimalNumberWithDecimal:{v13, v14, v15}];
}

id _NSDecimalString(Swift::OpaquePointer a1, uint64_t a2)
{
  if (a2)
  {
    rawValue = a1._rawValue;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    a1._rawValue = rawValue;
  }

  else
  {
    memset(v5, 0, sizeof(v5));
  }

  __NSDecimalString(_:_:)(a1, v5);
  outlined destroy of Any?(v5);
  v3 = String._bridgeToObjectiveCImpl()();

  return v3;
}

uint64_t outlined destroy of Any?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type ReversedCollection<String> and conformance ReversedCollection<A>()
{
  result = lazy protocol witness table cache variable for type ReversedCollection<String> and conformance ReversedCollection<A>;
  if (!lazy protocol witness table cache variable for type ReversedCollection<String> and conformance ReversedCollection<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss18ReversedCollectionVySSGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ReversedCollection<String> and conformance ReversedCollection<A>);
  }

  return result;
}

void static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a3 >> 62;
  if ((a3 >> 62) <= 1)
  {
    if (!v3)
    {
      *&v13 = a2;
      WORD4(v13) = a3;
      BYTE10(v13) = BYTE2(a3);
      BYTE11(v13) = BYTE3(a3);
      BYTE12(v13) = BYTE4(a3);
      BYTE13(v13) = BYTE5(a3);
      v4 = [objc_allocWithZone(MEMORY[0x1E695DEF0]) initWithBytes:&v13 length:BYTE6(a3)];
      goto LABEL_9;
    }

    v5 = a2;
    v6 = a2 >> 32;
    if (v6 < v5)
    {
      __break(1u);
    }

    goto LABEL_7;
  }

  if (v3 == 2)
  {
    v5 = *(a2 + 16);
    v6 = *(a2 + 24);
LABEL_7:
    v4 = __DataStorage.bridgedReference(_:)(v5, v6);
    goto LABEL_9;
  }

  v4 = [objc_allocWithZone(MEMORY[0x1E695DEF0]) init];
LABEL_9:
  v7 = v4;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *&v13 = 0;
  v9 = __NSKeyedUnarchiverSecureUnarchiveObjectOfClass(ObjCClassFromMetadata, v7, &v13);

  v10 = v13;
  if (v9)
  {
    v11 = v13;
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
    v12 = v10;
  }

  v15 = v13;
  v16 = v14;
  if (v10)
  {
    swift_willThrow();
    outlined destroy of TermOfAddress?(&v15, &_sypSgMd);
  }

  else
  {
    v13 = v15;
    v14 = v16;
    if (*(&v16 + 1))
    {
      swift_dynamicCast();
    }

    else
    {
      outlined destroy of TermOfAddress?(&v13, &_sypSgMd);
    }
  }
}

uint64_t closure #1 in _FileManagerImpl.subpathsOfDirectory(atPath:)@<X0>(const char *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, char **a4@<X8>)
{
  v140 = *MEMORY[0x1E69E9840];
  if (!a1)
  {

    if (_foundation_swift_url_feature_enabled())
    {

      v46 = specialized String.withFileSystemRepresentation<A>(_:)(a2, a3, a2, a3);
      v48 = v47;

      LOBYTE(v133) = 3;
      type metadata accessor for _SwiftURL();
      v136 = 0;
      v137 = 0;
      swift_allocObject();
      _SwiftURL.init(filePath:pathStyle:directoryHint:relativeTo:)(v46, v48, 0, &v133, &v136);
      v49 = _SwiftURL.convertingFileReference()();
      v51 = v50;
    }

    else
    {
      v60 = (specialized BidirectionalCollection.last.getter(a2, a3) & 0x1FF) == 47;
      objc_allocWithZone(type metadata accessor for _BridgedURL());

      v61 = _BridgedURL.init(fileURLWithPath:isDirectory:)(a2, a3, v60);
      if (!v61)
      {

        v64 = String._bridgeToObjectiveCImpl()();
        goto LABEL_57;
      }

      v62 = v61;
      v49 = _BridgedURL.convertingFileReference()();
      v51 = v63;
    }

    v64 = String._bridgeToObjectiveCImpl()();
    if (v49)
    {
      ObjectType = swift_getObjectType();
      v66 = (*(v51 + 432))(ObjectType, v51);
      swift_unknownObjectRelease();
LABEL_58:
      [objc_opt_self() _cocoaErrorWithCode_path_url_underlying_variant_source_destination_];
      swift_unknownObjectRelease();

      return swift_willThrow();
    }

LABEL_57:
    v66 = 0;
    goto LABEL_58;
  }

  type metadata accessor for _FTSSequence.Iterator();
  swift_initStackObject();
  _FTSSequence.Iterator.init(_:_:)(a1, 28);
  v6 = _FTSSequence.Iterator.next()();
  if (v9 == -1)
  {
    v12 = MEMORY[0x1E69E7CC0];
    goto LABEL_55;
  }

  v10 = v6;
  v11 = 0;
  v12 = MEMORY[0x1E69E7CC0];
  while (2)
  {
    v131 = v11;
    while (1)
    {
      while (1)
      {
        if (v9)
        {
          v55 = v7;
          v67 = v8;

          v59 = v67;
LABEL_46:
          v130 = v55;
          v132 = v59;
          if (v10 > 26)
          {
            switch(v10)
            {
              case 0x1B:
                v68 = 263;
                goto LABEL_63;
              case 0x3F:
                v68 = 258;
                goto LABEL_63;
              case 0x66:
                v69 = 0;
                v70 = 256;
                goto LABEL_127;
            }
          }

          else
          {
            switch(v10)
            {
              case 1:
                goto LABEL_50;
              case 2:
                v68 = 260;
                goto LABEL_63;
              case 0xD:
LABEL_50:
                v68 = 257;
LABEL_63:
                if ((POSIXErrorCode.init(rawValue:)() & 0x100000000) != 0)
                {
LABEL_149:
                  _StringGuts.grow(_:)(22);

                  v128 = dispatch thunk of CustomStringConvertible.description.getter();
                  MEMORY[0x1865CB0E0](v128);

                  result = _assertionFailure(_:_:file:line:flags:)();
                  __break(1u);
                  return result;
                }

                isTaggedPointer = _objc_isTaggedPointer(@"NSPOSIXErrorDomain");
                v73 = @"NSPOSIXErrorDomain";
                v74 = v73;
                v129 = v68;
                if (!isTaggedPointer)
                {
LABEL_69:
                  LOBYTE(v133) = 0;
                  v136 = 0;
                  v135 = 0;
                  if (__CFStringIsCF())
                  {
LABEL_70:

                    goto LABEL_82;
                  }

                  v76 = v74;
                  String.init(_nativeStorage:)();
                  if (!v77 && (v136 = [(__CFString *)v76 length]) != 0)
                  {
                    String.init(_cocoaString:)();
                  }

                  else
                  {
                  }

LABEL_82:
                  v81 = POSIXErrorCode.rawValue.getter();
                  v82 = objc_allocWithZone(NSError);
                  v83 = String._bridgeToObjectiveCImpl()();

                  v69 = [v82 initWithDomain:v83 code:v81 userInfo:_NativeDictionary.bridged()()];
                  swift_unknownObjectRelease();
                  swift_unknownObjectRelease();
                  v84 = [v69 domain];
                  if (!v84)
                  {
LABEL_99:
                    v90 = 0;
                    v92 = 0xE000000000000000;
                    goto LABEL_103;
                  }

                  v85 = v84;
                  v86 = _objc_isTaggedPointer(v84);
                  v87 = v85;
                  v88 = v87;
                  if ((v86 & 1) == 0)
                  {
                    goto LABEL_88;
                  }

                  TaggedPointerTag = _objc_getTaggedPointerTag(v87);
                  if (TaggedPointerTag)
                  {
                    if (TaggedPointerTag != 22)
                    {
                      if (TaggedPointerTag == 2)
                      {
                        MEMORY[0x1EEE9AC00](TaggedPointerTag);
                        v90 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                        v92 = v91;

LABEL_103:
                        v100 = v74;
                        v101 = v100;
                        if (!isTaggedPointer)
                        {
LABEL_108:
                          LOBYTE(v133) = 0;
                          v136 = 0;
                          v135 = 0;
                          if (__CFStringIsCF())
                          {

LABEL_112:
                            v103 = 0;
                            v105 = 0xE000000000000000;
                            goto LABEL_122;
                          }

                          v106 = v101;
                          v107 = String.init(_nativeStorage:)();
                          if (v108)
                          {
                            v103 = v107;
                            v105 = v108;

                            goto LABEL_122;
                          }

                          v136 = [(__CFString *)v106 length];
                          if (!v136)
                          {

                            goto LABEL_112;
                          }

                          v103 = String.init(_cocoaString:)();
                          v105 = v112;
LABEL_122:
                          if (v90 == v103 && v92 == v105)
                          {
                          }

                          else
                          {
                            v113 = _stringCompareWithSmolCheck(_:_:expecting:)();

                            if ((v113 & 1) == 0)
                            {
                              goto LABEL_143;
                            }
                          }

                          v70 = v129;
LABEL_127:

                          if (_foundation_swift_url_feature_enabled())
                          {

                            v114 = specialized String.withFileSystemRepresentation<A>(_:)(v130, v132, v130, v132);
                            v116 = v115;

                            LOBYTE(v133) = 3;
                            type metadata accessor for _SwiftURL();
                            v136 = 0;
                            v137 = 0;
                            swift_allocObject();
                            _SwiftURL.init(filePath:pathStyle:directoryHint:relativeTo:)(v114, v116, 0, &v133, &v136);
                            v117 = _SwiftURL.convertingFileReference()();
                            v119 = v118;
                          }

                          else
                          {
                            v120 = (specialized BidirectionalCollection.last.getter(v130, v132) & 0x1FF) == 47;
                            objc_allocWithZone(type metadata accessor for _BridgedURL());

                            v121 = _BridgedURL.init(fileURLWithPath:isDirectory:)(v130, v132, v120);
                            if (!v121)
                            {

                              v123 = String._bridgeToObjectiveCImpl()();
                              if (v69)
                              {
                                goto LABEL_133;
                              }

                              goto LABEL_136;
                            }

                            v117 = _BridgedURL.convertingFileReference()();
                            v119 = v122;
                          }

                          v123 = String._bridgeToObjectiveCImpl()();
                          if (v117)
                          {
                            v124 = swift_getObjectType();
                            v121 = (*(v119 + 432))(v124, v119);
                            swift_unknownObjectRelease();
                            if (v69)
                            {
LABEL_133:
                              v136 = v69;
                              lazy protocol witness table accessor for type POSIXError and conformance POSIXError();
                              v69 = v69;
                              v125 = _getErrorEmbeddedNSError<A>(_:)();

                              if (v125)
                              {
                              }

                              else
                              {
                                swift_allocError();
                                *v127 = v69;
                              }

                              v126 = _swift_stdlib_bridgeErrorToNSError();
                              goto LABEL_139;
                            }
                          }

                          else
                          {
                            v121 = 0;
                            if (v69)
                            {
                              goto LABEL_133;
                            }
                          }

LABEL_136:
                          v126 = 0;
LABEL_139:
                          [objc_opt_self() _cocoaErrorWithCode_path_url_underlying_variant_source_destination_];
                          swift_unknownObjectRelease();

                          swift_willThrow();
                          outlined consume of SubpathElement();
                        }

                        v102 = _objc_getTaggedPointerTag(v100);
                        if (!v102)
                        {
                          goto LABEL_116;
                        }

                        if (v102 != 22)
                        {
                          if (v102 == 2)
                          {
                            MEMORY[0x1EEE9AC00](v102);
                            v103 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                            v105 = v104;

                            goto LABEL_122;
                          }

                          goto LABEL_108;
                        }

                        v109 = [(__CFString *)v101 UTF8String];
                        if (v109)
                        {
                          v110 = String.init(utf8String:)(v109);
                          if (v111)
                          {
                            goto LABEL_117;
                          }

                          __break(1u);
LABEL_116:
                          _CFIndirectTaggedPointerStringGetContents();
                          v110 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
                          if (!v111)
                          {
                            [(__CFString *)v101 mutableCopy];
                            _bridgeAnyObjectToAny(_:)();

                            swift_unknownObjectRelease();
                            swift_dynamicCast();
                            v103 = v133;
                            v105 = v134;
                            goto LABEL_122;
                          }

LABEL_117:
                          v103 = v110;
                          v105 = v111;

                          goto LABEL_122;
                        }

                        goto LABEL_147;
                      }

LABEL_88:
                      LOBYTE(v133) = 0;
                      v136 = 0;
                      v135 = 0;
                      if (__CFStringIsCF())
                      {
                        v90 = v136;

                        v92 = 0xE000000000000000;
                        goto LABEL_103;
                      }

                      v93 = v88;
                      v94 = String.init(_nativeStorage:)();
                      if (v95)
                      {
                        v90 = v94;
                        v92 = v95;

                        goto LABEL_103;
                      }

                      v136 = [v93 length];
                      if (!v136)
                      {

                        goto LABEL_99;
                      }

                      v90 = String.init(_cocoaString:)();
                      v92 = v99;
LABEL_102:

                      goto LABEL_103;
                    }

                    v96 = [v88 UTF8String];
                    if (!v96)
                    {
LABEL_148:
                      __break(1u);
                      goto LABEL_149;
                    }

                    v97 = String.init(utf8String:)(v96);
                    if (v98)
                    {
LABEL_96:
                      v90 = v97;
                      v92 = v98;

                      goto LABEL_102;
                    }

                    __break(1u);
                  }

                  _CFIndirectTaggedPointerStringGetContents();
                  v97 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
                  if (!v98)
                  {
                    [v88 mutableCopy];
                    _bridgeAnyObjectToAny(_:)();

                    swift_unknownObjectRelease();
                    swift_dynamicCast();
                    v90 = v133;
                    v92 = v134;
                    goto LABEL_102;
                  }

                  goto LABEL_96;
                }

                v75 = _objc_getTaggedPointerTag(v73);
                if (!v75)
                {
LABEL_76:
                  _CFIndirectTaggedPointerStringGetContents();
                  _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
                  if (v80)
                  {
                    goto LABEL_70;
                  }

                  [(__CFString *)v74 mutableCopy];
                  _bridgeAnyObjectToAny(_:)();

                  swift_unknownObjectRelease();
                  swift_dynamicCast();
                  goto LABEL_82;
                }

                if (v75 != 22)
                {
                  if (v75 == 2)
                  {
                    MEMORY[0x1EEE9AC00](v75);
                    String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

                    goto LABEL_82;
                  }

                  goto LABEL_69;
                }

                v78 = [(__CFString *)v74 UTF8String];
                if (v78)
                {
                  String.init(utf8String:)(v78);
                  if (v79)
                  {
                    goto LABEL_70;
                  }

                  __break(1u);
                  goto LABEL_76;
                }

LABEL_146:
                __break(1u);
LABEL_147:
                __break(1u);
                goto LABEL_148;
            }
          }

          v68 = 256;
          goto LABEL_63;
        }

        v13 = *(v10 + 88);
        if (v13 > 0xD)
        {
          goto LABEL_5;
        }

        v14 = 1 << v13;
        if ((v14 & 0x390A) != 0)
        {
          break;
        }

        if ((v14 & 0x490) != 0)
        {
          if (*(v10 + 48))
          {
            v52 = v9;
            v53 = v8;
            v54 = v7;
            v55 = String.init(cString:)();
            v57 = v56;
            v58 = *(v10 + 56);
            outlined consume of _FTSSequence.Element?(v10, v54, v53, v52);

            LODWORD(v10) = v58;
            v59 = v57;
            goto LABEL_46;
          }

LABEL_145:
          __break(1u);
          goto LABEL_146;
        }

LABEL_5:
        outlined consume of _FTSSequence.Element?(v10, v7, v8, v9);
        v10 = _FTSSequence.Iterator.next()();
        if (v9 == -1)
        {
          goto LABEL_55;
        }
      }

      if (!*(v10 + 48))
      {
        __break(1u);
        goto LABEL_145;
      }

      v15 = a4;
      v16 = v9;
      v17 = v8;
      v18 = v7;
      v19 = String.init(cString:)();
      v11 = v20;
      outlined consume of _FTSSequence.Element?(v10, v18, v17, v16);
      if (!v131)
      {
        break;
      }

      v133 = v19;
      v134 = v11;
      lazy protocol witness table accessor for type String and conformance String();
      Collection<>.trimmingPrefix<A>(_:)();

      if (v137 >> 14 == v136 >> 14)
      {

        a4 = v15;
      }

      else
      {
        if (Substring.subscript.getter() == 47 && v21 == 0xE100000000000000)
        {
        }

        else
        {
          v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v22 & 1) == 0)
          {
            v38 = MEMORY[0x1865CAE80](v136, v137, v138, v139);
            v40 = v39;

            a4 = v15;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v12 + 2) + 1, 1, v12);
            }

            v42 = *(v12 + 2);
            v41 = *(v12 + 3);
            if (v42 >= v41 >> 1)
            {
              v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v42 + 1, 1, v12);
            }

            *(v12 + 2) = v42 + 1;
            v43 = &v12[16 * v42];
            *(v43 + 4) = v38;
            *(v43 + 5) = v40;
            goto LABEL_32;
          }
        }

        v23 = Substring.index(_:offsetBy:limitedBy:)();
        if (v24)
        {
          v23 = v137;
        }

        if (v137 >> 14 < v23 >> 14)
        {
          __break(1u);
LABEL_143:
          __break(1u);
        }

        v25 = Substring.subscript.getter();
        v27 = v26;
        v29 = v28;
        v31 = v30;

        v32 = MEMORY[0x1865CAE80](v25, v27, v29, v31);
        v34 = v33;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v12 + 2) + 1, 1, v12);
        }

        v36 = *(v12 + 2);
        v35 = *(v12 + 3);
        if (v36 >= v35 >> 1)
        {
          v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1, v12);
        }

        *(v12 + 2) = v36 + 1;
        v37 = &v12[16 * v36];
        *(v37 + 4) = v32;
        *(v37 + 5) = v34;
        a4 = v15;
      }

LABEL_32:
      v10 = _FTSSequence.Iterator.next()();
      if (v9 == -1)
      {
        goto LABEL_55;
      }
    }

    v10 = _FTSSequence.Iterator.next()();
    a4 = v15;
    v12 = MEMORY[0x1E69E7CC0];
    if (v9 != -1)
    {
      continue;
    }

    break;
  }

LABEL_55:

  *a4 = v12;
  return result;
}

uint64_t _FTSSequence.Iterator.init(_:_:)(const char *a1, int a2)
{
  v14[2] = *MEMORY[0x1E69E9840];
  *(v2 + 56) = 0;
  v5 = MEMORY[0x1E69E7CC0];
  *(v2 + 64) = MEMORY[0x1E69E7CC0];
  *(v2 + 72) = v5;
  *(v2 + 80) = 0;
  *(v2 + 48) = a1;
  memset(&v13, 0, sizeof(v13));
  if (lstat(a1, &v13) || (v14[0] = a1, v14[1] = 0, (v11 = fts_open(v14, a2, 0)) == 0))
  {
    v6 = MEMORY[0x1865CA7A0]();
    v7 = String.init(cString:)();
    v9 = 1;
    v10 = v6;
  }

  else
  {
    v10 = v11;
    v7 = 0;
    v8 = 0;
    v9 = 0;
  }

  *(v2 + 16) = v10;
  *(v2 + 24) = v7;
  *(v2 + 32) = v8;
  *(v2 + 40) = v9;
  return v2;
}

Swift::Void __swiftcall URL.appendPathComponent(_:isDirectory:)(Swift::String _, Swift::Bool isDirectory)
{
  v3 = v2;
  v4 = isDirectory;
  object = _._object;
  countAndFlagsBits = _._countAndFlagsBits;
  v7 = *v2;
  v8 = v3[1];
  ObjectType = swift_getObjectType();
  (*(v8 + 336))(v11, countAndFlagsBits, object, v4, ObjectType, v8);
  v10 = v11[0];
  if (v11[0])
  {
    v8 = v11[1];
    swift_unknownObjectRelease();
    v7 = v10;
  }

  *v3 = v7;
  v3[1] = v8;
}

double _NSSwiftTimeZone.daylightSavingTimeOffset.getter()
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + OBJC_IVAR____NSSwiftTimeZone_timeZone + 8);
  __tp.tv_sec = 0;
  __tp.tv_nsec = 0;
  swift_unknownObjectRetain();
  clock_gettime(_CLOCK_REALTIME, &__tp);
  *&v2 = __tp.tv_sec + -978307200.0 + __tp.tv_nsec * 0.000000001;
  ObjectType = swift_getObjectType();
  __tp.tv_sec = v2;
  v4 = (*(v1 + 80))(&__tp, ObjectType, v1);
  swift_unknownObjectRelease();
  return v4;
}

uint64_t outlined consume of _FTSSequence.Element(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }

  return result;
}

uint64_t outlined consume of _FTSSequence.Iterator.State(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 1)
  {
  }

  return result;
}

uint64_t specialized SetAlgebra.init<A>(_:)@<X0>(void *a1@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v5 = &v9 - v4;
  dispatch thunk of Sequence.makeIterator()();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of IteratorProtocol.next()();
  v6 = 0;
  if ((v10 & 1) == 0)
  {
    v6 = 0;
    do
    {
      v7 = v9;
      if ((v9 & ~v6) == 0)
      {
        v7 = 0;
      }

      v6 |= v7;
      dispatch thunk of IteratorProtocol.next()();
    }

    while (v10 != 1);
  }

  result = (*(v3 + 8))(v5, AssociatedTypeWitness);
  *a1 = v6;
  return result;
}

uint64_t outlined init with take of (key: CodingUserInfoKey, value: Sendable)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17CodingUserInfoKeyV3key_s8Sendable_p5valuetMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t URLComponents.string.getter()
{
  v3 = *v0;
  if ((*(v0 + 1) & 1) == 0)
  {
    return URLComponents._URLComponents.computedString.getter();
  }

  if (!v3)
  {
    return 0;
  }

  v1 = *(v3 + 16);

  return v1;
}

void thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSTimer) -> ()(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

id Date.description.getter()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate_];
  v2 = [v1 description];

  if (!v2)
  {
    return 0;
  }

  isTaggedPointer = _objc_isTaggedPointer(v2);
  v4 = v2;
  v5 = v4;
  if (!isTaggedPointer)
  {
    goto LABEL_7;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v4);
  if (!TaggedPointerTag)
  {
    _CFIndirectTaggedPointerStringGetContents();
    v15 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (v16)
    {
      v17 = v15;
    }

    else
    {
      [v5 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v17 = v18;
    }

LABEL_21:

    return v17;
  }

  if (TaggedPointerTag != 22)
  {
    if (TaggedPointerTag == 2)
    {
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      v7 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

      return v7;
    }

LABEL_7:
    if (__CFStringIsCF())
    {

      return 0;
    }

    v9 = v5;
    v10 = String.init(_nativeStorage:)();
    if (v11)
    {
      v12 = v10;

      return v12;
    }

    if (![v9 length])
    {

      return 0;
    }

    v17 = String.init(_cocoaString:)();
    goto LABEL_21;
  }

  result = [v5 UTF8String];
  if (result)
  {
    result = String.init(utf8String:)(result);
    if (v13)
    {
      v14 = result;

      return v14;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type UInt32 and conformance UInt32()
{
  result = lazy protocol witness table cache variable for type UInt32 and conformance UInt32;
  if (!lazy protocol witness table cache variable for type UInt32 and conformance UInt32)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UInt32 and conformance UInt32);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UInt32 and conformance UInt32;
  if (!lazy protocol witness table cache variable for type UInt32 and conformance UInt32)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UInt32 and conformance UInt32);
  }

  return result;
}

uint64_t _PlistKeyedEncodingContainerBPlist.encode(_:forKey:)(unsigned int a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = *(*v1 + 88);
  v5 = a1;
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(v4 + 32);
  *(v4 + 16) = v5;
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  v9 = *(v4 + 40);
  *(v4 + 40) = 32;
  outlined consume of _BPlistEncodingFormat.Reference.Backing(v6, v7, v8, v9);
  v10 = *(v2 + 88);

  v11 = specialized Set._Variant.insert(_:)(&v36, v10);
  v38 = v36;
  if (v11)
  {
    type metadata accessor for _BPlistEncodingFormat.Reference();
    v12 = swift_allocObject();
    *(v12 + 24) = 0;
    *(v12 + 32) = 0;
    *(v12 + 16) = 2;
    *(v12 + 40) = -112;
    *(v12 + 48) = -1;
    *(v2 + 88) = v12;
  }

  v13 = dispatch thunk of CodingKey.stringValue.getter();
  v15 = v14;
  if (specialized Sequence.allSatisfy(_:)(implicit closure #1 in _BPlistEncodingFormat.string(_:), 0, v13, v14))
  {

    v16 = MEMORY[0x1865CB280](v13, v15);
    v17 = 1;
  }

  else
  {
    v18 = String._bridgeToObjectiveCImpl()();

    v16 = [v18 hash];
    swift_unknownObjectRelease();
    v17 = 0;
  }

  v19 = *(v2 + 88);
  v20 = *(v19 + 16);
  v21 = *(v19 + 24);
  v22 = *(v19 + 32);
  *(v19 + 16) = v13;
  *(v19 + 24) = v15;
  *(v19 + 32) = v16;
  v23 = *(v19 + 40);
  *(v19 + 40) = v17;

  outlined consume of _BPlistEncodingFormat.Reference.Backing(v20, v21, v22, v23);

  v24 = specialized Set._Variant.insert(_:)(&v36, v19);

  v25 = v36;
  if (v24)
  {
    type metadata accessor for _BPlistEncodingFormat.Reference();
    v26 = swift_allocObject();
    *(v26 + 24) = 0;
    *(v26 + 32) = 0;
    *(v26 + 16) = 2;
    *(v26 + 40) = -112;
    *(v26 + 48) = -1;

    *(v2 + 88) = v26;
  }

  v28 = *(v3 + 40);
  if ((v28 & 0xF0) == 0x60)
  {
    v30 = *(v3 + 24);
    v29 = *(v3 + 32);
    v36 = *(v3 + 16);
    v31 = v36;
    *&v37 = v30;
    *(&v37 + 1) = v29;
    *(v3 + 24) = 0;
    *(v3 + 32) = 0;
    *(v3 + 16) = 2;
    *(v3 + 40) = -112;

    outlined consume of _BPlistEncodingFormat.Reference.Backing(v31, v30, v29, v28);
    specialized OrderedDictionary.subscript.setter(v38, v25);
    v32 = *(v3 + 16);
    v33 = *(v3 + 24);
    v34 = *(v3 + 32);
    *(v3 + 16) = v36;
    *(v3 + 24) = v37;
    v35 = *(v3 + 40);
    *(v3 + 40) = 96;
    return outlined consume of _BPlistEncodingFormat.Reference.Backing(v32, v33, v34, v35);
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Double __swiftcall _TimeZoneICU.daylightSavingTimeOffset(for:)(Foundation::Date a1)
{
  v2 = v1[2];
  os_unfair_lock_lock(v2 + 6);
  v3 = 0.0;
  if (_TimeZoneICU.State.calendar(_:)(v1[3], v1[4]))
  {
    ucal_setMillis();
    v4 = ucal_get();
    v3 = v4 / 1000.0;
  }

  os_unfair_lock_unlock(v2 + 6);
  return v3;
}

char *specialized String.withFileSystemRepresentation<A>(_:)(uint64_t a1, unint64_t a2, char *a3, unint64_t a4)
{
  v6 = v4;
  v21[1] = *MEMORY[0x1E69E9840];
  if ((a2 & 0x1000000000000000) != 0)
  {
    v11 = String.UTF8View._foreignCount()();
  }

  else if ((a2 & 0x2000000000000000) != 0)
  {
    v11 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v11 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v12 = 3 * v11;
  if ((v11 * 3) >> 64 != (3 * v11) >> 63)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v12 < -1)
  {
    __break(1u);
    return v21[0];
  }

  v5 = v12 + 1;

  if (v12 >= 1024)
  {
LABEL_18:
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if (isStackAllocationSafe)
    {
      goto LABEL_8;
    }

    v18 = swift_slowAlloc();

    specialized closure #1 in String.withFileSystemRepresentation<A>(_:)(v18, v5, a1, a2, a3, a4, v21);
    MEMORY[0x1865D2690](v18, -1, -1);

    if (v6)
    {
      return a3;
    }

    return v21[0];
  }

LABEL_8:
  MEMORY[0x1EEE9AC00](isStackAllocationSafe);
  v15 = &v19 - v14;
  if (String._fileSystemRepresentation(into:)(&v19 - v14, v5, a1, a2))
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  closure #1 in _FileManagerImpl.subpathsOfDirectory(atPath:)(v16, a3, a4, &v20);
  if (v6)
  {
    swift_willThrow();
  }

  else
  {
    a3 = v20;
  }

  return a3;
}

unint64_t _FTSSequence.Iterator.next()()
{
  v2 = (v0 + 16);
  result = *(v0 + 16);
  if (*(v0 + 40))
  {
    if (*(v0 + 40) == 1)
    {
      *v2 = 0;
      *(v0 + 24) = 0;
      *(v0 + 32) = 0;
      result = result;
      *(v0 + 40) = 2;
      return result;
    }

    return 0;
  }

  v3 = fts_read(result);
  if (v3)
  {
    v4 = v3;
    if (_FTSSequence.Iterator._shouldFilter(_:)(v3))
    {
      return _FTSSequence.Iterator.next()();
    }

    else
    {
      return v4;
    }
  }

  else
  {
    if (!MEMORY[0x1865CA7A0]())
    {
      v10 = *(v0 + 40);
      if (!v10)
      {
        fts_close(*(v0 + 16));
        v10 = *(v0 + 40);
      }

      v11 = *(v0 + 16);
      v12 = *(v0 + 24);
      v13 = *(v0 + 32);
      *v2 = 0;
      *(v0 + 24) = 0;
      *(v0 + 32) = 0;
      *(v0 + 40) = 2;
      outlined consume of _FTSSequence.Iterator.State(v11, v12, v13, v10);
      return 0;
    }

    v5 = MEMORY[0x1865CA7A0]();
    v6 = *(v0 + 40);
    if (!v6)
    {
      fts_close(*(v0 + 16));
      v6 = *(v0 + 40);
    }

    v7 = *(v0 + 16);
    v8 = *(v0 + 24);
    v9 = *(v0 + 32);
    *v2 = 0;
    *(v0 + 24) = 0;
    *(v0 + 32) = 0;
    *(v0 + 40) = 2;
    outlined consume of _FTSSequence.Iterator.State(v7, v8, v9, v6);
    String.init(cString:)();
    return v5;
  }
}

BOOL _FTSSequence.Iterator._shouldFilter(_:)(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 48);
  v3 = *(a1 + 72);
  v4 = *(a1 + 80);
  v5 = *(a1 + 88);
  static String._fromUTF8Repairing(_:)();
  if (!*(v1 + 56))
  {
    v6._countAndFlagsBits = 24366;
    v6._object = 0xE200000000000000;
    if (String.hasPrefix(_:)(v6))
    {
      goto LABEL_29;
    }
  }

  v7 = *(v1 + 64);
  v8 = *(v7 + 16);
  if (!v8)
  {
    v9 = 0;
    if (v5 != 6)
    {
      goto LABEL_5;
    }

LABEL_18:
    v15 = *(v1 + 72);
    v20 = *(v15 + 2);
    if (!v20 || *&v15[8 * v20 + 24] != v3)
    {
      goto LABEL_27;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v21 = *(v15 + 2);
      if (v21)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v15 = specialized _ArrayBuffer._consumeAndCreateNew()(v15);
      v21 = *(v15 + 2);
      if (v21)
      {
LABEL_22:
        *(v15 + 2) = v21 - 1;
        *(v1 + 72) = v15;
        v15 = *(v1 + 64);
        if (*(v15 + 2))
        {
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v22 = *(v15 + 2);
            if (v22)
            {
LABEL_25:
              *(v15 + 2) = v22 - 1;
LABEL_26:
              *(v1 + 64) = v15;
              goto LABEL_27;
            }

LABEL_38:
            __break(1u);
          }

LABEL_37:
          v15 = specialized _ArrayBuffer._consumeAndCreateNew()(v15);
          v22 = *(v15 + 2);
          if (v22)
          {
            goto LABEL_25;
          }

          goto LABEL_38;
        }

LABEL_36:
        __break(1u);
        goto LABEL_37;
      }
    }

    __break(1u);
    goto LABEL_36;
  }

  v9 = *(v7 + 4 * v8 + 28);
  if (v5 == 6)
  {
    goto LABEL_18;
  }

LABEL_5:
  if (v5 == 1 && (!v8 || *(v7 + 4 * v8 + 28) != v4))
  {
    v10 = *(v1 + 72);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v1 + 72) = v10;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10);
      *(v1 + 72) = v10;
    }

    v13 = *(v10 + 2);
    v12 = *(v10 + 3);
    v14 = v13 + 1;
    if (v13 >= v12 >> 1)
    {
      v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v10);
      v14 = v13 + 1;
      v10 = v29;
    }

    *(v10 + 2) = v14;
    *&v10[8 * v13 + 32] = v3;
    *(v1 + 72) = v10;
    v15 = *(v1 + 64);
    v16 = swift_isUniquelyReferenced_nonNull_native();
    *(v1 + 64) = v15;
    if ((v16 & 1) == 0)
    {
      v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v15 + 2) + 1, 1, v15);
      *(v1 + 64) = v15;
    }

    v18 = *(v15 + 2);
    v17 = *(v15 + 3);
    v19 = v18 + 1;
    if (v18 >= v17 >> 1)
    {
      v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v15);
      v19 = v18 + 1;
      v15 = v30;
    }

    *(v15 + 2) = v19;
    *&v15[4 * v18 + 32] = v4;
    v9 = v4;
    goto LABEL_26;
  }

LABEL_27:
  if (v9 == *(v1 + 56))
  {
    if ((*(v1 + 80) & 1) == 0)
    {
LABEL_29:

      return 0;
    }
  }

  else
  {
    bzero(&v31, 0x878uLL);
    v23 = statfs(v2, &v31);
    v24 = v31.f_flags & 0x8000;
    *(v1 + 56) = v9;
    v25 = v23 | v24;
    *(v1 + 80) = v25 == 0;
    if (v25)
    {
      goto LABEL_29;
    }
  }

  v26._countAndFlagsBits = 24366;
  v26._object = 0xE200000000000000;
  v27 = String.hasPrefix(_:)(v26);

  return v27;
}

uint64_t outlined consume of _FTSSequence.Element?(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    return outlined consume of _FTSSequence.Element(result, a2, a3, a4 & 1);
  }

  return result;
}

uint64_t _FTSSequence.Iterator.__deallocating_deinit()
{
  v1 = *(v0 + 40);
  if (!v1)
  {
    fts_close(*(v0 + 16));
    v1 = *(v0 + 40);
  }

  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 2;
  outlined consume of _FTSSequence.Iterator.State(v2, v3, v4, v1);
  outlined consume of _FTSSequence.Iterator.State(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));

  return swift_deallocClassInstance();
}

unint64_t lazy protocol witness table accessor for type JSONEncoder.OutputFormatting and conformance JSONEncoder.OutputFormatting()
{
  result = lazy protocol witness table cache variable for type JSONEncoder.OutputFormatting and conformance JSONEncoder.OutputFormatting;
  if (!lazy protocol witness table cache variable for type JSONEncoder.OutputFormatting and conformance JSONEncoder.OutputFormatting)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JSONEncoder.OutputFormatting and conformance JSONEncoder.OutputFormatting);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type JSONEncoder.OutputFormatting and conformance JSONEncoder.OutputFormatting;
  if (!lazy protocol witness table cache variable for type JSONEncoder.OutputFormatting and conformance JSONEncoder.OutputFormatting)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JSONEncoder.OutputFormatting and conformance JSONEncoder.OutputFormatting);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type JSONEncoder.OutputFormatting and conformance JSONEncoder.OutputFormatting;
  if (!lazy protocol witness table cache variable for type JSONEncoder.OutputFormatting and conformance JSONEncoder.OutputFormatting)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JSONEncoder.OutputFormatting and conformance JSONEncoder.OutputFormatting);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type JSONEncoder.OutputFormatting and conformance JSONEncoder.OutputFormatting;
  if (!lazy protocol witness table cache variable for type JSONEncoder.OutputFormatting and conformance JSONEncoder.OutputFormatting)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JSONEncoder.OutputFormatting and conformance JSONEncoder.OutputFormatting);
  }

  return result;
}

uint64_t Data.description.getter(uint64_t result, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2 || !__OFSUB__(*(result + 24), *(result + 16)))
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  else if (!v2)
  {
    goto LABEL_9;
  }

  if (!__OFSUB__(HIDWORD(result), result))
  {
LABEL_9:
    v3 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1865CB0E0](v3);

    MEMORY[0x1865CB0E0](0x736574796220, 0xE600000000000000);
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t KeyPathComparator.init<A>(_:order:)@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  v31 = a1;
  v8 = (v7 + *MEMORY[0x1E69E77B0]);
  v9 = v8[1];
  v29 = *v8;
  type metadata accessor for KeyPath();

  swift_dynamicCast();
  v10 = *&v30[0];
  *a4 = *&v30[0];
  if (swift_dynamicCastMetatype())
  {
    v11 = one-time initialization token for localizedStandard;

    if (v11 != -1)
    {
      swift_once();
    }

    v12 = static String.StandardComparator.localizedStandard;
    v13 = word_1EA7AF548;
    v14 = HIBYTE(word_1EA7AF548);
    *(a4 + 32) = &type metadata for String.StandardComparator;
    v15 = lazy protocol witness table accessor for type String.StandardComparator and conformance String.StandardComparator();
    *(a4 + 8) = v12;
    *(a4 + 16) = v13;
    *(a4 + 17) = v14;
    *(a4 + 40) = v15;
    *(a4 + 48) = specialized closure #1 in AnySortComparator.init<A>(_:);
    v16 = specialized thunk for @escaping @callee_guaranteed @Sendable (@inout Hashable & Sendable, @unowned SortOrder) -> (@out AnyHashable);
    *(a4 + 56) = 0;
    *(a4 + 64) = specialized thunk for @escaping @callee_guaranteed @Sendable (@inout Hashable & Sendable, @unowned SortOrder) -> (@out AnyHashable);
    *(a4 + 72) = 0;
    *(a4 + 80) = specialized closure #3 in AnySortComparator.init<A>(_:);
    *(a4 + 88) = 0;
  }

  else
  {
    v17 = type metadata accessor for ComparableComparator();
    *(a4 + 32) = v17;
    *(a4 + 40) = swift_getWitnessTable();
    *(a4 + 8) = 0;
    v18 = swift_allocObject();
    *(v18 + 16) = v17;
    v28 = a2;
    WitnessTable = swift_getWitnessTable();
    *(v18 + 24) = WitnessTable;
    *(a4 + 48) = partial apply for closure #1 in AnySortComparator.init<A>(_:);
    *(a4 + 56) = v18;
    v20 = swift_allocObject();
    *(v20 + 16) = v17;
    *(v20 + 24) = WitnessTable;
    v21 = swift_allocObject();
    *(v21 + 16) = partial apply for closure #2 in AnySortComparator.init<A>(_:);
    *(v21 + 24) = v20;
    v16 = partial apply for thunk for @escaping @callee_guaranteed @Sendable (@inout Hashable & Sendable, @unowned SortOrder) -> (@out AnyHashable);
    *(a4 + 64) = partial apply for thunk for @escaping @callee_guaranteed @Sendable (@inout Hashable & Sendable, @unowned SortOrder) -> (@out AnyHashable);
    *(a4 + 72) = v21;
    v22 = swift_allocObject();
    *(v22 + 16) = v17;
    *(v22 + 24) = WitnessTable;
    a2 = v28;
    *(a4 + 80) = partial apply for closure #3 in AnySortComparator.init<A>(_:);
    *(a4 + 88) = v22;
  }

  v23 = dispatch thunk of AnyKeyPath._storedInlineOffset.getter();
  v25 = v24;
  v26 = swift_allocObject();
  *(v26 + 16) = v29;
  *(v26 + 24) = v9;
  *(v26 + 32) = a3;
  *(v26 + 40) = v23;
  *(v26 + 48) = v25 & 1;
  *(v26 + 56) = v10;
  *(a4 + 96) = partial apply for closure #1 in KeyPathComparator.init<A>(_:order:);
  *(a4 + 104) = v26;

  (v16)(v30, a4 + 8, a2 & 1);

  __swift_destroy_boxed_opaque_existential_1(a4 + 8);
  return outlined init with take of Equatable(v30, a4 + 8);
}

{
  v7 = *a1;
  v32 = a1;
  v8 = (v7 + *MEMORY[0x1E69E77B0]);
  v9 = v8[1];
  v30 = *v8;
  type metadata accessor for KeyPath();

  swift_dynamicCast();
  v10 = *&v31[0];
  *a4 = *&v31[0];
  v11 = *(v9 + 16);
  if (swift_dynamicCastMetatype())
  {
    v12 = one-time initialization token for localizedStandard;

    if (v12 != -1)
    {
      swift_once();
    }

    v13 = static String.StandardComparator.localizedStandard;
    v14 = word_1EA7AF548;
    v15 = HIBYTE(word_1EA7AF548);
    *(a4 + 32) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation18OptionalComparatorVySSAAE08StandardC0VGMd);
    v16 = lazy protocol witness table accessor for type OptionalComparator<String.StandardComparator> and conformance OptionalComparator<A>();
    *(a4 + 8) = v13;
    *(a4 + 16) = v14;
    *(a4 + 17) = v15;
    *(a4 + 40) = v16;
    *(a4 + 48) = specialized closure #1 in AnySortComparator.init<A>(_:);
    v17 = specialized thunk for @escaping @callee_guaranteed @Sendable (@inout Hashable & Sendable, @unowned SortOrder) -> (@out AnyHashable);
    *(a4 + 56) = 0;
    *(a4 + 64) = specialized thunk for @escaping @callee_guaranteed @Sendable (@inout Hashable & Sendable, @unowned SortOrder) -> (@out AnyHashable);
    *(a4 + 72) = 0;
    *(a4 + 80) = specialized closure #3 in AnySortComparator.init<A>(_:);
    *(a4 + 88) = 0;
  }

  else
  {
    type metadata accessor for ComparableComparator();
    swift_getWitnessTable();
    v18 = type metadata accessor for OptionalComparator();
    *(a4 + 32) = v18;
    *(a4 + 40) = swift_getWitnessTable();
    *(a4 + 8) = 0;
    v19 = swift_allocObject();
    *(v19 + 16) = v18;
    v29 = a2;
    WitnessTable = swift_getWitnessTable();
    *(v19 + 24) = WitnessTable;
    *(a4 + 48) = closure #1 in AnySortComparator.init<A>(_:)partial apply;
    *(a4 + 56) = v19;
    v21 = swift_allocObject();
    *(v21 + 16) = v18;
    *(v21 + 24) = WitnessTable;
    v22 = swift_allocObject();
    *(v22 + 16) = closure #2 in AnySortComparator.init<A>(_:)partial apply;
    *(v22 + 24) = v21;
    v17 = thunk for @escaping @callee_guaranteed @Sendable (@inout Hashable & Sendable, @unowned SortOrder) -> (@out AnyHashable)partial apply;
    *(a4 + 64) = thunk for @escaping @callee_guaranteed @Sendable (@inout Hashable & Sendable, @unowned SortOrder) -> (@out AnyHashable)partial apply;
    *(a4 + 72) = v22;
    v23 = swift_allocObject();
    *(v23 + 16) = v18;
    *(v23 + 24) = WitnessTable;
    a2 = v29;
    *(a4 + 80) = closure #3 in AnySortComparator.init<A>(_:)partial apply;
    *(a4 + 88) = v23;
  }

  v24 = dispatch thunk of AnyKeyPath._storedInlineOffset.getter();
  v26 = v25;
  v27 = swift_allocObject();
  *(v27 + 16) = v30;
  *(v27 + 24) = v11;
  *(v27 + 32) = a3;
  *(v27 + 40) = v24;
  *(v27 + 48) = v26 & 1;
  *(v27 + 56) = v10;
  *(a4 + 96) = partial apply for closure #1 in KeyPathComparator.init<A>(_:order:);
  *(a4 + 104) = v27;

  (v17)(v31, a4 + 8, a2 & 1);

  __swift_destroy_boxed_opaque_existential_1(a4 + 8);
  return outlined init with take of Equatable(v31, a4 + 8);
}

uint64_t sub_1809406F8()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_180940730()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

unint64_t lazy protocol witness table accessor for type String.StandardComparator and conformance String.StandardComparator()
{
  result = lazy protocol witness table cache variable for type String.StandardComparator and conformance String.StandardComparator;
  if (!lazy protocol witness table cache variable for type String.StandardComparator and conformance String.StandardComparator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String.StandardComparator and conformance String.StandardComparator);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String.StandardComparator and conformance String.StandardComparator;
  if (!lazy protocol witness table cache variable for type String.StandardComparator and conformance String.StandardComparator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String.StandardComparator and conformance String.StandardComparator);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String.StandardComparator and conformance String.StandardComparator;
  if (!lazy protocol witness table cache variable for type String.StandardComparator and conformance String.StandardComparator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String.StandardComparator and conformance String.StandardComparator);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String.StandardComparator and conformance String.StandardComparator;
  if (!lazy protocol witness table cache variable for type String.StandardComparator and conformance String.StandardComparator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String.StandardComparator and conformance String.StandardComparator);
  }

  return result;
}

uint64_t type metadata instantiation function for KeyPathComparator()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t instantiation function for generic protocol witness table for KeyPathComparator<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t specialized thunk for @escaping @callee_guaranteed @Sendable (@inout Hashable & Sendable, @unowned SortOrder) -> (@out AnyHashable)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  v5 = MEMORY[0x1E69E69C0];
  a3[3] = MEMORY[0x1E69E69B8];
  a3[4] = v5;
  *a3 = swift_allocObject();
  outlined init with take of Equatable(a1, &v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSH_s8SendablepMd);
  swift_dynamicCast();
  a2 &= 1u;
  v14 = a2;
  *(a1 + 24) = &type metadata for String.StandardComparator;
  *(a1 + 32) = lazy protocol witness table accessor for type String.StandardComparator and conformance String.StandardComparator();
  v6 = v12;
  v7 = v13;
  *a1 = v12;
  *(a1 + 8) = v7;
  *(a1 + 9) = a2;
  v9 = v6;
  v10 = v7;
  v11 = a2;
  return AnyHashable.init<A>(_:)();
}

{
  v5 = MEMORY[0x1E69E69C0];
  a3[3] = MEMORY[0x1E69E69B8];
  a3[4] = v5;
  *a3 = swift_allocObject();
  outlined init with take of Equatable(a1, &v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSH_s8SendablepMd);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation18OptionalComparatorVySSAAE08StandardC0VGMd);
  swift_dynamicCast();
  a2 &= 1u;
  v15 = a2;
  *(a1 + 24) = v6;
  *(a1 + 32) = lazy protocol witness table accessor for type OptionalComparator<String.StandardComparator> and conformance OptionalComparator<A>();
  v7 = v13;
  v8 = v14;
  *a1 = v13;
  *(a1 + 8) = v8;
  *(a1 + 9) = a2;
  v10 = v7;
  v11 = v8;
  v12 = a2;
  return AnyHashable.init<A>(_:)();
}

uint64_t sub_180940A2C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t Sequence.sorted<A>(using:)(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x1EEE9AC00](a1);
  v14 = v6;
  v15 = v7;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  (*(v11 + 16))(&v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], v2, a2, v4);
  v19 = dispatch thunk of Sequence._copyToContiguousArray()();
  swift_getAssociatedTypeWitness();
  type metadata accessor for ContiguousArray();
  swift_getWitnessTable();
  swift_getWitnessTable();
  MutableCollection<>.sort(by:)();
  return v19;
}

Swift::Void __swiftcall JSONWriter.writeIndent()()
{
  v1 = *v0;
  if (*v0 <= 4)
  {
    if (v1 <= 1)
    {
      if (!v1)
      {
        return;
      }

      if (v1 == 1)
      {
        specialized Array.append<A>(contentsOf:)("  ", 2);
        return;
      }
    }

    else
    {
      switch(v1)
      {
        case 2:
          specialized Array.append<A>(contentsOf:)("    ", 4);
          return;
        case 3:
          specialized Array.append<A>(contentsOf:)("      ", 6);
          return;
        case 4:
          specialized Array.append<A>(contentsOf:)("        ", 8);
          return;
      }
    }
  }

  else if (v1 > 7)
  {
    switch(v1)
    {
      case 8:
        specialized Array.append<A>(contentsOf:)("                ", 16);
        return;
      case 9:
        specialized Array.append<A>(contentsOf:)("                  ", 18);
        return;
      case 10:
        specialized Array.append<A>(contentsOf:)("                    ", 20);
        return;
    }
  }

  else
  {
    switch(v1)
    {
      case 5:
        specialized Array.append<A>(contentsOf:)("          ", 10);
        return;
      case 6:
        specialized Array.append<A>(contentsOf:)("            ", 12);
        return;
      case 7:
        specialized Array.append<A>(contentsOf:)("              ", 14);
        return;
    }
  }

  if (v1 < 0)
  {
    __break(1u);
  }

  else
  {
    do
    {
      specialized Array.append<A>(contentsOf:)("  ", 2);
      --v1;
    }

    while (v1);
  }
}

uint64_t (*JSONDecoder.userInfo.modify(void *a1))(void *a1)
{
  v3 = OBJC_IVAR____TtC10Foundation13__JSONDecoder_optionsLock;
  a1[1] = v1;
  a1[2] = v3;
  v4 = *(v1 + v3);

  os_unfair_lock_lock(v4 + 4);

  v5 = OBJC_IVAR____TtC10Foundation13__JSONDecoder_options;
  a1[3] = OBJC_IVAR____TtC10Foundation13__JSONDecoder_options;
  *a1 = *(v1 + v5 + 104);

  return JSONDecoder.userInfo.modify;
}

uint64_t JSONDecoder.userInfo.modify(void *a1)
{
  v1 = a1[2];
  v2 = a1[1];
  *(v2 + a1[3] + 104) = *a1;

  v3 = *(v2 + v1);

  os_unfair_lock_unlock(v3 + 4);
}

uint64_t JSONDecoder.dateDecodingStrategy.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = OBJC_IVAR____TtC10Foundation13__JSONDecoder_optionsLock;
  v6 = *(v1 + OBJC_IVAR____TtC10Foundation13__JSONDecoder_optionsLock);

  os_unfair_lock_lock(v6 + 4);

  v7 = v1 + OBJC_IVAR____TtC10Foundation13__JSONDecoder_options;
  v8 = *(v1 + OBJC_IVAR____TtC10Foundation13__JSONDecoder_options);
  v9 = *(v1 + OBJC_IVAR____TtC10Foundation13__JSONDecoder_options + 8);
  *v7 = v2;
  *(v7 + 8) = v3;
  v10 = *(v7 + 16);
  *(v7 + 16) = v4;
  outlined consume of JSONDecoder.DateDecodingStrategy(v8, v9, v10);
  v11 = *(v1 + v5);

  os_unfair_lock_unlock(v11 + 4);
}

unint64_t lazy protocol witness table accessor for type _LocaleUnlocalized and conformance _LocaleUnlocalized()
{
  result = lazy protocol witness table cache variable for type _LocaleUnlocalized and conformance _LocaleUnlocalized;
  if (!lazy protocol witness table cache variable for type _LocaleUnlocalized and conformance _LocaleUnlocalized)
  {
    type metadata accessor for _LocaleUnlocalized();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _LocaleUnlocalized and conformance _LocaleUnlocalized);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for _LocaleUnlocalized(uint64_t a1)
{
  result = lazy protocol witness table accessor for type _LocaleUnlocalized and conformance _LocaleUnlocalized();
  *(a1 + 8) = result;
  return result;
}

uint64_t Date.ISO8601FormatStyle.parse(_:in:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = v3[1];
  v26 = *v3;
  v27 = v7;
  v28 = v3[2];
  v8 = String.subscript.getter();
  v10 = v9;

  if ((v8 ^ v10) < 0x4000)
  {
    goto LABEL_2;
  }

  v12 = v3[1];
  v19 = *v3;
  v20 = v12;
  v21 = v3[2];
  outlined init with copy of DateComponents.ISO8601FormatStyle(&v26, &v18);
  DateComponents.ISO8601FormatStyle.parse(_:fillMissingUnits:in:)(a1, a2, 1, __src);
  v23[0] = v19;
  v23[1] = v20;
  v23[2] = v21;
  outlined destroy of DateComponents.ISO8601FormatStyle(v23);
  memcpy(__dst, __src, 0x123uLL);
  memcpy(v25, __src, 0x123uLL);
  result = _s10Foundation17LocalePreferencesVSgWOg(v25);
  if (result == 1)
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 1;
  }

  else
  {
    v13 = v25[0];
    v14 = *(&v27 + 1);
    ObjectType = swift_getObjectType();
    memcpy(__src, &v25[1], 0x11BuLL);
    v16 = *(v14 + 176);
    swift_unknownObjectRetain();
    v16(&v19, __src, ObjectType, v14);
    outlined destroy of TermOfAddress?(__dst, &_sSS5IndexV_10Foundation14DateComponentsVtSgMd);
    result = swift_unknownObjectRelease();
    if (BYTE8(v19))
    {
LABEL_2:
      *a3 = 0;
      *(a3 + 8) = 0;
      *(a3 + 16) = 1;
      return result;
    }

    v17 = v19;
    *a3 = v13;
    *(a3 + 8) = v17;
    *(a3 + 16) = 0;
  }

  return result;
}

void *DateComponents.ISO8601FormatStyle.parse(_:fillMissingUnits:in:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char a3@<W2>, char *a4@<X8>)
{
  v10 = *(v4 + 4);
  v9 = *(v4 + 5);
  v11 = String.subscript.getter();
  v15 = v14;
  v52 = v11;
  v53 = v12;
  v54 = v13;
  v55 = v14;
  if ((v11 ^ v12) < 0x4000)
  {

    sub_1809417B0(__dst);
    v16 = __dst;
    v17 = a4;
    return memcpy(v17, v16, 0x123uLL);
  }

  v37 = a1;
  v38 = a4;
  if ((v14 & 0x1000000000000000) != 0)
  {
    Substring._slowMakeContiguousUTF8()();
    v13 = v54;
    v15 = v55;
    v18 = v52;
    v12 = v53;
  }

  else
  {
    v18 = v11;
  }

  v19 = v18 >> 16;
  v20 = v12 >> 16;
  if ((v15 & 0x2000000000000000) != 0)
  {
    v47 = v13;
    v48 = v15 & 0xFFFFFFFFFFFFFFLL;
    v25 = v20 - v19;
    v26 = v4[1];
    v41 = *v4;
    v42 = v26;
    v43 = v10;
    v44 = v9;
    v40[0] = v10;
    v40[1] = v9;
    swift_unknownObjectRetain();
    v27 = &v47 + v19;
    v19 = v37;
    DateComponents.ISO8601FormatStyle.components(from:fillMissingUnits:defaultTimeZone:in:)(v37, a2, a3 & 1, v40, v27, v25, &v45);
  }

  else
  {
    if ((v13 & 0x1000000000000000) != 0)
    {
      v21 = (v15 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      v21 = _StringObject.sharedUTF8.getter();
      if (!v21)
      {
        __break(1u);
        goto LABEL_25;
      }
    }

    v22 = v20 - v19;
    v23 = v4[1];
    v41 = *v4;
    v42 = v23;
    v43 = v10;
    v44 = v9;
    v47 = v10;
    v48 = v9;
    swift_unknownObjectRetain();
    v24 = (v21 + v19);
    v19 = v37;
    DateComponents.ISO8601FormatStyle.components(from:fillMissingUnits:defaultTimeZone:in:)(v37, a2, a3 & 1, &v47, v24, v22, &v45);
  }

  swift_unknownObjectRelease();
  v28 = v45;
  __src[0] = v45;
  memcpy(&__src[1], v46, 0x11BuLL);
  _NSBundleDeallocatingImmortalBundle(__src, v29);
  v49 = v28;
  memcpy(v50, v46, sizeof(v50));
  memcpy(__dst, __src, 0x123uLL);
  v9 = v38;
  outlined init with copy of FloatingPointRoundingRule?(&v49, &v45, &_sSi_10Foundation14DateComponentsVtMd);

  v30 = (v19 >> 59) & 1;
  if ((a2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v30) = 1;
  }

  if ((v18 & 0xC) != 4 << v30)
  {
    v31 = v49;
    if ((a2 & 0x1000000000000000) == 0)
    {
      goto LABEL_14;
    }

LABEL_26:
    v35 = MEMORY[0x1865CB180](v18, v31, v19, a2);
    outlined destroy of TermOfAddress?(__dst, &_sSi_10Foundation14DateComponentsVtSgMd);
    goto LABEL_20;
  }

LABEL_25:
  v18 = _StringGuts._slowEnsureMatchingEncoding(_:)(v18, v19, a2);
  v31 = v49;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_26;
  }

LABEL_14:
  result = outlined destroy of TermOfAddress?(__dst, &_sSi_10Foundation14DateComponentsVtSgMd);
  v33 = v31 + (v18 >> 16);
  if (__OFADD__(v31, v18 >> 16))
  {
    __break(1u);
    goto LABEL_28;
  }

  if ((v33 & 0x8000000000000000) != 0)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v34 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v34 = v19 & 0xFFFFFFFFFFFFLL;
  }

  if (v34 >= v33)
  {
    v35 = (v33 << 16) | 4;
LABEL_20:
    memcpy(v46, v50, sizeof(v46));
    v45 = v35;
    _NSBundleDeallocatingImmortalBundle(&v45, v36);
    v16 = &v45;
    v17 = v9;
    return memcpy(v17, v16, 0x123uLL);
  }

LABEL_29:
  __break(1u);
  return result;
}

double sub_1809417B0(uint64_t a1)
{
  result = 0.0;
  *a1 = xmmword_1812187D0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 287) = 0;
  return result;
}

uint64_t DateComponents.ISO8601FormatStyle.components(from:fillMissingUnits:defaultTimeZone:in:)@<X0>(uint64_t a1@<X0>, __CFString *a2@<X1>, char a3@<W2>, char **a4@<X3>, unsigned __int8 *a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v9 = v8;
  v10 = v7;
  v11 = a2;
  v12 = a1;
  object = &v262;
  v284 = *MEMORY[0x1E69E9840];
  v15 = *a4;
  v14 = a4[1];
  v16 = v7[1];
  v277 = *v7;
  v278 = v16;
  v17 = v7[2];
  v281 = v16;
  v282 = v17;
  v279 = v17;
  v280 = v277;
  if (*(&v277 + 1))
  {
    v18 = BYTE8(v277);
  }

  else
  {
    v18 = 59;
  }

  v254 = a5;
  v255 = &a5[a6];
  v250 = v14;
  v251 = &a5[a6];
  v252 = v18;
  if ((v18 & 1) == 0)
  {
    if (a3)
    {
      if ((v18 & 2) == 0)
      {
        if ((v18 & 4) == 0)
        {
          swift_unknownObjectRetain();
          if ((v18 & 8) == 0)
          {
            v234 = 0;
            v235 = 0;
            v19 = 0;
            v242 = 0;
            LOBYTE(v243) = 0;
            v20 = 0;
            v21 = 0;
            v22 = 0;
            v23 = 0;
            v232 = 1;
            v233 = 0;
            v247 = 1970;
            v237 = 1;
            v238 = 0;
            v231 = 1;
            LOBYTE(v10) = 1;
            v241 = 1;
            v24 = 1;
            v246 = 1;
            goto LABEL_16;
          }

          goto LABEL_69;
        }

        LOBYTE(v244) = (v18 & 1) == 0;
        v43 = 1970;
        goto LABEL_52;
      }

      v247 = 1970;
      goto LABEL_22;
    }

    if ((v18 & 2) != 0)
    {
      v247 = 0;
LABEL_22:
      LOBYTE(v243) = a3 ^ 1;
      swift_unknownObjectRetain();
      v34 = 0;
      v246 = 1;
      goto LABEL_23;
    }

    if ((v18 & 4) != 0)
    {
      LOBYTE(v244) = (v18 & 1) == 0;
      v43 = 0;
LABEL_52:
      v44 = a3 ^ 1;
      swift_unknownObjectRetain();
      v40 = 0;
      goto LABEL_53;
    }

    if ((v18 & 8) == 0)
    {
      swift_unknownObjectRetain();
      v234 = 0;
      v235 = 0;
      v241 = 0;
      v242 = 0;
      v247 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v232 = 1;
      v233 = 0;
      v237 = 1;
      v238 = 0;
      v231 = 1;
      LOBYTE(v10) = 1;
      v19 = 1;
      v246 = 1;
      LOBYTE(v243) = 1;
      v24 = 1;
LABEL_16:
      v29 = 1;
      if ((v18 & 0x10) == 0)
      {
        goto LABEL_143;
      }

      goto LABEL_170;
    }

    swift_unknownObjectRetain();
    v238 = 0;
    v241 = 0;
    v247 = 0;
    v236 = 1;
    v246 = 1;
    LOBYTE(v243) = 1;
    goto LABEL_101;
  }

  LODWORD(v244) = (v18 & 1) == 0;
  v253 = a1;
  v27 = BYTE3(v277);
  v28 = v9;
  if (BYTE3(v277) == 1)
  {
    swift_unknownObjectRetain();

LABEL_19:
    v31 = v15;
    v32 = 0;
    v33 = 4;
    goto LABEL_28;
  }

  v30 = _stringCompareWithSmolCheck(_:_:expecting:)();
  swift_unknownObjectRetain();

  if (v30)
  {
    goto LABEL_19;
  }

  v31 = v15;
  v33 = 0;
  v32 = 1;
LABEL_28:
  outlined init with copy of DateComponents.ISO8601FormatStyle(&v277, &v262);
  v38 = specialized BufferViewIterator<A>.digits(minDigits:maxDigits:nanoseconds:input:onFailure:extendedDescription:)(0, 1, v33, v32, 0, v253, a2, 0, 0, &v254, &v277);
  if (v28)
  {
    outlined destroy of DateComponents.ISO8601FormatStyle(&v277);
    return swift_unknownObjectRelease();
  }

  v40 = v38;
  outlined destroy of DateComponents.ISO8601FormatStyle(&v277);
  v246 = (v18 & 4) == 0;
  if ((v18 & 4) != 0)
  {
    v34 = v40;
  }

  else
  {
    v34 = 0;
  }

  if ((v18 & 4) != 0)
  {
    v41 = 0;
  }

  else
  {
    v41 = v40;
  }

  v247 = v41;
  v15 = v31;
  if ((v18 & 2) != 0)
  {
    v243 = (v18 & 4) >> 2;
    if (v27)
    {
      v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v9 = 0;
      if ((v45 & 1) == 0)
      {
        v11 = a2;
        v12 = v253;
        goto LABEL_23;
      }
    }

    else
    {

      v9 = 0;
    }

    v11 = a2;
    v12 = v253;
    if (v254 >= v251 || (v59 = *v254, ++v254, v59 != 45))
    {
      v60 = v15;
      v61 = v10[1];
      *v283 = *v10;
      *&v283[16] = v61;
      *&v283[32] = v10[2];
      __tp.tv_sec = 0;
      __tp.tv_nsec = 0;
      outlined init with copy of DateComponents.ISO8601FormatStyle(&v277, &v262);
      clock_gettime(_CLOCK_REALTIME, &__tp);
      *&__tp.tv_sec = __tp.tv_sec + -978307200.0 + __tp.tv_nsec * 0.000000001;
      v62 = Date.ISO8601FormatStyle.format(_:)(__tp.tv_sec);
      object = v62._object;
      v262 = *v283;
      v263 = *&v283[16];
      v264 = *&v283[32];
      outlined destroy of Date.ISO8601FormatStyle(&v262);
      *v283 = 0;
      *&v283[8] = 0xE000000000000000;
      _StringGuts.grow(_:)(89);
      MEMORY[0x1865CB0E0](0x7020746F6E6E6143, 0xED00002065737261);
      MEMORY[0x1865CB0E0](v253, v11);
      MEMORY[0x1865CB0E0](46, 0xE100000000000000);
      MEMORY[0x1865CB0E0](0xD000000000000045, 0x800000018147DB60);
      MEMORY[0x1865CB0E0](v62._countAndFlagsBits, v62._object);
      MEMORY[0x1865CB0E0](46, 0xE100000000000000);
      v63 = *v283;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd);
      v64 = swift_allocObject();
      *(v64 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSDebugDescription");
      *(v64 + 72) = MEMORY[0x1E69E6158];
      *(v64 + 40) = v65;
      *(v64 + 48) = v63;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd);
      v66 = static _DictionaryStorage.allocate(capacity:)();
      outlined init with copy of FloatingPointRoundingRule?(v64 + 32, v283, &_sSS_yptMd);
      swift_setDeallocating();

      outlined destroy of TermOfAddress?(v64 + 32, &_sSS_yptMd);
      swift_deallocClassInstance();
      v15 = *&v283[8];
      v67 = *v283;
      v68 = specialized __RawDictionaryStorage.find<A>(_:)(*v283, *&v283[8]);
      v70 = v69;

      if (v70)
      {
        __break(1u);
      }

      else
      {
        v66[(v68 >> 6) + 8] |= 1 << v68;
        v71 = (v66[6] + 16 * v68);
        *v71 = v67;
        v71[1] = v15;
        outlined init with take of Any(&v283[16], (v66[7] + 32 * v68));
        v72 = v66[2];
        v73 = __OFADD__(v72, 1);
        v74 = v72 + 1;
        if (!v73)
        {
          v66[2] = v74;
          static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSCocoaErrorDomain");
          v75 = objc_allocWithZone(NSError);
          v76 = String._bridgeToObjectiveCImpl()();

          v9 = [v75 initWithDomain:v76 code:2048 userInfo:_NativeDictionary.bridged()()];
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          v77 = [v9 domain];
          v12 = static String._unconditionallyBridgeFromObjectiveC(_:)(v77);
          v79 = v78;

          v80 = static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSCocoaErrorDomain");
          v15 = v81;
          if (v12 != v80 || v79 != v81)
          {
            v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v11 & 1) == 0)
            {
              __break(1u);
LABEL_69:
              v238 = 0;
              v236 = 0;
              LOBYTE(v243) = 0;
              v247 = 1970;
              v241 = 1;
              v246 = 1;
              goto LABEL_101;
            }

LABEL_117:
            swift_willThrow();
            return swift_unknownObjectRelease();
          }

LABEL_111:

          goto LABEL_117;
        }
      }

      __break(1u);
      goto LABEL_251;
    }

LABEL_23:
    v242 = v34;
    if (BYTE3(v277) == 1)
    {
    }

    else
    {
      v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v35 & 1) == 0)
      {
        v37 = 0;
        v36 = 1;
        goto LABEL_45;
      }
    }

    v36 = 0;
    v37 = 2;
LABEL_45:
    outlined init with copy of DateComponents.ISO8601FormatStyle(&v277, &v262);
    v46 = specialized BufferViewIterator<A>.digits(minDigits:maxDigits:nanoseconds:input:onFailure:extendedDescription:)(0, 1, v37, v36, 0, v12, v11, 0, 0, &v254, &v277);
    if (v9)
    {
      goto LABEL_198;
    }

    v240 = v11;
    v241 = v46;
    outlined destroy of DateComponents.ISO8601FormatStyle(&v277);
    v260 = v278;
    v47 = *(&v278 + 1);
    ObjectType = swift_getObjectType();
    v283[0] = 2;
    v49 = *(v47 + 136);
    outlined init with copy of Calendar(&v260, &v262);
    v50 = v49(v283, ObjectType, v47);
    v52 = v51;
    LOBYTE(ObjectType) = v53;
    result = outlined destroy of Calendar(&v260);
    if (ObjectType)
    {
LABEL_267:
      __break(1u);
      goto LABEL_268;
    }

    if (v241 >= v50 && v241 < v52)
    {
      object = &v262;
      v234 = 0;
      v235 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v232 = 1;
      v233 = 0;
      v237 = 1;
      v238 = 0;
      v24 = 1;
      v231 = 1;
      LOBYTE(v10) = 1;
      v29 = 1;
      v9 = 0;
      goto LABEL_143;
    }

    v54 = v10[1];
    *v283 = *v10;
    *&v283[16] = v54;
    *&v283[32] = v10[2];
    __tp.tv_sec = 0;
    __tp.tv_nsec = 0;
    outlined init with copy of DateComponents.ISO8601FormatStyle(&v277, &v262);
    clock_gettime(_CLOCK_REALTIME, &__tp);
    *&__tp.tv_sec = __tp.tv_sec + -978307200.0 + __tp.tv_nsec * 0.000000001;
    v55 = Date.ISO8601FormatStyle.format(_:)(__tp.tv_sec);
    countAndFlagsBits = v55._countAndFlagsBits;
    v57 = v55._object;
    v262 = *v283;
    v263 = *&v283[16];
    v264 = *&v283[32];
    outlined destroy of Date.ISO8601FormatStyle(&v262);
    v58 = v12;
LABEL_157:
    v178 = v240;
LABEL_219:
    v217.value._countAndFlagsBits = countAndFlagsBits;
    v217.value._object = v57;
    parseError(_:exampleFormattedString:extendedDescription:)(v283, *&v58, v217, 0);

    swift_willThrow();
    return swift_unknownObjectRelease();
  }

  v9 = 0;
  if ((v18 & 4) != 0)
  {
    if (v27)
    {
      v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v11 = a2;
      if ((v42 & 1) == 0)
      {
        v43 = 0;
        v44 = 1;
        v12 = v253;
        goto LABEL_53;
      }
    }

    else
    {

      v11 = a2;
    }

    v12 = v253;
    if (v254 < v251)
    {
      v85 = *v254++;
      if (v85 == 45)
      {
        v43 = 0;
        v44 = 1;
LABEL_53:
        outlined init with copy of DateComponents.ISO8601FormatStyle(&v277, &v262);
        specialized BufferViewIterator<A>.expectCharacter(_:input:onFailure:extendedDescription:)(0x57, v12, v11, 0, 0, &v254, &v277);
        if (v9)
        {
          goto LABEL_198;
        }

        outlined destroy of DateComponents.ISO8601FormatStyle(&v277);
        v242 = v40;
        LOBYTE(v243) = v44;
        v247 = v43;
        if (BYTE3(v277))
        {
        }

        else
        {
          v82 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v82 & 1) == 0)
          {
            v84 = 0;
            v83 = 1;
            goto LABEL_87;
          }
        }

        v83 = 0;
        v84 = 2;
LABEL_87:
        outlined init with copy of DateComponents.ISO8601FormatStyle(&v277, &v262);
        v238 = specialized BufferViewIterator<A>.digits(minDigits:maxDigits:nanoseconds:input:onFailure:extendedDescription:)(0, 1, v84, v83, 0, v12, v11, 0, 0, &v254, &v277);
        v240 = v11;
        outlined destroy of DateComponents.ISO8601FormatStyle(&v277);
        v259 = v278;
        v107 = *(&v278 + 1);
        v108 = swift_getObjectType();
        v283[0] = 11;
        v109 = *(v107 + 136);
        outlined init with copy of Calendar(&v259, &v262);
        v110 = v109(v283, v108, v107);
        v112 = v111;
        LOBYTE(v107) = v113;
        result = outlined destroy of Calendar(&v259);
        if (v107)
        {
LABEL_271:
          __break(1u);
          goto LABEL_272;
        }

        if (v238 >= v110 && v238 < v112)
        {
          object = &v262;
          v234 = 0;
          v235 = 0;
          LOBYTE(v10) = 0;
          v241 = 0;
          v20 = 0;
          v21 = 0;
          v22 = 0;
          v23 = 0;
          v232 = 1;
          v233 = 0;
          v237 = 1;
          v231 = 1;
          v19 = 1;
          v246 = v244;
          v24 = 1;
          v29 = 1;
          v9 = 0;
          goto LABEL_143;
        }

        v155 = v10[1];
        *v283 = *v10;
        *&v283[16] = v155;
        v156 = v10[2];
        goto LABEL_156;
      }
    }

    v19 = v15;
    v86 = v10[1];
    *v283 = *v10;
    *&v283[16] = v86;
    *&v283[32] = v10[2];
    __tp.tv_sec = 0;
    __tp.tv_nsec = 0;
    outlined init with copy of DateComponents.ISO8601FormatStyle(&v277, &v262);
    clock_gettime(_CLOCK_REALTIME, &__tp);
    *&__tp.tv_sec = __tp.tv_sec + -978307200.0 + __tp.tv_nsec * 0.000000001;
    v87 = Date.ISO8601FormatStyle.format(_:)(__tp.tv_sec);
    object = v87._object;
    v262 = *v283;
    v263 = *&v283[16];
    v264 = *&v283[32];
    outlined destroy of Date.ISO8601FormatStyle(&v262);
    *v283 = 0;
    *&v283[8] = 0xE000000000000000;
    _StringGuts.grow(_:)(89);
    MEMORY[0x1865CB0E0](0x7020746F6E6E6143, 0xED00002065737261);
    MEMORY[0x1865CB0E0](v253, v11);
    MEMORY[0x1865CB0E0](46, 0xE100000000000000);
    MEMORY[0x1865CB0E0](0xD000000000000045, 0x800000018147DB60);
    MEMORY[0x1865CB0E0](v87._countAndFlagsBits, v87._object);
    MEMORY[0x1865CB0E0](46, 0xE100000000000000);
    v89 = *&v283[8];
    v88 = *v283;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd);
    v90 = swift_allocObject();
    *(v90 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSDebugDescription");
    *(v90 + 72) = MEMORY[0x1E69E6158];
    *(v90 + 40) = v91;
    *(v90 + 48) = __PAIR128__(v89, v88);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd);
    v92 = static _DictionaryStorage.allocate(capacity:)();
    v12 = v283;
    outlined init with copy of FloatingPointRoundingRule?(v90 + 32, v283, &_sSS_yptMd);
    swift_setDeallocating();

    outlined destroy of TermOfAddress?(v90 + 32, &_sSS_yptMd);
    swift_deallocClassInstance();
    v93 = *v283;
    v94 = specialized __RawDictionaryStorage.find<A>(_:)(*v283, *&v283[8]);
    v96 = v95;

    if ((v96 & 1) == 0)
    {
      *(v92 + 8 * (v94 >> 6) + 64) |= 1 << v94;
      *(*(v92 + 48) + 16 * v94) = v93;
      result = outlined init with take of Any(&v283[16], (*(v92 + 56) + 32 * v94));
      v97 = *(v92 + 16);
      v73 = __OFADD__(v97, 1);
      v98 = v97 + 1;
      if (!v73)
      {
        *(v92 + 16) = v98;
        static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSCocoaErrorDomain");
        v99 = objc_allocWithZone(NSError);
        v100 = String._bridgeToObjectiveCImpl()();

        v101 = [v99 initWithDomain:v100 code:2048 userInfo:_NativeDictionary.bridged()()];
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v102 = [v101 domain];
        v103 = static String._unconditionallyBridgeFromObjectiveC(_:)(v102);
        v105 = v104;

        if (v103 == static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSCocoaErrorDomain") && v105 == v106)
        {
          goto LABEL_111;
        }

        v114 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v114)
        {
          goto LABEL_117;
        }

LABEL_262:
        __break(1u);
        goto LABEL_263;
      }

LABEL_255:
      __break(1u);
      goto LABEL_256;
    }

LABEL_254:
    __break(1u);
    goto LABEL_255;
  }

  if ((a3 & 1) == 0)
  {
    object = &v262;
    v11 = a2;
    if ((v18 & 8) == 0)
    {
      v234 = 0;
      v235 = 0;
      v241 = 0;
      v242 = 0;
      LOBYTE(v243) = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v232 = 1;
      v233 = 0;
      v237 = 1;
      v238 = 0;
      v24 = 1;
      v231 = 1;
      LOBYTE(v10) = 1;
      v19 = 1;
      goto LABEL_84;
    }

    v238 = 0;
    v241 = 0;
    v19 = 0;
    LOBYTE(v243) = 0;
    v236 = 1;
LABEL_95:
    v246 = 1;
    v247 = v40;
    v12 = v253;
    if (BYTE3(v277))
    {
      v115 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v115 & 1) == 0)
      {
        goto LABEL_101;
      }
    }

    else
    {
    }

    if (v254 < v251)
    {
      v116 = *v254++;
      if (v116 == 45)
      {
LABEL_101:
        v237 = (v18 & 4) == 0;
        if ((v18 & 4) == 0)
        {
          if ((v18 & 2) == 0)
          {
            if (BYTE3(v277))
            {
            }

            else
            {
              v138 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if ((v138 & 1) == 0)
              {
                v140 = 0;
                v139 = 1;
LABEL_130:
                outlined init with copy of DateComponents.ISO8601FormatStyle(&v277, &v262);
                v157 = specialized BufferViewIterator<A>.digits(minDigits:maxDigits:nanoseconds:input:onFailure:extendedDescription:)(0, 1, v140, v139, 0, v12, v11, 0, 0, &v254, &v277);
                if (v9)
                {
                  goto LABEL_198;
                }

                v235 = v157;
                v240 = v11;
                outlined destroy of DateComponents.ISO8601FormatStyle(&v277);
                v256 = object[10];
                v158 = *(&v256 + 1);
                v159 = swift_getObjectType();
                v283[0] = 18;
                v160 = *(v158 + 136);
                outlined init with copy of Calendar(&v256, &v262);
                v161 = v160(v283, v159, v158);
                v163 = v162;
                LOBYTE(v158) = v164;
                result = outlined destroy of Calendar(&v256);
                if (v158)
                {
LABEL_273:
                  __break(1u);
                  goto LABEL_274;
                }

                if (v235 >= v161 && v235 < v163)
                {
                  v242 = 0;
                  v232 = 0;
                  v233 = 0;
                  v234 = 0;
                  goto LABEL_135;
                }

                goto LABEL_155;
              }
            }

            v139 = 0;
            v140 = 3;
            goto LABEL_130;
          }

          if (BYTE3(v277))
          {
          }

          else
          {
            v141 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v141 & 1) == 0)
            {
              v143 = 0;
              v142 = 1;
LABEL_137:
              outlined init with copy of DateComponents.ISO8601FormatStyle(&v277, &v262);
              v165 = specialized BufferViewIterator<A>.digits(minDigits:maxDigits:nanoseconds:input:onFailure:extendedDescription:)(0, 1, v143, v142, 0, v12, v11, 0, 0, &v254, &v277);
              if (v9)
              {
                goto LABEL_198;
              }

              v234 = v165;
              v240 = v11;
              outlined destroy of DateComponents.ISO8601FormatStyle(&v277);
              v257 = object[10];
              v166 = *(&v257 + 1);
              v167 = swift_getObjectType();
              v283[0] = 3;
              v168 = *(v166 + 136);
              outlined init with copy of Calendar(&v257, &v262);
              v169 = v168(v283, v167, v166);
              v171 = v170;
              LOBYTE(v166) = v172;
              result = outlined destroy of Calendar(&v257);
              if (v166)
              {
LABEL_274:
                __break(1u);
                goto LABEL_275;
              }

              if (v234 >= v169 && v234 < v171)
              {
                v242 = 0;
                v235 = 0;
                v231 = 0;
                v232 = 1;
                v233 = 0;
                goto LABEL_142;
              }

LABEL_155:
              *v283 = v280;
              *&v283[16] = v281;
              v156 = v282;
LABEL_156:
              *&v283[32] = v156;
              __tp.tv_sec = 0;
              __tp.tv_nsec = 0;
              outlined init with copy of DateComponents.ISO8601FormatStyle(&v277, &v262);
              clock_gettime(_CLOCK_REALTIME, &__tp);
              *&__tp.tv_sec = __tp.tv_sec + -978307200.0 + __tp.tv_nsec * 0.000000001;
              v177 = Date.ISO8601FormatStyle.format(_:)(__tp.tv_sec);
              countAndFlagsBits = v177._countAndFlagsBits;
              v57 = v177._object;
              v262 = *v283;
              v263 = *&v283[16];
              v264 = *&v283[32];
              outlined destroy of Date.ISO8601FormatStyle(&v262);
              v58 = v12;
              goto LABEL_157;
            }
          }

          v142 = 0;
          v143 = 2;
          goto LABEL_137;
        }

        if (BYTE3(v277) == 1)
        {
        }

        else
        {
          v134 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v134 & 1) == 0)
          {
            v136 = 0;
            v135 = 1;
LABEL_123:
            outlined init with copy of DateComponents.ISO8601FormatStyle(&v277, &v262);
            v144 = specialized BufferViewIterator<A>.digits(minDigits:maxDigits:nanoseconds:input:onFailure:extendedDescription:)(0, 1, v136, v135, 0, v12, v11, 0, 0, &v254, &v277);
            if (v9)
            {
              goto LABEL_198;
            }

            v242 = 0;
            v145 = v12;
            v240 = v11;
            v146 = v144;
            outlined destroy of DateComponents.ISO8601FormatStyle(&v277);
            v258 = v278;
            v147 = *(&v278 + 1);
            v148 = swift_getObjectType();
            v283[0] = 7;
            v149 = *(v147 + 136);
            outlined init with copy of Calendar(&v258, &v262);
            v150 = v149(v283, v148, v147);
            v152 = v151;
            LOBYTE(v147) = v153;
            result = outlined destroy of Calendar(&v258);
            if (v147)
            {
LABEL_272:
              __break(1u);
              goto LABEL_273;
            }

            v154 = v146 % 7 + 1;
            v12 = v145;
            if (v154 >= v150 && v154 < v152)
            {
              v233 = v146 % 7 + 1;
              v234 = 0;
              v235 = 0;
              v232 = 1;
LABEL_135:
              v231 = 1;
LABEL_142:
              object = &v262;
              v9 = 0;
              LOBYTE(v10) = 1;
              v19 = v236;
              v20 = 0;
              v21 = 0;
              v22 = 0;
              v23 = 0;
              v24 = 1;
              v29 = 1;
              v11 = v240;
              goto LABEL_143;
            }

            goto LABEL_155;
          }
        }

        v135 = 0;
        v136 = 2;
        goto LABEL_123;
      }
    }

    LOBYTE(v10) = v15;
    *v283 = v280;
    *&v283[16] = v281;
    *&v283[32] = v282;
    __tp.tv_sec = 0;
    __tp.tv_nsec = 0;
    outlined init with copy of DateComponents.ISO8601FormatStyle(&v277, &v262);
    clock_gettime(_CLOCK_REALTIME, &__tp);
    *&__tp.tv_sec = __tp.tv_sec + -978307200.0 + __tp.tv_nsec * 0.000000001;
    v117 = Date.ISO8601FormatStyle.format(_:)(__tp.tv_sec);
    object = v117._object;
    v262 = *v283;
    v263 = *&v283[16];
    v264 = *&v283[32];
    outlined destroy of Date.ISO8601FormatStyle(&v262);
    *v283 = 0;
    *&v283[8] = 0xE000000000000000;
    _StringGuts.grow(_:)(89);
    MEMORY[0x1865CB0E0](0x7020746F6E6E6143, 0xED00002065737261);
    MEMORY[0x1865CB0E0](v253, v11);
    MEMORY[0x1865CB0E0](46, 0xE100000000000000);
    MEMORY[0x1865CB0E0](0xD000000000000045, 0x800000018147DB60);
    MEMORY[0x1865CB0E0](v117._countAndFlagsBits, v117._object);
    MEMORY[0x1865CB0E0](46, 0xE100000000000000);
    v119 = *&v283[8];
    v118 = *v283;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd);
    v120 = swift_allocObject();
    *(v120 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSDebugDescription");
    *(v120 + 72) = MEMORY[0x1E69E6158];
    *(v120 + 40) = v121;
    *(v120 + 48) = __PAIR128__(v119, v118);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd);
    v92 = static _DictionaryStorage.allocate(capacity:)();
    v12 = v283;
    outlined init with copy of FloatingPointRoundingRule?(v120 + 32, v283, &_sSS_yptMd);
    swift_setDeallocating();

    outlined destroy of TermOfAddress?(v120 + 32, &_sSS_yptMd);
    swift_deallocClassInstance();
    v122 = *v283;
    v94 = specialized __RawDictionaryStorage.find<A>(_:)(*v283, *&v283[8]);
    v96 = v123;

    if (v96)
    {
      __break(1u);
    }

    else
    {
      *(v92 + 8 * (v94 >> 6) + 64) |= 1 << v94;
      *(*(v92 + 48) + 16 * v94) = v122;
      result = outlined init with take of Any(&v283[16], (*(v92 + 56) + 32 * v94));
      v124 = *(v92 + 16);
      v73 = __OFADD__(v124, 1);
      v125 = v124 + 1;
      if (!v73)
      {
        *(v92 + 16) = v125;
        static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSCocoaErrorDomain");
        v126 = objc_allocWithZone(NSError);
        v127 = String._bridgeToObjectiveCImpl()();

        v128 = [v126 initWithDomain:v127 code:2048 userInfo:_NativeDictionary.bridged()()];
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v129 = [v128 domain];
        v130 = static String._unconditionallyBridgeFromObjectiveC(_:)(v129);
        v132 = v131;

        if (v130 == static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSCocoaErrorDomain") && v132 == v133)
        {
          goto LABEL_111;
        }

        v137 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v137)
        {
          goto LABEL_117;
        }

        __break(1u);
        goto LABEL_262;
      }
    }

    __break(1u);
    goto LABEL_254;
  }

  object = &v262;
  v11 = a2;
  if ((v18 & 8) != 0)
  {
    v238 = 0;
    v236 = 0;
    v19 = 0;
    LOBYTE(v243) = 0;
    v241 = 1;
    goto LABEL_95;
  }

  v234 = 0;
  v235 = 0;
  v19 = 0;
  v242 = 0;
  LOBYTE(v243) = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v237 = 1;
  v238 = 0;
  v232 = 1;
  v233 = 0;
  v231 = 1;
  LOBYTE(v10) = 1;
  v241 = 1;
  v24 = 1;
LABEL_84:
  v246 = 1;
  v247 = v40;
  v29 = 1;
  v12 = v253;
  if ((v18 & 0x10) == 0)
  {
    goto LABEL_143;
  }

  if (BYTE4(v277) == 1)
  {
    outlined init with copy of DateComponents.ISO8601FormatStyle(&v277, &v262);
    specialized BufferViewIterator<A>.expectCharacter(_:input:onFailure:extendedDescription:)(0x54, v253, v11, 0, 0, &v254, &v277);
  }

  else
  {
    outlined init with copy of DateComponents.ISO8601FormatStyle(&v277, &v262);
    specialized BufferViewIterator<A>.expectOneOrMoreCharacters(_:input:onFailure:extendedDescription:)(0x20u, v253, v11, 0, 0, &v254, &v277);
  }

  v9 = 0;
  outlined destroy of DateComponents.ISO8601FormatStyle(&v277);
LABEL_170:
  if (v277)
  {
    outlined init with copy of DateComponents.ISO8601FormatStyle(&v277, &v262);
    v197 = specialized BufferViewIterator<A>.digits(minDigits:maxDigits:nanoseconds:input:onFailure:extendedDescription:)(0, 1, 2, 0, 0, v12, v11, 0, 0, &v254, &v277);
    if (!v9)
    {
      v245 = v197;
      outlined destroy of DateComponents.ISO8601FormatStyle(&v277);
      outlined init with copy of DateComponents.ISO8601FormatStyle(&v277, &v262);
      v198 = specialized BufferViewIterator<A>.digits(minDigits:maxDigits:nanoseconds:input:onFailure:extendedDescription:)(0, 1, 2, 0, 0, v12, v11, 0, 0, &v254, &v277);
      outlined destroy of DateComponents.ISO8601FormatStyle(&v277);
      outlined init with copy of DateComponents.ISO8601FormatStyle(&v277, &v262);
      v199 = specialized BufferViewIterator<A>.digits(minDigits:maxDigits:nanoseconds:input:onFailure:extendedDescription:)(0, 1, 2, 0, 0, v12, v11, 0, 0, &v254, &v277);
      goto LABEL_173;
    }

LABEL_198:
    outlined destroy of DateComponents.ISO8601FormatStyle(&v277);
    return swift_unknownObjectRelease();
  }

  outlined init with copy of DateComponents.ISO8601FormatStyle(&v277, &v262);
  v202 = specialized BufferViewIterator<A>.digits(minDigits:maxDigits:nanoseconds:input:onFailure:extendedDescription:)(0, 1, 0, 1, 0, v12, v11, 0, 0, &v254, &v277);
  if (v9)
  {
    goto LABEL_198;
  }

  v245 = v202;
  outlined destroy of DateComponents.ISO8601FormatStyle(&v277);
  outlined init with copy of DateComponents.ISO8601FormatStyle(&v277, &v262);
  specialized BufferViewIterator<A>.expectCharacter(_:input:onFailure:extendedDescription:)(0x3A, v12, v11, 0, 0, &v254, &v277);
  v198 = specialized BufferViewIterator<A>.digits(minDigits:maxDigits:nanoseconds:input:onFailure:extendedDescription:)(0, 1, 0, 1, 0, v12, v11, 0, 0, &v254, &v277);
  outlined destroy of DateComponents.ISO8601FormatStyle(&v277);
  outlined init with copy of DateComponents.ISO8601FormatStyle(&v277, &v262);
  specialized BufferViewIterator<A>.expectCharacter(_:input:onFailure:extendedDescription:)(0x3A, v12, v11, 0, 0, &v254, &v277);
  v199 = specialized BufferViewIterator<A>.digits(minDigits:maxDigits:nanoseconds:input:onFailure:extendedDescription:)(0, 1, 0, 1, 0, v12, v11, 0, 0, &v254, &v277);
  v9 = 0;
LABEL_173:
  v200 = v199;
  outlined destroy of DateComponents.ISO8601FormatStyle(&v277);
  v251 = v255;
  if (v254 >= v255)
  {
    v20 = 0;
    v29 = 0;
    v24 = 1;
    LOBYTE(v10) = 1;
    v23 = v245;
    v22 = v198;
    v21 = v200;
  }

  else
  {
    v29 = 0;
    v20 = 0;
    v23 = v245;
    v22 = v198;
    v21 = v200;
    if (*v254 == 46)
    {
      v230 = v200;
      ++v254;
      outlined init with copy of DateComponents.ISO8601FormatStyle(&v277, &v262);
      v201 = specialized BufferViewIterator<A>.digits(minDigits:maxDigits:nanoseconds:input:onFailure:extendedDescription:)(0, 1, 0, 1, 1, v12, v11, 0, 0, &v254, &v277);
      outlined destroy of DateComponents.ISO8601FormatStyle(&v277);
      v20 = v201;
      v24 = 0;
      v29 = 0;
      LOBYTE(v10) = 1;
      v23 = v245;
      v22 = v198;
      v21 = v230;
    }

    else
    {
      LOBYTE(v10) = 1;
      v24 = 1;
    }
  }

LABEL_143:
  v227 = v24;
  v244 = v23;
  v253 = v22;
  v228 = v20;
  v229 = v21;
  if ((v18 & 0x20) == 0)
  {
    v236 = v19;
    v68 = a7;
    goto LABEL_164;
  }

  v252 = v29;
  if ((BYTE4(v277) & 1) == 0)
  {

    goto LABEL_149;
  }

  v173 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v173)
  {
LABEL_149:
    BufferViewIterator<A>.expectZeroOrMoreCharacters(_:)(32);
  }

  v174 = v254;
  if (v254 >= v251)
  {
    goto LABEL_218;
  }

  v175 = v254 + 1;
  v176 = *v254++;
  if (v176 > 102)
  {
    if (v176 != 103)
    {
      if (v176 != 122)
      {
        goto LABEL_184;
      }

      goto LABEL_160;
    }
  }

  else if (v176 != 71)
  {
    if (v176 != 90)
    {
      goto LABEL_184;
    }

LABEL_160:
    v236 = v19;
    if (one-time initialization token for cache == -1)
    {
LABEL_161:
      v250 = *(&xmmword_1ED440468 + 1);
      v179 = xmmword_1ED440468;
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      v15 = v179;
LABEL_162:
      v68 = a7;
LABEL_163:
      v29 = v252;
LABEL_164:
      v70 = v29;
      v60 = v10;
      if (one-time initialization token for cache == -1)
      {
LABEL_165:
        LOBYTE(v262) = 7;
        v180 = CalendarCache.fixed(_:)(&v262);
        LOBYTE(v267) = 1;
        *&v262 = v180;
        *(&v262 + 1) = v181;
        *v283 = v15;
        *&v283[8] = v250;
        swift_unknownObjectRetain();
        Calendar.timeZone.setter(v283);
        v182 = v262;
        LOBYTE(v262) = 1;
        v283[0] = v243 & 1;
        LOBYTE(__tp.tv_sec) = v236;
        LOBYTE(v276) = v231;
        LOBYTE(v274) = v70;
        LOBYTE(v273) = v70;
        LOBYTE(v272) = v70;
        LOBYTE(v271) = v227;
        LOBYTE(v270) = v237;
        LOBYTE(v269) = 1;
        LOBYTE(v268) = 1;
        LOBYTE(v266) = 1;
        LOBYTE(v265) = v60;
        LOBYTE(v275) = v232;
        v183 = v267;
        result = a5;
        *v68 = v254 - a5;
        *(v68 + 8) = v182;
        *(v68 + 24) = v15;
        *(v68 + 32) = v250;
        *(v68 + 40) = 0;
        *(v68 + 48) = 1;
        *(v68 + 49) = v262;
        *(v68 + 52) = *(&v262 + 3);
        *(v68 + 56) = v247;
        *(v68 + 64) = v243 & 1;
        *(v68 + 65) = *v283;
        *(v68 + 68) = *(object + 243);
        *(v68 + 72) = v241;
        *(v68 + 80) = v236;
        tv_sec = __tp.tv_sec;
        *(v68 + 84) = *(&__tp.tv_sec + 3);
        *(v68 + 81) = tv_sec;
        *(v68 + 88) = v234;
        *(v68 + 96) = v231;
        v185 = v276;
        *(v68 + 100) = *(object + 139);
        *(v68 + 97) = v185;
        *(v68 + 104) = v235;
        *(v68 + 112) = v232;
        v186 = v275;
        *(v68 + 116) = *(object + 131);
        *(v68 + 113) = v186;
        *(v68 + 120) = v244;
        *(v68 + 128) = v70;
        v187 = v274;
        *(v68 + 132) = *(object + 123);
        *(v68 + 129) = v187;
        *(v68 + 136) = v253;
        *(v68 + 144) = v70;
        v188 = v273;
        *(v68 + 148) = *(object + 115);
        *(v68 + 145) = v188;
        *(v68 + 152) = v229;
        *(v68 + 160) = v70;
        v189 = v272;
        *(v68 + 164) = *(object + 107);
        *(v68 + 161) = v189;
        *(v68 + 168) = v228;
        *(v68 + 176) = v227;
        v190 = v271;
        *(v68 + 180) = *(object + 99);
        *(v68 + 177) = v190;
        *(v68 + 184) = v233;
        *(v68 + 192) = v237;
        v191 = v270;
        *(v68 + 196) = *(object + 91);
        *(v68 + 193) = v191;
        *(v68 + 200) = 0;
        *(v68 + 208) = 1;
        v192 = v269;
        *(v68 + 212) = *(object + 83);
        *(v68 + 209) = v192;
        *(v68 + 216) = 0;
        *(v68 + 224) = 1;
        v193 = v268;
        *(v68 + 228) = *(object + 75);
        *(v68 + 225) = v193;
        *(v68 + 232) = 0;
        *(v68 + 240) = v183;
        v194 = v267;
        *(v68 + 244) = *(object + 67);
        *(v68 + 241) = v194;
        *(v68 + 248) = 0;
        *(v68 + 256) = 1;
        v195 = v266;
        *(v68 + 260) = *(object + 59);
        *(v68 + 257) = v195;
        *(v68 + 264) = v238;
        *(v68 + 272) = v60;
        v196 = v265;
        *(v68 + 276) = *(object + 51);
        *(v68 + 273) = v196;
        *(v68 + 280) = v242;
        *(v68 + 288) = v246;
        *(v68 + 289) = 514;
        return result;
      }

LABEL_251:
      swift_once();
      goto LABEL_165;
    }

LABEL_263:
    swift_once();
    goto LABEL_161;
  }

  if (v175 < v251)
  {
    v203 = v174[1];
    v175 = v174 + 2;
    v254 = v174 + 2;
    if ((v203 | 0x20) == 0x6D && v175 < v251)
    {
      v204 = v174[2];
      v175 = v174 + 3;
      v254 = v174 + 3;
      if ((v204 | 0x20) == 0x74)
      {
        if (v175 < v251)
        {
          v205 = *v175;
        }

        else
        {
          v205 = 0;
        }

        if (v175 >= v251)
        {
          goto LABEL_225;
        }

        if (v205 == 43)
        {
          v206 = v12;
          v215 = 1;
          LOBYTE(v12) = 1;
        }

        else
        {
          if (v205 != 45)
          {
            goto LABEL_225;
          }

          v206 = v12;
          v215 = 0;
          LOBYTE(v12) = 0;
        }

        if (v175 >= v251)
        {
          goto LABEL_197;
        }

        v220 = v174 + 4;
LABEL_248:
        v254 = v220;
        LOBYTE(v12) = v215;
        goto LABEL_197;
      }
    }
  }

LABEL_184:
  if (v176 > 84)
  {
    if (v176 != 117 && v176 != 85)
    {
      goto LABEL_218;
    }

    if (v175 >= v251)
    {
      goto LABEL_218;
    }

    v207 = *v175;
    v254 = v175 + 1;
    if ((v207 | 0x20) != 0x74)
    {
      goto LABEL_218;
    }

    if ((v175 + 1) >= v251)
    {
      goto LABEL_218;
    }

    v208 = v175[1];
    v209 = v175 + 2;
    v254 = v175 + 2;
    if ((v208 | 0x20) != 0x63)
    {
      goto LABEL_218;
    }

    if (v209 < v251)
    {
      v210 = *v209;
    }

    else
    {
      v210 = 0;
    }

    if (v209 < v251)
    {
      if (v210 == 43)
      {
        v206 = v12;
        v215 = 1;
        LOBYTE(v12) = 1;
        goto LABEL_246;
      }

      if (v210 == 45)
      {
        v206 = v12;
        v215 = 0;
        LOBYTE(v12) = 0;
LABEL_246:
        if (v209 >= v251)
        {
          goto LABEL_197;
        }

        v220 = v175 + 3;
        goto LABEL_248;
      }
    }

LABEL_225:
    v236 = v19;
    goto LABEL_226;
  }

  if (v176 == 43)
  {
    v206 = v12;
    LOBYTE(v12) = 1;
    goto LABEL_197;
  }

  if (v176 != 45)
  {
LABEL_218:
    *v283 = v280;
    *&v283[16] = v281;
    *&v283[32] = v282;
    __tp.tv_sec = 0;
    __tp.tv_nsec = 0;
    outlined init with copy of DateComponents.ISO8601FormatStyle(&v277, &v262);
    clock_gettime(_CLOCK_REALTIME, &__tp);
    *&__tp.tv_sec = __tp.tv_sec + -978307200.0 + __tp.tv_nsec * 0.000000001;
    v216 = Date.ISO8601FormatStyle.format(_:)(__tp.tv_sec);
    countAndFlagsBits = v216._countAndFlagsBits;
    v57 = v216._object;
    v262 = *v283;
    v263 = *&v283[16];
    v264 = *&v283[32];
    outlined destroy of Date.ISO8601FormatStyle(&v262);
    v58 = v12;
    v178 = v11;
    goto LABEL_219;
  }

  v206 = v12;
  LOBYTE(v12) = 0;
LABEL_197:
  outlined init with copy of DateComponents.ISO8601FormatStyle(&v277, &v262);
  v96 = v206;
  v211 = specialized BufferViewIterator<A>.digits(minDigits:maxDigits:nanoseconds:input:onFailure:extendedDescription:)(0, 1, 2, 0, 0, v206, v11, 0, 0, &v254, &v277);
  if (v9)
  {
    goto LABEL_198;
  }

  v92 = v211;
  outlined destroy of DateComponents.ISO8601FormatStyle(&v277);
  if (v254 >= v255)
  {
LABEL_201:
    result = 3600 * v92;
    if ((v92 * 3600) >> 64 != (3600 * v92) >> 63)
    {
      __break(1u);
      goto LABEL_265;
    }

    v236 = v19;
    if (result)
    {
      goto LABEL_203;
    }

    goto LABEL_226;
  }

  if (*v254 == 58)
  {
    ++v254;
  }

  else if (*v254 - 58 <= 0xFFFFFFF5)
  {
    goto LABEL_201;
  }

  outlined init with copy of DateComponents.ISO8601FormatStyle(&v277, &v262);
  v239 = v11;
  v94 = specialized BufferViewIterator<A>.digits(minDigits:maxDigits:nanoseconds:input:onFailure:extendedDescription:)(0, 1, 2, 0, 0, v96, v11, 0, 0, &v254, &v277);
  result = outlined destroy of DateComponents.ISO8601FormatStyle(&v277);
  v219 = v254;
  if (v254 < v255 && *v254 == 58)
  {
    v219 = ++v254;
  }

  if (v219 >= v255 || *v219 - 58 < 0xFFFFFFF6)
  {
    v221 = 3600 * v92;
    if ((v92 * 3600) >> 64 != (3600 * v92) >> 63)
    {
LABEL_268:
      __break(1u);
      goto LABEL_269;
    }

    v222 = 60 * v94;
    if ((v94 * 60) >> 64 != (60 * v94) >> 63)
    {
LABEL_269:
      __break(1u);
      goto LABEL_270;
    }

    result = v221 + v222;
    if (__OFADD__(v221, v222))
    {
LABEL_270:
      __break(1u);
      goto LABEL_271;
    }

    object = &v262;
LABEL_243:
    v11 = v239;
    v236 = v19;
    if (result)
    {
LABEL_203:
      if ((v12 & 1) != 0 || (v73 = __OFSUB__(0, result), result = -result, !v73))
      {
        if (one-time initialization token for cache == -1)
        {
LABEL_206:
          v212 = TimeZoneCache.offsetFixed(_:)(result);
          if (v212)
          {
            v214 = v212;
            v250 = v213;
            swift_unknownObjectRelease();
            v15 = v214;
            goto LABEL_162;
          }

          v12 = v96;
          goto LABEL_218;
        }

LABEL_265:
        v226 = result;
        swift_once();
        result = v226;
        goto LABEL_206;
      }

      __break(1u);
      goto LABEL_267;
    }

LABEL_226:
    v68 = a7;
    if (one-time initialization token for cache != -1)
    {
      swift_once();
    }

    v250 = *(&xmmword_1ED440468 + 1);
    v218 = xmmword_1ED440468;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    v15 = v218;
    goto LABEL_163;
  }

  outlined init with copy of DateComponents.ISO8601FormatStyle(&v277, &v262);
  object = specialized BufferViewIterator<A>.digits(minDigits:maxDigits:nanoseconds:input:onFailure:extendedDescription:)(0, 1, 2, 0, 0, v96, v239, 0, 0, &v254, &v277);
  result = outlined destroy of DateComponents.ISO8601FormatStyle(&v277);
LABEL_256:
  v223 = 3600 * v92;
  if ((v92 * 3600) >> 64 != (3600 * v92) >> 63)
  {
LABEL_275:
    __break(1u);
    goto LABEL_276;
  }

  v224 = 60 * v94;
  if ((v94 * 60) >> 64 != (60 * v94) >> 63)
  {
LABEL_276:
    __break(1u);
    goto LABEL_277;
  }

  v73 = __OFADD__(v223, v224);
  v225 = v223 + v224;
  if (v73)
  {
LABEL_277:
    __break(1u);
    goto LABEL_278;
  }

  result = object + v225;
  if (!__OFADD__(v225, object))
  {
    object = &v262;
    goto LABEL_243;
  }

LABEL_278:
  __break(1u);
  return result;
}

uint64_t specialized BufferViewIterator<A>.digits(minDigits:maxDigits:nanoseconds:input:onFailure:extendedDescription:)(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, __CFString *a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 *a11, void *p_isa, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  v36 = v35;
  v38 = a7;
  result = 0;
  v42 = 0;
  v218 = a19;
  v226 = *MEMORY[0x1E69E9840];
  if (a3 >= 10)
  {
    v44 = 10;
  }

  else
  {
    v44 = a3;
  }

  if (v44 <= 1)
  {
    v44 = 1;
  }

  if (a4)
  {
    v45 = 10;
  }

  else
  {
    v45 = v44;
  }

  v217 = a13;
  v47 = a11;
  v49 = *a10;
  v48 = *(a10 + 8);
  do
  {
    if (v49 >= v48 || (*v49 - 58) <= 0xF5u)
    {
      if (v42)
      {
        goto LABEL_17;
      }

      v217 = a28;
      v218 = a29;
      v56 = a11[1];
      v223 = *a11;
      v224 = v56;
      v225 = a11[2];
      *&__tp[1] = 0;
      *&__tp[9] = 0;
      outlined init with copy of DateComponents.ISO8601FormatStyle(a11, &v220);
      clock_gettime(_CLOCK_REALTIME, &__tp[1]);
      *&__tp[1] = *&__tp[1] + -978307200.0 + *&__tp[9] * 0.000000001;
      v57 = Date.ISO8601FormatStyle.format(_:)(*&__tp[1]);
      v220 = v223;
      v221 = v224;
      v222 = v225;
      outlined destroy of Date.ISO8601FormatStyle(&v220);
      *&v223 = 0;
      *(&v223 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(89);
      MEMORY[0x1865CB0E0](0x7020746F6E6E6143, 0xED00002065737261);
      MEMORY[0x1865CB0E0](a6, v38);
      if (a9)
      {
        *&__tp[1] = 8250;
        *&__tp[9] = 0xE200000000000000;
        MEMORY[0x1865CB0E0](a8, a9);
        MEMORY[0x1865CB0E0](46, 0xE100000000000000);
        v58 = *&__tp[1];
        v59 = *&__tp[9];
      }

      else
      {
        v59 = 0xE100000000000000;
        v58 = 46;
      }

      MEMORY[0x1865CB0E0](v58, v59);

      MEMORY[0x1865CB0E0](0xD000000000000045, 0x800000018147DB60);
      MEMORY[0x1865CB0E0](v57._countAndFlagsBits, v57._object);
      MEMORY[0x1865CB0E0](46, 0xE100000000000000);
      a8 = *(&v223 + 1);
      a22 = v223;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd);
      p_isa = swift_allocObject();
      isTaggedPointer = _objc_isTaggedPointer(@"NSDebugDescription");
      v70 = @"NSDebugDescription";
      v38 = v70;
      if (!isTaggedPointer)
      {
        goto LABEL_47;
      }

      TaggedPointerTag = _objc_getTaggedPointerTag(v70);
      if (TaggedPointerTag)
      {
        if (TaggedPointerTag != 22)
        {
          if (TaggedPointerTag == 2)
          {
            MEMORY[0x1EEE9AC00](TaggedPointerTag);
            v72 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
            v74 = v73;

            goto LABEL_171;
          }

LABEL_47:
          *__tp = 0;
          *&v223 = 0;
          if (__CFStringIsCF())
          {
            if (!v223)
            {
LABEL_76:

LABEL_77:
              v72 = 0;
              v74 = 0xE000000000000000;
              goto LABEL_171;
            }

            if (__tp[0] == 1)
            {
              if (__tp[1])
              {
                lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
              }

              else
              {
                lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
              }

              v98 = String.init<A>(_immortalCocoaString:count:encoding:)();
              goto LABEL_170;
            }

LABEL_169:
            v98 = String.init(_cocoaString:)();
LABEL_170:
            v72 = v98;
            v74 = v99;
LABEL_171:
            p_isa[4] = v72;
            p_isa[5] = v74;
            p_isa[9] = MEMORY[0x1E69E6158];
            p_isa[6] = a22;
            p_isa[7] = a8;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd);
            v154 = static _DictionaryStorage.allocate(capacity:)();
            outlined init with copy of (String, Any)((p_isa + 4), &v223);
            swift_setDeallocating();

            outlined destroy of (String, Any)((p_isa + 4));
            swift_deallocClassInstance();
            v155 = v223;
            v156 = specialized __RawDictionaryStorage.find<A>(_:)(v223, *(&v223 + 1));
            v158 = v157;

            if (v158)
            {
LABEL_303:
              __break(1u);
              goto LABEL_304;
            }

            v154[(v156 >> 6) + 8] |= 1 << v156;
            *(v154[6] + 16 * v156) = v155;
            outlined init with take of Any(&v224, (v154[7] + 32 * v156));
            v159 = v154[2];
            v106 = __OFADD__(v159, 1);
            v160 = v159 + 1;
            if (v106)
            {
LABEL_304:
              __break(1u);
LABEL_305:
              __break(1u);
LABEL_306:
              __break(1u);
              goto LABEL_307;
            }

            v154[2] = v160;
            v36 = _objc_isTaggedPointer(@"NSCocoaErrorDomain");
            v161 = @"NSCocoaErrorDomain";
            p_isa = &v161->isa;
            if (v36)
            {
              v162 = _objc_getTaggedPointerTag(v161);
              if (v162)
              {
                if (v162 != 22)
                {
                  if (v162 == 2)
                  {
                    MEMORY[0x1EEE9AC00](v162);
                    String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

                    goto LABEL_198;
                  }

                  goto LABEL_178;
                }

                result = [p_isa UTF8String];
                if (!result)
                {
LABEL_314:
                  __break(1u);
                  goto LABEL_315;
                }

                String.init(utf8String:)(result);
                if (v165)
                {
                  goto LABEL_190;
                }

                __break(1u);
              }

              _CFIndirectTaggedPointerStringGetContents();
              _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
              if (!v166)
              {
                [p_isa mutableCopy];
                _bridgeAnyObjectToAny(_:)();

                swift_unknownObjectRelease();
                swift_dynamicCast();
                goto LABEL_198;
              }

              goto LABEL_190;
            }

LABEL_178:
            *__tp = 0;
            *&v223 = 0;
            if (!__CFStringIsCF())
            {
              v163 = p_isa;
              String.init(_nativeStorage:)();
              if (v164 || (*&v223 = [v163 length], !v223))
              {

                goto LABEL_198;
              }

              goto LABEL_197;
            }

            if (v223)
            {
              if (__tp[0] == 1)
              {
                if (__tp[1])
                {
                  lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
                }

                else
                {
                  lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
                }

                String.init<A>(_immortalCocoaString:count:encoding:)();
LABEL_198:
                v167 = objc_allocWithZone(NSError);
                v168 = String._bridgeToObjectiveCImpl()();

                v169 = [v167 initWithDomain:v168 code:2048 userInfo:_NativeDictionary.bridged()()];
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
                v170 = [v169 domain];
                if (!v170)
                {
                  v175 = 0;
                  v177 = 0xE000000000000000;
                  goto LABEL_234;
                }

                v171 = v170;
                v172 = _objc_isTaggedPointer(v170);
                v173 = v171;
                v38 = v173;
                if (!v172)
                {
LABEL_204:
                  *__tp = 0;
                  *&v223 = 0;
                  if (__CFStringIsCF())
                  {
                    if (!v223)
                    {

                      v175 = 0;
                      v177 = 0xE000000000000000;
                      goto LABEL_234;
                    }

                    if (__tp[0] == 1)
                    {
                      if (__tp[1])
                      {
                        lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
                      }

                      else
                      {
                        lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
                      }

                      v183 = String.init<A>(_immortalCocoaString:count:encoding:)();
                      goto LABEL_232;
                    }
                  }

                  else
                  {
                    v178 = v38;
                    v179 = String.init(_nativeStorage:)();
                    if (v180)
                    {
                      v175 = v179;
                      v177 = v180;

                      goto LABEL_234;
                    }

                    *&v223 = [(__CFString *)v178 length];
                    if (!v223)
                    {

                      v175 = 0;
                      v177 = 0xE000000000000000;
                      goto LABEL_234;
                    }
                  }

LABEL_231:
                  v183 = String.init(_cocoaString:)();
LABEL_232:
                  v175 = v183;
                  v177 = v184;
                  goto LABEL_233;
                }

                v174 = _objc_getTaggedPointerTag(v173);
                if (v174)
                {
                  if (v174 != 22)
                  {
                    if (v174 == 2)
                    {
                      MEMORY[0x1EEE9AC00](v174);
                      v175 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                      v177 = v176;

                      goto LABEL_234;
                    }

                    goto LABEL_204;
                  }

                  result = [(__CFString *)v38 UTF8String];
                  if (!result)
                  {
LABEL_317:
                    __break(1u);
                    return result;
                  }

                  v181 = String.init(utf8String:)(result);
                  if (v182)
                  {
                    goto LABEL_217;
                  }

                  __break(1u);
                }

                _CFIndirectTaggedPointerStringGetContents();
                v181 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
                if (!v182)
                {
                  [(__CFString *)v38 mutableCopy];
                  _bridgeAnyObjectToAny(_:)();

                  swift_unknownObjectRelease();
                  swift_dynamicCast();
                  v175 = *&__tp[1];
                  v177 = *&__tp[9];
                  goto LABEL_233;
                }

LABEL_217:
                v175 = v181;
                v177 = v182;

LABEL_233:
LABEL_234:
                v189 = p_isa;
                v190 = v189;
                if (!v36)
                {
                  goto LABEL_239;
                }

                v191 = _objc_getTaggedPointerTag(v189);
                if (v191)
                {
                  if (v191 != 22)
                  {
                    if (v191 == 2)
                    {
                      MEMORY[0x1EEE9AC00](v191);
                      v192 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                      v194 = v193;

LABEL_261:
                      if (v175 == v192 && v177 == v194)
                      {
                        goto LABEL_297;
                      }

                      v202 = _stringCompareWithSmolCheck(_:_:expecting:)();

                      if (v202)
                      {
                        return swift_willThrow();
                      }

                      goto LABEL_306;
                    }

LABEL_239:
                    *__tp = 0;
                    *&v223 = 0;
                    if (__CFStringIsCF())
                    {
                      if (v223)
                      {
                        if (__tp[0] == 1)
                        {
                          if (__tp[1])
                          {
                            lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
                          }

                          else
                          {
                            lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
                          }

                          v200 = String.init<A>(_immortalCocoaString:count:encoding:)();
                          goto LABEL_260;
                        }

LABEL_259:
                        v200 = String.init(_cocoaString:)();
LABEL_260:
                        v192 = v200;
                        v194 = v201;
                        goto LABEL_261;
                      }
                    }

                    else
                    {
                      v195 = v190;
                      v196 = String.init(_nativeStorage:)();
                      if (v197)
                      {
                        v192 = v196;
                        v194 = v197;

                        goto LABEL_261;
                      }

                      *&v223 = [v195 length];
                      if (v223)
                      {
                        goto LABEL_259;
                      }
                    }

                    v192 = 0;
                    v194 = 0xE000000000000000;
                    goto LABEL_261;
                  }

                  result = [v190 UTF8String];
                  if (!result)
                  {
LABEL_315:
                    __break(1u);
                    goto LABEL_316;
                  }

                  v198 = String.init(utf8String:)(result);
                  if (v199)
                  {
LABEL_252:
                    v192 = v198;
                    v194 = v199;

                    goto LABEL_261;
                  }

                  __break(1u);
                }

                _CFIndirectTaggedPointerStringGetContents();
                v198 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
                if (!v199)
                {
                  [v190 mutableCopy];
                  _bridgeAnyObjectToAny(_:)();

                  swift_unknownObjectRelease();
                  swift_dynamicCast();
                  v192 = *&__tp[1];
                  v194 = *&__tp[9];
                  goto LABEL_261;
                }

                goto LABEL_252;
              }

LABEL_197:
              String.init(_cocoaString:)();
              goto LABEL_198;
            }

LABEL_190:

            goto LABEL_198;
          }

LABEL_59:
          v79 = v38;
          v80 = String.init(_nativeStorage:)();
          if (v81)
          {
            v72 = v80;
            v74 = v81;

            goto LABEL_171;
          }

          *&v223 = [(__CFString *)v79 length:a30];
          if (!v223)
          {

            goto LABEL_77;
          }

          goto LABEL_169;
        }

        result = [(__CFString *)v38 UTF8String:a30];
        if (!result)
        {
LABEL_313:
          __break(1u);
          goto LABEL_314;
        }

        v86 = String.init(utf8String:)(result);
        if (v87)
        {
LABEL_84:
          v72 = v86;
          v74 = v87;

          goto LABEL_171;
        }

        __break(1u);
      }

      _CFIndirectTaggedPointerStringGetContents();
      v86 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v87)
      {
        [(__CFString *)v38 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v72 = *&__tp[1];
        v74 = *&__tp[9];
        goto LABEL_171;
      }

      goto LABEL_84;
    }

    v50 = 10 * result;
    if ((result * 10) >> 64 != (10 * result) >> 63)
    {
      __break(1u);
LABEL_226:
      __break(1u);
      v185 = [(__CFString *)a7 lengthOfBytesUsingEncoding:4, a15, a5, a29, a21, a28, a30, a31, a17, a18, a32];
      MEMORY[0x1EEE9AC00](v185);
      v186 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v177 = v187;
      v188 = HIBYTE(v187) & 0xF;
      if ((v187 & 0x2000000000000000) == 0)
      {
        v188 = v186 & 0xFFFFFFFFFFFFLL;
      }

      if (v188)
      {
        v175 = v186;

        goto LABEL_234;
      }

      goto LABEL_231;
    }

    v51 = *v49 - 48;
    result = v50 + v51;
    if (__OFADD__(v50, v51))
    {
      goto LABEL_226;
    }

    *a10 = ++v49;
    ++v42;
  }

  while (v45 != v42);
  v42 = v45;
LABEL_17:
  if ((a2 & 1) != 0 || v42 >= a1)
  {
    if ((a5 & 1) == 0)
    {
      return result;
    }

    if (v42 > 4)
    {
      if (v42 > 6)
      {
        if (v42 != 7)
        {
          if (v42 != 8)
          {
            if (v42 == 9)
            {
              return result;
            }

            goto LABEL_100;
          }

LABEL_98:
          v47 = (result * 10) >> 64;
          result *= 10;
          if (v47 == result >> 63)
          {
            return result;
          }

          __break(1u);
LABEL_100:
          v94 = *(v47 + 16);
          v223 = *v47;
          v224 = v94;
          v225 = *(v47 + 32);
          *&__tp[1] = 0;
          *&__tp[9] = 0;
          outlined init with copy of DateComponents.ISO8601FormatStyle(v47, &v220);
          clock_gettime(_CLOCK_REALTIME, &__tp[1]);
          *&__tp[1] = *&__tp[1] + -978307200.0 + *&__tp[9] * 0.000000001;
          v95 = Date.ISO8601FormatStyle.format(_:)(*&__tp[1]);
          v220 = v223;
          v221 = v224;
          v222 = v225;
          outlined destroy of Date.ISO8601FormatStyle(&v220);
          *&v223 = 0;
          *(&v223 + 1) = 0xE000000000000000;
          _StringGuts.grow(_:)(89);
          MEMORY[0x1865CB0E0](0x7020746F6E6E6143, 0xED00002065737261);
          MEMORY[0x1865CB0E0](a6, v38);
          if (a9)
          {
            *&__tp[1] = 8250;
            *&__tp[9] = 0xE200000000000000;
            MEMORY[0x1865CB0E0](a8, a9);
            MEMORY[0x1865CB0E0](46, 0xE100000000000000);
            v96 = *&__tp[1];
            v97 = *&__tp[9];
          }

          else
          {
            v97 = 0xE100000000000000;
            v96 = 46;
          }

          MEMORY[0x1865CB0E0](v96, v97);

          MEMORY[0x1865CB0E0](0xD000000000000045, 0x800000018147DB60);
          MEMORY[0x1865CB0E0](v95._countAndFlagsBits, v95._object);
          MEMORY[0x1865CB0E0](46, 0xE100000000000000);
          v135 = v223;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd);
          v136 = swift_allocObject();
          *(v136 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSDebugDescription");
          *(v136 + 72) = MEMORY[0x1E69E6158];
          *(v136 + 40) = v137;
          *(v136 + 48) = v135;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd);
          v138 = static _DictionaryStorage.allocate(capacity:)();
          outlined init with copy of (String, Any)(v136 + 32, &v223);
          swift_setDeallocating();

          outlined destroy of (String, Any)(v136 + 32);
          swift_deallocClassInstance();
          v139 = v223;
          v140 = specialized __RawDictionaryStorage.find<A>(_:)(v223, *(&v223 + 1));
          v142 = v141;

          if ((v142 & 1) == 0)
          {
            v138[(v140 >> 6) + 8] |= 1 << v140;
            *(v138[6] + 16 * v140) = v139;
            outlined init with take of Any(&v224, (v138[7] + 32 * v140));
            v143 = v138[2];
            v106 = __OFADD__(v143, 1);
            v144 = v143 + 1;
            if (!v106)
            {
              v138[2] = v144;
              static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSCocoaErrorDomain");
              v145 = objc_allocWithZone(NSError);
              v146 = String._bridgeToObjectiveCImpl()();

              v147 = [v145 initWithDomain:v146 code:2048 userInfo:{_NativeDictionary.bridged()(), a30, a31, a17, a18, a32, a33, a35, a14, a23, a26, a25, a27, a13, a19}];
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              v148 = [v147 domain];
              v149 = static String._unconditionallyBridgeFromObjectiveC(_:)(v148);
              v151 = v150;

              if (v149 == static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSCocoaErrorDomain") && v151 == v152)
              {
                goto LABEL_297;
              }

              v153 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v153)
              {
                return swift_willThrow();
              }

LABEL_309:
              __break(1u);
            }

LABEL_308:
            __break(1u);
            goto LABEL_309;
          }

LABEL_307:
          __break(1u);
          goto LABEL_308;
        }

        goto LABEL_94;
      }

      goto LABEL_72;
    }

    if (v42 > 2)
    {
      if (v42 != 3)
      {
        v47 = 100000;
        v84 = (result * 100000) >> 64;
        result *= 100000;
        if (v84 == result >> 63)
        {
          return result;
        }

        __break(1u);
LABEL_72:
        if (v42 == 5)
        {
LABEL_96:
          v93 = (result * 10000) >> 64;
          result *= 10000;
          if (v93 == result >> 63)
          {
            return result;
          }

          __break(1u);
          goto LABEL_98;
        }

        if (v42 != 6)
        {
          goto LABEL_100;
        }

        v85 = (result * 1000) >> 64;
        result *= 1000;
        if (v85 == result >> 63)
        {
          return result;
        }

        __break(1u);
        goto LABEL_76;
      }
    }

    else
    {
      if (v42 != 1)
      {
        if (v42 != 2)
        {
          goto LABEL_100;
        }

        v78 = (result * 10000000) >> 64;
        result *= 10000000;
        if (v78 == result >> 63)
        {
          return result;
        }

        __break(1u);
        goto LABEL_59;
      }

      v90 = (result * 100000000) >> 64;
      result *= 100000000;
      if (v90 == result >> 63)
      {
        return result;
      }

      __break(1u);
    }

    v91 = (result * 1000000) >> 64;
    result *= 1000000;
    if (v91 == result >> 63)
    {
      return result;
    }

    __break(1u);
LABEL_94:
    v92 = (result * 100) >> 64;
    result *= 100;
    if (v92 == result >> 63)
    {
      return result;
    }

    __break(1u);
    goto LABEL_96;
  }

  v52 = a11[1];
  v223 = *a11;
  v224 = v52;
  v225 = a11[2];
  *&__tp[1] = 0;
  *&__tp[9] = 0;
  outlined init with copy of DateComponents.ISO8601FormatStyle(a11, &v220);
  clock_gettime(_CLOCK_REALTIME, &__tp[1]);
  *&__tp[1] = *&__tp[1] + -978307200.0 + *&__tp[9] * 0.000000001;
  v53 = Date.ISO8601FormatStyle.format(_:)(*&__tp[1]);
  v220 = v223;
  v221 = v224;
  v222 = v225;
  outlined destroy of Date.ISO8601FormatStyle(&v220);
  *&v223 = 0;
  *(&v223 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(89);
  MEMORY[0x1865CB0E0](0x7020746F6E6E6143, 0xED00002065737261);
  MEMORY[0x1865CB0E0](a6, v38);
  if (a9)
  {
    *&__tp[1] = 8250;
    *&__tp[9] = 0xE200000000000000;
    MEMORY[0x1865CB0E0](a8, a9);
    MEMORY[0x1865CB0E0](46, 0xE100000000000000);
    v54 = *&__tp[1];
    v55 = *&__tp[9];
  }

  else
  {
    v55 = 0xE100000000000000;
    v54 = 46;
  }

  MEMORY[0x1865CB0E0](v54, v55);

  MEMORY[0x1865CB0E0](0xD000000000000045, 0x800000018147DB60);
  MEMORY[0x1865CB0E0](v53._countAndFlagsBits, v53._object);
  MEMORY[0x1865CB0E0](46, 0xE100000000000000);
  v60 = v223;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd);
  v61 = swift_allocObject();
  v62 = _objc_isTaggedPointer(@"NSDebugDescription");
  v63 = @"NSDebugDescription";
  v64 = v63;
  if (!v62)
  {
    goto LABEL_36;
  }

  v65 = _objc_getTaggedPointerTag(v63);
  switch(v65)
  {
    case 0:
      goto LABEL_66;
    case 0x16:
      result = [(__CFString *)v64 UTF8String:a30];
      if (!result)
      {
        __break(1u);
        goto LABEL_311;
      }

      v82 = String.init(utf8String:)(result);
      if (v83)
      {
LABEL_67:
        v66 = v82;
        v68 = v83;

        goto LABEL_108;
      }

      __break(1u);
LABEL_66:
      _CFIndirectTaggedPointerStringGetContents();
      v82 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v83)
      {
        [(__CFString *)v64 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v66 = *&__tp[1];
        v68 = *&__tp[9];
        goto LABEL_108;
      }

      goto LABEL_67;
    case 2:
      MEMORY[0x1EEE9AC00](v65);
      v66 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v68 = v67;

      goto LABEL_108;
  }

LABEL_36:
  *__tp = 0;
  *&v223 = 0;
  if (!__CFStringIsCF())
  {
    v75 = v64;
    v76 = String.init(_nativeStorage:)();
    if (v77)
    {
      v66 = v76;
      v68 = v77;

      goto LABEL_108;
    }

    *&v223 = [(__CFString *)v75 length:a30];
    if (v223)
    {
LABEL_106:
      v88 = String.init(_cocoaString:)();
      goto LABEL_107;
    }

LABEL_62:
    v66 = 0;
    v68 = 0xE000000000000000;
    goto LABEL_108;
  }

  if (!v223)
  {

    goto LABEL_62;
  }

  if (__tp[0] != 1)
  {
    goto LABEL_106;
  }

  if (__tp[1])
  {
    lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
  }

  else
  {
    lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
  }

  v88 = String.init<A>(_immortalCocoaString:count:encoding:)();
LABEL_107:
  v66 = v88;
  v68 = v89;
LABEL_108:
  *(v61 + 32) = v66;
  *(v61 + 40) = v68;
  *(v61 + 72) = MEMORY[0x1E69E6158];
  *(v61 + 48) = v60;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd);
  v100 = static _DictionaryStorage.allocate(capacity:)();
  outlined init with copy of (String, Any)(v61 + 32, &v223);
  swift_setDeallocating();

  outlined destroy of (String, Any)(v61 + 32);
  swift_deallocClassInstance();
  v101 = v223;
  v102 = specialized __RawDictionaryStorage.find<A>(_:)(v223, *(&v223 + 1));
  v104 = v103;

  if (v104)
  {
    __break(1u);
    goto LABEL_302;
  }

  v100[(v102 >> 6) + 8] |= 1 << v102;
  *(v100[6] + 16 * v102) = v101;
  outlined init with take of Any(&v224, (v100[7] + 32 * v102));
  v105 = v100[2];
  v106 = __OFADD__(v105, 1);
  v107 = v105 + 1;
  if (v106)
  {
LABEL_302:
    __break(1u);
    goto LABEL_303;
  }

  v100[2] = v107;
  v108 = _objc_isTaggedPointer(@"NSCocoaErrorDomain");
  v109 = @"NSCocoaErrorDomain";
  v110 = v109;
  if (!v108)
  {
    goto LABEL_115;
  }

  v111 = _objc_getTaggedPointerTag(v109);
  switch(v111)
  {
    case 0:
LABEL_126:
      _CFIndirectTaggedPointerStringGetContents();
      _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v115)
      {
        [(__CFString *)v110 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        goto LABEL_135;
      }

      goto LABEL_127;
    case 0x16:
      result = [(__CFString *)v110 UTF8String];
      if (result)
      {
        String.init(utf8String:)(result);
        if (v114)
        {
          goto LABEL_127;
        }

        __break(1u);
        goto LABEL_126;
      }

LABEL_311:
      __break(1u);
LABEL_312:
      __break(1u);
      goto LABEL_313;
    case 2:
      MEMORY[0x1EEE9AC00](v111);
      String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

      goto LABEL_135;
  }

LABEL_115:
  *__tp = 0;
  *&v223 = 0;
  if (!__CFStringIsCF())
  {
    v112 = v110;
    String.init(_nativeStorage:)();
    if (v113 || (*&v223 = [(__CFString *)v112 length], !v223))
    {

      goto LABEL_135;
    }

    goto LABEL_134;
  }

  if (!v223)
  {
LABEL_127:

    goto LABEL_135;
  }

  if (__tp[0] != 1)
  {
LABEL_134:
    String.init(_cocoaString:)();
    goto LABEL_135;
  }

  if (__tp[1])
  {
    lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
  }

  else
  {
    lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
  }

  String.init<A>(_immortalCocoaString:count:encoding:)();
LABEL_135:
  v116 = objc_allocWithZone(NSError);
  v117 = String._bridgeToObjectiveCImpl()();

  v118 = [v116 initWithDomain:v117 code:2048 userInfo:_NativeDictionary.bridged()()];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v119 = [v118 domain];
  if (!v119)
  {
    goto LABEL_149;
  }

  v120 = v119;
  v121 = _objc_isTaggedPointer(v119);
  v122 = v120;
  v123 = v122;
  if ((v121 & 1) == 0)
  {
    goto LABEL_141;
  }

  v124 = _objc_getTaggedPointerTag(v122);
  switch(v124)
  {
    case 0:
      goto LABEL_153;
    case 0x16:
      result = [v123 UTF8String];
      if (!result)
      {
LABEL_316:
        __break(1u);
        goto LABEL_317;
      }

      v131 = String.init(utf8String:)(result);
      if (v132)
      {
LABEL_154:
        v125 = v131;
        v127 = v132;

        goto LABEL_267;
      }

      __break(1u);
LABEL_153:
      _CFIndirectTaggedPointerStringGetContents();
      v131 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v132)
      {
        [v123 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v125 = *&__tp[1];
        v127 = *&__tp[9];
        goto LABEL_267;
      }

      goto LABEL_154;
    case 2:
      MEMORY[0x1EEE9AC00](v124);
      v125 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v127 = v126;

      goto LABEL_268;
  }

LABEL_141:
  *__tp = 0;
  *&v223 = 0;
  if (!__CFStringIsCF())
  {
    v128 = v123;
    v129 = String.init(_nativeStorage:)();
    if (v130)
    {
      v125 = v129;
      v127 = v130;

      goto LABEL_268;
    }

    *&v223 = [v128 length];
    if (v223)
    {
LABEL_265:
      v133 = String.init(_cocoaString:)();
      goto LABEL_266;
    }

LABEL_149:
    v125 = 0;
    v127 = 0xE000000000000000;
    goto LABEL_268;
  }

  if (!v223)
  {

    goto LABEL_149;
  }

  if (__tp[0] != 1)
  {
    goto LABEL_265;
  }

  if (__tp[1])
  {
    lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
  }

  else
  {
    lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
  }

  v133 = String.init<A>(_immortalCocoaString:count:encoding:)();
LABEL_266:
  v125 = v133;
  v127 = v134;
LABEL_267:

LABEL_268:
  v203 = v110;
  v204 = v203;
  if (!v108)
  {
LABEL_273:
    *__tp = 0;
    *&v223 = 0;
    if (__CFStringIsCF())
    {
      if (v223)
      {
        if (__tp[0] == 1)
        {
          if (__tp[1])
          {
            lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
          }

          else
          {
            lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
          }

          v214 = String.init<A>(_immortalCocoaString:count:encoding:)();
          goto LABEL_294;
        }

LABEL_293:
        v214 = String.init(_cocoaString:)();
LABEL_294:
        v206 = v214;
        v208 = v215;
        goto LABEL_295;
      }
    }

    else
    {
      v209 = v204;
      v210 = String.init(_nativeStorage:)();
      if (v211)
      {
        v206 = v210;
        v208 = v211;

        goto LABEL_295;
      }

      *&v223 = [(__CFString *)v209 length];
      if (v223)
      {
        goto LABEL_293;
      }
    }

    v206 = 0;
    v208 = 0xE000000000000000;
    goto LABEL_295;
  }

  v205 = _objc_getTaggedPointerTag(v203);
  if (!v205)
  {
    goto LABEL_285;
  }

  if (v205 == 22)
  {
    result = [(__CFString *)v204 UTF8String];
    if (result)
    {
      v212 = String.init(utf8String:)(result);
      if (v213)
      {
LABEL_286:
        v206 = v212;
        v208 = v213;

        goto LABEL_295;
      }

      __break(1u);
LABEL_285:
      _CFIndirectTaggedPointerStringGetContents();
      v212 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v213)
      {
        [(__CFString *)v204 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v208 = *&__tp[9];
        v206 = *&__tp[1];
        goto LABEL_295;
      }

      goto LABEL_286;
    }

    goto LABEL_312;
  }

  if (v205 != 2)
  {
    goto LABEL_273;
  }

  MEMORY[0x1EEE9AC00](v205);
  v206 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
  v208 = v207;

LABEL_295:
  if (v125 == v206 && v127 == v208)
  {
LABEL_297:

    return swift_willThrow();
  }

  v216 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v216 & 1) == 0)
  {
    goto LABEL_305;
  }

  return swift_willThrow();
}

id specialized BufferViewIterator<A>.expectCharacter(_:input:onFailure:extendedDescription:)(id result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 **a6, __int128 *a7)
{
  v85 = *MEMORY[0x1E69E9840];
  v11 = *a6;
  if (*a6 >= a6[1] || (v12 = *v11, *a6 = v11 + 1, v12 != result))
  {
    v13 = a7[1];
    v82 = *a7;
    v83 = v13;
    v84 = a7[2];
    __tp.tv_nsec = 0;
    __tp.tv_sec = 0;
    outlined init with copy of DateComponents.ISO8601FormatStyle(a7, v80);
    clock_gettime(_CLOCK_REALTIME, &__tp);
    *&__tp.tv_sec = __tp.tv_sec + -978307200.0 + __tp.tv_nsec * 0.000000001;
    v14 = Date.ISO8601FormatStyle.format(_:)(__tp.tv_sec);
    v80[0] = v82;
    v80[1] = v83;
    v80[2] = v84;
    outlined destroy of Date.ISO8601FormatStyle(v80);
    *&v82 = 0;
    *(&v82 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(89);
    MEMORY[0x1865CB0E0](0x7020746F6E6E6143, 0xED00002065737261);
    MEMORY[0x1865CB0E0](a2, a3);
    if (a5)
    {
      __tp.tv_sec = 8250;
      __tp.tv_nsec = 0xE200000000000000;
      MEMORY[0x1865CB0E0](a4, a5);
      MEMORY[0x1865CB0E0](46, 0xE100000000000000);
      tv_sec = __tp.tv_sec;
      tv_nsec = __tp.tv_nsec;
    }

    else
    {
      tv_nsec = 0xE100000000000000;
      tv_sec = 46;
    }

    MEMORY[0x1865CB0E0](tv_sec, tv_nsec);

    MEMORY[0x1865CB0E0](0xD000000000000045, 0x800000018147DB60);
    MEMORY[0x1865CB0E0](v14._countAndFlagsBits, v14._object);
    MEMORY[0x1865CB0E0](46, 0xE100000000000000);
    v18 = *(&v82 + 1);
    v17 = v82;
    isTaggedPointer = _objc_isTaggedPointer(@"NSDebugDescription");
    v20 = @"NSDebugDescription";
    v21 = v20;
    if (!isTaggedPointer)
    {
      goto LABEL_11;
    }

    TaggedPointerTag = _objc_getTaggedPointerTag(v20);
    if (TaggedPointerTag)
    {
      if (TaggedPointerTag != 22)
      {
        if (TaggedPointerTag == 2)
        {
          MEMORY[0x1EEE9AC00](TaggedPointerTag);
          v23 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v25 = v24;

          goto LABEL_27;
        }

LABEL_11:
        LOBYTE(__tp.tv_sec) = 0;
        *&v82 = 0;
        if (__CFStringIsCF())
        {
          if (v82)
          {
LABEL_26:
            v23 = String.init(_cocoaString:)();
            v25 = v31;
LABEL_27:
            v81[0] = v23;
            v81[1] = v25;
            v81[5] = MEMORY[0x1E69E6158];
            v81[2] = v17;
            v81[3] = v18;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd);
            v32 = static _DictionaryStorage.allocate(capacity:)();
            outlined init with copy of (String, Any)(v81, &v82);

            outlined destroy of (String, Any)(v81);
            v33 = v82;
            v34 = specialized __RawDictionaryStorage.find<A>(_:)(v82, *(&v82 + 1));
            v36 = v35;

            if (v36)
            {
              __break(1u);
            }

            else
            {
              v32[(v34 >> 6) + 8] |= 1 << v34;
              *(v32[6] + 16 * v34) = v33;
              outlined init with take of Any(&v83, (v32[7] + 32 * v34));
              v37 = v32[2];
              v38 = __OFADD__(v37, 1);
              v39 = v37 + 1;
              if (!v38)
              {
                v32[2] = v39;
                v40 = _objc_isTaggedPointer(@"NSCocoaErrorDomain");
                v41 = @"NSCocoaErrorDomain";
                v42 = v41;
                if (!v40)
                {
LABEL_34:
                  LOBYTE(__tp.tv_sec) = 0;
                  *&v82 = 0;
                  if (!__CFStringIsCF())
                  {
                    v44 = v42;
                    String.init(_nativeStorage:)();
                    if (v45 || (*&v82 = [(__CFString *)v44 length], !v82))
                    {

                      goto LABEL_49;
                    }

                    goto LABEL_48;
                  }

                  if (v82)
                  {
LABEL_48:
                    String.init(_cocoaString:)();
LABEL_49:
                    v48 = objc_allocWithZone(NSError);
                    v49 = String._bridgeToObjectiveCImpl()();

                    v50 = [v48 initWithDomain:v49 code:2048 userInfo:_NativeDictionary.bridged()()];
                    swift_unknownObjectRelease();
                    swift_unknownObjectRelease();
                    v51 = [v50 domain];
                    if (!v51)
                    {
                      goto LABEL_61;
                    }

                    v52 = v51;
                    v53 = _objc_isTaggedPointer(v51);
                    v54 = v52;
                    v55 = v54;
                    if (!v53)
                    {
LABEL_55:
                      LOBYTE(__tp.tv_sec) = 0;
                      *&v82 = 0;
                      if (!__CFStringIsCF())
                      {
                        v60 = v55;
                        v61 = String.init(_nativeStorage:)();
                        if (v62)
                        {
                          v57 = v61;
                          v59 = v62;

                          goto LABEL_73;
                        }

                        *&v82 = [v60 length];
                        if (!v82)
                        {

                          v57 = 0;
                          v59 = 0xE000000000000000;
                          goto LABEL_73;
                        }

                        goto LABEL_71;
                      }

                      if (v82)
                      {
LABEL_71:
                        v57 = String.init(_cocoaString:)();
                        v59 = v65;
                        goto LABEL_72;
                      }

LABEL_61:
                      v57 = 0;
                      v59 = 0xE000000000000000;
                      goto LABEL_73;
                    }

                    v56 = _objc_getTaggedPointerTag(v54);
                    if (v56)
                    {
                      if (v56 != 22)
                      {
                        if (v56 == 2)
                        {
                          MEMORY[0x1EEE9AC00](v56);
                          v57 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                          v59 = v58;

LABEL_73:
                          v66 = v42;
                          v67 = v66;
                          if (!v40)
                          {
                            goto LABEL_78;
                          }

                          v68 = _objc_getTaggedPointerTag(v66);
                          if (!v68)
                          {
                            goto LABEL_88;
                          }

                          if (v68 != 22)
                          {
                            if (v68 == 2)
                            {
                              MEMORY[0x1EEE9AC00](v68);
                              v69 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                              v71 = v70;

                              goto LABEL_94;
                            }

LABEL_78:
                            LOBYTE(__tp.tv_sec) = 0;
                            *&v82 = 0;
                            if (__CFStringIsCF())
                            {
                              if (v82)
                              {
LABEL_93:
                                v69 = String.init(_cocoaString:)();
                                v71 = v77;
LABEL_94:
                                if (v57 == v69 && v59 == v71)
                                {

                                  return swift_willThrow();
                                }

                                v78 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                if (v78)
                                {
                                  return swift_willThrow();
                                }

LABEL_102:
                                __break(1u);
                              }
                            }

                            else
                            {
                              v72 = v67;
                              v73 = String.init(_nativeStorage:)();
                              if (v74)
                              {
                                v69 = v73;
                                v71 = v74;

                                goto LABEL_94;
                              }

                              *&v82 = [(__CFString *)v72 length];
                              if (v82)
                              {
                                goto LABEL_93;
                              }
                            }

                            v69 = 0;
                            v71 = 0xE000000000000000;
                            goto LABEL_94;
                          }

                          result = [(__CFString *)v67 UTF8String];
                          if (result)
                          {
                            v75 = String.init(utf8String:)(result);
                            if (v76)
                            {
                              goto LABEL_89;
                            }

                            __break(1u);
LABEL_88:
                            _CFIndirectTaggedPointerStringGetContents();
                            v75 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
                            if (!v76)
                            {
                              [(__CFString *)v67 mutableCopy];
                              _bridgeAnyObjectToAny(_:)();

                              swift_unknownObjectRelease();
                              swift_dynamicCast();
                              v69 = __tp.tv_sec;
                              v71 = __tp.tv_nsec;
                              goto LABEL_94;
                            }

LABEL_89:
                            v69 = v75;
                            v71 = v76;

                            goto LABEL_94;
                          }

                          goto LABEL_105;
                        }

                        goto LABEL_55;
                      }

                      result = [v55 UTF8String];
                      if (!result)
                      {
LABEL_106:
                        __break(1u);
                        return result;
                      }

                      v63 = String.init(utf8String:)(result);
                      if (v64)
                      {
                        goto LABEL_66;
                      }

                      __break(1u);
                    }

                    _CFIndirectTaggedPointerStringGetContents();
                    v63 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
                    if (!v64)
                    {
                      [v55 mutableCopy];
                      _bridgeAnyObjectToAny(_:)();

                      swift_unknownObjectRelease();
                      swift_dynamicCast();
                      v57 = __tp.tv_sec;
                      v59 = __tp.tv_nsec;
                      goto LABEL_72;
                    }

LABEL_66:
                    v57 = v63;
                    v59 = v64;

LABEL_72:
                    goto LABEL_73;
                  }

LABEL_44:

                  goto LABEL_49;
                }

                v43 = _objc_getTaggedPointerTag(v41);
                if (!v43)
                {
LABEL_43:
                  _CFIndirectTaggedPointerStringGetContents();
                  _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
                  if (!v47)
                  {
                    [(__CFString *)v42 mutableCopy];
                    _bridgeAnyObjectToAny(_:)();

                    swift_unknownObjectRelease();
                    swift_dynamicCast();
                    goto LABEL_49;
                  }

                  goto LABEL_44;
                }

                if (v43 != 22)
                {
                  if (v43 == 2)
                  {
                    MEMORY[0x1EEE9AC00](v43);
                    String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

                    goto LABEL_49;
                  }

                  goto LABEL_34;
                }

                result = [(__CFString *)v42 UTF8String];
                if (result)
                {
                  String.init(utf8String:)(result);
                  if (v46)
                  {
                    goto LABEL_44;
                  }

                  __break(1u);
                  goto LABEL_43;
                }

LABEL_104:
                __break(1u);
LABEL_105:
                __break(1u);
                goto LABEL_106;
              }
            }

            __break(1u);
            goto LABEL_102;
          }
        }

        else
        {
          v26 = v21;
          v27 = String.init(_nativeStorage:)();
          if (v28)
          {
            v23 = v27;
            v25 = v28;

            goto LABEL_27;
          }

          *&v82 = [(__CFString *)v26 length];
          if (v82)
          {
            goto LABEL_26;
          }
        }

        v23 = 0;
        v25 = 0xE000000000000000;
        goto LABEL_27;
      }

      result = [(__CFString *)v21 UTF8String];
      if (!result)
      {
        __break(1u);
        goto LABEL_104;
      }

      v29 = String.init(utf8String:)(result);
      if (v30)
      {
LABEL_22:
        v23 = v29;
        v25 = v30;

        goto LABEL_27;
      }

      __break(1u);
    }

    _CFIndirectTaggedPointerStringGetContents();
    v29 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v30)
    {
      [(__CFString *)v21 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v23 = __tp.tv_sec;
      v25 = __tp.tv_nsec;
      goto LABEL_27;
    }

    goto LABEL_22;
  }

  return result;
}

char *CalendarCache.fixed(_:)(unsigned __int8 *a1)
{
  v3 = *a1;
  v4 = *(v1 + 8);
  os_unfair_lock_lock((v4 + 24));
  v5 = *(v4 + 16);
  if (*(v5 + 16) && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(v3), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 16 * v6);
    swift_unknownObjectRetain();
    os_unfair_lock_unlock((v4 + 24));
    if (v8)
    {
      return v8;
    }
  }

  else
  {
    os_unfair_lock_unlock((v4 + 24));
  }

  if (v3 == 7 || v3 == 0)
  {
    v10 = type metadata accessor for _CalendarGregorian();
    v11 = &lazy protocol witness table cache variable for type _CalendarGregorian and conformance _CalendarGregorian;
    v12 = type metadata accessor for _CalendarGregorian;
  }

  else
  {
    v10 = type metadata accessor for _CalendarICU();
    v11 = &lazy protocol witness table cache variable for type _CalendarICU and conformance _CalendarICU;
    v12 = type metadata accessor for _CalendarICU;
  }

  v13 = lazy protocol witness table accessor for type _CalendarICU and conformance _CalendarICU(v11, v12);
  v49 = v3;
  v48[0] = 0;
  v48[1] = 0;
  v47[0] = 0;
  v47[1] = 0;
  v45 = 0;
  v46 = 1;
  v14 = (*(v13 + 16))(&v49, v48, v47, 0, 1, 0, 1, &v45, v10, v13);
  os_unfair_lock_lock((v4 + 24));
  v15 = *(v4 + 16);
  if (*(v15 + 16))
  {
    v16 = specialized __RawDictionaryStorage.find<A>(_:)(v3);
    if (v17)
    {
      v8 = *(*(v15 + 56) + 16 * v16);
LABEL_42:
      swift_unknownObjectRetain();
      os_unfair_lock_unlock((v4 + 24));
      swift_unknownObjectRelease();
      return v8;
    }
  }

  swift_unknownObjectRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v48[0] = *(v4 + 16);
  v19 = v48[0];
  v20 = specialized __RawDictionaryStorage.find<A>(_:)(v3);
  v22 = *(v19 + 16);
  v23 = (v21 & 1) == 0;
  v24 = __OFADD__(v22, v23);
  v25 = v22 + v23;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    v2 = v21;
    if (*(v19 + 24) < v25)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v25, isUniquelyReferenced_nonNull_native);
      v26 = v48[0];
      v20 = specialized __RawDictionaryStorage.find<A>(_:)(v3);
      if ((v2 & 1) == (v27 & 1))
      {
        goto LABEL_21;
      }

      v20 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v26 = v19;
LABEL_21:
      if (v2)
      {
LABEL_22:
        v28 = (*(v26 + 56) + 16 * v20);
        *v28 = v14;
        v28[1] = v13;
        swift_unknownObjectRelease();
LABEL_41:
        *(v4 + 16) = v26;
        v8 = v14;
        goto LABEL_42;
      }

LABEL_40:
      specialized _NativeDictionary._insert(at:key:value:)(v20, v3, v14, v26, v10, v13);
      goto LABEL_41;
    }
  }

  v43 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation8CalendarV10IdentifierOAC01_D8Protocol_pGMd);
  v29 = static _DictionaryStorage.copy(original:)();
  v26 = v29;
  if (!*(v19 + 16))
  {
LABEL_39:

    v20 = v43;
    if (v2)
    {
      goto LABEL_22;
    }

    goto LABEL_40;
  }

  result = (v29 + 64);
  v31 = (v19 + 64);
  v32 = ((1 << *(v26 + 32)) + 63) >> 6;
  if (v26 != v19 || result >= &v31[8 * v32])
  {
    result = memmove(result, v31, 8 * v32);
  }

  v33 = 0;
  *(v26 + 16) = *(v19 + 16);
  v34 = 1 << *(v19 + 32);
  v35 = -1;
  if (v34 < 64)
  {
    v35 = ~(-1 << v34);
  }

  v36 = v35 & *(v19 + 64);
  v37 = (v34 + 63) >> 6;
  if (v36)
  {
    do
    {
      v38 = __clz(__rbit64(v36));
      v44 = (v36 - 1) & v36;
LABEL_37:
      v41 = v38 | (v33 << 6);
      v42 = *(*(v19 + 56) + 16 * v41);
      *(*(v26 + 48) + v41) = *(*(v19 + 48) + v41);
      *(*(v26 + 56) + 16 * v41) = v42;
      result = swift_unknownObjectRetain();
      v36 = v44;
    }

    while (v44);
  }

  v39 = v33;
  while (1)
  {
    v33 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
      break;
    }

    if (v33 >= v37)
    {
      goto LABEL_39;
    }

    v40 = *(v19 + 64 + 8 * v33);
    ++v39;
    if (v40)
    {
      v38 = __clz(__rbit64(v40));
      v44 = (v40 - 1) & v40;
      goto LABEL_37;
    }
  }

  __break(1u);
  return result;
}

uint64_t Array<A>.individualElementRepresentation<A>(encoder:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v45 = a5;
  v46 = a7;
  v44 = a2;
  v11 = *(a4 - 8);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v34 = v13;
  v47 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = 0;
  v43 = v14;
  v15 = *(v14 + 56);
  v49 = v15 & 1;
  v50 = (v15 & 2) != 0;
  v51 = (v15 & 8) != 0;
  v16 = MEMORY[0x1E69E7CC0];
  v52 = MEMORY[0x1E69E7CC0];
  v19 = MEMORY[0x1865CB550](v17, v18, v12);
  v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v19 & ~(v19 >> 63), 0, v16);
  v42 = MEMORY[0x1865CB560](a3, a4);
  if (!v42)
  {
    return v16;
  }

  v16 = 0;
  v35 = a3 & 0xC000000000000001;
  v36 = v11;
  v40 = (v11 + 16);
  v41 = a3 & 0xFFFFFFFFFFFFFF8;
  v38 = a6 + 8;
  v39 = (v11 + 8);
  v37 = a3;
  while ((_swift_isClassOrObjCExistentialType() & 1) != 0 && v35)
  {
    result = _ArrayBuffer._getElementSlowPath(_:)();
    if (v34 != 8)
    {
      goto LABEL_21;
    }

    v53 = result;
    v32 = v47;
    (*v40)(v47, &v53, a4);
    v25 = v32;
    swift_unknownObjectRelease();
    v26 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
LABEL_17:
      __break(1u);
LABEL_18:
      (*v39)(v25, a4);

      return v16;
    }

LABEL_9:
    v27 = (*(a6 + 8))(&v48, v43, v44, v45, v46, a4, a6);
    if (v7)
    {
      goto LABEL_18;
    }

    v28 = v27;
    v29 = a6;
    (*v39)(v25, a4);
    v31 = *(v20 + 2);
    v30 = *(v20 + 3);
    if (v31 >= v30 >> 1)
    {
      v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1, v20);
    }

    *(v20 + 2) = v31 + 1;
    *&v20[8 * v31 + 32] = v28;
    ++v16;
    a6 = v29;
    v11 = v36;
    a3 = v37;
    if (v26 == v42)
    {
      return v52;
    }
  }

  result = _swift_isClassOrObjCExistentialType();
  v22 = v41;
  if ((result & 1) == 0)
  {
    v22 = a3;
  }

  if (v16 < *(v22 + 16))
  {
    v23 = a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v16;
    v24 = *(v11 + 16);
    v25 = v47;
    v24(v47, v23, a4);
    v26 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      goto LABEL_17;
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> JSONWriter.serializePreformattedByteArray(_:_:depth:)(Swift::OpaquePointer _, Swift::OpaquePointer a2, Swift::Int depth)
{
  if (depth > 511)
  {
    lazy protocol witness table accessor for type JSONError and conformance JSONError();
    swift_allocError();
    *v32 = 0;
    *(v32 + 8) = 0;
    *(v32 + 16) = 0;
    *(v32 + 24) = 1;
    *(v32 + 32) = 0;
    *(v32 + 40) = 0;
    *(v32 + 48) = 2;
    swift_willThrow();
    return;
  }

  v4 = v3;
  v8 = (v3 + 16);
  v7 = *(v3 + 16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_89:
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1, v7);
  }

  v10 = *(v7 + 2);
  v9 = *(v7 + 3);
  v11 = v10 + 1;
  if (v10 >= v9 >> 1)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v7);
  }

  *(v7 + 2) = v11;
  v7[v10 + 32] = 91;
  v4[2] = v7;
  v39 = *(v4 + 8);
  v38 = v4;
  if (v39 == 1)
  {
    v12 = *(v7 + 3);
    v4 = (v10 + 2);
    if ((v10 + 2) > (v12 >> 1))
    {
      goto LABEL_91;
    }

    goto LABEL_7;
  }

  while (2)
  {
    v13 = *(a2._rawValue + 2);
    if (!v13)
    {
      if (v39)
      {
LABEL_74:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          goto LABEL_93;
        }

        goto LABEL_75;
      }

LABEL_79:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1, v7);
      }

      v36 = *(v7 + 2);
      v35 = *(v7 + 3);
      if (v36 >= v35 >> 1)
      {
        v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1, v7);
      }

      *(v7 + 2) = v36 + 1;
      v7[v36 + 32] = 93;
      *v8 = v7;
      return;
    }

    v37 = *(a2._rawValue + 2);
    v11 = 0;
    v14 = 0;
    v41 = a2._rawValue + 32;
    v40 = *(_._rawValue + 2);
    v15 = 1;
    LOBYTE(a2._rawValue) = v39;
    while (1)
    {
      v16 = *&v41[8 * v14];
      if ((v15 & 1) == 0)
      {
        break;
      }

      v12 = v39;
      if (v39)
      {
        goto LABEL_16;
      }

      a2._rawValue = 0;
LABEL_48:
      v21 = __OFADD__(v11, v16);
      v22 = v11 + v16;
      if (v21)
      {
        goto LABEL_86;
      }

      if (v22 < v11)
      {
        goto LABEL_87;
      }

      if (v40 < v22)
      {
        goto LABEL_88;
      }

      ++v14;

      v7 = v8;
      specialized Array.append<A>(contentsOf:)(v23, _._rawValue + 32, v11, (2 * v22) | 1);
      v15 = 0;
      v11 = v22;
      if (v14 == v13)
      {
        v7 = *v8;
        if (a2._rawValue)
        {
          goto LABEL_74;
        }

        goto LABEL_79;
      }
    }

    if ((a2._rawValue & 1) == 0)
    {
      v7 = *v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1, v7);
      }

      v20 = *(v7 + 2);
      v19 = *(v7 + 3);
      if (v20 >= v19 >> 1)
      {
        v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v7);
      }

      a2._rawValue = 0;
      *(v7 + 2) = v20 + 1;
      v7[v20 + 32] = 44;
      *v8 = v7;
LABEL_27:
      v13 = v37;
      v4 = v38;
      goto LABEL_48;
    }

    v7 = v8;
    specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of JSONWriter.serializePreformattedByteArray(_:_:depth:));
LABEL_16:
    a2._rawValue = *v4;
    if (*v4 > 4)
    {
      if (a2._rawValue > 7)
      {
        switch(a2._rawValue)
        {
          case 8uLL:
            v17 = "                ";
            v18 = 16;
            break;
          case 9uLL:
            v17 = "                  ";
            v18 = 18;
            break;
          case 0xAuLL:
            v17 = "                    ";
            v18 = 20;
            break;
          default:
            goto LABEL_53;
        }
      }

      else
      {
        switch(a2._rawValue)
        {
          case 5uLL:
            v17 = "          ";
            v18 = 10;
            break;
          case 6uLL:
            v17 = "            ";
            v18 = 12;
            break;
          case 7uLL:
            v17 = "              ";
            v18 = 14;
            break;
          default:
            goto LABEL_53;
        }
      }

      goto LABEL_46;
    }

    if (a2._rawValue > 1)
    {
      switch(a2._rawValue)
      {
        case 2uLL:
          v17 = "    ";
          v18 = 4;
          break;
        case 3uLL:
          v17 = "      ";
          v18 = 6;
          break;
        case 4uLL:
          v17 = "        ";
          v18 = 8;
          break;
        default:
          goto LABEL_53;
      }

LABEL_46:
      v7 = v8;
      specialized Array.append<A>(contentsOf:)(v17, v18);
LABEL_47:
      a2._rawValue = 1;
      goto LABEL_48;
    }

    if (!a2._rawValue)
    {
      goto LABEL_47;
    }

    if (a2._rawValue == 1)
    {
      v7 = v8;
      specialized Array.append<A>(contentsOf:)("  ", 2);
      goto LABEL_48;
    }

LABEL_53:
    if ((a2._rawValue & 0x8000000000000000) == 0)
    {
      v7 = *v8;
      v4 = *(*v8 + 16);
      while (1)
      {
        v24 = v4 + 2;
        if (__OFADD__(v4, 2))
        {
          break;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || (v26 = *(v7 + 3) >> 1, v26 < v24))
        {
          if (v4 <= v24)
          {
            v27 = v4 + 2;
          }

          else
          {
            v27 = v4;
          }

          v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v27, 1, v7);
          v26 = *(v7 + 3) >> 1;
        }

        v28 = *(v7 + 2);
        v29 = v26 - v28;
        if (v26 == v28)
        {
          goto LABEL_95;
        }

        v30 = v29 >= 2 ? 2 : v26 - v28;
        memcpy(&v7[v28 + 32], "  ", v30);
        if (v29 < 2)
        {
          goto LABEL_95;
        }

        v31 = *(v7 + 2);
        v21 = __OFADD__(v31, v30);
        v4 = (v31 + v30);
        if (v21)
        {
          goto LABEL_85;
        }

        *(v7 + 2) = v4;
        if (!--a2._rawValue)
        {
          *v8 = v7;
          a2._rawValue = 1;
          goto LABEL_27;
        }
      }

      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
      goto LABEL_89;
    }

    __break(1u);
LABEL_91:
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v4, 1, v7);
LABEL_7:
    *(v7 + 2) = v4;
    v7[v11 + 32] = 10;
    v4 = v38;
    v38[2] = v7;
    if (!__OFADD__(*v38, 1))
    {
      ++*v38;
      continue;
    }

    break;
  }

  __break(1u);
LABEL_93:
  v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1, v7);
LABEL_75:
  v34 = *(v7 + 2);
  v33 = *(v7 + 3);
  if (v34 >= v33 >> 1)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1, v7);
  }

  *(v7 + 2) = v34 + 1;
  v7[v34 + 32] = 10;
  v4[2] = v7;
  if (!__OFSUB__(*v4, 1))
  {
    --*v4;
    JSONWriter.writeIndent()();
    v7 = v4[2];
    goto LABEL_79;
  }

  __break(1u);
LABEL_95:
  __break(1u);
}

uint64_t @objc static NSTimeZone._setDefaultTimeZone(_:)(id a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    type metadata accessor for _NSSwiftTimeZone();
    if (swift_dynamicCastClass())
    {
      a1 = swift_unknownObjectRetain();
    }

    else
    {
      type metadata accessor for _TimeZoneBridged();
      *(swift_allocObject() + 16) = a3;
      _s10Foundation14_LocaleBridgedCAcA01_B8ProtocolAAWlTm_0(&lazy protocol witness table cache variable for type _TimeZoneBridged and conformance _TimeZoneBridged, type metadata accessor for _TimeZoneBridged);
      a1 = a3;
    }
  }

  if (one-time initialization token for cache != -1)
  {
    a1 = swift_once();
  }

  v4 = static TimeZoneCache.cache;
  MEMORY[0x1EEE9AC00](a1);
  os_unfair_lock_lock(v4 + 30);
  partial apply for closure #1 in TimeZoneCache.setDefault(_:)(&v4[4]);
  os_unfair_lock_unlock(v4 + 30);
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  LocaleNotifications.reset()();
  return swift_unknownObjectRelease();
}

void closure #1 in TimeZoneCache.setDefault(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 16) = a2;
  *(a1 + 24) = a3;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  if (a2)
  {
    v6 = type metadata accessor for _NSSwiftTimeZone();
    v7 = objc_allocWithZone(v6);
    v8 = &v7[OBJC_IVAR____NSSwiftTimeZone_timeZone];
    *v8 = a2;
    *(v8 + 1) = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCyAA16_NSSwiftTimeZoneC0C0V_GMd);
    v9 = swift_allocObject();
    *(v9 + 32) = 0;
    *(v9 + 16) = xmmword_18122E880;
    *&v7[OBJC_IVAR____NSSwiftTimeZone_lock] = v9;
    v11.receiver = v7;
    v11.super_class = v6;
    swift_unknownObjectRetain();
    v10 = objc_msgSendSuper2(&v11, sel_init);

    *(a1 + 72) = v10;
  }

  else
  {

    *(a1 + 72) = 0;
  }
}

double protocol witness for static SchedulerTimeIntervalConvertible.milliseconds(_:) in conformance NSRunLoop.SchedulerTimeType.Stride@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = a1 / 1000.0;
  *a2 = result;
  return result;
}

uint64_t (*PropertyListDecoder.userInfo.modify(void *a1))(void *a1)
{
  a1[1] = v1;
  v3 = *(v1 + 24);

  os_unfair_lock_lock(v3 + 4);

  *a1 = *(v1 + 16);

  return PropertyListDecoder.userInfo.modify;
}

uint64_t PropertyListDecoder.userInfo.modify(void *a1)
{
  v1 = a1[1];
  *(v1 + 16) = *a1;

  v2 = *(v1 + 24);

  os_unfair_lock_unlock(v2 + 4);
}

uint64_t (*PropertyListEncoder.userInfo.modify(void *a1))(void *a1)
{
  a1[1] = v1;
  v3 = *(v1 + 32);

  os_unfair_lock_lock(v3 + 4);

  *a1 = *(v1 + 24);

  return PropertyListEncoder.userInfo.modify;
}

uint64_t PropertyListEncoder.userInfo.modify(void *a1)
{
  v1 = a1[1];
  *(v1 + 24) = *a1;

  v2 = *(v1 + 32);

  os_unfair_lock_unlock(v2 + 4);
}

double protocol witness for static SchedulerTimeIntervalConvertible.seconds(_:) in conformance NSRunLoop.SchedulerTimeType.Stride@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = a1;
  *a2 = a1;
  return result;
}

uint64_t _PlistDecoder.userInfo.getter()
{
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17CodingUserInfoKeyV3key_yp5valuetMd);
  MEMORY[0x1EEE9AC00](v54);
  v53 = &v42 - v1;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17CodingUserInfoKeyV_yptMd);
  MEMORY[0x1EEE9AC00](v52);
  v51 = &v42 - v2;
  v3 = type metadata accessor for CodingUserInfoKey();
  v55 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17CodingUserInfoKeyV3key_s8Sendable_p5valuetMd);
  MEMORY[0x1EEE9AC00](v49);
  v48 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v47 = &v42 - v8;
  v56 = *(v0 + 32);
  if (*(v56 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys17CodingUserInfoKeyVypGMd);
    v9 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC8];
  }

  v10 = v56 + 64;
  v11 = 1 << *(v56 + 32);
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & *(v56 + 64);
  v14 = (v11 + 63) >> 6;
  v45 = v55 + 16;
  v58 = v55 + 32;
  v15 = v9 + 64;

  v17 = 0;
  v46 = v9;
  v43 = v10;
  v44 = v14;
  v50 = v5;
  while (v13)
  {
LABEL_15:
    v20 = __clz(__rbit64(v13)) | (v17 << 6);
    v22 = v55;
    v21 = v56;
    v23 = *(v56 + 48);
    v57 = *(v55 + 72);
    v24 = v47;
    (*(v55 + 16))(v47, v23 + v57 * v20, v3);
    v25 = *(v21 + 56) + 32 * v20;
    v26 = v49;
    outlined init with copy of Any(v25, v24 + *(v49 + 48));
    v27 = v48;
    outlined init with take of (key: CodingUserInfoKey, value: Sendable)(v24, v48);
    v28 = *(v26 + 48);
    v29 = *(v54 + 48);
    v30 = *(v22 + 32);
    v31 = v53;
    v30(v53, v27, v3);
    outlined init with take of Any((v27 + v28), v59);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8Sendable_pMd);
    swift_dynamicCast();
    v32 = v51;
    v33 = *(v52 + 48);
    v30(v51, v31, v3);
    outlined init with take of Any(&v31[v29], &v32[v33]);
    v34 = v50;
    v30(v50, v32, v3);
    outlined init with take of Any(&v32[v33], v59);
    v9 = v46;
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v35 = -1 << *(v9 + 32);
    v36 = result & ~v35;
    v37 = v36 >> 6;
    if (((-1 << v36) & ~*(v15 + 8 * (v36 >> 6))) == 0)
    {
      v38 = 0;
      v39 = (63 - v35) >> 6;
      v14 = v44;
      while (++v37 != v39 || (v38 & 1) == 0)
      {
        v40 = v37 == v39;
        if (v37 == v39)
        {
          v37 = 0;
        }

        v38 |= v40;
        v41 = *(v15 + 8 * v37);
        if (v41 != -1)
        {
          v18 = __clz(__rbit64(~v41)) + (v37 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v18 = __clz(__rbit64((-1 << v36) & ~*(v15 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
    v14 = v44;
LABEL_9:
    v13 &= v13 - 1;
    *(v15 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    v30((*(v9 + 48) + v18 * v57), v34, v3);
    result = outlined init with take of Any(v59, (*(v9 + 56) + 32 * v18));
    ++*(v9 + 16);
    v10 = v43;
  }

  while (1)
  {
    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v19 >= v14)
    {

      return v9;
    }

    v13 = *(v10 + 8 * v19);
    ++v17;
    if (v13)
    {
      v17 = v19;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t NSDecimalAdd(_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v120 = *MEMORY[0x1E69E9840];
  v118 = *a2;
  v119 = *(a2 + 16);
  if (!_So9NSDecimala__length_getter(&v118) && (v118 = *a2, v119 = *(a2 + 16), _So9NSDecimala__isNegative_getter(&v118)) || (v118 = *a3, v119 = *(a3 + 16), !_So9NSDecimala__length_getter(&v118)) && (v118 = *a3, v119 = *(a3 + 16), _So9NSDecimala__isNegative_getter(&v118)))
  {
LABEL_52:
    lazy protocol witness table accessor for type NSDecimal._CalculationError and conformance NSDecimal._CalculationError();
    v28 = swift_allocError();
    *v29 = 0;
    swift_willThrow();
LABEL_53:
    *&v118 = v28;
    v30 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    if (swift_dynamicCast())
    {
      v31 = qword_181234EC8[v116];
    }

    else
    {
      v31 = 0;
    }

    *&v115[4] = 0uLL;
    _So9NSDecimala__exponent_setter(0, v115);
    _So9NSDecimala__length_setter(0, v115);
    _So9NSDecimala__isNegative_setter(1, v115);
    _So9NSDecimala__isCompact_setter(v115);
    _So9NSDecimala__reserved_setter(v115);
    *a1 = *v115;
    *(a1 + 16) = *&v115[16];

    return v31;
  }

  v118 = *a2;
  v119 = *(a2 + 16);
  if (!_So9NSDecimala__length_getter(&v118))
  {
    v31 = 0;
    v32 = *a3;
    v33 = *(a3 + 16);
LABEL_59:
    *(a1 + 16) = v33;
    *a1 = v32;
    return v31;
  }

  v118 = *a3;
  v119 = *(a3 + 16);
  if (!_So9NSDecimala__length_getter(&v118))
  {
    v31 = 0;
    v32 = *a2;
    v33 = *(a2 + 16);
    goto LABEL_59;
  }

  v118 = *a2;
  v119 = *(a2 + 16);
  v116 = *a3;
  v117 = *(a3 + 16);
  v8 = specialized static NSDecimal._normalize(a:b:roundingMode:)(&v118, &v116);
  v111 = v118;
  v112 = v119;
  if (!_So9NSDecimala__length_getter(&v111))
  {
    v113 = v116;
    v35 = v117;
LABEL_63:
    v114 = v35;
LABEL_64:
    *a1 = v113;
    *(a1 + 16) = v114;
    return v8 & 1;
  }

  v111 = v116;
  v112 = v117;
  if (!_So9NSDecimala__length_getter(&v111))
  {
    v113 = v118;
    v35 = v119;
    goto LABEL_63;
  }

  v107 = v8;
  v111 = v118;
  v112 = v119;
  v109 = v118;
  v110 = v119;
  isNegative_getter = _So9NSDecimala__isNegative_getter(&v109);
  v109 = v116;
  v110 = v117;
  if (isNegative_getter != _So9NSDecimala__isNegative_getter(&v109))
  {
    v36 = v119;
    v37 = v118;
    NSDecimal.asVariableLengthInteger()(v118, *(&v118 + 1), v119);
    v39 = v38;
    v40 = v116;
    v41 = v117;
    NSDecimal.asVariableLengthInteger()(v116, *(&v116 + 1), v117);
    v17 = specialized static NSDecimal._integerCompare(lhs:rhs:)(v39, v42);

    switch(v17)
    {
      case 0xFFFFFFFFFFFFFFFFLL:
        NSDecimal.asVariableLengthInteger()(v40, *(&v40 + 1), v41);
        v17 = v44;
        NSDecimal.asVariableLengthInteger()(v37, *(&v37 + 1), v36);
        v46 = v45;
        v47 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v12 = v47;
        *(v47 + 32) = 0;
        v48 = (v47 + 32);
        *(v47 + 16) = 8;
        *(v47 + 40) = 0;
        v21 = *(v17 + 16);
        v20 = *(v46 + 16);
        if (v20 >= v21)
        {
          v49 = *(v17 + 16);
        }

        else
        {
          v49 = *(v46 + 16);
        }

        if (v49)
        {
          if (!v21)
          {
            goto LABEL_302;
          }

          if (!v20)
          {
            goto LABEL_303;
          }

          v50 = ((*(v17 + 32) | 0x10000) - *(v46 + 32)) >> 16;
          *v48 = *(v17 + 32) - *(v46 + 32);
          if (v49 != 1)
          {
            if (v21 == 1)
            {
              goto LABEL_302;
            }

            if (v20 == 1)
            {
              goto LABEL_303;
            }

            v51 = v50 + *(v17 + 34) - *(v46 + 34) + 0xFFFF;
            v50 = HIWORD(v51);
            *(v47 + 34) = v51;
            if (v49 != 2)
            {
              if (v21 == 2)
              {
                goto LABEL_302;
              }

              if (v20 == 2)
              {
                goto LABEL_303;
              }

              v52 = v50 + *(v17 + 36) - *(v46 + 36) + 0xFFFF;
              v50 = HIWORD(v52);
              *(v47 + 36) = v52;
              if (v49 != 3)
              {
                if (v21 == 3)
                {
                  goto LABEL_302;
                }

                if (v20 == 3)
                {
                  goto LABEL_303;
                }

                v53 = v50 + *(v17 + 38) - *(v46 + 38) + 0xFFFF;
                v50 = HIWORD(v53);
                *(v47 + 38) = v53;
                if (v49 != 4)
                {
                  if (v21 == 4)
                  {
                    goto LABEL_302;
                  }

                  if (v20 == 4)
                  {
                    goto LABEL_303;
                  }

                  v54 = v50 + *(v17 + 40) - *(v46 + 40) + 0xFFFF;
                  v50 = HIWORD(v54);
                  *(v47 + 40) = v54;
                  if (v49 != 5)
                  {
                    if (v21 == 5)
                    {
                      goto LABEL_302;
                    }

                    if (v20 == 5)
                    {
                      goto LABEL_303;
                    }

                    v55 = v50 + *(v17 + 42) - *(v46 + 42) + 0xFFFF;
                    v50 = HIWORD(v55);
                    *(v47 + 42) = v55;
                    if (v49 != 6)
                    {
                      if (v21 == 6)
                      {
                        goto LABEL_302;
                      }

                      if (v20 == 6)
                      {
                        goto LABEL_303;
                      }

                      v56 = v50 + *(v17 + 44) - *(v46 + 44) + 0xFFFF;
                      v50 = HIWORD(v56);
                      *(v47 + 44) = v56;
                      if (v49 != 7)
                      {
                        if (v21 == 7)
                        {
                          goto LABEL_302;
                        }

                        if (v20 == 7)
                        {
                          goto LABEL_303;
                        }

                        v57 = v50 + *(v17 + 46) - *(v46 + 46) + 0xFFFF;
                        *(v47 + 46) = v57;
                        if (v49 != 8)
                        {
                          goto LABEL_299;
                        }

                        v50 = HIWORD(v57);
                      }
                    }
                  }
                }
              }
            }
          }
        }

        else
        {
          v50 = 1;
        }

        if (v20 < v21)
        {
          v84 = v17 + 32;
          while (!v50)
          {
            if (v49 >= *(v47 + 16))
            {
              goto LABEL_280;
            }

            v50 = (*(v84 + 2 * v49) + 0xFFFF) >> 16;
            v48[v49] = *(v84 + 2 * v49) - 1;
            if (v21 == ++v49)
            {
              v49 = v21;
              goto LABEL_189;
            }
          }

          do
          {
            if (v49 >= v21)
            {
              goto LABEL_276;
            }

            if (v49 >= *(v47 + 16))
            {
              goto LABEL_278;
            }

            v48[v49] = *(v84 + 2 * v49);
            ++v49;
          }

          while (v49 < v21);
        }

LABEL_189:
        if (v49 < v20)
        {
          if (v49 <= v20)
          {
            v85 = v20;
          }

          else
          {
            v85 = v49;
          }

          do
          {
            if (v85 == v49)
            {
              goto LABEL_270;
            }

            if (v49 >= *(v47 + 16))
            {
              goto LABEL_272;
            }

            v86 = v50 + (*(v46 + 32 + 2 * v49) ^ 0xFFFF);
            v50 = HIWORD(v86);
            v48[v49++] = v86;
          }

          while (v20 != v49);
        }

        if (!v50)
        {
          goto LABEL_249;
        }

        for (i = *(v47 + 16); i; *(v47 + 16) = --i)
        {
          if (*(v47 + 30 + 2 * i))
          {
            break;
          }
        }

        v88 = *(v12 + 16);
        if (HIDWORD(v88))
        {
          goto LABEL_286;
        }

        _So9NSDecimala__length_setter(v88, &v111);
        v109 = v116;
        v89 = v117;
        break;
      case 0uLL:
        v113 = 0uLL;
        v114 = 0;
        v8 = v107;
        goto LABEL_64;
      case 1uLL:
        NSDecimal.asVariableLengthInteger()(v37, *(&v37 + 1), v36);
        v17 = v58;
        NSDecimal.asVariableLengthInteger()(v40, *(&v40 + 1), v41);
        v60 = v59;
        v61 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v12 = v61;
        *(v61 + 32) = 0;
        v62 = (v61 + 32);
        *(v61 + 16) = 8;
        *(v61 + 40) = 0;
        v21 = *(v17 + 16);
        v20 = *(v60 + 16);
        if (v20 >= v21)
        {
          v63 = *(v17 + 16);
        }

        else
        {
          v63 = *(v60 + 16);
        }

        if (v63)
        {
          if (!v21)
          {
            goto LABEL_307;
          }

          if (!v20)
          {
            goto LABEL_308;
          }

          v64 = ((*(v17 + 32) | 0x10000) - *(v60 + 32)) >> 16;
          *v62 = *(v17 + 32) - *(v60 + 32);
          if (v63 != 1)
          {
            if (v21 == 1)
            {
              goto LABEL_307;
            }

            if (v20 == 1)
            {
              goto LABEL_308;
            }

            v65 = v64 + *(v17 + 34) - *(v60 + 34) + 0xFFFF;
            v64 = HIWORD(v65);
            *(v61 + 34) = v65;
            if (v63 != 2)
            {
              if (v21 == 2)
              {
                goto LABEL_307;
              }

              if (v20 == 2)
              {
                goto LABEL_308;
              }

              v66 = v64 + *(v17 + 36) - *(v60 + 36) + 0xFFFF;
              v64 = HIWORD(v66);
              *(v61 + 36) = v66;
              if (v63 != 3)
              {
                if (v21 == 3)
                {
                  goto LABEL_307;
                }

                if (v20 == 3)
                {
                  goto LABEL_308;
                }

                v67 = v64 + *(v17 + 38) - *(v60 + 38) + 0xFFFF;
                v64 = HIWORD(v67);
                *(v61 + 38) = v67;
                if (v63 != 4)
                {
                  if (v21 == 4)
                  {
                    goto LABEL_307;
                  }

                  if (v20 == 4)
                  {
                    goto LABEL_308;
                  }

                  v68 = v64 + *(v17 + 40) - *(v60 + 40) + 0xFFFF;
                  v64 = HIWORD(v68);
                  *(v61 + 40) = v68;
                  if (v63 != 5)
                  {
                    if (v21 == 5)
                    {
                      goto LABEL_307;
                    }

                    if (v20 == 5)
                    {
                      goto LABEL_308;
                    }

                    v69 = v64 + *(v17 + 42) - *(v60 + 42) + 0xFFFF;
                    v64 = HIWORD(v69);
                    *(v61 + 42) = v69;
                    if (v63 != 6)
                    {
                      if (v21 == 6)
                      {
                        goto LABEL_307;
                      }

                      if (v20 == 6)
                      {
                        goto LABEL_308;
                      }

                      v70 = v64 + *(v17 + 44) - *(v60 + 44) + 0xFFFF;
                      v64 = HIWORD(v70);
                      *(v61 + 44) = v70;
                      if (v63 != 7)
                      {
                        if (v21 == 7)
                        {
                          goto LABEL_307;
                        }

                        if (v20 == 7)
                        {
                          goto LABEL_308;
                        }

                        v71 = v64 + *(v17 + 46) - *(v60 + 46) + 0xFFFF;
                        *(v61 + 46) = v71;
                        if (v63 != 8)
                        {
                          goto LABEL_304;
                        }

                        v64 = HIWORD(v71);
                      }
                    }
                  }
                }
              }
            }
          }
        }

        else
        {
          v64 = 1;
        }

        if (v20 < v21)
        {
          v90 = v17 + 32;
          while (!v64)
          {
            if (v63 >= *(v61 + 16))
            {
              goto LABEL_281;
            }

            v64 = (*(v90 + 2 * v63) + 0xFFFF) >> 16;
            v62[v63] = *(v90 + 2 * v63) - 1;
            if (v21 == ++v63)
            {
              v63 = v21;
              goto LABEL_212;
            }
          }

          do
          {
            if (v63 >= v21)
            {
              goto LABEL_277;
            }

            if (v63 >= *(v61 + 16))
            {
              goto LABEL_279;
            }

            v62[v63] = *(v90 + 2 * v63);
            ++v63;
          }

          while (v63 < v21);
        }

LABEL_212:
        if (v63 < v20)
        {
          if (v63 <= v20)
          {
            v91 = v20;
          }

          else
          {
            v91 = v63;
          }

          do
          {
            if (v91 == v63)
            {
              goto LABEL_271;
            }

            if (v63 >= *(v61 + 16))
            {
              goto LABEL_273;
            }

            v92 = v64 + (*(v60 + 32 + 2 * v63) ^ 0xFFFF);
            v64 = HIWORD(v92);
            v62[v63++] = v92;
          }

          while (v20 != v63);
        }

        if (!v64)
        {
          goto LABEL_249;
        }

        for (j = *(v61 + 16); j; *(v61 + 16) = --j)
        {
          if (*(v61 + 30 + 2 * j))
          {
            break;
          }
        }

        v94 = *(v12 + 16);
        if (HIDWORD(v94))
        {
          goto LABEL_287;
        }

        _So9NSDecimala__length_setter(v94, &v111);
        v109 = v118;
        v89 = v119;
        break;
      default:
LABEL_309:
        type metadata accessor for NSComparisonResult(0);
        *&v109 = v17;
        _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
        __break(1u);
        goto LABEL_310;
    }

    v110 = v89;
    v95 = _So9NSDecimala__isNegative_getter(&v109);
    _So9NSDecimala__isNegative_setter(v95, &v111);
LABEL_226:
    NSDecimal.copyVariableLengthInteger(_:)(v12);
    if (v96)
    {
      v28 = v96;

      goto LABEL_53;
    }

    _So9NSDecimala__isCompact_setter(&v111);
    NSDecimal.compact()();
    v113 = v111;
    v114 = v112;
    v8 = v107;
    goto LABEL_64;
  }

  v109 = v118;
  v110 = v119;
  v10 = _So9NSDecimala__isNegative_getter(&v109);
  _So9NSDecimala__isNegative_setter(v10, &v111);
  NSDecimal.asVariableLengthInteger()(v118, *(&v118 + 1), v119);
  v12 = v11;
  NSDecimal.asVariableLengthInteger()(v116, *(&v116 + 1), v117);
  v14 = v13;
  v15 = *(v12 + 16);
  v16 = *(v13 + 16);
  if (v16 >= v15)
  {
    v17 = *(v12 + 16);
  }

  else
  {
    v17 = *(v13 + 16);
  }

  v18 = 9;
  v19 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v19 + 16) = 9;
  *(v19 + 32) = 0;
  v22 = (v19 + 32);
  *(v19 + 40) = 0;
  *(v19 + 48) = 0;
  if (v17)
  {
    if (!v15)
    {
      goto LABEL_297;
    }

    if (!v16)
    {
      goto LABEL_298;
    }

    v21 = *(v12 + 32) + *(v14 + 32);
    v20 = WORD1(v21);
    *v22 = *(v12 + 32) + *(v14 + 32);
    if (v17 != 1)
    {
      if (v15 == 1)
      {
        goto LABEL_297;
      }

      if (v16 == 1)
      {
        goto LABEL_298;
      }

      v21 = v20 + *(v12 + 34) + *(v14 + 34);
      v20 = WORD1(v21);
      *(v19 + 34) = v21;
      if (v17 != 2)
      {
        if (v15 == 2)
        {
          goto LABEL_297;
        }

        if (v16 == 2)
        {
          goto LABEL_298;
        }

        v21 = v20 + *(v12 + 36) + *(v14 + 36);
        v20 = WORD1(v21);
        *(v19 + 36) = v21;
        if (v17 != 3)
        {
          if (v15 == 3)
          {
            goto LABEL_297;
          }

          if (v16 == 3)
          {
            goto LABEL_298;
          }

          v21 = v20 + *(v12 + 38) + *(v14 + 38);
          v20 = WORD1(v21);
          *(v19 + 38) = v21;
          if (v17 != 4)
          {
            if (v15 == 4)
            {
              goto LABEL_297;
            }

            if (v16 == 4)
            {
              goto LABEL_298;
            }

            v21 = v20 + *(v12 + 40) + *(v14 + 40);
            v20 = WORD1(v21);
            *(v19 + 40) = v21;
            if (v17 != 5)
            {
              if (v15 == 5)
              {
                goto LABEL_297;
              }

              if (v16 == 5)
              {
                goto LABEL_298;
              }

              v21 = v20 + *(v12 + 42) + *(v14 + 42);
              v20 = WORD1(v21);
              *(v19 + 42) = v21;
              if (v17 != 6)
              {
                if (v15 == 6)
                {
                  goto LABEL_297;
                }

                if (v16 == 6)
                {
                  goto LABEL_298;
                }

                v21 = v20 + *(v12 + 44) + *(v14 + 44);
                v20 = WORD1(v21);
                *(v19 + 44) = v21;
                if (v17 != 7)
                {
                  if (v15 == 7)
                  {
                    goto LABEL_297;
                  }

                  if (v16 == 7)
                  {
                    goto LABEL_298;
                  }

                  v21 = v20 + *(v12 + 46) + *(v14 + 46);
                  v20 = WORD1(v21);
                  *(v19 + 46) = v21;
                  if (v17 != 8)
                  {
                    if (v15 == 8)
                    {
                      goto LABEL_297;
                    }

                    if (v16 == 8)
                    {
                      goto LABEL_298;
                    }

                    v23 = *(v14 + 48);
                    v21 = v20 + *(v12 + 48) + v23;
                    *(v19 + 48) = v20 + *(v12 + 48) + v23;
                    if (v17 != 9)
                    {
                      goto LABEL_294;
                    }

                    LODWORD(v20) = WORD1(v21);
                  }
                }
              }
            }
          }
        }
      }
    }

    if (v16 < v15)
    {
      if (v21 < 0x10000)
      {
        goto LABEL_69;
      }

      if (v17 > 8)
      {
        goto LABEL_283;
      }

      LODWORD(v20) = (*(v12 + 32 + 2 * v17) + 1) >> 16;
      v22[v17] = *(v12 + 32 + 2 * v17) + 1;
      if (v17 + 1 != v15)
      {
        v24 = 2 * v17 + 34;
        v25 = (v19 + v24);
        v26 = (v12 + v24);
        ++v17;
        while (v20)
        {
          if (v17 >= *(v19 + 16))
          {
            goto LABEL_283;
          }

          v27 = *v26++;
          LODWORD(v20) = (v27 + 1) >> 16;
          *v25++ = v27 + 1;
          if (v15 == ++v17)
          {
            goto LABEL_48;
          }
        }

LABEL_69:
        if (v17 <= v15)
        {
          v43 = v15;
        }

        else
        {
          v43 = v17;
        }

        do
        {
          if (v43 == v17)
          {
            goto LABEL_263;
          }

          if (v17 >= *(v19 + 16))
          {
            goto LABEL_264;
          }

          *(v19 + 2 * v17 + 32) = *(v12 + 32 + 2 * v17);
          ++v17;
        }

        while (v17 < v15);
        if (v17 >= v16)
        {
          goto LABEL_156;
        }

        goto LABEL_150;
      }

LABEL_48:
      v17 = v15;
    }
  }

  else
  {
    if (v15)
    {
      goto LABEL_69;
    }

    LODWORD(v20) = 0;
  }

  if (v17 < v16)
  {
    if (!v20)
    {
LABEL_150:
      if (v17 <= v16)
      {
        v76 = v16;
      }

      else
      {
        v76 = v17;
      }

      do
      {
        if (v76 == v17)
        {
          goto LABEL_265;
        }

        if (v17 >= *(v19 + 16))
        {
          goto LABEL_266;
        }

        *(v19 + 2 * v17 + 32) = *(v14 + 32 + 2 * v17);
        ++v17;
      }

      while (v17 < v16);
LABEL_156:
      *&v109 = v19;
      goto LABEL_157;
    }

    if (v17 >= *(v19 + 16))
    {
      goto LABEL_282;
    }

    LODWORD(v20) = (*(v14 + 32 + 2 * v17) + 1) >> 16;
    v22[v17] = *(v14 + 32 + 2 * v17) + 1;
    if (v17 + 1 != v16)
    {
      v72 = 2 * v17 + 34;
      v73 = (v19 + v72);
      v74 = (v14 + v72);
      ++v17;
      while (v20)
      {
        if (v17 >= *(v19 + 16))
        {
          goto LABEL_282;
        }

        v75 = *v74++;
        LODWORD(v20) = (v75 + 1) >> 16;
        *v73++ = v75 + 1;
        if (v16 == ++v17)
        {
          goto LABEL_145;
        }
      }

      goto LABEL_150;
    }

LABEL_145:
    v17 = v16;
  }

  *&v109 = v19;
  if (!v20)
  {
LABEL_157:
    v77 = *(v19 + 16);
    v78 = v77 - v17;
    if (__OFSUB__(v77, v17))
    {
      goto LABEL_284;
    }

    v17 = &v109;
    specialized RangeReplaceableCollection<>.removeLast(_:)(v78);

    v108 = v109;
    v79 = *(v109 + 16);
    if (v79 > 8)
    {

      if (v79 == 9)
      {
        v15 = 0;
        LODWORD(v14) = 0;
        v80 = 0;
        v12 = v108;
      }

      else
      {
        v17 = 0;
        LODWORD(v14) = 0;
        v80 = 0;
        v18 = v108;
        do
        {
          if (v14)
          {
            v80 = 1;
          }

          v12 = specialized static NSDecimal._integerDivideByShort(_:_:)(v18, 0x2710u);
          v14 = v83;

          v15 = v17 + 4;
          if (__OFADD__(v17, 4))
          {
            goto LABEL_275;
          }

          v16 = *(v12 + 16);
          v17 += 4;
          v18 = v12;
        }

        while (v16 > 9);
        if (v16 != 9)
        {
          goto LABEL_175;
        }
      }

      v18 = v12;
      do
      {
        if (v14)
        {
          v80 = 1;
        }

        v12 = specialized static NSDecimal._integerDivideByShort(_:_:)(v18, 0xAu);
        v14 = v81;

        v82 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          goto LABEL_274;
        }

        v16 = *(v12 + 16);
        ++v15;
        v18 = v12;
      }

      while (v16 > 8);
      v15 = v82;
LABEL_175:
      if (v80)
      {
        if (!v14 || v14 == 5)
        {
          v14 = (v14 + 1);
        }
      }

      else if (!v14)
      {
        goto LABEL_254;
      }

      if (a4 <= 1)
      {
        if (a4)
        {
          goto LABEL_254;
        }

        goto LABEL_240;
      }

      if (a4 == 2)
      {
        goto LABEL_242;
      }

      if (a4 != 3)
      {
        goto LABEL_254;
      }

      if (v14 != 5)
      {
LABEL_240:
        if (v14 <= 4)
        {
LABEL_254:

          while (1)
          {
            v109 = v111;
            v110 = v112;
            v102 = _So9NSDecimala__exponent_getter(&v109);
            if (v15 < 0xFFFFFFFF80000000)
            {
              goto LABEL_288;
            }

            if (v15 > 0x7FFFFFFF)
            {
              goto LABEL_289;
            }

            if (__OFADD__(v102, v15))
            {
              goto LABEL_290;
            }

            if (v102 + v15 > 127)
            {
              break;
            }

            v109 = v111;
            v110 = v112;
            v103 = _So9NSDecimala__exponent_getter(&v109);
            v104 = __OFADD__(v103, v15);
            v105 = (v103 + v15);
            if (v104)
            {
              __break(1u);
LABEL_292:
              a4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v101 > 1), v14, 1, a4);
LABEL_251:
              *(a4 + 16) = v14;
              *(a4 + 2 * v18 + 32) = 1;
              if (*(a4 + 16) >= v16)
              {
                goto LABEL_253;
              }

              v19 = specialized static NSDecimal._integerDivideByShort(_:_:)(a4, 0xAu);
            }

            else
            {
              v19 = _So9NSDecimala__exponent_setter(v105, &v111);
              v79 = *(v12 + 16);
              if (!HIDWORD(v79))
              {
                goto LABEL_168;
              }

              __break(1u);
LABEL_263:
              __break(1u);
LABEL_264:
              __break(1u);
LABEL_265:
              __break(1u);
LABEL_266:
              __break(1u);
            }

            v16 = v19;

            v104 = __OFADD__(v15++, 1);
            if (v104)
            {
              __break(1u);
LABEL_270:
              __break(1u);
LABEL_271:
              __break(1u);
LABEL_272:
              __break(1u);
LABEL_273:
              __break(1u);
LABEL_274:
              __break(1u);
LABEL_275:
              __break(1u);
LABEL_276:
              __break(1u);
LABEL_277:
              __break(1u);
LABEL_278:
              __break(1u);
LABEL_279:
              __break(1u);
LABEL_280:
              __break(1u);
LABEL_281:
              __break(1u);
LABEL_282:
              __break(1u);
LABEL_283:
              __break(1u);
LABEL_284:
              __break(1u);
LABEL_285:
              __break(1u);
LABEL_286:
              __break(1u);
LABEL_287:
              __break(1u);
LABEL_288:
              __break(1u);
LABEL_289:
              __break(1u);
LABEL_290:
              __break(1u);
            }
          }

          goto LABEL_52;
        }

LABEL_242:
        if (!v16)
        {
          a4 = MEMORY[0x1E69E7CC0];
          v18 = *(MEMORY[0x1E69E7CC0] + 16);
          v14 = 1;
LABEL_248:
          if (v18 != v14)
          {
            v101 = *(a4 + 24);
            v14 = v18 + 1;
            if (v18 >= v101 >> 1)
            {
              goto LABEL_292;
            }

            goto LABEL_251;
          }

LABEL_249:

          lazy protocol witness table accessor for type NSDecimal._CalculationError and conformance NSDecimal._CalculationError();
          v28 = swift_allocError();
          *v100 = 0;
          swift_willThrow();

          goto LABEL_53;
        }

LABEL_243:
        v14 = v16 + 1;
        a4 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(a4 + 16) = v16;
        bzero((a4 + 32), 2 * v16);
        v97 = 0;
        v98 = 1;
        do
        {
          v99 = v98 + *(v12 + 32 + 2 * v97);
          v98 = HIWORD(v99);
          *(a4 + 2 * v97++ + 32) = v99;
        }

        while (v16 != v97);
        v18 = v16;
        if (v99 < 0x10000)
        {
LABEL_253:

          goto LABEL_254;
        }

        goto LABEL_248;
      }

      if (v16)
      {
        if (*(v12 + 32))
        {
          goto LABEL_254;
        }

        goto LABEL_243;
      }

      __break(1u);
LABEL_294:
      if (v15 != 9)
      {
        if (v16 != 9)
        {
          __break(1u);
          goto LABEL_297;
        }

LABEL_298:
        __break(1u);
LABEL_299:
        if (v21 != 8)
        {
          if (v20 != 8)
          {
            __break(1u);
            goto LABEL_302;
          }

LABEL_303:
          __break(1u);
LABEL_304:
          if (v21 != 8)
          {
            if (v20 != 8)
            {
              __break(1u);
              goto LABEL_307;
            }

LABEL_308:
            __break(1u);
            goto LABEL_309;
          }

LABEL_307:
          __break(1u);
          goto LABEL_308;
        }

LABEL_302:
        __break(1u);
        goto LABEL_303;
      }

LABEL_297:
      __break(1u);
      goto LABEL_298;
    }

    v12 = v109;
LABEL_168:
    _So9NSDecimala__length_setter(v79, &v111);
    goto LABEL_226;
  }

  if (v17 <= 9)
  {
    if (v17 >= *(v19 + 16))
    {
      goto LABEL_285;
    }

    v22[v17] = 1;
    *&v109 = v19;
    ++v17;
    goto LABEL_157;
  }

LABEL_310:

  lazy protocol witness table accessor for type NSDecimal._CalculationError and conformance NSDecimal._CalculationError();
  swift_allocError();
  *v106 = 0;
  swift_willThrow();

  result = swift_unexpectedError();
  __break(1u);
  return result;
}