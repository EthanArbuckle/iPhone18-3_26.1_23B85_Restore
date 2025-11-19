id protocol witness for _ObjectiveCBridgeable._bridgeToObjectiveC() in conformance Int16()
{
  v1 = *v0;
  v2 = objc_allocWithZone(NSNumber);

  return [v2 initWithShort_];
}

void *URL.deletingLastPathComponent()@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  ObjectType = swift_getObjectType();
  result = (*(v3 + 368))(v8, ObjectType, v3);
  v7 = v8[0];
  if (v8[0])
  {
    v3 = v8[1];
  }

  else
  {
    result = swift_unknownObjectRetain();
    v7 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
  return result;
}

NSFunctionExpression *CreateFunctionExpression(NSMutableString *a1, void *a2)
{
  v3 = a1;
  v18 = *MEMORY[0x1E69E9840];
  v4 = [@"tokenize" compare:a1 options:1];
  v5 = [a2 count];
  if (v4)
  {
    if (v5 != 1 || (v6 = @":", [(NSString *)v3 hasSuffix:@":"]))
    {
      v7 = 0;
      goto LABEL_8;
    }
  }

  else
  {
    if (v5 != 2)
    {
      v13 = MEMORY[0x1E695DF30];
      v14 = *MEMORY[0x1E695D940];
      v15 = @"Invalid number of parameters to tokenize";
      goto LABEL_21;
    }

    v6 = @":using:";
  }

  v3 = [(NSString *)[NSMutableString alloc] initWithString:v3];
  [(NSMutableString *)v3 appendString:v6];
  v7 = 1;
LABEL_8:
  v8 = NSSelectorFromString(&v3->super);
  objc_opt_self();
  if ([*_CFPredicatePolicyData() objectForKey:v3])
  {
    LOBYTE(v9) = 0;
    if (!v8)
    {
      goto LABEL_18;
    }
  }

  else
  {
    objc_opt_self();
    v10 = _NSOSLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      *buf = 138543362;
      v17 = v3;
      _os_log_fault_impl(&dword_18075C000, v10, OS_LOG_TYPE_FAULT, "NSPredicate: Use of '%{public}@' as an NSExpression function is forbidden.", buf, 0xCu);
    }

    objc_opt_self();
    v9 = (_CFPredicatePolicyData_getFlags() >> 3) & 1;
    if (!v8)
    {
      goto LABEL_18;
    }
  }

  if (v9 & 1 | ((objc_opt_respondsToSelector() & 1) == 0))
  {
LABEL_18:
    v12 = [NSString stringWithFormat:@"Unable to parse function name '%@' into supported selector (%s) ", v3, sel_getName(v8)];
    if (v7)
    {
    }

    v13 = MEMORY[0x1E695DF30];
    v14 = *MEMORY[0x1E695D940];
    v15 = v12;
LABEL_21:
    objc_exception_throw([v13 exceptionWithName:v14 reason:v15 userInfo:0]);
  }

  if (v7)
  {
  }

  return [[NSFunctionExpression alloc] initWithSelector:v8 argumentArray:a2];
}

uint64_t static Array._forceBridgeFromObjectiveC(_:result:)(void *a1, uint64_t *a2, uint64_t a3)
{

  type metadata accessor for __SwiftDeferredNSArray();
  if (swift_dynamicCastClass())
  {
  }

  else
  {
    v6 = a1;
  }

  type metadata accessor for _ContiguousArrayStorage();
  result = swift_dynamicCastClass();
  if (!result)
  {
    swift_unknownObjectRelease();
    isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
    [a1 copy];
    if (isClassOrObjCExistentialType)
    {
      v9 = _bridgeCocoaArray<A>(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v10 = _bridgeCocoaArray<A>(_:)();
      swift_unknownObjectRelease();
      specialized _arrayForceCast<A, B>(_:)(v10, a3);
      v9 = v11;
    }

    result = v9;
  }

  *a2 = result;
  return result;
}

id _LocaleICU.collatorIdentifier.getter()
{
  v52 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 152);
  v42 = *(v0 + 136);
  v43 = v1;
  v44[0] = *(v0 + 168);
  *(v44 + 12) = *(v0 + 180);
  v2 = *(v0 + 72);
  v3 = *(v0 + 104);
  v39 = *(v0 + 88);
  v40 = v3;
  v41 = *(v0 + 120);
  v37 = *(v0 + 56);
  v38 = v2;
  v4 = *(v0 + 152);
  v49 = *(v0 + 136);
  v50 = v4;
  v51[0] = *(v0 + 168);
  *(v51 + 12) = *(v0 + 180);
  v5 = *(v0 + 72);
  v6 = *(v0 + 104);
  v46 = *(v0 + 88);
  v47 = v6;
  v48 = *(v0 + 120);
  v45[0] = *(v0 + 56);
  v45[1] = v5;
  if (_s10Foundation17LocalePreferencesVSgWOg(v45) == 1)
  {
    goto LABEL_2;
  }

  if (!*(&v46 + 1))
  {
    if (!*(&v45[0] + 1) || !*(*(&v45[0] + 1) + 16))
    {
LABEL_2:
      v7 = *(v0 + 16);

      return v7;
    }

    v15 = *MEMORY[0x1E695E4A8];
    v16 = String._bridgeToObjectiveCImpl()();
    v35 = v43;
    v36[0] = v44[0];
    *(v36 + 12) = *(v44 + 12);
    v31 = v39;
    v32 = v40;
    v33 = v41;
    v34 = v42;
    v29 = v37;
    v30 = v38;
    outlined init with copy of LocalePreferences(&v29, v28);
    CanonicalLanguageIdentifierFromString = CFLocaleCreateCanonicalLanguageIdentifierFromString(v15, v16);
    swift_unknownObjectRelease();
    if (CanonicalLanguageIdentifierFromString)
    {
      isTaggedPointer = _objc_isTaggedPointer(CanonicalLanguageIdentifierFromString);
      v19 = CanonicalLanguageIdentifierFromString;
      v13 = v19;
      if (isTaggedPointer)
      {
        TaggedPointerTag = _objc_getTaggedPointerTag(v19);
        switch(TaggedPointerTag)
        {
          case 0:
            goto LABEL_23;
          case 0x16:
            result = [(__CFString *)v13 UTF8String];
            if (result)
            {
              result = String.init(utf8String:)(result);
              if (!v26)
              {
                __break(1u);

LABEL_39:
                v7 = String.init(_cocoaString:)();
                goto LABEL_40;
              }

              goto LABEL_33;
            }

            goto LABEL_44;
          case 2:
            goto LABEL_9;
        }
      }

      v28[0] = 0;
      if (__CFStringIsCF())
      {
        if (v28[0])
        {
          goto LABEL_39;
        }

LABEL_30:

        outlined destroy of TermOfAddress?(&v37, &_s10Foundation17LocalePreferencesVSgMd);
        return 0;
      }

      goto LABEL_28;
    }

LABEL_18:
    outlined destroy of TermOfAddress?(&v37, &_s10Foundation17LocalePreferencesVSgMd);
    return 0;
  }

  v8 = *MEMORY[0x1E695E4A8];
  v9 = String._bridgeToObjectiveCImpl()();
  v35 = v43;
  v36[0] = v44[0];
  *(v36 + 12) = *(v44 + 12);
  v31 = v39;
  v32 = v40;
  v33 = v41;
  v34 = v42;
  v29 = v37;
  v30 = v38;
  outlined init with copy of LocalePreferences(&v29, v28);
  v10 = CFLocaleCreateCanonicalLanguageIdentifierFromString(v8, v9);
  swift_unknownObjectRelease();
  if (!v10)
  {
    goto LABEL_18;
  }

  v11 = _objc_isTaggedPointer(v10);
  v12 = v10;
  v13 = v12;
  if (!v11)
  {
    goto LABEL_20;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v12);
  if (!TaggedPointerTag)
  {
LABEL_23:
    _CFIndirectTaggedPointerStringGetContents();
    result = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v21)
    {
      [(__CFString *)v13 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v7 = v27;
LABEL_40:
      outlined destroy of TermOfAddress?(&v37, &_s10Foundation17LocalePreferencesVSgMd);

      return v7;
    }

LABEL_33:
    v7 = result;

    goto LABEL_40;
  }

  if (TaggedPointerTag != 22)
  {
    if (TaggedPointerTag == 2)
    {
LABEL_9:
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      v7 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

      outlined destroy of TermOfAddress?(&v37, &_s10Foundation17LocalePreferencesVSgMd);
      return v7;
    }

LABEL_20:
    v28[0] = 0;
    if (__CFStringIsCF())
    {
      if (v28[0])
      {
        goto LABEL_39;
      }

      goto LABEL_30;
    }

LABEL_28:
    v22 = v13;
    v23 = String.init(_nativeStorage:)();
    if (v24)
    {
      v7 = v23;

      outlined destroy of TermOfAddress?(&v37, &_s10Foundation17LocalePreferencesVSgMd);
      return v7;
    }

    v28[0] = [(__CFString *)v22 length];
    if (v28[0])
    {
      goto LABEL_39;
    }

    outlined destroy of TermOfAddress?(&v37, &_s10Foundation17LocalePreferencesVSgMd);
    return 0;
  }

  result = [(__CFString *)v13 UTF8String];
  if (result)
  {
    result = String.init(utf8String:)(result);
    if (v25)
    {
      goto LABEL_33;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

uint64_t one-time initialization function for cfLocaleCollatorID()
{
  result = String._bridgeToObjectiveCImpl()();
  static NSLocaleKey.cfLocaleCollatorID = result;
  return result;
}

uint64_t decodingCyclesIsAllowedForCoder(uint64_t a1)
{
  v1 = atomic_load((a1 + 16));
  if (v1 != *(a1 + 136) || (v2 = atomic_load((a1 + 16)), v3 = atomic_load((a1 + 16)), v3 != *(a1 + 136)) || (v4 = atomic_load((a1 + 16)), v5 = atomic_load((a1 + 16)), v5 != *(a1 + 136)))
  {
    __NSPoisoned();
  }

  v6 = atomic_load((a1 + 16));
  TrustRestrictions = _NSCoderGetTrustRestrictions();
  if ((v4 & 0x20) != 0)
  {
    return 0;
  }

  v8 = (v6 >> 8) & 1;
  if (TrustRestrictions)
  {
    LODWORD(v8) = 1;
  }

  if ((v2 & 4) != 0)
  {
    return v8;
  }

  else
  {
    return 1;
  }
}

uint64_t _NSSwiftCalendar.date(byAdding:to:options:)(void *__src, double *a2, char a3)
{
  memcpy(__dst, __src, 0x11BuLL);
  v6 = *a2;
  v7 = *(v3 + OBJC_IVAR____NSSwiftCalendar__lock);
  os_unfair_lock_lock((v7 + 32));
  v8 = *(v7 + 24);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v7 + 32));
  if (one-time initialization token for validCalendarRange != -1)
  {
    swift_once();
  }

  v9 = *(&static Date.validCalendarRange + 1);
  if (*(&static Date.validCalendarRange + 1) >= v6)
  {
    v9 = v6;
  }

  if (*&static Date.validCalendarRange >= v9)
  {
    v10 = *&static Date.validCalendarRange;
  }

  else
  {
    v10 = v9;
  }

  ObjectType = swift_getObjectType();
  v13 = v10;
  (*(v8 + 200))(__dst, &v13, a3 & 1, ObjectType, v8);

  return swift_unknownObjectRelease();
}

uint64_t _NSSetLongLongValueForKeyWithMethod(void *a1, int a2, void *a3, uint64_t a4, Method m)
{
  if (a3)
  {
    Implementation = method_getImplementation(m);
    Name = method_getName(m);
    v9 = [a3 longLongValue];

    return (Implementation)(a1, Name, v9);
  }

  else
  {

    return [a1 setNilValueForKey:a4];
  }
}

uint64_t specialized _SwiftURL.__allocating_init(stringOrEmpty:relativeTo:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  v6 = a3[1];
  type metadata accessor for _SwiftURL();
  v7 = swift_allocObject();
  type metadata accessor for _SwiftURL.ResourceInfo();
  v8 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCyyXlSg_GMd);
  v9 = swift_allocObject();
  *(v9 + 24) = 0;
  *(v9 + 16) = 0;
  *(v8 + 16) = v9;
  *(v7 + 56) = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCySo5NSURLCSg_GMd);
  v10 = swift_allocObject();
  *(v10 + 24) = 0;
  *(v10 + 16) = 0;
  *(v7 + 64) = v10;
  v11 = static RFC3986Parser.parse(urlString:encodingInvalidCharacters:allowEmptyScheme:)(a1, a2, 1, 1);

  if (v11)
  {
    *(v7 + 16) = v11;
    if (*(v11 + 48))
    {
      if (v5)
      {
        ObjectType = swift_getObjectType();
        v13 = *(v6 + 128);

        v13(v16, ObjectType, v6);

        v14 = v16[0];
        if (v16[0])
        {
          v6 = v16[1];
          swift_unknownObjectRelease();
          v5 = v14;
        }
      }
    }

    else
    {

      String.subscript.getter();

      swift_unknownObjectRelease();
      v5 = 0;
      v6 = 0;
    }

    *(v7 + 24) = v5;
    *(v7 + 32) = v6;
    *(v7 + 40) = 4;
    *(v7 + 48) = 0;
  }

  else
  {
    swift_unknownObjectRelease();

    swift_deallocPartialClassInstance();
    return 0;
  }

  return v7;
}

uint64_t __NSFireTimer(void *a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  _CFAutoreleasePoolPush();
  v5 = a1;
  v6 = v3;
  [v3 v4];

  return _CFAutoreleasePoolPop();
}

void *specialized Array.append<A>(contentsOf:)(void *result)
{
  v2 = result[2];
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
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss9CodingKey_pMd);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

{
  v2 = result[2];
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
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV_AA0B10ComponentsVtMd);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

{
  v2 = result[2];
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
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

{
  v2 = result[2];
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
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t _CodingPathNode.path.getter(unint64_t a1)
{
  if (a1 >> 62)
  {
    if (a1 >> 62 == 1)
    {
      v1 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v2 = _CodingPathNode.path.getter(*((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x18));
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_181218E20;
      *(inited + 56) = &type metadata for _CodingKey;
      *(inited + 64) = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
      v4 = swift_allocObject();
      *(inited + 32) = v4;
      *(v4 + 16) = v1;
      *(v4 + 24) = 0;
      *(v4 + 32) = 0;
      *(v4 + 40) = 2;
      specialized Array.append<A>(contentsOf:)(inited);
      return v2;
    }

    else
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v6 = *(a1 + 56);
    outlined init with copy of Hashable & Sendable(a1 + 16, v9);

    v7 = _CodingPathNode.path.getter(v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
    v8 = swift_initStackObject();
    *(v8 + 16) = xmmword_181218E20;
    outlined init with copy of Hashable & Sendable(v9, v8 + 32);
    specialized Array.append<A>(contentsOf:)(v8);

    __swift_destroy_boxed_opaque_existential_1(v9);
    return v7;
  }
}

uint64_t sub_18087BC38()
{
  outlined consume of _CodingKey(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 41, 7);
}

int64_t specialized Dictionary.init(dictionaryLiteral:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v12 = v26 - v11;
  v30 = v13;
  if (MEMORY[0x1865CB550](a1, v10))
  {
    type metadata accessor for _DictionaryStorage();
    v14 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC8];
  }

  result = MEMORY[0x1865CB560](a1, v30);
  if (result)
  {
    v16 = result;
    if (result >= 1)
    {
      v18 = *(v9 + 16);
      v17 = v9 + 16;
      v27 = *(v30 + 48);
      v28 = v18;
      v19 = a1 + ((*(v17 + 64) + 32) & ~*(v17 + 64));
      v29 = v17;
      v26[0] = *(v17 + 56);
      v26[1] = a2 - 8;
      while (1)
      {
        v28(v12, v19, v30);
        v20 = a4;
        result = __RawDictionaryStorage.find<A>(_:)(v12, a2, a4);
        if (v21)
        {
          break;
        }

        v22 = result;
        *(v14 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v14[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(a3 - 8) + 32))(v14[7] + *(*(a3 - 8) + 72) * v22, &v12[v27], a3);
        v23 = v14[2];
        v24 = __OFADD__(v23, 1);
        v25 = v23 + 1;
        if (v24)
        {
          goto LABEL_12;
        }

        v14[2] = v25;
        v19 += v26[0];
        --v16;
        a4 = v20;
        if (!v16)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
LABEL_12:
      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_10:

    return v14;
  }

  return result;
}

uint64_t StringProtocol.rangeOfCharacter(from:options:range:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5)
{
  v7 = MEMORY[0x1EEE9AC00](a1);
  v10 = *v9;
  (*(v11 + 16))(&v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v13, v12, v7);
  v14 = Substring.init<A>(_:)();
  v16 = v15;
  if ((a5 & 1) == 0)
  {
    v14 = Substring.subscript.getter();
    v16 = v17;
  }

  v21 = v10;
  v18 = Substring._rangeOfCharacter(from:options:)(&v21, a2, v14, v16);

  return v18;
}

uint64_t Substring._rangeOfCharacter(from:options:)(uint64_t *a1, char a2, unint64_t a3, uint64_t a4)
{
  if ((a4 ^ a3) >= 0x4000)
  {
    v7 = *a1;

    if ((a2 & 4) != 0)
    {
      v9 = Substring.UnicodeScalarView.index(before:)();
      v4 = v9;
      if ((a2 & 8) != 0)
      {
        v8 = v9;
      }

      else
      {
        v8 = a3;
      }
    }

    else
    {
      if ((a2 & 8) != 0)
      {
        v8 = a3;
      }

      else
      {
        v8 = Substring.UnicodeScalarView.index(before:)();
      }

      v4 = a3;
    }

    while (1)
    {
      v10 = Substring.UnicodeScalarView.subscript.getter();
      if (CFCharacterSetIsLongCharacterMember(*(v7 + 16), v10))
      {
        break;
      }

      if (!((v4 ^ v8) >> 14))
      {

        return 0;
      }

      v4 = Substring.UnicodeScalarView.index(_:offsetBy:)();
    }

    v11 = Substring.UnicodeScalarView.index(after:)();

    if (v11 >> 14 >= v4 >> 14)
    {
      return v4;
    }

    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

char *@objc static NSCalendar._newCalendarWithIdentifier(_:)(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = specialized static NSCalendar._newCalendarWithIdentifier(_:)(v3);

  return v4;
}

NSSet __swiftcall Set._bridgeToObjectiveC()()
{
  if ((v0 & 0xC000000000000001) != 0)
  {

    return swift_unknownObjectRetain();
  }

  else
  {

    return _NativeSet.bridged()();
  }
}

uint64_t storeEnumTagSinglePayload for PredicateError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PredicateError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t get_enum_tag_for_layout_string_10Foundation9IndexPathV7Storage33_99E5384770E52278DCADDB8A2FD5C86ELLO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

NSIndexPath *_NSIndexPathCreateFromIndexes(uint64_t a1, uint64_t a2)
{
  v3[2] = *MEMORY[0x1E69E9840];
  v3[0] = a1;
  v3[1] = a2;
  return [[NSIndexPath alloc] initWithIndexes:v3 length:2];
}

NSIndexPath __swiftcall IndexPath._bridgeToObjectiveC()()
{
  v1 = *v0;
  if (*(v0 + 16) > 1u)
  {
    if (*(v0 + 16) == 2)
    {
      v2 = objc_allocWithZone(NSIndexPath);
      v3 = sel_initWithIndexes_length_;
      v4 = v1 + 32;
    }

    else
    {
      v2 = objc_allocWithZone(NSIndexPath);
      v3 = sel_init;
    }

    goto LABEL_5;
  }

  if (!*(v0 + 16))
  {
    v2 = objc_allocWithZone(NSIndexPath);
    v3 = sel_initWithIndex_;
    v4 = v1;

LABEL_5:
    v5 = [v2 v3];
    goto _$s10Foundation9IndexPathV19_bridgeToObjectiveCSo07NSIndexC0CyF;
  }

  _NSIndexPathCreateFromIndexes(*v0, *(v0 + 8));
  objc_opt_self();

  v5 = swift_dynamicCastObjCClassUnconditional();
_$s10Foundation9IndexPathV19_bridgeToObjectiveCSo07NSIndexC0CyF:
  result._inlinePayload = v8;
  result._length = v7;
  result._indexes = v6;
  result.super.isa = v5;
  return result;
}

double protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance URL(void *a1, _OWORD *a2)
{
  swift_unknownObjectRelease();
  URL.init(reference:)(a1, &v5);
  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t URL.pathExtension.getter()
{
  v1 = *(v0 + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 328))(ObjectType, v1);
}

id NSNotificationCenter.publisher(for:object:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = v3;
  a3[1] = a1;
  a3[2] = a2;
  swift_unknownObjectRetain();
  v4 = v3;

  return a1;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance URL()
{
  v1 = *(v0 + 8);
  ObjectType = swift_getObjectType();
  (*(v1 + 104))(ObjectType, v1);
  String.hash(into:)();
}

uint64_t Locale.identifier.getter()
{
  v1 = *(v0 + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 64))(ObjectType, v1);
}

BOOL protocol witness for SingleValueDecodingContainer.decodeNil() in conformance JSONDecoderImpl()
{
  v1 = *(*v0 + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 24 * v2;
    v4 = *(v3 + 8);
    v5 = *(v3 + 16);
    v6 = *(v3 + 24);
    return !(v5 | v4) && v6 == 160;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t Locale.Language.languageCode.getter@<X0>(uint64_t *a1@<X8>)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = *v1;
  v3 = v1[1];
  v5 = *v1;
  v6 = v3;
  countAndFlagsBits = v1[2];
  object = v1[3];
  if (!v3)
  {
    Locale.Language.Components.identifier.getter();
    String.utf8CString.getter();

    Language = uloc_getLanguage();

    if (Language >= 1 && (v14[Language] = 0, v10 = MEMORY[0x1865CAEB0](v14), v11))
    {
      v5 = v10;
      v6 = v11;
      v12 = String.lowercased()();
      object = v12._object;
      countAndFlagsBits = v12._countAndFlagsBits;
    }

    else
    {

      v5 = 0;
      v6 = 0;
      countAndFlagsBits = 0;
      object = 0;
    }
  }

  *a1 = v5;
  a1[1] = v6;
  a1[2] = countAndFlagsBits;
  a1[3] = object;
  return outlined copy of Locale.LanguageCode?(v4, v3);
}

uint64_t Locale.language.getter()
{
  v1 = *(v0 + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 352))(ObjectType, v1);
}

uint64_t Locale.Subdivision.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t JSONDecoderImpl.KeyedContainer.allKeys.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v53 = a5;
  v52 = type metadata accessor for Optional();
  v7 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v9 = &v44 - v8;
  v10 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v50 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v49 = &v44 - v14;
  _swift_isClassOrObjCExistentialType();
  v15 = a3 + 64;
  v16 = 1 << *(a3 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(a3 + 64);
  v19 = (v16 + 63) >> 6;
  v20 = (v10 + 48);
  v47 = v10;
  v48 = (v10 + 32);
  v21 = (v7 + 8);
  v54 = a3;

  v23 = 0;
  v51 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v24 = v23;
    if (!v18)
    {
      break;
    }

LABEL_8:
    v18 &= v18 - 1;

    dispatch thunk of CodingKey.init(stringValue:)();
    if ((*v20)(v9, 1, a4) == 1)
    {
      result = (*v21)(v9, v52);
    }

    else
    {
      v25 = *v48;
      (*v48)(v49, v9, a4);
      v46 = v25;
      v25(v50, v49, a4);
      if (_swift_isClassOrObjCExistentialType())
      {
        v26 = v51;
        isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
        v55 = v26;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
          if ((_swift_isClassOrObjCExistentialType() & 1) == 0)
          {
            goto LABEL_24;
          }

          v26 = v51;
          if ((v51 & 0x8000000000000000) == 0 && (v51 & 0x4000000000000000) == 0)
          {
            goto LABEL_24;
          }
        }
      }

      else
      {
        v26 = v51;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v55 = v26;
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_24;
        }
      }

      if ((_swift_isClassOrObjCExistentialType() & 1) != 0 && (v26 < 0 || (v26 & 0x4000000000000000) != 0))
      {
        specialized _ArrayBuffer._nonNative.getter(v26);
        v31 = __CocoaSet.count.getter();
      }

      else
      {
        isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
        v30 = v26 & 0xFFFFFFFFFFFFFF8;
        if ((isClassOrObjCExistentialType & 1) == 0)
        {
          v30 = v26;
        }

        v31 = *(v30 + 16);
      }

      v51 = _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v31 + 1, 1, v26, a4);
      v55 = v51;
LABEL_24:
      v32 = _swift_isClassOrObjCExistentialType();
      v33 = v51;
      v34 = v51 & 0xFFFFFFFFFFFFFF8;
      v45 = v51 & 0xFFFFFFFFFFFFFF8;
      if ((v32 & 1) == 0)
      {
        v34 = v51;
      }

      v35 = *(v34 + 16);
      v36 = _swift_isClassOrObjCExistentialType();
      v37 = v45;
      if ((v36 & 1) == 0)
      {
        v37 = v33;
      }

      v38 = *(v37 + 24);
      v45 = v35;
      v39 = v35 + 1;
      if (v39 > (v38 >> 1))
      {
        LODWORD(v51) = v38 > 1;
        type metadata accessor for Array();
        Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v51, v39, 1);
        v51 = v55;
      }

      if (_swift_isClassOrObjCExistentialType())
      {
        v40 = v51;
        v41 = v39;
        v42 = v51 & 0xFFFFFFFFFFFFFF8;
        *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10) = v41;
      }

      else
      {
        v40 = v51;
        *(v51 + 16) = v39;
        v42 = v40 & 0xFFFFFFFFFFFFFF8;
      }

      if (_swift_isClassOrObjCExistentialType())
      {
        v43 = v42;
      }

      else
      {
        v43 = v40;
      }

      result = (v46)(v43 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v45, v50, a4);
    }
  }

  while (1)
  {
    v23 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v23 >= v19)
    {

      return v51;
    }

    v18 = *(v15 + 8 * v23);
    ++v24;
    if (v18)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t JSONDecoderImpl.KeyedContainer.nestedContainer<A>(keyedBy:forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v71 = a7;
  v78 = a4;
  v69 = a9;
  v70 = a1;
  v14 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v67 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Optional();
  v73 = *(v16 - 8);
  v74 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v64 - v20;
  v75 = a8;
  v22 = dispatch thunk of CodingKey.stringValue.getter();
  if (!*(a5 + 16))
  {

    goto LABEL_6;
  }

  v68 = a3;
  v24 = specialized __RawDictionaryStorage.find<A>(_:)(v22, v23);
  v26 = v25;

  if ((v26 & 1) == 0)
  {
LABEL_6:
    v35 = type metadata accessor for DecodingError();
    swift_allocError();
    v37 = v36;
    v74 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss9CodingKey_p_s13DecodingErrorO7ContextVtMd) + 48);
    v38 = v75;
    v37[3] = a6;
    v37[4] = v38;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v37);
    (*(v14 + 16))(boxed_opaque_existential_0, a2, a6);
    _CodingPathNode.path.getter(v78);
    v76 = 0;
    v77 = 0xE000000000000000;
    _StringGuts.grow(_:)(39);

    v76 = 0xD00000000000001DLL;
    v77 = 0x8000000181482300;
    v40 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1865CB0E0](v40);

    MEMORY[0x1865CB0E0](2238496, 0xE300000000000000);
    v41 = dispatch thunk of CodingKey.stringValue.getter();
    MEMORY[0x1865CB0E0](v41);

    MEMORY[0x1865CB0E0](3025186, 0xE300000000000000);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v35 - 8) + 104))(v37, *MEMORY[0x1E69E6AF0], v35);
    return swift_willThrow();
  }

  v27 = *(a5 + 56) + 24 * v24;
  v28 = *v27;
  v65 = *(v27 + 8);
  v66 = *(v27 + 16);
  (*(v14 + 16))(v21, a2, a6);
  (*(v14 + 56))(v21, 0, 1, a6);
  v30 = v73;
  v29 = v74;
  (*(v73 + 16))(v18, v21, v74);
  if ((*(v14 + 48))(v18, 1, a6) == 1)
  {
    v31 = v30;
    v32 = v28;
    v33 = *(v31 + 8);
    v33(v21, v29);
    v33(v18, v29);
    v34 = v78;

    goto LABEL_13;
  }

  v43 = *(v14 + 32);
  v44 = v67;
  v43(v67, v18, a6);
  v45 = swift_allocObject();
  v46 = v75;
  v45[5] = a6;
  v45[6] = v46;
  v47 = __swift_allocate_boxed_opaque_existential_0(v45 + 2);
  v43(v47, v44, a6);
  v48 = *(v30 + 8);
  v32 = v30 + 8;
  v48(v21, v29);
  v49 = v78;
  v45[7] = v78;
  if (v49 >> 62)
  {
    if (v49 >> 62 != 1)
    {
      v52 = 1;
      goto LABEL_12;
    }

    v50 = ((v49 & 0x3FFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v50 = (v49 + 64);
  }

  v51 = *v50;

  v52 = v51 + 1;
  if (!__OFADD__(v51, 1))
  {
LABEL_12:
    v32 = v28;
    v45[8] = v52;
    v34 = v45;
LABEL_13:
    v53 = v68;
    v21 = *(v68 + 160);
    *(v68 + 160) = v34;
    v44 = *(v53 + 16);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v53 + 16) = v44;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_14;
    }

    goto LABEL_27;
  }

  __break(1u);
LABEL_27:
  v44 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v44 + 2) + 1, 1, v44);
  *(v68 + 16) = v44;
LABEL_14:
  v55 = v65;
  v56 = v66;
  v58 = *(v44 + 2);
  v57 = *(v44 + 3);
  if (v58 >= v57 >> 1)
  {
    v44 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v57 > 1), v58 + 1, 1, v44);
  }

  *(v44 + 2) = v58 + 1;
  v59 = &v44[24 * v58];
  *(v59 + 4) = v32;
  *(v59 + 5) = v55;
  v59[48] = v56;
  v60 = v68;
  *(v68 + 16) = v44;
  v61 = v72;
  JSONDecoderImpl.container<A>(keyedBy:)();
  if (v61)
  {
    *(v60 + 160) = v21;

    v62 = *(v60 + 16);
    if (*(v62 + 2))
    {
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v63 = *(v62 + 2);
        if (v63)
        {
LABEL_24:
          *(v62 + 2) = v63 - 1;
          *(v60 + 16) = v62;
        }

        goto LABEL_20;
      }
    }

    else
    {
      __break(1u);
    }

    v62 = specialized _ArrayBuffer._consumeAndCreateNew()(v62);
    v63 = *(v62 + 2);
    if (v63)
    {
      goto LABEL_24;
    }

LABEL_20:
    __break(1u);
  }

  *(v60 + 160) = v21;

  v62 = *(v60 + 16);
  if (!*(v62 + 2))
  {
    __break(1u);
LABEL_32:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v62);
    v62 = result;
    v63 = *(result + 16);
    if (v63)
    {
      goto LABEL_24;
    }

    goto LABEL_33;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_32;
  }

  v63 = *(v62 + 2);
  if (v63)
  {
    goto LABEL_24;
  }

LABEL_33:
  __break(1u);
  return result;
}

void static NSKeyedUnarchiver.unarchivedObject(ofClasses:from:)(uint64_t a1@<X1>, unint64_t a2@<X2>, _OWORD *a3@<X8>)
{
  v19 = *MEMORY[0x1E69E9840];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_syXlXpMd);
  v6 = _ContiguousArrayBuffer._asCocoaArray()();
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      *&v17 = a1;
      WORD4(v17) = a2;
      BYTE10(v17) = BYTE2(a2);
      BYTE11(v17) = BYTE3(a2);
      BYTE12(v17) = BYTE4(a2);
      BYTE13(v17) = BYTE5(a2);
      v8 = [objc_allocWithZone(MEMORY[0x1E695DEF0]) initWithBytes:&v17 length:BYTE6(a2)];
      goto LABEL_9;
    }

    v9 = a1;
    v10 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    goto LABEL_7;
  }

  if (v7 == 2)
  {
    v9 = *(a1 + 16);
    v10 = *(a1 + 24);
LABEL_7:
    v8 = __DataStorage.bridgedReference(_:)(v9, v10);
    goto LABEL_9;
  }

  v8 = [objc_allocWithZone(MEMORY[0x1E695DEF0]) init];
LABEL_9:
  v11 = v8;
  *&v17 = 0;
  v12 = __NSKeyedUnarchiverSecureUnarchiveObjectOfClasses(v6, v8, &v17);
  swift_unknownObjectRelease();

  v13 = v17;
  if (v12)
  {
    v14 = v17;
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
    v15 = v13;
  }

  v16 = v18;
  *a3 = v17;
  a3[1] = v16;
  if (v13)
  {
    swift_willThrow();
    outlined destroy of TermOfAddress?(a3, &_sypSgMd);
  }
}

id __NSKeyedUnarchiverSecureUnarchiveObjectOfClasses(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [MEMORY[0x1E695DFD8] setWithArray:a1];

  return [NSKeyedUnarchiver unarchivedObjectOfClasses:v5 fromData:a2 error:a3];
}

uint64_t _sSD10FoundationE26_forceBridgeFromObjectiveC_6resultySo12NSDictionaryC_SDyxq_GSgztFZs11AnyHashableV_ypTt1g5(void *a1, uint64_t *a2)
{

  swift_unknownObjectRetain();
  result = static Dictionary._bridgeFromObjectiveCAdoptingNativeStorageOf(_:)();
  v5 = result;
  if (result)
  {
    goto LABEL_25;
  }

  result = [a1 count];
  if (!result)
  {
    v5 = MEMORY[0x1E69E7CC8];
LABEL_25:
    *a2 = v5;
    return result;
  }

  v6 = result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd);
  v5 = static _DictionaryStorage.allocate(capacity:)();
  v7 = *(v5 + 48);
  v8 = *(v5 + 56);

  result = _sSD10FoundationE26_forceBridgeFromObjectiveC_6resultySo12NSDictionaryC_SDyxq_GSgztFZSiSryxG_Sryq_GtXEfU0_s11AnyHashableV_ypTt3g5Tf4xxnn_n(v7, v8, a1, v6);
  if ((result & 0x8000000000000000) == 0 && v6 >= result)
  {
    *(v5 + 16) = result;
    if (result)
    {
      v9 = result - 1;
      v10 = v5 + 64;
      while (1)
      {
        if ((*(v10 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v9))
        {
          goto LABEL_8;
        }

        outlined init with copy of AnyHashable(*(v5 + 48) + 40 * v9, v40);
        v20 = AnyHashable._rawHashValue(seed:)(*(v5 + 40));
        result = outlined destroy of AnyHashable(v40);
        v21 = -1 << *(v5 + 32);
        v22 = v20 & ~v21;
        v23 = v22 >> 6;
        if (((-1 << v22) & ~*(v10 + 8 * (v22 >> 6))) != 0)
        {
          v24 = __clz(__rbit64((-1 << v22) & ~*(v10 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v25 = 0;
          v26 = (63 - v21) >> 6;
          do
          {
            if (++v23 == v26 && (v25 & 1) != 0)
            {
              __break(1u);
              goto LABEL_26;
            }

            v27 = v23 == v26;
            if (v23 == v26)
            {
              v23 = 0;
            }

            v25 |= v27;
            v28 = *(v10 + 8 * v23);
          }

          while (v28 == -1);
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
        }

        *(v10 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
        if (v9 < v24)
        {
          v11 = *(v5 + 48);
          v12 = v11 + 40 * v24;
          v13 = (v11 + 40 * v9);
          v14 = *v13;
          v15 = v13[1];
          *(v12 + 32) = *(v13 + 4);
          *v12 = v14;
          *(v12 + 16) = v15;
          v16 = *(v5 + 56);
          v17 = (v16 + 32 * v24);
          v18 = (v16 + 32 * v9);
          v19 = v18[1];
          *v17 = *v18;
          v17[1] = v19;
LABEL_8:
          if (--v9 < 0)
          {
            break;
          }
        }

        else
        {
          if (v24 == v9)
          {
            goto LABEL_8;
          }

          v29 = *(v5 + 48);
          v30 = (v29 + 40 * v24);
          v31 = (v29 + 40 * v9);
          v32 = *v30;
          v33 = v30[1];
          v34 = *(v30 + 4);
          v35 = *(v31 + 4);
          v36 = v31[1];
          *v30 = *v31;
          v30[1] = v36;
          *(v30 + 4) = v35;
          *(v31 + 4) = v34;
          *v31 = v32;
          v31[1] = v33;
          v37 = *(v5 + 56);
          v38 = (v37 + 32 * v24);
          v39 = (v37 + 32 * v9);
          outlined init with take of Any(v38, v40);
          outlined init with take of Any(v39, v38);
          outlined init with take of Any(v40, v39);
          if (v9 < 0)
          {
            break;
          }
        }
      }
    }

    goto LABEL_25;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

Foundation::Date_optional __swiftcall _CalendarGregorian.firstInstant(of:at:)(Foundation::Calendar::Component of, Foundation::Date at)
{
  v4 = v3;
  v5 = *v2;
  LOBYTE(v23[0]) = *of;
  v25 = v5;
  v8._time = _CalendarGregorian._firstInstant(of:at:)(v23, at)._time;
  if (*&v7._time)
  {
    v25 = *&v7._time;
    v9 = v7._time;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    if (!swift_dynamicCast())
    {

      v6 = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      goto LABEL_16;
    }

    if (v24 < 0)
    {
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      __swift_project_value_buffer(v19, static _CalendarGregorian.logger);
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v11, v12))
      {
        goto LABEL_14;
      }

      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v23[0] = v14;
      *v13 = 136446466;
      v20 = Calendar.Component.debugDescription.getter();
      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, v23);

      *(v13 + 4) = v22;
      *(v13 + 12) = 2050;
      *(v13 + 14) = v5;
      v18 = "Not advancing in firstInstant(of:at:). unit: %{public}s, at: %{public}f";
    }

    else
    {
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v10 = type metadata accessor for Logger();
      __swift_project_value_buffer(v10, static _CalendarGregorian.logger);
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v11, v12))
      {
        goto LABEL_14;
      }

      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v23[0] = v14;
      *v13 = 136446466;
      v15 = Calendar.Component.debugDescription.getter();
      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, v23);

      *(v13 + 4) = v17;
      *(v13 + 12) = 2050;
      *(v13 + 14) = v5;
      v18 = "Overflowing in firstInstant(of:at:). unit: %{public}s, at: %{public}f";
    }

    _os_log_impl(&dword_18075C000, v11, v12, v18, v13, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x1865D2690](v14, -1, -1);
    MEMORY[0x1865D2690](v13, -1, -1);
LABEL_14:

    *v4 = 0;
    *(v4 + 8) = 1;

    goto LABEL_16;
  }

  *v4 = v23[1];
  *(v4 + 8) = 0;
LABEL_16:
  result.value = v8;
  result.is_nil = v6;
  return result;
}

