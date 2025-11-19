uint64_t specialized static Locale.identifier(fromWindowsLocaleCode:)(unint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (HIDWORD(a1))
  {
    return 0;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {
    v9 = 0;
    v3 = MEMORY[0x1865D3040](a1, v10, 1024, &v9);
    if (v9 > 0 || v3 <= 0)
    {
      return 0;
    }

    v10[v3] = 0;
    return MEMORY[0x1865CAEB0](v10);
  }

  else
  {
    v5 = swift_slowAlloc();
    v9 = 0;
    v6 = MEMORY[0x1865D3040](a1, v5, 1024, &v9);
    v7 = 0;
    if (v9 <= 0 && v6 > 0)
    {
      *(v5 + v6) = 0;
      v7 = MEMORY[0x1865CAEB0](v5, 0);
    }

    v8 = v7;
    MEMORY[0x1865D2690](v5, -1, -1);
    return v8;
  }
}

uint64_t _NSSetBoolValueForKeyWithMethod(void *a1, int a2, void *a3, uint64_t a4, Method m)
{
  if (a3)
  {
    Implementation = method_getImplementation(m);
    Name = method_getName(m);
    v9 = [a3 BOOLValue];

    return (Implementation)(a1, Name, v9);
  }

  else
  {

    return [a1 setNilValueForKey:a4];
  }
}

uint64_t _NSSetRectValueForKeyWithMethod(void *a1, int a2, void *a3, uint64_t a4, Method m)
{
  if (a3)
  {
    Implementation = method_getImplementation(m);
    Name = method_getName(m);
    [a3 rectValue];

    return (Implementation)(a1, Name);
  }

  else
  {

    return [a1 setNilValueForKey:a4];
  }
}

uint64_t _NSSetIntValueForKeyWithMethod(void *a1, int a2, void *a3, uint64_t a4, Method m)
{
  if (a3)
  {
    Implementation = method_getImplementation(m);
    Name = method_getName(m);
    v9 = [a3 intValue];

    return (Implementation)(a1, Name, v9);
  }

  else
  {

    return [a1 setNilValueForKey:a4];
  }
}

NSSize NSSizeFromString(NSString *aString)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 0.0;
  v4 = 0.0;
  parseFloats(aString, 2, &v3);
  v1 = v3;
  v2 = v4;
  result.height = v2;
  result.width = v1;
  return result;
}

Swift::Bool __swiftcall Calendar.isDate(_:equalTo:toGranularity:)(Foundation::Date _, Foundation::Date equalTo, Foundation::Calendar::Component toGranularity)
{
  *&v5._time = *toGranularity;
  *&v6._time = *v3;
  v9 = *v4;
  time = v5._time;
  return Calendar.compare(_:to:toGranularity:)(v5, v6, &time) == NSOrderedSame;
}

Swift::Bool __swiftcall Calendar.isDateInYesterday(_:)(Foundation::Date a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = *v1;
  v5 = *v2;
  v4 = v2[1];
  __tp.tv_sec = 0;
  __tp.tv_nsec = 0;
  clock_gettime(_CLOCK_REALTIME, &__tp);
  v6 = __tp.tv_sec + -978307200.0 + __tp.tv_nsec * 0.000000001;
  LOBYTE(v12._time) = 3;
  if (one-time initialization token for validCalendarRange != -1)
  {
    swift_once();
  }

  v7 = *(&static Date.validCalendarRange + 1);
  if (*(&static Date.validCalendarRange + 1) >= v6)
  {
    v7 = v6;
  }

  if (*&static Date.validCalendarRange >= v7)
  {
    v8 = *&static Date.validCalendarRange;
  }

  else
  {
    v8 = v7;
  }

  ObjectType = swift_getObjectType();
  *&__tp.tv_sec = v8;
  (*(*&v4 + 160))(v14, &v12, &__tp, ObjectType, COERCE_DOUBLE(*&v4));
  if (v15)
  {
    return 0;
  }

  v11._time = v14[0] + -60.0;
  v14[0] = v5;
  v14[1] = v4;
  v12._time = v11._time;
  __tp.tv_sec = v3;
  return Calendar.compare(_:to:toGranularity:)(v11, 0xC04E000000000000, &__tp) == NSOrderedSame;
}

uint64_t URL.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation3URLV10CodingKeys33_FB6C8C127CB51A72D58E049FC6F7743FLLOGMd);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v11 - v5;
  v7 = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type URL.CodingKeys and conformance URL.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  ObjectType = swift_getObjectType();
  (*(v7 + 104))(ObjectType, v7);
  LOBYTE(v12) = 1;
  v9 = v11[1];
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v9)
  {
    (*(v4 + 8))(v6, v3);
  }

  else
  {

    (*(v7 + 120))(&v12, ObjectType, v7);
    if (v12)
    {
      v13 = 0;
      lazy protocol witness table accessor for type URL and conformance URL();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v4 + 8))(v6, v3);
      return swift_unknownObjectRelease();
    }

    else
    {
      return (*(v4 + 8))(v6, v3);
    }
  }
}

uint64_t protocol witness for Encodable.encode(to:) in conformance Date(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v3);
  dispatch thunk of SingleValueEncodingContainer.encode(_:)();
  return __swift_destroy_boxed_opaque_existential_1(v2);
}

uint64_t protocol witness for Decodable.init(from:) in conformance Date@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v8, v8[3]);
    dispatch thunk of SingleValueDecodingContainer.decode(_:)();
    v6 = v5;
    __swift_destroy_boxed_opaque_existential_1(v8);
    *a2 = v6;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t PersonNameComponents.familyName.setter(uint64_t a1, uint64_t a2)
{
  specialized PersonNameComponents.namePrefix.setter(a1, a2, &selRef_setFamilyName_);
}

NSPersonNameComponents __swiftcall PersonNameComponents._bridgeToObjectiveC()()
{
  [*(*v0 + 16) copy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for NSPersonNameComponents();
  swift_dynamicCast();
  v2 = v4;
  result._private = v1;
  result.super.isa = v2;
  return result;
}

unint64_t type metadata accessor for NSPersonNameComponents()
{
  result = lazy cache variable for type metadata for NSPersonNameComponents;
  if (!lazy cache variable for type metadata for NSPersonNameComponents)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSPersonNameComponents);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UInt and conformance UInt()
{
  result = lazy protocol witness table cache variable for type UInt and conformance UInt;
  if (!lazy protocol witness table cache variable for type UInt and conformance UInt)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UInt and conformance UInt);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UInt and conformance UInt;
  if (!lazy protocol witness table cache variable for type UInt and conformance UInt)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UInt and conformance UInt);
  }

  return result;
}

uint64_t PersonNameComponents.givenName.setter(uint64_t a1, uint64_t a2)
{
  specialized PersonNameComponents.namePrefix.setter(a1, a2, &selRef_setGivenName_);
}

void specialized PersonNameComponents.namePrefix.setter(uint64_t a1, uint64_t a2, SEL *a3)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(*v3 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14_MutableHandleCySo22NSPersonNameComponentsCGMd);
    v8 = swift_allocObject();
    v9 = v7;
    [v9 copy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();

    type metadata accessor for NSPersonNameComponents();
    swift_dynamicCast();
    v7 = v12;
    *(v8 + 16) = v12;

    *v3 = v8;
  }

  if (a2)
  {
    v10 = String._bridgeToObjectiveCImpl()();
  }

  else
  {
    v10 = 0;
  }

  v11 = v7;
  [v11 *a3];
}

uint64_t PersonNameComponents.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = [objc_allocWithZone(NSPersonNameComponents) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14_MutableHandleCySo22NSPersonNameComponentsCGMd);
  result = swift_allocObject();
  *(result + 16) = v2;
  *a1 = result;
  return result;
}

void specialized static Int._forceBridgeFromObjectiveC(_:result:)(void *a1, uint64_t a2)
{
  v3 = [a1 integerValue];
  type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSObject);
  v4 = [objc_allocWithZone(NSNumber) initWithInteger_];
  v5 = static NSObject.== infix(_:_:)();

  if (v5)
  {
    *a2 = v3;
    *(a2 + 8) = 0;
  }

  else
  {
    _StringGuts.grow(_:)(25);

    type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSNumber);
    v6 = _typeName(_:qualified:)();
    MEMORY[0x1865CB0E0](v6);

    MEMORY[0x1865CB0E0](544175136, 0xE400000000000000);
    MEMORY[0x1865CB0E0](7630409, 0xE300000000000000);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

id protocol witness for _ObjectiveCBridgeable._bridgeToObjectiveC() in conformance Float()
{
  v1 = *v0;
  v2 = objc_allocWithZone(NSNumber);
  LODWORD(v3) = v1;

  return [v2 initWithFloat_];
}

double specialized _TimeZoneAutoupdating.rawAndDaylightSavingTimeOffset(for:repeatedTimePolicy:skippedTimePolicy:)(uint64_t *a1)
{
  v1 = *a1;
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v2 = static TimeZoneCache.cache;
  os_unfair_lock_lock((static TimeZoneCache.cache + 120));
  if (*(v2 + 16))
  {
    v3 = *(v2 + 24);
  }

  else
  {
    TimeZoneCache.State.findCurrentTimeZone()(v9);
    v3 = v9[1];
    *(v2 + 16) = v9[0];
    *(v2 + 24) = v3;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v2 + 120));
  ObjectType = swift_getObjectType();
  v9[0] = v1;
  v8 = 0;
  (*(v3 + 56))(v9, &v8 + 1, &v8, ObjectType, v3);
  v6 = v5;
  swift_unknownObjectRelease();
  return v6;
}

Foundation::Date_optional __swiftcall _TimeZoneAutoupdating.nextDaylightSavingTimeTransition(after:)(Foundation::Date after)
{
  v2 = *v1;
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v3 = static TimeZoneCache.cache;
  os_unfair_lock_lock((static TimeZoneCache.cache + 120));
  if (*(v3 + 16))
  {
    v4 = *(v3 + 24);
  }

  else
  {
    TimeZoneCache.State.findCurrentTimeZone()(v8);
    v4 = v8[1];
    *(v3 + 16) = v8[0];
    *(v3 + 24) = v4;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v3 + 120));
  ObjectType = swift_getObjectType();
  v8[0] = v2;
  (*(v4 + 88))(v8, ObjectType, v4);

  v6 = swift_unknownObjectRelease();
  result.value = *&v7;
  result.is_nil = v6;
  return result;
}

unsigned __int8 *specialized _NSSwiftProcessInfo.isOperatingSystemAtLeast(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62[4] = *MEMORY[0x1E69E9840];
  String._bridgeToObjectiveCImpl()();
  v6 = _CFCopySystemVersionDictionaryValue();
  swift_unknownObjectRelease();
  if (!v6)
  {
LABEL_28:
    v8 = 0;
    goto LABEL_29;
  }

  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  v8 = v7;
  if (v7)
  {
    isTaggedPointer = _objc_isTaggedPointer(v7);
    v10 = v6;
    if (isTaggedPointer)
    {
      TaggedPointerTag = _objc_getTaggedPointerTag(v8);
      switch(TaggedPointerTag)
      {
        case 0:
          v60 = 0;
          _CFIndirectTaggedPointerStringGetContents();
          v20 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
          if (v21)
          {
            v12 = v20;
            v14 = v21;
          }

          else
          {
            [v8 mutableCopy];
            _bridgeAnyObjectToAny(_:)();

            swift_unknownObjectRelease();
            swift_dynamicCast();
            v12 = v58;
            v14 = v59;
          }

          goto LABEL_22;
        case 0x16:
          v16 = v10;
          v19 = [v8 UTF8String];
          result = v8;
          if (v19)
          {
            result = String.init(utf8String:)(v19);
            if (v18)
            {
              goto LABEL_16;
            }
          }

          else
          {
            __break(1u);
          }

          __break(1u);
          return result;
        case 2:
          MEMORY[0x1EEE9AC00](TaggedPointerTag);
          v55 = v8;
          v12 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v14 = v13;

          goto LABEL_22;
      }
    }

    LOBYTE(v58) = 0;
    v62[0] = 0;
    LOBYTE(v60) = 0;
    v61 = 0;
    if (__CFStringIsCF())
    {

      v12 = 0;
      v14 = 0xE000000000000000;
      goto LABEL_22;
    }

    v16 = v10;
    result = String.init(_nativeStorage:)();
    if (!v18)
    {
      v62[0] = [v8 length];
      if (v62[0])
      {
        v12 = String.init(_cocoaString:)();
        v14 = v22;
      }

      else
      {

        v12 = 0;
        v14 = 0xE000000000000000;
      }

      goto LABEL_22;
    }

LABEL_16:
    v12 = result;
    v14 = v18;

LABEL_22:
    v62[0] = 46;
    v62[1] = 0xE100000000000000;
    MEMORY[0x1EEE9AC00](v15);
    v55 = v62;
    v23 = specialized Collection.split(maxSplits:omittingEmptySubsequences:whereSeparator:)(0x7FFFFFFFFFFFFFFFLL, 1, closure #1 in Sequence<>.contains(_:)specialized partial apply, &v54, v12, v14, &v56);
    v24 = v23;
    if (v23[2])
    {
      v25 = v23[4];
      v26 = v23[5];
      if ((v26 ^ v25) >= 0x4000)
      {
        v57 = a3;
        v28 = v23[6];
        v27 = v23[7];
        v29 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SiSg_Tg5061_ss17FixedWidthIntegerPsE_5radixxSgqd___SitcSyRd__lufcADSRys5I15VGXEfU_Si_SsTG5SiTf1cn_n(v25, v26, v28, v27, 10);
        if ((v30 & 0x100) != 0)
        {

          v31 = specialized _parseInteger<A, B>(ascii:radix:)(v25, v26, v28, v27, 10);
          v34 = v33;

          if ((v34 & 1) == 0)
          {
LABEL_32:
            v56 = a1;
            v35 = v24[2];
            if (v35 > 1)
            {
              v36 = v24[8];
              v37 = v24[9];
              if ((v37 ^ v36) >= 0x4000)
              {
                v38 = v24[10];
                v39 = v24[11];
                v40 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SiSg_Tg5061_ss17FixedWidthIntegerPsE_5radixxSgqd___SitcSyRd__lufcADSRys5I15VGXEfU_Si_SsTG5SiTf1cn_n(v24[8], v24[9], v38, v39, 10);
                if ((v41 & 0x100) != 0)
                {

                  v8 = specialized _parseInteger<A, B>(ascii:radix:)(v36, v37, v38, v39, 10);
                  v43 = v42;

                  if ((v43 & 1) == 0)
                  {
                    goto LABEL_53;
                  }
                }

                else if ((v41 & 1) == 0)
                {
                  v8 = v40;
LABEL_53:
                  a3 = v57;
                  if (v35 == 2)
                  {

                    v32 = 0;
                    a1 = v56;
                    goto LABEL_40;
                  }

                  a1 = v56;
                  if (v24[2] < 3uLL)
                  {
                    __break(1u);
                  }

                  else
                  {
                    v46 = v24[12];
                    v47 = v24[13];
                    v48 = v24[14];
                    v49 = v24[15];

                    if ((v47 ^ v46) >= 0x4000)
                    {
                      v50 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SiSg_Tg5061_ss17FixedWidthIntegerPsE_5radixxSgqd___SitcSyRd__lufcADSRys5I15VGXEfU_Si_SsTG5SiTf1cn_n(v46, v47, v48, v49, 10);
                      if ((v51 & 0x100) != 0)
                      {
                        v50 = specialized _parseInteger<A, B>(ascii:radix:)(v46, v47, v48, v49, 10);
                      }

                      v52 = v50;
                      v53 = v51;

                      a3 = v57;
                      if (v53)
                      {
                        v32 = 0;
                      }

                      else
                      {
                        v32 = v52;
                      }

                      goto LABEL_40;
                    }
                  }

                  v32 = 0;
                  goto LABEL_39;
                }
              }
            }

            v8 = 0;
            v32 = 0;
            a1 = v56;
LABEL_39:
            a3 = v57;
            goto LABEL_40;
          }
        }

        else if ((v30 & 1) == 0)
        {
          v31 = v29;
          goto LABEL_32;
        }

        v8 = 0;
        v32 = 0;
        v31 = -1;
        goto LABEL_39;
      }
    }

    goto LABEL_28;
  }

LABEL_29:
  v32 = 0;
  v31 = -1;
LABEL_40:
  v45 = v8 > a2 || v32 >= a3;
  if (v8 < a2)
  {
    v45 = 0;
  }

  if (v31 > a1)
  {
    v45 = 1;
  }

  if (v31 >= a1)
  {
    return v45;
  }

  else
  {
    return 0;
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CFDictionaryRef()
{
  Hasher.init(_seed:)();
  swift_getWitnessTable();
  _CFObject.hash(into:)();
  return Hasher._finalize()();
}

{
  return protocol witness for Hashable._rawHashValue(seed:) in conformance CFDictionaryRef();
}

void _encodeFloat(uint64_t a1, const void *a2, float a3)
{
  v7 = *MEMORY[0x1E69E9840];
  valuePtr = a3;
  v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloat32Type, &valuePtr);
  addValueToTopContainerE(a1, a2, v5);
  CFRelease(v5);
}

uint64_t NSKeyValueGetImplicitObservanceRemovalInfo()
{
  v0 = _CFGetTSD();
  if (!v0)
  {
    v1 = malloc_default_zone();
    v0 = malloc_type_zone_calloc(v1, 1uLL, 0x58uLL, 0x2C221C3EuLL);
    _CFSetTSD();
  }

  return v0 + 32;
}

void _NSSetPointValueAndNotify(void *a1, const void *a2, double a3, double a4)
{
  v13[9] = *MEMORY[0x1E69E9840];
  Class = object_getClass(a1);
  if (class_getMethodImplementation(Class, sel__isKVOA) == NSKVOIsAutonotifying && (IndexedIvars = object_getIndexedIvars(Class)) != 0)
  {
    v10 = IndexedIvars;
    os_unfair_recursive_lock_lock_with_options();
    v11 = [CFDictionaryGetValue(v10[3] a2)];
    os_unfair_recursive_lock_unlock();
    if (v10[5])
    {
      [a1 willChangeValueForKey:v11];
      MethodImplementation = class_getMethodImplementation(*v10, a2);
      (MethodImplementation)(a1, a2, a3, a4);
      [a1 didChangeValueForKey:v11];
    }

    else
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = ___NSSetPointValueAndNotify_block_invoke;
      v13[3] = &unk_1E69F46E0;
      v13[5] = v10;
      v13[6] = a2;
      v13[4] = a1;
      *&v13[7] = a3;
      *&v13[8] = a4;
      [a1 _changeValueForKey:v11 key:0 key:0 usingBlock:v13];
    }
  }

  else
  {

    [a1 a2];
  }
}

id CopyBasicOperatorAddOptions(void *a1, void *a2)
{
  v2 = a2;
  if (a2)
  {
    v4 = [a2 rangeOfString:@"c" options:1];
    v5 = [v2 rangeOfString:@"d" options:1];
    v6 = 2;
    if (v4 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = 3;
    }

    if (v5 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = v4 != 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v7 = v6;
    }

    if ([v2 rangeOfString:@"n" options:1] != 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 |= 4uLL;
    }

    if ([v2 rangeOfString:@"l" options:1] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v2 = v7;
    }

    else
    {
      v2 = (v7 | 8);
    }
  }

  v8 = [a1 operatorType];
  v9 = [a1 modifier];

  return [NSPredicateOperator _newOperatorWithType:v8 modifier:v9 options:v2];
}

void *__cdecl NSReallocateCollectable(void *ptr, NSUInteger size, NSUInteger options)
{
  if (ptr)
  {
    v5 = malloc_zone_from_ptr(ptr);

    return malloc_type_zone_realloc(v5, ptr, size, 0xE08AA422uLL);
  }

  else
  {

    return NSAllocateCollectable(size, options);
  }
}

void specialized static Double._forceBridgeFromObjectiveC(_:result:)(unint64_t *a1, uint64_t a2)
{
  v3 = a1;
  [a1 doubleValue];
  if ((~v4 & 0x7FF0000000000000) != 0 || (v4 & 0xFFFFFFFFFFFFFLL) == 0)
  {
    specialized Double.init(exactly:)(v3);
    *a2 = v7;
    *(a2 + 8) = v6 & 1;
    if ((v6 & 1) == 0)
    {
      return;
    }

    _StringGuts.grow(_:)(25);

    v13 = 0xD000000000000011;
    v14 = 0x80000001814811D0;
    type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSNumber);
    v8 = _typeName(_:qualified:)();
    a2 = v9;
    MEMORY[0x1865CB0E0](v8);

    MEMORY[0x1865CB0E0](544175136, 0xE400000000000000);
    v3 = &v13;
    MEMORY[0x1865CB0E0](0x656C62756F44, 0xE600000000000000);
    LODWORD(v12) = 0;
    v11 = 534;
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  [v3 doubleValue];
  *a2 = v10;
  *(a2 + 8) = 0;
}

uint64_t _NSSetValueWithMethod(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v14[1] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v7 = [a1 methodSignatureForSelector:a2];
    v8 = [v7 frameLength];
    v9 = MEMORY[0x1EEE9AC00](v8);
    v11 = v14 - v10;
    [a3 getValue:{v14 - v10, v9}];
    v12 = [MEMORY[0x1E695DF50] invocationWithMethodSignature:v7];
    [v12 setTarget:a1];
    [v12 setSelector:a2];
    [v12 setArgument:v11 atIndex:2];
    return [v12 invoke];
  }

  else
  {

    return [a1 setNilValueForKey:a4];
  }
}

uint64_t _NSSetPointValueForKeyWithMethod(void *a1, int a2, void *a3, uint64_t a4, Method m)
{
  if (a3)
  {
    Implementation = method_getImplementation(m);
    Name = method_getName(m);
    [a3 pointValue];

    return (Implementation)(a1, Name);
  }

  else
  {

    return [a1 setNilValueForKey:a4];
  }
}

uint64_t specialized _NSSwiftProcessInfo.physicalMemory.getter()
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  v2 = 8;
  v1 = xmmword_181246870;
  if (sysctlbyname(&v1, v3, &v2, 0, 0))
  {
    return 0;
  }

  else
  {
    return v3[0];
  }
}

unint64_t String._pathComponents.getter(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = a2;
  v4 = a1;
  if ((specialized Collection.first.getter(a1, a2) & 0x1FF) == 0x2F)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v7 = *(v5 + 16);
    v6 = *(v5 + 24);
    if (v7 >= v6 >> 1)
    {
      v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1, v5);
    }

    *(v5 + 16) = v7 + 1;
    v8 = v5 + 16 * v7;
    *(v8 + 32) = 47;
    *(v8 + 40) = 0xE100000000000000;
    v9 = specialized Collection.firstIndex(where:)(v4, v3);
    if (v10)
    {
      v11 = v2 << 16;
      if ((v3 & 0x1000000000000000) == 0 || (v4 & 0x800000000000000) != 0)
      {
        v12 = v11 | 7;
      }

      else
      {
        v12 = v11 | 0xB;
      }
    }

    else
    {
      v12 = v9;
    }
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
    v12 = 15;
  }

  v13 = 4 * v2;
  v14 = v12 >> 14;
  v48 = v2;
  if (v12 >> 14 == 4 * v2)
  {
LABEL_17:
    if ((v3 & 0x1000000000000000) != 0)
    {
      goto LABEL_72;
    }

    if (v48 < 2)
    {
      return v5;
    }

LABEL_19:
    if ((specialized BidirectionalCollection.last.getter(v4, v3) & 0x1FF) == 0x2F)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 16) + 1, 1, v5);
      }

      v16 = *(v5 + 16);
      v15 = *(v5 + 24);
      if (v16 >= v15 >> 1)
      {
        v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v5);
      }

      *(v5 + 16) = v16 + 1;
      v17 = v5 + 16 * v16;
      *(v17 + 32) = 47;
      *(v17 + 40) = 0xE100000000000000;
    }

    return v5;
  }

  v19 = 7;
  if (((v3 >> 60) & ((v4 & 0x800000000000000) == 0)) != 0)
  {
    v19 = 11;
  }

  v53 = v19 | (v2 << 16);
  v50 = v4;
  v51 = v3;
  v49 = 4 * v2;
  while (1)
  {
    v20 = specialized Collection.subscript.getter(v12, v4, v3);
    v24 = specialized Collection<>.firstIndex(of:)(47, v20, v21, v22, v23);
    if (v25)
    {
      v26 = v53;
    }

    else
    {
      v26 = v24;
    }

    if (v14 != v26 >> 14)
    {
      if (v26 >> 14 < v14)
      {
        goto LABEL_71;
      }

      v27 = String.subscript.getter();
      v28 = MEMORY[0x1865CAE80](v27);
      v30 = v29;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 16) + 1, 1, v5);
      }

      v32 = *(v5 + 16);
      v31 = *(v5 + 24);
      if (v32 >= v31 >> 1)
      {
        v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1, v5);
      }

      *(v5 + 16) = v32 + 1;
      v33 = v5 + 16 * v32;
      *(v33 + 32) = v28;
      *(v33 + 40) = v30;
    }

    v34 = specialized Collection.subscript.getter(v26, v4, v3);
    v37 = v34 >> 14;
    v39 = v38 >> 14;
    if (v34 >> 14 != v38 >> 14)
    {
      break;
    }

    v12 = v53;
LABEL_30:
    v14 = v12 >> 14;
    if (v12 >> 14 == v13)
    {
      goto LABEL_17;
    }
  }

  v12 = v34;
  v40 = v35;
  v41 = v36;
  v52 = v5;
  v42 = (v35 >> 59) & 1;
  if ((v36 & 0x1000000000000000) == 0)
  {
    LOBYTE(v42) = 1;
  }

  v4 = 4 << v42;
  v54 = v36 & 0xFFFFFFFFFFFFFFLL;
  v43 = (v36 & 0xFFFFFFFFFFFFFFFLL) + 32;
  if ((v36 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(v36) & 0xF;
  }

  else
  {
    v5 = v35 & 0xFFFFFFFFFFFFLL;
  }

  while (1)
  {
    v3 = v12 & 0xC;
    v44 = v12;
    if (v3 == v4)
    {
      v44 = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, v40, v41);
    }

    if (v44 >> 14 < v37 || v44 >> 14 >= v39)
    {
      break;
    }

    if ((v41 & 0x1000000000000000) != 0)
    {
      v47 = String.UTF8View._foreignSubscript(position:)();
    }

    else
    {
      v45 = v44 >> 16;
      if ((v41 & 0x2000000000000000) != 0)
      {
        v55[0] = v40;
        v55[1] = v54;
        v47 = *(v55 + v45);
      }

      else
      {
        v46 = v43;
        if ((v40 & 0x1000000000000000) == 0)
        {
          v46 = _StringObject.sharedUTF8.getter();
        }

        v47 = *(v46 + v45);
      }
    }

    if (v47 != 47)
    {
      goto LABEL_68;
    }

    if (v3 == v4)
    {
      v12 = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, v40, v41);
      if ((v41 & 0x1000000000000000) != 0)
      {
        goto LABEL_62;
      }

LABEL_47:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      if (v39 == v12 >> 14)
      {
        goto LABEL_67;
      }
    }

    else
    {
      if ((v41 & 0x1000000000000000) == 0)
      {
        goto LABEL_47;
      }

LABEL_62:
      if (v5 <= v12 >> 16)
      {
        goto LABEL_70;
      }

      v12 = String.UTF8View._foreignIndex(after:)();
      if (v39 == v12 >> 14)
      {
LABEL_67:
        v12 = v53;
LABEL_68:
        v3 = v51;
        v5 = v52;
        v13 = v49;
        v4 = v50;
        goto LABEL_30;
      }
    }
  }

  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  if (String.UTF8View._foreignCount()() >= 2)
  {
    goto LABEL_19;
  }

  return v5;
}