Swift::Int __swiftcall Calendar.component(_:from:)(Foundation::Calendar::Component _, Foundation::Date from)
{
  v4 = *_;
  v5 = *v2;
  v10 = *v3;
  switch(v4)
  {
    case 1:
      v9 = 2;
      v8 = v5;
      Calendar._dateComponents(_:from:)(&v9, &v8, __src);
      memcpy(__dst, __src, 0x11BuLL);
      outlined destroy of DateComponents(__dst);
      if (__dst[7])
      {
        goto LABEL_25;
      }

      return __dst[6];
    case 2:
      v9 = 4;
      v8 = v5;
      Calendar._dateComponents(_:from:)(&v9, &v8, __src);
      memcpy(__dst, __src, 0x11BuLL);
      outlined destroy of DateComponents(__dst);
      if (__dst[9])
      {
        goto LABEL_25;
      }

      return __dst[8];
    case 3:
      v9 = 8;
      v8 = v5;
      Calendar._dateComponents(_:from:)(&v9, &v8, __src);
      memcpy(__dst, __src, 0x11BuLL);
      outlined destroy of DateComponents(__dst);
      if (__dst[11])
      {
        goto LABEL_25;
      }

      return __dst[10];
    case 4:
      v9 = 16;
      v8 = v5;
      Calendar._dateComponents(_:from:)(&v9, &v8, __src);
      memcpy(__dst, __src, 0x11BuLL);
      outlined destroy of DateComponents(__dst);
      if (__dst[15])
      {
        goto LABEL_25;
      }

      return __dst[14];
    case 5:
      v9 = 32;
      v8 = v5;
      Calendar._dateComponents(_:from:)(&v9, &v8, __src);
      memcpy(__dst, __src, 0x11BuLL);
      outlined destroy of DateComponents(__dst);
      if (__dst[17])
      {
        goto LABEL_25;
      }

      return __dst[16];
    case 6:
      v9 = 64;
      v8 = v5;
      Calendar._dateComponents(_:from:)(&v9, &v8, __src);
      memcpy(__dst, __src, 0x11BuLL);
      outlined destroy of DateComponents(__dst);
      if (__dst[19])
      {
        goto LABEL_25;
      }

      return __dst[18];
    case 7:
      v9 = 128;
      v8 = v5;
      Calendar._dateComponents(_:from:)(&v9, &v8, __src);
      memcpy(__dst, __src, 0x11BuLL);
      outlined destroy of DateComponents(__dst);
      if (__dst[23])
      {
        goto LABEL_25;
      }

      return __dst[22];
    case 8:
      v9 = 256;
      v8 = v5;
      Calendar._dateComponents(_:from:)(&v9, &v8, __src);
      memcpy(__dst, __src, 0x11BuLL);
      outlined destroy of DateComponents(__dst);
      if (__dst[25])
      {
        goto LABEL_25;
      }

      return __dst[24];
    case 9:
      v9 = 512;
      v8 = v5;
      Calendar._dateComponents(_:from:)(&v9, &v8, __src);
      memcpy(__dst, __src, 0x11BuLL);
      outlined destroy of DateComponents(__dst);
      if (__dst[27])
      {
        goto LABEL_25;
      }

      return __dst[26];
    case 10:
      v9 = 1024;
      v8 = v5;
      Calendar._dateComponents(_:from:)(&v9, &v8, __src);
      memcpy(__dst, __src, 0x11BuLL);
      outlined destroy of DateComponents(__dst);
      if (__dst[31])
      {
        goto LABEL_25;
      }

      return __dst[30];
    case 11:
      v9 = 2048;
      v8 = v5;
      Calendar._dateComponents(_:from:)(&v9, &v8, __src);
      memcpy(__dst, __src, 0x11BuLL);
      outlined destroy of DateComponents(__dst);
      if (__dst[33])
      {
        goto LABEL_25;
      }

      return __dst[32];
    case 12:
      v9 = 4096;
      v8 = v5;
      Calendar._dateComponents(_:from:)(&v9, &v8, __src);
      memcpy(__dst, __src, 0x11BuLL);
      outlined destroy of DateComponents(__dst);
      if (__dst[35])
      {
        goto LABEL_25;
      }

      return __dst[34];
    case 13:
      v9 = 0x2000;
      v8 = v5;
      Calendar._dateComponents(_:from:)(&v9, &v8, __src);
      memcpy(__dst, __src, 0x11BuLL);
      outlined destroy of DateComponents(__dst);
      if (__dst[21])
      {
        goto LABEL_25;
      }

      return __dst[20];
    case 14:
      v7 = 0x4000;
      goto LABEL_24;
    case 15:
      v7 = 0x8000;
      goto LABEL_24;
    case 16:
      v7 = 0x10000;
      goto LABEL_24;
    case 17:
      v7 = 0x80000;
LABEL_24:
      v9 = v7;
      v8 = v5;
      Calendar._dateComponents(_:from:)(&v9, &v8, __src);
      memcpy(__dst, __src, 0x11BuLL);
      outlined destroy of DateComponents(__dst);
      goto LABEL_25;
    case 18:
      v9 = 0x40000;
      v8 = v5;
      Calendar._dateComponents(_:from:)(&v9, &v8, __src);
      memcpy(__dst, __src, 0x11BuLL);
      outlined destroy of DateComponents(__dst);
      if (__dst[13])
      {
        goto LABEL_25;
      }

      result = __dst[12];
      break;
    default:
      v9 = 1;
      v8 = v5;
      Calendar._dateComponents(_:from:)(&v9, &v8, __src);
      memcpy(__dst, __src, 0x11BuLL);
      outlined destroy of DateComponents(__dst);
      if (__dst[5])
      {
LABEL_25:
        result = 0;
      }

      else
      {
        result = __dst[4];
      }

      break;
  }

  return result;
}

double *_CalendarGregorian.timeZoneTransitionInterval(at:timeZone:)@<X0>(double *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *result;
  if (*result < -3187299600.0 || (v5 = *(a2 + 8), ObjectType = swift_getObjectType(), v12 = v4 + -172800.0, result = (*(v5 + 88))(&v13, &v12, ObjectType, v5), (v14 & 1) != 0) || (v7 = v13, v8 = v13, v4 + -172800.0 + 345600000.0 <= v13) || v4 < v13)
  {
LABEL_9:
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 1;
    return result;
  }

  v13 = v13 + -1.0;
  v9 = *(v5 + 40);
  v10 = v9(&v13, ObjectType, v5);
  v13 = v8 + 1.0;
  result = v9(&v13, ObjectType, v5);
  v11 = v10 - result;
  if (!__OFSUB__(v10, result))
  {
    if (v11 >= 1 && v4 < v8 + v11)
    {
      *a3 = v7;
      *(a3 + 8) = v11;
      *(a3 + 16) = 0;
      return result;
    }

    goto LABEL_9;
  }

  __break(1u);
  return result;
}

void protocol witness for _TimeZoneProtocol.nextDaylightSavingTimeTransition(after:) in conformance _TimeZoneICU(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 6);
  partial apply for closure #1 in _TimeZoneICU.nextDaylightSavingTimeTransition(after:)(a1);
  os_unfair_lock_unlock(v3 + 6);
}

uint64_t closure #1 in _TimeZoneICU.nextDaylightSavingTimeTransition(after:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>, double a3@<D0>)
{
  result = _TimeZoneICU.State.calendar(_:)(*(a1 + 24), *(a1 + 32));
  if (!result)
  {
    goto LABEL_5;
  }

  if (one-time initialization token for validCalendarRange != -1)
  {
    v7 = result;
    swift_once();
    result = v7;
  }

  v6 = (*(&static Date.validCalendarRange + 1) + 978307200.0) * 1000.0;
  if (v6 >= (a3 + 978307200.0) * 1000.0)
  {
    ucal_getMillis();
    ucal_setMillis();
    if (ucal_getTimeZoneTransitionDate() && v6 >= 0.0)
    {
      *a2 = 0.0 / 1000.0 + -978307200.0;
      *(a2 + 8) = 0;
    }

    else
    {
      *a2 = 0;
      *(a2 + 8) = 1;
    }

    return ucal_setMillis();
  }

  else
  {
LABEL_5:
    *a2 = 0;
    *(a2 + 8) = 1;
  }

  return result;
}

Foundation::Date __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> _CalendarGregorian._firstInstant(of:at:)(Foundation::Calendar::Component of, Foundation::Date at)
{
  v4 = v3;
  v5 = *of;
  v6 = *v2;
  v7 = 8319;
  if ((v5 - 10) < 3)
  {
    v7 = 14577;
  }

  v114 = v7;
  v135[0] = v7;
  v134[0] = v6;
  *v136 = *(v3 + 112);
  swift_unknownObjectRetain();
  _CalendarGregorian.dateComponents(_:from:in:)(v135, v134, v136, __src);
  swift_unknownObjectRelease();
  if (v5 <= 6)
  {
    if (v5 > 2)
    {
      if (v5 > 4)
      {
        if (v5 != 5)
        {
          goto LABEL_140;
        }

        goto LABEL_139;
      }

      if (v5 != 3)
      {
LABEL_138:
        *&__src[8] = 0;
        BYTE8(__src[8]) = 0;
LABEL_139:
        *&__src[9] = 0;
        BYTE8(__src[9]) = 0;
LABEL_140:
        *&__src[10] = 0;
        BYTE8(__src[10]) = 0;
        goto LABEL_141;
      }

LABEL_137:
      *&__src[7] = 0;
      BYTE8(__src[7]) = 0;
      goto LABEL_138;
    }

    if (v5)
    {
      if (v5 != 1)
      {
        if (BYTE8(__src[4]))
        {
          goto LABEL_134;
        }

        v9 = *&__src[4];
LABEL_133:
        if ((BYTE8(__src[3]) & 1) == 0)
        {
          _CalendarGregorian.numberOfDaysInMonth(_:year:)(v9, *&__src[3]);
          v102 = 0;
          v101 = 1;
          goto LABEL_136;
        }

LABEL_134:
        v101 = 0;
        v102 = 1;
LABEL_136:
        *&__src[5] = v101;
        BYTE8(__src[5]) = v102;
        goto LABEL_137;
      }

LABEL_132:
      v9 = 1;
      *&__src[4] = 1;
      BYTE8(__src[4]) = 0;
      BYTE9(__src[17]) = 0;
      goto LABEL_133;
    }

    memcpy(v139, __src, 0x11BuLL);
    outlined init with copy of DateComponents(v139, v136);
    v98 = actualMax #1 (inRange:) in _CalendarGregorian.minMaxRange(of:in:)(140742, 144684, v3, v139, 1, 0x3FFFLL);
    v100 = v99;
    outlined destroy of DateComponents(v139);
    if (v100)
    {
LABEL_131:
      *&__src[3] = v98;
      BYTE8(__src[3]) = v100 & 1;
      goto LABEL_132;
    }

    if (!__OFADD__(v98, 1))
    {
      if (v98 + 1 >= 1)
      {
        v98 = 1;
        goto LABEL_131;
      }

LABEL_191:
      __break(1u);
LABEL_192:
      __break(1u);
LABEL_193:
      __break(1u);
LABEL_194:
      __break(1u);
LABEL_195:
      __break(1u);
LABEL_196:
      __break(1u);
LABEL_197:
      __break(1u);
LABEL_198:
      __break(1u);
LABEL_199:
      __break(1u);
LABEL_200:
      __break(1u);
      goto LABEL_201;
    }

LABEL_190:
    __break(1u);
    goto LABEL_191;
  }

  if (v5 <= 9)
  {
    if ((v5 - 7) < 2)
    {
      goto LABEL_137;
    }

    if (v5 != 9)
    {
      goto LABEL_141;
    }

    if (BYTE8(__src[4]))
    {
LABEL_205:
      __break(1u);
      goto LABEL_206;
    }

    v10 = *&__src[4] - 1;
    if (!__OFSUB__(*&__src[4], 1))
    {
      if (v10 <= 0xC)
      {
        v11 = outlined read-only object #0 of _CalendarGregorian._firstInstant(of:at:)[v10 + 4];
        v9 = v11 + 1;
        if (!__OFADD__(v11, 1))
        {
          BYTE9(__src[17]) = 0;
          v5 = 2;
          if (v11 == 0x7FFFFFFFFFFFFFFELL)
          {
            v12 = 0;
          }

          else
          {
            v12 = v11 + 1;
          }

          *&__src[4] = v12;
          BYTE8(__src[4]) = v9 == 0x7FFFFFFFFFFFFFFFLL;
          if (v11 == 0x7FFFFFFFFFFFFFFELL)
          {
            goto LABEL_134;
          }

          goto LABEL_133;
        }

        goto LABEL_189;
      }

LABEL_188:
      __break(1u);
LABEL_189:
      __break(1u);
      goto LABEL_190;
    }

    goto LABEL_186;
  }

  if ((v5 - 10) < 2)
  {
    goto LABEL_34;
  }

  if (v5 == 12)
  {
    memcpy(__dst, __src, 0x11BuLL);
    outlined init with copy of DateComponents(__dst, v136);
    v13 = actualMax #1 (inRange:) in _CalendarGregorian.minMaxRange(of:in:)(140742, 144684, v3, __dst, 1, 0x3FFFLL);
    v15 = v14;
    outlined destroy of DateComponents(__dst);
    if (v15)
    {
LABEL_206:
      __break(1u);
      return *v8.i8;
    }

    if (__OFADD__(v13, 1))
    {
LABEL_185:
      __break(1u);
LABEL_186:
      __break(1u);
      goto LABEL_187;
    }

    if (v13 + 1 < 1)
    {
LABEL_187:
      __break(1u);
      goto LABEL_188;
    }

    *&__src[16] = 1;
    BYTE8(__src[16]) = 0;
LABEL_34:
    memcpy(v135, __src, 0x11BuLL);
    outlined init with copy of DateComponents(v135, v134);
    _CalendarGregorian.date(from:)(__src, &v130);
    memcpy(v136, __src, 0x11BuLL);
    outlined destroy of DateComponents(v136);
    if (v131)
    {
LABEL_203:
      __break(1u);
      goto LABEL_204;
    }

    v8.i64[0] = v130;
    *&v129[0] = 128;
    v120 = v8;
    *&v128[0] = v130;
    v132[0] = *(v4 + 112);
    swift_unknownObjectRetain();
    _CalendarGregorian.dateComponents(_:from:in:)(v129, v128, v132, v133);
    swift_unknownObjectRelease();
    memcpy(v134, v133, 0x11BuLL);
    outlined destroy of DateComponents(v134);
    if (LOBYTE(v134[23]))
    {
LABEL_204:
      __break(1u);
      goto LABEL_205;
    }

    v16 = v134[22];
    v17.f64[0] = NAN;
    v17.f64[1] = NAN;
    v8 = vnegq_f64(v17);
    v118 = v8;
    for (i = v120; ; *i.i64 = v78)
    {
      v121 = i;
      if (*(v4 + 136) == 1)
      {
        if (*(v4 + 96))
        {
          v19 = *(v4 + 104);
          ObjectType = swift_getObjectType();
          v21 = *(v19 + 328);
          swift_unknownObjectRetain();
          v21(v133, ObjectType, v19);
          v22 = specialized Collection<>.firstIndex(of:)(v133[0], outlined read-only object #0 of one-time initialization function for weekdays);
          if (v23)
          {
            goto LABEL_200;
          }

          v24 = v22;
          swift_unknownObjectRelease();
          if (__OFADD__(v24, 1))
          {
            goto LABEL_174;
          }

          i = v121;
          if (*&v16 == v24 + 1)
          {
            goto LABEL_125;
          }
        }

        else if (*&v16 == 1)
        {
LABEL_125:
          *&v128[0] = v114;
          *&v127[0] = i.i64[0];
          v129[0] = *(v4 + 112);
          swift_unknownObjectRetain();
          _CalendarGregorian.dateComponents(_:from:in:)(v128, v127, v129, v133);
          swift_unknownObjectRelease();
          memcpy(v132, __src, 0x11BuLL);
          outlined destroy of DateComponents(v132);
          memcpy(__src, v133, 0x11BuLL);
          v5 = 3;
          goto LABEL_137;
        }
      }

      else if (*&v16 == *(v4 + 128))
      {
        goto LABEL_125;
      }

      v25 = *(v4 + 112);
      v26 = *(v4 + 120);
      *v8.i64 = *i.i64 - trunc(*i.i64);
      v8.i64[0] = vbslq_s8(v118, v8, i).i64[0];
      if (*v8.i64 >= 0.0)
      {
        v27 = *v8.i64;
      }

      else
      {
        v27 = *v8.i64 + 1.0;
      }

      *&v128[0] = 112;
      *&v127[0] = i.i64[0];
      if (*v8.i64 >= 0.0)
      {
        v28 = *i.i64 - *v8.i64;
      }

      else
      {
        v28 = *i.i64 - *v8.i64 + -1.0;
      }

      *&v129[0] = v25;
      *(&v129[0] + 1) = v26;
      swift_unknownObjectRetain_n();
      _CalendarGregorian.dateComponents(_:from:in:)(v128, v127, v129, v132);
      swift_unknownObjectRelease();
      memcpy(v133, v132, 0x11BuLL);
      if (BYTE8(v133[7]) & 1) != 0 || (BYTE8(v133[8]) & 1) != 0 || (BYTE8(v133[9]))
      {
        goto LABEL_192;
      }

      v29 = *&v133[7];
      v30 = *&v133[8];
      v31 = *&v133[9];
      outlined destroy of DateComponents(v133);
      v32 = 3600 * v29;
      if ((v29 * 3600) >> 64 != (3600 * v29) >> 63)
      {
        break;
      }

      v33 = 60 * v30;
      if ((v30 * 60) >> 64 != (60 * v30) >> 63)
      {
        goto LABEL_159;
      }

      v34 = __OFADD__(v32, v33);
      v35 = v32 + v33;
      if (v34)
      {
        goto LABEL_160;
      }

      v34 = __OFADD__(v35, v31);
      v36 = v35 + v31;
      if (v34)
      {
        goto LABEL_161;
      }

      v37 = v28 + -259200.0;
      *&v127[0] = 112;
      v125[0] = v37;
      v128[0] = *(v4 + 112);
      swift_unknownObjectRetain();
      _CalendarGregorian.dateComponents(_:from:in:)(v127, v125, v128, v129);
      swift_unknownObjectRelease();
      memcpy(v132, v129, 0x11BuLL);
      if (BYTE8(v132[7]) & 1) != 0 || (BYTE8(v132[8]) & 1) != 0 || (BYTE8(v132[9]))
      {
        goto LABEL_193;
      }

      v38 = *&v132[7];
      v39 = *&v132[8];
      v40 = *&v132[9];
      outlined destroy of DateComponents(v132);
      v41 = 3600 * v38;
      if ((v38 * 3600) >> 64 != (3600 * v38) >> 63)
      {
        goto LABEL_162;
      }

      v42 = 60 * v39;
      if ((v39 * 60) >> 64 != (60 * v39) >> 63)
      {
        goto LABEL_163;
      }

      v34 = __OFADD__(v41, v42);
      v43 = v41 + v42;
      if (v34)
      {
        goto LABEL_164;
      }

      v34 = __OFADD__(v43, v40);
      v44 = v43 + v40;
      if (v34)
      {
        goto LABEL_165;
      }

      v45 = v36;
      if (v36 == v44 || (v46 = swift_getObjectType(), *v129 = v37, v47 = *(v26 + 40), v48 = v47(v129, v46, v26), *&v129[0] = v121.i64[0], v49 = v47(v129, v46, v26), v48 == v49))
      {
        swift_unknownObjectRelease();
      }

      else
      {
        if (__OFSUB__(v49, v48))
        {
          goto LABEL_175;
        }

        v80 = v49;
        v81 = v37 + (v49 - v48);
        *&v125[0] = 112;
        v123[0] = v81;
        v127[0] = *(v4 + 112);
        swift_unknownObjectRetain();
        _CalendarGregorian.dateComponents(_:from:in:)(v125, v123, v127, v128);
        swift_unknownObjectRelease();
        memcpy(v129, v128, 0x11BuLL);
        if (BYTE8(v129[7]) & 1) != 0 || (BYTE8(v129[8]) & 1) != 0 || (BYTE8(v129[9]))
        {
          goto LABEL_198;
        }

        v82 = *&v129[7];
        v83 = *&v129[8];
        v84 = *&v129[9];
        outlined destroy of DateComponents(v129);
        swift_unknownObjectRelease();
        v85 = 3600 * v82;
        if ((v82 * 3600) >> 64 != (3600 * v82) >> 63)
        {
          goto LABEL_176;
        }

        v86 = 60 * v83;
        if ((v83 * 60) >> 64 != (60 * v83) >> 63)
        {
          goto LABEL_177;
        }

        v34 = __OFADD__(v85, v86);
        v87 = v85 + v86;
        if (v34)
        {
          goto LABEL_178;
        }

        v34 = __OFADD__(v87, v84);
        v88 = v87 + v84;
        if (v34)
        {
          goto LABEL_179;
        }

        if (v88 == v45)
        {
          v37 = v81;
        }

        else if (v80 >= v48)
        {
          v37 = v81;
        }
      }

      *v50.i64 = v27 + v37;
      v51 = *(v4 + 112);
      v52 = *(v4 + 120);
      *v8.i64 = v27 + v37 - trunc(v27 + v37);
      v8.i64[0] = vbslq_s8(v118, v8, v50).i64[0];
      v53 = v27 + v37 - *v8.i64;
      if (*v8.i64 >= 0.0)
      {
        v54 = *v8.i64;
      }

      else
      {
        v54 = *v8.i64 + 1.0;
      }

      *&v125[0] = 112;
      v116 = v50.i64[0];
      v123[0] = *v50.i64;
      if (*v8.i64 >= 0.0)
      {
        v55 = v53;
      }

      else
      {
        v55 = v53 + -1.0;
      }

      *v127 = v51;
      *(v127 + 1) = v52;
      swift_unknownObjectRetain_n();
      _CalendarGregorian.dateComponents(_:from:in:)(v125, v123, v127, v128);
      swift_unknownObjectRelease();
      memcpy(v129, v128, 0x11BuLL);
      if (BYTE8(v129[7]) & 1) != 0 || (BYTE8(v129[8]) & 1) != 0 || (BYTE8(v129[9]))
      {
        goto LABEL_194;
      }

      v56 = *&v129[7];
      v57 = *&v129[8];
      v58 = *&v129[9];
      outlined destroy of DateComponents(v129);
      v59 = 3600 * v56;
      if ((v56 * 3600) >> 64 != (3600 * v56) >> 63)
      {
        goto LABEL_166;
      }

      v60 = 60 * v57;
      if ((v57 * 60) >> 64 != (60 * v57) >> 63)
      {
        goto LABEL_167;
      }

      v34 = __OFADD__(v59, v60);
      v61 = v59 + v60;
      if (v34)
      {
        goto LABEL_168;
      }

      v62 = v61 + v58;
      if (__OFADD__(v61, v58))
      {
        goto LABEL_169;
      }

      v63 = v55 + 172800.0;
      *&v123[0] = 112;
      v126 = *&v63;
      *v125 = *(v4 + 112);
      swift_unknownObjectRetain();
      _CalendarGregorian.dateComponents(_:from:in:)(v123, &v126, v125, v127);
      swift_unknownObjectRelease();
      memcpy(v128, v127, 0x11BuLL);
      if (BYTE8(v128[7]) & 1) != 0 || (BYTE8(v128[8]) & 1) != 0 || (BYTE8(v128[9]))
      {
        goto LABEL_195;
      }

      v64 = *&v128[7];
      v65 = *&v128[8];
      v66 = *&v128[9];
      outlined destroy of DateComponents(v128);
      v67 = 3600 * v64;
      if ((v64 * 3600) >> 64 != (3600 * v64) >> 63)
      {
        goto LABEL_170;
      }

      v68 = 60 * v65;
      if ((v65 * 60) >> 64 != (60 * v65) >> 63)
      {
        goto LABEL_171;
      }

      v34 = __OFADD__(v67, v68);
      v69 = v67 + v68;
      if (v34)
      {
        goto LABEL_172;
      }

      v34 = __OFADD__(v69, v66);
      v70 = v69 + v66;
      if (v34)
      {
        goto LABEL_173;
      }

      v71 = v62;
      if (v62 == v70 || (v72 = swift_getObjectType(), *v127 = v63, v73 = *(*&v52 + 40), v74 = v73(v127, v72, *&v52), *&v127[0] = v116, v75 = v73(v127, v72, *&v52), v74 == v75))
      {
        v76 = v63;
      }

      else
      {
        if (__OFSUB__(v75, v74))
        {
          goto LABEL_180;
        }

        v89 = v75;
        v76 = v63 + (v75 - v74);
        v126 = 112;
        v124 = v76;
        *v123 = *(v4 + 112);
        swift_unknownObjectRetain();
        _CalendarGregorian.dateComponents(_:from:in:)(&v126, &v124, v123, v125);
        swift_unknownObjectRelease();
        memcpy(v127, v125, 0x11BuLL);
        if (BYTE8(v127[7]) & 1) != 0 || (BYTE8(v127[8]) & 1) != 0 || (BYTE8(v127[9]))
        {
          goto LABEL_199;
        }

        v90 = *&v127[7];
        v91 = *&v127[8];
        v92 = *&v127[9];
        outlined destroy of DateComponents(v127);
        v93 = 3600 * v90;
        if ((v90 * 3600) >> 64 != (3600 * v90) >> 63)
        {
          goto LABEL_181;
        }

        v94 = 60 * v91;
        if ((v91 * 60) >> 64 != (60 * v91) >> 63)
        {
          goto LABEL_182;
        }

        v34 = __OFADD__(v93, v94);
        v95 = v93 + v94;
        if (v34)
        {
          goto LABEL_183;
        }

        v34 = __OFADD__(v95, v92);
        v96 = v95 + v92;
        if (v34)
        {
          goto LABEL_184;
        }

        if (v96 != v71 && v89 < v74)
        {
          v76 = v63;
        }
      }

      v123[0] = v76;
      v125[0] = v51;
      v125[1] = v52;
      _CalendarGregorian.timeZoneTransitionInterval(at:timeZone:)(v123, v125, v127);
      swift_unknownObjectRelease();
      if ((v127[1] & 1) == 0)
      {
        v76 = v76 - *(v127 + 1);
      }

      v77 = v54 + v76;
      v78 = v54 + v76 + 0.0;
      v126 = 128;
      v124 = v78;
      *v123 = *(v4 + 112);
      swift_unknownObjectRetain();
      _CalendarGregorian.dateComponents(_:from:in:)(&v126, &v124, v123, v125);
      swift_unknownObjectRelease();
      memcpy(v127, v125, 0x11BuLL);
      outlined destroy of DateComponents(v127);
      if (BYTE8(v127[11]))
      {
        goto LABEL_197;
      }

      v8.i64[1] = v121.i64[1];
      if (*v121.i64 == v77 || *&v16 == *&v127[11])
      {
        lazy protocol witness table accessor for type GregorianCalendarError and conformance GregorianCalendarError();
        swift_allocError();
        *v97 = v78;
        goto LABEL_157;
      }

      v16 = *&v127[11];
    }

    __break(1u);
LABEL_159:
    __break(1u);
LABEL_160:
    __break(1u);
LABEL_161:
    __break(1u);
LABEL_162:
    __break(1u);
LABEL_163:
    __break(1u);
LABEL_164:
    __break(1u);
LABEL_165:
    __break(1u);
LABEL_166:
    __break(1u);
LABEL_167:
    __break(1u);
LABEL_168:
    __break(1u);
LABEL_169:
    __break(1u);
LABEL_170:
    __break(1u);
LABEL_171:
    __break(1u);
LABEL_172:
    __break(1u);
LABEL_173:
    __break(1u);
LABEL_174:
    __break(1u);
LABEL_175:
    __break(1u);
LABEL_176:
    __break(1u);
LABEL_177:
    __break(1u);
LABEL_178:
    __break(1u);
LABEL_179:
    __break(1u);
LABEL_180:
    __break(1u);
LABEL_181:
    __break(1u);
LABEL_182:
    __break(1u);
LABEL_183:
    __break(1u);
LABEL_184:
    __break(1u);
    goto LABEL_185;
  }

  if (v5 == 18)
  {
    goto LABEL_137;
  }

LABEL_141:
  memcpy(v135, __src, 0x11BuLL);
  outlined init with copy of DateComponents(v135, v134);
  _CalendarGregorian.date(from:)(__src, v134);
  memcpy(v136, __src, 0x11BuLL);
  outlined destroy of DateComponents(v136);
  if (LOBYTE(v134[1]))
  {
LABEL_201:
    __break(1u);
    goto LABEL_202;
  }

  *v103.i64 = v134[0];
  v119 = v103;
  if (v5 <= 8 && ((1 << v5) & 0x188) != 0)
  {
    *&v129[0] = 8;
    *v128 = v134[0];
    v132[0] = *(v4 + 112);
    swift_unknownObjectRetain();
    _CalendarGregorian.dateComponents(_:from:in:)(v129, v128, v132, v133);
    swift_unknownObjectRelease();
    memcpy(v134, v133, 0x11BuLL);
    outlined destroy of DateComponents(v134);
    if (LOBYTE(v134[11]))
    {
LABEL_202:
      __break(1u);
      goto LABEL_203;
    }

    v104 = v119.i64[0];
    *v8.i64 = *v119.i64 - trunc(*v119.i64);
    v105.f64[0] = NAN;
    v105.f64[1] = NAN;
    v117 = vnegq_f64(v105);
    v8.i64[0] = vbslq_s8(v117, v8, v119).i64[0];
    v106 = *v119.i64 - *v8.i64;
    v107 = *v119.i64 - *v8.i64 + -1.0;
    if (*v8.i64 < 0.0)
    {
      *v8.i64 = *v8.i64 + 1.0;
      v106 = v107;
    }

    v108 = *v8.i64 + v106 + -1.0;
    v109 = v119;
    if (v108 < *v119.i64)
    {
      v110 = v134[10];
      do
      {
        v119.i64[0] = v109.i64[0];
        *v109.i64 = v108;
        *&v129[0] = 8;
        v122 = v109;
        *v128 = v108;
        v133[0] = *(v4 + 112);
        swift_unknownObjectRetain();
        _CalendarGregorian.dateComponents(_:from:in:)(v129, v128, v133, v132);
        swift_unknownObjectRelease();
        memcpy(v133, v132, 0x11BuLL);
        outlined destroy of DateComponents(v133);
        if (BYTE8(v133[5]))
        {
          goto LABEL_196;
        }

        if (*&v110 != *&v133[5])
        {
          goto LABEL_155;
        }

        v104 = v122.i64[0];
        *v8.i64 = *v122.i64 - trunc(*v122.i64);
        v109 = vbslq_s8(v117, v8, v122);
        v111 = *v122.i64 - *v109.i64;
        v112 = *v122.i64 - *v109.i64 + -1.0;
        if (*v109.i64 < 0.0)
        {
          *v109.i64 = *v109.i64 + 1.0;
          v111 = v112;
        }

        v108 = *v109.i64 + v111 + -1.0;
        v109.i64[0] = v122.i64[0];
      }

      while (v108 < *v122.i64);
    }

    v121.i64[0] = v104;
    lazy protocol witness table accessor for type GregorianCalendarError and conformance GregorianCalendarError();
    swift_allocError();
    *v97 = v108;
LABEL_157:
    *(v97 + 8) = v121.u64[0];
    *(v97 + 24) = 0;
    *(v97 + 32) = 0x80;
    swift_willThrow();
    memcpy(v136, __src, 0x11BuLL);
    outlined destroy of DateComponents(v136);
  }

  else
  {
LABEL_155:
    memcpy(v134, __src, 0x11BuLL);
    outlined destroy of DateComponents(v134);
    v8.i64[0] = v119.i64[0];
    *v115 = v119.i64[0];
  }

  return *v8.i8;
}

Foundation::DateInterval_optional __swiftcall _CalendarGregorian.dateInterval(of:for:)(Foundation::Calendar::Component of, Foundation::Date a2)
{
  v5 = v3;
  v6 = *of;
  v7 = *v2;
  if (v6 <= 5)
  {
    if (*of > 3u)
    {
      if (v6 == 4)
      {
        v10 = *(v4 + 120);
        ObjectType = swift_getObjectType();
        *__dst = v7;
        v12 = *(v10 + 40);
        swift_unknownObjectRetain();
        v13 = v12(__dst, ObjectType, v10);
        of = swift_unknownObjectRelease();
        *(v5 + 8) = 0x40AC200000000000;
        v8 = floor((v7 + v13) / 3600.0) * 3600.0;
        a2._time = v8 - v13;
      }

      else
      {
        *(v3 + 8) = 0x404E000000000000;
        v8 = floor(v7 / 60.0);
        a2._time = v8 * 60.0;
      }

      *v5 = a2._time;
      goto LABEL_89;
    }

    if ((v6 - 1) >= 3)
    {
      if (v7 >= -6.3113904e10)
      {
        *&a2._time = xmmword_18121F3F0;
      }

      else
      {
        *&a2._time = xmmword_18121F400;
      }

      *v3 = *&a2._time;
      goto LABEL_89;
    }

    goto LABEL_15;
  }

  if (v6 > 0x12)
  {
LABEL_13:
    if ((v6 - 7) >= 2)
    {
      a2._time = floor(v7);
      *v3 = a2._time;
      v9 = 0x3FF0000000000000;
      goto LABEL_63;
    }

    v6 = 3;
LABEL_15:
    LOBYTE(v90[0]) = v6;
    *__src = v7;
    *(&of - 8) = _CalendarGregorian.firstInstant(of:at:)(v90, a2);
    if (__dst[1])
    {
      goto LABEL_16;
    }

    v14 = __dst[0];
    v15.i64[0] = __dst[0];
    v60 = v15;
    if (v6 > 9)
    {
      if (v6 <= 11)
      {
        if (v6 == 10)
        {
          v17 = 10;
        }

        else
        {
          v17 = 11;
        }

        goto LABEL_60;
      }

      if (v6 == 12)
      {
        v17 = 12;
        goto LABEL_60;
      }

      v16 = *__dst;
      if (v6 != 18)
      {
LABEL_81:
        *&v67 = 8447;
        *&v82 = v16;
        v63 = *(v4 + 112);
        swift_unknownObjectRetain();
        _CalendarGregorian.dateComponents(_:from:in:)(&v67, &v82, &v63, v89);
        swift_unknownObjectRelease();
        memcpy(v90, v89, 0x11BuLL);
        v86 = v90[4];
        v87 = v90[5];
        v88 = v90[6];
        v82 = v90[0];
        v83 = v90[1];
        v84 = v90[2];
        v85 = v90[3];
        *(v80 + 3) = HIDWORD(v90[7]);
        v80[0] = *(&v90[7] + 9);
        *(v78 + 3) = HIDWORD(v90[8]);
        v78[0] = *(&v90[8] + 9);
        *(v76 + 3) = HIDWORD(v90[9]);
        v76[0] = *(&v90[9] + 9);
        v69 = *(&v90[12] + 9);
        v70 = *(&v90[13] + 9);
        v67 = *(&v90[10] + 9);
        v68 = *(&v90[11] + 9);
        v74 = *(&v90[17] + 9);
        v72 = *(&v90[15] + 9);
        v73 = *(&v90[16] + 9);
        v71 = *(&v90[14] + 9);
        v81 = 0;
        v79 = 0;
        v77 = 0;
        v75 = 0;
        __src[0] = v90[0];
        __src[1] = v90[1];
        __src[5] = v90[5];
        __src[6] = v90[6];
        __src[3] = v90[3];
        __src[4] = v90[4];
        __src[2] = v90[2];
        *&__src[7] = 0;
        BYTE8(__src[7]) = 0;
        HIDWORD(__src[7]) = HIDWORD(v90[7]);
        *(&__src[7] + 9) = *(&v90[7] + 9);
        *&__src[8] = 0;
        BYTE8(__src[8]) = 0;
        HIDWORD(__src[8]) = HIDWORD(v90[8]);
        *(&__src[8] + 9) = *(&v90[8] + 9);
        *&__src[9] = 0;
        BYTE8(__src[9]) = 0;
        HIDWORD(__src[9]) = HIDWORD(v90[9]);
        *(&__src[9] + 9) = *(&v90[9] + 9);
        *&__src[10] = 0;
        BYTE8(__src[10]) = 0;
        *(&__src[17] + 9) = *(&v90[17] + 9);
        *(&__src[16] + 9) = *(&v90[16] + 9);
        *(&__src[13] + 9) = *(&v90[13] + 9);
        *(&__src[12] + 9) = *(&v90[12] + 9);
        *(&__src[11] + 9) = *(&v90[11] + 9);
        *(&__src[10] + 9) = *(&v90[10] + 9);
        *(&__src[15] + 9) = *(&v90[15] + 9);
        *(&__src[14] + 9) = *(&v90[14] + 9);
        memcpy(v89, __src, 0x11BuLL);
        outlined init with copy of DateComponents(v90, &v63);
        outlined init with copy of DateComponents(__src, &v63);
        _CalendarGregorian.date(from:)(v89, &v65);
        memcpy(__dst, v89, 0x11BuLL);
        of = outlined destroy of DateComponents(__dst);
        if (v66)
        {
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
          goto LABEL_109;
        }

        v57 = v65;
        v62 = v65;
        v61 = *(v4 + 112);
        swift_unknownObjectRetain();
        _CalendarGregorian.timeZoneTransitionInterval(at:timeZone:)(&v62, &v61, &v63);
        outlined destroy of DateComponents(v90);
        swift_unknownObjectRelease();
        v89[4] = v86;
        v89[5] = v87;
        v89[6] = v88;
        v89[0] = v82;
        v89[1] = v83;
        v89[2] = v84;
        v89[3] = v85;
        *&v89[7] = 0;
        BYTE8(v89[7]) = 0;
        HIDWORD(v89[7]) = *(v80 + 3);
        *(&v89[7] + 9) = v80[0];
        *&v89[8] = 0;
        BYTE8(v89[8]) = 0;
        *(&v89[8] + 9) = v78[0];
        HIDWORD(v89[8]) = *(v78 + 3);
        *&v89[9] = 0;
        BYTE8(v89[9]) = 0;
        *(&v89[9] + 9) = v76[0];
        HIDWORD(v89[9]) = *(v76 + 3);
        *&v89[10] = 0;
        BYTE8(v89[10]) = 0;
        *(&v89[17] + 9) = v74;
        *(&v89[16] + 9) = v73;
        *(&v89[13] + 9) = v70;
        *(&v89[12] + 9) = v69;
        *(&v89[11] + 9) = v68;
        *(&v89[10] + 9) = v67;
        *(&v89[15] + 9) = v72;
        *(&v89[14] + 9) = v71;
        of = outlined destroy of DateComponents(v89);
        if (v64)
        {
          a2._time = *v60.i8;
          v58 = v14;
          if (v16 <= *v60.i64)
          {
            goto LABEL_16;
          }

          if (v57 >= *v60.i64)
          {
            a2._time = v57 - *v60.i64;
LABEL_88:
            *v5 = v58;
            *(v5 + 8) = a2._time;
            goto LABEL_89;
          }

          goto LABEL_99;
        }

        a2._time = v57 - *(&v63 + 1);
        v8 = *v60.i64;
        v58 = v14;
        if (v57 - *(&v63 + 1) >= *v60.i64)
        {
          a2._time = a2._time - *v60.i64;
          goto LABEL_88;
        }

        __break(1u);
        goto LABEL_91;
      }
    }

    else
    {
      if (v6 <= 2)
      {
        if (v6 == 1)
        {
          LOBYTE(v63) = 1;
LABEL_61:
          *&v89[0] = __dst[0];
          __src[0] = *(v4 + 112);
          swift_unknownObjectRetain();
          v20 = 1;
          goto LABEL_62;
        }

        v16 = *__dst;
        if (v6 == 2)
        {
          v17 = 2;
LABEL_60:
          LOBYTE(v63) = v17;
          goto LABEL_61;
        }

        goto LABEL_81;
      }

      if (v6 != 3)
      {
        v16 = *__dst;
        if (v6 == 9)
        {
          LOBYTE(v63) = 2;
          *&v89[0] = __dst[0];
          __src[0] = *(v4 + 112);
          swift_unknownObjectRetain();
          v20 = 3;
LABEL_62:
          _s10Foundation18_CalendarGregorianC3add_2to6amount10inTimeZoneAA4DateVAA0B0V9ComponentO_AISiAA0hI0VtAA0cB5ErrorOYKF(&v63, v89, v20, __src, __dst, v90, v18, v19);
          swift_unknownObjectRelease();
          v16 = *v90;
          goto LABEL_81;
        }

        goto LABEL_81;
      }
    }

    v21 = *(v4 + 112);
    v22 = *(v4 + 120);
    *v23.i64 = *__dst - trunc(*__dst);
    v24.f64[0] = NAN;
    v24.f64[1] = NAN;
    v25 = *vbslq_s8(vnegq_f64(v24), v23, v60).i64;
    if (v25 >= 0.0)
    {
      v26 = v25;
    }

    else
    {
      v26 = v25 + 1.0;
    }

    *&v90[0] = 112;
    *&v89[0] = __dst[0];
    if (v25 >= 0.0)
    {
      v27 = *v60.i64 - v25;
    }

    else
    {
      v27 = *v60.i64 - v25 + -1.0;
    }

    __dst[0] = v21;
    __dst[1] = v22;
    swift_unknownObjectRetain_n();
    _CalendarGregorian.dateComponents(_:from:in:)(v90, v89, __dst, __src);
    swift_unknownObjectRelease();
    of = memcpy(__dst, __src, 0x11BuLL);
    if (__dst[15] & 1) != 0 || (__dst[17] & 1) != 0 || (__dst[19])
    {
      goto LABEL_105;
    }

    v28 = __dst[14];
    v29 = __dst[16];
    v30 = __dst[18];
    of = outlined destroy of DateComponents(__dst);
    v31 = 3600 * v28;
    if ((v28 * 3600) >> 64 != (3600 * v28) >> 63)
    {
LABEL_91:
      __break(1u);
      goto LABEL_92;
    }

    v32 = 60 * v29;
    if ((v29 * 60) >> 64 != (60 * v29) >> 63)
    {
LABEL_92:
      __break(1u);
      goto LABEL_93;
    }

    v33 = __OFADD__(v31, v32);
    v34 = v31 + v32;
    if (v33)
    {
LABEL_93:
      __break(1u);
      goto LABEL_94;
    }

    v35 = v34 + v30;
    if (__OFADD__(v34, v30))
    {
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
      goto LABEL_96;
    }

    v36 = v27 + 86400.0;
    *&v89[0] = 112;
    *&v63 = v36;
    __src[0] = *(v4 + 112);
    swift_unknownObjectRetain();
    _CalendarGregorian.dateComponents(_:from:in:)(v89, &v63, __src, v90);
    swift_unknownObjectRelease();
    of = memcpy(__src, v90, 0x11BuLL);
    if (BYTE8(__src[7]) & 1) != 0 || (BYTE8(__src[8]) & 1) != 0 || (BYTE8(__src[9]))
    {
      goto LABEL_106;
    }

    v37 = *&__src[7];
    v38 = *&__src[8];
    v39 = *&__src[9];
    of = outlined destroy of DateComponents(__src);
    v40 = 3600 * v37;
    if ((v37 * 3600) >> 64 != (3600 * v37) >> 63)
    {
      goto LABEL_95;
    }

    v41 = 60 * v38;
    if ((v38 * 60) >> 64 != (60 * v38) >> 63)
    {
LABEL_96:
      __break(1u);
      goto LABEL_97;
    }

    v33 = __OFADD__(v40, v41);
    v42 = v40 + v41;
    if (v33)
    {
LABEL_97:
      __break(1u);
      goto LABEL_98;
    }

    v33 = __OFADD__(v42, v39);
    v43 = v42 + v39;
    if (v33)
    {
LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
      goto LABEL_100;
    }

    v44 = v35;
    if (v35 == v43)
    {
      v45 = v36;
    }

    else
    {
      v46 = swift_getObjectType();
      *v90 = v36;
      v47 = *(v22 + 40);
      v48 = v47(v90, v46, v22);
      *&v90[0] = v14;
      *&of = v47(v90, v46, v22);
      if (v48 == of)
      {
        v45 = v36;
      }

      else
      {
        v49 = of;
        if (__OFSUB__(of, v48))
        {
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
          goto LABEL_102;
        }

        v45 = v36 + (of - v48);
        *&v67 = 112;
        *&v82 = v45;
        v63 = *(v4 + 112);
        swift_unknownObjectRetain();
        _CalendarGregorian.dateComponents(_:from:in:)(&v67, &v82, &v63, v89);
        swift_unknownObjectRelease();
        of = memcpy(v90, v89, 0x11BuLL);
        if (BYTE8(v90[7]) & 1) != 0 || (BYTE8(v90[8]) & 1) != 0 || (BYTE8(v90[9]))
        {
          goto LABEL_108;
        }

        v50 = *&v90[7];
        v51 = *&v90[8];
        v59 = *&v90[9];
        of = outlined destroy of DateComponents(v90);
        v52 = 3600 * v50;
        if ((v50 * 3600) >> 64 != (3600 * v50) >> 63)
        {
          goto LABEL_101;
        }

        v53 = 60 * v51;
        if ((v51 * 60) >> 64 != (60 * v51) >> 63)
        {
LABEL_102:
          __break(1u);
          goto LABEL_103;
        }

        v33 = __OFADD__(v52, v53);
        v54 = v52 + v53;
        if (v33)
        {
LABEL_103:
          __break(1u);
          goto LABEL_104;
        }

        v33 = __OFADD__(v54, v59);
        v55 = v54 + v59;
        if (v33)
        {
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
          goto LABEL_107;
        }

        if (v55 != v44 && v49 < v48)
        {
          v45 = v36;
        }
      }
    }

    *&v63 = v45;
    *&v89[0] = v21;
    *(&v89[0] + 1) = v22;
    _CalendarGregorian.timeZoneTransitionInterval(at:timeZone:)(&v63, v89, v90);
    if (v90[1])
    {
      swift_unknownObjectRelease();
    }

    else
    {
      v56 = *(v90 + 1);
      swift_unknownObjectRelease();
      v45 = v45 - v56;
    }

    v16 = v26 + v45 + 0.0;
    goto LABEL_81;
  }

  if (((1 << v6) & 0x41E00) != 0)
  {
    goto LABEL_15;
  }

  if (((1 << v6) & 0x3C000) == 0)
  {
    if (v6 == 13)
    {
      v8 = 0.000000001;
      a2._time = floor(v7 * 1000000000.0) * 0.000000001;
      *v3 = a2._time;
      v9 = 0x3E112E0BE826D695;
LABEL_63:
      *(v5 + 8) = v9;
LABEL_89:
      *(v5 + 16) = 0;
      goto LABEL_109;
    }

    goto LABEL_13;
  }

LABEL_16:
  *v5 = 0;
  *(v5 + 8) = 0;
  *(v5 + 16) = 1;
LABEL_109:
  result.value.duration = v8;
  result.value.start = a2;
  result.is_nil = of;
  return result;
}

uint64_t specialized Data._Representation.withUnsafeBytes<A>(_:)(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v10[2] = *MEMORY[0x1E69E9840];
  v5 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v5 != 2)
    {
      memset(v10, 0, 14);
      v6 = v10;
      return (a1)(v10, v6);
    }

    v7 = *(a3 + 16);
    v8 = *(a3 + 24);
    return specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v7, v8, a1);
  }

  if (v5)
  {
    v7 = a3;
    v8 = a3 >> 32;
    if (a3 >> 32 < a3)
    {
      __break(1u);
    }

    return specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v7, v8, a1);
  }

  v10[0] = a3;
  LOWORD(v10[1]) = a4;
  BYTE2(v10[1]) = BYTE2(a4);
  BYTE3(v10[1]) = BYTE3(a4);
  BYTE4(v10[1]) = BYTE4(a4);
  BYTE5(v10[1]) = BYTE5(a4);
  v6 = v10 + BYTE6(a4);
  return (a1)(v10, v6);
}