unint64_t specialized Collection.firstIndex(where:)(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  v5 = 4 * v2;
  v6 = (a1 >> 59) & 1;
  if ((a2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v6) = 1;
  }

  v7 = 4 << v6;
  v8 = a2 & 0xFFFFFFFFFFFFFFLL;
  v9 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
  result = 15;
  while (1)
  {
    v11 = result & 0xC;
    v12 = result;
    if (v11 == v7)
    {
      v16 = result;
      v12 = _StringGuts._slowEnsureMatchingEncoding(_:)(result, a1, a2);
      result = v16;
    }

    v13 = v12 >> 16;
    if (v12 >> 16 >= v2)
    {
      break;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      v17 = result;
      v15 = String.UTF8View._foreignSubscript(position:)();
      result = v17;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v19[0] = a1;
        v19[1] = v8;
        v14 = v19;
      }

      else
      {
        v14 = v9;
        if ((a1 & 0x1000000000000000) == 0)
        {
          v18 = result;
          v14 = _StringObject.sharedUTF8.getter();
          result = v18;
        }
      }

      v15 = *(v14 + v13);
    }

    if (v15 != 47)
    {
      return result;
    }

    if (v11 == v7)
    {
      result = _StringGuts._slowEnsureMatchingEncoding(_:)(result, a1, a2);
      if ((a2 & 0x1000000000000000) == 0)
      {
        goto LABEL_8;
      }

LABEL_21:
      if (v2 <= result >> 16)
      {
        goto LABEL_31;
      }

      result = String.UTF8View._foreignIndex(after:)();
      if (v5 == result >> 14)
      {
        return 0;
      }
    }

    else
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        goto LABEL_21;
      }

LABEL_8:
      result = (result & 0xFFFFFFFFFFFF0000) + 65540;
      if (v5 == result >> 14)
      {
        return 0;
      }
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  v5 = 4 * v2;
  v6 = (a1 >> 59) & 1;
  if ((a2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v6) = 1;
  }

  v7 = 4 << v6;
  v8 = a2 & 0xFFFFFFFFFFFFFFLL;
  v9 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
  result = 15;
  while (1)
  {
    v11 = result & 0xC;
    v12 = result;
    if (v11 == v7)
    {
      v16 = result;
      v12 = _StringGuts._slowEnsureMatchingEncoding(_:)(result, a1, a2);
      result = v16;
    }

    v13 = v12 >> 16;
    if (v12 >> 16 >= v2)
    {
      break;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      v17 = result;
      v15 = String.UTF8View._foreignSubscript(position:)();
      result = v17;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v19[0] = a1;
        v19[1] = v8;
        v14 = v19;
      }

      else
      {
        v14 = v9;
        if ((a1 & 0x1000000000000000) == 0)
        {
          v18 = result;
          v14 = _StringObject.sharedUTF8.getter();
          result = v18;
        }
      }

      v15 = *(v14 + v13);
    }

    if (v15 == 58)
    {
      return result;
    }

    if (v11 == v7)
    {
      result = _StringGuts._slowEnsureMatchingEncoding(_:)(result, a1, a2);
      if ((a2 & 0x1000000000000000) == 0)
      {
        goto LABEL_8;
      }

LABEL_21:
      if (v2 <= result >> 16)
      {
        goto LABEL_31;
      }

      result = String.UTF8View._foreignIndex(after:)();
      if (v5 == result >> 14)
      {
        return 0;
      }
    }

    else
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        goto LABEL_21;
      }

LABEL_8:
      result = (result & 0xFFFFFFFFFFFF0000) + 65540;
      if (v5 == result >> 14)
      {
        return 0;
      }
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

unint64_t specialized Collection.subscript.getter(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 < result >> 14)
  {
    __break(1u);
  }

  else
  {
    v4 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v4 = 11;
    }

    return _StringGuts.validateSubscalarRange(_:)(result, v4 | (v3 << 16), a2, a3);
  }

  return result;
}

unint64_t specialized Collection<>.firstIndex(of:)(char a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5)
{
  v5 = a3 >> 14;
  v6 = a2 >> 14;
  if (a2 >> 14 == a3 >> 14)
  {
    return 0;
  }

  result = a2;
  v11 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v11) = 1;
  }

  v12 = 4 << v11;
  v22 = a5 & 0xFFFFFFFFFFFFFFLL;
  v13 = (a5 & 0xFFFFFFFFFFFFFFFLL) + 32;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v14 = HIBYTE(a5) & 0xF;
  }

  else
  {
    v14 = a4 & 0xFFFFFFFFFFFFLL;
  }

  while (1)
  {
    v15 = result & 0xC;
    v16 = result;
    if (v15 == v12)
    {
      v19 = result;
      v16 = _StringGuts._slowEnsureMatchingEncoding(_:)(result, a4, a5);
      result = v19;
    }

    if (v16 >> 14 < v6 || v16 >> 14 >= v5)
    {
      break;
    }

    if ((a5 & 0x1000000000000000) != 0)
    {
      v20 = result;
      v18 = String.UTF8View._foreignSubscript(position:)();
      result = v20;
    }

    else if ((a5 & 0x2000000000000000) != 0)
    {
      v23[0] = a4;
      v23[1] = v22;
      v18 = *(v23 + (v16 >> 16));
    }

    else
    {
      v17 = v13;
      if ((a4 & 0x1000000000000000) == 0)
      {
        v21 = result;
        v17 = _StringObject.sharedUTF8.getter();
        result = v21;
      }

      v18 = *(v17 + (v16 >> 16));
    }

    if (v18 == a1)
    {
      return result;
    }

    if (v15 == v12)
    {
      result = _StringGuts._slowEnsureMatchingEncoding(_:)(result, a4, a5);
      if ((a5 & 0x1000000000000000) == 0)
      {
        goto LABEL_8;
      }

LABEL_22:
      if (v14 <= result >> 16)
      {
        goto LABEL_31;
      }

      result = String.UTF8View._foreignIndex(after:)();
      if (v5 == result >> 14)
      {
        return 0;
      }
    }

    else
    {
      if ((a5 & 0x1000000000000000) != 0)
      {
        goto LABEL_22;
      }

LABEL_8:
      result = (result & 0xFFFFFFFFFFFF0000) + 65540;
      if (v5 == result >> 14)
      {
        return 0;
      }
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

unint64_t _StringGuts.validateSubscalarRange(_:)(unint64_t result, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = (a3 >> 59) & 1;
  if ((a4 & 0x1000000000000000) == 0)
  {
    LOBYTE(v4) = 1;
  }

  v5 = 4 << v4;
  if ((a2 & 0xC) == 4 << v4)
  {
    v7 = result;
    v8 = a3;
    v9 = a4;
    v10 = _StringGuts._slowEnsureMatchingEncoding(_:)(a2, a3, a4);
    a3 = v8;
    a4 = v9;
    a2 = v10;
    result = v7;
  }

  if ((result & 0xC) == v5)
  {
    v11 = a2;
    v12 = a3;
    v13 = a4;
    result = _StringGuts._slowEnsureMatchingEncoding(_:)(result, a3, a4);
    a3 = v12;
    a4 = v13;
    a2 = v11;
  }

  v6 = a3 & 0xFFFFFFFFFFFFLL;
  if ((a4 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a4) & 0xF;
  }

  if (a2 >> 14 > 4 * v6 || a2 >> 14 < result >> 14)
  {
    __break(1u);
  }

  return result;
}

uint64_t _NSSetDoubleValueForKeyWithMethod(void *a1, int a2, void *a3, uint64_t a4, Method m)
{
  if (a3)
  {
    Implementation = method_getImplementation(m);
    Name = method_getName(m);
    [a3 doubleValue];

    return (Implementation)(a1, Name);
  }

  else
  {

    return [a1 setNilValueForKey:a4];
  }
}

double static FormatStyle<>.dateTime.getter@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for _LocaleAutoupdating();
  inited = swift_initStaticObject();
  v3 = lazy protocol witness table accessor for type _LocaleAutoupdating and conformance _LocaleAutoupdating(&lazy protocol witness table cache variable for type _LocaleAutoupdating and conformance _LocaleAutoupdating, type metadata accessor for _LocaleAutoupdating);
  type metadata accessor for _CalendarAutoupdating();
  v4 = swift_initStaticObject();
  v5 = lazy protocol witness table accessor for type _LocaleAutoupdating and conformance _LocaleAutoupdating(&lazy protocol witness table cache variable for type _CalendarAutoupdating and conformance _CalendarAutoupdating, type metadata accessor for _CalendarAutoupdating);
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  type metadata accessor for _TimeZoneAutoupdating();
  v6 = swift_initStaticObject();
  v7 = lazy protocol witness table accessor for type _LocaleAutoupdating and conformance _LocaleAutoupdating(&lazy protocol witness table cache variable for type _TimeZoneAutoupdating and conformance _TimeZoneAutoupdating, type metadata accessor for _TimeZoneAutoupdating);
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *&result = 0x3000000000000;
  *(a1 + 32) = xmmword_181223240;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 1;
  *(a1 + 72) = inited;
  *(a1 + 80) = v3;
  *(a1 + 88) = v6;
  *(a1 + 96) = v7;
  *(a1 + 104) = v4;
  *(a1 + 112) = v5;
  *(a1 + 120) = 256;
  return result;
}

double IndexPath.appending(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v8 = *v2;
  v9 = *(v2 + 16);
  outlined copy of IndexPath.Storage(*v2, *(v2 + 1), v9);
  IndexPath.Storage.append(contentsOf:)(v4, v5, v6);
  result = *&v8;
  *a2 = v8;
  *(a2 + 16) = v9;
  return result;
}

uint64_t outlined copy of IndexPath.Storage(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 2)
  {
  }

  return result;
}

uint64_t IndexPath.Storage.append(contentsOf:)(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  v4 = result;
  v5 = *v3;
  if (*(v3 + 16) <= 1u)
  {
    if (*(v3 + 16))
    {
      v8 = *(v3 + 8);
      if (a3 <= 1u)
      {
        if (a3)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
          result = swift_allocObject();
          *(result + 16) = xmmword_18121D6C0;
          *(result + 32) = v5;
          *(result + 40) = v8;
          *(result + 48) = v4;
          *(result + 56) = a2;
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
          result = swift_allocObject();
          *(result + 16) = xmmword_18121D6B0;
          *(result + 32) = v5;
          *(result + 40) = v8;
          *(result + 48) = v4;
        }

        goto LABEL_32;
      }

      if (a3 != 2)
      {
        return result;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_181215ED0;
      *(v9 + 32) = v5;
      *(v9 + 40) = v8;
    }

    else
    {
      if (a3 <= 1u)
      {
        if (!a3)
        {
          *(v3 + 8) = result;
LABEL_34:
          v14 = 1;
          goto LABEL_35;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
        result = swift_allocObject();
        *(result + 16) = xmmword_18121D6B0;
        *(result + 32) = v5;
        *(result + 40) = v4;
        *(result + 48) = a2;
LABEL_32:
        *v3 = result;
        *(v3 + 8) = 0;
        v14 = 2;
LABEL_35:
        *(v3 + 16) = v14;
        return result;
      }

      if (a3 != 2)
      {
        return result;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_181218E20;
      *(v9 + 32) = v5;
    }

    v15 = v9;
LABEL_23:

    result = specialized Array.append<A>(contentsOf:)(v10);
    *v3 = v15;
    *(v3 + 8) = 0;
    *(v3 + 16) = 2;
    return result;
  }

  if (*(v3 + 16) == 2)
  {
    if (a3 > 1u)
    {
      if (a3 != 2)
      {
        return result;
      }

      v15 = *v3;
      goto LABEL_23;
    }

    v6 = v3;
    if (a3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_181215ED0;
      *(inited + 32) = v4;
      *(inited + 40) = a2;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_181218E20;
      *(inited + 32) = v4;
    }

    result = specialized Array.append<A>(contentsOf:)(inited);
    *v6 = v5;
    *(v6 + 8) = 0;
    *(v6 + 16) = 2;
  }

  else
  {
    if (a3 <= 1u)
    {
      if (!a3)
      {
        *v3 = result;
        *(v3 + 8) = a2;
        *(v3 + 16) = 0;
        return result;
      }

      *v3 = result;
      *(v3 + 8) = a2;
      goto LABEL_34;
    }

    if (a3 == 2)
    {
      *v3 = result;
      *(v3 + 8) = a2;
      *(v3 + 16) = 2;
    }
  }

  return result;
}

uint64_t static IndexSet._unconditionallyBridgeFromObjectiveC(_:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation18_MutablePairHandle33_2D7761BAEB66DCEF0A109CF42C1440A7LLCySo10NSIndexSetCSo014NSMutableIndexM0CGMd);
    v4 = swift_allocObject();
    v5 = a1;
    [v5 copy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();

    type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSIndexSet);
    result = swift_dynamicCast();
    *(v4 + 16) = v8;
    *(v4 + 24) = 0;
  }

  else
  {
    v7 = [objc_allocWithZone(NSIndexSet) init];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation18_MutablePairHandle33_2D7761BAEB66DCEF0A109CF42C1440A7LLCySo10NSIndexSetCSo014NSMutableIndexM0CGMd);
    result = swift_allocObject();
    v4 = result;
    *(result + 16) = v7;
    *(result + 24) = 0;
  }

  *a2 = v4;
  return result;
}

char *IndexSet.formIndex(after:)(char **a1)
{
  v2 = a1;
  v3 = __OFADD__(*a1, 1);
  result = *a1 + 1;
  if (v3)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (result != v2[2])
  {
LABEL_15:
    *v2 = result;
    return result;
  }

  v5 = v2[3];
  v6 = v5 + 1;
  if (__OFADD__(v5, 1))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v6 == v2[4])
  {
    goto LABEL_15;
  }

  v7 = *v1;
  v8 = v2;
  v2[3] = v6;
  v9 = *(v7 + 24);
  result = [*(v7 + 16) rangeAtIndex_];
  v11 = &result[v10];
  LOBYTE(v2) = __OFADD__(result, v10);
  if ((v9 & 1) == 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v2 = v8;
  if (v11 >= result)
  {
LABEL_14:
    v2[1] = result;
    v2[2] = v11;
    goto LABEL_15;
  }

  __break(1u);
LABEL_12:
  if (v2)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v2 = v8;
  if (v11 >= result)
  {
    goto LABEL_14;
  }

LABEL_20:
  __break(1u);
  return result;
}

Swift::String __swiftcall Date.FormatStyle.format(_:)(Foundation::Date a1)
{
  v2 = v1[5];
  v3 = v1[3];
  v27 = v1[4];
  v28 = v2;
  v4 = v1[5];
  v29[0] = v1[6];
  *(v29 + 10) = *(v1 + 106);
  v5 = v1[1];
  v24[0] = *v1;
  v24[1] = v5;
  v6 = v1[3];
  v8 = *v1;
  v7 = v1[1];
  v25 = v1[2];
  v26 = v6;
  v21 = v27;
  v22 = v4;
  v23[0] = v1[6];
  *(v23 + 10) = *(v1 + 106);
  v17 = v8;
  v18 = v7;
  v19 = v25;
  v20 = v3;
  outlined init with copy of Date.FormatStyle(v24, v16);
  ICUDateFormatter.DateFormatInfo.init(_:)(&v17, v16);
  v9 = specialized static ICUDateFormatter.cachedFormatter(for:)(v16);
  v19 = v16[2];
  v20 = v16[3];
  v21 = v16[4];
  v22 = v16[5];
  v17 = v16[0];
  v18 = v16[1];
  outlined destroy of ICUDateFormatter.DateFormatInfo(&v17);
  if (v9 && (v10 = specialized _withResizingUCharBuffer(initialSize:_:)(32), v12 = v11, , v12))
  {
    v13 = v12;
    v14 = v10;
  }

  else
  {
    v14 = 0;
    v13 = 0xE000000000000000;
  }

  result._object = v13;
  result._countAndFlagsBits = v14;
  return result;
}

void static IndexPath._unconditionallyBridgeFromObjectiveC(_:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (!a1)
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    v10 = 3;
LABEL_11:
    *(a2 + 16) = v10;
    return;
  }

  v3 = a1;
  v4 = [v3 length];
  switch(v4)
  {
    case 2uLL:
      v12 = [v3 indexAtPosition_];
      v13 = [v3 indexAtPosition_];

      *a2 = v12;
      *(a2 + 8) = v13;
      *(a2 + 16) = 1;
      return;
    case 1uLL:
      v11 = [v3 indexAtPosition_];

      *a2 = v11;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      return;
    case 0uLL:
      v5 = sub_180928C90(MEMORY[0x1E69E7CC0]);
      v7 = v6;
      v9 = v8;

      *a2 = v5;
      *(a2 + 8) = v7;
      *(a2 + 16) = v9;
      return;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    v14 = v4;
    v15 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v15 + 16) = v14;
    [v3 getIndexes:v15 + 32 range:{0, v14}];
    *(v15 + 16) = v14;

    *a2 = v15;
    *(a2 + 8) = 0;
    v10 = 2;
    goto LABEL_11;
  }

  __break(1u);
}

uint64_t sub_180928C90(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 == 2 || v1 == 1)
  {
    v2 = *(a1 + 32);
  }

  else if (v1)
  {
    return a1;
  }

  else
  {

    return 0;
  }

  return v2;
}

uint64_t URL.hash(into:)()
{
  v1 = *(v0 + 8);
  ObjectType = swift_getObjectType();
  (*(v1 + 104))(ObjectType, v1);
  String.hash(into:)();
}

id _NSGetFloatValueWithMethod(uint64_t a1, uint64_t a2, objc_method *a3)
{
  v5 = objc_allocWithZone(NSNumber);
  Implementation = method_getImplementation(a3);
  Name = method_getName(a3);
  (Implementation)(a1, Name);
  v8 = [v5 initWithFloat:?];

  return v8;
}

Swift::tuple_inserted_Bool_memberAfterInsert_Int __swiftcall IndexSet.insert(_:)(Swift::Int a1)
{
  if (*(*v1 + 24) != 1)
  {
    v4 = *(*v1 + 16);
LABEL_6:
    v5 = v4;
    [v5 mutableCopy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSMutableIndexSet);
    swift_dynamicCast();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation18_MutablePairHandle33_2D7761BAEB66DCEF0A109CF42C1440A7LLCySo10NSIndexSetCSo014NSMutableIndexM0CGMd);
    v6 = swift_allocObject();
    *(v6 + 16) = v10;
    *(v6 + 24) = 1;
    v7 = v10;

    *v1 = v6;
    [v7 addIndex_];

    goto LABEL_7;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(*v1 + 16);
  if ((*(*v1 + 24) & 1) == 0 || (isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_6;
  }

  [v4 addIndex_];
LABEL_7:
  v8 = 1;
  v9 = a1;
  result.memberAfterInsert = v9;
  result.inserted = v8;
  return result;
}

void __swiftcall IndexSet._bridgeToObjectiveC()(NSIndexSet *__return_ptr retstr)
{
  [*(*v1 + 16) copy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSIndexSet);
  swift_dynamicCast();
}

void _NSSetObjectSetStrongValueForKeyInIvar(uint64_t a1, int a2, void *a3, int a4, Ivar v)
{
  v6 = (a1 + ivar_getOffset(v));

  objc_storeStrong(v6, a3);
}

uint64_t Data.hash(into:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      return MEMORY[0x1865CD060](0);
    }

    v7 = *(a2 + 16);
    v6 = *(a2 + 24);
    if (!__OFSUB__(v6, v7))
    {
      MEMORY[0x1865CD060](v6 - v7);
      v8 = *(a2 + 16);
      v9 = v8 + 80;
      if (__OFADD__(v8, 80))
      {
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
      }

      if (*(a2 + 24) < v9)
      {
        v9 = *(a2 + 24);
      }

      if (v9 < v8)
      {
        goto LABEL_28;
      }

      if (*((a3 & 0x3FFFFFFFFFFFFFFFLL) + 0x10))
      {
        if (__OFSUB__(v8, *((a3 & 0x3FFFFFFFFFFFFFFFLL) + 0x28)))
        {
          goto LABEL_30;
        }

        if (!__OFSUB__(v9, v8))
        {
          return Hasher.combine(bytes:)();
        }
      }

      else if (!__OFSUB__(v9, v8))
      {
        return Hasher.combine(bytes:)();
      }

      __break(1u);
    }

    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v5)
  {
    if (!__OFSUB__(HIDWORD(a2), a2))
    {
      MEMORY[0x1865CD060](HIDWORD(a2) - a2);
      if (a2 >> 32 >= a2)
      {
        if (!*((a3 & 0x3FFFFFFFFFFFFFFFLL) + 0x10) || !__OFSUB__(a2, *((a3 & 0x3FFFFFFFFFFFFFFFLL) + 0x28)))
        {
          return Hasher.combine(bytes:)();
        }

        goto LABEL_29;
      }

      goto LABEL_27;
    }

    goto LABEL_25;
  }

  MEMORY[0x1865CD060](BYTE6(a3));
  return Hasher.combine(bytes:)();
}

void Data.InlineSlice.append(contentsOf:)(const void *a1, uint64_t a2)
{
  v3 = v2;
  Data.InlineSlice.ensureUniqueReference()();
  v6 = *(v2 + 8);
  v7 = *(v6 + 24);
  v8 = *(v6 + 40);
  v9 = v7 + v8;
  if (__OFADD__(v7, v8))
  {
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v10 = *v3;
  v11 = v3[1];
  if (v11 < *v3 || v9 < v11)
  {
    goto LABEL_15;
  }

  if (a1)
  {
    v13 = a2 - a1;
  }

  else
  {
    v13 = 0;
  }

  __DataStorage.replaceBytes(in:with:length:)(v11, v9, a1, v13);

  v14 = v11 + v13;
  if (__OFADD__(v11, v13))
  {
    goto LABEL_16;
  }

  if (v14 < 0xFFFFFFFF80000000)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v14 > 0x7FFFFFFF)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v10 <= v14)
  {
    *v3 = v10;
    v3[1] = v14;
    return;
  }

LABEL_19:
  __break(1u);
}

void IndexSet.insert(integersIn:)(uint64_t a1, uint64_t a2, SEL *a3)
{
  if (*(*v3 + 24) != 1)
  {
    v8 = *(*v3 + 16);
LABEL_9:
    v10 = v8;
    [v10 mutableCopy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSMutableIndexSet);
    swift_dynamicCast();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation18_MutablePairHandle33_2D7761BAEB66DCEF0A109CF42C1440A7LLCySo10NSIndexSetCSo014NSMutableIndexM0CGMd);
    v11 = swift_allocObject();
    *(v11 + 16) = v14;
    *(v11 + 24) = 1;
    v12 = v14;

    *v3 = v11;
    if (!__OFSUB__(a2, a1))
    {
LABEL_10:
      [v12 *a3];

      return;
    }

LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(*v3 + 16);
  if ((*(*v3 + 24) & 1) == 0)
  {
    goto LABEL_9;
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = v8;
    [v10 mutableCopy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSMutableIndexSet);
    swift_dynamicCast();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation18_MutablePairHandle33_2D7761BAEB66DCEF0A109CF42C1440A7LLCySo10NSIndexSetCSo014NSMutableIndexM0CGMd);
    v13 = swift_allocObject();
    *(v13 + 16) = v14;
    *(v13 + 24) = 1;
    v12 = v14;

    *v3 = v13;
    if (!__OFSUB__(a2, a1))
    {
      goto LABEL_10;
    }

    __break(1u);
    goto LABEL_14;
  }

  if (__OFSUB__(a2, a1))
  {
LABEL_15:
    __break(1u);
    return;
  }

  v9 = *a3;

  [v8 v9];
}

void Data.append(_:)(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (v2)
    {
      if (a1 == a1 >> 32)
      {
        return;
      }
    }

    else if ((a2 & 0xFF000000000000) == 0)
    {
      return;
    }

LABEL_9:
    specialized Data._Representation.withUnsafeBytes<A>(_:)(a1, a2);
    return;
  }

  if (v2 == 2 && *(a1 + 16) != *(a1 + 24))
  {
    goto LABEL_9;
  }
}

id IndexSet.first.getter(SEL *a1)
{
  result = [*(*v1 + 16) *a1];
  if (result == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  return result;
}

void IndexSet.insert<A>(integersIn:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd);
  lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
  dispatch thunk of RangeExpression.relative<A>(to:)();
  IndexSet.insert(integersIn:)(v0, v1);
}

unint64_t lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>()
{
  result = lazy protocol witness table cache variable for type Range<Int> and conformance <> Range<A>;
  if (!lazy protocol witness table cache variable for type Range<Int> and conformance <> Range<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSnySiGMd);
    lazy protocol witness table accessor for type Int and conformance Int();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Range<Int> and conformance <> Range<A>);
  }

  return result;
}

void *NSKeyValueWillChangeBySetMutation@<X0>(void *result@<X0>, uint64_t a2@<X1>, int a3@<W2>, char a4@<W3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t *a7@<X8>)
{
  v10 = result;
  if (a3)
  {
    v13 = 0;
    v14 = *a5;
    if (*a5 <= 2)
    {
      if (v14 != 1)
      {
        v15 = 0;
        v16 = 0;
        if (v14 == 2)
        {
          if ((a4 & 2) != 0)
          {
            v13 = [result valueForKey:a2];
            v17 = [*(a5 + 8) isSubsetOfSet:v13];
            v18 = *(a5 + 8);
            if (v17)
            {
              result = [v18 copy];
              v15 = result;
LABEL_33:
              v13 = 0;
              goto LABEL_34;
            }

            result = [v18 mutableCopy];
            v15 = result;
            if (v13)
            {
              result = [result intersectSet:v13];
              goto LABEL_33;
            }

LABEL_34:
            v16 = 3;
            goto LABEL_44;
          }

LABEL_21:
          v13 = 0;
          v15 = 0;
          goto LABEL_34;
        }

        goto LABEL_44;
      }

      if (a4)
      {
        v15 = [result valueForKey:a2];
        v21 = [*(a5 + 8) intersectsSet:v15];
        v22 = *(a5 + 8);
        if (v21)
        {
          result = [v22 mutableCopy];
          v13 = result;
          if (!v15)
          {
LABEL_43:
            v16 = 2;
            goto LABEL_44;
          }

          result = [result minusSet:v15];
        }

        else
        {
          result = [v22 copy];
          v13 = result;
        }
      }

      else
      {
        v13 = 0;
      }

      v15 = 0;
      goto LABEL_43;
    }

    if (v14 == 3)
    {
      if ((a4 & 2) != 0)
      {
        result = [objc_msgSend(result valueForKey:{a2), "mutableCopy"}];
        v15 = result;
        if (*(a5 + 8))
        {
          result = [result minusSet:?];
        }

        goto LABEL_33;
      }

      goto LABEL_21;
    }

    v15 = 0;
    v16 = 0;
    if (v14 != 4)
    {
LABEL_44:
      *a7 = v16;
      a7[1] = v15;
      a7[4] = 0;
      v19 = 1;
      a7[2] = v13;
      goto LABEL_45;
    }

    if ((a4 & 2) != 0)
    {
      v20 = [result valueForKey:a2];
      result = [v20 mutableCopy];
      v15 = result;
      if (*(a5 + 8))
      {
        result = [result minusSet:?];
      }

      if ((a4 & 1) == 0)
      {
        v13 = 0;
        goto LABEL_40;
      }

      if (v20)
      {
        v13 = [*(a5 + 8) mutableCopy];
LABEL_39:
        result = [v13 minusSet:v20];
        goto LABEL_40;
      }
    }

    else
    {
      v13 = 0;
      if ((a4 & 1) == 0)
      {
        v16 = 4;
        v15 = 0;
        goto LABEL_44;
      }

      v15 = 0;
    }

    v20 = [v10 valueForKey:a2];
    result = [*(a5 + 8) mutableCopy];
    v13 = result;
    if (v20)
    {
      goto LABEL_39;
    }

LABEL_40:
    v16 = 4;
    goto LABEL_44;
  }

  if ((a4 & 2) != 0)
  {
    result = [result valueForKeyPath:a2];
    if (!result)
    {
      result = [MEMORY[0x1E695DFB0] null];
    }
  }

  else
  {
    result = 0;
  }

  v19 = 0;
  *a7 = 1;
  a7[1] = result;
  a7[4] = 0;
  a7[2] = 0;
LABEL_45:
  a7[3] = 0;
  *a6 = v19;
  return result;
}

void *NSKeyValueDidChangeBySetMutation@<X0>(void *result@<X0>, uint64_t a2@<X1>, void *a3@<X2>, int a4@<W3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v10 = *MEMORY[0x1E69E9840];
  v7 = *(a6 + 16);
  if (a4)
  {
    *a7 = *a6;
    *(a7 + 16) = v7;
    *(a7 + 32) = *(a6 + 32);
  }

  else
  {
    v8[0] = *a6;
    v8[1] = v7;
    v9 = *(a6 + 32);
    return NSKeyValueDidChangeBySetting(result, a2, a3, a5, v8, a7);
  }

  return result;
}

void *_ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SS_Tg5(void *(*a1)(uint64_t *__return_ptr, char *, void *), uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{
  if ((a6 & 0x1000000000000000) != 0)
  {
    return 0;
  }

  if ((a6 & 0x2000000000000000) != 0)
  {
    v13[0] = a5;
    v13[1] = a6 & 0xFFFFFFFFFFFFFFLL;
    v7 = v13;
  }

  else if ((a5 & 0x1000000000000000) != 0)
  {
    v7 = ((a6 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v12 = a5;
    v9 = a4;
    v10 = a6;
    v11 = a3;
    v7 = _StringObject.sharedUTF8.getter();
    a3 = v11;
    a5 = v12;
    a4 = v9;
    a6 = v10;
  }

  return _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFqd__AGKXEfU_SRys5UInt8VGABySS8UTF8ViewVGSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lyAIqd__Isgyrzo_qd__sAO_pALRszr__lIetyggrzo_Tpq5SS_Tg5Tf4xnn_n(v7, a3, a4, a5, a6, a1);
}

void *_ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFqd__AGKXEfU_SRys5UInt8VGABySS8UTF8ViewVGSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lyAIqd__Isgyrzo_qd__sAO_pALRszr__lIetyggrzo_Tpq5SS_Tg5Tf4xnn_n(void *result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, void *(*a6)(uint64_t *__return_ptr, char *, void *))
{
  v9 = result;
  v10 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v10) = 1;
  }

  v11 = 4 << v10;
  v12 = a2 & 0xC;
  v13 = a2;
  if (v12 == v11)
  {
    v28 = a2;
    v15 = a3;
    v16 = a5;
    result = _StringGuts._slowEnsureMatchingEncoding(_:)(a2, a4, a5);
    a2 = v28;
    a3 = v15;
    a5 = v16;
    v13 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v14 = (v13 >> 16);
      if (v12 != v11)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v28 = a2;
  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v13 >> 16)
  {
    goto LABEL_33;
  }

  v18 = a3;
  v19 = a5;
  result = String.UTF8View._foreignDistance(from:to:)();
  a5 = v19;
  v14 = result;
  a3 = v18;
  a2 = v28;
  if (v12 == v11)
  {
LABEL_14:
    v20 = a3;
    v21 = a5;
    result = _StringGuts._slowEnsureMatchingEncoding(_:)(a2, a4, a5);
    a3 = v20;
    a5 = v21;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v11)
  {
    v22 = a2;
    v23 = a5;
    result = _StringGuts._slowEnsureMatchingEncoding(_:)(a3, a4, a5);
    a2 = v22;
    a5 = v23;
    a3 = result;
    if ((v23 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = ((a3 >> 16) - (a2 >> 16));
    goto LABEL_21;
  }

  v24 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v24 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v24 < a2 >> 16)
  {
    goto LABEL_31;
  }

  if (v24 < a3 >> 16)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    return result;
  }

  result = String.UTF8View._foreignDistance(from:to:)();
LABEL_21:
  if (__OFADD__(v14, result))
  {
    __break(1u);
    goto LABEL_30;
  }

  v25 = result;
  if ((result + v14) < v14)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v9)
  {
    v26 = v9 + v14;
  }

  else
  {
    v26 = 0;
  }

  result = a6(&v27, v26, v25);
  if (!v6)
  {
    return v27;
  }

  return result;
}

uint64_t _sSy10FoundationE21addingPercentEncoding33_A90579D1FA072CB135F95EF00BA46450LL10utf8Buffer9component18skipAlreadyEncodedSSqd___AA15URLComponentSetACLLVSbtSlRd__s5UInt8V7ElementRtd__lFSs_SRyAJGTt2g5(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{

  return _sSy10FoundationE21addingPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9component18skipAlreadyEncodedSSqd___AA15URLComponentSetACLLVSbtSlRd__s5UInt8V7ElementRtd__lFSs_SRyAJGTt2g5Tm(a1, a2, a3, a4, specialized closure #1 in StringProtocol.addingPercentEncoding<A>(utf8Buffer:component:skipAlreadyEncoded:));
}

void *_ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SSSg_Tg5(void *(*a1)(uint64_t *__return_ptr, char *, void *), uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{
  if ((a6 & 0x1000000000000000) != 0)
  {
    return 0;
  }

  if ((a6 & 0x2000000000000000) != 0)
  {
    v13[0] = a5;
    v13[1] = a6 & 0xFFFFFFFFFFFFFFLL;
    v7 = v13;
  }

  else if ((a5 & 0x1000000000000000) != 0)
  {
    v7 = ((a6 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v12 = a5;
    v9 = a4;
    v10 = a6;
    v11 = a3;
    v7 = _StringObject.sharedUTF8.getter();
    a3 = v11;
    a5 = v12;
    a4 = v9;
    a6 = v10;
  }

  return _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFqd__AGKXEfU_SRys5UInt8VGABySS8UTF8ViewVGSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lyAIqd__Isgyrzo_qd__sAO_pALRszr__lIetyggrzo_Tpq5SS_Tg5Tf4xnn_n(v7, a3, a4, a5, a6, a1);
}

id _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA46450LL10utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSs_SRyAIGTt2B5(uint64_t isStackAllocationSafe, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (a2 < 0)
  {
    __break(1u);
  }

  v7 = isStackAllocationSafe;
  if (a2 < 1025 || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    return sub_1807DD8D4(v12 - v8, a2, v7, a2, a3, a4);
  }

  else
  {
    v10 = swift_slowAlloc();
    v11 = sub_1807DD8D4(v10, a2, v7, a2, a3, a4);
    MEMORY[0x1865D2690](v10, -1, -1);
    return v11;
  }
}

void protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance NSNumber(uint64_t a1@<X8>)
{
  v2 = *v1;
  NSNumber._toCustomAnyHashable()(a1);
}

void NSNumber._toCustomAnyHashable()(uint64_t a1@<X8>)
{
  v2 = v1;
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    v6 = v2;
    [v5 decimalValue];
    type metadata accessor for NSDecimal(0);
    lazy protocol witness table accessor for type NSDecimal and conformance NSDecimal();
    AnyHashable.init<A>(_:)();

    return;
  }

  if (!*MEMORY[0x1E695E4D0])
  {
    __break(1u);
    goto LABEL_16;
  }

  if (*MEMORY[0x1E695E4D0] == v1)
  {
LABEL_9:
    AnyHashable.init<A>(_:)();
    return;
  }

  if (!*MEMORY[0x1E695E4C0])
  {
LABEL_16:
    __break(1u);
    return;
  }

  if (*MEMORY[0x1E695E4C0] == v1)
  {
    goto LABEL_9;
  }

  type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSObject);
  v7 = [objc_allocWithZone(NSNumber) initWithLongLong_];
  v8 = static NSObject.== infix(_:_:)();

  if (v8)
  {
    [v1 longLongValue];
    goto LABEL_9;
  }

  v9 = [objc_allocWithZone(NSNumber) initWithUnsignedLongLong_];
  v10 = static NSObject.== infix(_:_:)();

  if (v10)
  {
    [v1 unsignedLongLongValue];
    goto LABEL_9;
  }

  [v1 doubleValue];
  v12 = [objc_allocWithZone(NSNumber) initWithDouble_];
  v13 = static NSObject.== infix(_:_:)();

  if (v13)
  {
    [v2 doubleValue];
    goto LABEL_9;
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
}

double static Date.+ infix(_:_:)@<D0>(double *a1@<X0>, double *a2@<X8>, double a3@<D0>)
{
  result = *a1 + a3;
  *a2 = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type NSRunLoop.SchedulerTimeType and conformance NSRunLoop.SchedulerTimeType()
{
  result = lazy protocol witness table cache variable for type NSRunLoop.SchedulerTimeType and conformance NSRunLoop.SchedulerTimeType;
  if (!lazy protocol witness table cache variable for type NSRunLoop.SchedulerTimeType and conformance NSRunLoop.SchedulerTimeType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSRunLoop.SchedulerTimeType and conformance NSRunLoop.SchedulerTimeType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NSRunLoop.SchedulerTimeType and conformance NSRunLoop.SchedulerTimeType;
  if (!lazy protocol witness table cache variable for type NSRunLoop.SchedulerTimeType and conformance NSRunLoop.SchedulerTimeType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSRunLoop.SchedulerTimeType and conformance NSRunLoop.SchedulerTimeType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NSRunLoop.SchedulerTimeType and conformance NSRunLoop.SchedulerTimeType;
  if (!lazy protocol witness table cache variable for type NSRunLoop.SchedulerTimeType and conformance NSRunLoop.SchedulerTimeType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSRunLoop.SchedulerTimeType and conformance NSRunLoop.SchedulerTimeType);
  }

  return result;
}

void _BridgedURL.appendingPathExtension(_:)(uint64_t a1@<X8>)
{
  v3 = _BridgedURL.relativePath.getter(&selRef_path);
  v5 = v4;

  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    v7 = [*(v1 + OBJC_IVAR____TtC10Foundation11_BridgedURL__url) URLByAppendingPathExtension_];
    swift_unknownObjectRelease();
    if (v7)
    {
      static URL._unconditionallyBridgeFromObjectiveC(_:)(v7, &v9);

      v8 = v9;
    }

    else
    {
      v8 = 0uLL;
    }

    *a1 = v8;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
  }
}

uint64_t protocol witness for SetAlgebra.init() in conformance IndexSet@<X0>(uint64_t *a1@<X8>)
{
  v2 = [objc_allocWithZone(NSIndexSet) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation18_MutablePairHandle33_2D7761BAEB66DCEF0A109CF42C1440A7LLCySo10NSIndexSetCSo014NSMutableIndexM0CGMd);
  result = swift_allocObject();
  *(result + 16) = v2;
  *(result + 24) = 0;
  *a1 = result;
  return result;
}

uint64_t specialized SetAlgebra.init<A>(_:)@<X0>(uint64_t *a1@<X8>)
{
  v16 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v3 = &v14 - v2;
  v4 = [objc_allocWithZone(NSIndexSet) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation18_MutablePairHandle33_2D7761BAEB66DCEF0A109CF42C1440A7LLCySo10NSIndexSetCSo014NSMutableIndexM0CGMd);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = 0;
  dispatch thunk of Sequence.makeIterator()();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of IteratorProtocol.next()();
  while ((v19 & 1) == 0)
  {
    while (1)
    {
      v11 = v18;
      if (*(v5 + 24))
      {
        break;
      }

      v6 = *(v5 + 16);
LABEL_4:
      v7 = v6;
      [v7 mutableCopy];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      type metadata accessor for NSMutableIndexSet();
      swift_dynamicCast();
      v8 = v17;
      v9 = swift_allocObject();
      *(v9 + 16) = v8;
      *(v9 + 24) = 1;
      v10 = v8;

      [v10 addIndex_];

      dispatch thunk of IteratorProtocol.next()();
      v5 = v9;
      if (v19 == 1)
      {
        goto LABEL_10;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v5 + 16);
    if ((*(v5 + 24) & 1) == 0 || !isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_4;
    }

    [v6 addIndex_];
    dispatch thunk of IteratorProtocol.next()();
  }

  v9 = v5;
LABEL_10:
  result = (*(v15 + 8))(v3, AssociatedTypeWitness);
  *v16 = v9;
  return result;
}

{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v5 = &v8 - v4;
  dispatch thunk of Sequence.makeIterator()();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of IteratorProtocol.next()();
  if ((v9 & 1) == 0)
  {
    v6 = 0xFFFFLL;
    while (1)
    {
      if ((v8 & v6) != 0)
      {
        if ((v8 & v6) != v8)
        {
          goto LABEL_9;
        }

LABEL_6:
        dispatch thunk of IteratorProtocol.next()();
        if (v9 == 1)
        {
          goto LABEL_3;
        }
      }

      else
      {
        if (v8 == 0xFFFF)
        {
          goto LABEL_6;
        }

LABEL_9:
        v6 |= v8;
        dispatch thunk of IteratorProtocol.next()();
        if (v9)
        {
          goto LABEL_3;
        }
      }
    }
  }

  v6 = 0xFFFFLL;
LABEL_3:
  result = (*(v3 + 8))(v5, AssociatedTypeWitness);
  *a1 = v6;
  return result;
}

uint64_t IndexSet.makeIterator()@<X0>(void *a1@<X8>)
{
  *a1 = *v1;
  v2 = a1 + 1;
  swift_retain_n();
  IndexSet.startIndex.getter(v2);
}

uint64_t IndexSet.formUnion(_:)(void *a1, void (*a2)(uint64_t *__return_ptr, void *))
{
  v3 = *v2;
  v5[0] = *a1;
  v5[1] = v3;
  a2(&v6, v5);

  *v2 = v6;
  return result;
}

uint64_t IndexSet.union(_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;
  v6 = *(v5 + 16);

  v7 = specialized Collection.count.getter(0, [v6 rangeCount]);

  v8 = *(v4 + 16);

  v9 = specialized Collection.count.getter(0, [v8 rangeCount]);

  if (v9 < v7)
  {
    v5 = v4;
  }

  v10 = *(v5 + 16);
  swift_retain_n();
  specialized Sequence.forEach(_:)(0, [v10 rangeCount], v5);

  *a2 = v12;
  return result;
}

uint64_t specialized Collection.count.getter(unint64_t a1, uint64_t a2)
{
  v2 = a1;
  v4 = __OFSUB__(a2, a1);
  result = a2 - a1;
  v3 = result < 0;
  if (!((result < 0) ^ v4 | (result == 0)))
  {
    v2 -= a2;
    v4 = __OFSUB__(v2, 0x8000000000000001);
    v3 = (v2 + 0x7FFFFFFFFFFFFFFFLL) < 0;
    if (v2 >= 0x8000000000000001)
    {
      return result;
    }

    __break(1u);
  }

  if (v3 == v4)
  {
    return 0;
  }

  v6 = ~a2 + v2;
  v7 = v2 ^ 0x8000000000000000;
  if (v6 >= v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = v6;
  }

  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v7 <= v6)
  {
LABEL_13:
    __break(1u);
  }

  return result;
}

id specialized Sequence.forEach(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 == a2)
  {
  }

  else
  {
    v5 = a1;

    while (1)
    {
      v6 = *(a3 + 24);
      result = [*(a3 + 16) rangeAtIndex_];
      v9 = __OFADD__(result, v8);
      v10 = result + v8;
      v11 = v9;
      if (v6)
      {
        if (v11)
        {
          goto LABEL_19;
        }

        if (v10 < result)
        {
          goto LABEL_22;
        }
      }

      else
      {
        if (v11)
        {
          goto LABEL_20;
        }

        if (v10 < result)
        {
          goto LABEL_21;
        }
      }

      if (v10 < result)
      {
        break;
      }

      v12 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_18;
      }

      IndexSet.insert(integersIn:)(result, v10);
      ++v5;
      if (v12 == a2)
      {
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }

  return result;
}

uint64_t specialized static CGFloat._conditionallyBridgeFromObjectiveC(_:result:)(void *a1, uint64_t a2)
{
  [a1 doubleValue];
  if ((~v4 & 0x7FF0000000000000) != 0 || (v4 & 0xFFFFFFFFFFFFFLL) == 0)
  {
    specialized Double.init(exactly:)(a1);
    if (v6)
    {
      return 0;
    }
  }

  else
  {
    [a1 doubleValue];
    v9 = v8;
  }

  *a2 = v9;
  *(a2 + 8) = 0;
  return 1;
}

uint64_t type metadata instantiation function for ScopedAttributeContainer()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

NSRect NSRectFromString(NSString *aString)
{
  v7 = *MEMORY[0x1E69E9840];
  v5 = 0u;
  *v6 = 0u;
  parseFloats(aString, 4, &v5);
  v2 = *(&v5 + 1);
  v1 = *&v5;
  v4 = v6[1];
  v3 = v6[0];
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

uint64_t UUID.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  memset(out, 0, 37);
  *uu = *v1;
  _foundation_uuid_unparse_upper(uu, out);
  String.init(cString:)();
  __swift_mutable_project_boxed_opaque_existential_1(v3, v4);
  dispatch thunk of SingleValueEncodingContainer.encode(_:)();

  return __swift_destroy_boxed_opaque_existential_1(v3);
}

uint64_t UUID.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v27, v27[3]);
    dispatch thunk of SingleValueDecodingContainer.decode(_:)();
    UUID.init(uuidString:)(&v24);

    if (v26)
    {
      v5 = type metadata accessor for DecodingError();
      swift_allocError();
      v7 = v6;
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      dispatch thunk of Decoder.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v5 - 8) + 104))(v7, *MEMORY[0x1E69E6B00], v5);
      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_1(v27);
    }

    else
    {
      v10 = v24;
      v9 = v25;
      v11 = v24 >> 8;
      v12 = v24 >> 16;
      v13 = v24 >> 24;
      v14 = HIDWORD(v24);
      v15 = v24 >> 40;
      v16 = HIWORD(v24);
      v17 = HIBYTE(v24);
      v18 = v25 >> 8;
      v19 = v25 >> 16;
      v20 = v25 >> 24;
      v21 = HIDWORD(v25);
      v22 = v25 >> 40;
      v23 = HIWORD(v25);
      v28 = HIBYTE(v25);
      __swift_destroy_boxed_opaque_existential_1(v27);
      *a2 = v10;
      a2[1] = v11;
      a2[2] = v12;
      a2[3] = v13;
      a2[4] = v14;
      a2[5] = v15;
      a2[6] = v16;
      a2[7] = v17;
      a2[8] = v9;
      a2[9] = v18;
      a2[10] = v19;
      a2[11] = v20;
      a2[12] = v21;
      a2[13] = v22;
      a2[14] = v23;
      a2[15] = v28;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void NSRunLoop.schedule(after:interval:tolerance:options:_:)(double *a1@<X0>, double *a2@<X1>, double *a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v10 = *a1;
  v11 = *a2;
  v12 = *a3;
  v13 = swift_allocObject();
  *(v13 + 16) = a4;
  *(v13 + 24) = a5;
  v14 = objc_allocWithZone(MEMORY[0x1E695DFF0]);
  v15 = objc_allocWithZone(MEMORY[0x1E695DF00]);

  v16 = [v15 initWithTimeIntervalSinceReferenceDate_];
  v23[4] = partial apply for closure #1 in NSRunLoop.schedule(options:_:);
  v23[5] = v13;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 1107296256;
  v23[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSTimer) -> ();
  v23[3] = &block_descriptor_12;
  v17 = _Block_copy(v23);
  v18 = [v14 initWithFireDate:v16 interval:1 repeats:v17 block:v11];
  _Block_release(v17);

  [v18 setTolerance_];
  [v6 addTimer:v18 forMode:*MEMORY[0x1E695D918]];
  *(swift_allocObject() + 16) = v18;
  v19 = type metadata accessor for AnyCancellable();
  swift_allocObject();
  v20 = v18;
  v21 = AnyCancellable.init(_:)();
  v22 = MEMORY[0x1E695BF08];
  a6[3] = v19;
  a6[4] = v22;

  *a6 = v21;
}

uint64_t sub_18092BC28()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void NSRunLoop.schedule(after:tolerance:options:_:)(double *a1, double *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *a1;
  v9 = *a2;
  v10 = swift_allocObject();
  *(v10 + 16) = a4;
  *(v10 + 24) = a5;
  v11 = objc_allocWithZone(MEMORY[0x1E695DFF0]);
  v12 = objc_allocWithZone(MEMORY[0x1E695DF00]);

  v13 = [v12 initWithTimeIntervalSinceReferenceDate_];
  v16[4] = partial apply for closure #1 in NSRunLoop.schedule(after:tolerance:options:_:);
  v16[5] = v10;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 1107296256;
  v16[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSTimer) -> ();
  v16[3] = &block_descriptor_6;
  v14 = _Block_copy(v16);
  v15 = [v11 initWithFireDate:v13 interval:0 repeats:v14 block:0.0];
  _Block_release(v14);

  [v15 setTolerance_];
  [v5 addTimer:v15 forMode:*MEMORY[0x1E695D918]];
}

uint64_t sub_18092BDE0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

double protocol witness for Strideable.advanced(by:) in conformance NSRunLoop.SchedulerTimeType@<D0>(double *a1@<X0>, double *a2@<X8>)
{
  result = *a1 + *v2;
  *a2 = result;
  return result;
}

void protocol witness for Scheduler.schedule(options:_:) in conformance NSRunLoop(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v9[4] = closure #1 in NSRunLoop.schedule(options:_:)partial apply;
  v9[5] = v7;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v9[3] = &block_descriptor_50;
  v8 = _Block_copy(v9);

  [v6 performBlock_];
  _Block_release(v8);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable () -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance Data(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  specialized Data._Representation.withUnsafeBytes<A>(_:)(v2, v3, v5);
  return __swift_destroy_boxed_opaque_existential_1(v5);
}

uint64_t specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + 16);
  if (!v4 || !__OFSUB__(result, *(a3 + 40)))
  {
    if (!__OFSUB__(a2, result))
    {
      __swift_mutable_project_boxed_opaque_existential_1(a4, *(a4 + 24));
      return dispatch thunk of UnkeyedEncodingContainer.encode<A>(contentsOf:)();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t specialized Data._Representation.withUnsafeBytes<A>(_:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      memset(v10, 0, 14);
      v11 = v10;
      v12 = v10;
      __swift_mutable_project_boxed_opaque_existential_1(a3, *(a3 + 24));
      return dispatch thunk of UnkeyedEncodingContainer.encode<A>(contentsOf:)();
    }

    v5 = *(a1 + 24);
    v6 = a2 & 0x3FFFFFFFFFFFFFFFLL;
    a1 = *(a1 + 16);
    v7 = v5;
    return specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(a1, v7, v6, a3);
  }

  if (v4)
  {
    v8 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    v6 = a2 & 0x3FFFFFFFFFFFFFFFLL;
    a1 = a1;
    v7 = v8;
    return specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(a1, v7, v6, a3);
  }

  v10[0] = a1;
  LOWORD(v10[1]) = a2;
  BYTE2(v10[1]) = BYTE2(a2);
  BYTE3(v10[1]) = BYTE3(a2);
  BYTE4(v10[1]) = BYTE4(a2);
  BYTE5(v10[1]) = BYTE5(a2);
  v11 = v10;
  v12 = v10 + BYTE6(a2);
  __swift_mutable_project_boxed_opaque_existential_1(a3, *(a3 + 24));
  return dispatch thunk of UnkeyedEncodingContainer.encode<A>(contentsOf:)();
}

_BYTE *protocol witness for XPCCodableObjectRepresentable.init(from:) in conformance Data@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = specialized Data.init(from:)(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

_BYTE *specialized Data.init(from:)(uint64_t a1)
{
  v2 = XPCCodableObject.type.getter();
  if (v2 == XPC_TYPE_DATA.getter())
  {
    v5 = XPCCodableObject.copyUnderlyingXPCObject()();
    length = xpc_data_get_length(v5);
    if (length < 1)
    {
      v10 = type metadata accessor for XPCCodableObject();
      (*(*(v10 - 8) + 8))(a1, v10);
      swift_unknownObjectRelease();
      return 0;
    }

    else
    {
      v7 = length;
      result = xpc_data_get_bytes_ptr(v5);
      if (result)
      {
        v8 = specialized Data.init(bytes:count:)(result, v7);
        swift_unknownObjectRelease();
        v9 = type metadata accessor for XPCCodableObject();
        (*(*(v9 - 8) + 8))(a1, v9);
        return v8;
      }

      else
      {
        __break(1u);
      }
    }
  }

  else
  {
    v3 = type metadata accessor for XPCCodableObject();
    (*(*(v3 - 8) + 8))(a1, v3);
    return 0;
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for DateComponents(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
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
    *(result + 282) = 0;
    *(result + 280) = 0;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 283) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 283) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t _block_invoke(uint64_t a1, void *a2, void *a3)
{
  if (a2 == a3)
  {
    return 1;
  }

  else
  {
    return [a2 isEqual:?];
  }
}

id NSPredicate.init(format:_:)()
{
  v0 = getVaList(_:)();

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [ObjCClassFromMetadata predicateWithFormat:String._bridgeToObjectiveCImpl()() arguments:v0];
  swift_unknownObjectRelease();
  return v2;
}

unint64_t lazy protocol witness table accessor for type UInt64 and conformance UInt64()
{
  result = lazy protocol witness table cache variable for type UInt64 and conformance UInt64;
  if (!lazy protocol witness table cache variable for type UInt64 and conformance UInt64)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UInt64 and conformance UInt64);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UInt64 and conformance UInt64;
  if (!lazy protocol witness table cache variable for type UInt64 and conformance UInt64)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UInt64 and conformance UInt64);
  }

  return result;
}

void *destructiveInjectEnumTag for LocalizedStringResource.BundleDescription(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    result[1] = result[1] & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (a2 - 2);
    result[1] = 0x8000000000000000;
  }

  return result;
}