unint64_t lazy protocol witness table accessor for type Date and conformance Date()
{
  result = lazy protocol witness table cache variable for type Date and conformance Date;
  if (!lazy protocol witness table cache variable for type Date and conformance Date)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date and conformance Date);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date and conformance Date;
  if (!lazy protocol witness table cache variable for type Date and conformance Date)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date and conformance Date);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date and conformance Date;
  if (!lazy protocol witness table cache variable for type Date and conformance Date)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date and conformance Date);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date and conformance Date;
  if (!lazy protocol witness table cache variable for type Date and conformance Date)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date and conformance Date);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date and conformance Date;
  if (!lazy protocol witness table cache variable for type Date and conformance Date)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date and conformance Date);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date and conformance Date;
  if (!lazy protocol witness table cache variable for type Date and conformance Date)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date and conformance Date);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date and conformance Date;
  if (!lazy protocol witness table cache variable for type Date and conformance Date)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date and conformance Date);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date and conformance Date;
  if (!lazy protocol witness table cache variable for type Date and conformance Date)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date and conformance Date);
  }

  return result;
}

char *StringProtocol.components<A>(separatedBy:)(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v4 = a3;
  v6 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*(v9 + 8) + 8);
  dispatch thunk of Collection.startIndex.getter();
  v11 = v68;
  dispatch thunk of Collection.endIndex.getter();
  if (v67 >> 14 < v11 >> 14)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v12 = StringProtocol._asContiguousUTF8Substring(from:)(v11);
  v65 = v14;
  v66 = v15;
  if (!v15)
  {
    StringProtocol._ephemeralString.getter();
    v44 = String._bridgeToObjectiveCImpl()();

    StringProtocol._ephemeralString.getter();
    v45 = String._bridgeToObjectiveCImpl()();

    v46 = [v44 componentsSeparatedByString_];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (!v46)
    {
      return MEMORY[0x1E69E7CC0];
    }

    type metadata accessor for __SwiftDeferredNSArray();
    if (swift_dynamicCastClass())
    {
    }

    else
    {
      v53 = v46;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
    v54 = swift_dynamicCastClass();
    if (v54)
    {
      v3 = v54;
    }

    else
    {
      swift_unknownObjectRelease();
      [v46 copy];
      v55 = _bridgeCocoaArray<A>(_:)();
      swift_unknownObjectRelease();
      v3 = specialized _arrayForceCast<A, B>(_:)(v55);
    }

    return v3;
  }

  v16 = v12;
  v10 = v13;
  v63 = specialized static StringProtocol.== infix<A>(_:_:)(a1, 10, 0xE100000000000000, v4);
  (*(v6 + 16))(v8, a1, v4);
  v17 = Substring.init<A>(_:)();
  v62 = v19;
  v64 = v20;
  v21 = v10 >> 14;
  v22 = v16;
  if (v16 >> 14 < v10 >> 14)
  {
    v23 = v17;
    v60 = v18;
    v61 = v17 ^ v18;
    v3 = MEMORY[0x1E69E7CC0];
    v24 = v16;
    v58 = v16 >> 14;
    v59 = v17;
    v25 = v16 >> 14;
    while (v21 >= v25)
    {
      v26 = Substring.subscript.getter();
      v30 = v26 ^ v27;
      if ((v26 ^ v27) < 0x4000 || v61 < 0x4000)
      {
        if (v30 < 0x4000)
        {
          v56 = v25;
        }

        else
        {
          v3 = MEMORY[0x1E69E7CC0];
          v56 = v58;
        }

        if (v30 >= 0x4000)
        {
          v4 = v22;
        }

        else
        {
          v4 = v24;
        }

        if (v21 >= v56)
        {
          goto LABEL_27;
        }

        goto LABEL_44;
      }

      if (v63)
      {
        v31 = specialized _StringCompareOptionsIterable._range<A>(of:toHalfWidth:diacriticsInsensitive:caseFold:anchored:backwards:)(v23, v60, v62, v64, 0, 0, 0, 0, 0, v26, v27, v28, v29);
      }

      else
      {
        v31 = specialized _StringCompareOptionsIterable._range<A>(of:toHalfWidth:diacriticsInsensitive:caseFold:anchored:backwards:)(v23, v60, v62, v64, 0, 0, 0, 0, 0, v26, v27);
      }

      v34 = v31;
      v4 = v32;
      v35 = v33;

      if ((v35 & 1) != 0 || (v36 = v4 >> 14, v34 >> 14 == v4 >> 14))
      {
        v4 = v24;
        v36 = v25;
LABEL_26:
        if (v21 < v36)
        {
          goto LABEL_44;
        }

        goto LABEL_27;
      }

      if (v34 >> 14 < v25)
      {
        goto LABEL_46;
      }

      v37 = Substring.subscript.getter();
      v38 = MEMORY[0x1865CAE80](v37);
      v40 = v39;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v3 + 2) + 1, 1, v3);
      }

      v42 = *(v3 + 2);
      v41 = *(v3 + 3);
      if (v42 >= v41 >> 1)
      {
        v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v42 + 1, 1, v3);
      }

      *(v3 + 2) = v42 + 1;
      v43 = &v3[16 * v42];
      *(v43 + 4) = v38;
      *(v43 + 5) = v40;
      v24 = v4;
      v25 = v4 >> 14;
      v23 = v59;
      if (v36 >= v21)
      {
        goto LABEL_26;
      }
    }

    goto LABEL_45;
  }

  v3 = MEMORY[0x1E69E7CC0];
  v4 = v16;
  if (v21 < v16 >> 14)
  {
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

LABEL_27:
  v47 = Substring.subscript.getter();
  v4 = MEMORY[0x1865CAE80](v47);
  v10 = v48;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_48:
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v3 + 2) + 1, 1, v3);
  }

  v50 = *(v3 + 2);
  v49 = *(v3 + 3);
  if (v50 >= v49 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v49 > 1), v50 + 1, 1, v3);
  }

  *(v3 + 2) = v50 + 1;
  v51 = &v3[16 * v50];
  *(v51 + 4) = v4;
  *(v51 + 5) = v10;
  return v3;
}

uint64_t specialized static StringProtocol.== infix<A>(_:_:)(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v32 - v12;
  v16 = MEMORY[0x1EEE9AC00](v14);
  if (v17 == MEMORY[0x1E69E6158])
  {
    v21 = *a1;
    v22 = a1[1];

    return specialized static StringProtocol.== infix<A>(_:_:)(v21, v22, a2, a3);
  }

  else if (a4 == MEMORY[0x1E69E67B0])
  {
    v24 = *a1;
    v25 = a1[1];
    v26 = a1[2];
    v27 = a1[3];

    return specialized static StringProtocol.== infix<A>(_:_:)(v24, v25, v26, v27, a2, a3);
  }

  else
  {
    v18 = *(v8 + 16);
    v18(v32 - v15, a1, a4, v16);
    if (swift_dynamicCast())
    {
      v20 = v32[0];
      v19 = v32[1];
    }

    else
    {
      (v18)(v13, a1, a4);
      if (swift_dynamicCast())
      {
        v20 = v32[2];
        v19 = v32[3];
      }

      else
      {
        (v18)(v10, a1, a4);
        v20 = String.init<A>(_:)();
        v19 = v28;
      }
    }

    dispatch thunk of Collection.startIndex.getter();
    v29 = v32[0];
    dispatch thunk of Collection.endIndex.getter();
    if ((a3 & 0x2000000000000000) != 0)
    {
      v30 = HIBYTE(a3) & 0xF;
    }

    else
    {
      v30 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v20 == a2 && v19 == a3 && !(v29 >> 16) && v32[0] >> 16 == v30)
    {

      v31 = 1;
    }

    else
    {
      v31 = _stringCompareInternal(_:_:_:_:expecting:)();
    }

    return v31 & 1;
  }
}

uint64_t specialized static StringProtocol.== infix<A>(_:_:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a4) & 0xF;
  }

  else
  {
    v6 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (a1 == a3 && a2 == a4 && v5 == v6)
  {
    return 1;
  }

  else
  {
    return _stringCompareInternal(_:_:_:_:expecting:)() & 1;
  }
}

void _SwiftURL.appending<A>(path:directoryHint:encodingSlashes:compatibility:)(uint64_t *a1@<X0>, int a2@<W2>, int a3@<W3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v6 = v5;
  v194 = a2;
  LODWORD(v195) = a3;
  v8 = a1;
  v196 = a5;
  v242 = *MEMORY[0x1E69E9840];
  v9 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v193 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v193 = *v12;
  v13 = dispatch thunk of Collection.isEmpty.getter();
  v197 = v5;
  if (v13)
  {
    v14 = (*(*(v5 + 16) + 168) & 1) != 0 ? MEMORY[0x1865CBC20](0, 0xE000000000000000) : String.subscript.getter();
    v16 = v14;
    v17 = v15;

    v18 = (v16 ^ v17) >> 14;
    v6 = v197;
    if (!v18)
    {
      v19 = URLParseInfo.netLocationRange.getter();
      if ((v21 & 1) != 0 || (v19 ^ v20) < 0x4000)
      {
        v70 = v196;
        *v196 = 0;
        v70[1] = 0;
        return;
      }
    }
  }

  v22 = 0;
  v24 = *(v9 + 16);
  v23 = (v9 + 16);
  v24(v11, v8, a4);
  v25 = String.init<A>(_:)();
  v27 = v26;
  if (_SwiftURL.isFileURL.getter())
  {

    v25 = specialized String.withFileSystemRepresentation<A>(_:)(v25, v27, v25, v27);
    v29 = v28;
    swift_bridgeObjectRelease_n();
    v27 = v29;
  }

  if (v194)
  {
    *&v221 = MEMORY[0x1E69E7CD0];
    v30 = specialized Set._Variant.insert(_:)(&v233, 47);
    if ((v195 & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if ((v195 & 1) == 0)
  {
    v47 = 0;
    *&v233 = v25;
    *(&v233 + 1) = v27;
    v48 = 1 << *(MEMORY[0x1E69E7CD0] + 32);
    if (v48 < 64)
    {
      v49 = ~(-1 << v48);
    }

    else
    {
      v49 = -1;
    }

    v50 = v49 & *(MEMORY[0x1E69E7CD0] + 56);
    v51 = (v48 + 63) >> 6;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          if (!v50)
          {
            do
            {
              v52 = v47 + 1;
              if (__OFADD__(v47, 1))
              {
                __break(1u);
                goto LABEL_167;
              }

              if (v52 >= v51)
              {
                goto LABEL_62;
              }

              v50 = *(MEMORY[0x1E69E7CD0] + 8 * v52 + 56);
              ++v47;
            }

            while (!v50);
            v47 = v52;
          }

          v53 = __clz(__rbit64(v50));
          v50 &= v50 - 1;
          v54 = *(*(MEMORY[0x1E69E7CD0] + 48) + (v53 | (v47 << 6)));
          if ((v54 - 38) >= 0xA && v54 != 33 && v54 != 36)
          {
            v55 = v54 - 58;
            if ((v54 - 58) <= 0xFFFFFFF5)
            {
              break;
            }
          }
        }

        if (v55 <= 6)
        {
          break;
        }

LABEL_57:
        if (v54 != 95 && (v54 - 65) >= 0x1A && v54 != 126 && (v54 - 97) >= 0x1A)
        {
LABEL_61:

          __break(1u);
LABEL_62:

          MEMORY[0x1EEE9AC00](v56);
          v191 = &v233;
          LOWORD(v192) = 16;
          v57 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.addingPercentEncoding(forURLComponent:skipAlreadyEncoded:)specialized partial apply, (&v193 - 8), v25, v27);
          if (!v58)
          {
            v57 = _sSy10FoundationE21addingPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9component18skipAlreadyEncodedSSqd___AA15URLComponentSetACLLVSbtSlRd__s5UInt8V7ElementRtd__lFSS_SS8UTF8ViewVTt2g5(v25, v27, 0x10u, 0);
          }

          v59 = v57;
          v60 = v58;

          v202 = v59;
          v203 = v60;
          goto LABEL_78;
        }
      }

      if (((1 << v55) & 0x4B) == 0)
      {
        if (v54 == 63)
        {
          goto LABEL_61;
        }

        goto LABEL_57;
      }
    }
  }

  *&v221 = MEMORY[0x1E69E7CD0];
LABEL_15:
  v30 = specialized Set._Variant.insert(_:)(&v233, 59);
LABEL_16:
  v31 = 0;
  v32 = v221;
  v207 = v25;
  *v208 = v27;
  v33 = 1 << *(v221 + 32);
  v34 = -1;
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  v35 = v34 & *(v221 + 56);
  v36 = (v33 + 63) >> 6;
  do
  {
    while (1)
    {
      while (1)
      {
        if (!v35)
        {
          while (1)
          {
            v37 = v31 + 1;
            if (__OFADD__(v31, 1))
            {
              break;
            }

            if (v37 >= v36)
            {
              goto LABEL_36;
            }

            v35 = *(v221 + 56 + 8 * v37);
            ++v31;
            if (v35)
            {
              v31 = v37;
              goto LABEL_24;
            }
          }

          __break(1u);
          goto LABEL_163;
        }

LABEL_24:
        v38 = __clz(__rbit64(v35));
        v35 &= v35 - 1;
        v39 = *(*(v221 + 48) + (v38 | (v31 << 6)));
        if ((v39 - 38) >= 0xA && v39 != 33 && v39 != 36)
        {
          v40 = v39 - 58;
          if ((v39 - 58) <= 0xFFFFFFF5)
          {
            break;
          }
        }
      }

      if (v40 > 6)
      {
        break;
      }

      if (((1 << v40) & 0x4B) == 0)
      {
        if (v39 == 63)
        {
          goto LABEL_35;
        }

        break;
      }
    }
  }

  while (v39 == 95 || (v39 - 65) < 0x1A || v39 == 126 || (v39 - 97) < 0x1A);
LABEL_35:
  __break(1u);
LABEL_36:
  MEMORY[0x1EEE9AC00](v30);
  v191 = &v207;
  LOWORD(v192) = 16;
  v41 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.addingPercentEncoding(forURLComponent:skipAlreadyEncoded:)specialized partial apply, (&v193 - 8), v25, v27);
  if (!v42)
  {
    v41 = _sSy10FoundationE21addingPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9component18skipAlreadyEncodedSSqd___AA15URLComponentSetACLLVSbtSlRd__s5UInt8V7ElementRtd__lFSS_SS8UTF8ViewVTt2g5(v25, v27, 0x10u, 0);
  }

  v43 = v41;
  v44 = v42;
  if (!v32[2] || (v45 = specialized Collection.firstIndex(where:)(v41, v42, v32), (v46 & 1) != 0))
  {

    goto LABEL_77;
  }

  v61 = specialized Collection.suffix(from:)(v45, v43, v44);
  *&v233 = v61;
  *(&v233 + 1) = v62;
  *&v234 = v63;
  *(&v234 + 1) = v64;
  if ((v64 & 0x1000000000000000) != 0)
  {
    Substring._slowMakeContiguousUTF8()();
    v65 = *(&v234 + 1);
    v63 = v234;
    v62 = *(&v233 + 1);
    v61 = v233;
  }

  else
  {
    v65 = v64;
  }

  v66 = v61 >> 16;
  v67 = v62 >> 16;
  if ((v65 & 0x2000000000000000) != 0)
  {
    *v205 = v63;
    *&v205[8] = v65 & 0xFFFFFFFFFFFFFFLL;
    v69 = v67 - v66;
    v68 = &v205[v66];
    goto LABEL_74;
  }

  if ((v63 & 0x1000000000000000) == 0)
  {
    goto LABEL_175;
  }

  v68 = ((v65 & 0xFFFFFFFFFFFFFFFLL) + 32);
LABEL_70:
  v68 += v66;
  while (1)
  {
    v69 = v67 - v66;
LABEL_74:
    closure #3 in static RFC3986Parser.percentEncode<A>(pathComponent:including:)(v68, v69, v32, &v226);
    v195 = v22;
    if (v22)
    {

      __break(1u);
      return;
    }

    v22 = v226;
    v67 = *v227;
    v71 = String.subscript.getter();
    v73 = v72;
    v75 = v74;
    v66 = v76;

    *v205 = 0;
    *&v205[8] = 0xE000000000000000;
    v77 = String.count.getter();
    v78 = Substring.distance(from:to:)();
    v79 = __OFADD__(v77, v78);
    v80 = v77 + v78;
    if (!v79)
    {
      break;
    }

    __break(1u);
LABEL_175:
    v68 = _StringObject.sharedUTF8.getter();
    if (v68)
    {
      goto LABEL_70;
    }
  }

  MEMORY[0x1865CAED0](v80);
  v226 = v71;
  *v227 = v73;
  *&v227[8] = v75;
  *&v227[16] = v66;
  lazy protocol witness table accessor for type Substring and conformance Substring();
  String.append<A>(contentsOf:)();
  v226 = v22;
  *v227 = v67;
  String.append<A>(contentsOf:)();

  v43 = *v205;
  v44 = *&v205[8];
  v22 = v195;
LABEL_77:
  v202 = v43;
  v203 = v44;
  v6 = v197;
LABEL_78:
  v27 = specialized appendedPath #1 <A>() in _SwiftURL.appending<A>(path:directoryHint:encodingSlashes:compatibility:)(v6, &v202);
  v25 = v81;

  v200 = v27;
  v201 = v25;
  v82 = specialized BidirectionalCollection.last.getter(v27, v25);
  if (v193 > 1)
  {
    if (v193 != 2 || (v83 = v22, v84 = v82, v85 = _SwiftURL.isFileURL.getter(), v82 = v84, (v85 & 1) == 0))
    {
      if ((v82 & 0x1FF) != 0x2F)
      {
        goto LABEL_151;
      }

      goto LABEL_104;
    }

    if ((specialized Collection.first.getter(v27, v25) & 0x1FF) != 0x2F)
    {
      if ((specialized Collection.first.getter(v27, v25) & 0x1FF) == 0x2F)
      {
LABEL_185:
        __break(1u);
LABEL_186:
        __break(1u);
      }

      if (*(v6 + 24))
      {
        v119 = *(v6 + 32);
        ObjectType = swift_getObjectType();
        v121 = *(v119 + 224);
        swift_unknownObjectRetain();
        v122 = v121(1, ObjectType, v119);
        v124 = v123;
        if ((*(v119 + 152))(ObjectType, v119))
        {
          v125 = HIBYTE(v124) & 0xF;
          if ((v124 & 0x2000000000000000) == 0)
          {
            v125 = v122 & 0xFFFFFFFFFFFFLL;
          }

          if (!v125)
          {
            v195 = v83;

            *&v233 = 47;
            *(&v233 + 1) = 0xE100000000000000;
            MEMORY[0x1865CB0E0](v27, v25);
            swift_unknownObjectRelease();
            v129 = *(&v233 + 1);
            v128 = v233;
            goto LABEL_119;
          }
        }

        v126 = specialized Collection.first.getter(v27, v25);
        if ((v126 & 0x1FF) == 0x2F)
        {
          v195 = v83;
        }

        else
        {
          LOBYTE(v233) = 47;
          MEMORY[0x1EEE9AC00](v126);
          v191 = &v233;
          specialized BidirectionalCollection.lastIndex(where:)(closure #1 in BidirectionalCollection<>.lastIndex(of:)specialized partial apply, (&v193 - 8), v122, v124);
          v195 = v83;
          if ((v127 & 1) == 0)
          {
LABEL_163:
            String.index(after:)();
            v174 = String.subscript.getter();
            v176 = v175;
            v178 = v177;
            v180 = v179;
            v226 = 0;
            *v227 = 0xE000000000000000;
            v181 = String.count.getter();
            v182 = Substring.distance(from:to:)();
            v79 = __OFADD__(v181, v182);
            v183 = v181 + v182;
            if (v79)
            {
              goto LABEL_186;
            }

            MEMORY[0x1865CAED0](v183);
            *&v233 = v174;
            *(&v233 + 1) = v176;
            *&v234 = v178;
            *(&v234 + 1) = v180;
            lazy protocol witness table accessor for type Substring and conformance Substring();
            String.append<A>(contentsOf:)();
            *&v233 = v27;
            *(&v233 + 1) = v25;

            String.append<A>(contentsOf:)();

            swift_unknownObjectRelease();
            v128 = v226;
            v129 = *v227;
LABEL_119:
            v86 = String._droppingTrailingSlashes.getter(v128, v129);
            v131 = v130;

            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCys5UInt8VGMd);
            v132 = static _SetStorage.allocate(capacity:)();
            v133 = v132 + 56;
            v91 = *(v132 + 40);
            v134 = byte_1EEED3C80;
            v135 = MEMORY[0x1865CD020](v91, byte_1EEED3C80, 1);
            v136 = -1 << *(v132 + 32);
            v137 = v135 & ~v136;
            v138 = v137 >> 6;
            v139 = *(v132 + 56 + 8 * (v137 >> 6));
            v140 = 1 << v137;
            v141 = *(v132 + 48);
            if (((1 << v137) & v139) != 0)
            {
              v142 = ~v136;
              while (*(v141 + v137) != v134)
              {
                v137 = (v137 + 1) & v142;
                v138 = v137 >> 6;
                v139 = *(v133 + 8 * (v137 >> 6));
                v140 = 1 << v137;
                if (((1 << v137) & v139) == 0)
                {
                  goto LABEL_123;
                }
              }
            }

            else
            {
LABEL_123:
              *(v133 + 8 * v138) = v140 | v139;
              *(v141 + v137) = v134;
              v143 = *(v132 + 16);
              v79 = __OFADD__(v143, 1);
              v144 = v143 + 1;
              if (v79)
              {
                goto LABEL_178;
              }

              *(v132 + 16) = v144;
            }

            v145 = byte_1EEED3C81;
            v146 = MEMORY[0x1865CD020](v91, byte_1EEED3C81, 1);
            v147 = -1 << *(v132 + 32);
            v148 = v146 & ~v147;
            v149 = v148 >> 6;
            v150 = *(v133 + 8 * (v148 >> 6));
            v151 = 1 << v148;
            v152 = *(v132 + 48);
            if (((1 << v148) & v150) != 0)
            {
              v153 = ~v147;
              while (*(v152 + v148) != v145)
              {
                v148 = (v148 + 1) & v153;
                v149 = v148 >> 6;
                v150 = *(v133 + 8 * (v148 >> 6));
                v151 = 1 << v148;
                if (((1 << v148) & v150) == 0)
                {
                  goto LABEL_129;
                }
              }

LABEL_131:
              v156 = HIBYTE(v131) & 0xF;
              if ((v131 & 0x2000000000000000) == 0)
              {
                v156 = v86 & 0xFFFFFFFFFFFFLL;
              }

              if (v156)
              {
                *&v233 = v86;
                *(&v233 + 1) = v131;
                MEMORY[0x1EEE9AC00](v146);
                *(&v193 - 4) = &v233;
                *(&v193 - 3) = v132;
                v191 = 4;

                v157 = v195;
                v158 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, (&v193 - 12), v86, v131);
                v195 = v157;
                if (v159 == 1)
                {
                  v158 = _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSS_SS8UTF8ViewVTt2B5(v86, v131, v132, 4);
                }

                v86 = v158;
                v91 = v159;

                if (!v91)
                {
                  goto LABEL_139;
                }

LABEL_140:
                if ((v91 & 0x2000000000000000) != 0)
                {
                  isStackAllocationSafe = HIBYTE(v91) & 0xF;
                }

                else
                {
                  isStackAllocationSafe = v86 & 0xFFFFFFFFFFFFLL;
                }

                if (!isStackAllocationSafe)
                {
                  goto LABEL_150;
                }

                if ((v91 & 0x1000000000000000) == 0)
                {
                  goto LABEL_145;
                }

                goto LABEL_179;
              }

              goto LABEL_138;
            }

LABEL_129:
            *(v133 + 8 * v149) = v151 | v150;
            *(v152 + v148) = v145;
            v154 = *(v132 + 16);
            v79 = __OFADD__(v154, 1);
            v155 = v154 + 1;
            if (!v79)
            {
              *(v132 + 16) = v155;
              goto LABEL_131;
            }

LABEL_178:
            __break(1u);
LABEL_179:
            isStackAllocationSafe = String.UTF8View._foreignCount()();
LABEL_145:
            v161 = 3 * isStackAllocationSafe;
            if ((isStackAllocationSafe * 3) >> 64 != (3 * isStackAllocationSafe) >> 63)
            {
              __break(1u);
LABEL_181:
              v189 = v118;
              isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
              if ((isStackAllocationSafe & 1) == 0)
              {
                v190 = swift_slowAlloc();
                specialized closure #1 in String.withFileSystemRepresentation<A>(_:)(v190, v189, v86, v91, &v226);
                MEMORY[0x1865D2690](v190, -1, -1);

                if (v226)
                {
                  goto LABEL_104;
                }

                goto LABEL_151;
              }

LABEL_148:
              MEMORY[0x1EEE9AC00](isStackAllocationSafe);
              v163 = &v193 - v162;
              if (String._fileSystemRepresentation(into:)(&v193 - v162, v164, v86, v91))
              {
                v240 = 0u;
                v241[0] = 0u;
                v238 = 0u;
                v239 = 0u;
                v236 = 0u;
                v237 = 0u;
                v234 = 0u;
                v235 = 0u;
                v233 = 0u;
                if (!lstat(v163, &v233))
                {
                  v172 = WORD2(v233);
                  v173 = S_IFMT.getter() & v172;
                  LOWORD(v172) = S_IFDIR.getter();

                  if (v173 == v172)
                  {
                    goto LABEL_104;
                  }

                  goto LABEL_151;
                }
              }

LABEL_150:

              goto LABEL_151;
            }

            if (v161 >= -1)
            {
              v118 = v161 + 1;
              if (v161 < 1024)
              {
                goto LABEL_148;
              }

              goto LABEL_181;
            }

            __break(1u);
            goto LABEL_185;
          }
        }

        swift_unknownObjectRelease();
      }

      else
      {
        v195 = v83;
      }

      v128 = v27;
      v129 = v25;
      goto LABEL_119;
    }

    v195 = v83;
    v86 = String._droppingTrailingSlashes.getter(v27, v25);
    v88 = v87;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCys5UInt8VGMd);
    v89 = static _SetStorage.allocate(capacity:)();
    v90 = v89 + 56;
    v91 = *(v89 + 40);
    v92 = byte_1EEED3C58;
    v93 = MEMORY[0x1865CD020](v91, byte_1EEED3C58, 1);
    v94 = -1 << *(v89 + 32);
    v95 = v93 & ~v94;
    v96 = v95 >> 6;
    v97 = *(v89 + 56 + 8 * (v95 >> 6));
    v98 = 1 << v95;
    v99 = *(v89 + 48);
    if (((1 << v95) & v97) != 0)
    {
      v100 = ~v94;
      while (*(v99 + v95) != v92)
      {
        v95 = (v95 + 1) & v100;
        v96 = v95 >> 6;
        v97 = *(v90 + 8 * (v95 >> 6));
        v98 = 1 << v95;
        if (((1 << v95) & v97) == 0)
        {
          goto LABEL_88;
        }
      }
    }

    else
    {
LABEL_88:
      *(v90 + 8 * v96) = v98 | v97;
      *(v99 + v95) = v92;
      v101 = *(v89 + 16);
      v79 = __OFADD__(v101, 1);
      v102 = v101 + 1;
      if (v79)
      {
        goto LABEL_177;
      }

      *(v89 + 16) = v102;
    }

    v103 = byte_1EEED3C59;
    v104 = MEMORY[0x1865CD020](v91, byte_1EEED3C59, 1);
    v105 = -1 << *(v89 + 32);
    v106 = v104 & ~v105;
    v107 = v106 >> 6;
    v108 = *(v90 + 8 * (v106 >> 6));
    v109 = 1 << v106;
    v110 = *(v89 + 48);
    if (((1 << v106) & v108) != 0)
    {
      v111 = ~v105;
      while (*(v110 + v106) != v103)
      {
        v106 = (v106 + 1) & v111;
        v107 = v106 >> 6;
        v108 = *(v90 + 8 * (v106 >> 6));
        v109 = 1 << v106;
        if (((1 << v106) & v108) == 0)
        {
          goto LABEL_94;
        }
      }

LABEL_96:
      v114 = HIBYTE(v88) & 0xF;
      if ((v88 & 0x2000000000000000) == 0)
      {
        v114 = v86 & 0xFFFFFFFFFFFFLL;
      }

      if (v114)
      {
        *&v233 = v86;
        *(&v233 + 1) = v88;
        MEMORY[0x1EEE9AC00](v104);
        *(&v193 - 4) = &v233;
        *(&v193 - 3) = v89;
        v191 = 4;
        v115 = v195;
        v116 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, (&v193 - 12), v86, v88);
        v195 = v115;
        if (v117 == 1)
        {
          v116 = _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSS_SS8UTF8ViewVTt2B5(v86, v88, v89, 4);
        }

        v86 = v116;
        v91 = v117;

        if (v91)
        {
          goto LABEL_140;
        }

LABEL_139:
        v86 = 0;
        v91 = 0xE000000000000000;
        goto LABEL_140;
      }

LABEL_138:

      goto LABEL_139;
    }

LABEL_94:
    *(v90 + 8 * v107) = v109 | v108;
    *(v110 + v106) = v103;
    v112 = *(v89 + 16);
    v79 = __OFADD__(v112, 1);
    v113 = v112 + 1;
    if (!v79)
    {
      *(v89 + 16) = v113;
      goto LABEL_96;
    }

LABEL_177:
    __break(1u);
    goto LABEL_178;
  }

  if (v193)
  {
    goto LABEL_151;
  }

LABEL_104:
  if ((specialized BidirectionalCollection.last.getter(v27, v25) & 0x1FF) != 0x2F)
  {
    MEMORY[0x1865CB0E0](47, 0xE100000000000000);
  }

LABEL_151:
  v23 = &v221;

  v8 = &v226;
  specialized URLComponents._URLComponents.init(parseInfo:)(v165, &v226);
  v6 = v226;
  v198 = *&v227[1];
  v199 = v227[5];
  v223 = v228;
  v224 = v229;
  v225[0] = *v230;
  *(v225 + 9) = *&v230[9];
  v221 = *&v227[7];
  v222 = *&v227[23];
  v220 = v231;
  v218 = *&v230[41];
  v219 = *&v230[57];
  v27 = v200;
  v22 = v201;
  if ((v201 & 0x1000000000000000) == 0)
  {
    if ((v201 & 0x2000000000000000) != 0)
    {
      v167 = HIBYTE(v201) & 0xF;
      *&v233 = v200;
      *(&v233 + 1) = v201 & 0xFFFFFFFFFFFFFFLL;
      v166 = &v233;
    }

    else
    {
      if ((v200 & 0x1000000000000000) == 0)
      {
        goto LABEL_170;
      }

      v166 = ((v201 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v167 = v200 & 0xFFFFFFFFFFFFLL;
    }

    while (!_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys5UInt8VG_Tt2g5(v166, v167, 0x10u, 1))
    {
LABEL_169:
      v192 = 0;
      v191 = 1001;
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
LABEL_170:
      v166 = _StringObject.sharedUTF8.getter();
    }

    goto LABEL_157;
  }

LABEL_167:
  *&v233 = v27;
  *(&v233 + 1) = v22;
  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol._ephemeralString.getter();
  v184 = String._bridgeToObjectiveCImpl()();

  v185 = [v184 _fastCharacterContents];
  v186 = v184;
  if (v185)
  {
    *&v233 = v27;
    *(&v233 + 1) = v22;
    StringProtocol._ephemeralString.getter();
    v187 = String._bridgeToObjectiveCImpl()();

    v188 = [v187 length];
    swift_unknownObjectRelease();
    if (!_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v185, v188, 0x10u, 1))
    {
      goto LABEL_169;
    }
  }

  else if ((_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSS8UTF8ViewV_Tt2g5(v27, v22, 0x10u, 1) & 1) == 0)
  {
    goto LABEL_169;
  }

LABEL_157:
  v232 = *(v8 + 13);

  outlined destroy of TermOfAddress?(&v232, &_sSSSgMd);
  *v205 = v6;
  v205[8] = 0;
  *&v205[9] = v198;
  v205[13] = v199;
  v205[14] = 0;
  *&v205[47] = v223;
  *&v205[63] = v224;
  *&v205[79] = v225[0];
  *&v205[88] = *(v23 + 73);
  *&v205[15] = v221;
  *&v205[31] = v222;
  *&v205[104] = v27;
  *&v206[0] = v22;
  *(v206 + 8) = v218;
  *(&v206[1] + 8) = v219;
  WORD4(v206[2]) = v220;
  v235 = *&v205[32];
  v236 = *&v205[48];
  v237 = *&v205[64];
  v238 = *&v205[80];
  v233 = *v205;
  v234 = *&v205[16];
  v239 = *&v205[96];
  v240 = v206[0];
  v241[0] = v206[1];
  *(v241 + 10) = *(&v206[1] + 10);
  outlined init with copy of URLComponents(v205, &v207);
  v168 = URLComponents._URLComponents._uncheckedString(original:)(0);
  outlined destroy of URLComponents(v205);
  v204 = *(v197 + 24);
  swift_unknownObjectRetain();
  v169 = specialized _SwiftURL.__allocating_init(stringOrEmpty:relativeTo:)(v168._countAndFlagsBits, v168._object, &v204);
  v210 = v223;
  v211 = v224;
  *v212 = v225[0];
  *&v212[9] = *(v23 + 73);
  *&v208[7] = v221;
  v209 = v222;
  v215 = v218;
  v207 = v6;
  v208[0] = 0;
  *&v208[1] = v198;
  v208[5] = v199;
  v208[6] = 0;
  v213 = v27;
  v214 = v22;
  v216 = v219;
  v217 = v220;
  outlined destroy of URLComponents(&v207);

  v170 = &protocol witness table for _SwiftURL;
  if (!v169)
  {
    v170 = 0;
  }

  v171 = v196;
  *v196 = v169;
  v171[1] = v170;
}

void *URL.appendingPathExtension(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v8 = *v3;
  v7 = v3[1];
  ObjectType = swift_getObjectType();
  result = (*(v7 + 376))(v12, a1, a2, ObjectType, v7);
  v11 = v12[0];
  if (v12[0])
  {
    v7 = v12[1];
  }

  else
  {
    result = swift_unknownObjectRetain();
    v11 = v8;
  }

  *a3 = v11;
  a3[1] = v7;
  return result;
}

uint64_t _PlistKeyedDecodingContainer.decode(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v66 = a7;
  v60 = a4;
  v64 = a3;
  v65 = a2;
  v12 = type metadata accessor for Optional();
  v50 = *(v12 - 8);
  v51 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v49 = &v48 - v13;
  swift_getAssociatedTypeWitness();
  v62 = a6;
  v63 = a8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v54 = *(AssociatedTypeWitness - 8);
  v55 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v52 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v53 = &v48 - v18;
  v19 = swift_getAssociatedTypeWitness();
  v20 = type metadata accessor for Optional();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v48 - v22;
  v58 = v19;
  v57 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v48 - v25;
  v59 = a1;
  v61 = a5;
  v27 = dispatch thunk of CodingKey.stringValue.getter();
  if (!*(v64 + 16))
  {

    goto LABEL_6;
  }

  v48 = v26;
  v29 = v64;
  v30 = specialized __RawDictionaryStorage.find<A>(_:)(v27, v28);
  v32 = v31;

  if ((v32 & 1) == 0)
  {
LABEL_6:
    (*(v57 + 56))(v23, 1, 1, v58);
    (*(v21 + 8))(v23, v20);
    type metadata accessor for DecodingError();
    swift_allocError();
    specialized _PlistKeyedDecodingContainer.errorForMissingValue<A>(key:type:)(v59, v60, v61, v66, v41, &_sSbmMd, &_sSbmMR, &_sSbmmMd);
    swift_willThrow();
    return AssociatedConformanceWitness & 1;
  }

  v34 = v54;
  v33 = v55;
  v35 = *(v29 + 56) + *(v54 + 72) * v30;
  v36 = v52;
  (*(v54 + 16))(v52, v35, v55);
  v37 = v53;
  (*(v34 + 32))(v53, v36, v33);
  v38 = *(AssociatedConformanceWitness + 80);
  swift_unknownObjectRetain();
  v39 = swift_checkMetadataState();
  v40 = v56;
  v38(v37, v39, AssociatedConformanceWitness);
  (*(v34 + 8))(v37, v33);
  swift_unknownObjectRelease();
  if (!v40)
  {
    v44 = v57;
    v43 = v58;
    (*(v57 + 56))(v23, 0, 1, v58);
    v45 = v48;
    (*(v44 + 32))(v48, v23, v43);
    v46 = v61;
    AssociatedConformanceWitness = *(v61 - 8);
    v47 = v49;
    (*(AssociatedConformanceWitness + 16))(v49, v59, v61);
    (*(AssociatedConformanceWitness + 56))(v47, 0, 1, v46);
    LOBYTE(AssociatedConformanceWitness) = specialized _PlistDecoder.unwrapBool<A>(from:for:_:)(v45, v60, v47, v62, v46, v63, v66);
    (*(v50 + 8))(v47, v51);
    (*(v44 + 8))(v45, v43);
  }

  return AssociatedConformanceWitness & 1;
}

uint64_t specialized _PlistDecoder.unwrapBool<A>(from:for:_:)(uint64_t a1, unint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v41 = *(a5 - 8);
  v42 = a3;
  MEMORY[0x1EEE9AC00](a1);
  v40 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Optional();
  v39 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v36 - v19;
  if ((*(a6 + 40))(a1, a4, a6, v18))
  {
    v36 = a7;
    v37 = a2;
    v38 = type metadata accessor for DecodingError();
    swift_allocError();
    v22 = v21;
    *v21 = MEMORY[0x1E69E6370];
    v23 = v39;
    v24 = *(v39 + 16);
    v24(v20, v42, v14);
    v24(v16, v20, v14);
    v25 = v41;
    if ((*(v41 + 48))(v16, 1, a5) == 1)
    {
      v26 = *(v23 + 8);
      v26(v16, v14);
      _CodingPathNode.path.getter(v37);
      v26(v20, v14);
    }

    else
    {
      (*(v25 + 32))(v40, v16, a5);
      v28 = _CodingPathNode.path.getter(v37);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
      inited = swift_initStackObject();
      v42 = v22;
      v30 = inited;
      *(inited + 16) = xmmword_181218E20;
      v31 = v36;
      *(inited + 56) = a5;
      *(inited + 64) = v31;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
      v33 = v40;
      (*(v25 + 16))(boxed_opaque_existential_0, v40, a5);
      v43 = v28;
      v34 = v30;
      v22 = v42;
      specialized Array.append<A>(contentsOf:)(v34);
      (*(v25 + 8))(v33, a5);
      (*(v23 + 8))(v20, v14);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v38 - 8) + 104))(v22, *MEMORY[0x1E69E6B08]);
    v27 = swift_willThrow();
  }

  else
  {
    v27 = (*(a6 + 48))(a1, a2, v42, a5, a7, a4, a6);
  }

  return v27 & 1;
}

void JSONDecoderImpl.unwrapDate<A>(from:for:_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X6>, uint64_t *a8@<X8>)
{
  v303 = a7;
  *&v307 = a1;
  v304 = a5;
  *(&v307 + 1) = a2;
  *&v308 = a4;
  v300 = a8;
  v324 = *MEMORY[0x1E69E9840];
  v9 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v298 = (&v293 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v297 = &v293 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v299 = &v293 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v301 = &v293 - v16;
  v305 = v17;
  v18 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v293 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v293 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v293 - v25;
  MEMORY[0x1EEE9AC00](v27);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v293 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v293 - v32;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v293 - v35;
  v41.n128_f64[0] = MEMORY[0x1EEE9AC00](v37);
  v43 = &v293 - v42;
  if ((a3 & 0xE0) == 0xA0 && v307 == 0 && a3 == 160)
  {
    v44 = v38;
    v45 = v39;
    *&v307 = type metadata accessor for DecodingError();
    *(&v307 + 1) = swift_allocError();
    v306 = v46;
    *v46 = &type metadata for Date;
    v47 = *(v44 + 16);
    v47(v43, v304, v45);
    v47(v36, v43, v45);
    v48 = v305;
    if ((v9[6])(v36, 1, v305) == 1)
    {
      v49 = *(v44 + 8);
      v49(v36, v45);
      _CodingPathNode.path.getter(v308);
      v49(v43, v45);
    }

    else
    {
      v82 = v301;
      v9[4](v301, v36, v48);
      v83 = _CodingPathNode.path.getter(v308);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_181218E20;
      v85 = v303;
      *(inited + 56) = v48;
      *(inited + 64) = v85;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
      v9[2](boxed_opaque_existential_0, v82, v48);
      *&v321 = v83;
      specialized Array.append<A>(contentsOf:)(inited);
      (v9[1])(v301, v48);
      (*(v44 + 8))(v43, v45);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
    *&v321 = 0;
    *(&v321 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(55);
    MEMORY[0x1865CB0E0](0xD000000000000019, 0x8000000181481E50);
    MEMORY[0x1865CB0E0](1702125892, 0xE400000000000000);
    MEMORY[0x1865CB0E0](0xD00000000000001CLL, 0x8000000181481E70);
    v87 = v306;
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v307 - 8) + 104))(v87, *MEMORY[0x1E69E6B08]);
    goto LABEL_22;
  }

  LODWORD(v301) = a3;
  v50 = v306;
  v51 = v306[5];
  v52 = v306[6];
  if (!*(v306 + 56))
  {
    v294 = v26;
    v295 = v39;
    v57 = v40;
    v298 = v9;
    v60 = v38;
    v61 = v51;
    v62 = v51;
    v56 = v308;
    v63 = v302;
    JSONDecoderImpl.unwrapString<A>(from:for:_:)(v307, *(&v307 + 1), v301, v308, v304, v305, v303);
    if (v63)
    {
      v64 = v61;
      v65 = v52;
LABEL_12:
      outlined consume of JSONDecoder.DateDecodingStrategy(v64, v65, 0);
      return;
    }

    v296 = v61;
    v299 = v52;
    v91 = String._bridgeToObjectiveCImpl()();

    v92 = [v62 dateFromString_];
    swift_unknownObjectRelease();
    if (v92)
    {
      [v92 timeIntervalSinceReferenceDate];
      v94 = v93;
      outlined consume of JSONDecoder.DateDecodingStrategy(v296, v299, 0);

      goto LABEL_28;
    }

LABEL_57:
    *&v307 = type metadata accessor for DecodingError();
    *(&v307 + 1) = swift_allocError();
    v306 = v122;
    v123 = v60;
    v124 = v60[2];
    v125 = v295;
    v124(v57, v304, v295);
    v126 = v294;
    v304 = v57;
    v124(v294, v57, v125);
    v127 = v298;
    v128 = v305;
    if ((v298[6])(v126, 1, v305) == 1)
    {
      v129 = v123[1];
      v129(v126, v125);
      _CodingPathNode.path.getter(v56);
      v129(v304, v125);
    }

    else
    {
      v127[4](v297, v126, v128);
      v136 = _CodingPathNode.path.getter(v56);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
      v137 = swift_initStackObject();
      *(v137 + 16) = xmmword_181218E20;
      v138 = v303;
      *(v137 + 56) = v128;
      *(v137 + 64) = v138;
      v139 = __swift_allocate_boxed_opaque_existential_0((v137 + 32));
      v140 = v297;
      v127[2](v139, v297, v128);
      *&v321 = v136;
      specialized Array.append<A>(contentsOf:)(v137);
      (v127[1])(v140, v128);
      (v123[1])(v304, v125);
    }

    v141 = v299;
    v142 = v306;
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v307 - 8) + 104))(v142, *MEMORY[0x1E69E6B00]);
    swift_willThrow();
    v64 = v296;
    v65 = v141;
    goto LABEL_12;
  }

  v53 = v308;
  if (*(v306 + 56) != 1)
  {
    if (v51 > 1)
    {
      if (v51 ^ 2 | v52)
      {
        v96 = v302;
        v97 = JSONDecoderImpl.unwrapString<A>(from:for:_:)(v307, *(&v307 + 1), v301, v308, v304, v305, v303);
        v71 = v96;
        if (v96)
        {
          return;
        }

        v33 = v97;
        v99 = v98;
        if (one-time initialization token for cache == -1)
        {
LABEL_33:
          v101 = *(&xmmword_1ED440468 + 1);
          v100 = xmmword_1ED440468;
          *(&v321 + 1) = 0;
          BYTE4(v321) = 1;
          v323 = xmmword_1ED440468;
          LODWORD(v321) = 0x10000;
          v102 = one-time initialization token for cache;
          swift_unknownObjectRetain_n();
          if (v102 != -1)
          {
            swift_once();
          }

          v103 = qword_1ED440450;
          os_unfair_lock_lock((qword_1ED440450 + 24));
          v104 = *(v103 + 16);
          v105 = *(v104 + 16);
          *&v307 = v99;
          if (v105 && (v106 = specialized __RawDictionaryStorage.find<A>(_:)(7), (v107 & 1) != 0))
          {
            v308 = *(*(v104 + 56) + 16 * v106);
            v108 = v308;
            swift_unknownObjectRetain();
            os_unfair_lock_unlock((v103 + 24));
            if (v108)
            {
LABEL_115:
              v322 = v308;
              *&v312 = v100;
              *(&v312 + 1) = v101;
              Calendar.timeZone.setter(&v312);
              v317[0] = v321;
              v317[1] = v322;
              v317[2] = v323;
              v318 = v321;
              v319 = v322;
              v320 = v323;
              v312 = v321;
              v313 = v322;
              v314 = v323;
              Date.ISO8601FormatStyle.parse(_:in:)(v33, v99, &v315);
              if (v316)
              {
                v312 = v318;
                v313 = v319;
                v314 = v320;
                v315 = 0uLL;
                clock_gettime(_CLOCK_REALTIME, &v315);
                *&v315 = v315 + -978307200.0 + *(&v315 + 1) * 0.000000001;
                v187 = Date.ISO8601FormatStyle.format(_:)(v315);
                *&v312 = 0;
                *(&v312 + 1) = 0xE000000000000000;
                _StringGuts.grow(_:)(89);
                MEMORY[0x1865CB0E0](0x7020746F6E6E6143, 0xED00002065737261);
                MEMORY[0x1865CB0E0](v33, v99);
                MEMORY[0x1865CB0E0](46, 0xE100000000000000);
                MEMORY[0x1865CB0E0](0xD000000000000045, 0x800000018147DB60);
                MEMORY[0x1865CB0E0](v187._countAndFlagsBits, v187._object);
                MEMORY[0x1865CB0E0](46, 0xE100000000000000);
                v189 = *(&v312 + 1);
                v188 = v312;
                isTaggedPointer = _objc_isTaggedPointer(@"NSDebugDescription");
                v191 = @"NSDebugDescription";
                v192 = v191;
                *&v308 = v187._object;
                if (isTaggedPointer)
                {
                  TaggedPointerTag = _objc_getTaggedPointerTag(v191);
                  switch(TaggedPointerTag)
                  {
                    case 0:
                      v309 = 0;
                      _CFIndirectTaggedPointerStringGetContents();
                      v205 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
                      if (!v206)
                      {
                        [(__CFString *)v192 mutableCopy];
                        _bridgeAnyObjectToAny(_:)();

                        swift_unknownObjectRelease();
                        swift_dynamicCast();
                        v194 = v315;
                        v196 = *(&v315 + 1);
                        goto LABEL_154;
                      }

                      v194 = v205;
                      v196 = v206;
                      goto LABEL_150;
                    case 0x16:
                      v202 = [(__CFString *)v192 UTF8String];
                      if (!v202)
                      {
LABEL_271:
                        __break(1u);
                        goto LABEL_272;
                      }

                      v203 = String.init(utf8String:)(v202);
                      if (!v204)
                      {
LABEL_272:
                        __break(1u);
                        goto LABEL_273;
                      }

                      v194 = v203;
                      v196 = v204;
                      goto LABEL_150;
                    case 2:
                      MEMORY[0x1EEE9AC00](TaggedPointerTag);
                      v291 = v192;
                      v194 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                      v196 = v195;

                      goto LABEL_154;
                  }
                }

                LOBYTE(v315) = 0;
                *&v312 = 0;
                LOBYTE(v309) = 0;
                v310 = 0;
                IsCF = __CFStringIsCF();
                if (IsCF)
                {
                  v198 = v312;
                  if (v312)
                  {
                    if (v310 == 1)
                    {
                      if (v315)
                      {
                        lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
                      }

                      else
                      {
                        lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
                      }

                      v207 = String.init<A>(_immortalCocoaString:count:encoding:)();
                      goto LABEL_153;
                    }

                    if (v309)
                    {
                      if (v315 == 1)
                      {
                        MEMORY[0x1EEE9AC00](IsCF);
                        *(&v293 - 4) = v192;
                        *(&v293 - 3) = &v312;
                        LODWORD(v291) = 1536;
                        v292 = v198;
                      }

                      else
                      {
                        v209 = [(__CFString *)v192 lengthOfBytesUsingEncoding:4];
                        MEMORY[0x1EEE9AC00](v209);
                        *(&v293 - 4) = v192;
                        *(&v293 - 3) = &v312;
                        LODWORD(v291) = 134217984;
                        v292 = v210;
                      }

                      v211 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                      v196 = v212;
                      v213 = HIBYTE(v212) & 0xF;
                      if ((v212 & 0x2000000000000000) == 0)
                      {
                        v213 = v211 & 0xFFFFFFFFFFFFLL;
                      }

                      if (v213)
                      {
                        v194 = v211;
LABEL_150:

                        goto LABEL_154;
                      }
                    }

LABEL_152:
                    v207 = String.init(_cocoaString:)();
LABEL_153:
                    v194 = v207;
                    v196 = v208;
LABEL_154:
                    v311[0] = v194;
                    v311[1] = v196;
                    v311[5] = MEMORY[0x1E69E6158];
                    v311[2] = v188;
                    v311[3] = v189;
                    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd);
                    v214 = static _DictionaryStorage.allocate(capacity:)();
                    outlined init with copy of FloatingPointRoundingRule?(v311, &v312, &_sSS_yptMd);

                    outlined destroy of TermOfAddress?(v311, &_sSS_yptMd);
                    v215 = v312;
                    v216 = specialized __RawDictionaryStorage.find<A>(_:)(v312, *(&v312 + 1));
                    v218 = v217;

                    if (v218)
                    {
                      __break(1u);
                    }

                    else
                    {
                      v214[(v216 >> 6) + 8] |= 1 << v216;
                      *(v214[6] + 16 * v216) = v215;
                      outlined init with take of Any(&v313, (v214[7] + 32 * v216));
                      v219 = v214[2];
                      v220 = __OFADD__(v219, 1);
                      v221 = v219 + 1;
                      if (!v220)
                      {
                        v214[2] = v221;
                        v222 = _objc_isTaggedPointer(@"NSCocoaErrorDomain");
                        v223 = @"NSCocoaErrorDomain";
                        v224 = v223;
                        if (!v222)
                        {
                          goto LABEL_161;
                        }

                        v225 = _objc_getTaggedPointerTag(v223);
                        if (v225)
                        {
                          if (v225 != 22)
                          {
                            if (v225 == 2)
                            {
                              MEMORY[0x1EEE9AC00](v225);
                              v291 = v224;
                              String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

                              goto LABEL_190;
                            }

LABEL_161:
                            LOBYTE(v315) = 0;
                            *&v312 = 0;
                            LOBYTE(v309) = 0;
                            v310 = 0;
                            v226 = __CFStringIsCF();
                            if (v226)
                            {
                              v227 = v312;
                              if (!v312)
                              {
LABEL_187:

                                goto LABEL_190;
                              }

                              if (v310 == 1)
                              {
                                if (v315)
                                {
                                  lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
                                }

                                else
                                {
                                  lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
                                }

                                String.init<A>(_immortalCocoaString:count:encoding:)();
LABEL_190:
                                v238 = objc_allocWithZone(NSError);
                                v239 = String._bridgeToObjectiveCImpl()();

                                v240 = [v238 initWithDomain:v239 code:2048 userInfo:_NativeDictionary.bridged()()];
                                swift_unknownObjectRelease();
                                swift_unknownObjectRelease();
                                v241 = [v240 domain];
                                if (!v241)
                                {
                                  goto LABEL_204;
                                }

                                v242 = v241;
                                v243 = _objc_isTaggedPointer(v241);
                                v244 = v242;
                                v245 = v244;
                                if ((v243 & 1) == 0)
                                {
LABEL_196:
                                  LOBYTE(v315) = 0;
                                  *&v312 = 0;
                                  LOBYTE(v309) = 0;
                                  v310 = 0;
                                  v250 = __CFStringIsCF();
                                  if (v250)
                                  {
                                    v251 = v312;
                                    if (v312)
                                    {
                                      if (v310 == 1)
                                      {
                                        if (v315)
                                        {
                                          lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
                                        }

                                        else
                                        {
                                          lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
                                        }

                                        v260 = String.init<A>(_immortalCocoaString:count:encoding:)();
                                        goto LABEL_226;
                                      }

                                      if (v309)
                                      {
                                        if (v315 == 1)
                                        {
                                          *(&v307 + 1) = &v293;
                                          MEMORY[0x1EEE9AC00](v250);
                                          *(&v293 - 4) = v245;
                                          *(&v293 - 3) = &v312;
                                          LODWORD(v291) = 1536;
                                          v292 = v251;
                                        }

                                        else
                                        {
                                          v262 = [(__CFString *)v245 lengthOfBytesUsingEncoding:4];
                                          MEMORY[0x1EEE9AC00](v262);
                                          *(&v293 - 4) = v245;
                                          *(&v293 - 3) = &v312;
                                          LODWORD(v291) = 134217984;
                                          v292 = v263;
                                        }

                                        v258 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                                        v249 = v259;
                                        v264 = HIBYTE(v259) & 0xF;
                                        if ((v259 & 0x2000000000000000) == 0)
                                        {
                                          v264 = v258 & 0xFFFFFFFFFFFFLL;
                                        }

                                        if (v264)
                                        {
                                          v247 = v258;
                                          goto LABEL_210;
                                        }
                                      }

LABEL_225:
                                      v260 = String.init(_cocoaString:)();
LABEL_226:
                                      v247 = v260;
                                      v249 = v261;
                                      goto LABEL_227;
                                    }
                                  }

                                  else
                                  {
                                    v252 = v245;
                                    v253 = String.init(_nativeStorage:)();
                                    if (v254)
                                    {
                                      v247 = v253;
                                      v249 = v254;

                                      goto LABEL_228;
                                    }

                                    *&v312 = [(__CFString *)v252 length];
                                    if (v312)
                                    {
                                      goto LABEL_225;
                                    }
                                  }

LABEL_204:
                                  v247 = 0;
                                  v249 = 0xE000000000000000;
                                  goto LABEL_228;
                                }

                                v246 = _objc_getTaggedPointerTag(v244);
                                if (v246)
                                {
                                  if (v246 != 22)
                                  {
                                    if (v246 == 2)
                                    {
                                      MEMORY[0x1EEE9AC00](v246);
                                      v291 = v245;
                                      v247 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                                      v249 = v248;

                                      goto LABEL_228;
                                    }

                                    goto LABEL_196;
                                  }

                                  v255 = [(__CFString *)v245 UTF8String];
                                  if (!v255)
                                  {
LABEL_275:
                                    __break(1u);
                                    goto LABEL_276;
                                  }

                                  v256 = String.init(utf8String:)(v255);
                                  if (v257)
                                  {
LABEL_209:
                                    v247 = v256;
                                    v249 = v257;
LABEL_210:

LABEL_227:
LABEL_228:
                                    v265 = v224;
                                    v266 = v265;
                                    if (!v222)
                                    {
                                      goto LABEL_233;
                                    }

                                    v267 = _objc_getTaggedPointerTag(v265);
                                    if (v267)
                                    {
                                      if (v267 != 22)
                                      {
                                        if (v267 == 2)
                                        {
                                          MEMORY[0x1EEE9AC00](v267);
                                          v291 = v266;
                                          v268 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                                          v270 = v269;

                                          goto LABEL_262;
                                        }

LABEL_233:
                                        LOBYTE(v315) = 0;
                                        *&v312 = 0;
                                        LOBYTE(v309) = 0;
                                        v310 = 0;
                                        v271 = __CFStringIsCF();
                                        if (v271)
                                        {
                                          v272 = v312;
                                          if (!v312)
                                          {

                                            v268 = 0;
                                            v270 = 0xE000000000000000;
                                            goto LABEL_262;
                                          }

                                          if (v310 == 1)
                                          {
                                            if (v315)
                                            {
                                              lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
                                            }

                                            else
                                            {
                                              lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
                                            }

                                            v279 = String.init<A>(_immortalCocoaString:count:encoding:)();
                                            goto LABEL_261;
                                          }

                                          if (v309)
                                          {
                                            if (v315 == 1)
                                            {
                                              MEMORY[0x1EEE9AC00](v271);
                                              *(&v293 - 4) = v266;
                                              *(&v293 - 3) = &v312;
                                              LODWORD(v291) = 1536;
                                              v292 = v272;
                                            }

                                            else
                                            {
                                              v281 = [(__CFString *)v266 lengthOfBytesUsingEncoding:4];
                                              MEMORY[0x1EEE9AC00](v281);
                                              *(&v293 - 4) = v266;
                                              *(&v293 - 3) = &v312;
                                              LODWORD(v291) = 134217984;
                                              v292 = v282;
                                            }

                                            v283 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                                            v270 = v284;
                                            v285 = HIBYTE(v284) & 0xF;
                                            if ((v284 & 0x2000000000000000) == 0)
                                            {
                                              v285 = v283 & 0xFFFFFFFFFFFFLL;
                                            }

                                            if (v285)
                                            {
                                              v268 = v283;

                                              goto LABEL_262;
                                            }
                                          }
                                        }

                                        else
                                        {
                                          v273 = v266;
                                          v274 = String.init(_nativeStorage:)();
                                          if (v275)
                                          {
                                            v268 = v274;
                                            v270 = v275;

                                            goto LABEL_262;
                                          }

                                          *&v312 = [(__CFString *)v273 length];
                                          if (!v312)
                                          {

                                            v268 = 0;
                                            v270 = 0xE000000000000000;
                                            goto LABEL_262;
                                          }
                                        }

                                        v279 = String.init(_cocoaString:)();
LABEL_261:
                                        v268 = v279;
                                        v270 = v280;
LABEL_262:
                                        if (v247 == v268 && v249 == v270)
                                        {

LABEL_266:
                                          swift_willThrow();

                                          outlined destroy of DateComponents.ISO8601FormatStyle(v317);
                                          v287 = type metadata accessor for DecodingError();
                                          swift_allocError();
                                          v289 = v288;
                                          v290 = v306[20];

                                          _CodingPathNode.path.getter(v290);

                                          DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
                                          (*(*(v287 - 8) + 104))(v289, *MEMORY[0x1E69E6B00], v287);
LABEL_22:
                                          swift_willThrow();
                                          return;
                                        }

                                        v286 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                        if (v286)
                                        {
                                          goto LABEL_266;
                                        }

LABEL_269:
                                        __break(1u);
                                      }

                                      v276 = [(__CFString *)v266 UTF8String];
                                      if (!v276)
                                      {
LABEL_274:
                                        __break(1u);
                                        goto LABEL_275;
                                      }

                                      v277 = String.init(utf8String:)(v276);
                                      if (v278)
                                      {
LABEL_245:
                                        v268 = v277;
                                        v270 = v278;

                                        goto LABEL_262;
                                      }

                                      __break(1u);
                                    }

                                    v309 = 0;
                                    _CFIndirectTaggedPointerStringGetContents();
                                    v277 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
                                    if (!v278)
                                    {
                                      [(__CFString *)v266 mutableCopy];
                                      _bridgeAnyObjectToAny(_:)();

                                      swift_unknownObjectRelease();
                                      swift_dynamicCast();
                                      v268 = v315;
                                      v270 = *(&v315 + 1);
                                      goto LABEL_262;
                                    }

                                    goto LABEL_245;
                                  }

                                  __break(1u);
                                }

                                v309 = 0;
                                _CFIndirectTaggedPointerStringGetContents();
                                v256 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
                                if (!v257)
                                {
                                  [(__CFString *)v245 mutableCopy];
                                  _bridgeAnyObjectToAny(_:)();

                                  swift_unknownObjectRelease();
                                  swift_dynamicCast();
                                  v247 = v315;
                                  v249 = *(&v315 + 1);
                                  goto LABEL_227;
                                }

                                goto LABEL_209;
                              }

                              if (v309)
                              {
                                if (v315 == 1)
                                {
                                  MEMORY[0x1EEE9AC00](v226);
                                  *(&v293 - 4) = v224;
                                  *(&v293 - 3) = &v312;
                                  LODWORD(v291) = 1536;
                                  v292 = v227;
                                }

                                else
                                {
                                  v233 = [(__CFString *)v224 lengthOfBytesUsingEncoding:4];
                                  MEMORY[0x1EEE9AC00](v233);
                                  *(&v293 - 4) = v224;
                                  *(&v293 - 3) = &v312;
                                  LODWORD(v291) = 134217984;
                                  v292 = v234;
                                }

                                v235 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                                v237 = HIBYTE(v236) & 0xF;
                                if ((v236 & 0x2000000000000000) == 0)
                                {
                                  v237 = v235 & 0xFFFFFFFFFFFFLL;
                                }

                                if (v237)
                                {
                                  goto LABEL_187;
                                }
                              }
                            }

                            else
                            {
                              v228 = v224;
                              String.init(_nativeStorage:)();
                              if (v229 || (*&v312 = [(__CFString *)v228 length], !v312))
                              {

                                goto LABEL_190;
                              }
                            }

                            String.init(_cocoaString:)();
                            goto LABEL_190;
                          }

                          v230 = [(__CFString *)v224 UTF8String];
                          if (!v230)
                          {
LABEL_273:
                            __break(1u);
                            goto LABEL_274;
                          }

                          String.init(utf8String:)(v230);
                          if (v231)
                          {
                            goto LABEL_187;
                          }

                          __break(1u);
                        }

                        v309 = 0;
                        _CFIndirectTaggedPointerStringGetContents();
                        _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
                        if (!v232)
                        {
                          [(__CFString *)v224 mutableCopy];
                          _bridgeAnyObjectToAny(_:)();

                          swift_unknownObjectRelease();
                          swift_dynamicCast();
                          goto LABEL_190;
                        }

                        goto LABEL_187;
                      }
                    }

                    __break(1u);
                    goto LABEL_269;
                  }
                }

                else
                {
                  v199 = v192;
                  v200 = String.init(_nativeStorage:)();
                  if (v201)
                  {
                    v194 = v200;
                    v196 = v201;

                    goto LABEL_154;
                  }

                  *&v312 = [(__CFString *)v199 length];
                  if (v312)
                  {
                    goto LABEL_152;
                  }
                }

                v194 = 0;
                v196 = 0xE000000000000000;
                goto LABEL_154;
              }

              v94 = *(&v315 + 1);
              outlined destroy of DateComponents.ISO8601FormatStyle(v317);

LABEL_28:
              *v300 = v94;
              return;
            }
          }

          else
          {
            os_unfair_lock_unlock((v103 + 24));
          }

          v305 = v101;
          v143 = type metadata accessor for _CalendarGregorian();
          v144 = lazy protocol witness table accessor for type JSONDecoderImpl and conformance JSONDecoderImpl(&lazy protocol witness table cache variable for type _CalendarGregorian and conformance _CalendarGregorian, type metadata accessor for _CalendarGregorian);
          LOBYTE(v315) = 7;
          v318 = 0uLL;
          v317[0] = 0uLL;
          *&v312 = 0;
          BYTE8(v312) = 1;
          v291 = v143;
          v292 = v144;
          v304 = v143;
          v53 = protocol witness for _CalendarProtocol.init(identifier:timeZone:locale:firstWeekday:minimumDaysInFirstWeek:gregorianStartDate:) in conformance _CalendarGregorian(&v315, &v318, v317, 0, 1, 0, 1, &v312);
          os_unfair_lock_lock((v103 + 24));
          v145 = *(v103 + 16);
          if (*(v145 + 16))
          {
            v146 = specialized __RawDictionaryStorage.find<A>(_:)(7);
            if (v147)
            {
              v148 = *(*(v145 + 56) + 16 * v146);
LABEL_114:
              v308 = v148;
              swift_unknownObjectRetain();
              os_unfair_lock_unlock((v103 + 24));

              v101 = v305;
              goto LABEL_115;
            }
          }

          *&v308 = v144;
          swift_unknownObjectRetain();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v318 = *(v103 + 16);
          v59 = v318;
          v151 = specialized __RawDictionaryStorage.find<A>(_:)(7);
          v152 = *(v59 + 16);
          v153 = (v150 & 1) == 0;
          v154 = v152 + v153;
          if (!__OFADD__(v152, v153))
          {
            if (*(v59 + 24) >= v154)
            {
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                goto LABEL_96;
              }

              v156 = v59;
            }

            else
            {
              v155 = v150;
              specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v154, isUniquelyReferenced_nonNull_native);
              v156 = v318;
              v157 = specialized __RawDictionaryStorage.find<A>(_:)(7);
              if ((v155 & 1) != (v158 & 1))
              {
LABEL_276:
                KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
                __break(1u);
                return;
              }

              v151 = v157;
              LOBYTE(v150) = v155;
            }

            v99 = v307;
            v170 = v308;
            if ((v150 & 1) == 0)
            {
LABEL_112:
              specialized _NativeDictionary._insert(at:key:value:)(v151, 7, v53, v156, v304, v170);
              goto LABEL_113;
            }

LABEL_89:
            v171 = (*(v156 + 56) + 16 * v151);
            *v171 = v53;
            v171[1] = v170;
            swift_unknownObjectRelease();
LABEL_113:
            *(v103 + 16) = v156;
            *&v148 = v53;
            *(&v148 + 1) = v170;
            goto LABEL_114;
          }

LABEL_95:
          __break(1u);
LABEL_96:
          v301 = v151;
          LODWORD(v302) = v150;
          *(&v307 + 1) = v71;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation8CalendarV10IdentifierOAC01_D8Protocol_pGMd);
          v172 = static _DictionaryStorage.copy(original:)();
          v156 = v172;
          if (*(v59 + 16))
          {
            v173 = (v172 + 64);
            v174 = 1 << *(v156 + 32);
            v303 = (v59 + 64);
            v175 = (v174 + 63) >> 6;
            if (v156 != v59 || v173 >= &v303[8 * v175])
            {
              memmove(v173, v303, 8 * v175);
            }

            v176 = 0;
            *(v156 + 16) = *(v59 + 16);
            v177 = 1 << *(v59 + 32);
            v178 = *(v59 + 64);
            v179 = -1;
            if (v177 < 64)
            {
              v179 = ~(-1 << v177);
            }

            v180 = v179 & v178;
            v181 = (v177 + 63) >> 6;
            if ((v179 & v178) != 0)
            {
              do
              {
                v182 = __clz(__rbit64(v180));
                v180 &= v180 - 1;
LABEL_109:
                v185 = v182 | (v176 << 6);
                v186 = *(*(v59 + 56) + 16 * v185);
                *(*(v156 + 48) + v185) = *(*(v59 + 48) + v185);
                *(*(v156 + 56) + 16 * v185) = v186;
                swift_unknownObjectRetain();
              }

              while (v180);
            }

            v183 = v176;
            while (1)
            {
              v176 = v183 + 1;
              if (__OFADD__(v183, 1))
              {
                break;
              }

              if (v176 >= v181)
              {
                goto LABEL_111;
              }

              v184 = *&v303[8 * v176];
              ++v183;
              if (v184)
              {
                v182 = __clz(__rbit64(v184));
                v180 = (v184 - 1) & v184;
                goto LABEL_109;
              }
            }

            __break(1u);
            goto LABEL_271;
          }