uint64_t LocalizedStringResource.init(_:table:locale:bundle:comment:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v9 = *a1;
  v10 = a1[1];
  v11 = a1[2];
  v18 = *a4;
  v12 = *a5;
  v13 = a5[1];
  v19[2] = *a5;
  v19[3] = v13;

  LocalizedStringResource.BundleDescription.resolvedURL.getter(v19);
  v14 = v19[0];
  v15 = v19[1];
  ObjectType = swift_getObjectType();
  if ((*(v15 + 144))(ObjectType, v15))
  {
    result = outlined consume of LocalizedStringResource.BundleDescription(v12, v13);
    *a6 = v10;
    *(a6 + 8) = v11;
    *(a6 + 16) = v9;
    *(a6 + 24) = v10;
    *(a6 + 32) = v11;
    *(a6 + 40) = a2;
    *(a6 + 48) = a3;
    *(a6 + 56) = v18;
    *(a6 + 72) = v14;
    *(a6 + 80) = v15;
    *(a6 + 88) = 0;
    *(a6 + 96) = 0;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t outlined consume of LocalizedStringResource.BundleDescription(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 == 1)
  {
    return swift_unknownObjectRelease();
  }

  return result;
}

Swift::Int __swiftcall _CalendarGregorian.numberOfDaysInMonth(_:year:)(Swift::Int _, Swift::Int year)
{
  if (_ >= 13)
  {
    v3 = (_ - 1) / 0xCuLL;
    v4 = __OFADD__(year, v3);
    year += v3;
    if (!v4)
    {
      _ = (_ - 1) % 0xCuLL + 1;
      goto LABEL_8;
    }

    __break(1u);
    goto LABEL_22;
  }

  if (_ > 0)
  {
LABEL_8:
    if (((1 << _) & 0x15AA) != 0)
    {
      return 31;
    }

    if (((1 << _) & 0xA50) != 0)
    {
      return 30;
    }

    if (year >= *(v2 + 64))
    {
      if ((year & 3) == 0 && (__ROR8__(0x8F5C28F5C28F5C29 * year + 0x51EB851EB851EB8, 2) > 0x28F5C28F5C28F5CuLL || !(year % 400)))
      {
        return 29;
      }
    }

    else if ((year & 3) == 0)
    {
      return 29;
    }

    return 28;
  }

  v5 = -_ / 0xCuLL;
  v6 = year + v5;
  if (__OFSUB__(year, -v5))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  year = v6 - 1;
  if (!__OFSUB__(v6, 1))
  {
    LOBYTE(_) = 12 * v5 + _ + 12;
    goto LABEL_8;
  }

LABEL_23:
  __break(1u);
  return _;
}

id static Date._unconditionallyBridgeFromObjectiveC(_:)@<X0>(id result@<X0>, void *a2@<X8>)
{
  if (result)
  {
    result = [result timeIntervalSinceReferenceDate];
    *a2 = v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

NSComparisonResult __swiftcall Calendar.compare(_:to:toGranularity:)(Foundation::Date _, Foundation::Date to, Foundation::Calendar::Component toGranularity)
{
  v6 = *toGranularity;
  v7 = *v3;
  v8 = *v4;
  v10 = *v5;
  v9 = v5[1];
  v11 = NSOrderedAscending;
  if (*v3 < *toGranularity)
  {
    v11 = NSOrderedDescending;
  }

  if (v6 == v7)
  {
    result = NSOrderedSame;
  }

  else
  {
    result = v11;
  }

  if (one-time initialization token for validCalendarRange != -1)
  {
    v45 = result;
    swift_once();
    result = v45;
  }

  if (v6 >= *&static Date.validCalendarRange && *(&static Date.validCalendarRange + 1) >= v6 && v7 >= *&static Date.validCalendarRange && *(&static Date.validCalendarRange + 1) >= v7)
  {
    if (v8 > 10)
    {
      if ((v8 - 14) < 4)
      {
        return 0;
      }

      if ((v8 - 11) < 2)
      {
        v46 = result;
        v18 = &outlined read-only object #0 of Calendar.compare(_:to:toGranularity:);
        goto LABEL_49;
      }

      if (v8 != 13)
      {
        goto LABEL_48;
      }

      v21 = trunc(v6);
      v22 = trunc(v7);
      if (v21 != v22)
      {
        v23 = v22 < v21;
LABEL_150:
        if (v23)
        {
          return 1;
        }

        else
        {
          return -1;
        }
      }

      v6 = (v6 - v21) * 1000000000.0;
      v7 = (v7 - v22) * 1000000000.0;
      if (one-time initialization token for compatibility1 == -1)
      {
LABEL_38:
        v16 = trunc(v6);
        v17 = trunc(v7);
        if (static Calendar.compatibility1 == 1)
        {
          if (v16 != v17)
          {
            return (v16 < v17);
          }

          return 0;
        }

        goto LABEL_45;
      }
    }

    else
    {
      if (v8 > 6)
      {
        v46 = result;
        switch(v8)
        {
          case 7:
            goto LABEL_30;
          case 8:
            v18 = &outlined read-only object #1 of Calendar.compare(_:to:toGranularity:);
            goto LABEL_49;
          case 10:
LABEL_30:
            v18 = &outlined read-only object #2 of Calendar.compare(_:to:toGranularity:);
            goto LABEL_49;
        }

LABEL_48:
        v46 = result;
        v18 = &outlined read-only object #3 of Calendar.compare(_:to:toGranularity:);
LABEL_49:
        v24 = *(v18 + 2);
        v25 = lazy protocol witness table accessor for type Calendar.Component and conformance Calendar.Component();
        *&v26 = COERCE_DOUBLE(MEMORY[0x1865CB700](v24, &type metadata for Calendar.Component, v25));
        v83 = *&v26;
        if (v24)
        {
          v27 = (v18 + 32);
          v28 = v24;
          do
          {
            v29 = *v27++;
            specialized Set._Variant.insert(_:)(v49, v29);
            --v28;
          }

          while (v28);
          *&v26 = v83;
        }

        v119[0] = v10;
        v119[1] = v9;
        Calendar.ComponentSet.init(_:)(v26, &v118);
        v30 = *(&static Date.validCalendarRange + 1);
        if (*(&static Date.validCalendarRange + 1) >= v6)
        {
          v30 = v6;
        }

        if (*&static Date.validCalendarRange >= v30)
        {
          v30 = *&static Date.validCalendarRange;
        }

        v49[0] = v30;
        Calendar._dateComponents(_:from:)(&v118, v49, &v83);
        v31 = MEMORY[0x1865CB700](v24, &type metadata for Calendar.Component, v25);
        *&v49[0] = v31;
        if (v24)
        {
          v32 = (v18 + 32);
          v33 = v24;
          do
          {
            v34 = *v32++;
            specialized Set._Variant.insert(_:)(v82, v34);
            --v33;
          }

          while (v33);
          v31 = *&v49[0];
        }

        v82[0] = v10;
        v82[1] = v9;
        Calendar.ComponentSet.init(_:)(v31, &v81);
        v35 = *(&static Date.validCalendarRange + 1);
        if (*(&static Date.validCalendarRange + 1) >= v7)
        {
          v35 = v7;
        }

        if (*&static Date.validCalendarRange >= v35)
        {
          v35 = *&static Date.validCalendarRange;
        }

        v48 = v35;
        Calendar._dateComponents(_:from:)(&v81, &v48, v49);
        ObjectType = swift_getObjectType();
        v37 = *(v9 + 24);
        v37(&v48, ObjectType, v9);
        if (LOBYTE(v48) == 17 || (v37(&v48, ObjectType, v9), LOBYTE(v48) == 18) || (v37(&v48, ObjectType, v9), LOBYTE(v48) == 20) || (v37(&v48, ObjectType, v9), LOBYTE(v48) == 23))
        {
          v38 = 1;
        }

        else
        {
          v37(&v48, ObjectType, v9);
          v38 = LOBYTE(v48) == 24;
        }

        v47 = v38;
        v39 = v18 + 32;
        while (v24)
        {
          v40 = *v39;
          switch(*v39)
          {
            case 1:
              if (v89 & 1) != 0 || (v52)
              {
                goto LABEL_141;
              }

              v41 = v88;
              v42 = v51;
              goto LABEL_120;
            case 2:
              if (v91 & 1) != 0 || (v54)
              {
                goto LABEL_141;
              }

              v41 = v90;
              v42 = v53;
              goto LABEL_120;
            case 3:
              if (v93 & 1) != 0 || (v56)
              {
                goto LABEL_141;
              }

              v41 = v92;
              v42 = v55;
              goto LABEL_120;
            case 4:
              if (v97 & 1) != 0 || (v60)
              {
                goto LABEL_141;
              }

              v41 = v96;
              v42 = v59;
              goto LABEL_120;
            case 5:
              if (v99 & 1) != 0 || (v62)
              {
                goto LABEL_141;
              }

              v41 = v98;
              v42 = v61;
              goto LABEL_120;
            case 6:
              if (v101 & 1) != 0 || (v64)
              {
                goto LABEL_141;
              }

              v41 = v100;
              v42 = v63;
              goto LABEL_120;
            case 7:
              if (v105 & 1) != 0 || (v68)
              {
                goto LABEL_141;
              }

              v41 = v104;
              v42 = v67;
              goto LABEL_120;
            case 8:
              if (v107 & 1) != 0 || (v70)
              {
                goto LABEL_141;
              }

              v41 = v106;
              v42 = v69;
              goto LABEL_120;
            case 9:
              if (v109 & 1) != 0 || (v72)
              {
                goto LABEL_141;
              }

              v41 = v108;
              v42 = v71;
              goto LABEL_120;
            case 0xA:
              if (v111 & 1) != 0 || (v74)
              {
                goto LABEL_141;
              }

              v41 = v110;
              v42 = v73;
              goto LABEL_120;
            case 0xB:
              if (v113 & 1) != 0 || (v76)
              {
                goto LABEL_141;
              }

              v41 = v112;
              v42 = v75;
              goto LABEL_120;
            case 0xC:
              if (v115 & 1) != 0 || (v78)
              {
                goto LABEL_141;
              }

              v41 = v114;
              v42 = v77;
              goto LABEL_120;
            case 0xD:
              if (v103 & 1) != 0 || (v66)
              {
                goto LABEL_141;
              }

              v41 = v102;
              v42 = v65;
              goto LABEL_120;
            case 0xE:
            case 0xF:
            case 0x10:
            case 0x11:
              goto LABEL_141;
            case 0x12:
              if (v95 & 1) != 0 || (v58)
              {
                goto LABEL_141;
              }

              v41 = v94;
              v42 = v57;
              goto LABEL_120;
            default:
              if (v87 == 1 || v50 == 1)
              {
LABEL_141:

                outlined destroy of DateComponents(v49);
                outlined destroy of DateComponents(&v83);
                return v46;
              }

              v41 = v86;
              v42 = v49[4];
LABEL_120:
              if (*&v42 < v41)
              {
LABEL_145:

                outlined destroy of DateComponents(v49);
                outlined destroy of DateComponents(&v83);
                return 1;
              }

              if (v41 < *&v42)
              {
                goto LABEL_140;
              }

              if (v40 == 3)
              {
                if (!v47)
                {
                  goto LABEL_72;
                }

                v43 = v117;
                v44 = v80;
                if (v80 == 2)
                {
                  goto LABEL_71;
                }

                if (v117)
                {
                  goto LABEL_134;
                }
              }

              else
              {
                if (v40 != 2)
                {
                  goto LABEL_72;
                }

                v37(&v48, ObjectType, v9);
                if (LOBYTE(v48) != 2)
                {
                  v37(&v48, ObjectType, v9);
                  if (LOBYTE(v48) != 25)
                  {
                    v37(&v48, ObjectType, v9);
                    if (LOBYTE(v48) != 17)
                    {
                      v37(&v48, ObjectType, v9);
                      if (LOBYTE(v48) != 18)
                      {
                        v37(&v48, ObjectType, v9);
                        if (LOBYTE(v48) != 20)
                        {
                          v37(&v48, ObjectType, v9);
                          if (LOBYTE(v48) != 23)
                          {
                            v37(&v48, ObjectType, v9);
                            if (LOBYTE(v48) != 26)
                            {
                              v37(&v48, ObjectType, v9);
                              if (LOBYTE(v48) != 24)
                              {
                                goto LABEL_72;
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }

                v43 = v116;
                v44 = v79;
                if (v79 == 2)
                {
LABEL_71:
                  if (v43)
                  {
                    goto LABEL_145;
                  }

                  goto LABEL_72;
                }

                if (v116)
                {
LABEL_134:
                  if ((v44 & 1) == 0)
                  {
                    goto LABEL_145;
                  }

                  goto LABEL_72;
                }
              }

              if (v44)
              {
LABEL_140:

                outlined destroy of DateComponents(v49);
                outlined destroy of DateComponents(&v83);
                return -1;
              }

LABEL_72:
              ++v39;
              --v24;
              if (v8 == v40)
              {
                goto LABEL_142;
              }

              break;
          }
        }

LABEL_142:

        outlined destroy of DateComponents(v49);
        outlined destroy of DateComponents(&v83);
        return 0;
      }

      if ((v8 - 3) >= 2)
      {
        if (v8 == 5)
        {
          v16 = floor(floor(v6) / 60.0);
          v17 = floor(floor(v7) / 60.0);
LABEL_45:
          if (v16 != v17)
          {
            v23 = v17 < v16;
            goto LABEL_150;
          }

          return 0;
        }

        if (v8 == 6)
        {
          v16 = floor(v6);
          v17 = floor(v7);
          goto LABEL_45;
        }

        goto LABEL_48;
      }

      v19 = result;
      LOBYTE(v119[0]) = v8;
      if (*&static Date.validCalendarRange >= v6)
      {
        v6 = *&static Date.validCalendarRange;
      }

      v20 = swift_getObjectType();
      v49[0] = v6;
      (*(v9 + 160))(&v83, v119, v49, v20, v9);
      if (v85)
      {
        return v19;
      }

      if (v84 + v83 >= v83)
      {
        if (v7 < v83)
        {
          return 1;
        }

        if (v7 < v84 + v83)
        {
          return 0;
        }

        return -1;
      }

      __break(1u);
    }

    swift_once();
    goto LABEL_38;
  }

  return result;
}

void *Calendar.dateComponents(_:from:)@<X0>(double *a1@<X1>, void *a2@<X8>)
{
  v4 = *a1;
  v10 = *v2;

  Calendar.ComponentSet.init(_:)(v5, &v9);
  if (one-time initialization token for validCalendarRange != -1)
  {
    swift_once();
  }

  v6 = *(&static Date.validCalendarRange + 1);
  if (*(&static Date.validCalendarRange + 1) >= v4)
  {
    v6 = v4;
  }

  if (*&static Date.validCalendarRange >= v6)
  {
    v6 = *&static Date.validCalendarRange;
  }

  v8 = v6;
  return Calendar._dateComponents(_:from:)(&v9, &v8, a2);
}

Swift::Bool __swiftcall Calendar.isDateInToday(_:)(Foundation::Date a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *v1;
  v7 = *v2;
  v6 = v3;
  __tp.tv_sec = 0;
  __tp.tv_nsec = 0;
  clock_gettime(_CLOCK_REALTIME, &__tp);
  return Calendar.compare(_:to:toGranularity:)(COERCE_FOUNDATION_DATE(__tp.tv_sec + -978307200.0 + __tp.tv_nsec * 0.000000001), COERCE_FOUNDATION_DATE(__tp.tv_nsec * 0.000000001), &v6) == NSOrderedSame;
}

uint64_t one-time initialization function for compatibility2(uint64_t a1)
{
  return one-time initialization function for compatibility2(a1, "com.google.calendar", &static Calendar.compatibility2);
}

{
  return one-time initialization function for compatibility2(a1, "AppleEducate.Pitch-Pipe-with-Pitch-Assistant", &static URL.compatibility2);
}

void *DateComponents.init(component:value:)@<X0>(Swift::Int_optional _@<0:X1, 8:W2.1>, unsigned __int8 *a2@<X0>, void *a3@<X8>)
{
  v4 = *a2;
  memset(__src, 0, 40);
  *(&__src[17] + 9) = 514;
  BYTE8(__src[2]) = 1;
  *&__src[3] = 0;
  BYTE8(__src[3]) = 1;
  *&__src[4] = 0;
  BYTE8(__src[4]) = 1;
  *&__src[5] = 0;
  BYTE8(__src[5]) = 1;
  *&__src[6] = 0;
  BYTE8(__src[6]) = 1;
  *&__src[7] = 0;
  BYTE8(__src[7]) = 1;
  *&__src[8] = 0;
  BYTE8(__src[8]) = 1;
  *&__src[9] = 0;
  BYTE8(__src[9]) = 1;
  *&__src[10] = 0;
  BYTE8(__src[10]) = 1;
  *&__src[11] = 0;
  BYTE8(__src[11]) = 1;
  *&__src[12] = 0;
  BYTE8(__src[12]) = 1;
  *&__src[13] = 0;
  BYTE8(__src[13]) = 1;
  *&__src[14] = 0;
  BYTE8(__src[14]) = 1;
  *&__src[15] = 0;
  BYTE8(__src[15]) = 1;
  *&__src[16] = 0;
  BYTE8(__src[16]) = 1;
  *&__src[17] = 0;
  BYTE8(__src[17]) = 1;
  if ((v4 - 14) > 3)
  {
    __dst[0] = v4;
    v10.value = _.value;
    v10.is_nil = 0;
    DateComponents.setValue(_:for:)(v10, __dst);
    memcpy(__dst, __src, 0x11BuLL);
    _NSBundleDeallocatingImmortalBundle(__dst, v5);
  }

  else
  {
    memcpy(v7, __src, 0x11BuLL);
    outlined destroy of DateComponents(v7);
    _s10Foundation14DateComponentsVSgWOi0_(__dst);
  }

  return memcpy(a3, __dst, 0x11BuLL);
}

uint64_t outlined destroy of DateComponents?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Foundation::Date_optional __swiftcall Calendar.date(byAdding:value:to:wrappingComponents:)(Foundation::Calendar::Component byAdding, Swift::Int value, Foundation::Date to, Swift::Bool wrappingComponents)
{
  v7 = v4;
  v8 = v5;
  v9 = *wrappingComponents;
  v10 = *(v6 + 8);
  LOBYTE(__dst[0]) = *byAdding;
  DateComponents.init(component:value:)(*&value, __dst, __src);
  memcpy(__dst, __src, 0x11BuLL);
  v11 = _s10Foundation13URLComponentsV01_B0VSgWOg(__dst);
  if (v11 == 1)
  {
    v13 = 0.0;
    v14 = 1;
  }

  else
  {
    if (one-time initialization token for validCalendarRange != -1)
    {
      swift_once();
    }

    if (*(&static Date.validCalendarRange + 1) >= v9)
    {
      v15 = v9;
    }

    else
    {
      v15 = *(&static Date.validCalendarRange + 1);
    }

    if (*&static Date.validCalendarRange >= v15)
    {
      v16 = *&static Date.validCalendarRange;
    }

    else
    {
      v16 = v15;
    }

    memcpy(v24, __dst, 0x11BuLL);
    if (*(&static Date.validCalendarRange + 1) >= v16)
    {
      v17 = v16;
    }

    else
    {
      v17 = *(&static Date.validCalendarRange + 1);
    }

    if (*&static Date.validCalendarRange >= v17)
    {
      v18 = *&static Date.validCalendarRange;
    }

    else
    {
      v18 = v17;
    }

    ObjectType = swift_getObjectType();
    v23 = v18;
    (*(v10 + 200))(&v25, v24, &v23, v7 & 1, ObjectType, v10);
    v20 = v25;
    v21 = v26;
    if (one-time initialization token for compatibility2 != -1)
    {
      swift_once();
    }

    v22 = static Calendar.compatibility2;
    LOBYTE(v11) = outlined destroy of DateComponents?(__src);
    v13 = v9;
    if (!v21)
    {
      v13 = v20;
    }

    if (v22 == 1)
    {
      v14 = 0;
    }

    else
    {
      v13 = v20;
      v14 = v21;
    }
  }

  *v8 = v13;
  *(v8 + 8) = v14;
  result.value = *&v12;
  result.is_nil = v11;
  return result;
}

uint64_t specialized URLComponents.scheme.setter(unint64_t a1, unint64_t a2)
{
  v3 = v2;
  v98 = *MEMORY[0x1E69E9840];
  *(v2 + 8) = 0;
  if (a2)
  {
    v6 = specialized Collection.first.getter(a1, a2);
    if ((v6 & 0x100) != 0 || v6 < 0x41u)
    {
      goto LABEL_65;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      *&v96[0] = a1;
      *(&v96[0] + 1) = a2;
      lazy protocol witness table accessor for type String and conformance String();
      StringProtocol._ephemeralString.getter();
      v71 = String._bridgeToObjectiveCImpl()();

      v72 = [v71 _fastCharacterContents];
      v73 = v71;
      if (v72)
      {
        *&v96[0] = a1;
        *(&v96[0] + 1) = a2;
        StringProtocol._ephemeralString.getter();
        v74 = String._bridgeToObjectiveCImpl()();

        v75 = [v74 length];
        swift_unknownObjectRelease();
        if (!_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v72, v75, 1u, 0))
        {
          goto LABEL_65;
        }
      }

      else if ((specialized Sequence.allSatisfy(_:)(a1, a2, 1) & 1) == 0)
      {
        goto LABEL_65;
      }
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v8 = HIBYTE(a2) & 0xF;
        *&v96[0] = a1;
        *(&v96[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
        v7 = v96;
      }

      else
      {
        if ((a1 & 0x1000000000000000) == 0)
        {
          goto LABEL_66;
        }

        v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v8 = a1 & 0xFFFFFFFFFFFFLL;
      }

      while (!_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys5UInt8VG_Tt2g5(v7, v8, 1u, 0))
      {
LABEL_65:
        v90 = 0;
        v89 = 813;
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
LABEL_66:
        v7 = _StringObject.sharedUTF8.getter();
      }
    }
  }

  *(v3 + 24) = a1;
  *(v3 + 32) = a2;

  result = *(v3 + 80);
  if (!result)
  {
    v10 = *v3;
    v11 = *(v3 + 10);
    v12 = *(v3 + 11);
    v13 = *(v3 + 48);
    v14 = *(v3 + 64);
    if (*(v3 + 12) == 1 && v10 && (v10[120] & 1) == 0)
    {
      v15 = String.subscript.getter();
      MEMORY[0x1865CAE80](v15);

      goto LABEL_37;
    }

    if (*(v3 + 96))
    {
      if (*(v3 + 13) && v10 && (v10[144] & 1) == 0)
      {
        v93 = 0;
        v16 = String.subscript.getter();
        if ((v16 ^ v17) >> 14)
        {
          v20 = v16;
          v21 = v17;
          v91 = v18;
          v92 = v19;
          _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SiSg_Tg5061_ss17FixedWidthIntegerPsE_5radixxSgqd___SitcSyRd__lufcADSRys5I15VGXEfU_Si_SsTG5SiTf1cn_n(v16, v17, v18, v19, 10);
          if ((v22 & 0x100) != 0)
          {
            specialized _parseInteger<A, B>(ascii:radix:)(v20, v21, v91, v92, 10);
          }

          v23 = v22;

          result = v93;
          if ((v23 & 1) == 0 || v13)
          {
            goto LABEL_37;
          }
        }

        else
        {

          result = v93;
          if (v13)
          {
            goto LABEL_37;
          }
        }
      }

      else if (v13)
      {
        goto LABEL_37;
      }

      if (v11 && v10 && (v10[72] & 1) == 0)
      {
        v25 = String.subscript.getter();
        MEMORY[0x1865CAE80](v25);
      }

      else
      {
        if (!v14)
        {
          if (!v12 || !v10 || (v10[96] & 1) != 0)
          {
            return result;
          }

          v24 = String.subscript.getter();
          MEMORY[0x1865CAE80](v24);
        }
      }
    }
  }

LABEL_37:

  v26 = *(v3 + 96);
  v27 = *(v3 + 128);
  v96[7] = *(v3 + 112);
  *v97 = v27;
  *&v97[10] = *(v3 + 138);
  v28 = *(v3 + 48);
  v96[2] = *(v3 + 32);
  v96[3] = v28;
  v29 = *(v3 + 80);
  v96[4] = *(v3 + 64);
  v96[5] = v29;
  v96[6] = v26;
  v30 = *(v3 + 16);
  v96[0] = *v3;
  v96[1] = v30;
  v31 = URLComponents._URLComponents.encodedHost.getter();
  if (!v32)
  {
    return URLComponents._URLComponents.host.setter(v31, v32);
  }

  v33 = v32;
  v34 = HIBYTE(v32) & 0xF;
  v35 = v31 & 0xFFFFFFFFFFFFLL;
  if ((v32 & 0x2000000000000000) != 0)
  {
    v36 = HIBYTE(v32) & 0xF;
  }

  else
  {
    v36 = v31 & 0xFFFFFFFFFFFFLL;
  }

  if (!v36)
  {

    v31 = 0;
    v32 = 0xE000000000000000;
    return URLComponents._URLComponents.host.setter(v31, v32);
  }

  if (v97[24])
  {
    v94 = v31;
    v95 = v32;
    MEMORY[0x1EEE9AC00](v31);
    v88[0] = &v94;
    v88[1] = MEMORY[0x1E69E7CD0];
    v89 = 4;
    v38 = v37;
    v39 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, &v86, v37, v33);
    if (v40 == 1)
    {
      v41 = _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSS_SS8UTF8ViewVTt2B5(v38, v33, MEMORY[0x1E69E7CD0], 4);
    }

    else
    {
      v41 = v39;
    }

    v42 = v40;

    goto LABEL_79;
  }

  if ((v32 & 0x1000000000000000) != 0)
  {
    v43 = v31;

    goto LABEL_55;
  }

  if ((v32 & 0x2000000000000000) != 0)
  {
    v43 = v31;
    v94 = v31;
    v95 = v32 & 0xFFFFFFFFFFFFFFLL;
    MEMORY[0x1EEE9AC00](v31);
    LOBYTE(v89) = 0;
    MEMORY[0x1EEE9AC00](v48);
    v86 = &v94;
    v87 = v34;

    v46 = _s10Foundation12UIDNAHookICUV13IDNACodedHost33_438666AB1527AE198C118BCABA7FD21510hostBuffer9transcode11allowErrors12createStringSSSgSRyxG_s5Int32Vs13OpaquePointerVSg_SPyxGSgAMSpyxGSgAMSpySo9UIDNAInfoVGSgSpySo10UErrorCodeVGSgtXESbs6UInt32VXEAjS_SitXEts17FixedWidthIntegerRzlFZs4Int8V_Tt3g5(&v94, v34, @nonobjc uidna_nameToUnicodeUTF8(_:_:_:_:_:_:_:), 0, closure #1 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply, v88, closure #2 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply);
    if (v47 == 1)
    {
      goto LABEL_55;
    }

LABEL_78:
    v41 = v46;
    v42 = v47;
    swift_bridgeObjectRelease_n();
LABEL_79:
    v32 = v42;
    v31 = v41;
    return URLComponents._URLComponents.host.setter(v31, v32);
  }

  if ((v31 & 0x1000000000000000) != 0)
  {
    v43 = v31;
    v44 = (v32 & 0xFFFFFFFFFFFFFFFLL) + 32;
    goto LABEL_50;
  }

  v43 = v31;
  v31 = _StringObject.sharedUTF8.getter();
  if (v31)
  {
    v44 = v31;
    v35 = v76;
LABEL_50:
    MEMORY[0x1EEE9AC00](v31);
    LOBYTE(v89) = 0;
    MEMORY[0x1EEE9AC00](v45);
    v86 = v44;
    v87 = v35;

    v46 = _s10Foundation12UIDNAHookICUV13IDNACodedHost33_438666AB1527AE198C118BCABA7FD21510hostBuffer9transcode11allowErrors12createStringSSSgSRyxG_s5Int32Vs13OpaquePointerVSg_SPyxGSgAMSpyxGSgAMSpySo9UIDNAInfoVGSgSpySo10UErrorCodeVGSgtXESbs6UInt32VXEAjS_SitXEts17FixedWidthIntegerRzlFZs4Int8V_Tt3g5(v44, v35, @nonobjc uidna_nameToUnicodeUTF8(_:_:_:_:_:_:_:), 0, closure #1 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply, v88, closure #2 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply);
    if (v47 != 1)
    {
      goto LABEL_78;
    }

LABEL_55:
    v94 = v43;
    v95 = v33;
    lazy protocol witness table accessor for type String and conformance String();
    StringProtocol._ephemeralString.getter();
    v49 = String._bridgeToObjectiveCImpl()();

    v50 = [v49 _fastCharacterContents];
    v51 = v49;
    if (v50)
    {
      v94 = v43;
      v95 = v33;
      StringProtocol._ephemeralString.getter();
      v52 = String._bridgeToObjectiveCImpl()();

      v53 = [v52 length];
      v54 = swift_unknownObjectRelease();
      MEMORY[0x1EEE9AC00](v54);
      LOBYTE(v89) = 0;
      MEMORY[0x1EEE9AC00](v55);
      v86 = v50;
      v87 = v53;
      v56 = _s10Foundation12UIDNAHookICUV13IDNACodedHost33_438666AB1527AE198C118BCABA7FD21510hostBuffer9transcode11allowErrors12createStringSSSgSRyxG_s5Int32Vs13OpaquePointerVSg_SPyxGSgAMSpyxGSgAMSpySo9UIDNAInfoVGSgSpySo10UErrorCodeVGSgtXESbs6UInt32VXEAjS_SitXEts17FixedWidthIntegerRzlFZs6UInt16V_Tt3g5(v50);
      v58 = v57;
      swift_bridgeObjectRelease_n();
      v32 = v58;
      v31 = v56;
      return URLComponents._URLComponents.host.setter(v31, v32);
    }

    v94 = v43;
    v95 = v33;

    v59 = String.init<A>(_:)();
    v61 = v59;
    v62 = v60;
    if ((v60 & 0x1000000000000000) != 0)
    {
      v61 = static String._copying(_:)();
      v78 = v77;

      v62 = v78;
      if ((v78 & 0x2000000000000000) == 0)
      {
        goto LABEL_59;
      }
    }

    else if ((v60 & 0x2000000000000000) == 0)
    {
LABEL_59:
      if ((v61 & 0x1000000000000000) != 0)
      {
        v63 = (v62 & 0xFFFFFFFFFFFFFFFLL) + 32;
LABEL_61:
        MEMORY[0x1EEE9AC00](v63);
        LOBYTE(v89) = 0;
        MEMORY[0x1EEE9AC00](v64);
        v86 = v65;
        v87 = v66;
        v68 = _s10Foundation12UIDNAHookICUV13IDNACodedHost33_438666AB1527AE198C118BCABA7FD21510hostBuffer9transcode11allowErrors12createStringSSSgSRyxG_s5Int32Vs13OpaquePointerVSg_SPyxGSgAMSpyxGSgAMSpySo9UIDNAInfoVGSgSpySo10UErrorCodeVGSgtXESbs6UInt32VXEAjS_SitXEts17FixedWidthIntegerRzlFZs4Int8V_Tt3g5(v65, v66, @nonobjc uidna_nameToUnicodeUTF8(_:_:_:_:_:_:_:), 0, closure #1 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply, v67, closure #2 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply);
        v70 = v69;
LABEL_62:
        swift_bridgeObjectRelease_n();

        v31 = v68;
        v32 = v70;
        return URLComponents._URLComponents.host.setter(v31, v32);
      }

      v63 = _StringObject.sharedUTF8.getter();
      if (v63)
      {
        goto LABEL_61;
      }

      if (one-time initialization token for idnaTranscoder != -1)
      {
        swift_once();
      }

      if (byte_1ED436DC0 == 1)
      {
        v68 = 0;
        v70 = 0;
        goto LABEL_62;
      }

      goto LABEL_92;
    }

    v94 = v61;
    v95 = v62 & 0xFFFFFFFFFFFFFFLL;
    MEMORY[0x1EEE9AC00](v59);
    LOBYTE(v89) = 0;
    MEMORY[0x1EEE9AC00](v79);
    v86 = &v94;
    v87 = v80;
    v82 = _s10Foundation12UIDNAHookICUV13IDNACodedHost33_438666AB1527AE198C118BCABA7FD21510hostBuffer9transcode11allowErrors12createStringSSSgSRyxG_s5Int32Vs13OpaquePointerVSg_SPyxGSgAMSpyxGSgAMSpySo9UIDNAInfoVGSgSpySo10UErrorCodeVGSgtXESbs6UInt32VXEAjS_SitXEts17FixedWidthIntegerRzlFZs4Int8V_Tt3g5(&v94, v80, @nonobjc uidna_nameToUnicodeUTF8(_:_:_:_:_:_:_:), 0, closure #1 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply, v81, closure #2 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply);
    v84 = v83;

    swift_bridgeObjectRelease_n();
    v32 = v84;
    v31 = v82;
    return URLComponents._URLComponents.host.setter(v31, v32);
  }

  v85 = one-time initialization token for idnaTranscoder;

  if (v85 != -1)
  {
    swift_once();
  }

  if (byte_1ED436DC0)
  {
    v47 = 0;
    v46 = 0;
    goto LABEL_78;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {
    __break(1u);
  }

  swift_slowAlloc();
  __break(1u);
LABEL_92:
  if (swift_stdlib_isStackAllocationSafe())
  {
    __break(1u);
  }

  result = swift_slowAlloc();
  __break(1u);
  return result;
}

uint64_t URLComponents.scheme.setter(unint64_t a1, unint64_t a2)
{
  specialized URLComponents.scheme.setter(a1, a2);
}

uint64_t URLComponents.path.setter(unint64_t a1, unint64_t a2)
{
  *(v2 + 8) = 0;
  *(v2 + 14) = 0;
  v3 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v3 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    v4 = _s10Foundation13RFC3986ParserV17percentEncodePath33_A90579D1FA072CB135F95EF00BA46450LL_18skipAlreadyEncodedSSx_SbtSyRzlFZSS_Tt1g5(a1, a2, 0);
    v6 = v5;
  }

  else
  {

    v4 = 0;
    v6 = 0xE000000000000000;
  }

  *(v2 + 104) = v4;
  *(v2 + 112) = v6;
  return result;
}

uint64_t CVarArg<>._cVarArgEncoding.getter()
{
  v0 = dispatch thunk of _ObjectiveCBridgeable._bridgeToObjectiveC()();
  v1 = v0;
  swift_unknownObjectRetain();
  v2 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v2 + 16) = 1;
  *(v2 + 32) = v0;
  swift_unknownObjectRelease();
  return v2;
}

uint64_t IndexPath.description.getter()
{
  if (*(v0 + 16) > 1u)
  {
    if (*(v0 + 16) == 2)
    {
      return MEMORY[0x1865CB4E0](*v0, MEMORY[0x1E69E6530]);
    }

    else
    {
      return 23899;
    }
  }

  else
  {
    if (*(v0 + 16))
    {
      v2 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1865CB0E0](v2);

      MEMORY[0x1865CB0E0](8236, 0xE200000000000000);
    }

    v3 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1865CB0E0](v3);

    MEMORY[0x1865CB0E0](93, 0xE100000000000000);
    return 91;
  }
}

uint64_t protocol witness for Sequence.makeIterator() in conformance IndexSet@<X0>(void *a1@<X8>)
{
  *a1 = *v1;
  v2 = a1 + 1;
  swift_retain_n();
  IndexSet.startIndex.getter(v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NSRunLoop.SchedulerTimeType()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  return MEMORY[0x1865CD090](*&v1);
}

uint64_t specialized static ICU.CaseMap.caseMappingForLocale(_:)()
{
  v0 = one-time initialization token for _cache;

  if (v0 != -1)
  {
    v1 = swift_once();
  }

  v2 = static ICU.CaseMap._cache;
  MEMORY[0x1EEE9AC00](v1);
  os_unfair_lock_lock((v2 + 24));
  partial apply for closure #1 in static ICU.CaseMap.caseMappingForLocale(_:)(v2 + 16, &v6);
  os_unfair_lock_unlock((v2 + 24));
  v3 = v6;
  if (!v6)
  {
    type metadata accessor for ICU.CaseMap();
    v3 = swift_allocObject();

    v4 = ICU.CaseMap.init(localeID:)();
    MEMORY[0x1EEE9AC00](v4);
    os_unfair_lock_lock((v2 + 24));
    partial apply for closure #2 in static ICU.CaseMap.caseMappingForLocale(_:)((v2 + 16));
    os_unfair_lock_unlock((v2 + 24));
  }

  return v3;
}

uint64_t closure #1 in static ICU.CaseMap.caseMappingForLocale(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (*(*a1 + 16))
  {
    specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if (v5)
    {
    }

    else
    {
      result = 0;
    }
  }

  else
  {
    result = 0;
  }

  *a4 = result;
  return result;
}

uint64_t specialized _withResizingCharBuffer(initialSize:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, int *), uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t, uint64_t, int *))
{
  v20[2] = *MEMORY[0x1E69E9840];
  if (__OFADD__(a1, 1))
  {
    __break(1u);
  }

  else
  {
    if (a1 + 1 < 0)
    {
      __break(1u);
    }

    v7 = a6;
    v9 = a5;
    v8 = a4;
    v10 = a3;
    v6 = a2;
    v11 = a1;
    v12 = a1 + 1;
    isStackAllocationSafe = swift_retain_n();
    if (v12 < 1025)
    {
      goto LABEL_4;
    }
  }

  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  if ((isStackAllocationSafe & 1) == 0)
  {
    v18 = swift_slowAlloc();

    specialized closure #1 in _withResizingCharBuffer(initialSize:_:)(v18, v11, v6, v10, v8, v9, v7, v20);
    MEMORY[0x1865D2690](v18, -1, -1);

    return v20[0];
  }

LABEL_4:
  MEMORY[0x1EEE9AC00](isStackAllocationSafe);
  v15 = &v20[-1] - v14;

  specialized closure #1 in _withResizingCharBuffer(initialSize:_:)(v15, v11, v6, v10, v8, v9, v7, v20);
  v16 = v20[0];

  return v16;
}

uint64_t specialized _withResizingCharBuffer(initialSize:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = MEMORY[0x1E69E56F8];
  v5 = MEMORY[0x1E69E56F8];

  return specialized _withResizingCharBuffer(initialSize:_:)(a1, a2, a3, a4, v4, v5);
}

{
  v4 = MEMORY[0x1E69E56F0];
  v5 = MEMORY[0x1E69E56F0];

  return specialized _withResizingCharBuffer(initialSize:_:)(a1, a2, a3, a4, v4, v5);
}

{
  v4 = MEMORY[0x1E69E56E8];
  v5 = MEMORY[0x1E69E56E8];

  return specialized _withResizingCharBuffer(initialSize:_:)(a1, a2, a3, a4, v4, v5);
}

uint64_t specialized closure #1 in _withResizingCharBuffer(initialSize:_:)@<X0>(uint64_t isStackAllocationSafe@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, int *)@<X6>, uint64_t (*a7)(void, uint64_t, uint64_t, uint64_t, uint64_t, int *)@<X7>, uint64_t *a8@<X8>)
{
  v37 = *MEMORY[0x1E69E9840];
  v36 = 0;
  if (!isStackAllocationSafe)
  {
    goto LABEL_24;
  }

  if (!a4)
  {
    goto LABEL_25;
  }

  if (a5 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (a5 > 0x7FFFFFFF)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    v31 = isStackAllocationSafe;
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if ((isStackAllocationSafe & 1) == 0)
    {
      v32 = swift_slowAlloc();

      specialized closure #1 in closure #1 in _withResizingCharBuffer(initialSize:_:)(v32, v31, v8, a4, a5, v11, a8);
      if (v34)
      {

        result = MEMORY[0x1865D2690](v32, -1, -1);
        __break(1u);
      }

      else
      {
        MEMORY[0x1865D2690](v32, -1, -1);
      }

      return result;
    }

    goto LABEL_9;
  }

  v11 = a7;
  v10 = a6;
  v16 = v9;
  v8 = a3;
  v18 = isStackAllocationSafe;
  v19 = *(a3 + 16);

  isStackAllocationSafe = v10(v19, v18, a2, a4, a5, &v36);
  if (v36 != 15)
  {
    if (v36 > 0 || isStackAllocationSafe <= 0)
    {

      *a8 = 0;
      a8[1] = 0;
    }

    else
    {
      *(v18 + isStackAllocationSafe) = 0;
      v28 = MEMORY[0x1865CAEB0](v18);
      v30 = v29;

      *a8 = v28;
      a8[1] = v30;
    }

    return result;
  }

  v12 = (isStackAllocationSafe + 1);
  if (__OFADD__(isStackAllocationSafe, 1))
  {
    goto LABEL_19;
  }

  if ((v12 & 0x80000000) != 0)
  {
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  v34 = v16;
  if (v12 >= 1025)
  {
    goto LABEL_20;
  }

LABEL_9:
  v20 = MEMORY[0x1EEE9AC00](isStackAllocationSafe);
  v22 = &v33 - v21;
  v35 = 0;
  v23 = (v10)(*(v8 + 16), &v33 - v21, v12, a4, a5, &v35, v20);
  v24 = 0;
  v25 = 0;
  if (v35 <= 0 && v23 > 0)
  {
    v22[v23] = 0;
    v24 = MEMORY[0x1865CAEB0](v22);
    v25 = v26;
  }

  *a8 = v24;
  a8[1] = v25;
  return result;
}

uint64_t one-time initialization function for _cache()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCySDySSAA3ICUO7CaseMapCG_GMd);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = MEMORY[0x1E69E7CC8];
  static ICU.CaseMap._cache = result;
  return result;
}

uint64_t ICU.CaseMap.init(localeID:)()
{
  String.utf8CString.getter();
  v1 = ucasemap_open();

  if (!v1)
  {
    __break(1u);
  }

  *(v0 + 16) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCyyt_GMd);
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v0 + 24) = v2;
  return v0;
}

char *closure #2 in static ICU.CaseMap.caseMappingForLocale(_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *a1;
  v40 = *a1;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    v4 = v12;
    if (*(v10 + 24) < v16)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, isUniquelyReferenced_nonNull_native);
      v17 = v40;
      v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
      if ((v4 & 1) == (v18 & 1))
      {
        goto LABEL_7;
      }

      v11 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v17 = v10;
LABEL_7:
      if (v4)
      {
LABEL_8:
        v19 = v11;

        *(*(v17 + 56) + 8 * v19) = a4;

LABEL_27:
        *a1 = v17;
        return result;
      }

LABEL_26:
      result = specialized _NativeDictionary._insert(at:key:value:)(v11, a2, a3, a4, v17);
      goto LABEL_27;
    }
  }

  v36 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation3ICUO7CaseMapCGMd);
  v21 = static _DictionaryStorage.copy(original:)();
  v17 = v21;
  if (!*(v10 + 16))
  {
LABEL_25:

    v11 = v36;
    if (v4)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

  result = (v21 + 64);
  __src = (v10 + 64);
  v22 = ((1 << *(v17 + 32)) + 63) >> 6;
  if (v17 != v10 || result >= &__src[8 * v22])
  {
    result = memmove(result, __src, 8 * v22);
  }

  v23 = 0;
  *(v17 + 16) = *(v10 + 16);
  v24 = 1 << *(v10 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & *(v10 + 64);
  v27 = (v24 + 63) >> 6;
  v37 = v27;
  if (v26)
  {
    do
    {
      v28 = __clz(__rbit64(v26));
      v38 = (v26 - 1) & v26;
LABEL_23:
      v31 = v28 | (v23 << 6);
      v32 = (*(v10 + 48) + 16 * v31);
      v33 = v32[1];
      v34 = *(*(v10 + 56) + 8 * v31);
      v35 = (*(v17 + 48) + 16 * v31);
      *v35 = *v32;
      v35[1] = v33;
      *(*(v17 + 56) + 8 * v31) = v34;

      v27 = v37;
      v26 = v38;
    }

    while (v38);
  }

  v29 = v23;
  while (1)
  {
    v23 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v23 >= v27)
    {
      goto LABEL_25;
    }

    v30 = *&__src[8 * v23];
    ++v29;
    if (v30)
    {
      v28 = __clz(__rbit64(v30));
      v38 = (v30 - 1) & v30;
      goto LABEL_23;
    }
  }

  __break(1u);
  return result;
}

void postQueueNotifications(char *a1, int a2)
{
  v42 = *MEMORY[0x1E69E9840];
  v35 = *(a1 + 1);
  v3 = 24;
  if (a2)
  {
    v3 = 16;
  }

  v4 = *&a1[v3];
  if (a2)
  {
    v5 = (a1 + 16);
  }

  else
  {
    v5 = (a1 + 24);
  }

  if (![*v5 count])
  {
    return;
  }

  *v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (!v4)
  {
    return;
  }

  v33 = a1;
  Current = CFRunLoopGetCurrent();
  v7 = CFRunLoopCopyCurrentMode(Current);
  _CFAutoreleasePoolPush();
  v8 = [v4 count];
  if (v8 < 1)
  {
LABEL_30:
    v18 = v33;
    if ((a2 & 1) == 0)
    {
      postQueueNotifications(v33, 1);
    }

    goto LABEL_32;
  }

  v9 = v8;
  v10 = 0;
  v11 = 0;
  v34 = *MEMORY[0x1E695E8D0];
LABEL_10:
  v32 = v10;
  do
  {
    v12 = [v4 objectAtIndex:v11];
    v13 = [v4 objectAtIndex:v11 + 1];
    if (([v13 containsObject:v7] & 1) == 0 && (!objc_msgSend(v13, "containsObject:", v34) || !_CFRunLoop01()))
    {
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v14 = [v13 countByEnumeratingWithState:&v38 objects:&context count:16];
      if (!v14)
      {
LABEL_25:
        v11 += 2;
        continue;
      }

      v15 = v14;
      v16 = *v39;
LABEL_19:
      v17 = 0;
      while (1)
      {
        if (*v39 != v16)
        {
          objc_enumerationMutation(v13);
        }

        if (_CFRunLoopModeContainsMode())
        {
          break;
        }

        if (v15 == ++v17)
        {
          v15 = [v13 countByEnumeratingWithState:&v38 objects:&context count:16];
          if (v15)
          {
            goto LABEL_19;
          }

          goto LABEL_25;
        }
      }
    }

    [v35 postNotification:v12];
    [v4 removeObjectAtIndex:v11 + 1];
    [v4 removeObjectAtIndex:v11];
    v9 -= 2;
    if (!a2)
    {
      v10 = 1;
      postQueueNotifications(v33, 1);
      if (v11 < v9)
      {
        goto LABEL_10;
      }

      goto LABEL_29;
    }
  }

  while (v11 < v9);
  if ((v32 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_29:
  CFRunLoopWakeUp(Current);
  v18 = v33;
LABEL_32:
  _CFAutoreleasePoolPop();
  CFRelease(v7);
  if ([v4 count])
  {
    context.version = 0;
    context.info = v18;
    context.retain = MEMORY[0x1E695D7C8];
    context.release = MEMORY[0x1E695D7C0];
    context.copyDescription = MEMORY[0x1E695D768];
    if (a2)
    {
      v19 = 16;
    }

    else
    {
      v19 = 24;
    }

    if (a2)
    {
      v20 = 130;
    }

    else
    {
      v20 = 32;
    }

    if (a2)
    {
      v21 = __NSPostASAPQueueNotes;
    }

    else
    {
      v21 = __NSPostIdleQueueNotes;
    }

    v22 = CFRunLoopObserverCreate(0, v20, 0, 0, v21, &context);
    v23 = [v4 count];
    if (v23 >= 1)
    {
      v24 = v23;
      for (i = 0; i < v24; i += 2)
      {
        v26 = [v4 objectAtIndex:i | 1];
        v27 = [v26 count];
        if (v27 >= 1)
        {
          v28 = v27;
          for (j = 0; j != v28; ++j)
          {
            CFRunLoopAddObserver(Current, v22, [v26 objectAtIndex:j]);
          }
        }
      }
    }

    CFRelease(v22);
    if (*&v33[v19])
    {
      v30 = [v4 count];
      if (v30)
      {
        v31 = v30 - 1;
        do
        {
          [*&v33[v19] insertObject:objc_msgSend(v4 atIndex:{"objectAtIndex:", v31--), 0}];
        }

        while (v31 != -1);
      }

      goto LABEL_52;
    }

    *&v33[v19] = v4;
  }

  else
  {
LABEL_52:
  }
}

Swift::Void __swiftcall LocaleNotifications.reset()()
{
  if (one-time initialization token for cache != -1)
  {
LABEL_12:
    swift_once();
  }

  v1 = *(&static LocaleCache.cache + 1);
  v2 = qword_1ED4404B0;
  os_unfair_lock_lock((*(&static LocaleCache.cache + 1) + 32));
  swift_unknownObjectRelease();
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  os_unfair_lock_unlock((v1 + 32));
  os_unfair_lock_lock((v2 + 24));

  *(v2 + 16) = 0;
  os_unfair_lock_unlock((v2 + 24));
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v3 = static CalendarCache.cache;
  v4 = qword_1ED440450;
  os_unfair_lock_lock((static CalendarCache.cache + 32));
  swift_unknownObjectRelease();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  os_unfair_lock_unlock((v3 + 32));
  os_unfair_lock_lock((v4 + 24));

  *(v4 + 16) = MEMORY[0x1E69E7CC8];
  os_unfair_lock_unlock((v4 + 24));
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v5 = static TimeZoneCache.cache;
  os_unfair_lock_lock((static TimeZoneCache.cache + 120));
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  v6 = *(v5 + 80);
  *(v5 + 80) = 0;

  os_unfair_lock_unlock((v5 + 120));
  swift_unknownObjectRelease();
  v7 = *v0;
  do
  {
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      goto LABEL_12;
    }

    v8 = v7;
    atomic_compare_exchange_strong_explicit(v0, &v8, v7 + 1, memory_order_relaxed, memory_order_relaxed);
    v9 = v8 == v7;
    v7 = v8;
  }

  while (!v9);
}

BOOL specialized Sequence.allSatisfy(_:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    v15 = 1;
    goto LABEL_27;
  }

  v20 = a2 & 0xFFFFFFFFFFFFFFLL;
  v7 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;

  v8 = 0;
  do
  {
    if ((a2 & 0x1000000000000000) != 0)
    {
      v11 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
      v13 = v12;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v19[0] = a1;
        v19[1] = v20;
        v10 = v19 + v8;
      }

      else
      {
        v9 = v7;
        if ((a1 & 0x1000000000000000) == 0)
        {
          v9 = _StringObject.sharedUTF8.getter();
        }

        v10 = (v9 + v8);
      }

      v11 = *v10;
      if ((*v10 & 0x80000000) == 0)
      {
        goto LABEL_14;
      }

      v17 = (__clz(v11 ^ 0xFF) - 24);
      if (v17 > 2)
      {
        if (v17 == 3)
        {
          v11 = ((v11 & 0xF) << 12) | ((v10[1] & 0x3F) << 6) | v10[2] & 0x3F;
          v13 = 3;
        }

        else
        {
          v11 = ((v11 & 0xF) << 18) | ((v10[1] & 0x3F) << 12) | ((v10[2] & 0x3F) << 6) | v10[3] & 0x3F;
          v13 = 4;
        }

        goto LABEL_15;
      }

      if (v17 == 1)
      {
LABEL_14:
        v13 = 1;
      }

      else
      {
        v11 = v10[1] & 0x3F | ((v11 & 0x1F) << 6);
        v13 = 2;
      }
    }

LABEL_15:
    IsLongCharacterMember = CFCharacterSetIsLongCharacterMember(*(a3 + 16), v11);
    v15 = IsLongCharacterMember != 0;
    v8 += v13;
    if (IsLongCharacterMember)
    {
      v16 = v8 < v4;
    }

    else
    {
      v16 = 0;
    }
  }

  while (v16);

LABEL_27:

  return v15;
}