LABEL_111:

          v99 = v307;
          v170 = v308;
          v151 = v301;
          if ((v302 & 1) == 0)
          {
            goto LABEL_112;
          }

          goto LABEL_89;
        }

LABEL_93:
        swift_once();
        goto LABEL_33;
      }

      v88 = v302;
      specialized JSONDecoderImpl.unwrapFloatingPoint<A, B>(from:as:for:_:)(v307, *(&v307 + 1), v301, v308, v304, v305, v303);
      if (v88)
      {
        return;
      }

      v90 = v89 / 1000.0;
    }

    else
    {
      if (!(v51 | v52))
      {
        v66 = *(v38 + 16);
        v67 = v39;
        v68 = v38;
        v66(v33, v304, v39, v41);
        (v66)(v30, v33, v67);
        v69 = v9[6];
        v70 = v9;
        v71 = v305;
        if ((v69)(v30, 1, v305) == 1)
        {
          v72 = *(v68 + 8);
          v72(v33, v67);
          v72(v30, v67);
          v73 = v306;
          v59 = v306[20];
          v33 = (v59 & 0x3FFFFFFFFFFFFFFFLL);

          swift_retain_n();
          goto LABEL_77;
        }

        v130 = v70[4];
        v130(v299, v30, v71);
        v131 = swift_allocObject();
        v132 = v303;
        v131[5] = v71;
        v131[6] = v132;
        v133 = __swift_allocate_boxed_opaque_existential_0(v131 + 2);
        v130(v133, v299, v71);
        v134 = *(v68 + 8);
        v99 = v68 + 8;
        v134(v33, v67);
        v131[7] = v53;
        if (v53 >> 62)
        {
          v73 = v306;
          if (v53 >> 62 != 1)
          {
            v159 = 0;
            goto LABEL_75;
          }

          v135 = ((v53 & 0x3FFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v135 = (v53 + 64);
          v73 = v306;
        }

        v159 = *v135;

LABEL_75:
        if (!__OFADD__(v159, 1))
        {
          v131[8] = v159 + 1;
          v59 = v73[20];
          v33 = (v59 & 0x3FFFFFFFFFFFFFFFLL);

          v53 = v131;
LABEL_77:
          v73[20] = v53;

          v160 = v73[2];
          v103 = (v73 + 2);
          v118 = v160;
          v161 = swift_isUniquelyReferenced_nonNull_native();
          *v103 = v160;
          if (v161)
          {
LABEL_78:
            v163 = *(v118 + 2);
            v162 = *(v118 + 3);
            if (v163 >= v162 >> 1)
            {
              v118 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v162 > 1), v163 + 1, 1, v118);
            }

            *(v118 + 2) = v163 + 1;
            v164 = &v118[24 * v163];
            v165 = *(&v307 + 1);
            *(v164 + 4) = v307;
            *(v164 + 5) = v165;
            v164[48] = v301;
            v306[2] = v118;

            v166 = v302;
            specialized JSONDecoderImpl.decode(_:)();
            v71 = v166;
            if (v166)
            {

              *(v100 + 160) = v59;

              if (*(*(v100 + 16) + 16))
              {
                goto LABEL_84;
              }

              __break(1u);
            }

            v168 = v167;

            *v300 = v168;
            *(v100 + 160) = v59;

            if (*(*(v100 + 16) + 16))
            {
LABEL_84:
              specialized Array._customRemoveLast()();
              if (v169 > 0xFDu)
              {
                specialized Array.remove(at:)(*(*v103 + 16) - 1);
              }

              goto LABEL_53;
            }

            __break(1u);
            goto LABEL_95;
          }

LABEL_91:
          v118 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v118 + 2) + 1, 1, v118);
          *v103 = v118;
          goto LABEL_78;
        }

        __break(1u);
        goto LABEL_93;
      }

      v95 = v302;
      specialized JSONDecoderImpl.unwrapFloatingPoint<A, B>(from:as:for:_:)(v307, *(&v307 + 1), v301, v308, v304, v305, v303);
      if (v95)
      {
        return;
      }
    }

    *v300 = v90 + -978307200.0;
    return;
  }

  v296 = v306[5];
  v299 = v52;
  v54 = *(v38 + 16);
  v55 = v304;
  v56 = v39;
  v304 = v38;
  v54(v23, v55, v39, v41);
  (v54)(v20, v23, v56);
  v57 = v305;
  if ((v9[6])(v20, 1, v305) == 1)
  {
    v58 = *(v304 + 8);

    v58(v23, v56);
    v58(v20, v56);
    v59 = v50[20];
    v33 = (v59 & 0x3FFFFFFFFFFFFFFFLL);

    v53 = v308;
    swift_retain_n();
    goto LABEL_42;
  }

  v74 = v9[4];
  v75 = v298;
  v74(v298, v20, v57);
  v60 = v74;
  v76 = swift_allocObject();
  v77 = v303;
  v76[5] = v57;
  v76[6] = v77;
  v78 = __swift_allocate_boxed_opaque_existential_0(v76 + 2);
  v74(v78, v75, v57);
  v79 = *(v304 + 8);

  v79(v23, v56);
  v80 = v308;
  v76[7] = v308;
  if (v80 >> 62)
  {
    if (v80 >> 62 != 1)
    {
      v110 = 1;
      goto LABEL_41;
    }

    v81 = ((v80 & 0x3FFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v81 = (v80 + 64);
  }

  v109 = *v81;

  v110 = v109 + 1;
  if (__OFADD__(v109, 1))
  {
    __break(1u);
    goto LABEL_57;
  }

LABEL_41:
  v76[8] = v110;
  v59 = v50[20];
  v33 = (v59 & 0x3FFFFFFFFFFFFFFFLL);

  v53 = v76;
LABEL_42:
  v50[20] = v53;

  v103 = (v50 + 2);
  v111 = v50[2];
  v112 = swift_isUniquelyReferenced_nonNull_native();
  *v103 = v111;
  if ((v112 & 1) == 0)
  {
    v111 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v111 + 2) + 1, 1, v111);
    *v103 = v111;
  }

  v114 = *(v111 + 2);
  v113 = *(v111 + 3);
  if (v114 >= v113 >> 1)
  {
    v111 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v113 > 1), v114 + 1, 1, v111);
  }

  *(v111 + 2) = v114 + 1;
  v115 = &v111[24 * v114];
  v116 = *(&v307 + 1);
  *(v115 + 4) = v307;
  *(v115 + 5) = v116;
  v115[48] = v301;
  v117 = v306;
  v306[2] = v111;
  *(&v322 + 1) = type metadata accessor for JSONDecoderImpl();
  *&v323 = lazy protocol witness table accessor for type JSONDecoderImpl and conformance JSONDecoderImpl(&lazy protocol witness table cache variable for type JSONDecoderImpl and conformance JSONDecoderImpl, type metadata accessor for JSONDecoderImpl);
  *&v321 = v117;

  v118 = v299;
  v119 = v302;
  (v296)(&v321);
  v120 = &v321;
  if (!v119)
  {
    goto LABEL_49;
  }

  __swift_destroy_boxed_opaque_existential_1(&v321);
  v117[20] = v59;

  if (!*(v117[2] + 16))
  {
    __break(1u);
LABEL_49:
    __swift_destroy_boxed_opaque_existential_1(v120);
    v117[20] = v59;

    if (*(v117[2] + 16))
    {
      goto LABEL_50;
    }

    __break(1u);
    goto LABEL_91;
  }

LABEL_50:
  specialized Array._customRemoveLast()();
  if (v121 > 0xFDu)
  {
    specialized Array.remove(at:)(*(*v103 + 16) - 1);
  }

  outlined consume of JSONDecoder.DateDecodingStrategy(v296, v299, 1);
LABEL_53:
  outlined consume of _CodingPathNode?(v53);
}

uint64_t specialized JSONDecoderImpl.unwrapFloatingPoint<A, B>(from:as:for:_:)(uint64_t a1, uint64_t a2, unsigned __int8 a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v10 = a3 >> 5;
  if (v10 == 1)
  {
    MEMORY[0x1EEE9AC00](a1);
    v42 = *(*(v8 + 32) + 24);
    MEMORY[0x1EEE9AC00](v43);

    os_unfair_lock_lock((v42 + 40));
    partial apply for specialized closure #1 in JSONMap.withBuffer<A>(for:perform:)((v42 + 16), &v46);
    os_unfair_lock_unlock((v42 + 40));
  }

  else
  {
    if (v10 == 5 && !(a2 | a1) && a3 == 160)
    {
      v16 = type metadata accessor for DecodingError();
      swift_allocError();
      v18 = v17;
      *v17 = MEMORY[0x1E69E63B0];
      v19 = _CodingPathNode.path.getter(a4);
      if (a8 != -1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
        v45 = v16;
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_181218E20;
        *(inited + 56) = &type metadata for _CodingKey;
        *(inited + 64) = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
        v21 = swift_allocObject();
        *(inited + 32) = v21;
        *(v21 + 16) = a5;
        *(v21 + 24) = a6;
        *(v21 + 32) = a7;
        *(v21 + 40) = a8;
        v46 = v19;
        outlined copy of _CodingKey(a5, a6, a7, a8);
        v22 = inited;
        v16 = v45;
        specialized Array.append<A>(contentsOf:)(v22);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
      v46 = 0;
      v47 = 0xE000000000000000;
      _StringGuts.grow(_:)(55);
      MEMORY[0x1865CB0E0](0xD000000000000019, 0x8000000181481E50);
      MEMORY[0x1865CB0E0](0x656C62756F44, 0xE600000000000000);
      MEMORY[0x1865CB0E0](0xD00000000000001CLL, 0x8000000181481E70);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v16 - 8) + 104))(v18, *MEMORY[0x1E69E6B08], v16);
      return swift_willThrow();
    }

    if (a3 > 0x1Fu || (a3 & 1) == 0 || !*(v8 + 88))
    {
LABEL_13:
      v28 = _CodingPathNode.path.getter(a4);
      if (a8 != -1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
        v29 = swift_initStackObject();
        *(v29 + 16) = xmmword_181218E20;
        *(v29 + 56) = &type metadata for _CodingKey;
        *(v29 + 64) = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
        v30 = swift_allocObject();
        *(v29 + 32) = v30;
        *(v30 + 16) = a5;
        *(v30 + 24) = a6;
        *(v30 + 32) = a7;
        *(v30 + 40) = a8;
        v46 = v28;
        outlined copy of _CodingKey(a5, a6, a7, a8);
        specialized Array.append<A>(contentsOf:)(v29);
      }

      v31 = type metadata accessor for DecodingError();
      swift_allocError();
      v33 = v32;
      *v32 = MEMORY[0x1E69E63B0];
      v46 = 0;
      v47 = 0xE000000000000000;
      _StringGuts.grow(_:)(43);

      v46 = 0xD000000000000024;
      v47 = 0x8000000181481F00;
      v34 = 0xE800000000000000;
      v35 = 0x676E697274732061;
      v36 = 0xEC0000007972616ELL;
      v37 = 0x6F69746369642061;
      v38 = 0xE800000000000000;
      v39 = 0x7961727261206E61;
      if (v10 != 4)
      {
        v39 = 1819047278;
        v38 = 0xE400000000000000;
      }

      if (v10 != 3)
      {
        v37 = v39;
        v36 = v38;
      }

      if (v10)
      {
        v35 = 1819242338;
        v34 = 0xE400000000000000;
      }

      if (v10 <= 2)
      {
        v40 = v35;
      }

      else
      {
        v40 = v37;
      }

      if (v10 <= 2)
      {
        v41 = v34;
      }

      else
      {
        v41 = v36;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
      MEMORY[0x1865CB0E0](v40, v41);

      MEMORY[0x1865CB0E0](0x64616574736E6920, 0xE90000000000002ELL);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v31 - 8) + 104))(v33, *MEMORY[0x1E69E6AF8], v31);
      return swift_willThrow();
    }

    v45 = v44;
    MEMORY[0x1EEE9AC00](a1);
    v23 = *(*(v8 + 32) + 24);
    MEMORY[0x1EEE9AC00](v24);
    v44[1] = v25;

    os_unfair_lock_lock((v23 + 40));
    partial apply for specialized closure #1 in JSONMap.withBuffer<A>(for:perform:)((v23 + 16), &v46);
    if (v9)
    {
      os_unfair_lock_unlock((v23 + 40));

      __break(1u);
    }

    else
    {
      os_unfair_lock_unlock((v23 + 40));

      v26 = v47;

      if (v26)
      {
        goto LABEL_13;
      }
    }
  }

  return result;
}

{
  v10 = a3 >> 5;
  if (v10 == 1)
  {
    MEMORY[0x1EEE9AC00](a1);
    v42 = *(*(v8 + 32) + 24);
    MEMORY[0x1EEE9AC00](v43);

    os_unfair_lock_lock((v42 + 40));
    closure #1 in JSONMap.withBuffer<A>(for:perform:)specialized partial apply((v42 + 16), &v46);
    os_unfair_lock_unlock((v42 + 40));
  }

  else
  {
    if (v10 == 5 && !(a2 | a1) && a3 == 160)
    {
      v16 = type metadata accessor for DecodingError();
      swift_allocError();
      v18 = v17;
      *v17 = MEMORY[0x1E69E63B0];
      v19 = _CodingPathNode.path.getter(a4);
      if (a8 != -1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
        v45 = v16;
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_181218E20;
        *(inited + 56) = &type metadata for _CodingKey;
        *(inited + 64) = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
        v21 = swift_allocObject();
        *(inited + 32) = v21;
        *(v21 + 16) = a5;
        *(v21 + 24) = a6;
        *(v21 + 32) = a7;
        *(v21 + 40) = a8;
        v46 = v19;
        outlined copy of _CodingKey(a5, a6, a7, a8);
        v22 = inited;
        v16 = v45;
        specialized Array.append<A>(contentsOf:)(v22);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
      v46 = 0;
      v47 = 0xE000000000000000;
      _StringGuts.grow(_:)(55);
      MEMORY[0x1865CB0E0](0xD000000000000019, 0x8000000181481E50);
      MEMORY[0x1865CB0E0](0x656C62756F44, 0xE600000000000000);
      MEMORY[0x1865CB0E0](0xD00000000000001CLL, 0x8000000181481E70);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v16 - 8) + 104))(v18, *MEMORY[0x1E69E6B08], v16);
      return swift_willThrow();
    }

    if (a3 > 0x1Fu || (a3 & 1) == 0 || !*(v8 + 88))
    {
LABEL_13:
      v28 = _CodingPathNode.path.getter(a4);
      if (a8 != -1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
        v29 = swift_initStackObject();
        *(v29 + 16) = xmmword_181218E20;
        *(v29 + 56) = &type metadata for _CodingKey;
        *(v29 + 64) = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
        v30 = swift_allocObject();
        *(v29 + 32) = v30;
        *(v30 + 16) = a5;
        *(v30 + 24) = a6;
        *(v30 + 32) = a7;
        *(v30 + 40) = a8;
        v46 = v28;
        outlined copy of _CodingKey(a5, a6, a7, a8);
        specialized Array.append<A>(contentsOf:)(v29);
      }

      v31 = type metadata accessor for DecodingError();
      swift_allocError();
      v33 = v32;
      *v32 = MEMORY[0x1E69E63B0];
      v46 = 0;
      v47 = 0xE000000000000000;
      _StringGuts.grow(_:)(43);

      v46 = 0xD000000000000024;
      v47 = 0x8000000181481F00;
      v34 = 0xE800000000000000;
      v35 = 0x676E697274732061;
      v36 = 0xEC0000007972616ELL;
      v37 = 0x6F69746369642061;
      v38 = 0xE800000000000000;
      v39 = 0x7961727261206E61;
      if (v10 != 4)
      {
        v39 = 1819047278;
        v38 = 0xE400000000000000;
      }

      if (v10 != 3)
      {
        v37 = v39;
        v36 = v38;
      }

      if (v10)
      {
        v35 = 1819242338;
        v34 = 0xE400000000000000;
      }

      if (v10 <= 2)
      {
        v40 = v35;
      }

      else
      {
        v40 = v37;
      }

      if (v10 <= 2)
      {
        v41 = v34;
      }

      else
      {
        v41 = v36;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
      MEMORY[0x1865CB0E0](v40, v41);

      MEMORY[0x1865CB0E0](0x64616574736E6920, 0xE90000000000002ELL);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v31 - 8) + 104))(v33, *MEMORY[0x1E69E6AF8], v31);
      return swift_willThrow();
    }

    v45 = v44;
    MEMORY[0x1EEE9AC00](a1);
    v23 = *(*(v8 + 32) + 24);
    MEMORY[0x1EEE9AC00](v24);
    v44[1] = v25;

    os_unfair_lock_lock((v23 + 40));
    closure #1 in JSONMap.withBuffer<A>(for:perform:)specialized partial apply((v23 + 16), &v46);
    if (v9)
    {
      os_unfair_lock_unlock((v23 + 40));

      __break(1u);
    }

    else
    {
      os_unfair_lock_unlock((v23 + 40));

      v26 = v47;

      if (v26)
      {
        goto LABEL_13;
      }
    }
  }

  return result;
}

{
  v10 = a3 >> 5;
  if (v10 == 1)
  {
    MEMORY[0x1EEE9AC00](a1);
    v42 = *(*(v8 + 32) + 24);
    MEMORY[0x1EEE9AC00](v43);

    os_unfair_lock_lock((v42 + 40));
    partial apply for specialized closure #1 in JSONMap.withBuffer<A>(for:perform:)((v42 + 16), &v46);
    os_unfair_lock_unlock((v42 + 40));
  }

  else
  {
    if (v10 == 5 && !(a2 | a1) && a3 == 160)
    {
      v16 = type metadata accessor for DecodingError();
      swift_allocError();
      v18 = v17;
      *v17 = MEMORY[0x1E69E6448];
      v19 = _CodingPathNode.path.getter(a4);
      if (a8 != -1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
        v45 = v16;
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_181218E20;
        *(inited + 56) = &type metadata for _CodingKey;
        *(inited + 64) = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
        v21 = swift_allocObject();
        *(inited + 32) = v21;
        *(v21 + 16) = a5;
        *(v21 + 24) = a6;
        *(v21 + 32) = a7;
        *(v21 + 40) = a8;
        v46 = v19;
        outlined copy of _CodingKey(a5, a6, a7, a8);
        v22 = inited;
        v16 = v45;
        specialized Array.append<A>(contentsOf:)(v22);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
      v46 = 0;
      v47 = 0xE000000000000000;
      _StringGuts.grow(_:)(55);
      MEMORY[0x1865CB0E0](0xD000000000000019, 0x8000000181481E50);
      MEMORY[0x1865CB0E0](0x74616F6C46, 0xE500000000000000);
      MEMORY[0x1865CB0E0](0xD00000000000001CLL, 0x8000000181481E70);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v16 - 8) + 104))(v18, *MEMORY[0x1E69E6B08], v16);
      return swift_willThrow();
    }

    if (a3 > 0x1Fu || (a3 & 1) == 0 || !*(v8 + 88))
    {
LABEL_13:
      v28 = _CodingPathNode.path.getter(a4);
      if (a8 != -1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
        v29 = swift_initStackObject();
        *(v29 + 16) = xmmword_181218E20;
        *(v29 + 56) = &type metadata for _CodingKey;
        *(v29 + 64) = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
        v30 = swift_allocObject();
        *(v29 + 32) = v30;
        *(v30 + 16) = a5;
        *(v30 + 24) = a6;
        *(v30 + 32) = a7;
        *(v30 + 40) = a8;
        v46 = v28;
        outlined copy of _CodingKey(a5, a6, a7, a8);
        specialized Array.append<A>(contentsOf:)(v29);
      }

      v31 = type metadata accessor for DecodingError();
      swift_allocError();
      v33 = v32;
      *v32 = MEMORY[0x1E69E6448];
      v46 = 0;
      v47 = 0xE000000000000000;
      _StringGuts.grow(_:)(43);

      v46 = 0xD000000000000023;
      v47 = 0x80000001814821F0;
      v34 = 0xE800000000000000;
      v35 = 0x676E697274732061;
      v36 = 0xEC0000007972616ELL;
      v37 = 0x6F69746369642061;
      v38 = 0xE800000000000000;
      v39 = 0x7961727261206E61;
      if (v10 != 4)
      {
        v39 = 1819047278;
        v38 = 0xE400000000000000;
      }

      if (v10 != 3)
      {
        v37 = v39;
        v36 = v38;
      }

      if (v10)
      {
        v35 = 1819242338;
        v34 = 0xE400000000000000;
      }

      if (v10 <= 2)
      {
        v40 = v35;
      }

      else
      {
        v40 = v37;
      }

      if (v10 <= 2)
      {
        v41 = v34;
      }

      else
      {
        v41 = v36;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
      MEMORY[0x1865CB0E0](v40, v41);

      MEMORY[0x1865CB0E0](0x64616574736E6920, 0xE90000000000002ELL);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v31 - 8) + 104))(v33, *MEMORY[0x1E69E6AF8], v31);
      return swift_willThrow();
    }

    v45 = v44;
    MEMORY[0x1EEE9AC00](a1);
    v23 = *(*(v8 + 32) + 24);
    MEMORY[0x1EEE9AC00](v24);
    v44[1] = v25;

    os_unfair_lock_lock((v23 + 40));
    partial apply for specialized closure #1 in JSONMap.withBuffer<A>(for:perform:)((v23 + 16), &v46);
    if (v9)
    {
      os_unfair_lock_unlock((v23 + 40));

      __break(1u);
    }

    else
    {
      os_unfair_lock_unlock((v23 + 40));

      v26 = BYTE4(v46);

      if (v26)
      {
        goto LABEL_13;
      }
    }
  }

  return result;
}

uint64_t specialized Array._customRemoveLast()()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    v3 = *(v1 + 16);
    if (v3)
    {
LABEL_3:
      result = *(v1 + 24 * v3 + 8);
      *(v1 + 16) = v3 - 1;
      *v0 = v1;
      return result;
    }
  }

  else
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
    v1 = result;
    v3 = *(result + 16);
    if (v3)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
  return result;
}

{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    v3 = *(v1 + 16);
    if (v3)
    {
LABEL_3:
      v4 = v3 - 1;
      result = *(v1 + 2 * v4 + 32);
      *(v1 + 16) = v4;
      *v0 = v1;
      return result;
    }
  }

  else
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
    v1 = result;
    v3 = *(result + 16);
    if (v3)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized JSONDecoderImpl.decode(_:)()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 24 * v2;
    v4 = *(v3 + 8);
    v5 = *(v3 + 16);
    v6 = *(v0 + 160);
    v7 = *(v3 + 24);

    specialized JSONDecoderImpl.unwrapFloatingPoint<A, B>(from:as:for:_:)(v4, v5, v7, v6, 0, 0, 0, 255);
  }

  else
  {
    __break(1u);
  }

  return result;
}

{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 24 * v2;
    v4 = *(v3 + 8);
    v5 = *(v3 + 16);
    v6 = *(v0 + 160);
    v7 = *(v3 + 24);

    specialized JSONDecoderImpl.unwrapFloatingPoint<A, B>(from:as:for:_:)(v4, v5, v7, v6, 0, 0, 0, 255);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t partial apply for specialized closure #1 in JSONDecoderImpl.unwrapFloatingPoint<A, B>(from:as:for:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, void, void)@<X4>, void *a6@<X8>)
{
  result = a5(a1, a2, a3, a4, *(v6 + 16), *(v6 + 17));
  if (!v7)
  {
    *a6 = v10;
  }

  return result;
}

void specialized closure #1 in JSONDecoderImpl.unwrapFloatingPoint<A, B>(from:as:for:_:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v8 = a2;
  v9 = a1;
  if ((a5 & 1) == 0)
  {
    if (!a2)
    {
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
LABEL_291:
      __break(1u);
      goto LABEL_292;
    }

    v22 = _sSV13loadUnaligned14fromByteOffset2asxSi_xmtlFs5UInt8V_Tt1g5(0, a1);
    if (v22 == 48)
    {
      if (v8 >= 1)
      {
        v23 = 1;
      }

      else
      {
        v23 = v8;
      }

      if (!specialized Collection.isEmpty.getter(v9 + v23, v8 - v23))
      {
        v24 = _sSV13loadUnaligned14fromByteOffset2asxSi_xmtlFs5UInt8V_Tt1g5(0, v9 + v23);
        v25 = v24 - 46 > 0x37 || ((1 << (v24 - 46)) & 0x80000000800001) == 0;
        v26 = v9;
        if (v25)
        {
          v15 = v24;
          v27 = _sSXsE2teoiySbx_5BoundQztFZSNys5UInt8VG_Tt1g5(14640, v24);
          v28 = v9 + v23;
LABEL_87:
          v63 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v28, a3, a4);
          v65 = v64;
          v67 = v66;
          if (!v27)
          {
            lazy protocol witness table accessor for type JSONError and conformance JSONError();
            swift_allocError();
            *v43 = xmmword_181237560;
            *(v43 + 16) = v15;
            *(v43 + 24) = v63;
            *(v43 + 32) = v65;
            *(v43 + 40) = v67;
LABEL_138:
            v68 = 1;
            goto LABEL_139;
          }

          lazy protocol witness table accessor for type JSONError and conformance JSONError();
          swift_allocError();
          *v43 = v63;
          *(v43 + 8) = v65;
          *(v43 + 16) = v67;
          *(v43 + 24) = 0;
          *(v43 + 32) = 0;
          *(v43 + 40) = 0;
          v68 = 10;
LABEL_139:
          *(v43 + 48) = v68;
          goto LABEL_210;
        }

        goto LABEL_46;
      }
    }

    else if ((v22 - 58) < 0xF7u)
    {
      if (v22 != 45)
      {
        goto LABEL_283;
      }

      if (v8 < 2)
      {
        v37 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v9, a3, a4);
        v39 = v60;
        v41 = v61;
        lazy protocol witness table accessor for type JSONError and conformance JSONError();
        swift_allocError();
        *v43 = 0xD000000000000010;
        *(v43 + 8) = 0x8000000181481B20;
        v62 = 45;
        goto LABEL_83;
      }

      v26 = v9 + 1;
      v29 = _sSV13loadUnaligned14fromByteOffset2asxSi_xmtlFs5UInt8V_Tt1g5(0, v9 + 1);
      if (v29 == 48)
      {
        specialized static JSONScanner.validateLeadingZero(in:fullSource:)((v9 + 2), v8 - 2, a3, a4);
        if (v6)
        {
          return;
        }
      }

      else
      {
        LOBYTE(v33) = v29;
        if ((v29 - 58) < 0xF7u)
        {
          v36 = 0x8000000181481F30;
          v82 = v9 + 1;
          goto LABEL_122;
        }
      }

LABEL_46:
      if ((a6 & 1) != 0 && v26 + 1 < (v9 + v8))
      {
        v30 = 0;
        while (1)
        {
          a6 = v26 + v30;
          if ((*(v26 + v30 + 1) | 0x20) == 0x65)
          {
            break;
          }

          if (~v26 + v8 + v9 == ++v30)
          {
            goto LABEL_56;
          }
        }

        if ((_sSV13loadUnaligned14fromByteOffset2asxSi_xmtlFs5UInt8V_Tt1g5(0, v26 + v30) - 58) <= 0xF5u)
        {
          if (((v26 - v9 + v30 + 1) & 0x8000000000000000) == 0 && ~v26 + v8 + v9 - v30 >= 1)
          {
            v31 = _sSV13loadUnaligned14fromByteOffset2asxSi_xmtlFs5UInt8V_Tt1g5(0, a6 + 1);
            v32 = a6 + 1;
LABEL_135:
            v37 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v32, a3, a4);
            v39 = v104;
            v41 = v105;
            v8 = v31;
LABEL_136:
            lazy protocol witness table accessor for type JSONError and conformance JSONError();
            swift_allocError();
            *v43 = xmmword_181237560;
            *(v43 + 16) = v8;
            goto LABEL_137;
          }

          goto LABEL_291;
        }
      }

LABEL_56:
      v33 = v9 + v8 - 1;
      v34 = _sSV13loadUnaligned14fromByteOffset2asxSi_xmtlFs5UInt8V_Tt1g5(0, v33);
      if ((v34 - 58) <= 0xF5u)
      {
        v35 = v34;
        v36 = 0x8000000181481B20;
        v37 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v33, a3, a4);
        v39 = v38;
        v41 = v40;
        v42 = v35;
LABEL_58:
        lazy protocol witness table accessor for type JSONError and conformance JSONError();
        swift_allocError();
        v44 = 0xD000000000000010;
LABEL_59:
        *v43 = v44;
        *(v43 + 8) = v36;
        *(v43 + 16) = v42;
LABEL_137:
        *(v43 + 24) = v37;
        *(v43 + 32) = v39;
        *(v43 + 40) = v41;
        goto LABEL_138;
      }

      closure #1 in Double.init(prevalidatedBuffer:)(v9, v8, &v164);
      if ((v165 & 1) == 0)
      {
        if ((~*&v164 & 0x7FF0000000000000) == 0)
        {
          goto LABEL_250;
        }

        if (v164 != 0.0)
        {
          return;
        }

        v54 = v8;
        v55 = v9;
        if (v8 >= 4)
        {
          v54 = v8;
          v55 = v9;
          while (1)
          {
            v56 = *v55;
            if ((v56 - 58) > 0xFFFFFFF6)
            {
              goto LABEL_250;
            }

            if ((v56 | 0x20) == 0x65)
            {
              return;
            }

            v57 = v55[1];
            if ((v57 - 58) > 0xFFFFFFF6)
            {
              goto LABEL_250;
            }

            if ((v57 | 0x20) == 0x65)
            {
              return;
            }

            v58 = v55[2];
            if ((v58 - 58) > 0xFFFFFFF6)
            {
              goto LABEL_250;
            }

            if ((v58 | 0x20) == 0x65)
            {
              return;
            }

            v59 = v55[3];
            if ((v59 - 58) > 0xFFFFFFF6)
            {
              goto LABEL_250;
            }

            if ((v59 | 0x20) == 0x65)
            {
              return;
            }

            v55 += 4;
            v54 -= 4;
            if (v54 < 4)
            {
              goto LABEL_217;
            }
          }
        }

        goto LABEL_217;
      }

      v45 = specialized BufferView.suffix(from:)(v26, v9, v8);
      v47 = v45;
      v48 = &v45[v46];
      if (v46 < 1)
      {
        v51 = v45;
        v52 = a3;
LABEL_97:
        if (v45 < v48)
        {
          v74 = 0;
          v75 = v51 - v47;
          v76 = &v47[v46] - v51;
          v77 = &v47[v46] - v45;
          v78 = v45 - v47;
          do
          {
            if ((v78 & 0x8000000000000000) != 0)
            {
              goto LABEL_258;
            }

            v53 = v77-- < 1;
            if (v53)
            {
              goto LABEL_258;
            }

            v8 = *v45;
            if ((v8 - 58) > 0xFFFFFFF5)
            {
              v79 = __OFADD__(v75++, 1);
              if (v79)
              {
                goto LABEL_272;
              }
            }

            else if (*v45 <= 0x2Du)
            {
              if (v8 != 43 && v8 != 45 || v75 || v74 != 2)
              {
LABEL_119:
                v37 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v45, v52, a4);
                v39 = v80;
                v41 = v81;
                goto LABEL_136;
              }

              v75 = 0;
              v74 = 3;
            }

            else if (v8 == 101 || v8 == 69)
            {
              if (v75 < 1 || v74 >= 2)
              {
                goto LABEL_119;
              }

              v75 = 0;
              v74 = 2;
            }

            else
            {
              if (v8 != 46 || v75 < 1 || v74)
              {
                goto LABEL_119;
              }

              v75 = 0;
              v74 = 1;
            }

            ++v45;
            ++v78;
            --v76;
          }

          while (v76);
        }

        __break(1u);
LABEL_258:
        __break(1u);
LABEL_259:
        __break(1u);
LABEL_260:
        __break(1u);
        goto LABEL_261;
      }

      v49 = 0;
      v50 = v46;
      v51 = v45;
      v52 = a3;
      while ((v49 & 0x8000000000000000) == 0)
      {
        v53 = v50-- < 1;
        if (v53)
        {
          break;
        }

        if (*v45 - 58 > 0xFFFFFFF5)
        {
          ++v45;
          ++v51;
          ++v49;
          if (v45 < v48)
          {
            continue;
          }
        }

        goto LABEL_97;
      }

LABEL_277:
      __break(1u);
LABEL_278:
      v36 = 0x8000000181481B40;
      v82 = a6;
LABEL_122:
      v37 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v82, a3, a4);
      v39 = v83;
      v41 = v84;
      v42 = v33;
LABEL_253:
      lazy protocol witness table accessor for type JSONError and conformance JSONError();
      swift_allocError();
      v44 = 0xD000000000000013;
      goto LABEL_59;
    }

    v26 = v9;
    goto LABEL_46;
  }

  if (!a2)
  {
    __break(1u);
    goto LABEL_280;
  }

  v10 = _sSV13loadUnaligned14fromByteOffset2asxSi_xmtlFs5UInt8V_Tt1g5(0, a1);
  if (v10 == 48)
  {
    if (v8 >= 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = v8;
    }

    v12 = v9 + v11;
    v13 = v8 - v11;
    if (!specialized Collection.isEmpty.getter(v9 + v11, v8 - v11))
    {
      v14 = _sSV13loadUnaligned14fromByteOffset2asxSi_xmtlFs5UInt8V_Tt1g5(0, v12);
      v15 = v14;
      v16 = 0;
      if (v14 > 0x57u)
      {
        if (v14 == 120)
        {
          goto LABEL_12;
        }

        if (v14 != 101)
        {
          if (v14 == 88)
          {
LABEL_12:
            if (_sSLsE2leoiySbx_xtFZ10Foundation15BufferViewIndexVys5UInt8VG_Tt1g5(v12 + 1, v9 + v8))
            {
              v17 = _sSV13loadUnaligned14fromByteOffset2asxSi_xmtlFs5UInt8V_Tt1g5(0, v12 + 1);
              if (UInt8.isValidHexDigit.getter(v17))
              {
                goto LABEL_14;
              }

              v37 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v12 + 1, a3, a4);
              v39 = v138;
              v41 = v139;
              v8 = v17;
              goto LABEL_136;
            }

            if (v13 >= 1)
            {
              v31 = _sSV13loadUnaligned14fromByteOffset2asxSi_xmtlFs5UInt8V_Tt1g5(0, v12);
              v32 = v12;
              goto LABEL_135;
            }

LABEL_294:
            __break(1u);
            return;
          }

          goto LABEL_86;
        }

LABEL_149:
        v26 = v9;
        goto LABEL_150;
      }

      v26 = v9;
      if (v14 != 46 && v14 != 69)
      {
LABEL_86:
        v27 = _sSXsE2teoiySbx_5BoundQztFZSNys5UInt8VG_Tt1g5(14640, v14);
        v28 = v12;
        goto LABEL_87;
      }

      while (1)
      {
LABEL_150:
        v110 = v9 + v8 - 1;
        v111 = _sSV13loadUnaligned14fromByteOffset2asxSi_xmtlFs5UInt8V_Tt1g5(0, v110);
        if ((v111 | 0x20) == 0x65)
        {
          v112 = v111;
          if (!_sSLsE2leoiySbx_xtFZ10Foundation15BufferViewIndexVys5UInt8VG_Tt1g5(a3, v9 + v8 - 1))
          {
            goto LABEL_281;
          }

          if (!_sSLsE2leoiySbx_xtFZ10Foundation15BufferViewIndexVys5UInt8VG_Tt1g5(v9 + v8 - 1, a3 + a4))
          {
            goto LABEL_282;
          }

          v113 = specialized min<A>(_:_:)(v9 + v8, a3 + a4);
          v9 = 1;
          if (v113 <= a3)
          {
            v8 = 0;
            v114 = 1;
LABEL_209:
            lazy protocol witness table accessor for type JSONError and conformance JSONError();
            swift_allocError();
            *v130 = 0xD000000000000010;
            *(v130 + 8) = 0x8000000181481B20;
            *(v130 + 16) = v112;
            *(v130 + 24) = v114;
            *(v130 + 32) = v8;
            *(v130 + 40) = v110 - a3;
            *(v130 + 48) = 1;
            goto LABEL_210;
          }

          v114 = 1;
          v115 = a3;
LABEL_155:
          while (1)
          {
            v116 = 0;
            v117 = 0;
            v118 = a4 + a3 - v115;
            while (1)
            {
              if ((v115 - a3 + v117) < 0 || (v118 + v116) < 1)
              {
                goto LABEL_259;
              }

              v119 = *(v115 + v117);
              if (v119 == 10)
              {
                v79 = __OFADD__(v114++, 1);
                if (v79)
                {
                  goto LABEL_284;
                }

                v115 += v117 + 1;
                if (v115 >= v113)
                {
                  goto LABEL_173;
                }

                goto LABEL_155;
              }

              if (v119 == 13)
              {
                break;
              }

              v8 = v117 + 1;
              if (__OFADD__(v117, 1))
              {
                goto LABEL_260;
              }

              ++v117;
              --v116;
              if (v115 + v117 >= v113)
              {
                goto LABEL_209;
              }
            }

            v120 = v115 + v117;
            if (v110 < v115 + v117 + 1)
            {
              goto LABEL_168;
            }

            if (((v115 - a3 + v117 + 1) & 0x8000000000000000) != 0 || (~v117 + v118) < 1)
            {
              goto LABEL_290;
            }

            if (*(v120 + 1) == 10)
            {
              v120 = v115 + v117 + 1;
            }

LABEL_168:
            v79 = __OFADD__(v114++, 1);
            if (v79)
            {
              goto LABEL_285;
            }

            v115 = v120 + 1;
            if (v120 + 1 >= v113)
            {
LABEL_173:
              v8 = 0;
              goto LABEL_209;
            }
          }
        }

        closure #1 in Double.init(prevalidatedBuffer:)(v9, v8, &v164);
        if ((v165 & 1) == 0)
        {
          break;
        }

        v121 = specialized BufferView.suffix(from:)(v26, v9, v8);
        if (v122 < 1)
        {
          goto LABEL_286;
        }

        v9 = v121;
        v8 = v122;
        v123 = v121 + v122;
        v124 = _sSV13loadUnaligned14fromByteOffset2asxSi_xmtlFs5UInt8V_Tt1g5(0, v121);
        if (v124 == 45 || (v125 = v9, v124 == 43))
        {
          v125 = (v9 + 1);
        }

        if (v123 < v125)
        {
          goto LABEL_287;
        }

        a6 = &v125[-v9];
        if (&v125[-v9] < 0)
        {
          goto LABEL_288;
        }

        v33 = v123 - v125;
        if ((v123 - v125) < 0)
        {
          goto LABEL_289;
        }

        if (v33 >= 2)
        {
          v126 = 2;
        }

        else
        {
          v126 = v123 - v125;
        }

        if (!_stringshims_strncasecmp_clocale(v125, "0x", v126))
        {
          v134 = v125 + 2;
          if ((v123 - (v125 + 2)) < 1 || v134 >= v123 || (&v134[-v9] & 0x8000000000000000) != 0)
          {
LABEL_234:
            __break(1u);
          }

          else
          {
            v135 = v8 + v9 - v125 - 3;
            v136 = a6 + 3;
            v125 += 2;
            while (1)
            {
              v137 = v136;
              if (!UInt8.isValidHexDigit.getter(*v125))
              {
                break;
              }

              v53 = v135-- < 1;
              if (!v53 && ++v125 < v123)
              {
                v136 = v137 + 1;
                if ((v137 & 0x8000000000000000) == 0)
                {
                  continue;
                }
              }

              goto LABEL_234;
            }
          }

          LOBYTE(v9) = _sSV13loadUnaligned14fromByteOffset2asxSi_xmtlFs5UInt8V_Tt1g5(0, v125);
          v129 = 0xED00007265626D75;
          v26 = 0x6E20786568206E69;
LABEL_255:
          v152 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v125, a3, a4);
          v154 = v153;
          v156 = v155;
          lazy protocol witness table accessor for type JSONError and conformance JSONError();
          swift_allocError();
          *v43 = v26;
          *(v43 + 8) = v129;
          *(v43 + 16) = v9;
          *(v43 + 24) = v152;
          *(v43 + 32) = v154;
          *(v43 + 40) = v156;
          goto LABEL_138;
        }

        if (v125 >= v123)
        {
LABEL_271:
          __break(1u);
LABEL_272:
          __break(1u);
        }

        else
        {
          v127 = 0;
          v128 = 0;
          v26 = 0x65626D756E206E69;
          while ((a6 & 0x8000000000000000) == 0 && v33 >= 1)
          {
            v9 = *v125;
            if ((v9 - 58) > 0xF5u)
            {
              v79 = __OFADD__(v128++, 1);
              if (v79)
              {
                __break(1u);
                goto LABEL_277;
              }
            }

            else
            {
              v129 = 0xE900000000000072;
              if (*v125 <= 0x2Du)
              {
                if (v9 != 43 && v9 != 45 || v128 || v127 != 2)
                {
                  goto LABEL_255;
                }

                v128 = 0;
                v127 = 3;
              }

              else if (v9 == 101 || v9 == 69)
              {
                if (v127 != 1 && (v127 || v128 <= 0))
                {
                  goto LABEL_255;
                }

                v128 = 0;
                v127 = 2;
              }

              else
              {
                if (v9 != 46)
                {
                  goto LABEL_255;
                }

                if (v127)
                {
                  LOBYTE(v9) = 46;
                  goto LABEL_255;
                }

                v128 = 0;
                v127 = 1;
              }
            }

            ++v125;
            ++a6;
            if (!--v33)
            {
              goto LABEL_271;
            }
          }
        }

        __break(1u);
LABEL_274:
        LOBYTE(v33) = _sSV13loadUnaligned14fromByteOffset2asxSi_xmtlFs5UInt8V_Tt1g5(0, a6);
        if (!_sSXsE2teoiySbx_5BoundQztFZSNys5UInt8VG_Tt1g5(14640, v33))
        {
          goto LABEL_278;
        }

LABEL_275:
        v16 = 0;
      }

      if ((~*&v164 & 0x7FF0000000000000) == 0)
      {
        if (v16)
        {
          return;
        }

        goto LABEL_250;
      }

      if (v164 != 0.0)
      {
        return;
      }

      v54 = v8;
      v55 = v9;
      if (v8 >= 4)
      {
        v54 = v8;
        v55 = v9;
        do
        {
          v140 = *v55;
          if ((v140 - 58) > 0xFFFFFFF6)
          {
            goto LABEL_250;
          }

          if ((v140 | 0x20) == 0x65)
          {
            return;
          }

          v141 = v55[1];
          if ((v141 - 58) > 0xFFFFFFF6)
          {
            goto LABEL_250;
          }

          if ((v141 | 0x20) == 0x65)
          {
            return;
          }

          v142 = v55[2];
          if ((v142 - 58) > 0xFFFFFFF6)
          {
            goto LABEL_250;
          }

          if ((v142 | 0x20) == 0x65)
          {
            return;
          }

          v143 = v55[3];
          if ((v143 - 58) > 0xFFFFFFF6)
          {
            goto LABEL_250;
          }

          if ((v143 | 0x20) == 0x65)
          {
            return;
          }

          v55 += 4;
          v54 -= 4;
        }

        while (v54 >= 4);
      }

LABEL_217:
      if (v54 != 1)
      {
        if (v54 != 2)
        {
          if (v54 != 3)
          {
            return;
          }

          v131 = _sSV13loadUnaligned14fromByteOffset2asxSi_xmtlFs5UInt8V_Tt1g5(0, (v55 + 2));
          if (_sSXsE2teoiySbx_5BoundQztFZSNys5UInt8VG_Tt1g5(14641, v131))
          {
            goto LABEL_250;
          }

          if ((v131 | 0x20) == 0x65)
          {
            return;
          }
        }

        v132 = _sSV13loadUnaligned14fromByteOffset2asxSi_xmtlFs5UInt8V_Tt1g5(0, (v55 + 1));
        if (_sSXsE2teoiySbx_5BoundQztFZSNys5UInt8VG_Tt1g5(14641, v132))
        {
LABEL_250:
          v147 = static String._fromUTF8Repairing(_:)();
          v149 = v148;
          lazy protocol witness table accessor for type JSONError and conformance JSONError();
          swift_allocError();
          *v43 = v147;
          *(v43 + 8) = v149;
          *(v43 + 16) = 0u;
          *(v43 + 32) = 0u;
          v68 = 11;
          goto LABEL_139;
        }

        if ((v132 | 0x20) == 0x65)
        {
          return;
        }
      }

      v133 = _sSV13loadUnaligned14fromByteOffset2asxSi_xmtlFs5UInt8V_Tt1g5(0, v55);
      if (!_sSXsE2teoiySbx_5BoundQztFZSNys5UInt8VG_Tt1g5(14641, v133))
      {
        return;
      }

      goto LABEL_250;
    }

LABEL_148:
    v16 = 0;
    goto LABEL_149;
  }

  if ((v10 - 58) >= 0xF7u)
  {
    goto LABEL_148;
  }

  if (v10 > 0x2Du)
  {
    switch(v10)
    {
      case 'I':
        if (v8 <= 7 || strncmp(v9, "Infinity", 8uLL))
        {
          goto LABEL_128;
        }

        goto LABEL_251;
      case 'N':
        if (v8 < 3 || *v9 != 78 || *(v9 + 1) != 97 || *(v9 + 2) != 78)
        {
LABEL_128:
          v164 = 0.0;
          v165 = 0xE000000000000000;
          MEMORY[0x1865CCB90](0, 0xE000000000000000);
          specialized DefaultStringInterpolation.appendInterpolation<A>(_:)();
          MEMORY[0x1865CCB90](0, 0xE000000000000000);
          v88 = 0.0;
          v89 = 0xE000000000000000;
          v90 = v9;
LABEL_129:
          v91 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v90, a3, a4);
          v93 = v92;
          v95 = v94;
          lazy protocol witness table accessor for type JSONError and conformance JSONError();
          swift_allocError();
          *v43 = v88;
          *(v43 + 8) = v89;
          *(v43 + 16) = v91;
          *(v43 + 24) = v93;
          *(v43 + 32) = v95;
          *(v43 + 40) = 0;
          v68 = 5;
          goto LABEL_139;
        }

LABEL_251:
        v16 = 1;
        goto LABEL_149;
      case '.':
        v96 = specialized BufferView.dropFirst(_:)(1, v9, v8);
        if (specialized Collection.isEmpty.getter(v96, v97))
        {
          v98 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v96, a3, a4);
          v100 = v99;
          v102 = v101;
          lazy protocol witness table accessor for type JSONError and conformance JSONError();
          swift_allocError();
          *v103 = 0;
          *(v103 + 8) = 0;
          *(v103 + 16) = 46;
          *(v103 + 24) = v98;
          *(v103 + 32) = v100;
          *(v103 + 40) = v102;
          *(v103 + 48) = 1;
LABEL_210:
          swift_willThrow();
          return;
        }

        v109 = _sSV13loadUnaligned14fromByteOffset2asxSi_xmtlFs5UInt8V_Tt1g5(0, v96);
        if (_sSXsE2teoiySbx_5BoundQztFZSNys5UInt8VG_Tt1g5(14640, v109))
        {
          goto LABEL_148;
        }

        v36 = 0x8000000181481B40;
        v37 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v96, a3, a4);
        v39 = v150;
        v41 = v151;
        v42 = v109;
        goto LABEL_253;
    }

LABEL_293:
    __break(1u);
    goto LABEL_294;
  }

  if (v10 != 43 && v10 != 45)
  {
    goto LABEL_293;
  }

  if (v8 < 2)
  {
    if (v8 == 1)
    {
      v85 = _sSV13loadUnaligned14fromByteOffset2asxSi_xmtlFs5UInt8V_Tt1g5(0, v9);
      v36 = 0x8000000181481B20;
      v37 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v9, a3, a4);
      v39 = v86;
      v41 = v87;
      v42 = v85;
      goto LABEL_58;
    }

LABEL_292:
    __break(1u);
    goto LABEL_293;
  }

  v26 = v9 + 1;
  v69 = _sSV13loadUnaligned14fromByteOffset2asxSi_xmtlFs5UInt8V_Tt1g5(0, v9 + 1);
  if (v69 != 48)
  {
    if ((v69 - 58) > 0xF6u)
    {
      goto LABEL_275;
    }

    if (v69 != 46)
    {
      if (v69 != 78)
      {
        if (v69 != 73)
        {
          v164 = 0.0;
          v165 = 0xE000000000000000;
          _StringGuts.grow(_:)(20);
          MEMORY[0x1865CCB90](0x27207265746661, 0xE700000000000000);
          _sSV13loadUnaligned14fromByteOffset2asxSi_xmtlFs5UInt8V_Tt1g5(0, v9);
          v162 = static String._uncheckedFromUTF8(_:)();
          specialized DefaultStringInterpolation.appendInterpolation<A>(_:)(v162);
        }

        v106 = specialized BufferView.dropFirst(_:)(1, v9, v8);
        v107 = v106;
        if (v108 <= 7 || strncmp(v106, "Infinity", 8uLL))
        {
          v164 = 0.0;
          v165 = 0xE000000000000000;
          MEMORY[0x1865CCB90](0, 0xE000000000000000);
LABEL_270:
          specialized DefaultStringInterpolation.appendInterpolation<A>(_:)();
          MEMORY[0x1865CCB90](0, 0xE000000000000000);
          v88 = v164;
          v89 = v165;
          v90 = v107;
          goto LABEL_129;
        }

        goto LABEL_265;
      }

LABEL_261:
      v157 = specialized BufferView.dropFirst(_:)(1, v9, v8);
      v107 = v157;
      if (v158 <= 2 || *v157 != 78 || v157[1] != 97 || v157[2] != 78)
      {
        v164 = 0.0;
        v165 = 0xE000000000000000;
        MEMORY[0x1865CCB90](0, 0xE000000000000000);
        goto LABEL_270;
      }

LABEL_265:
      v16 = 1;
      goto LABEL_150;
    }

    a6 = specialized BufferView.dropFirst(_:)(2, v9, v8);
    if (!specialized Collection.isEmpty.getter(a6, v159))
    {
      goto LABEL_274;
    }

    v37 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(a6, a3, a4);
    v39 = v160;
    v41 = v161;
    lazy protocol witness table accessor for type JSONError and conformance JSONError();
    swift_allocError();
    *v43 = 0;
    *(v43 + 8) = 0;
    v62 = 46;
LABEL_83:
    *(v43 + 16) = v62;
    goto LABEL_137;
  }

  v70 = specialized BufferView.dropFirst(_:)(2, v9, v8);
  v72 = specialized static JSON5Scanner.validateLeadingZero(in:zero:fullSource:)(v70, v71, (v9 + 1), a3, a4);
  if (v6)
  {
    return;
  }

  v26 = v72;
  if ((v73 & 1) == 0)
  {
    goto LABEL_275;
  }

LABEL_14:
  if (*v9 == 45)
  {
    v18 = specialized _parseJSON5Integer<A>(_:isHex:)(v9, v8, 1, specialized _parseHexIntegerDigits<A>(_:isNegative:), specialized _parseIntegerDigits<A>(_:isNegative:));
    if ((v19 & 1) == 0)
    {
      _sSd7exactlySdSgx_tcSzRzlufCs5Int64V_Tt0g5(v18);
      if ((v20 & 1) == 0)
      {
        return;
      }
    }

    goto LABEL_250;
  }

  v144 = specialized _parseJSON5Integer<A>(_:isHex:)(v9, v8, 1, specialized _parseHexIntegerDigits<A>(_:isNegative:), specialized _parseIntegerDigits<A>(_:isNegative:));
  if (v145)
  {
    goto LABEL_250;
  }

  _sSd7exactlySdSgx_tcSzRzlufCs6UInt64V_Tt0g5Tm(v144);
  if (v146)
  {
    goto LABEL_250;
  }
}

{
  v9 = a2;
  v10 = a1;
  if ((a5 & 1) == 0)
  {
    if (!a2)
    {
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
LABEL_291:
      __break(1u);
      goto LABEL_292;
    }

    v23 = _sSV13loadUnaligned14fromByteOffset2asxSi_xmtlFs5UInt8V_Tt1g5(0, a1);
    if (v23 == 48)
    {
      if (v9 >= 1)
      {
        v24 = 1;
      }

      else
      {
        v24 = v9;
      }

      if (!specialized Collection.isEmpty.getter(v10 + v24, v9 - v24))
      {
        v25 = _sSV13loadUnaligned14fromByteOffset2asxSi_xmtlFs5UInt8V_Tt1g5(0, v10 + v24);
        v26 = v25 - 46 > 0x37 || ((1 << (v25 - 46)) & 0x80000000800001) == 0;
        v27 = v10;
        if (v26)
        {
          v16 = v25;
          v28 = _sSXsE2teoiySbx_5BoundQztFZSNys5UInt8VG_Tt1g5(14640, v25);
          v29 = v10 + v24;
LABEL_87:
          v65 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v29, a3, a4);
          v67 = v66;
          v69 = v68;
          if (!v28)
          {
            lazy protocol witness table accessor for type JSONError and conformance JSONError();
            swift_allocError();
            *v46 = xmmword_181237560;
            *(v46 + 16) = v16;
            *(v46 + 24) = v65;
            *(v46 + 32) = v67;
            *(v46 + 40) = v69;
LABEL_138:
            v70 = 1;
            goto LABEL_139;
          }

          lazy protocol witness table accessor for type JSONError and conformance JSONError();
          swift_allocError();
          *v46 = v65;
          *(v46 + 8) = v67;
          *(v46 + 16) = v69;
          *(v46 + 24) = 0;
          *(v46 + 32) = 0;
          *(v46 + 40) = 0;
          v70 = 10;
LABEL_139:
          *(v46 + 48) = v70;
          goto LABEL_210;
        }

        goto LABEL_46;
      }
    }

    else if ((v23 - 58) < 0xF7u)
    {
      if (v23 != 45)
      {
        goto LABEL_283;
      }

      if (v9 < 2)
      {
        v40 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v10, a3, a4);
        v42 = v62;
        v44 = v63;
        lazy protocol witness table accessor for type JSONError and conformance JSONError();
        swift_allocError();
        *v46 = 0xD000000000000010;
        *(v46 + 8) = 0x8000000181481B20;
        v64 = 45;
        goto LABEL_83;
      }

      v27 = v10 + 1;
      v30 = _sSV13loadUnaligned14fromByteOffset2asxSi_xmtlFs5UInt8V_Tt1g5(0, v10 + 1);
      if (v30 == 48)
      {
        v31 = specialized BufferView.dropFirst(_:)(2, v10, v9);
        specialized static JSONScanner.validateLeadingZero(in:fullSource:)(v31, v32, a3, a4);
        if (v6)
        {
          return;
        }
      }

      else
      {
        LOBYTE(v36) = v30;
        if ((v30 - 58) <= 0xF6u)
        {
          v39 = 0x8000000181481F30;
          v84 = v10 + 1;
          goto LABEL_122;
        }
      }

LABEL_46:
      if ((a6 & 1) != 0 && v27 + 1 < (v10 + v9))
      {
        v33 = 0;
        while (1)
        {
          a6 = v27 + v33;
          if ((*(v27 + v33 + 1) | 0x20) == 0x65)
          {
            break;
          }

          if (~v27 + v9 + v10 == ++v33)
          {
            goto LABEL_56;
          }
        }

        if ((_sSV13loadUnaligned14fromByteOffset2asxSi_xmtlFs5UInt8V_Tt1g5(0, v27 + v33) - 58) <= 0xF5u)
        {
          if (((v27 - v10 + v33 + 1) & 0x8000000000000000) == 0 && ~v27 + v9 + v10 - v33 >= 1)
          {
            v34 = _sSV13loadUnaligned14fromByteOffset2asxSi_xmtlFs5UInt8V_Tt1g5(0, a6 + 1);
            v35 = a6 + 1;
LABEL_135:
            v40 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v35, a3, a4);
            v42 = v106;
            v44 = v107;
            v9 = v34;
LABEL_136:
            lazy protocol witness table accessor for type JSONError and conformance JSONError();
            swift_allocError();
            *v46 = xmmword_181237560;
            *(v46 + 16) = v9;
            goto LABEL_137;
          }

          goto LABEL_291;
        }
      }

LABEL_56:
      v36 = v10 + v9 - 1;
      v37 = _sSV13loadUnaligned14fromByteOffset2asxSi_xmtlFs5UInt8V_Tt1g5(0, v36);
      if ((v37 - 58) < 0xF6u)
      {
        v38 = v37;
        v39 = 0x8000000181481B20;
        v40 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v36, a3, a4);
        v42 = v41;
        v44 = v43;
        v45 = v38;
LABEL_58:
        lazy protocol witness table accessor for type JSONError and conformance JSONError();
        swift_allocError();
        v47 = 0xD000000000000010;
LABEL_59:
        *v46 = v47;
        *(v46 + 8) = v39;
        *(v46 + 16) = v45;
LABEL_137:
        *(v46 + 24) = v40;
        *(v46 + 32) = v42;
        *(v46 + 40) = v44;
        goto LABEL_138;
      }

      closure #1 in Double.init(prevalidatedBuffer:)(v10, v9, &v165);
      if ((v166 & 1) == 0)
      {
        if ((~*&v165 & 0x7FF0000000000000) == 0)
        {
          goto LABEL_250;
        }

        if (v165 != 0.0)
        {
          return;
        }

        v56 = v9;
        v57 = v10;
        if (v9 >= 4)
        {
          v56 = v9;
          v57 = v10;
          while (1)
          {
            v58 = *v57;
            if ((v58 - 58) > 0xFFFFFFF6)
            {
              goto LABEL_250;
            }

            if ((v58 | 0x20) == 0x65)
            {
              return;
            }

            v59 = v57[1];
            if ((v59 - 58) > 0xFFFFFFF6)
            {
              goto LABEL_250;
            }

            if ((v59 | 0x20) == 0x65)
            {
              return;
            }

            v60 = v57[2];
            if ((v60 - 58) > 0xFFFFFFF6)
            {
              goto LABEL_250;
            }

            if ((v60 | 0x20) == 0x65)
            {
              return;
            }

            v61 = v57[3];
            if ((v61 - 58) > 0xFFFFFFF6)
            {
              goto LABEL_250;
            }

            if ((v61 | 0x20) == 0x65)
            {
              return;
            }

            v57 += 4;
            v56 -= 4;
            if (v56 < 4)
            {
              goto LABEL_217;
            }
          }
        }

        goto LABEL_217;
      }

      v48 = specialized BufferView.suffix(from:)(v27, v10, v9);
      v50 = v48;
      v51 = &v48[v49];
      if (v49 < 1)
      {
        v54 = v48;
LABEL_97:
        if (v48 < v51)
        {
          v76 = 0;
          v77 = v54 - v50;
          v78 = &v50[v49] - v54;
          v79 = &v50[v49] - v48;
          v80 = v48 - v50;
          do
          {
            if ((v80 & 0x8000000000000000) != 0)
            {
              goto LABEL_258;
            }

            v55 = v79-- < 1;
            if (v55)
            {
              goto LABEL_258;
            }

            v9 = *v48;
            if ((v9 - 58) >= 0xFFFFFFF6)
            {
              v81 = __OFADD__(v77++, 1);
              if (v81)
              {
                goto LABEL_272;
              }
            }

            else if (*v48 <= 0x2Du)
            {
              if (v9 != 43 && v9 != 45 || v77 || v76 != 2)
              {
LABEL_119:
                v40 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v48, a3, a4);
                v42 = v82;
                v44 = v83;
                goto LABEL_136;
              }

              v77 = 0;
              v76 = 3;
            }

            else if (v9 == 46)
            {
              if (v77 < 1 || v76)
              {
                goto LABEL_119;
              }

              v77 = 0;
              v76 = 1;
            }

            else
            {
              if (v9 != 69 && v9 != 101 || v77 < 1 || v76 >= 2)
              {
                goto LABEL_119;
              }

              v77 = 0;
              v76 = 2;
            }

            ++v48;
            ++v80;
            --v78;
          }

          while (v78);
        }

        __break(1u);
LABEL_258:
        __break(1u);
LABEL_259:
        __break(1u);
LABEL_260:
        __break(1u);
        goto LABEL_261;
      }

      v52 = 0;
      v53 = v49;
      v54 = v48;
      while ((v52 & 0x8000000000000000) == 0)
      {
        v55 = v53-- < 1;
        if (v55)
        {
          break;
        }

        if (*v48 - 58 >= 0xFFFFFFF6)
        {
          ++v48;
          ++v54;
          ++v52;
          if (v48 < v51)
          {
            continue;
          }
        }

        goto LABEL_97;
      }

LABEL_277:
      __break(1u);
LABEL_278:
      v39 = 0x8000000181481B40;
      v84 = a6;
LABEL_122:
      v40 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v84, a3, a4);
      v42 = v85;
      v44 = v86;
      v45 = v36;