Swift::String_optional __swiftcall NSScanner.scanCharacter()()
{
  v1 = v0;
  v2 = [v0 charactersToBeSkipped];
  if (v2)
  {
    v3 = v2;
    [v3 copy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();

    type metadata accessor for CFCharacterSetRef(0);
    swift_dynamicCast();
    type metadata accessor for __CharacterSetStorage();
    v4 = swift_allocObject();
    *(v4 + 16) = v124;
    v123 = v4;
    *(v4 + 24) = 0;

    v5 = [v1 string];
    if (!v5)
    {
LABEL_20:
      v11 = 0;
      v13 = 0xE000000000000000;
      goto LABEL_42;
    }

    v6 = v5;
    isTaggedPointer = _objc_isTaggedPointer(v5);
    v8 = v6;
    v9 = v8;
    if (!isTaggedPointer)
    {
      goto LABEL_14;
    }

    TaggedPointerTag = _objc_getTaggedPointerTag(v8);
    if (TaggedPointerTag)
    {
      if (TaggedPointerTag != 22)
      {
        if (TaggedPointerTag == 2)
        {
          MEMORY[0x1EEE9AC00](TaggedPointerTag);
          v11 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v13 = v12;

          goto LABEL_42;
        }

LABEL_14:
        LOBYTE(v124) = 0;
        if (__CFStringIsCF())
        {

          goto LABEL_20;
        }

        v23 = v9;
        v24 = String.init(_nativeStorage:)();
        if (v25)
        {
          v11 = v24;
          v13 = v25;

          goto LABEL_42;
        }

        if (![v23 length])
        {

          goto LABEL_20;
        }

        v11 = String.init(_cocoaString:)();
        v13 = v35;
LABEL_41:

LABEL_42:
        v36 = [v1 string];
        v121 = v11;
        v122 = v13;
        if (!v36)
        {
LABEL_52:
          v42 = 0;
          v44 = 0xE000000000000000;
          goto LABEL_63;
        }

        v37 = v36;
        v38 = _objc_isTaggedPointer(v36);
        v39 = v37;
        v40 = v39;
        if ((v38 & 1) == 0)
        {
          goto LABEL_48;
        }

        v41 = _objc_getTaggedPointerTag(v39);
        if (v41)
        {
          if (v41 != 22)
          {
            if (v41 == 2)
            {
              MEMORY[0x1EEE9AC00](v41);
              v42 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
              v44 = v43;

              goto LABEL_63;
            }

LABEL_48:
            LOBYTE(v124) = 0;
            if (__CFStringIsCF())
            {

              goto LABEL_52;
            }

            v45 = v40;
            v46 = String.init(_nativeStorage:)();
            if (v47)
            {
              v42 = v46;
              v44 = v47;

              goto LABEL_63;
            }

            if (![v45 length])
            {

              goto LABEL_52;
            }

            v42 = String.init(_cocoaString:)();
            v44 = v50;
LABEL_62:

LABEL_63:
            v51 = v1;
            [v1 _deprecated_scanLocation];
            lazy protocol witness table accessor for type String and conformance String();
            v52 = StringProtocol._toUTF16Index(_:)();
            v53 = v52;
            v54 = HIBYTE(v44) & 0xF;
            if ((v44 & 0x2000000000000000) == 0)
            {
              v54 = v42 & 0xFFFFFFFFFFFFLL;
            }

            v55 = 4 * v54;
            if (4 * v54 != v52 >> 14)
            {
              v56 = 0;
              while (1)
              {
                String.Index.samePosition(in:)();
                if ((v57 & 1) == 0)
                {
                  goto LABEL_71;
                }

                if (__OFADD__(v56, 1))
                {
                  break;
                }

                if (__OFADD__([v1 _deprecated_scanLocation], v56 + 1))
                {
                  goto LABEL_168;
                }

                v53 = StringProtocol._toUTF16Index(_:)();
                ++v56;
                if (v55 == v53 >> 14)
                {
                  goto LABEL_71;
                }
              }

              __break(1u);
LABEL_168:
              __break(1u);
LABEL_169:
              __break(1u);
LABEL_170:
              __break(1u);
            }

LABEL_71:

            v58 = specialized Collection.suffix(from:)(v53, v121, v122);
            v60 = v59;

            if ((v58 ^ v60) >= 0x4000)
            {
              v61 = v58;
              while (1)
              {
                v62 = Substring.subscript.getter();
                v64 = v63;
                swift_retain_n();
                LOBYTE(v62) = specialized Sequence.allSatisfy(_:)(v62, v64, v123);

                if ((v62 & 1) == 0)
                {
                  break;
                }

                v61 = Substring.index(after:)();
                if ((v61 ^ v60) < 0x4000)
                {
                  goto LABEL_75;
                }
              }

              v66 = v51;
              v65 = &selRef_setPossessiveAdjectiveForm_;
              goto LABEL_117;
            }

LABEL_75:

            v65 = &selRef_setPossessiveAdjectiveForm_;
            v66 = v51;
            v67 = [v51 string];
            if (!v67)
            {

LABEL_84:
              v73 = 0;
              goto LABEL_85;
            }

            v68 = v67;
            v69 = _objc_isTaggedPointer(v67);
            v70 = v68;
            v71 = v70;
            if ((v69 & 1) == 0)
            {
              goto LABEL_81;
            }

            v72 = _objc_getTaggedPointerTag(v70);
            if (v72)
            {
              if (v72 != 22)
              {
                if (v72 == 2)
                {
                  MEMORY[0x1EEE9AC00](v72);
                  v73 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                  v75 = v74;

                  goto LABEL_99;
                }

LABEL_81:
                LOBYTE(v124) = 0;
                if (__CFStringIsCF())
                {
                  v73 = 0;

LABEL_85:
                  v75 = 0xE000000000000000;
                  goto LABEL_99;
                }

                v76 = v71;
                v77 = String.init(_nativeStorage:)();
                if (v78)
                {
                  v73 = v77;
                  v75 = v78;

                  goto LABEL_99;
                }

                if (![v76 length])
                {

                  goto LABEL_84;
                }

                v73 = String.init(_cocoaString:)();
                v75 = v81;
                goto LABEL_98;
              }

              v29 = [v71 UTF8String];
              if (!v29)
              {
LABEL_175:
                __break(1u);
                goto LABEL_176;
              }

              v79 = String.init(utf8String:)(v29);
              if (v80)
              {
LABEL_93:
                v73 = v79;
                v75 = v80;

                goto LABEL_99;
              }

              __break(1u);
            }

            _CFIndirectTaggedPointerStringGetContents();
            v79 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
            if (!v80)
            {
              [v71 mutableCopy];
              _bridgeAnyObjectToAny(_:)();

              swift_unknownObjectRelease();
              swift_dynamicCast();
              v73 = v124;
              v75 = v125;
LABEL_98:

LABEL_99:

              if ((v75 & 0x2000000000000000) != 0)
              {
                v82 = (HIBYTE(v75) & 0xF) << 16;
                if ((v75 & 0x1000000000000000) == 0)
                {
LABEL_105:
                  v61 = v82 | 7;
                  goto LABEL_117;
                }
              }

              else
              {
                v82 = v73 << 16;
                if ((v75 & 0x1000000000000000) == 0)
                {
                  goto LABEL_105;
                }
              }

              if ((v73 & 0x800000000000000) == 0)
              {
                v61 = v82 | 0xB;
                goto LABEL_117;
              }

              goto LABEL_105;
            }

            goto LABEL_93;
          }

          v29 = [v40 UTF8String];
          if (!v29)
          {
LABEL_173:
            __break(1u);
LABEL_174:
            __break(1u);
            goto LABEL_175;
          }

          v48 = String.init(utf8String:)(v29);
          if (v49)
          {
LABEL_57:
            v42 = v48;
            v44 = v49;

            goto LABEL_62;
          }

          __break(1u);
        }

        _CFIndirectTaggedPointerStringGetContents();
        v48 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
        if (!v49)
        {
          [v40 mutableCopy];
          _bridgeAnyObjectToAny(_:)();

          swift_unknownObjectRelease();
          swift_dynamicCast();
          v42 = v124;
          v44 = v125;
          goto LABEL_62;
        }

        goto LABEL_57;
      }

      v29 = [v9 UTF8String];
      if (!v29)
      {
LABEL_172:
        __break(1u);
        goto LABEL_173;
      }

      v31 = String.init(utf8String:)(v29);
      if (v32)
      {
LABEL_27:
        v11 = v31;
        v13 = v32;

        goto LABEL_41;
      }

      __break(1u);
    }

    _CFIndirectTaggedPointerStringGetContents();
    v31 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v32)
    {
      [v9 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v11 = v124;
      v13 = v125;
      goto LABEL_41;
    }

    goto LABEL_27;
  }

  v14 = [v0 string];
  if (!v14)
  {
    goto LABEL_28;
  }

  v15 = v14;
  v16 = _objc_isTaggedPointer(v14);
  v17 = v15;
  v18 = v17;
  if (!v16)
  {
    goto LABEL_16;
  }

  v19 = _objc_getTaggedPointerTag(v17);
  if (!v19)
  {
    goto LABEL_34;
  }

  if (v19 == 22)
  {
    v29 = [v18 UTF8String];
    if (!v29)
    {
LABEL_176:
      __break(1u);
      goto LABEL_177;
    }

    v33 = String.init(utf8String:)(v29);
    if (v34)
    {
LABEL_35:
      v20 = v33;
      v22 = v34;

      goto LABEL_107;
    }

    __break(1u);
LABEL_34:
    _CFIndirectTaggedPointerStringGetContents();
    v33 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v34)
    {
      [v18 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v20 = v124;
      v22 = v125;
      goto LABEL_107;
    }

    goto LABEL_35;
  }

  if (v19 != 2)
  {
LABEL_16:
    LOBYTE(v124) = 0;
    if (__CFStringIsCF())
    {

LABEL_28:
      v20 = 0;
      v22 = 0xE000000000000000;
      goto LABEL_108;
    }

    v26 = v18;
    v27 = String.init(_nativeStorage:)();
    if (v28)
    {
      v20 = v27;
      v22 = v28;

      goto LABEL_108;
    }

    if (![v26 length])
    {

      goto LABEL_28;
    }

    v20 = String.init(_cocoaString:)();
    v22 = v83;
LABEL_107:

    goto LABEL_108;
  }

  MEMORY[0x1EEE9AC00](v19);
  v20 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
  v22 = v21;

LABEL_108:
  v84 = v1;
  [v1 _deprecated_scanLocation];
  lazy protocol witness table accessor for type String and conformance String();
  v85 = StringProtocol._toUTF16Index(_:)();
  v61 = v85;
  v86 = HIBYTE(v22) & 0xF;
  if ((v22 & 0x2000000000000000) == 0)
  {
    v86 = v20 & 0xFFFFFFFFFFFFLL;
  }

  v87 = 4 * v86;
  if (4 * v86 != v85 >> 14)
  {
    v88 = 0;
    do
    {
      String.Index.samePosition(in:)();
      if ((v89 & 1) == 0)
      {
        break;
      }

      if (__OFADD__(v88, 1))
      {
        goto LABEL_169;
      }

      if (__OFADD__([v84 _deprecated_scanLocation], v88 + 1))
      {
        goto LABEL_170;
      }

      v61 = StringProtocol._toUTF16Index(_:)();
      ++v88;
    }

    while (v87 != v61 >> 14);
  }

  v66 = v84;
  v65 = &selRef_setPossessiveAdjectiveForm_;
LABEL_117:
  v90 = [v66 v65[203]];
  if (!v90)
  {
LABEL_129:
    v98 = 0xE000000000000000;
    goto LABEL_142;
  }

  v91 = v90;
  v92 = _objc_isTaggedPointer(v90);
  v93 = v91;
  v94 = v93;
  if (!v92)
  {
    goto LABEL_124;
  }

  v95 = _objc_getTaggedPointerTag(v93);
  if (!v95)
  {
    goto LABEL_134;
  }

  if (v95 == 22)
  {
    v29 = [v94 UTF8String];
    if (v29)
    {
      v103 = String.init(utf8String:)(v29);
      if (v104)
      {
LABEL_135:
        v96 = v103;
        v98 = v104;

        if ((v98 & 0x2000000000000000) != 0)
        {
          goto LABEL_142;
        }

        goto LABEL_130;
      }

      __break(1u);
LABEL_134:
      _CFIndirectTaggedPointerStringGetContents();
      v103 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v104)
      {
        [v94 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v96 = v124;
        v98 = v125;

        if ((v125 & 0x2000000000000000) == 0)
        {
          goto LABEL_130;
        }

        goto LABEL_142;
      }

      goto LABEL_135;
    }

    __break(1u);
    goto LABEL_172;
  }

  if (v95 != 2)
  {
LABEL_124:
    if (__CFStringIsCF())
    {

      goto LABEL_129;
    }

    v99 = v94;
    v100 = String.init(_nativeStorage:)();
    if (v101)
    {
      v96 = v100;
      v98 = v101;

      if ((v98 & 0x2000000000000000) == 0)
      {
        goto LABEL_130;
      }

      goto LABEL_142;
    }

    if (![v99 length])
    {

      goto LABEL_129;
    }

    v96 = String.init(_cocoaString:)();
    v98 = v105;

    if ((v98 & 0x2000000000000000) != 0)
    {
      goto LABEL_142;
    }

LABEL_130:
    v102 = v96 & 0xFFFFFFFFFFFFLL;
    goto LABEL_143;
  }

  MEMORY[0x1EEE9AC00](v95);
  v96 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
  v98 = v97;

  if ((v98 & 0x2000000000000000) == 0)
  {
    goto LABEL_130;
  }

LABEL_142:
  v102 = HIBYTE(v98) & 0xF;
LABEL_143:
  if (v61 >> 14 != 4 * v102)
  {
    v106 = String.subscript.getter();
    v108 = v107;
    String.index(after:)();

    v109 = [v66 v65[203]];
    if (!v109)
    {
      goto LABEL_166;
    }

    v110 = v109;
    v111 = _objc_isTaggedPointer(v109);
    v112 = v110;
    v113 = v112;
    if (!v111)
    {
LABEL_151:
      if (__CFStringIsCF())
      {

        goto LABEL_166;
      }

      v115 = v113;
      String.init(_nativeStorage:)();
      if (v116)
      {

        goto LABEL_166;
      }

      if (![v115 length])
      {

        goto LABEL_166;
      }

      String.init(_cocoaString:)();
LABEL_165:

      goto LABEL_166;
    }

    v114 = _objc_getTaggedPointerTag(v112);
    if (!v114)
    {
      goto LABEL_158;
    }

    if (v114 != 22)
    {
      if (v114 == 2)
      {
        MEMORY[0x1EEE9AC00](v114);
        String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

LABEL_166:
        lazy protocol witness table accessor for type String and conformance String();
        v119 = StringProtocol._toUTF16Offset(_:)();

        [v66 _deprecated_setScanLocation_];
        v29 = v106;
        v30 = v108;
        goto LABEL_177;
      }

      goto LABEL_151;
    }

    v29 = [v113 UTF8String];
    if (v29)
    {
      String.init(utf8String:)(v29);
      if (v117)
      {
LABEL_159:

        goto LABEL_165;
      }

      __break(1u);
LABEL_158:
      _CFIndirectTaggedPointerStringGetContents();
      _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v118)
      {
        [v113 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        goto LABEL_165;
      }

      goto LABEL_159;
    }

    goto LABEL_174;
  }

  v29 = 0;
  v30 = 0;
LABEL_177:
  result.value._object = v30;
  result.value._countAndFlagsBits = v29;
  return result;
}

uint64_t _NSRange.init<A, B>(_:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  dispatch thunk of RangeExpression.relative<A>(to:)();
  v8 = StringProtocol._toUTF16Offsets(_:)();
  v10 = v9;
  (*(*(a4 - 8) + 8))(a2, a4);
  result = (*(*(a3 - 8) + 8))(a1, a3);
  if (!__OFSUB__(v10, v8))
  {
    return v8;
  }

  __break(1u);
  return result;
}

id NSScanner.currentIndex.getter()
{
  v1 = v0;
  v2 = [v0 string];
  if (!v2)
  {
    goto LABEL_11;
  }

  v3 = v2;
  isTaggedPointer = _objc_isTaggedPointer(v2);
  v5 = v3;
  v6 = v5;
  if (!isTaggedPointer)
  {
    goto LABEL_7;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v5);
  if (!TaggedPointerTag)
  {
    goto LABEL_15;
  }

  if (TaggedPointerTag == 22)
  {
    result = [v6 UTF8String];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v15 = String.init(utf8String:)(result);
    if (v16)
    {
LABEL_16:
      v8 = v15;
      v10 = v16;

      goto LABEL_21;
    }

    __break(1u);
LABEL_15:
    _CFIndirectTaggedPointerStringGetContents();
    v15 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v16)
    {
      [v6 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v8 = v24;
      v10 = v25;
      goto LABEL_21;
    }

    goto LABEL_16;
  }

  if (TaggedPointerTag != 2)
  {
LABEL_7:
    LOBYTE(v24) = 0;
    if (__CFStringIsCF())
    {

LABEL_11:
      v8 = 0;
      v10 = 0xE000000000000000;
      goto LABEL_22;
    }

    v11 = v6;
    v12 = String.init(_nativeStorage:)();
    if (v13)
    {
      v8 = v12;
      v10 = v13;

      goto LABEL_22;
    }

    if (![v11 length])
    {

      goto LABEL_11;
    }

    v8 = String.init(_cocoaString:)();
    v10 = v17;
LABEL_21:

    goto LABEL_22;
  }

  MEMORY[0x1EEE9AC00](TaggedPointerTag);
  v8 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
  v10 = v9;

LABEL_22:
  [v1 _deprecated_scanLocation];
  lazy protocol witness table accessor for type String and conformance String();
  v18 = StringProtocol._toUTF16Index(_:)();
  v19 = v18;
  v20 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v20 = v8 & 0xFFFFFFFFFFFFLL;
  }

  v21 = 4 * v20;
  if (4 * v20 != v18 >> 14)
  {
    v22 = 0;
    do
    {
      String.Index.samePosition(in:)();
      if ((v23 & 1) == 0)
      {
        break;
      }

      if (__OFADD__(v22, 1))
      {
        __break(1u);
LABEL_32:
        __break(1u);
      }

      if (__OFADD__([v1 _deprecated_scanLocation], v22 + 1))
      {
        goto LABEL_32;
      }

      v19 = StringProtocol._toUTF16Index(_:)();
      ++v22;
    }

    while (v21 != v19 >> 14);
  }

  return v19;
}