LABEL_253:
      lazy protocol witness table accessor for type JSONError and conformance JSONError();
      swift_allocError();
      v47 = 0xD000000000000013;
      goto LABEL_59;
    }

    v27 = v10;
    goto LABEL_46;
  }

  if (!a2)
  {
    __break(1u);
    goto LABEL_280;
  }

  v11 = _sSV13loadUnaligned14fromByteOffset2asxSi_xmtlFs5UInt8V_Tt1g5(0, a1);
  if (v11 == 48)
  {
    if (v9 >= 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = v9;
    }

    v13 = v10 + v12;
    v14 = v9 - v12;
    if (!specialized Collection.isEmpty.getter(v10 + v12, v9 - v12))
    {
      v15 = _sSV13loadUnaligned14fromByteOffset2asxSi_xmtlFs5UInt8V_Tt1g5(0, v13);
      v16 = v15;
      v17 = 0;
      if (v15 > 0x57u)
      {
        if (v15 == 120)
        {
          goto LABEL_12;
        }

        if (v15 != 101)
        {
          if (v15 == 88)
          {
LABEL_12:
            if (_sSLsE2leoiySbx_xtFZ10Foundation15BufferViewIndexVys5UInt8VG_Tt1g5(v13 + 1, v10 + v9))
            {
              v18 = _sSV13loadUnaligned14fromByteOffset2asxSi_xmtlFs5UInt8V_Tt1g5(0, v13 + 1);
              if (UInt8.isValidHexDigit.getter(v18))
              {
                goto LABEL_14;
              }

              v40 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v13 + 1, a3, a4);
              v42 = v139;
              v44 = v140;
              v9 = v18;
              goto LABEL_136;
            }

            if (v14 >= 1)
            {
              v34 = _sSV13loadUnaligned14fromByteOffset2asxSi_xmtlFs5UInt8V_Tt1g5(0, v13);
              v35 = v13;
              goto LABEL_135;
            }

LABEL_294:
            __break(1u);
            return;
          }

          goto LABEL_86;
        }

LABEL_149:
        v27 = v10;
        goto LABEL_150;
      }

      v27 = v10;
      if (v15 != 46 && v15 != 69)
      {
LABEL_86:
        v28 = _sSXsE2teoiySbx_5BoundQztFZSNys5UInt8VG_Tt1g5(14640, v15);
        v29 = v13;
        goto LABEL_87;
      }

      while (1)
      {
LABEL_150:
        v164 = a4;
        a4 = v10 + v9;
        v112 = v10 + v9 - 1;
        v113 = _sSV13loadUnaligned14fromByteOffset2asxSi_xmtlFs5UInt8V_Tt1g5(0, v112);
        if ((v113 | 0x20) == 0x65)
        {
          v114 = v113;
          if (!_sSLsE2leoiySbx_xtFZ10Foundation15BufferViewIndexVys5UInt8VG_Tt1g5(a3, v10 + v9 - 1))
          {
            goto LABEL_281;
          }

          v27 = v164;
          if (!_sSLsE2leoiySbx_xtFZ10Foundation15BufferViewIndexVys5UInt8VG_Tt1g5(v10 + v9 - 1, a3 + v164))
          {
            goto LABEL_282;
          }

          v115 = specialized min<A>(_:_:)(v10 + v9, a3 + v164);
          v10 = 1;
          if (v115 <= a3)
          {
            v9 = 0;
            v116 = 1;
LABEL_209:
            lazy protocol witness table accessor for type JSONError and conformance JSONError();
            swift_allocError();
            *v131 = 0xD000000000000010;
            *(v131 + 8) = 0x8000000181481B20;
            *(v131 + 16) = v114;
            *(v131 + 24) = v116;
            *(v131 + 32) = v9;
            *(v131 + 40) = v112 - a3;
            *(v131 + 48) = 1;
            goto LABEL_210;
          }

          v116 = 1;
          v117 = a3;
LABEL_155:
          while (1)
          {
            v118 = 0;
            v119 = 0;
            v120 = v164 + a3 - v117;
            while (1)
            {
              if ((v117 - a3 + v119) < 0 || (v120 + v118) < 1)
              {
                goto LABEL_259;
              }

              v121 = *(v117 + v119);
              if (v121 == 10)
              {
                v81 = __OFADD__(v116++, 1);
                if (v81)
                {
                  goto LABEL_284;
                }

                v117 += v119 + 1;
                if (v117 >= v115)
                {
                  goto LABEL_173;
                }

                goto LABEL_155;
              }

              if (v121 == 13)
              {
                break;
              }

              v9 = v119 + 1;
              if (__OFADD__(v119, 1))
              {
                goto LABEL_260;
              }

              ++v119;
              --v118;
              if (v117 + v119 >= v115)
              {
                goto LABEL_209;
              }
            }

            v122 = v117 + v119;
            if (v112 < v117 + v119 + 1)
            {
              goto LABEL_168;
            }

            if (((v117 - a3 + v119 + 1) & 0x8000000000000000) != 0 || (~v119 + v120) < 1)
            {
              goto LABEL_290;
            }

            if (*(v122 + 1) == 10)
            {
              v122 = v117 + v119 + 1;
            }

LABEL_168:
            v81 = __OFADD__(v116++, 1);
            if (v81)
            {
              goto LABEL_285;
            }

            v117 = v122 + 1;
            if (v122 + 1 >= v115)
            {
LABEL_173:
              v9 = 0;
              goto LABEL_209;
            }
          }
        }

        closure #1 in Double.init(prevalidatedBuffer:)(v10, v9, &v165);
        if ((v166 & 1) == 0)
        {
          break;
        }

        v123 = specialized BufferView.suffix(from:)(v27, v10, v9);
        if (v124 < 1)
        {
          goto LABEL_286;
        }

        v10 = v123;
        v9 = v124;
        v125 = v123 + v124;
        v126 = _sSV13loadUnaligned14fromByteOffset2asxSi_xmtlFs5UInt8V_Tt1g5(0, v123);
        if (v126 == 45 || (v127 = v10, v126 == 43))
        {
          v127 = (v10 + 1);
        }

        if (v125 < v127)
        {
          goto LABEL_287;
        }

        a6 = &v127[-v10];
        if (&v127[-v10] < 0)
        {
          goto LABEL_288;
        }

        v36 = v125 - v127;
        if ((v125 - v127) < 0)
        {
          goto LABEL_289;
        }

        if (v36 >= 2)
        {
          v128 = 2;
        }

        else
        {
          v128 = v125 - v127;
        }

        if (!_stringshims_strncasecmp_clocale(v127, "0x", v128))
        {
          v135 = v127 + 2;
          if ((v125 - (v127 + 2)) < 1 || v135 >= v125 || (&v135[-v10] & 0x8000000000000000) != 0)
          {
LABEL_234:
            __break(1u);
          }

          else
          {
            v136 = v9 + v10 - v127 - 3;
            v137 = a6 + 3;
            v127 += 2;
            while (1)
            {
              v138 = v137;
              if (!UInt8.isValidHexDigit.getter(*v127))
              {
                break;
              }

              v55 = v136-- < 1;
              if (!v55 && ++v127 < v125)
              {
                v137 = v138 + 1;
                if ((v138 & 0x8000000000000000) == 0)
                {
                  continue;
                }
              }

              goto LABEL_234;
            }
          }

          LOBYTE(v10) = _sSV13loadUnaligned14fromByteOffset2asxSi_xmtlFs5UInt8V_Tt1g5(0, v127);
          a4 = 0xED00007265626D75;
          v27 = 0x6E20786568206E69;
LABEL_255:
          v153 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v127, a3, v164);
          v155 = v154;
          v157 = v156;
          lazy protocol witness table accessor for type JSONError and conformance JSONError();
          swift_allocError();
          *v46 = v27;
          *(v46 + 8) = a4;
          *(v46 + 16) = v10;
          *(v46 + 24) = v153;
          *(v46 + 32) = v155;
          *(v46 + 40) = v157;
          goto LABEL_138;
        }

        if (v127 >= v125)
        {
LABEL_271:
          __break(1u);
LABEL_272:
          __break(1u);
        }

        else
        {
          v129 = 0;
          v130 = 0;
          v27 = 0x65626D756E206E69;
          while ((a6 & 0x8000000000000000) == 0 && v36 >= 1)
          {
            v10 = *v127;
            if ((v10 - 58) >= 0xF6u)
            {
              v81 = __OFADD__(v130++, 1);
              if (v81)
              {
                __break(1u);
                goto LABEL_277;
              }
            }

            else
            {
              a4 = 0xE900000000000072;
              if (*v127 <= 0x2Du)
              {
                if (v10 != 43 && v10 != 45 || v130 || v129 != 2)
                {
                  goto LABEL_255;
                }

                v130 = 0;
                v129 = 3;
              }

              else if (v10 == 46)
              {
                if (v129)
                {
                  LOBYTE(v10) = 46;
                  goto LABEL_255;
                }

                v130 = 0;
                v129 = 1;
              }

              else
              {
                if (v10 != 69 && v10 != 101 || v129 != 1 && (v129 || v130 <= 0))
                {
                  goto LABEL_255;
                }

                v130 = 0;
                v129 = 2;
              }
            }

            ++v127;
            ++a6;
            if (!--v36)
            {
              goto LABEL_271;
            }
          }
        }

        __break(1u);
LABEL_274:
        LOBYTE(v36) = _sSV13loadUnaligned14fromByteOffset2asxSi_xmtlFs5UInt8V_Tt1g5(0, a6);
        if (!_sSXsE2teoiySbx_5BoundQztFZSNys5UInt8VG_Tt1g5(14640, v36))
        {
          goto LABEL_278;
        }

LABEL_275:
        v17 = 0;
      }

      if ((~*&v165 & 0x7FF0000000000000) == 0)
      {
        if (v17)
        {
          return;
        }

        goto LABEL_250;
      }

      if (v165 != 0.0)
      {
        return;
      }

      v56 = v9;
      v57 = v10;
      if (v9 >= 4)
      {
        v56 = v9;
        v57 = v10;
        do
        {
          v141 = *v57;
          if ((v141 - 58) > 0xFFFFFFF6)
          {
            goto LABEL_250;
          }

          if ((v141 | 0x20) == 0x65)
          {
            return;
          }

          v142 = v57[1];
          if ((v142 - 58) > 0xFFFFFFF6)
          {
            goto LABEL_250;
          }

          if ((v142 | 0x20) == 0x65)
          {
            return;
          }

          v143 = v57[2];
          if ((v143 - 58) > 0xFFFFFFF6)
          {
            goto LABEL_250;
          }

          if ((v143 | 0x20) == 0x65)
          {
            return;
          }

          v144 = v57[3];
          if ((v144 - 58) > 0xFFFFFFF6)
          {
            goto LABEL_250;
          }

          if ((v144 | 0x20) == 0x65)
          {
            return;
          }

          v57 += 4;
          v56 -= 4;
        }

        while (v56 >= 4);
      }

LABEL_217:
      if (v56 != 1)
      {
        if (v56 != 2)
        {
          if (v56 != 3)
          {
            return;
          }

          v132 = _sSV13loadUnaligned14fromByteOffset2asxSi_xmtlFs5UInt8V_Tt1g5(0, (v57 + 2));
          if (_sSXsE2teoiySbx_5BoundQztFZSNys5UInt8VG_Tt1g5(14641, v132))
          {
            goto LABEL_250;
          }

          if ((v132 | 0x20) == 0x65)
          {
            return;
          }
        }

        v133 = _sSV13loadUnaligned14fromByteOffset2asxSi_xmtlFs5UInt8V_Tt1g5(0, (v57 + 1));
        if (_sSXsE2teoiySbx_5BoundQztFZSNys5UInt8VG_Tt1g5(14641, v133))
        {
LABEL_250:
          v148 = static String._fromUTF8Repairing(_:)();
          v150 = v149;
          lazy protocol witness table accessor for type JSONError and conformance JSONError();
          swift_allocError();
          *v46 = v148;
          *(v46 + 8) = v150;
          *(v46 + 16) = 0u;
          *(v46 + 32) = 0u;
          v70 = 11;
          goto LABEL_139;
        }

        if ((v133 | 0x20) == 0x65)
        {
          return;
        }
      }

      v134 = _sSV13loadUnaligned14fromByteOffset2asxSi_xmtlFs5UInt8V_Tt1g5(0, v57);
      if (!_sSXsE2teoiySbx_5BoundQztFZSNys5UInt8VG_Tt1g5(14641, v134))
      {
        return;
      }

      goto LABEL_250;
    }

LABEL_148:
    v17 = 0;
    goto LABEL_149;
  }

  if ((v11 - 58) >= 0xF7u)
  {
    goto LABEL_148;
  }

  if (v11 > 0x2Du)
  {
    switch(v11)
    {
      case 'I':
        if (v9 <= 7 || strncmp(v10, "Infinity", 8uLL))
        {
          goto LABEL_128;
        }

        goto LABEL_251;
      case 'N':
        if (v9 <= 2 || *v10 != 78 || *(v10 + 1) != 97 || *(v10 + 2) != 78)
        {
LABEL_128:
          v165 = 0.0;
          v166 = 0xE000000000000000;
          MEMORY[0x1865CCB90](0, 0xE000000000000000);
          specialized DefaultStringInterpolation.appendInterpolation<A>(_:)();
          MEMORY[0x1865CCB90](0, 0xE000000000000000);
          v90 = 0.0;
          v91 = 0xE000000000000000;
          v92 = v10;
LABEL_129:
          v93 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v92, a3, a4);
          v95 = v94;
          v97 = v96;
          lazy protocol witness table accessor for type JSONError and conformance JSONError();
          swift_allocError();
          *v46 = v90;
          *(v46 + 8) = v91;
          *(v46 + 16) = v93;
          *(v46 + 24) = v95;
          *(v46 + 32) = v97;
          *(v46 + 40) = 0;
          v70 = 5;
          goto LABEL_139;
        }

LABEL_251:
        v17 = 1;
        goto LABEL_149;
      case '.':
        v98 = specialized BufferView.dropFirst(_:)(1, v10, v9);
        if (specialized Collection.isEmpty.getter(v98, v99))
        {
          v100 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v98, a3, a4);
          v102 = v101;
          v104 = v103;
          lazy protocol witness table accessor for type JSONError and conformance JSONError();
          swift_allocError();
          *v105 = 0;
          *(v105 + 8) = 0;
          *(v105 + 16) = 46;
          *(v105 + 24) = v100;
          *(v105 + 32) = v102;
          *(v105 + 40) = v104;
          *(v105 + 48) = 1;
LABEL_210:
          swift_willThrow();
          return;
        }

        v111 = _sSV13loadUnaligned14fromByteOffset2asxSi_xmtlFs5UInt8V_Tt1g5(0, v98);
        if (_sSXsE2teoiySbx_5BoundQztFZSNys5UInt8VG_Tt1g5(14640, v111))
        {
          goto LABEL_148;
        }

        v39 = 0x8000000181481B40;
        v40 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v98, a3, a4);
        v42 = v151;
        v44 = v152;
        v45 = v111;
        goto LABEL_253;
    }

LABEL_293:
    __break(1u);
    goto LABEL_294;
  }

  if (v11 != 43 && v11 != 45)
  {
    goto LABEL_293;
  }

  if (v9 < 2)
  {
    if (v9 == 1)
    {
      v87 = _sSV13loadUnaligned14fromByteOffset2asxSi_xmtlFs5UInt8V_Tt1g5(0, v10);
      v39 = 0x8000000181481B20;
      v40 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v10, a3, a4);
      v42 = v88;
      v44 = v89;
      v45 = v87;
      goto LABEL_58;
    }

LABEL_292:
    __break(1u);
    goto LABEL_293;
  }

  v27 = v10 + 1;
  v71 = _sSV13loadUnaligned14fromByteOffset2asxSi_xmtlFs5UInt8V_Tt1g5(0, v10 + 1);
  if (v71 != 48)
  {
    if ((v71 - 58) > 0xF6u)
    {
      goto LABEL_275;
    }

    if (v71 != 46)
    {
      if (v71 != 78)
      {
        if (v71 != 73)
        {
          v165 = 0.0;
          v166 = 0xE000000000000000;
          _StringGuts.grow(_:)(20);
          MEMORY[0x1865CCB90](0x27207265746661, 0xE700000000000000);
          _sSV13loadUnaligned14fromByteOffset2asxSi_xmtlFs5UInt8V_Tt1g5(0, v10);
          v163 = static String._uncheckedFromUTF8(_:)();
          specialized DefaultStringInterpolation.appendInterpolation<A>(_:)(v163);
        }

        v108 = specialized BufferView.dropFirst(_:)(1, v10, v9);
        v109 = v108;
        if (v110 <= 7 || strncmp(v108, "Infinity", 8uLL))
        {
          v165 = 0.0;
          v166 = 0xE000000000000000;
          MEMORY[0x1865CCB90](0, 0xE000000000000000);
LABEL_270:
          specialized DefaultStringInterpolation.appendInterpolation<A>(_:)();
          MEMORY[0x1865CCB90](0, 0xE000000000000000);
          v90 = v165;
          v91 = v166;
          v92 = v109;
          goto LABEL_129;
        }

        goto LABEL_265;
      }

LABEL_261:
      v158 = specialized BufferView.dropFirst(_:)(1, v10, v9);
      v109 = v158;
      if (v159 <= 2 || *v158 != 78 || v158[1] != 97 || v158[2] != 78)
      {
        v165 = 0.0;
        v166 = 0xE000000000000000;
        MEMORY[0x1865CCB90](0, 0xE000000000000000);
        goto LABEL_270;
      }

LABEL_265:
      v17 = 1;
      goto LABEL_150;
    }

    a6 = specialized BufferView.dropFirst(_:)(2, v10, v9);
    if (!specialized Collection.isEmpty.getter(a6, v160))
    {
      goto LABEL_274;
    }

    v40 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(a6, a3, a4);
    v42 = v161;
    v44 = v162;
    lazy protocol witness table accessor for type JSONError and conformance JSONError();
    swift_allocError();
    *v46 = 0;
    *(v46 + 8) = 0;
    v64 = 46;
LABEL_83:
    *(v46 + 16) = v64;
    goto LABEL_137;
  }

  v72 = specialized BufferView.dropFirst(_:)(2, v10, v9);
  v74 = specialized static JSON5Scanner.validateLeadingZero(in:zero:fullSource:)(v72, v73, (v10 + 1), a3, a4);
  if (v6)
  {
    return;
  }

  v27 = v74;
  if ((v75 & 1) == 0)
  {
    goto LABEL_275;
  }

LABEL_14:
  if (*v10 == 45)
  {
    v19 = specialized _parseJSON5Integer<A>(_:isHex:)(v10, v9, 1, specialized _parseHexIntegerDigits<A>(_:isNegative:), specialized _parseIntegerDigits<A>(_:isNegative:));
    if ((v20 & 1) == 0)
    {
      _sSd7exactlySdSgx_tcSzRzlufCs5Int64V_Tt0g5(v19);
      if ((v21 & 1) == 0)
      {
        return;
      }
    }

    goto LABEL_250;
  }

  v145 = specialized _parseJSON5Integer<A>(_:isHex:)(v10, v9, 1, specialized _parseHexIntegerDigits<A>(_:isNegative:), specialized _parseIntegerDigits<A>(_:isNegative:));
  if (v146)
  {
    goto LABEL_250;
  }

  _sSd7exactlySdSgx_tcSzRzlufCs6UInt64V_Tt0g5Tm(v145);
  if (v147)
  {
    goto LABEL_250;
  }
}

{
  v9 = a2;
  v10 = a1;
  if ((a5 & 1) == 0)
  {
    if (!a2)
    {
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
LABEL_291:
      __break(1u);
      goto LABEL_292;
    }

    v23 = _sSV13loadUnaligned14fromByteOffset2asxSi_xmtlFs5UInt8V_Tt1g5(0, a1);
    if (v23 == 48)
    {
      if (v9 >= 1)
      {
        v24 = 1;
      }

      else
      {
        v24 = v9;
      }

      if (!specialized Collection.isEmpty.getter(v10 + v24, v9 - v24))
      {
        v25 = _sSV13loadUnaligned14fromByteOffset2asxSi_xmtlFs5UInt8V_Tt1g5(0, v10 + v24);
        v26 = v25 - 46 > 0x37 || ((1 << (v25 - 46)) & 0x80000000800001) == 0;
        v27 = v10;
        if (v26)
        {
          v16 = v25;
          v28 = _sSXsE2teoiySbx_5BoundQztFZSNys5UInt8VG_Tt1g5(14640, v25);
          v29 = v10 + v24;
LABEL_87:
          v65 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v29, a3, a4);
          v67 = v66;
          v69 = v68;
          if (!v28)
          {
            lazy protocol witness table accessor for type JSONError and conformance JSONError();
            swift_allocError();
            *v46 = xmmword_181237560;
            *(v46 + 16) = v16;
            *(v46 + 24) = v65;
            *(v46 + 32) = v67;
            *(v46 + 40) = v69;
LABEL_138:
            v70 = 1;
            goto LABEL_139;
          }

          lazy protocol witness table accessor for type JSONError and conformance JSONError();
          swift_allocError();
          *v46 = v65;
          *(v46 + 8) = v67;
          *(v46 + 16) = v69;
          *(v46 + 24) = 0;
          *(v46 + 32) = 0;
          *(v46 + 40) = 0;
          v70 = 10;
LABEL_139:
          *(v46 + 48) = v70;
          goto LABEL_210;
        }

        goto LABEL_46;
      }
    }

    else if ((v23 - 58) < 0xF7u)
    {
      if (v23 != 45)
      {
        goto LABEL_283;
      }

      if (v9 < 2)
      {
        v40 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v10, a3, a4);
        v42 = v62;
        v44 = v63;
        lazy protocol witness table accessor for type JSONError and conformance JSONError();
        swift_allocError();
        *v46 = 0xD000000000000010;
        *(v46 + 8) = 0x8000000181481B20;
        v64 = 45;
        goto LABEL_83;
      }

      v27 = v10 + 1;
      v30 = _sSV13loadUnaligned14fromByteOffset2asxSi_xmtlFs5UInt8V_Tt1g5(0, v10 + 1);
      if (v30 == 48)
      {
        v31 = specialized BufferView.dropFirst(_:)(2, v10, v9);
        specialized static JSONScanner.validateLeadingZero(in:fullSource:)(v31, v32, a3, a4);
        if (v6)
        {
          return;
        }
      }

      else
      {
        LOBYTE(v36) = v30;
        if ((v30 - 58) <= 0xF6u)
        {
          v39 = 0x8000000181481F30;
          v84 = v10 + 1;
          goto LABEL_122;
        }
      }

LABEL_46:
      if ((a6 & 1) != 0 && v27 + 1 < (v10 + v9))
      {
        v33 = 0;
        while (1)
        {
          a6 = v27 + v33;
          if ((*(v27 + v33 + 1) | 0x20) == 0x65)
          {
            break;
          }

          if (~v27 + v9 + v10 == ++v33)
          {
            goto LABEL_56;
          }
        }

        if ((_sSV13loadUnaligned14fromByteOffset2asxSi_xmtlFs5UInt8V_Tt1g5(0, v27 + v33) - 58) <= 0xF5u)
        {
          if (((v27 - v10 + v33 + 1) & 0x8000000000000000) == 0 && ~v27 + v9 + v10 - v33 >= 1)
          {
            v34 = _sSV13loadUnaligned14fromByteOffset2asxSi_xmtlFs5UInt8V_Tt1g5(0, a6 + 1);
            v35 = a6 + 1;
LABEL_135:
            v40 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v35, a3, a4);
            v42 = v106;
            v44 = v107;
            v9 = v34;
LABEL_136:
            lazy protocol witness table accessor for type JSONError and conformance JSONError();
            swift_allocError();
            *v46 = xmmword_181237560;
            *(v46 + 16) = v9;
            goto LABEL_137;
          }

          goto LABEL_291;
        }
      }

LABEL_56:
      v36 = v10 + v9 - 1;
      v37 = _sSV13loadUnaligned14fromByteOffset2asxSi_xmtlFs5UInt8V_Tt1g5(0, v36);
      if ((v37 - 58) <= 0xF5u)
      {
        v38 = v37;
        v39 = 0x8000000181481B20;
        v40 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v36, a3, a4);
        v42 = v41;
        v44 = v43;
        v45 = v38;
LABEL_58:
        lazy protocol witness table accessor for type JSONError and conformance JSONError();
        swift_allocError();
        v47 = 0xD000000000000010;
LABEL_59:
        *v46 = v47;
        *(v46 + 8) = v39;
        *(v46 + 16) = v45;
LABEL_137:
        *(v46 + 24) = v40;
        *(v46 + 32) = v42;
        *(v46 + 40) = v44;
        goto LABEL_138;
      }

      closure #1 in Double.init(prevalidatedBuffer:)(v10, v9, &v165);
      if ((v166 & 1) == 0)
      {
        if ((~*&v165 & 0x7FF0000000000000) == 0)
        {
          goto LABEL_250;
        }

        if (v165 != 0.0)
        {
          return;
        }

        v56 = v9;
        v57 = v10;
        if (v9 >= 4)
        {
          v56 = v9;
          v57 = v10;
          while (1)
          {
            v58 = *v57;
            if ((v58 - 58) > 0xFFFFFFF6)
            {
              goto LABEL_250;
            }

            if ((v58 | 0x20) == 0x65)
            {
              return;
            }

            v59 = v57[1];
            if ((v59 - 58) > 0xFFFFFFF6)
            {
              goto LABEL_250;
            }

            if ((v59 | 0x20) == 0x65)
            {
              return;
            }

            v60 = v57[2];
            if ((v60 - 58) > 0xFFFFFFF6)
            {
              goto LABEL_250;
            }

            if ((v60 | 0x20) == 0x65)
            {
              return;
            }

            v61 = v57[3];
            if ((v61 - 58) > 0xFFFFFFF6)
            {
              goto LABEL_250;
            }

            if ((v61 | 0x20) == 0x65)
            {
              return;
            }

            v57 += 4;
            v56 -= 4;
            if (v56 < 4)
            {
              goto LABEL_217;
            }
          }
        }

        goto LABEL_217;
      }

      v48 = specialized BufferView.suffix(from:)(v27, v10, v9);
      v50 = v48;
      v51 = &v48[v49];
      if (v49 < 1)
      {
        v54 = v48;
LABEL_97:
        if (v48 < v51)
        {
          v76 = 0;
          v77 = v54 - v50;
          v78 = &v50[v49] - v54;
          v79 = &v50[v49] - v48;
          v80 = v48 - v50;
          do
          {
            if ((v80 & 0x8000000000000000) != 0)
            {
              goto LABEL_258;
            }

            v55 = v79-- < 1;
            if (v55)
            {
              goto LABEL_258;
            }

            v9 = *v48;
            if ((v9 - 58) > 0xFFFFFFF5)
            {
              v81 = __OFADD__(v77++, 1);
              if (v81)
              {
                goto LABEL_272;
              }
            }

            else if (*v48 <= 0x2Du)
            {
              if (v9 != 43 && v9 != 45 || v77 || v76 != 2)
              {
LABEL_119:
                v40 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v48, a3, a4);
                v42 = v82;
                v44 = v83;
                goto LABEL_136;
              }

              v77 = 0;
              v76 = 3;
            }

            else if (v9 == 101 || v9 == 69)
            {
              if (v77 < 1 || v76 >= 2)
              {
                goto LABEL_119;
              }

              v77 = 0;
              v76 = 2;
            }

            else
            {
              if (v9 != 46 || v77 < 1 || v76)
              {
                goto LABEL_119;
              }

              v77 = 0;
              v76 = 1;
            }

            ++v48;
            ++v80;
            --v78;
          }

          while (v78);
        }

        __break(1u);
LABEL_258:
        __break(1u);
LABEL_259:
        __break(1u);
LABEL_260:
        __break(1u);
        goto LABEL_261;
      }

      v52 = 0;
      v53 = v49;
      v54 = v48;
      while ((v52 & 0x8000000000000000) == 0)
      {
        v55 = v53-- < 1;
        if (v55)
        {
          break;
        }

        if (*v48 - 58 > 0xFFFFFFF5)
        {
          ++v48;
          ++v54;
          ++v52;
          if (v48 < v51)
          {
            continue;
          }
        }

        goto LABEL_97;
      }

LABEL_277:
      __break(1u);
LABEL_278:
      v39 = 0x8000000181481B40;
      v84 = a6;
LABEL_122:
      v40 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v84, a3, a4);
      v42 = v85;
      v44 = v86;
      v45 = v36;
LABEL_253:
      lazy protocol witness table accessor for type JSONError and conformance JSONError();
      swift_allocError();
      v47 = 0xD000000000000013;
      goto LABEL_59;
    }

    v27 = v10;
    goto LABEL_46;
  }

  if (!a2)
  {
    __break(1u);
    goto LABEL_280;
  }

  v11 = _sSV13loadUnaligned14fromByteOffset2asxSi_xmtlFs5UInt8V_Tt1g5(0, a1);
  if (v11 == 48)
  {
    if (v9 >= 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = v9;
    }

    v13 = v10 + v12;
    v14 = v9 - v12;
    if (!specialized Collection.isEmpty.getter(v10 + v12, v9 - v12))
    {
      v15 = _sSV13loadUnaligned14fromByteOffset2asxSi_xmtlFs5UInt8V_Tt1g5(0, v13);
      v16 = v15;
      v17 = 0;
      if (v15 > 0x57u)
      {
        if (v15 == 120)
        {
          goto LABEL_12;
        }

        if (v15 != 101)
        {
          if (v15 == 88)
          {
LABEL_12:
            if (_sSLsE2leoiySbx_xtFZ10Foundation15BufferViewIndexVys5UInt8VG_Tt1g5(v13 + 1, v10 + v9))
            {
              v18 = _sSV13loadUnaligned14fromByteOffset2asxSi_xmtlFs5UInt8V_Tt1g5(0, v13 + 1);
              if (UInt8.isValidHexDigit.getter(v18))
              {
                goto LABEL_14;
              }

              v40 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v13 + 1, a3, a4);
              v42 = v139;
              v44 = v140;
              v9 = v18;
              goto LABEL_136;
            }

            if (v14 >= 1)
            {
              v34 = _sSV13loadUnaligned14fromByteOffset2asxSi_xmtlFs5UInt8V_Tt1g5(0, v13);
              v35 = v13;
              goto LABEL_135;
            }

LABEL_294:
            __break(1u);
            return;
          }

          goto LABEL_86;
        }

LABEL_149:
        v27 = v10;
        goto LABEL_150;
      }

      v27 = v10;
      if (v15 != 46 && v15 != 69)
      {
LABEL_86:
        v28 = _sSXsE2teoiySbx_5BoundQztFZSNys5UInt8VG_Tt1g5(14640, v15);
        v29 = v13;
        goto LABEL_87;
      }

      while (1)
      {
LABEL_150:
        v164 = a4;
        a4 = v10 + v9;
        v112 = v10 + v9 - 1;
        v113 = _sSV13loadUnaligned14fromByteOffset2asxSi_xmtlFs5UInt8V_Tt1g5(0, v112);
        if ((v113 | 0x20) == 0x65)
        {
          v114 = v113;
          if (!_sSLsE2leoiySbx_xtFZ10Foundation15BufferViewIndexVys5UInt8VG_Tt1g5(a3, v10 + v9 - 1))
          {
            goto LABEL_281;
          }

          v27 = v164;
          if (!_sSLsE2leoiySbx_xtFZ10Foundation15BufferViewIndexVys5UInt8VG_Tt1g5(v10 + v9 - 1, a3 + v164))
          {
            goto LABEL_282;
          }

          v115 = specialized min<A>(_:_:)(v10 + v9, a3 + v164);
          v10 = 1;
          if (v115 <= a3)
          {
            v9 = 0;
            v116 = 1;
LABEL_209:
            lazy protocol witness table accessor for type JSONError and conformance JSONError();
            swift_allocError();
            *v131 = 0xD000000000000010;
            *(v131 + 8) = 0x8000000181481B20;
            *(v131 + 16) = v114;
            *(v131 + 24) = v116;
            *(v131 + 32) = v9;
            *(v131 + 40) = v112 - a3;
            *(v131 + 48) = 1;
            goto LABEL_210;
          }

          v116 = 1;
          v117 = a3;
LABEL_155:
          while (1)
          {
            v118 = 0;
            v119 = 0;
            v120 = v164 + a3 - v117;
            while (1)
            {
              if ((v117 - a3 + v119) < 0 || (v120 + v118) < 1)
              {
                goto LABEL_259;
              }

              v121 = *(v117 + v119);
              if (v121 == 10)
              {
                v81 = __OFADD__(v116++, 1);
                if (v81)
                {
                  goto LABEL_284;
                }

                v117 += v119 + 1;
                if (v117 >= v115)
                {
                  goto LABEL_173;
                }

                goto LABEL_155;
              }

              if (v121 == 13)
              {
                break;
              }

              v9 = v119 + 1;
              if (__OFADD__(v119, 1))
              {
                goto LABEL_260;
              }

              ++v119;
              --v118;
              if (v117 + v119 >= v115)
              {
                goto LABEL_209;
              }
            }

            v122 = v117 + v119;
            if (v112 < v117 + v119 + 1)
            {
              goto LABEL_168;
            }

            if (((v117 - a3 + v119 + 1) & 0x8000000000000000) != 0 || (~v119 + v120) < 1)
            {
              goto LABEL_290;
            }

            if (*(v122 + 1) == 10)
            {
              v122 = v117 + v119 + 1;
            }

LABEL_168:
            v81 = __OFADD__(v116++, 1);
            if (v81)
            {
              goto LABEL_285;
            }

            v117 = v122 + 1;
            if (v122 + 1 >= v115)
            {
LABEL_173:
              v9 = 0;
              goto LABEL_209;
            }
          }
        }

        closure #1 in Double.init(prevalidatedBuffer:)(v10, v9, &v165);
        if ((v166 & 1) == 0)
        {
          break;
        }

        v123 = specialized BufferView.suffix(from:)(v27, v10, v9);
        if (v124 < 1)
        {
          goto LABEL_286;
        }

        v10 = v123;
        v9 = v124;
        v125 = v123 + v124;
        v126 = _sSV13loadUnaligned14fromByteOffset2asxSi_xmtlFs5UInt8V_Tt1g5(0, v123);
        if (v126 == 45 || (v127 = v10, v126 == 43))
        {
          v127 = (v10 + 1);
        }

        if (v125 < v127)
        {
          goto LABEL_287;
        }

        a6 = &v127[-v10];
        if (&v127[-v10] < 0)
        {
          goto LABEL_288;
        }

        v36 = v125 - v127;
        if ((v125 - v127) < 0)
        {
          goto LABEL_289;
        }

        if (v36 >= 2)
        {
          v128 = 2;
        }

        else
        {
          v128 = v125 - v127;
        }

        if (!_stringshims_strncasecmp_clocale(v127, "0x", v128))
        {
          v135 = v127 + 2;
          if ((v125 - (v127 + 2)) < 1 || v135 >= v125 || (&v135[-v10] & 0x8000000000000000) != 0)
          {
LABEL_234:
            __break(1u);
          }

          else
          {
            v136 = v9 + v10 - v127 - 3;
            v137 = a6 + 3;
            v127 += 2;
            while (1)
            {
              v138 = v137;
              if (!UInt8.isValidHexDigit.getter(*v127))
              {
                break;
              }

              v55 = v136-- < 1;
              if (!v55 && ++v127 < v125)
              {
                v137 = v138 + 1;
                if ((v138 & 0x8000000000000000) == 0)
                {
                  continue;
                }
              }

              goto LABEL_234;
            }
          }

          LOBYTE(v10) = _sSV13loadUnaligned14fromByteOffset2asxSi_xmtlFs5UInt8V_Tt1g5(0, v127);
          a4 = 0xED00007265626D75;
          v27 = 0x6E20786568206E69;
LABEL_255:
          v153 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v127, a3, v164);
          v155 = v154;
          v157 = v156;
          lazy protocol witness table accessor for type JSONError and conformance JSONError();
          swift_allocError();
          *v46 = v27;
          *(v46 + 8) = a4;
          *(v46 + 16) = v10;
          *(v46 + 24) = v153;
          *(v46 + 32) = v155;
          *(v46 + 40) = v157;
          goto LABEL_138;
        }

        if (v127 >= v125)
        {
LABEL_271:
          __break(1u);
LABEL_272:
          __break(1u);
        }

        else
        {
          v129 = 0;
          v130 = 0;
          v27 = 0x65626D756E206E69;
          while ((a6 & 0x8000000000000000) == 0 && v36 >= 1)
          {
            v10 = *v127;
            if ((v10 - 58) > 0xF5u)
            {
              v81 = __OFADD__(v130++, 1);
              if (v81)
              {
                __break(1u);
                goto LABEL_277;
              }
            }

            else
            {
              a4 = 0xE900000000000072;
              if (*v127 <= 0x2Du)
              {
                if (v10 != 43 && v10 != 45 || v130 || v129 != 2)
                {
                  goto LABEL_255;
                }

                v130 = 0;
                v129 = 3;
              }

              else if (v10 == 101 || v10 == 69)
              {
                if (v129 != 1 && (v129 || v130 <= 0))
                {
                  goto LABEL_255;
                }

                v130 = 0;
                v129 = 2;
              }

              else
              {
                if (v10 != 46)
                {
                  goto LABEL_255;
                }

                if (v129)
                {
                  LOBYTE(v10) = 46;
                  goto LABEL_255;
                }

                v130 = 0;
                v129 = 1;
              }
            }

            ++v127;
            ++a6;
            if (!--v36)
            {
              goto LABEL_271;
            }
          }
        }

        __break(1u);
LABEL_274:
        LOBYTE(v36) = _sSV13loadUnaligned14fromByteOffset2asxSi_xmtlFs5UInt8V_Tt1g5(0, a6);
        if (!_sSXsE2teoiySbx_5BoundQztFZSNys5UInt8VG_Tt1g5(14640, v36))
        {
          goto LABEL_278;
        }

LABEL_275:
        v17 = 0;
      }

      if ((~*&v165 & 0x7FF0000000000000) == 0)
      {
        if (v17)
        {
          return;
        }

        goto LABEL_250;
      }

      if (v165 != 0.0)
      {
        return;
      }

      v56 = v9;
      v57 = v10;
      if (v9 >= 4)
      {
        v56 = v9;
        v57 = v10;
        do
        {
          v141 = *v57;
          if ((v141 - 58) > 0xFFFFFFF6)
          {
            goto LABEL_250;
          }

          if ((v141 | 0x20) == 0x65)
          {
            return;
          }

          v142 = v57[1];
          if ((v142 - 58) > 0xFFFFFFF6)
          {
            goto LABEL_250;
          }

          if ((v142 | 0x20) == 0x65)
          {
            return;
          }

          v143 = v57[2];
          if ((v143 - 58) > 0xFFFFFFF6)
          {
            goto LABEL_250;
          }

          if ((v143 | 0x20) == 0x65)
          {
            return;
          }

          v144 = v57[3];
          if ((v144 - 58) > 0xFFFFFFF6)
          {
            goto LABEL_250;
          }

          if ((v144 | 0x20) == 0x65)
          {
            return;
          }

          v57 += 4;
          v56 -= 4;
        }

        while (v56 >= 4);
      }