id NSScanner.scanUpToCharacters(from:)(uint64_t *a1)
{
  v2 = v1;
  v134 = *a1;
  v3 = [v1 charactersToBeSkipped];
  v135 = v1;
  if (!v3)
  {
    v15 = [v1 string];
    if (!v15)
    {
LABEL_28:
      v21 = 0;
      v23 = 0xE000000000000000;
      goto LABEL_107;
    }

    v16 = v15;
    isTaggedPointer = _objc_isTaggedPointer(v15);
    v18 = v16;
    v19 = v18;
    if (!isTaggedPointer)
    {
      goto LABEL_16;
    }

    TaggedPointerTag = _objc_getTaggedPointerTag(v18);
    if (TaggedPointerTag)
    {
      if (TaggedPointerTag != 22)
      {
        if (TaggedPointerTag == 2)
        {
          MEMORY[0x1EEE9AC00](TaggedPointerTag);
          v21 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v23 = v22;

          goto LABEL_107;
        }

LABEL_16:
        LOBYTE(v136) = 0;
        if (__CFStringIsCF())
        {

          goto LABEL_28;
        }

        v27 = v19;
        v28 = String.init(_nativeStorage:)();
        if (v29)
        {
          v21 = v28;
          v23 = v29;

          goto LABEL_107;
        }

        if (![v27 length])
        {

          goto LABEL_28;
        }

        v21 = String.init(_cocoaString:)();
        v23 = v81;
LABEL_106:

LABEL_107:
        [v2 _deprecated_scanLocation];
        lazy protocol witness table accessor for type String and conformance String();
        v82 = StringProtocol._toUTF16Index(_:)();
        v60 = v82;
        v83 = HIBYTE(v23) & 0xF;
        if ((v23 & 0x2000000000000000) == 0)
        {
          v83 = v21 & 0xFFFFFFFFFFFFLL;
        }

        v84 = 4 * v83;
        if (4 * v83 != v82 >> 14)
        {
          v85 = 0;
          while (1)
          {
            String.Index.samePosition(in:)();
            if ((v86 & 1) == 0)
            {
              break;
            }

            if (__OFADD__(v85, 1))
            {
              goto LABEL_175;
            }

            if (__OFADD__([v135 _deprecated_scanLocation], v85 + 1))
            {
              goto LABEL_176;
            }

            v60 = StringProtocol._toUTF16Index(_:)();
            ++v85;
            if (v84 == v60 >> 14)
            {
              goto LABEL_115;
            }
          }
        }

        goto LABEL_115;
      }

      result = [v19 UTF8String];
      if (!result)
      {
LABEL_183:
        __break(1u);
        return result;
      }

      v33 = String.init(utf8String:)(result);
      if (v34)
      {
LABEL_35:
        v21 = v33;
        v23 = v34;

        goto LABEL_106;
      }

      __break(1u);
    }

    _CFIndirectTaggedPointerStringGetContents();
    v33 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v34)
    {
      [v19 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v21 = v136;
      v23 = v137;
      goto LABEL_106;
    }

    goto LABEL_35;
  }

  v4 = v3;
  [v4 copy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();

  type metadata accessor for CFCharacterSetRef(0);
  swift_dynamicCast();
  type metadata accessor for __CharacterSetStorage();
  v5 = swift_allocObject();
  *(v5 + 16) = v136;
  *(v5 + 24) = 0;

  v6 = [v1 string];
  if (!v6)
  {
LABEL_20:
    v12 = 0;
    v14 = 0xE000000000000000;
    goto LABEL_42;
  }

  v7 = v6;
  v8 = _objc_isTaggedPointer(v6);
  v9 = v7;
  v10 = v9;
  if (!v8)
  {
    goto LABEL_14;
  }

  v11 = _objc_getTaggedPointerTag(v9);
  switch(v11)
  {
    case 0:
      goto LABEL_26;
    case 0x16:
      result = [v10 UTF8String];
      if (!result)
      {
LABEL_179:
        __break(1u);
        goto LABEL_180;
      }

      v31 = String.init(utf8String:)(result);
      if (v32)
      {
LABEL_27:
        v12 = v31;
        v14 = v32;

        goto LABEL_41;
      }

      __break(1u);
LABEL_26:
      _CFIndirectTaggedPointerStringGetContents();
      v31 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v32)
      {
        [v10 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v12 = v136;
        v14 = v137;
        goto LABEL_41;
      }

      goto LABEL_27;
    case 2:
      MEMORY[0x1EEE9AC00](v11);
      v12 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v14 = v13;

      goto LABEL_42;
  }

LABEL_14:
  LOBYTE(v136) = 0;
  if (__CFStringIsCF())
  {

    goto LABEL_20;
  }

  v24 = v10;
  v25 = String.init(_nativeStorage:)();
  if (v26)
  {
    v12 = v25;
    v14 = v26;

    goto LABEL_42;
  }

  if (![v24 length])
  {

    goto LABEL_20;
  }

  v12 = String.init(_cocoaString:)();
  v14 = v35;
LABEL_41:

LABEL_42:
  v36 = [v2 string];
  v131 = v12;
  if (!v36)
  {
LABEL_52:
    v42 = 0;
    v44 = 0xE000000000000000;
    goto LABEL_63;
  }

  v37 = v36;
  v38 = _objc_isTaggedPointer(v36);
  v39 = v37;
  v40 = v39;
  if ((v38 & 1) == 0)
  {
    goto LABEL_48;
  }

  v41 = _objc_getTaggedPointerTag(v39);
  switch(v41)
  {
    case 0:
      goto LABEL_56;
    case 0x16:
      result = [v40 UTF8String];
      if (!result)
      {
LABEL_180:
        __break(1u);
LABEL_181:
        __break(1u);
        goto LABEL_182;
      }

      v48 = String.init(utf8String:)(result);
      if (v49)
      {
LABEL_57:
        v42 = v48;
        v44 = v49;

        goto LABEL_62;
      }

      __break(1u);
LABEL_56:
      _CFIndirectTaggedPointerStringGetContents();
      v48 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v49)
      {
        [v40 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v42 = v136;
        v44 = v137;
        goto LABEL_62;
      }

      goto LABEL_57;
    case 2:
      MEMORY[0x1EEE9AC00](v41);
      v42 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v44 = v43;

      goto LABEL_63;
  }

LABEL_48:
  LOBYTE(v136) = 0;
  if (__CFStringIsCF())
  {

    goto LABEL_52;
  }

  v45 = v40;
  v46 = String.init(_nativeStorage:)();
  if (v47)
  {
    v42 = v46;
    v44 = v47;

    goto LABEL_63;
  }

  if (![v45 length])
  {

    goto LABEL_52;
  }

  v42 = String.init(_cocoaString:)();
  v44 = v50;
LABEL_62:

LABEL_63:
  v132 = v14;
  [v2 _deprecated_scanLocation];
  lazy protocol witness table accessor for type String and conformance String();
  v51 = StringProtocol._toUTF16Index(_:)();
  v52 = v51;
  v53 = HIBYTE(v44) & 0xF;
  if ((v44 & 0x2000000000000000) == 0)
  {
    v53 = v42 & 0xFFFFFFFFFFFFLL;
  }

  v54 = 4 * v53;
  if (4 * v53 != v51 >> 14)
  {
    v55 = 0;
    while (1)
    {
      String.Index.samePosition(in:)();
      if ((v56 & 1) == 0)
      {
        goto LABEL_71;
      }

      if (__OFADD__(v55, 1))
      {
        break;
      }

      if (__OFADD__([v135 _deprecated_scanLocation], v55 + 1))
      {
        goto LABEL_174;
      }

      v52 = StringProtocol._toUTF16Index(_:)();
      ++v55;
      if (v54 == v52 >> 14)
      {
        goto LABEL_71;
      }
    }

    __break(1u);
LABEL_174:
    __break(1u);
LABEL_175:
    __break(1u);
LABEL_176:
    __break(1u);
LABEL_177:
    __break(1u);
  }

LABEL_71:

  v57 = specialized Collection.suffix(from:)(v52, v131, v132);
  v59 = v58;

  if ((v57 ^ v59) < 0x4000)
  {
LABEL_75:

    v64 = v135;
    v65 = [v135 string];
    if (!v65)
    {

      goto LABEL_84;
    }

    v66 = v65;
    v67 = _objc_isTaggedPointer(v65);
    v68 = v66;
    v69 = v68;
    if ((v67 & 1) == 0)
    {
      goto LABEL_81;
    }

    v70 = _objc_getTaggedPointerTag(v68);
    if (v70)
    {
      if (v70 != 22)
      {
        if (v70 == 2)
        {
          MEMORY[0x1EEE9AC00](v70);
          v71 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v73 = v72;

          goto LABEL_98;
        }

LABEL_81:
        LOBYTE(v136) = 0;
        if (__CFStringIsCF())
        {

LABEL_84:
          v71 = 0;
          v73 = 0xE000000000000000;
          goto LABEL_98;
        }

        v74 = v69;
        v75 = String.init(_nativeStorage:)();
        if (v76)
        {
          v71 = v75;
          v73 = v76;

          goto LABEL_98;
        }

        if (![v74 length])
        {

          goto LABEL_84;
        }

        v71 = String.init(_cocoaString:)();
        v73 = v79;
        goto LABEL_97;
      }

      result = [v69 UTF8String];
      if (!result)
      {
LABEL_182:
        __break(1u);
        goto LABEL_183;
      }

      v77 = String.init(utf8String:)(result);
      if (v78)
      {
LABEL_92:
        v71 = v77;
        v73 = v78;

        goto LABEL_98;
      }

      __break(1u);
    }

    _CFIndirectTaggedPointerStringGetContents();
    v77 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v78)
    {
      [v69 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v71 = v136;
      v73 = v137;
LABEL_97:

LABEL_98:

      if ((v73 & 0x2000000000000000) != 0)
      {
        v80 = (HIBYTE(v73) & 0xF) << 16;
        if ((v73 & 0x1000000000000000) == 0)
        {
LABEL_104:
          v60 = v80 | 7;
          goto LABEL_116;
        }
      }

      else
      {
        v80 = v71 << 16;
        if ((v73 & 0x1000000000000000) == 0)
        {
          goto LABEL_104;
        }
      }

      if ((v71 & 0x800000000000000) == 0)
      {
        v60 = v80 | 0xB;
        goto LABEL_116;
      }

      goto LABEL_104;
    }

    goto LABEL_92;
  }

  v60 = v57;
  while (1)
  {
    v61 = Substring.subscript.getter();
    v63 = v62;
    swift_retain_n();
    LOBYTE(v61) = specialized Sequence.allSatisfy(_:)(v61, v63, v5);

    if ((v61 & 1) == 0)
    {
      break;
    }

    v60 = Substring.index(after:)();
    if ((v60 ^ v59) < 0x4000)
    {
      goto LABEL_75;
    }
  }

LABEL_115:

  v64 = v135;
LABEL_116:
  v87 = [v64 string];
  if (!v87)
  {
LABEL_126:
    v93 = 0;
    v95 = 0xE000000000000000;
    goto LABEL_137;
  }

  v88 = v87;
  v89 = _objc_isTaggedPointer(v87);
  v90 = v88;
  v91 = v90;
  if (!v89)
  {
    goto LABEL_122;
  }

  v92 = _objc_getTaggedPointerTag(v90);
  switch(v92)
  {
    case 0:
      goto LABEL_130;
    case 0x16:
      result = [v91 UTF8String];
      if (result)
      {
        v99 = String.init(utf8String:)(result);
        if (v100)
        {
LABEL_131:
          v93 = v99;
          v95 = v100;

          goto LABEL_136;
        }

        __break(1u);
LABEL_130:
        _CFIndirectTaggedPointerStringGetContents();
        v99 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
        if (!v100)
        {
          [v91 mutableCopy];
          _bridgeAnyObjectToAny(_:)();

          swift_unknownObjectRelease();
          swift_dynamicCast();
          v93 = v136;
          v95 = v137;
          goto LABEL_136;
        }

        goto LABEL_131;
      }

      __break(1u);
      goto LABEL_179;
    case 2:
      MEMORY[0x1EEE9AC00](v92);
      v93 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v95 = v94;

      goto LABEL_137;
  }

LABEL_122:
  if (__CFStringIsCF())
  {

    goto LABEL_126;
  }

  v96 = v91;
  v97 = String.init(_nativeStorage:)();
  if (v98)
  {
    v93 = v97;
    v95 = v98;

    goto LABEL_137;
  }

  if (![v96 length])
  {

    goto LABEL_126;
  }

  v93 = String.init(_cocoaString:)();
  v95 = v101;
LABEL_136:

LABEL_137:
  v133 = v93;
  v102 = specialized Collection.suffix(from:)(v60, v93, v95);
  if ((v102 ^ v103) < 0x4000)
  {
LABEL_141:

    v109 = HIBYTE(v95) & 0xF;
    if ((v95 & 0x2000000000000000) == 0)
    {
      v109 = v133;
    }

    v110 = v109 << 16;
    v111 = v135;
    if ((v95 & 0x1000000000000000) == 0 || (v133 & 0x800000000000000) != 0)
    {
      v105 = v110 | 7;
    }

    else
    {
      v105 = v110 | 0xB;
    }
  }

  else
  {
    v104 = v103;
    v105 = v102;
    while (1)
    {
      v106 = Substring.subscript.getter();
      v108 = v107;

      LOBYTE(v106) = specialized Sequence.allSatisfy(_:)(v106, v108, v134);

      if (v106)
      {
        break;
      }

      v105 = Substring.index(after:)();
      if (!((v105 ^ v104) >> 14))
      {
        goto LABEL_141;
      }
    }

    v111 = v135;
  }

  if (v60 >> 14 == v105 >> 14)
  {

    return 0;
  }

  v112 = [v111 string];
  if (!v112)
  {
    goto LABEL_171;
  }

  v113 = v112;
  v114 = _objc_isTaggedPointer(v112);
  v115 = v113;
  v116 = v115;
  if (!v114)
  {
    goto LABEL_156;
  }

  v117 = _objc_getTaggedPointerTag(v115);
  if (!v117)
  {
    goto LABEL_164;
  }

  if (v117 == 22)
  {
    result = [v116 UTF8String];
    if (result)
    {
      String.init(utf8String:)(result);
      if (v120)
      {
LABEL_165:

        goto LABEL_170;
      }

      __break(1u);
LABEL_164:
      _CFIndirectTaggedPointerStringGetContents();
      _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v121)
      {
        [v116 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        goto LABEL_170;
      }

      goto LABEL_165;
    }

    goto LABEL_181;
  }

  if (v117 != 2)
  {
LABEL_156:
    if (__CFStringIsCF())
    {

      goto LABEL_171;
    }

    v118 = v116;
    String.init(_nativeStorage:)();
    if (v119 || ![v118 length])
    {

      goto LABEL_171;
    }

    String.init(_cocoaString:)();
LABEL_170:

    goto LABEL_171;
  }

  MEMORY[0x1EEE9AC00](v117);
  String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

LABEL_171:
  lazy protocol witness table accessor for type String and conformance String();
  v122 = StringProtocol._toUTF16Offset(_:)();

  [v111 _deprecated_setScanLocation_];
  if (v105 >> 14 < v60 >> 14)
  {
    goto LABEL_177;
  }

  v123 = String.subscript.getter();
  v125 = v124;
  v127 = v126;
  v129 = v128;

  v130 = MEMORY[0x1865CAE80](v123, v125, v127, v129);

  return v130;
}

uint64_t NSScanner.scanInt(representation:)(char *a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v7[0] = 0x7FFFFFFFFFFFFFFFLL;
  if (v2)
  {
    v6 = -1;
    v3 = v1;
    if ([v3 scanHexLongLong_])
    {
      v4 = v6;
      if (v6 < 0)
      {
        v4 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v7[0] = v6;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v3 = v1;
    if ([v3 scanLongLong_])
    {
      v4 = v7[0];
LABEL_9:

      return v4;
    }
  }

  return 0;
}

uint64_t NSScanner.scanInt64(representation:)(char *a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v7[0] = 0x7FFFFFFFFFFFFFFFLL;
  if (v2)
  {
    v6 = -1;
    v3 = v1;
    if ([v3 scanHexLongLong_])
    {
      v4 = v6;
      if (v6 < 0)
      {
        v4 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v7[0] = v6;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v3 = v1;
    if ([v3 scanLongLong_])
    {
      v4 = v7[0];
LABEL_9:

      return v4;
    }
  }

  return 0;
}

id thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error, @guaranteed String) -> (@out Any?)(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  static String._unconditionallyBridgeFromObjectiveC(_:)(a3);

  v5 = a2;
  v4(v14);

  v6 = v15;
  if (v15)
  {
    v7 = __swift_project_boxed_opaque_existential_1(v14, v15);
    v8 = *(v6 - 8);
    v9 = MEMORY[0x1EEE9AC00](v7);
    v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v11, v9);
    v12 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v8 + 8))(v11, v6);
    __swift_destroy_boxed_opaque_existential_1(v14);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

uint64_t closure #1 in closure #1 in _getErrorDefaultUserInfo<A>(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v139 = *MEMORY[0x1E69E9840];
  isTaggedPointer = _objc_isTaggedPointer(@"NSLocalizedDescription");
  v9 = @"NSLocalizedDescription";
  v10 = v9;
  if (!isTaggedPointer)
  {
    goto LABEL_7;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v9);
  switch(TaggedPointerTag)
  {
    case 0:
      _CFIndirectTaggedPointerStringGetContents();
      v22 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v23)
      {
        [(__CFString *)v10 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v14 = v135;
        if (v134 != a2)
        {
          goto LABEL_28;
        }

        goto LABEL_26;
      }

      v14 = v23;
      v21 = v22;
LABEL_23:

      if (v21 != a2)
      {
        goto LABEL_28;
      }

      goto LABEL_26;
    case 0x16:
      result = [(__CFString *)v10 UTF8String];
      if (result)
      {
        result = String.init(utf8String:)(result);
        if (v20)
        {
          v21 = result;
          v14 = v20;
          goto LABEL_23;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_174;
    case 2:
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      v12 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v14 = v13;

      if (v12 != a2)
      {
        goto LABEL_28;
      }

      goto LABEL_26;
  }

LABEL_7:
  LOBYTE(v134) = 0;
  *&v136 = 0;
  if (__CFStringIsCF())
  {

    goto LABEL_12;
  }

  v15 = v10;
  v16 = String.init(_nativeStorage:)();
  if (v17)
  {
    v14 = v17;
    v18 = v16;

    if (v18 != a2)
    {
      goto LABEL_28;
    }

    goto LABEL_26;
  }

  *&v136 = [(__CFString *)v15 length];
  if (!v136)
  {

LABEL_12:
    v14 = 0xE000000000000000;
    if (a2)
    {
      goto LABEL_28;
    }

    goto LABEL_26;
  }

  v24 = String.init(_cocoaString:)();
  v14 = v25;
  if (v24 != a2)
  {
    goto LABEL_28;
  }

LABEL_26:
  if (v14 == a3)
  {

    goto LABEL_29;
  }

LABEL_28:
  v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v26)
  {
LABEL_29:
    v27 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14LocalizedError_pMd);
    if (swift_dynamicCast())
    {
      v28 = *(&v137 + 1);
      v29 = v138;
      __swift_project_boxed_opaque_existential_1(&v136, *(&v137 + 1));
      v30 = (*(v29 + 16))(v28, v29);
      if (v31)
      {
LABEL_31:
        *(a4 + 24) = MEMORY[0x1E69E6158];
        *a4 = v30;
        *(a4 + 8) = v31;
        return __swift_destroy_boxed_opaque_existential_1(&v136);
      }

      goto LABEL_63;
    }

    goto LABEL_118;
  }

  v32 = _objc_isTaggedPointer(@"NSLocalizedFailureReason");
  v33 = @"NSLocalizedFailureReason";
  v34 = v33;
  if (!v32)
  {
    goto LABEL_39;
  }

  v35 = _objc_getTaggedPointerTag(v33);
  switch(v35)
  {
    case 0:
      _CFIndirectTaggedPointerStringGetContents();
      v45 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v46)
      {
        [(__CFString *)v34 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v38 = v135;
        if (v134 != a2)
        {
          goto LABEL_60;
        }

        goto LABEL_58;
      }

      v38 = v46;
      v44 = v45;
LABEL_55:

      if (v44 != a2)
      {
        goto LABEL_60;
      }

      goto LABEL_58;
    case 0x16:
      result = [(__CFString *)v34 UTF8String];
      if (result)
      {
        result = String.init(utf8String:)(result);
        if (v43)
        {
          v44 = result;
          v38 = v43;
          goto LABEL_55;
        }

LABEL_175:
        __break(1u);
        goto LABEL_176;
      }

LABEL_174:
      __break(1u);
      goto LABEL_175;
    case 2:
      MEMORY[0x1EEE9AC00](v35);
      v36 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v38 = v37;

      if (v36 != a2)
      {
        goto LABEL_60;
      }

      goto LABEL_58;
  }

LABEL_39:
  LOBYTE(v134) = 0;
  *&v136 = 0;
  if (__CFStringIsCF())
  {

    goto LABEL_44;
  }

  v39 = v34;
  v40 = String.init(_nativeStorage:)();
  if (v41)
  {
    v38 = v41;
    v42 = v40;

    if (v42 != a2)
    {
      goto LABEL_60;
    }

    goto LABEL_58;
  }

  *&v136 = [(__CFString *)v39 length];
  if (!v136)
  {

LABEL_44:
    v38 = 0xE000000000000000;
    if (a2)
    {
      goto LABEL_60;
    }

    goto LABEL_58;
  }

  v47 = String.init(_cocoaString:)();
  v38 = v48;
  if (v47 != a2)
  {
    goto LABEL_60;
  }

LABEL_58:
  if (v38 == a3)
  {

    goto LABEL_61;
  }

LABEL_60:
  v49 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v49)
  {
LABEL_61:
    v50 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14LocalizedError_pMd);
    if (swift_dynamicCast())
    {
      v51 = *(&v137 + 1);
      v52 = v138;
      __swift_project_boxed_opaque_existential_1(&v136, *(&v137 + 1));
      v30 = (*(v52 + 24))(v51, v52);
      if (v31)
      {
        goto LABEL_31;
      }

      goto LABEL_63;
    }

LABEL_118:
    v138 = 0;
    v136 = 0u;
    v137 = 0u;
    v95 = &_s10Foundation14LocalizedError_pSgMd;
LABEL_119:
    result = outlined destroy of TermOfAddress?(&v136, v95);
    goto LABEL_120;
  }

  v53 = _objc_isTaggedPointer(@"NSLocalizedRecoverySuggestion");
  v54 = @"NSLocalizedRecoverySuggestion";
  v55 = v54;
  if (!v53)
  {
LABEL_69:
    LOBYTE(v134) = 0;
    *&v136 = 0;
    if (__CFStringIsCF())
    {
    }

    else
    {
      v61 = v55;
      v62 = String.init(_nativeStorage:)();
      if (v63)
      {
        v59 = v63;
        v64 = v62;

        v60 = v64;
        goto LABEL_84;
      }

      *&v136 = [(__CFString *)v61 length];
      if (v136)
      {
        v60 = String.init(_cocoaString:)();
        v59 = v69;
        goto LABEL_84;
      }
    }

    v60 = 0;
    v59 = 0xE000000000000000;
    goto LABEL_84;
  }

  v56 = _objc_getTaggedPointerTag(v54);
  if (!v56)
  {
    _CFIndirectTaggedPointerStringGetContents();
    v67 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v68)
    {
      [(__CFString *)v55 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v60 = v134;
      v59 = v135;
      goto LABEL_84;
    }

    v59 = v68;
    v66 = v67;
LABEL_82:

    v60 = v66;
    goto LABEL_84;
  }

  if (v56 == 22)
  {
    result = [(__CFString *)v55 UTF8String];
    if (result)
    {
      result = String.init(utf8String:)(result);
      if (v65)
      {
        v66 = result;
        v59 = v65;
        goto LABEL_82;
      }

LABEL_177:
      __break(1u);
      goto LABEL_178;
    }

LABEL_176:
    __break(1u);
    goto LABEL_177;
  }

  if (v56 != 2)
  {
    goto LABEL_69;
  }

  MEMORY[0x1EEE9AC00](v56);
  v57 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
  v59 = v58;

  v60 = v57;
LABEL_84:
  if (v60 == a2 && v59 == a3)
  {

LABEL_88:
    v71 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14LocalizedError_pMd);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_118;
    }

    v72 = *(&v137 + 1);
    v73 = v138;
    __swift_project_boxed_opaque_existential_1(&v136, *(&v137 + 1));
    v30 = (*(v73 + 32))(v72, v73);
    if (v31)
    {
      goto LABEL_31;
    }

LABEL_63:
    result = __swift_destroy_boxed_opaque_existential_1(&v136);
LABEL_120:
    *a4 = 0u;
    *(a4 + 16) = 0u;
    return result;
  }

  v70 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v70)
  {
    goto LABEL_88;
  }

  v74 = _objc_isTaggedPointer(@"NSHelpAnchor");
  v75 = @"NSHelpAnchor";
  v76 = v75;
  if (!v74)
  {
LABEL_96:
    LOBYTE(v134) = 0;
    *&v136 = 0;
    if (__CFStringIsCF())
    {
    }

    else
    {
      v82 = v76;
      v83 = String.init(_nativeStorage:)();
      if (v84)
      {
        v80 = v84;
        v85 = v83;

        v81 = v85;
        goto LABEL_111;
      }

      *&v136 = [(__CFString *)v82 length];
      if (v136)
      {
        v81 = String.init(_cocoaString:)();
        v80 = v90;
        goto LABEL_111;
      }
    }

    v81 = 0;
    v80 = 0xE000000000000000;
    goto LABEL_111;
  }

  v77 = _objc_getTaggedPointerTag(v75);
  if (!v77)
  {
    _CFIndirectTaggedPointerStringGetContents();
    v88 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v89)
    {
      [(__CFString *)v76 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v81 = v134;
      v80 = v135;
      goto LABEL_111;
    }

    v80 = v89;
    v87 = v88;
LABEL_109:

    v81 = v87;
    goto LABEL_111;
  }

  if (v77 == 22)
  {
    result = [(__CFString *)v76 UTF8String];
    if (result)
    {
      result = String.init(utf8String:)(result);
      if (v86)
      {
        v87 = result;
        v80 = v86;
        goto LABEL_109;
      }

LABEL_179:
      __break(1u);
      goto LABEL_180;
    }

LABEL_178:
    __break(1u);
    goto LABEL_179;
  }

  if (v77 != 2)
  {
    goto LABEL_96;
  }

  MEMORY[0x1EEE9AC00](v77);
  v78 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
  v80 = v79;

  v81 = v78;
LABEL_111:
  if (v81 == a2 && v80 == a3)
  {

LABEL_115:
    v92 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14LocalizedError_pMd);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_118;
    }

    v93 = *(&v137 + 1);
    v94 = v138;
    __swift_project_boxed_opaque_existential_1(&v136, *(&v137 + 1));
    v30 = (*(v94 + 40))(v93, v94);
    if (v31)
    {
      goto LABEL_31;
    }

    goto LABEL_63;
  }

  v91 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v91)
  {
    goto LABEL_115;
  }

  v96 = _objc_isTaggedPointer(@"NSLocalizedRecoveryOptions");
  v97 = @"NSLocalizedRecoveryOptions";
  v98 = v97;
  if (!v96)
  {
LABEL_126:
    LOBYTE(v134) = 0;
    *&v136 = 0;
    if (__CFStringIsCF())
    {
    }

    else
    {
      v104 = v98;
      v105 = String.init(_nativeStorage:)();
      if (v106)
      {
        v102 = v106;
        v107 = v105;

        v103 = v107;
        goto LABEL_141;
      }

      *&v136 = [(__CFString *)v104 length];
      if (v136)
      {
        v103 = String.init(_cocoaString:)();
        v102 = v112;
        goto LABEL_141;
      }
    }

    v103 = 0;
    v102 = 0xE000000000000000;
    goto LABEL_141;
  }

  v99 = _objc_getTaggedPointerTag(v97);
  if (!v99)
  {
    _CFIndirectTaggedPointerStringGetContents();
    v110 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v111)
    {
      [(__CFString *)v98 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v103 = v134;
      v102 = v135;
      goto LABEL_141;
    }

    v102 = v111;
    v109 = v110;
LABEL_139:

    v103 = v109;
    goto LABEL_141;
  }

  if (v99 == 22)
  {
    result = [(__CFString *)v98 UTF8String];
    if (result)
    {
      result = String.init(utf8String:)(result);
      if (v108)
      {
        v109 = result;
        v102 = v108;
        goto LABEL_139;
      }

LABEL_181:
      __break(1u);
      goto LABEL_182;
    }

LABEL_180:
    __break(1u);
    goto LABEL_181;
  }

  if (v99 != 2)
  {
    goto LABEL_126;
  }

  MEMORY[0x1EEE9AC00](v99);
  v100 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
  v102 = v101;

  v103 = v100;
LABEL_141:
  if (v103 == a2 && v102 == a3)
  {

LABEL_145:
    v114 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16RecoverableError_pMd);
    if (swift_dynamicCast())
    {
      v115 = *(&v137 + 1);
      v116 = v138;
      __swift_project_boxed_opaque_existential_1(&v136, *(&v137 + 1));
      v117 = (*(v116 + 16))(v115, v116);
      *(a4 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
      *a4 = v117;
      return __swift_destroy_boxed_opaque_existential_1(&v136);
    }

    v138 = 0;
    v136 = 0u;
    v137 = 0u;
    v95 = &_s10Foundation16RecoverableError_pSgMd;
    goto LABEL_119;
  }

  v113 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v113)
  {
    goto LABEL_145;
  }

  v118 = _objc_isTaggedPointer(@"NSRecoveryAttempter");
  v119 = @"NSRecoveryAttempter";
  v120 = v119;
  if (!v118)
  {
    goto LABEL_153;
  }

  v121 = _objc_getTaggedPointerTag(v119);
  if (!v121)
  {
    goto LABEL_160;
  }

  if (v121 != 22)
  {
    if (v121 == 2)
    {
      MEMORY[0x1EEE9AC00](v121);
      v122 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v124 = v123;

      goto LABEL_166;
    }

LABEL_153:
    *&v136 = 0;
    if (__CFStringIsCF())
    {
      v122 = v136;

      v124 = 0xE000000000000000;
    }

    else
    {
      v125 = v120;
      v126 = String.init(_nativeStorage:)();
      if (v127)
      {
        v122 = v126;
        v124 = v127;
      }

      else
      {
        *&v136 = [(__CFString *)v125 length];
        if (v136)
        {
          v122 = String.init(_cocoaString:)();
          v124 = v130;
        }

        else
        {

          v122 = 0;
          v124 = 0xE000000000000000;
        }
      }
    }

    goto LABEL_166;
  }

  result = [(__CFString *)v120 UTF8String];
  if (!result)
  {
LABEL_182:
    __break(1u);
    return result;
  }

  v128 = String.init(utf8String:)(result);
  if (v129)
  {
LABEL_161:
    v122 = v128;
    v124 = v129;

    goto LABEL_166;
  }

  __break(1u);
LABEL_160:
  _CFIndirectTaggedPointerStringGetContents();
  v128 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
  if (v129)
  {
    goto LABEL_161;
  }

  [(__CFString *)v120 mutableCopy];
  _bridgeAnyObjectToAny(_:)();

  swift_unknownObjectRelease();
  swift_dynamicCast();
  v122 = v134;
  v124 = v135;
LABEL_166:
  if (v122 == a2 && v124 == a3)
  {
  }

  else
  {
    v131 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v131 & 1) == 0)
    {
      goto LABEL_120;
    }
  }

  v132 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16RecoverableError_pMd);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    goto LABEL_120;
  }

  __swift_destroy_boxed_opaque_existential_1(&v136);
  v133 = type metadata accessor for __NSErrorRecoveryAttempter();
  result = swift_allocObject();
  *(a4 + 24) = v133;
  *a4 = result;
  return result;
}

uint64_t one-time initialization function for _errorDomainUserInfoProviderQueue()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x1EEE9AC00](v4);
  v5 = type metadata accessor for DispatchQoS();
  MEMORY[0x1EEE9AC00](v5 - 8);
  type metadata accessor for OS_dispatch_queue();
  static DispatchQoS.unspecified.getter();
  v7[1] = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v3, *MEMORY[0x1E69E8090], v0);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  _errorDomainUserInfoProviderQueue = result;
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

unint64_t lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A];
  if (!lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A]);
  }

  return result;
}

uint64_t one-time initialization function for cache(uint64_t a1)
{
  return one-time initialization function for cache(a1, &static ICUNumberFormatter.cache, &_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCySDyAA18ICUNumberFormatterC9Signature33_1C58B5D80AA37B9371410D3343C91B53LLVAHSgG_GMd, &_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCySDyAA18ICUNumberFormatterC9Signature33_1C58B5D80AA37B9371410D3343C91B53LLVAHSgG_GMR, algn_1EA7B1D98);
}

{
  return one-time initialization function for cache(a1, &static ICUMeasurementNumberFormatter.cache, &_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCySDyAA29ICUMeasurementNumberFormatterC9Signature33_1C58B5D80AA37B9371410D3343C91B53LLVAHSgG_GMd, &_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCySDyAA29ICUMeasurementNumberFormatterC9Signature33_1C58B5D80AA37B9371410D3343C91B53LLVAHSgG_GMR, algn_1EA7B1588);
}

{
  return one-time initialization function for cache(a1, &static ICUPercentNumberFormatter.cache, &_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCySDyAA25ICUPercentNumberFormatterC9Signature33_1C58B5D80AA37B9371410D3343C91B53LLVAHSgG_GMd, &_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCySDyAA25ICUPercentNumberFormatterC9Signature33_1C58B5D80AA37B9371410D3343C91B53LLVAHSgG_GMR, algn_1EA7B0228);
}

{
  return one-time initialization function for cache(a1, &static ICUCurrencyNumberFormatter.cache, &_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCySDyAA26ICUCurrencyNumberFormatterC9Signature33_1C58B5D80AA37B9371410D3343C91B53LLVAHSgG_GMd, &_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCySDyAA26ICUCurrencyNumberFormatterC9Signature33_1C58B5D80AA37B9371410D3343C91B53LLVAHSgG_GMR, &qword_1EA7B5100);
}

{
  return one-time initialization function for cache(a1, &static ICUByteCountNumberFormatter.cache, &_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCySDyAA27ICUByteCountNumberFormatterC9Signature33_1C58B5D80AA37B9371410D3343C91B53LLVAHSgG_GMd, &_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCySDyAA27ICUByteCountNumberFormatterC9Signature33_1C58B5D80AA37B9371410D3343C91B53LLVAHSgG_GMR, &qword_1EA7AEDE0);
}

unint64_t lazy protocol witness table accessor for type ICUNumberFormatter.Signature and conformance ICUNumberFormatter.Signature()
{
  result = lazy protocol witness table cache variable for type ICUNumberFormatter.Signature and conformance ICUNumberFormatter.Signature;
  if (!lazy protocol witness table cache variable for type ICUNumberFormatter.Signature and conformance ICUNumberFormatter.Signature)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ICUNumberFormatter.Signature and conformance ICUNumberFormatter.Signature);
  }

  return result;
}