LABEL_217:
      if (v56 != 1)
      {
        if (v56 != 2)
        {
          if (v56 != 3)
          {
            return;
          }

          v132 = _sSV13loadUnaligned14fromByteOffset2asxSi_xmtlFs5UInt8V_Tt1g5(0, (v57 + 2));
          if (_sSXsE2teoiySbx_5BoundQztFZSNys5UInt8VG_Tt1g5(14641, v132))
          {
            goto LABEL_250;
          }

          if ((v132 | 0x20) == 0x65)
          {
            return;
          }
        }

        v133 = _sSV13loadUnaligned14fromByteOffset2asxSi_xmtlFs5UInt8V_Tt1g5(0, (v57 + 1));
        if (_sSXsE2teoiySbx_5BoundQztFZSNys5UInt8VG_Tt1g5(14641, v133))
        {
LABEL_250:
          v148 = static String._fromUTF8Repairing(_:)();
          v150 = v149;
          lazy protocol witness table accessor for type JSONError and conformance JSONError();
          swift_allocError();
          *v46 = v148;
          *(v46 + 8) = v150;
          *(v46 + 16) = 0u;
          *(v46 + 32) = 0u;
          v70 = 11;
          goto LABEL_139;
        }

        if ((v133 | 0x20) == 0x65)
        {
          return;
        }
      }

      v134 = _sSV13loadUnaligned14fromByteOffset2asxSi_xmtlFs5UInt8V_Tt1g5(0, v57);
      if (!_sSXsE2teoiySbx_5BoundQztFZSNys5UInt8VG_Tt1g5(14641, v134))
      {
        return;
      }

      goto LABEL_250;
    }

LABEL_148:
    v17 = 0;
    goto LABEL_149;
  }

  if ((v11 - 58) >= 0xF7u)
  {
    goto LABEL_148;
  }

  if (v11 > 0x2Du)
  {
    switch(v11)
    {
      case 'I':
        if (v9 <= 7 || strncmp(v10, "Infinity", 8uLL))
        {
          goto LABEL_128;
        }

        goto LABEL_251;
      case 'N':
        if (v9 < 3 || *v10 != 78 || *(v10 + 1) != 97 || *(v10 + 2) != 78)
        {
LABEL_128:
          v165 = 0.0;
          v166 = 0xE000000000000000;
          MEMORY[0x1865CCB90](0, 0xE000000000000000);
          specialized DefaultStringInterpolation.appendInterpolation<A>(_:)();
          MEMORY[0x1865CCB90](0, 0xE000000000000000);
          v90 = 0.0;
          v91 = 0xE000000000000000;
          v92 = v10;
LABEL_129:
          v93 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v92, a3, a4);
          v95 = v94;
          v97 = v96;
          lazy protocol witness table accessor for type JSONError and conformance JSONError();
          swift_allocError();
          *v46 = v90;
          *(v46 + 8) = v91;
          *(v46 + 16) = v93;
          *(v46 + 24) = v95;
          *(v46 + 32) = v97;
          *(v46 + 40) = 0;
          v70 = 5;
          goto LABEL_139;
        }

LABEL_251:
        v17 = 1;
        goto LABEL_149;
      case '.':
        v98 = specialized BufferView.dropFirst(_:)(1, v10, v9);
        if (specialized Collection.isEmpty.getter(v98, v99))
        {
          v100 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v98, a3, a4);
          v102 = v101;
          v104 = v103;
          lazy protocol witness table accessor for type JSONError and conformance JSONError();
          swift_allocError();
          *v105 = 0;
          *(v105 + 8) = 0;
          *(v105 + 16) = 46;
          *(v105 + 24) = v100;
          *(v105 + 32) = v102;
          *(v105 + 40) = v104;
          *(v105 + 48) = 1;
LABEL_210:
          swift_willThrow();
          return;
        }

        v111 = _sSV13loadUnaligned14fromByteOffset2asxSi_xmtlFs5UInt8V_Tt1g5(0, v98);
        if (_sSXsE2teoiySbx_5BoundQztFZSNys5UInt8VG_Tt1g5(14640, v111))
        {
          goto LABEL_148;
        }

        v39 = 0x8000000181481B40;
        v40 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v98, a3, a4);
        v42 = v151;
        v44 = v152;
        v45 = v111;
        goto LABEL_253;
    }

LABEL_293:
    __break(1u);
    goto LABEL_294;
  }

  if (v11 != 43 && v11 != 45)
  {
    goto LABEL_293;
  }

  if (v9 < 2)
  {
    if (v9 == 1)
    {
      v87 = _sSV13loadUnaligned14fromByteOffset2asxSi_xmtlFs5UInt8V_Tt1g5(0, v10);
      v39 = 0x8000000181481B20;
      v40 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v10, a3, a4);
      v42 = v88;
      v44 = v89;
      v45 = v87;
      goto LABEL_58;
    }

LABEL_292:
    __break(1u);
    goto LABEL_293;
  }

  v27 = v10 + 1;
  v71 = _sSV13loadUnaligned14fromByteOffset2asxSi_xmtlFs5UInt8V_Tt1g5(0, v10 + 1);
  if (v71 != 48)
  {
    if ((v71 - 58) > 0xF6u)
    {
      goto LABEL_275;
    }

    if (v71 != 46)
    {
      if (v71 != 78)
      {
        if (v71 != 73)
        {
          v165 = 0.0;
          v166 = 0xE000000000000000;
          _StringGuts.grow(_:)(20);
          MEMORY[0x1865CCB90](0x27207265746661, 0xE700000000000000);
          _sSV13loadUnaligned14fromByteOffset2asxSi_xmtlFs5UInt8V_Tt1g5(0, v10);
          v163 = static String._uncheckedFromUTF8(_:)();
          specialized DefaultStringInterpolation.appendInterpolation<A>(_:)(v163);
        }

        v108 = specialized BufferView.dropFirst(_:)(1, v10, v9);
        v109 = v108;
        if (v110 <= 7 || strncmp(v108, "Infinity", 8uLL))
        {
          v165 = 0.0;
          v166 = 0xE000000000000000;
          MEMORY[0x1865CCB90](0, 0xE000000000000000);
LABEL_270:
          specialized DefaultStringInterpolation.appendInterpolation<A>(_:)();
          MEMORY[0x1865CCB90](0, 0xE000000000000000);
          v90 = v165;
          v91 = v166;
          v92 = v109;
          goto LABEL_129;
        }

        goto LABEL_265;
      }

LABEL_261:
      v158 = specialized BufferView.dropFirst(_:)(1, v10, v9);
      v109 = v158;
      if (v159 <= 2 || *v158 != 78 || v158[1] != 97 || v158[2] != 78)
      {
        v165 = 0.0;
        v166 = 0xE000000000000000;
        MEMORY[0x1865CCB90](0, 0xE000000000000000);
        goto LABEL_270;
      }

LABEL_265:
      v17 = 1;
      goto LABEL_150;
    }

    a6 = specialized BufferView.dropFirst(_:)(2, v10, v9);
    if (!specialized Collection.isEmpty.getter(a6, v160))
    {
      goto LABEL_274;
    }

    v40 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(a6, a3, a4);
    v42 = v161;
    v44 = v162;
    lazy protocol witness table accessor for type JSONError and conformance JSONError();
    swift_allocError();
    *v46 = 0;
    *(v46 + 8) = 0;
    v64 = 46;
LABEL_83:
    *(v46 + 16) = v64;
    goto LABEL_137;
  }

  v72 = specialized BufferView.dropFirst(_:)(2, v10, v9);
  v74 = specialized static JSON5Scanner.validateLeadingZero(in:zero:fullSource:)(v72, v73, (v10 + 1), a3, a4);
  if (v6)
  {
    return;
  }

  v27 = v74;
  if ((v75 & 1) == 0)
  {
    goto LABEL_275;
  }

LABEL_14:
  if (*v10 == 45)
  {
    v19 = specialized _parseJSON5Integer<A>(_:isHex:)(v10, v9, 1, specialized _parseHexIntegerDigits<A>(_:isNegative:), specialized _parseIntegerDigits<A>(_:isNegative:));
    if ((v20 & 1) == 0)
    {
      _sSd7exactlySdSgx_tcSzRzlufCs5Int64V_Tt0g5(v19);
      if ((v21 & 1) == 0)
      {
        return;
      }
    }

    goto LABEL_250;
  }

  v145 = specialized _parseJSON5Integer<A>(_:isHex:)(v10, v9, 1, specialized _parseHexIntegerDigits<A>(_:isNegative:), specialized _parseIntegerDigits<A>(_:isNegative:));
  if (v146)
  {
    goto LABEL_250;
  }

  _sSd7exactlySdSgx_tcSzRzlufCs6UInt64V_Tt0g5Tm(v145);
  if (v147)
  {
    goto LABEL_250;
  }
}

{
  v8 = a2;
  v9 = a1;
  if ((a5 & 1) == 0)
  {
    if (!a2)
    {
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
LABEL_291:
      __break(1u);
      goto LABEL_292;
    }

    v21 = _sSV13loadUnaligned14fromByteOffset2asxSi_xmtlFs5UInt8V_Tt1g5(0, a1);
    if (v21 == 48)
    {
      if (v8 >= 1)
      {
        v22 = 1;
      }

      else
      {
        v22 = v8;
      }

      if (!specialized Collection.isEmpty.getter(v9 + v22, v8 - v22))
      {
        v23 = _sSV13loadUnaligned14fromByteOffset2asxSi_xmtlFs5UInt8V_Tt1g5(0, v9 + v22);
        v24 = v23 - 46 > 0x37 || ((1 << (v23 - 46)) & 0x80000000800001) == 0;
        v25 = v9;
        if (v24)
        {
          v15 = v23;
          v26 = _sSXsE2teoiySbx_5BoundQztFZSNys5UInt8VG_Tt1g5(14640, v23);
          v27 = v9 + v22;
LABEL_87:
          v62 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v27, a3, a4);
          v64 = v63;
          v66 = v65;
          if (!v26)
          {
            lazy protocol witness table accessor for type JSONError and conformance JSONError();
            swift_allocError();
            *v42 = xmmword_181237560;
            *(v42 + 16) = v15;
            *(v42 + 24) = v62;
            *(v42 + 32) = v64;
            *(v42 + 40) = v66;
LABEL_138:
            v67 = 1;
            goto LABEL_139;
          }

          lazy protocol witness table accessor for type JSONError and conformance JSONError();
          swift_allocError();
          *v42 = v62;
          *(v42 + 8) = v64;
          *(v42 + 16) = v66;
          *(v42 + 24) = 0;
          *(v42 + 32) = 0;
          *(v42 + 40) = 0;
          v67 = 10;
LABEL_139:
          *(v42 + 48) = v67;
          goto LABEL_210;
        }

        goto LABEL_46;
      }
    }

    else if ((v21 - 58) < 0xF7u)
    {
      if (v21 != 45)
      {
        goto LABEL_283;
      }

      if (v8 < 2)
      {
        v36 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v9, a3, a4);
        v38 = v59;
        v40 = v60;
        lazy protocol witness table accessor for type JSONError and conformance JSONError();
        swift_allocError();
        *v42 = 0xD000000000000010;
        *(v42 + 8) = 0x8000000181481B20;
        v61 = 45;
        goto LABEL_83;
      }

      v25 = v9 + 1;
      v28 = _sSV13loadUnaligned14fromByteOffset2asxSi_xmtlFs5UInt8V_Tt1g5(0, v9 + 1);
      if (v28 == 48)
      {
        specialized static JSONScanner.validateLeadingZero(in:fullSource:)((v9 + 2), v8 - 2, a3, a4);
        if (v6)
        {
          return;
        }
      }

      else
      {
        LOBYTE(v32) = v28;
        if ((v28 - 58) < 0xF7u)
        {
          v35 = 0x8000000181481F30;
          v81 = v9 + 1;
          goto LABEL_122;
        }
      }

LABEL_46:
      if ((a6 & 1) != 0 && v25 + 1 < (v9 + v8))
      {
        v29 = 0;
        while (1)
        {
          a6 = v25 + v29;
          if ((*(v25 + v29 + 1) | 0x20) == 0x65)
          {
            break;
          }

          if (~v25 + v8 + v9 == ++v29)
          {
            goto LABEL_56;
          }
        }

        if ((_sSV13loadUnaligned14fromByteOffset2asxSi_xmtlFs5UInt8V_Tt1g5(0, v25 + v29) - 58) <= 0xF5u)
        {
          if (((v25 - v9 + v29 + 1) & 0x8000000000000000) == 0 && ~v25 + v8 + v9 - v29 >= 1)
          {
            v30 = _sSV13loadUnaligned14fromByteOffset2asxSi_xmtlFs5UInt8V_Tt1g5(0, a6 + 1);
            v31 = a6 + 1;
LABEL_135:
            v36 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v31, a3, a4);
            v38 = v103;
            v40 = v104;
            v8 = v30;
LABEL_136:
            lazy protocol witness table accessor for type JSONError and conformance JSONError();
            swift_allocError();
            *v42 = xmmword_181237560;
            *(v42 + 16) = v8;
            goto LABEL_137;
          }

          goto LABEL_291;
        }
      }

LABEL_56:
      v32 = v9 + v8 - 1;
      v33 = _sSV13loadUnaligned14fromByteOffset2asxSi_xmtlFs5UInt8V_Tt1g5(0, v32);
      if ((v33 - 58) <= 0xF5u)
      {
        v34 = v33;
        v35 = 0x8000000181481B20;
        v36 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v32, a3, a4);
        v38 = v37;
        v40 = v39;
        v41 = v34;
LABEL_58:
        lazy protocol witness table accessor for type JSONError and conformance JSONError();
        swift_allocError();
        v43 = 0xD000000000000010;
LABEL_59:
        *v42 = v43;
        *(v42 + 8) = v35;
        *(v42 + 16) = v41;
LABEL_137:
        *(v42 + 24) = v36;
        *(v42 + 32) = v38;
        *(v42 + 40) = v40;
        goto LABEL_138;
      }

      closure #1 in Float.init(prevalidatedBuffer:)(v9, v8, &v162);
      if ((v162 & 0x100000000) == 0)
      {
        if ((~v162 & 0x7F800000) == 0)
        {
          goto LABEL_251;
        }

        if (*&v162 != 0.0)
        {
          return;
        }

        v53 = v8;
        v54 = v9;
        if (v8 >= 4)
        {
          v53 = v8;
          v54 = v9;
          do
          {
            v55 = *v54;
            if ((v55 - 58) > 0xFFFFFFF6)
            {
              goto LABEL_251;
            }

            if ((v55 | 0x20) == 0x65)
            {
              return;
            }

            v56 = v54[1];
            if ((v56 - 58) > 0xFFFFFFF6)
            {
              goto LABEL_251;
            }

            if ((v56 | 0x20) == 0x65)
            {
              return;
            }

            v57 = v54[2];
            if ((v57 - 58) > 0xFFFFFFF6)
            {
              goto LABEL_251;
            }

            if ((v57 | 0x20) == 0x65)
            {
              return;
            }

            v58 = v54[3];
            if ((v58 - 58) > 0xFFFFFFF6)
            {
              goto LABEL_251;
            }

            if ((v58 | 0x20) == 0x65)
            {
              return;
            }

            v54 += 4;
            v53 -= 4;
          }

          while (v53 >= 4);
        }

LABEL_217:
        if (v53 != 1)
        {
          if (v53 != 2)
          {
            if (v53 != 3)
            {
              return;
            }

            v130 = _sSV13loadUnaligned14fromByteOffset2asxSi_xmtlFs5UInt8V_Tt1g5(0, (v54 + 2));
            if (_sSXsE2teoiySbx_5BoundQztFZSNys5UInt8VG_Tt1g5(14641, v130))
            {
              goto LABEL_251;
            }

            if ((v130 | 0x20) == 0x65)
            {
              return;
            }
          }

          v131 = _sSV13loadUnaligned14fromByteOffset2asxSi_xmtlFs5UInt8V_Tt1g5(0, (v54 + 1));
          if (_sSXsE2teoiySbx_5BoundQztFZSNys5UInt8VG_Tt1g5(14641, v131))
          {
            goto LABEL_251;
          }

          if ((v131 | 0x20) == 0x65)
          {
            return;
          }
        }

        v132 = _sSV13loadUnaligned14fromByteOffset2asxSi_xmtlFs5UInt8V_Tt1g5(0, v54);
        if (!_sSXsE2teoiySbx_5BoundQztFZSNys5UInt8VG_Tt1g5(14641, v132))
        {
          return;
        }

LABEL_251:
        v145 = static String._fromUTF8Repairing(_:)();
        v147 = v146;
        lazy protocol witness table accessor for type JSONError and conformance JSONError();
        swift_allocError();
        *v42 = v145;
        *(v42 + 8) = v147;
        *(v42 + 16) = 0u;
        *(v42 + 32) = 0u;
        v67 = 11;
        goto LABEL_139;
      }

      v44 = specialized BufferView.suffix(from:)(v25, v9, v8);
      v46 = v44;
      v47 = &v44[v45];
      if (v45 < 1)
      {
        v50 = v44;
        v51 = a3;
LABEL_97:
        if (v44 < v47)
        {
          v73 = 0;
          v74 = v50 - v46;
          v75 = &v46[v45] - v50;
          v76 = &v46[v45] - v44;
          v77 = v44 - v46;
          do
          {
            if ((v77 & 0x8000000000000000) != 0)
            {
              goto LABEL_258;
            }

            v52 = v76-- < 1;
            if (v52)
            {
              goto LABEL_258;
            }

            v8 = *v44;
            if ((v8 - 58) > 0xFFFFFFF5)
            {
              v78 = __OFADD__(v74++, 1);
              if (v78)
              {
                goto LABEL_272;
              }
            }

            else if (*v44 <= 0x2Du)
            {
              if (v8 != 43 && v8 != 45 || v74 || v73 != 2)
              {
LABEL_119:
                v36 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v44, v51, a4);
                v38 = v79;
                v40 = v80;
                goto LABEL_136;
              }

              v74 = 0;
              v73 = 3;
            }

            else if (v8 == 101 || v8 == 69)
            {
              if (v74 < 1 || v73 >= 2)
              {
                goto LABEL_119;
              }

              v74 = 0;
              v73 = 2;
            }

            else
            {
              if (v8 != 46 || v74 < 1 || v73)
              {
                goto LABEL_119;
              }

              v74 = 0;
              v73 = 1;
            }

            ++v44;
            ++v77;
            --v75;
          }

          while (v75);
        }

        __break(1u);
LABEL_258:
        __break(1u);
LABEL_259:
        __break(1u);
LABEL_260:
        __break(1u);
        goto LABEL_261;
      }

      v48 = 0;
      v49 = v45;
      v50 = v44;
      v51 = a3;
      while ((v48 & 0x8000000000000000) == 0)
      {
        v52 = v49-- < 1;
        if (v52)
        {
          break;
        }

        if (*v44 - 58 > 0xFFFFFFF5)
        {
          ++v44;
          ++v50;
          ++v48;
          if (v44 < v47)
          {
            continue;
          }
        }

        goto LABEL_97;
      }

LABEL_277:
      __break(1u);
LABEL_278:
      v35 = 0x8000000181481B40;
      v81 = a6;
LABEL_122:
      v36 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v81, a3, a4);
      v38 = v82;
      v40 = v83;
      v41 = v32;
LABEL_254:
      lazy protocol witness table accessor for type JSONError and conformance JSONError();
      swift_allocError();
      v43 = 0xD000000000000013;
      goto LABEL_59;
    }

    v25 = v9;
    goto LABEL_46;
  }

  if (!a2)
  {
    __break(1u);
    goto LABEL_280;
  }

  v10 = _sSV13loadUnaligned14fromByteOffset2asxSi_xmtlFs5UInt8V_Tt1g5(0, a1);
  if (v10 == 48)
  {
    if (v8 >= 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = v8;
    }

    v12 = v9 + v11;
    v13 = v8 - v11;
    if (!specialized Collection.isEmpty.getter(v9 + v11, v8 - v11))
    {
      v14 = _sSV13loadUnaligned14fromByteOffset2asxSi_xmtlFs5UInt8V_Tt1g5(0, v12);
      v15 = v14;
      v16 = 0;
      if (v14 > 0x57u)
      {
        if (v14 == 120)
        {
          goto LABEL_12;
        }

        if (v14 != 101)
        {
          if (v14 == 88)
          {
LABEL_12:
            if (_sSLsE2leoiySbx_xtFZ10Foundation15BufferViewIndexVys5UInt8VG_Tt1g5(v12 + 1, v9 + v8))
            {
              v17 = _sSV13loadUnaligned14fromByteOffset2asxSi_xmtlFs5UInt8V_Tt1g5(0, v12 + 1);
              if (UInt8.isValidHexDigit.getter(v17))
              {
                goto LABEL_14;
              }

              v36 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v12 + 1, a3, a4);
              v38 = v137;
              v40 = v138;
              v8 = v17;
              goto LABEL_136;
            }

            if (v13 >= 1)
            {
              v30 = _sSV13loadUnaligned14fromByteOffset2asxSi_xmtlFs5UInt8V_Tt1g5(0, v12);
              v31 = v12;
              goto LABEL_135;
            }

LABEL_294:
            __break(1u);
            return;
          }

          goto LABEL_86;
        }

LABEL_149:
        v25 = v9;
        goto LABEL_150;
      }

      v25 = v9;
      if (v14 != 46 && v14 != 69)
      {
LABEL_86:
        v26 = _sSXsE2teoiySbx_5BoundQztFZSNys5UInt8VG_Tt1g5(14640, v14);
        v27 = v12;
        goto LABEL_87;
      }

      while (1)
      {
LABEL_150:
        v109 = v9 + v8 - 1;
        v110 = _sSV13loadUnaligned14fromByteOffset2asxSi_xmtlFs5UInt8V_Tt1g5(0, v109);
        if ((v110 | 0x20) == 0x65)
        {
          v111 = v110;
          if (!_sSLsE2leoiySbx_xtFZ10Foundation15BufferViewIndexVys5UInt8VG_Tt1g5(a3, v9 + v8 - 1))
          {
            goto LABEL_281;
          }

          if (!_sSLsE2leoiySbx_xtFZ10Foundation15BufferViewIndexVys5UInt8VG_Tt1g5(v9 + v8 - 1, a3 + a4))
          {
            goto LABEL_282;
          }

          v112 = specialized min<A>(_:_:)(v9 + v8, a3 + a4);
          v9 = 1;
          if (v112 <= a3)
          {
            v8 = 0;
            v113 = 1;
LABEL_209:
            lazy protocol witness table accessor for type JSONError and conformance JSONError();
            swift_allocError();
            *v129 = 0xD000000000000010;
            *(v129 + 8) = 0x8000000181481B20;
            *(v129 + 16) = v111;
            *(v129 + 24) = v113;
            *(v129 + 32) = v8;
            *(v129 + 40) = v109 - a3;
            *(v129 + 48) = 1;
            goto LABEL_210;
          }

          v113 = 1;
          v114 = a3;
LABEL_155:
          while (1)
          {
            v115 = 0;
            v116 = 0;
            v117 = a4 + a3 - v114;
            while (1)
            {
              if ((v114 - a3 + v116) < 0 || (v117 + v115) < 1)
              {
                goto LABEL_259;
              }

              v118 = *(v114 + v116);
              if (v118 == 10)
              {
                v78 = __OFADD__(v113++, 1);
                if (v78)
                {
                  goto LABEL_284;
                }

                v114 += v116 + 1;
                if (v114 >= v112)
                {
                  goto LABEL_173;
                }

                goto LABEL_155;
              }

              if (v118 == 13)
              {
                break;
              }

              v8 = v116 + 1;
              if (__OFADD__(v116, 1))
              {
                goto LABEL_260;
              }

              ++v116;
              --v115;
              if (v114 + v116 >= v112)
              {
                goto LABEL_209;
              }
            }

            v119 = v114 + v116;
            if (v109 < v114 + v116 + 1)
            {
              goto LABEL_168;
            }

            if (((v114 - a3 + v116 + 1) & 0x8000000000000000) != 0 || (~v116 + v117) < 1)
            {
              goto LABEL_290;
            }

            if (*(v119 + 1) == 10)
            {
              v119 = v114 + v116 + 1;
            }

LABEL_168:
            v78 = __OFADD__(v113++, 1);
            if (v78)
            {
              goto LABEL_285;
            }

            v114 = v119 + 1;
            if (v119 + 1 >= v112)
            {
LABEL_173:
              v8 = 0;
              goto LABEL_209;
            }
          }
        }

        closure #1 in Float.init(prevalidatedBuffer:)(v9, v8, &v162);
        if ((v162 & 0x100000000) == 0)
        {
          break;
        }

        v120 = specialized BufferView.suffix(from:)(v25, v9, v8);
        if (v121 < 1)
        {
          goto LABEL_286;
        }

        v9 = v120;
        v8 = v121;
        v122 = v120 + v121;
        v123 = _sSV13loadUnaligned14fromByteOffset2asxSi_xmtlFs5UInt8V_Tt1g5(0, v120);
        if (v123 == 45 || (v124 = v9, v123 == 43))
        {
          v124 = (v9 + 1);
        }

        if (v122 < v124)
        {
          goto LABEL_287;
        }

        a6 = &v124[-v9];
        if (&v124[-v9] < 0)
        {
          goto LABEL_288;
        }

        v32 = v122 - v124;
        if ((v122 - v124) < 0)
        {
          goto LABEL_289;
        }

        if (v32 >= 2)
        {
          v125 = 2;
        }

        else
        {
          v125 = v122 - v124;
        }

        if (!_stringshims_strncasecmp_clocale(v124, "0x", v125))
        {
          v133 = v124 + 2;
          if ((v122 - (v124 + 2)) < 1 || v133 >= v122 || (&v133[-v9] & 0x8000000000000000) != 0)
          {
LABEL_234:
            __break(1u);
          }

          else
          {
            v134 = v8 + v9 - v124 - 3;
            v135 = a6 + 3;
            v124 += 2;
            while (1)
            {
              v136 = v135;
              if (!UInt8.isValidHexDigit.getter(*v124))
              {
                break;
              }

              v52 = v134-- < 1;
              if (!v52 && ++v124 < v122)
              {
                v135 = v136 + 1;
                if ((v136 & 0x8000000000000000) == 0)
                {
                  continue;
                }
              }

              goto LABEL_234;
            }
          }

          LOBYTE(v9) = _sSV13loadUnaligned14fromByteOffset2asxSi_xmtlFs5UInt8V_Tt1g5(0, v124);
          v128 = 0xED00007265626D75;
          v25 = 0x6E20786568206E69;
LABEL_256:
          v150 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v124, a3, a4);
          v152 = v151;
          v154 = v153;
          lazy protocol witness table accessor for type JSONError and conformance JSONError();
          swift_allocError();
          *v42 = v25;
          *(v42 + 8) = v128;
          *(v42 + 16) = v9;
          *(v42 + 24) = v150;
          *(v42 + 32) = v152;
          *(v42 + 40) = v154;
          goto LABEL_138;
        }

        if (v124 >= v122)
        {
LABEL_271:
          __break(1u);
LABEL_272:
          __break(1u);
        }

        else
        {
          v126 = 0;
          v127 = 0;
          v25 = 0x65626D756E206E69;
          while ((a6 & 0x8000000000000000) == 0 && v32 >= 1)
          {
            v9 = *v124;
            if ((v9 - 58) > 0xF5u)
            {
              v78 = __OFADD__(v127++, 1);
              if (v78)
              {
                __break(1u);
                goto LABEL_277;
              }
            }

            else
            {
              v128 = 0xE900000000000072;
              if (*v124 <= 0x2Du)
              {
                if (v9 != 43 && v9 != 45 || v127 || v126 != 2)
                {
                  goto LABEL_256;
                }

                v127 = 0;
                v126 = 3;
              }

              else if (v9 == 101 || v9 == 69)
              {
                if (v126 != 1 && (v126 || v127 <= 0))
                {
                  goto LABEL_256;
                }

                v127 = 0;
                v126 = 2;
              }

              else
              {
                if (v9 != 46)
                {
                  goto LABEL_256;
                }

                if (v126)
                {
                  LOBYTE(v9) = 46;
                  goto LABEL_256;
                }

                v127 = 0;
                v126 = 1;
              }
            }

            ++v124;
            ++a6;
            if (!--v32)
            {
              goto LABEL_271;
            }
          }
        }

        __break(1u);
LABEL_274:
        LOBYTE(v32) = _sSV13loadUnaligned14fromByteOffset2asxSi_xmtlFs5UInt8V_Tt1g5(0, a6);
        if (!_sSXsE2teoiySbx_5BoundQztFZSNys5UInt8VG_Tt1g5(14640, v32))
        {
          goto LABEL_278;
        }

LABEL_275:
        v16 = 0;
      }

      if ((~v162 & 0x7F800000) == 0)
      {
        if ((v16 & 1) == 0)
        {
          goto LABEL_251;
        }

        return;
      }

      if (*&v162 != 0.0)
      {
        return;
      }

      v53 = v8;
      v54 = v9;
      if (v8 >= 4)
      {
        v53 = v8;
        v54 = v9;
        while (1)
        {
          v139 = *v54;
          if ((v139 - 58) > 0xFFFFFFF6)
          {
            goto LABEL_251;
          }

          if ((v139 | 0x20) == 0x65)
          {
            return;
          }

          v140 = v54[1];
          if ((v140 - 58) > 0xFFFFFFF6)
          {
            goto LABEL_251;
          }

          if ((v140 | 0x20) == 0x65)
          {
            return;
          }

          v141 = v54[2];
          if ((v141 - 58) > 0xFFFFFFF6)
          {
            goto LABEL_251;
          }

          if ((v141 | 0x20) == 0x65)
          {
            return;
          }

          v142 = v54[3];
          if ((v142 - 58) > 0xFFFFFFF6)
          {
            goto LABEL_251;
          }

          if ((v142 | 0x20) == 0x65)
          {
            return;
          }

          v54 += 4;
          v53 -= 4;
          if (v53 < 4)
          {
            goto LABEL_217;
          }
        }
      }

      goto LABEL_217;
    }

LABEL_148:
    v16 = 0;
    goto LABEL_149;
  }

  if ((v10 - 58) >= 0xF7u)
  {
    goto LABEL_148;
  }

  if (v10 > 0x2Du)
  {
    switch(v10)
    {
      case 'I':
        if (v8 <= 7 || strncmp(v9, "Infinity", 8uLL))
        {
          goto LABEL_128;
        }

        goto LABEL_252;
      case 'N':
        if (v8 < 3 || *v9 != 78 || *(v9 + 1) != 97 || *(v9 + 2) != 78)
        {
LABEL_128:
          v162 = 0;
          v163 = 0xE000000000000000;
          MEMORY[0x1865CCB90](0, 0xE000000000000000);
          specialized DefaultStringInterpolation.appendInterpolation<A>(_:)();
          MEMORY[0x1865CCB90](0, 0xE000000000000000);
          v87 = 0;
          v88 = 0xE000000000000000;
          v89 = v9;
LABEL_129:
          v90 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v89, a3, a4);
          v92 = v91;
          v94 = v93;
          lazy protocol witness table accessor for type JSONError and conformance JSONError();
          swift_allocError();
          *v42 = v87;
          *(v42 + 8) = v88;
          *(v42 + 16) = v90;
          *(v42 + 24) = v92;
          *(v42 + 32) = v94;
          *(v42 + 40) = 0;
          v67 = 5;
          goto LABEL_139;
        }

LABEL_252:
        v16 = 1;
        goto LABEL_149;
      case '.':
        v95 = specialized BufferView.dropFirst(_:)(1, v9, v8);
        if (specialized Collection.isEmpty.getter(v95, v96))
        {
          v97 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v95, a3, a4);
          v99 = v98;
          v101 = v100;
          lazy protocol witness table accessor for type JSONError and conformance JSONError();
          swift_allocError();
          *v102 = 0;
          *(v102 + 8) = 0;
          *(v102 + 16) = 46;
          *(v102 + 24) = v97;
          *(v102 + 32) = v99;
          *(v102 + 40) = v101;
          *(v102 + 48) = 1;
LABEL_210:
          swift_willThrow();
          return;
        }

        v108 = _sSV13loadUnaligned14fromByteOffset2asxSi_xmtlFs5UInt8V_Tt1g5(0, v95);
        if (_sSXsE2teoiySbx_5BoundQztFZSNys5UInt8VG_Tt1g5(14640, v108))
        {
          goto LABEL_148;
        }

        v35 = 0x8000000181481B40;
        v36 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v95, a3, a4);
        v38 = v148;
        v40 = v149;
        v41 = v108;
        goto LABEL_254;
    }

LABEL_293:
    __break(1u);
    goto LABEL_294;
  }

  if (v10 != 43 && v10 != 45)
  {
    goto LABEL_293;
  }

  if (v8 < 2)
  {
    if (v8 == 1)
    {
      v84 = _sSV13loadUnaligned14fromByteOffset2asxSi_xmtlFs5UInt8V_Tt1g5(0, v9);
      v35 = 0x8000000181481B20;
      v36 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(v9, a3, a4);
      v38 = v85;
      v40 = v86;
      v41 = v84;
      goto LABEL_58;
    }

LABEL_292:
    __break(1u);
    goto LABEL_293;
  }

  v25 = v9 + 1;
  v68 = _sSV13loadUnaligned14fromByteOffset2asxSi_xmtlFs5UInt8V_Tt1g5(0, v9 + 1);
  if (v68 != 48)
  {
    if ((v68 - 58) > 0xF6u)
    {
      goto LABEL_275;
    }

    if (v68 != 46)
    {
      if (v68 != 78)
      {
        if (v68 != 73)
        {
          v162 = 0;
          v163 = 0xE000000000000000;
          _StringGuts.grow(_:)(20);
          MEMORY[0x1865CCB90](0x27207265746661, 0xE700000000000000);
          _sSV13loadUnaligned14fromByteOffset2asxSi_xmtlFs5UInt8V_Tt1g5(0, v9);
          v160 = static String._uncheckedFromUTF8(_:)();
          specialized DefaultStringInterpolation.appendInterpolation<A>(_:)(v160);
        }

        v105 = specialized BufferView.dropFirst(_:)(1, v9, v8);
        v106 = v105;
        if (v107 <= 7 || strncmp(v105, "Infinity", 8uLL))
        {
          v162 = 0;
          v163 = 0xE000000000000000;
          MEMORY[0x1865CCB90](0, 0xE000000000000000);
LABEL_270:
          specialized DefaultStringInterpolation.appendInterpolation<A>(_:)();
          MEMORY[0x1865CCB90](0, 0xE000000000000000);
          v87 = v162;
          v88 = v163;
          v89 = v106;
          goto LABEL_129;
        }

        goto LABEL_265;
      }

LABEL_261:
      v155 = specialized BufferView.dropFirst(_:)(1, v9, v8);
      v106 = v155;
      if (v156 <= 2 || *v155 != 78 || v155[1] != 97 || v155[2] != 78)
      {
        v162 = 0;
        v163 = 0xE000000000000000;
        MEMORY[0x1865CCB90](0, 0xE000000000000000);
        goto LABEL_270;
      }

LABEL_265:
      v16 = 1;
      goto LABEL_150;
    }

    a6 = specialized BufferView.dropFirst(_:)(2, v9, v8);
    if (!specialized Collection.isEmpty.getter(a6, v157))
    {
      goto LABEL_274;
    }

    v36 = specialized static JSONError.SourceLocation.sourceLocation(at:fullSource:)(a6, a3, a4);
    v38 = v158;
    v40 = v159;
    lazy protocol witness table accessor for type JSONError and conformance JSONError();
    swift_allocError();
    *v42 = 0;
    *(v42 + 8) = 0;
    v61 = 46;
LABEL_83:
    *(v42 + 16) = v61;
    goto LABEL_137;
  }

  v69 = specialized BufferView.dropFirst(_:)(2, v9, v8);
  v71 = specialized static JSON5Scanner.validateLeadingZero(in:zero:fullSource:)(v69, v70, (v9 + 1), a3, a4);
  if (v6)
  {
    return;
  }

  v25 = v71;
  if ((v72 & 1) == 0)
  {
    goto LABEL_275;
  }

LABEL_14:
  if (*v9 == 45)
  {
    v18 = specialized _parseJSON5Integer<A>(_:isHex:)(v9, v8, 1, specialized _parseHexIntegerDigits<A>(_:isNegative:), specialized _parseIntegerDigits<A>(_:isNegative:));
    if ((v19 & 1) != 0 || (_sSf7exactlySfSgx_tcSzRzlufCs5Int64V_Tt0g5(v18) & 0x100000000) != 0)
    {
      goto LABEL_251;
    }
  }

  else
  {
    v143 = specialized _parseJSON5Integer<A>(_:isHex:)(v9, v8, 1, specialized _parseHexIntegerDigits<A>(_:isNegative:), specialized _parseIntegerDigits<A>(_:isNegative:));
    if ((v144 & 1) != 0 || (_sSf7exactlySfSgx_tcSzRzlufCs6UInt64V_Tt0g5(v143) & 0x100000000) != 0)
    {
      goto LABEL_251;
    }
  }
}