uint64_t NumberFormatStyleConfiguration.Collection.skeleton.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss25FloatingPointRoundingRuleOSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v71 - v3;
  v5 = type metadata accessor for FloatingPointRoundingRule();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v84 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v71 - v9;
  v98 = 0;
  v99 = 0xE000000000000000;
  if ((*(v0 + 8) & 1) == 0)
  {
    v11 = *v0;
    v90._countAndFlagsBits = 0x2F656C616373;
    v90._object = 0xE600000000000000;
    specialized NSDecimal.init(_:)(v11);
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v91._countAndFlagsBits = v12;
    v91._object = v14;
    LODWORD(v92) = v16;
    if (_So9NSDecimala__length_getter(&v91) || (v91._countAndFlagsBits = v13, v91._object = v15, LODWORD(v92) = v17, !_So9NSDecimala__isNegative_getter(&v91)))
    {
      v91._countAndFlagsBits = v13;
      v91._object = v15;
      LODWORD(v92) = v17;
      if (_So9NSDecimala__length_getter(&v91))
      {
        v89._countAndFlagsBits = 0;
        v89._object = 0xE000000000000000;
        v91._countAndFlagsBits = v13;
        v91._object = v15;
        LODWORD(v92) = v17;
        v87 = v91;
        v88 = v17;
        if (_So9NSDecimala__exponent_getter(&v87) >= 1)
        {
          do
          {
            MEMORY[0x1865CB0E0](48, 0xE100000000000000);
            v87 = v91;
            v88 = v92;
            v18 = _So9NSDecimala__exponent_getter(&v87);
            _So9NSDecimala__exponent_setter((v18 - 1), &v91);
            v87 = v91;
            v88 = v92;
          }

          while (_So9NSDecimala__exponent_getter(&v87) > 0);
        }

        v87 = v91;
        v88 = v92;
        if (!_So9NSDecimala__exponent_getter(&v87))
        {
          _So9NSDecimala__exponent_setter(1, &v91);
        }

        v87 = v91;
        v88 = v92;
        if (_So9NSDecimala__length_getter(&v87))
        {
          v72 = v5;
          v71 = v6;
          v73 = v10;
          while (1)
          {
            v87 = v91;
            v88 = v92;
            if (!_So9NSDecimala__exponent_getter(&v87))
            {
              MEMORY[0x1865CB0E0](46, 0xE100000000000000);
            }

            v87 = v91;
            v88 = v92;
            v19 = _So9NSDecimala__exponent_getter(&v87);
            _So9NSDecimala__exponent_setter((v19 + 1), &v91);
            countAndFlagsBits_low = LODWORD(v91._countAndFlagsBits);
            v82 = WORD2(v91._countAndFlagsBits);
            countAndFlagsBits_high = HIWORD(v91._countAndFlagsBits);
            object_low = LOWORD(v91._object);
            v80 = WORD1(v91._object);
            v79 = WORD2(v91._object);
            object_high = HIWORD(v91._object);
            v78 = v92;
            v76 = WORD1(v92);
            NSDecimal.asVariableLengthInteger()(LODWORD(v91._countAndFlagsBits) | (WORD2(v91._countAndFlagsBits) << 32) | (HIWORD(v91._countAndFlagsBits) << 48), LOWORD(v91._object) | (WORD1(v91._object) << 16) | (WORD2(v91._object) << 32) | (HIWORD(v91._object) << 48), v92 | (WORD1(v92) << 16));
            v21 = v20;
            v22 = *(v20 + 2);
            v23 = _sSa9repeating5countSayxGx_SitcfCs6UInt16V_Tt1g5(0, v22);
            countAndFlagsBits = v23;
            v87._countAndFlagsBits = v23;
            if (v22)
            {
              break;
            }

            v27 = 48;
LABEL_22:
            while (1)
            {
              v28 = *(countAndFlagsBits + 16);
              if (!v28 || *(countAndFlagsBits + 2 * v28 + 30))
              {
                break;
              }

              if ((specialized Array._customRemoveLast()() & 0x10000) != 0)
              {
                specialized Array.remove(at:)(*(v87._countAndFlagsBits + 16) - 1);
              }

              countAndFlagsBits = v87._countAndFlagsBits;
            }

            LODWORD(v87._countAndFlagsBits) = countAndFlagsBits_low;
            WORD2(v87._countAndFlagsBits) = v82;
            HIWORD(v87._countAndFlagsBits) = countAndFlagsBits_high;
            LOWORD(v87._object) = object_low;
            WORD1(v87._object) = v80;
            WORD2(v87._object) = v79;
            HIWORD(v87._object) = object_high;
            LOWORD(v88) = v78;
            HIWORD(v88) = v76;
            NSDecimal.copyVariableLengthInteger(_:)(countAndFlagsBits);
            if (v29)
            {
              goto LABEL_111;
            }

            v30 = *(countAndFlagsBits + 16);

            if (HIDWORD(v30))
            {
              __break(1u);
LABEL_111:

              result = swift_unexpectedError();
              __break(1u);
              return result;
            }

            _So9NSDecimala__length_setter(v30, &v87);
            v91 = v87;
            LODWORD(v92) = v88;
            v85._countAndFlagsBits = v27;
            v31 = static String._uncheckedFromUTF8(_:)();
            MEMORY[0x1865CB0E0](v31);

            v85 = v91;
            v86 = v92;
            v32 = _So9NSDecimala__length_getter(&v85);
            v10 = v73;
            if (!v32)
            {
              goto LABEL_29;
            }
          }

          v74 = 0;
          v25 = 0;
          v10 = v22 + 15;
          while (1)
          {
            v6 = v10 - 15;
            if ((v10 - 15) > *(v21 + 2))
            {
              break;
            }

            v5 = *&v21[2 * v10];
            LODWORD(v23) = swift_isUniquelyReferenced_nonNull_native();
            if ((v23 & 1) == 0)
            {
              v23 = specialized _ArrayBuffer._consumeAndCreateNew()(countAndFlagsBits);
              countAndFlagsBits = v23;
            }

            if (v6 > *(countAndFlagsBits + 16))
            {
              goto LABEL_102;
            }

            v26 = v5 | (v25 << 16);
            *(countAndFlagsBits + 2 * v10) = v26 / 0xA;
            v25 = v26 % 0xA;
            if (--v10 == 15)
            {

              v87._countAndFlagsBits = countAndFlagsBits;
              v27 = v25 | 0x30;
              v5 = v72;
              v6 = v71;
              goto LABEL_22;
            }
          }

          __break(1u);
LABEL_102:
          __break(1u);
          goto LABEL_103;
        }

LABEL_29:
        v87 = v91;
        v88 = v92;
        if (_So9NSDecimala__exponent_getter(&v87) <= 0)
        {
          while (1)
          {
            v87 = v91;
            v88 = v92;
            if (!_So9NSDecimala__exponent_getter(&v87))
            {
              break;
            }

            MEMORY[0x1865CB0E0](48, 0xE100000000000000);
            v87 = v91;
            v88 = v92;
            v33 = _So9NSDecimala__exponent_getter(&v87);
            _So9NSDecimala__exponent_setter((v33 + 1), &v91);
          }

          MEMORY[0x1865CB0E0](46, 0xE100000000000000);
          MEMORY[0x1865CB0E0](48, 0xE100000000000000);
        }

        v87 = v91;
        v88 = v92;
        if (_So9NSDecimala__isNegative_getter(&v87))
        {
          MEMORY[0x1865CB0E0](45, 0xE100000000000000);
        }

        v87 = v89;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18ReversedCollectionVySSGMd);
        lazy protocol witness table accessor for type ReversedCollection<String> and conformance ReversedCollection<A>();
        v34 = String.init<A>(_:)();
        v36 = v35;
      }

      else
      {
        v36 = 0xE100000000000000;
        v34 = 48;
      }
    }

    else
    {
      v36 = 0xE300000000000000;
      v34 = 5136718;
    }

    MEMORY[0x1865CB0E0](v34, v36);

    v91 = v90;

    MEMORY[0x1865CB0E0](32, 0xE100000000000000);

    MEMORY[0x1865CB0E0](v91._countAndFlagsBits, v91._object);
  }

  v38 = *(v1 + 40);
  v37 = *(v1 + 48);
  v40 = *(v1 + 56);
  v39 = *(v1 + 64);
  v41 = *(v1 + 72);
  v42 = v1 + *(type metadata accessor for NumberFormatStyleConfiguration.Collection(0) + 40);
  v43 = *(v42 + 8);
  if (v38 >> 1 == 0xFFFFFFFF && v40 <= 1 && v41 < 2)
  {
    if (v43 == 255)
    {
      goto LABEL_51;
    }

    v91._countAndFlagsBits = NumberFormatStyleConfiguration.RoundingIncrement.skeleton.getter(*v42, v43 & 1);
    v91._object = v44;

    MEMORY[0x1865CB0E0](32, 0xE100000000000000);
  }

  else
  {
    if (v43 == 255)
    {
      v91 = *(v1 + 16);
      v92 = *(v1 + 32);
      v93 = v38;
      v94 = v37;
      v95 = v40;
      v96 = v39;
      v97 = v41;
      v87._countAndFlagsBits = NumberFormatStyleConfiguration.Precision.skeleton.getter();
      v87._object = v50;

      MEMORY[0x1865CB0E0](32, 0xE100000000000000);

      object = v87._object;
      v48 = v87._countAndFlagsBits;
      goto LABEL_50;
    }

    v45 = *v42;
    v91 = *(v1 + 16);
    v92 = *(v1 + 32);
    v93 = v38;
    v94 = v37;
    v95 = v40;
    v96 = v39;
    v97 = v41;
    v46._countAndFlagsBits = NumberFormatStyleConfiguration.RoundingIncrement.skeleton.getter(v45, v43 & 1);
    v47 = NumberFormatStyleConfiguration.Precision.skeletonWithRoundingIncrement(stem:)(v46);

    v91 = v47;

    MEMORY[0x1865CB0E0](32, 0xE100000000000000);
  }

  object = v91._object;
  v48 = v91._countAndFlagsBits;
LABEL_50:
  MEMORY[0x1865CB0E0](v48, object);

LABEL_51:
  v51 = *(v1 + 73);
  if (v51 != 2)
  {
    v52 = (v51 & 1) == 0;
    v53 = 0x666F2D70756F7267;
    if (v52)
    {
      v53 = 0;
    }

    if (v52)
    {
      v54 = 0xE000000000000000;
    }

    else
    {
      v54 = 0xE900000000000066;
    }

    v91._countAndFlagsBits = v53;
    v91._object = v54;

    MEMORY[0x1865CB0E0](32, 0xE100000000000000);

    MEMORY[0x1865CB0E0](v91._countAndFlagsBits, v91._object);
  }

  if (*(v1 + 74) != 2)
  {
    v55 = 0x76656E2D6E676973;
    if ((*(v1 + 74) & 0x100) == 0)
    {
      v55 = 0x7475612D6E676973;
    }

    v56 = 0xE90000000000006FLL;
    if ((*(v1 + 74) & 0x100) != 0)
    {
      v56 = 0xEA00000000007265;
    }

    v57 = 0xEB00000000737961;
    v58 = 0x776C612D6E676973;
    if (((*(v1 + 74) | (*(v1 + 76) << 16)) & 0x10000) != 0)
    {
      v58 = 0xD000000000000010;
      v57 = 0x800000018147F0D0;
    }

    if (*(v1 + 74))
    {
      v59 = v55;
    }

    else
    {
      v59 = v58;
    }

    if (*(v1 + 74))
    {
      v60 = v56;
    }

    else
    {
      v60 = v57;
    }

    v91._countAndFlagsBits = v59;
    v91._object = v60;

    MEMORY[0x1865CB0E0](32, 0xE100000000000000);

    MEMORY[0x1865CB0E0](v91._countAndFlagsBits, v91._object);
  }

  v61 = *(v1 + 77);
  if (v61 != 2)
  {
    if (v61)
    {
      v62 = 0xEE00737961776C61;
    }

    else
    {
      v62 = 0xEC0000006F747561;
    }

    v91._countAndFlagsBits = 0x2D6C616D69636564;
    v91._object = v62;

    MEMORY[0x1865CB0E0](32, 0xE100000000000000);

    MEMORY[0x1865CB0E0](v91._countAndFlagsBits, v91._object);
  }

  v25 = type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
  outlined init with copy of FloatingPointRoundingRule?(v1 + *(v25 + 36), v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    outlined destroy of TermOfAddress?(v4, &_ss25FloatingPointRoundingRuleOSgMd);
    goto LABEL_86;
  }

  (*(v6 + 32))(v10, v4, v5);
  v21 = v84;
  (*(v6 + 16))(v84, v10, v5);
  LODWORD(v23) = (*(v6 + 88))(v21, v5);
  if (v23 != *MEMORY[0x1E69E7038])
  {
    if (v23 == *MEMORY[0x1E69E7030])
    {
      v64 = 0x800000018147F070;
      v65 = 0xD000000000000017;
      goto LABEL_85;
    }

    if (v23 == *MEMORY[0x1E69E7040])
    {
      v63 = "rounding-mode-ceiling";
      goto LABEL_82;
    }

LABEL_103:
    if (v23 == *MEMORY[0x1E69E7048])
    {
      v64 = 0x800000018147F030;
      v65 = 0xD000000000000013;
    }

    else if (v23 == *MEMORY[0x1E69E7020])
    {
      v64 = 0x800000018147F010;
      v65 = 0xD000000000000012;
    }

    else if (v23 == *MEMORY[0x1E69E7028])
    {
      v65 = 0xD000000000000010;
      v64 = 0x800000018147F0B0;
    }

    else
    {
      (*(v6 + 8))(v21, v5);
      v65 = 0;
      v64 = 0xE000000000000000;
    }

    goto LABEL_85;
  }

  v63 = "rounding-mode-half-up";
LABEL_82:
  v64 = (v63 - 32) | 0x8000000000000000;
  v65 = 0xD000000000000015;
LABEL_85:
  v91._countAndFlagsBits = v65;
  v91._object = v64;

  MEMORY[0x1865CB0E0](32, 0xE100000000000000);

  MEMORY[0x1865CB0E0](v91._countAndFlagsBits, v91._object);

  (*(v6 + 8))(v10, v5);
LABEL_86:
  v66 = *(v1 + *(v25 + 44));
  if (*(v1 + *(v25 + 44)) <= 1u)
  {
    if (*(v1 + *(v25 + 44)))
    {
      v66 = 0x6669746E65696373;
      v67 = 0xEA00000000006369;
    }

    else
    {
      v67 = 0xE000000000000000;
    }

    goto LABEL_92;
  }

  if (v66 == 2)
  {
    v67 = 0xED000074726F6873;
    v66 = 0x2D746361706D6F63;
LABEL_92:
    v91._countAndFlagsBits = v66;
    v91._object = v67;

    MEMORY[0x1865CB0E0](32, 0xE100000000000000);

    MEMORY[0x1865CB0E0](v91._countAndFlagsBits, v91._object);
  }

  v68 = HIBYTE(v99) & 0xF;
  if ((v99 & 0x2000000000000000) == 0)
  {
    v68 = v98 & 0xFFFFFFFFFFFFLL;
  }

  if (v68)
  {
    specialized BidirectionalCollection._trimmingCharacters(while:)(v98, v99);
    v69 = String.init(_:)();
  }

  else
  {

    return 0;
  }

  return v69;
}

uint64_t one-time initialization function for cache(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  *a2 = 100;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = MEMORY[0x1E69E7CC8];
  *a5 = result;
  return result;
}

uint64_t specialized closure #1 in FormatterCache.formatter(for:creator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return specialized closure #1 in FormatterCache.formatter(for:creator:)(a1, a2, a3, a4, a5, specialized __RawDictionaryStorage.find<A>(_:));
}

{
  if (!*(*a1 + 16))
  {
    return 0;
  }

  specialized __RawDictionaryStorage.find<A>(_:)(a2, a3, a4, a5);
  if (v5)
  {
  }

  else
  {
    return 0;
  }
}

uint64_t specialized closure #1 in FormatterCache.formatter(for:creator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (!*(*a1 + 16))
  {
    return 1;
  }

  a6(a2, a3, a4, a5);
  if (v6)
  {
  }

  else
  {
    return 1;
  }
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, a3, a4, v8);
}

{
  Hasher.init(_seed:)();
  String.hash(into:)();
  MEMORY[0x1865CD060](a3);
  MEMORY[0x1865CD060](a4);
  v8 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, a3, a4, v8);
}

{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, a3, a4, v8);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5 + 64;
  v7 = -1 << *(v5 + 32);
  v8 = a5 & ~v7;
  if ((*(v5 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v13 = ~v7;
    v14 = *(v5 + 48);
    do
    {
      v15 = (v14 + 32 * v8);
      v16 = v15[2];
      v17 = v15[3];
      v18 = *v15 == a1 && v15[1] == a2;
      if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v19 = v16 == a3 && v17 == a4;
        if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }
      }

      v8 = (v8 + 1) & v13;
    }

    while (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  return v8;
}

{
  v6 = v5 + 64;
  v7 = -1 << *(v5 + 32);
  v8 = a5 & ~v7;
  if ((*(v5 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v13 = ~v7;
    v14 = *(v5 + 48);
    do
    {
      v15 = (v14 + 32 * v8);
      v17 = v15[2];
      v16 = v15[3];
      v18 = *v15 == a1 && v15[1] == a2;
      if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && v17 == a3 && v16 == a4)
      {
        break;
      }

      v8 = (v8 + 1) & v13;
    }

    while (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  return v8;
}

{
  v6 = -1 << *(v5 + 32);
  v7 = a5 & ~v6;
  if ((*(v5 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v10 = ~v6;
    do
    {
      v11 = *(v5 + 48) + 32 * v7;
      if (*(v11 + 16) == a3 && *(v11 + 24) == a4)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v7 = (v7 + 1) & v10;
    }

    while (((*(v5 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  a7[(result >> 6) + 8] |= 1 << result;
  v7 = (a7[6] + 32 * result);
  *v7 = a2;
  v7[1] = a3;
  v7[2] = a4;
  v7[3] = a5;
  *(a7[7] + 8 * result) = a6;
  v8 = a7[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v10;
  }

  return result;
}

{
  a7[(result >> 6) + 8] |= 1 << result;
  v7 = a7[6] + 32 * result;
  *v7 = a2;
  *(v7 + 8) = a3;
  *(v7 + 16) = a4;
  *(v7 + 20) = BYTE4(a4) & 1;
  *(v7 + 24) = a5;
  *(a7[7] + 8 * result) = a6;
  v8 = a7[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v10;
  }

  return result;
}

CFTypeRef _NSAttributedStringDescriptionWithLocaleFunc(void *a1, uint64_t a2)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    a1 = [a1 string];
  }

  return _NSDescriptionWithLocaleFunc(a1, a2);
}

uint64_t specialized Endianness.init(_:)(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 > 2483028223)
  {
    switch(v1)
    {
      case 2617245952:
        return 0;
      case 2550137088:
        return 1;
      case 2483028224:
        return 0;
    }
  }

  else
  {
    if (v1 == 10 || v1 == 2348810496)
    {
      return 2;
    }

    if (v1 == 2415919360)
    {
      return 1;
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

Foundation::Date_optional __swiftcall Calendar.date(bySettingHour:minute:second:of:matchingPolicy:repeatedTimePolicy:direction:)(Swift::Int bySettingHour, Swift::Int minute, Swift::Int second, Foundation::Date of, Foundation::Calendar::MatchingPolicy matchingPolicy, Foundation::Calendar::RepeatedTimePolicy repeatedTimePolicy, Foundation::Calendar::SearchDirection direction)
{
  v13 = v8;
  v14 = *matchingPolicy;
  v15 = *direction;
  v38 = *v7;
  v39 = *repeatedTimePolicy;
  v17 = *v9;
  v16 = *(v9 + 1);
  v52[0] = 3;
  if (one-time initialization token for validCalendarRange != -1)
  {
    swift_once();
  }

  v18 = static Date.validCalendarRange;
  if (*(&static Date.validCalendarRange + 1) >= v14)
  {
    v19 = v14;
  }

  else
  {
    v19 = *(&static Date.validCalendarRange + 1);
  }

  if (*&static Date.validCalendarRange >= v19)
  {
    v20 = *&static Date.validCalendarRange;
  }

  else
  {
    v20 = v19;
  }

  ObjectType = swift_getObjectType();
  *__dst = v20;
  v22 = (*(v16 + 160))(__src, v52, __dst, ObjectType, v16);
  if ((__src[2] & 1) == 0)
  {
    v37 = v15;
    v24 = __src[0];
    LOBYTE(__src[5]) = 1;
    __src[6] = 0;
    LOBYTE(__src[7]) = 1;
    __src[8] = 0;
    LOBYTE(__src[9]) = 1;
    __src[10] = 0;
    LOBYTE(__src[11]) = 1;
    __src[12] = 0;
    LOBYTE(__src[13]) = 1;
    __src[14] = 0;
    LOBYTE(__src[15]) = 1;
    __src[16] = 0;
    LOBYTE(__src[17]) = 1;
    __src[18] = 0;
    LOBYTE(__src[19]) = 1;
    __src[20] = 0;
    LOBYTE(__src[21]) = 1;
    __src[22] = 0;
    LOBYTE(__src[23]) = 1;
    __src[24] = 0;
    LOBYTE(__src[25]) = 1;
    __src[26] = 0;
    LOBYTE(__src[27]) = 1;
    __src[28] = 0;
    LOBYTE(__src[29]) = 1;
    __src[30] = 0;
    LOBYTE(__src[31]) = 1;
    LOBYTE(__src[33]) = 1;
    __src[32] = 0;
    __src[34] = 0;
    LOBYTE(__src[35]) = 1;
    *(&__src[35] + 1) = 514;
    memset(__src, 0, 40);
    __dst[0] = 0;
    __dst[1] = 0;
    DateComponents.timeZone.setter(__dst);
    __src[4] = 0;
    LOBYTE(__src[5]) = 1;
    __src[6] = 0;
    LOBYTE(__src[7]) = 1;
    __src[8] = 0;
    LOBYTE(__src[9]) = 1;
    __src[10] = 0;
    LOBYTE(__src[11]) = 1;
    if (bySettingHour == 0x7FFFFFFFFFFFFFFFLL)
    {
      v25 = 0;
    }

    else
    {
      v25 = bySettingHour;
    }

    __src[14] = v25;
    LOBYTE(__src[15]) = bySettingHour == 0x7FFFFFFFFFFFFFFFLL;
    if (minute == 0x7FFFFFFFFFFFFFFFLL)
    {
      v26 = 0;
    }

    else
    {
      v26 = minute;
    }

    __src[16] = v26;
    LOBYTE(__src[17]) = minute == 0x7FFFFFFFFFFFFFFFLL;
    if (second == 0x7FFFFFFFFFFFFFFFLL)
    {
      v27 = 0;
    }

    else
    {
      v27 = second;
    }

    __src[18] = v27;
    LOBYTE(__src[19]) = second == 0x7FFFFFFFFFFFFFFFLL;
    __src[20] = 0;
    LOBYTE(__src[21]) = 1;
    __src[22] = 0;
    LOBYTE(__src[23]) = 1;
    __src[24] = 0;
    LOBYTE(__src[25]) = 1;
    __src[26] = 0;
    LOBYTE(__src[27]) = 1;
    __src[30] = 0;
    LOBYTE(__src[31]) = 1;
    LOBYTE(__src[33]) = 1;
    __src[32] = 0;
    __src[34] = 0;
    LOBYTE(__src[35]) = 1;
    __src[12] = 0;
    LOBYTE(__src[13]) = 1;
    memcpy(__dst, __src, 0x11BuLL);
    if (v39 == 3)
    {
      v28 = 3;
    }

    else
    {
      v28 = 0;
    }

    memcpy(v52, __src, 0x11BuLL);
    v49 = v17;
    v50 = v16;
    if (DateComponents._validate(for:)(&v49))
    {
      v29 = v13;
      if (*&v24 + -0.5 >= *&v18 && *(&v18 + 1) >= *&v24 + -0.5)
      {
        v30 = 101;
        v31 = *&v24 + -0.5;
        while (1)
        {
          v42 = v17;
          v43 = v16;
          *&v48 = *&v24 + -0.5;
          memcpy(v52, __dst, 0x11BuLL);
          v47 = v28;
          v46 = v37;
          v45 = v38;
          v44 = v31;
          v40 = 0;
          LOBYTE(v41) = 1;
          Calendar._enumerateDatesStep(startingAfter:matching:matchingPolicy:repeatedTimePolicy:direction:inSearchingDate:previouslyReturnedMatchDate:)(&v48, v52, &v47, &v46, &v45, &v44, &v40, &v49);
          if (v50 != 2)
          {
            break;
          }

          v31 = v51;
          if (!--v30)
          {
            v42 = *&v24 + -0.5;
            v49 = v17;
            v50 = v16;
            memcpy(v52, __dst, 0x11BuLL);
            LOBYTE(v40) = v38;
            LOBYTE(v48) = v28;
            LOBYTE(v44) = v37;
            _handleCalendarResultNotFound(date:calendar:comps:direction:matchingPolicy:repeatedTimePolicy:)(&v42, &v49, v52, &v40, &v48, &v44);
            goto LABEL_30;
          }
        }

        v33 = v49;
        if (*&v24 <= v49)
        {
          v22 = outlined destroy of DateComponents(__dst);
          *v13 = v33;
          *(v13 + 8) = 0;
          goto LABEL_46;
        }

        memcpy(v52, __dst, 0x11BuLL);
        v49 = v17;
        v50 = v16;
        if (DateComponents._validate(for:)(&v49) && *&v24 >= *&v18 && *(&v18 + 1) >= *&v24)
        {
          v34 = 101;
          v35 = *&v24;
          while (1)
          {
            v42 = v17;
            v43 = v16;
            v48 = v24;
            memcpy(v52, __dst, 0x11BuLL);
            v47 = v39;
            v46 = v37;
            v45 = v38;
            v44 = v35;
            v40 = 0;
            LOBYTE(v41) = 1;
            Calendar._enumerateDatesStep(startingAfter:matching:matchingPolicy:repeatedTimePolicy:direction:inSearchingDate:previouslyReturnedMatchDate:)(&v48, v52, &v47, &v46, &v45, &v44, &v40, &v49);
            if (v50 != 2)
            {
              break;
            }

            v35 = v51;
            if (!--v34)
            {
              v42 = *&v24;
              v49 = v17;
              v50 = v16;
              memcpy(v52, __dst, 0x11BuLL);
              LOBYTE(v40) = v38;
              LOBYTE(v48) = v39;
              LOBYTE(v44) = v37;
              _handleCalendarResultNotFound(date:calendar:comps:direction:matchingPolicy:repeatedTimePolicy:)(&v42, &v49, v52, &v40, &v48, &v44);
              goto LABEL_42;
            }
          }

          v36 = v49;
          v22 = outlined destroy of DateComponents(__dst);
          v32 = 0;
        }

        else
        {
LABEL_42:
          v22 = outlined destroy of DateComponents(__dst);
          v36 = 0.0;
          v32 = 1;
        }

        *v13 = v36;
        goto LABEL_33;
      }

LABEL_30:
      v22 = outlined destroy of DateComponents(__dst);
    }

    else
    {
      v22 = outlined destroy of DateComponents(__dst);
      v29 = v13;
    }

    *v29 = 0;
    v32 = 1;
LABEL_33:
    *(v29 + 8) = v32;
    goto LABEL_46;
  }

  *v13 = 0;
  *(v13 + 8) = 1;
LABEL_46:
  result.value = *&v23;
  result.is_nil = v22;
  return result;
}