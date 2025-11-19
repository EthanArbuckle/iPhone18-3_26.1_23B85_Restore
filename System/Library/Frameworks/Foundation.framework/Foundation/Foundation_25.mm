unint64_t specialized skipWhiteSpaces #1 <A>(from:) in static NSDecimal._decimal<A>(from:decimalSeparator:matchEntireString:)(unint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a1;
  if ((a3 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v5 = 4 * v4;
  if (4 * v4 == a1 >> 14)
  {
    return v3;
  }

  v9 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v17 = a3 & 0xFFFFFFFFFFFFFFLL;
  v11 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
  while (1)
  {
    result = v3;
    if ((v3 & 0xC) == v10)
    {
      result = _StringGuts._slowEnsureMatchingEncoding(_:)(v3, a2, a3);
    }

    v12 = result >> 16;
    if (result >> 16 >= v4)
    {
      break;
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      v14 = String.UTF8View._foreignSubscript(position:)();
    }

    else if ((a3 & 0x2000000000000000) != 0)
    {
      v18[0] = a2;
      v18[1] = v17;
      v14 = *(v18 + v12);
    }

    else
    {
      v13 = v11;
      if ((a2 & 0x1000000000000000) == 0)
      {
        v13 = _StringObject.sharedUTF8.getter();
      }

      v14 = *(v13 + v12);
    }

    v15 = (((v14 & 0x3F) << 8) | (v14 >> 6)) + 33217;
    if ((v14 & 0x80) == 0)
    {
      v15 = (v14 + 1);
    }

    v18[0] = (v15 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v15) >> 3))));
    static String._uncheckedFromUTF8(_:)();
    v16 = Character.isWhitespace.getter();

    if ((v16 & 1) == 0)
    {
      return v3;
    }

    if ((v3 & 0xC) == v10)
    {
      result = _StringGuts._slowEnsureMatchingEncoding(_:)(v3, a2, a3);
      v3 = result;
      if ((a3 & 0x1000000000000000) == 0)
      {
        goto LABEL_9;
      }

LABEL_24:
      if (v4 <= v3 >> 16)
      {
        goto LABEL_31;
      }

      v3 = String.UTF8View._foreignIndex(after:)();
      if (v5 == v3 >> 14)
      {
        return v3;
      }
    }

    else
    {
      if ((a3 & 0x1000000000000000) != 0)
      {
        goto LABEL_24;
      }

LABEL_9:
      v3 = (v3 & 0xFFFFFFFFFFFF0000) + 65540;
      if (v5 == v3 >> 14)
      {
        return v3;
      }
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

BOOL NSDecimal.isNaN.getter(unint64_t a1, unint64_t a2, unsigned int a3)
{
  v3 = a3;
  v4 = a2;
  v5 = a1;
  v13 = a1;
  v6 = HIDWORD(a1);
  v7 = HIWORD(a1);
  v8 = a2 >> 16;
  v14 = a2;
  v9 = HIDWORD(a2);
  v10 = HIWORD(a2);
  v11 = HIWORD(a3);
  v15 = a3;
  if (_So9NSDecimala__length_getter(&v13))
  {
    return 0;
  }

  LODWORD(v13) = v5;
  WORD2(v13) = v6;
  HIWORD(v13) = v7;
  LOWORD(v14) = v4;
  WORD1(v14) = v8;
  WORD2(v14) = v9;
  HIWORD(v14) = v10;
  LOWORD(v15) = v3;
  HIWORD(v15) = v11;
  return _So9NSDecimala__isNegative_getter(&v13) != 0;
}

id @objc _NSFileManagerBridge.homeDirectoryForCurrentUser.getter(void *a1, uint64_t a2, void (*a3)(void *__return_ptr))
{
  v4 = a1;
  a3(v9);

  v5 = v9[1];
  ObjectType = swift_getObjectType();
  v7 = (*(v5 + 432))(ObjectType, v5);
  swift_unknownObjectRelease();

  return v7;
}

uint64_t _FileManagerImpl.homeDirectoryForCurrentUser.getter@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1();
  v5 = v4;
  if (one-time initialization token for compatibility2 != -1)
  {
    swift_once();
  }

  if (static URL.compatibility2 == 1 || (_foundation_swift_url_feature_enabled() & 1) == 0)
  {
    v6 = type metadata accessor for _BridgedURL();
    v7 = &protocol witness table for _BridgedURL;
  }

  else
  {
    v6 = type metadata accessor for _SwiftURL();
    v7 = &protocol witness table for _SwiftURL;
  }

  v13 = 0;
  v12[0] = 0;
  v12[1] = 0;
  (v7[9])(v3, v5, &v13, v12);
  v8 = (v7[56])(v6, v7);
  v10 = v9;
  result = swift_unknownObjectRelease();
  *a2 = v8;
  a2[1] = v10;
  return result;
}

uint64_t specialized closure #1 in static Set._forceBridgeFromObjectiveC(_:result:)(uint64_t a1)
{
  outlined init with copy of Any(a1, v4);
  swift_dynamicCast();
  specialized Set._Variant.insert(_:)(&v5, v2, v3);
}

void *URL.resolvingSymlinksInPath()@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  ObjectType = swift_getObjectType();
  result = (*(v3 + 408))(v8, ObjectType, v3);
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

uint64_t Locale.regionCode.getter()
{
  v1 = *(v0 + 8);
  ObjectType = swift_getObjectType();
  result = (*(v1 + 176))(ObjectType, v1);
  if (v4)
  {
    v5 = HIBYTE(v4) & 0xF;
    if ((v4 & 0x2000000000000000) == 0)
    {
      v5 = result & 0xFFFFFFFFFFFFLL;
    }

    if (!v5)
    {

      return 0;
    }
  }

  return result;
}

uint64_t specialized _LocaleProtocol.regionCode.getter()
{
  v1 = *(v0 + 200);
  os_unfair_lock_lock((v1 + 536));
  partial apply for closure #1 in _LocaleICU.region.getter((v1 + 16), &v5);
  os_unfair_lock_unlock((v1 + 536));
  object = v5._object;
  if (!v5._object)
  {
    return 0;
  }

  countAndFlagsBits = v5._countAndFlagsBits;

  outlined consume of Locale.LanguageCode?(countAndFlagsBits, object);
  return countAndFlagsBits;
}

unint64_t lazy protocol witness table accessor for type IndexPath and conformance IndexPath()
{
  result = lazy protocol witness table cache variable for type IndexPath and conformance IndexPath;
  if (!lazy protocol witness table cache variable for type IndexPath and conformance IndexPath)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IndexPath and conformance IndexPath);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IndexPath and conformance IndexPath;
  if (!lazy protocol witness table cache variable for type IndexPath and conformance IndexPath)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IndexPath and conformance IndexPath);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IndexPath and conformance IndexPath;
  if (!lazy protocol witness table cache variable for type IndexPath and conformance IndexPath)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IndexPath and conformance IndexPath);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IndexPath and conformance IndexPath;
  if (!lazy protocol witness table cache variable for type IndexPath and conformance IndexPath)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IndexPath and conformance IndexPath);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IndexPath and conformance IndexPath;
  if (!lazy protocol witness table cache variable for type IndexPath and conformance IndexPath)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IndexPath and conformance IndexPath);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IndexPath and conformance IndexPath;
  if (!lazy protocol witness table cache variable for type IndexPath and conformance IndexPath)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IndexPath and conformance IndexPath);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IndexPath and conformance IndexPath;
  if (!lazy protocol witness table cache variable for type IndexPath and conformance IndexPath)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IndexPath and conformance IndexPath);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IndexPath and conformance IndexPath;
  if (!lazy protocol witness table cache variable for type IndexPath and conformance IndexPath)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IndexPath and conformance IndexPath);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IndexPath and conformance IndexPath;
  if (!lazy protocol witness table cache variable for type IndexPath and conformance IndexPath)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IndexPath and conformance IndexPath);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IndexPath and conformance IndexPath;
  if (!lazy protocol witness table cache variable for type IndexPath and conformance IndexPath)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IndexPath and conformance IndexPath);
  }

  return result;
}

NSString *__NSLocalizedFileSizeDescription(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (a3 & 0x70000000 | a1)
  {
    if (a3)
    {
      v8 = a3;
    }

    else
    {
      v8 = 0xFFFF;
    }

    if ((a3 & 0x180000) != 0 && (a3 & 0x40000) == 0)
    {
      v10 = 1024;
    }

    else
    {
      v10 = 1000;
    }

    v11 = [&unk_1EEF59F90 count];
    v12 = v11 - 1;
    if (v11 == 1)
    {
      v16 = v10;
LABEL_37:
      v19 = v12;
    }

    else
    {
      v34 = a4;
      v13 = 0;
      if (a1 >= 0)
      {
        v14 = a1;
      }

      else
      {
        v14 = -a1;
      }

      v15 = v14;
      v16 = v10;
      if (a2)
      {
        v17 = a2;
      }

      else
      {
        v17 = v10;
      }

      v18 = v17;
      v19 = 0x7FFFFFFFFFFFFFFFLL;
      do
      {
        if ((v8 & (1 << v13)) != 0)
        {
          v19 = v13;
        }

        v20 = pow(v16, v13);
        v21 = v15 / v20;
        if ((a3 & 0x400000) != 0)
        {
          v22 = 0.0;
          if (v21 >= 1.0e-20 && v21 < 100.0)
          {
            v22 = (2 - vcvtmd_s64_f64(log10(v21)));
          }
        }

        else
        {
          LOBYTE(v20) = numberOfFractionDigits[v13];
          v22 = *&v20;
        }

        v24 = __exp10(v22);
        if (v19 != 0x7FFFFFFFFFFFFFFFLL && fabs(round(v21 * v24) / v24) < v18)
        {
          a4 = v34;
          goto LABEL_39;
        }

        ++v13;
      }

      while (v12 != v13);
      a4 = v34;
      if (v19 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_37;
      }
    }

LABEL_39:
    v27 = pow(v16, v19);
    v28 = a1 / v27;
    v29 = -v28;
    if (a1 >= 0)
    {
      v29 = a1 / v27;
    }

    if (v29 >= 1.0e15)
    {
      v30 = [NSNumber numberWithLongLong:a1 / v27];
    }

    else
    {
      v30 = [NSNumber numberWithDouble:v28, v27, v29];
    }

    v31 = v30;
    v32 = [NSNumber numberWithLongLong:a1];

    return __NSLocalizedFileSizeDescriptionFormatNumber(v31, v19, v32, a3, a4);
  }

  else
  {
    v25 = _NSFoundationBundle();
    if (a3)
    {
      v26 = @"Zero bytes";
    }

    else
    {
      v26 = @"Zero KB";
    }

    return [v25 localizedStringForKey:v26 value:&stru_1EEEFDF90 table:@"FileSizeFormatting"];
  }
}

NSString *__NSLocalizedFileSizeDescriptionFormatNumber(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x10000) != 0)
  {
    v9 = 3;
  }

  else
  {
    v9 = 6;
  }

  if ((a4 & 0x40000000) != 0)
  {
    v12 = 0;
    if ((a4 & 0x20000000) != 0)
    {
      return v12;
    }
  }

  else
  {
    if (a2)
    {
      if ((a4 & 0x400000) != 0)
      {
        [a1 doubleValue];
        v17 = fabs(v16);
        if (v17 >= 1.0e-20 && v17 < 100.0)
        {
          v11 = 2 - vcvtmd_s64_f64(log10(v17));
        }

        else
        {
          v11 = 0;
        }
      }

      else
      {
        v11 = numberOfFractionDigits[a2];
      }

      v15 = (a4 >> 24) & 1;
      v13 = v9;
      v14 = a5;
    }

    else
    {
      v11 = 0;
      v13 = v9;
      v14 = a5;
      LODWORD(v15) = 0;
    }

    v12 = [(NSNumberFormatter *)fileSizeFormatter(v11 stringForObjectValue:v13, v14, v15), "stringForObjectValue:", a1];
    if ((a4 & 0x20000000) != 0)
    {
      return v12;
    }
  }

  [a1 doubleValue];
  if (fabs(v19) == 1.0)
  {
    v20 = [objc_msgSend(&unk_1EEF59F90 objectAtIndex:{a2), "stringByAppendingString:", @" Singular"}];
    v21 = _NSFoundationBundle();
    v22 = v20;
  }

  else
  {
    v23 = _NSFoundationBundle();
    v22 = [&unk_1EEF59F90 objectAtIndex:a2];
    v21 = v23;
  }

  v24 = [v21 localizedStringForKey:v22 value:&stru_1EEEFDF90 table:@"FileSizeFormatting"];
  v25 = v24;
  if ((a4 & 0x40000000) != 0)
  {
    return v24;
  }

  if (!a2 || (a4 & 0x4000000) == 0)
  {
    return +[NSString stringWithFormat:](NSString, "stringWithFormat:", [_NSFoundationBundle() localizedStringForKey:@"%@ %@" value:&stru_1EEEFDF90 table:@"FileSizeFormatting"], v12, v24, v28);
  }

  v26 = [(NSNumberFormatter *)fileSizeFormatter(0 stringForObjectValue:v9, 1, 0), "stringForObjectValue:", a3];
  return +[NSString stringWithFormat:](NSString, "stringWithFormat:", [_NSFoundationBundle() localizedStringForKey:@"%@ %@ (%@ bytes)" value:&stru_1EEEFDF90 table:@"FileSizeFormatting"], v12, v25, v26);
}

NSNumberFormatter *fileSizeFormatter(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (!fileSizeFormatter_numberFormatterCache)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    v9 = 0;
    atomic_compare_exchange_strong(&fileSizeFormatter_numberFormatterCache, &v9, v8);
    if (v9)
    {
    }
  }

  if (a4)
  {
    v10 = 1000000;
  }

  else
  {
    v10 = 0;
  }

  v11 = [NSNumber numberWithInteger:a1 + 1000 * a2 + v10 + 100000000 * a3 + 1];
  result = [fileSizeFormatter_numberFormatterCache objectForKey:v11];
  if (!result)
  {
    v13 = objc_alloc_init(NSNumberFormatter);
    [(NSNumberFormatter *)v13 setFormatterBehavior:1040];
    [(NSNumberFormatter *)v13 setNumberStyle:1];
    if (a3)
    {
      [(NSNumberFormatter *)v13 setFormattingContext:a3];
    }

    if (a1 < 0)
    {
      [(NSNumberFormatter *)v13 setMinimumSignificantDigits:3];
      [(NSNumberFormatter *)v13 setUsesSignificantDigits:1];
    }

    else
    {
      [(NSNumberFormatter *)v13 setMaximumFractionDigits:a1];
      if (a4)
      {
        [(NSNumberFormatter *)v13 setMinimumFractionDigits:a1];
      }
    }

    -[NSNumberFormatter setLocale:](v13, "setLocale:", [MEMORY[0x1E695DF58] currentLocale]);
    [(NSNumberFormatter *)v13 setUsesGroupingSeparator:1];
    [(NSNumberFormatter *)v13 setRoundingMode:a2];
    [fileSizeFormatter_numberFormatterCache setObject:v13 forKey:v11];

    return v13;
  }

  return result;
}

void _initUbiquityIdentityDidChange()
{
  v3 = *MEMORY[0x1E69E9840];
  v0 = +[NSFileManager defaultManager];
  if (([(NSFileManager *)v0 _processHasUbiquityContainerEntitlement]|| [(NSFileManager *)v0 _processUsesCloudServices]) && [(NSFileManager *)v0 _processCanAccessUbiquityIdentityToken])
  {
    if (qword_1ED43F3C8 != -1)
    {

      dispatch_once(&qword_1ED43F3C8, &__block_literal_global_666);
    }
  }

  else
  {
    v1 = _NSOSLog();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
    {
      *v2 = 0;
      _os_log_impl(&dword_18075C000, v1, OS_LOG_TYPE_INFO, "Registering for NSUbiquityIdentityDidChangeNotification without the necessary entitlements", v2, 2u);
    }
  }
}

void ___initializeLibrarianFunctions_block_invoke()
{
  if (qword_1ED43F308 != -1)
  {
    dispatch_once(&qword_1ED43F308, &__block_literal_global_10);
  }

  v0 = qword_1ED43F300;
  if (qword_1ED43F300)
  {
    off_1ED43F348 = dlsym(qword_1ED43F300, "LBEvictItemAtURL");
    off_1ED43F330 = dlsym(v0, "LBStartSyncForItem");
    off_1ED43F338 = dlsym(v0, "LBSetSyncEnabledForItem");
    off_1ED43F358 = dlsym(v0, "LBGetURLForPublishedItem");
    off_1ED43F350 = dlsym(v0, "LBGetMobileContainerForID");
    off_1ED43F378 = dlsym(v0, "LBCopyUbiquityAccountToken");
    off_1ED43F3D0 = dlsym(v0, "LBRefreshUbiquityAccountToken");
    off_1ED43F368 = dlsym(v0, "LBCurrentProcessHasUbiquityContainer");
  }
}

void *static URLRequest._unconditionallyBridgeFromObjectiveC(_:)@<X0>(void *result@<X0>, uint64_t *a2@<X8>)
{
  if (result)
  {
    [result mutableCopy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSMutableURLRequest);
    swift_dynamicCast();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14_MutableHandleCySo19NSMutableURLRequestCGMd);
    v3 = swift_allocObject();
    [v5 copy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();

    result = swift_dynamicCast();
    *(v3 + 16) = v4;
    *a2 = v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t URL.lastPathComponent.getter()
{
  v1 = *(v0 + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 320))(ObjectType, v1);
}

uint64_t JSONEncoder.outputFormatting.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 136);

  os_unfair_lock_lock(v3 + 4);

  *(v1 + 16) = v2;
  v4 = *(v1 + 136);

  os_unfair_lock_unlock(v4 + 4);
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC10Foundation16AttributedStringV5IndexV_Tt1g5Tm(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a2 <= a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = a2;
  }

  if (!v3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v5 = swift_allocObject();
  v6 = _swift_stdlib_malloc_size(v5);
  result = v5;
  v8 = ((v6 - 32) * 0x6666666666666667) >> 64;
  v5[2] = a1;
  v5[3] = 2 * ((v8 >> 4) + (v8 >> 63));
  return result;
}

void *specialized Sequence._copyContents(initializing:)(void *result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1 << *(a4 + 32);
  if (-v5 < 64)
  {
    v6 = ~(-1 << -v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v9 = 0;
    a3 = 0;
LABEL_24:
    *result = a4;
    result[1] = v4;
    result[2] = ~v5;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = a2;
    v26 = result;
    v27 = a3;
    result = 0;
    v9 = 0;
    v25 = -1 << *(a4 + 32);
    v10 = (63 - v5) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_14:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v15 = v14 | (v9 << 6);
      v16 = a4;
      v17 = (*(a4 + 48) + 16 * v15);
      v18 = v17[1];
      v19 = *(a4 + 56) + 24 * v15;
      v20 = *v19;
      v21 = *(v19 + 8);
      v22 = *(v19 + 16);
      *v8 = *v17;
      *(v8 + 8) = v18;
      *(v8 + 16) = v20;
      *(v8 + 24) = v21;
      *(v8 + 32) = v22;
      if (v11 == v27)
      {

        outlined copy of JSONEncoderValue(v20, v21, v22);
        a4 = v16;
        v5 = v25;
        result = v26;
        a3 = v27;
        goto LABEL_24;
      }

      v8 += 40;

      outlined copy of JSONEncoderValue(v20, v21, v22);
      result = v11;
      v23 = __OFADD__(v11++, 1);
      a4 = v16;
      if (v23)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_27;
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
        goto LABEL_14;
      }
    }

    v7 = 0;
    if (v10 <= v9 + 1)
    {
      v24 = v9 + 1;
    }

    else
    {
      v24 = v10;
    }

    v9 = v24 - 1;
    a3 = result;
    v5 = v25;
    result = v26;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

{
  v4 = a4 + 64;
  v5 = -1 << *(a4 + 32);
  if (-v5 < 64)
  {
    v6 = ~(-1 << -v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v9 = 0;
    a3 = 0;
LABEL_24:
    *result = a4;
    result[1] = v4;
    result[2] = ~v5;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = a2;
    v28 = result;
    v29 = a3;
    result = 0;
    v9 = 0;
    v27 = -1 << *(a4 + 32);
    v10 = (63 - v5) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_14:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v15 = a4;
      v16 = 24 * (v14 | (v9 << 6));
      v17 = *(a4 + 48) + v16;
      v18 = *v17;
      v19 = *(v17 + 8);
      v20 = *(v17 + 16);
      v21 = *(a4 + 56) + v16;
      v22 = *v21;
      v23 = *(v21 + 8);
      v24 = *(v21 + 16);
      *v8 = *v17;
      *(v8 + 8) = v19;
      *(v8 + 16) = v20;
      *(v8 + 24) = v22;
      *(v8 + 32) = v23;
      *(v8 + 40) = v24;
      if (v11 == v29)
      {
        outlined copy of _XMLPlistEncodingFormat.Reference(v18, v19, v20);
        outlined copy of _XMLPlistEncodingFormat.Reference(v22, v23, v24);
        a4 = v15;
        v5 = v27;
        result = v28;
        a3 = v29;
        goto LABEL_24;
      }

      v8 += 48;
      outlined copy of _XMLPlistEncodingFormat.Reference(v18, v19, v20);
      outlined copy of _XMLPlistEncodingFormat.Reference(v22, v23, v24);
      result = v11;
      v25 = __OFADD__(v11++, 1);
      a4 = v15;
      if (v25)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_27;
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
        goto LABEL_14;
      }
    }

    v7 = 0;
    if (v10 <= v9 + 1)
    {
      v26 = v9 + 1;
    }

    else
    {
      v26 = v10;
    }

    v9 = v26 - 1;
    a3 = result;
    v5 = v27;
    result = v28;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

{
  v4 = a4 + 64;
  v5 = -1 << *(a4 + 32);
  if (-v5 < 64)
  {
    v6 = ~(-1 << -v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v10 = 0;
    v8 = 0;
LABEL_25:
    *result = a4;
    result[1] = v4;
    result[2] = ~v5;
    result[3] = v10;
    result[4] = v7;
    return v8;
  }

  v8 = a3;
  if (!a3)
  {
    v10 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = a2;
    v26 = result;
    v27 = -1 << *(a4 + 32);
    result = 0;
    v10 = 0;
    v11 = (63 - v5) >> 6;
    v12 = 1;
    while (v7)
    {
LABEL_14:
      v15 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v16 = v15 | (v10 << 6);
      v17 = a4;
      v18 = (*(a4 + 48) + 16 * v16);
      v19 = *v18;
      v20 = v18[1];
      outlined init with copy of Hashable & Sendable(*(a4 + 56) + 40 * v16, &v29);
      *&v28 = v19;
      *(&v28 + 1) = v20;
      v21 = v31;
      v35 = v31;
      v22 = v30;
      v23 = v29;
      v33 = v29;
      v34 = v30;
      v32 = v28;
      *v9 = v28;
      *(v9 + 16) = v23;
      *(v9 + 32) = v22;
      *(v9 + 48) = v21;
      if (v12 == v8)
      {

        v5 = v27;
        a4 = v17;
        goto LABEL_23;
      }

      v9 += 56;

      result = v12;
      v24 = __OFADD__(v12++, 1);
      a4 = v17;
      if (v24)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v13 = v10;
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v14 >= v11)
      {
        break;
      }

      v7 = *(v4 + 8 * v14);
      ++v13;
      if (v7)
      {
        v10 = v14;
        goto LABEL_14;
      }
    }

    v7 = 0;
    if (v11 <= v10 + 1)
    {
      v25 = v10 + 1;
    }

    else
    {
      v25 = v11;
    }

    v10 = v25 - 1;
    v8 = result;
    v5 = v27;
LABEL_23:
    result = v26;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

Swift::Int specialized MutableCollection<>.sort(by:)(void **a1)
{
  v1 = a1;
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = v2[2];
  v23[0] = (v2 + 4);
  v23[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v21 = v1;
      v8 = v2 + 8;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          v13 = v12 + 1;
          result = specialized Sequence<>.lexicographicallyPrecedes<A>(_:)(*(v12 - 4), *(v12 - 3), v12[1], v12[2]);
          if ((result & 1) == 0)
          {
            break;
          }

          v14 = v12[1];
          v15 = v12[2];
          v16 = *(v12 + 40);
          v17 = *(v12 + 3);
          v18 = *(v12 - 1);
          *v13 = *(v12 - 2);
          *(v12 + 3) = v18;
          v19 = *v12;
          *(v12 - 4) = v14;
          *(v12 - 3) = v15;
          *(v12 - 1) = v17;
          *v12 = v16;
          v12 -= 5;
          v13[4] = v19;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 5;
        --v9;
      }

      v1 = v21;
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_10Foundation16JSONEncoderValueO5valuetMd);
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v22[0] = v7 + 32;
    v22[1] = v6;
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v22, v24, v23, v5);
    *(v7 + 16) = 0;
  }

  *v1 = v2;
  return result;
}

{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = v2[2];
  v10[0] = (v2 + 4);
  v10[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3)
    {
      result = specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v3, 1, v10);
    }
  }

  else
  {
    v5 = result;
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_SE_p5valuetMd);
      v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v6 + 16) = v3 >> 1;
    }

    else
    {
      v6 = MEMORY[0x1E69E7CC0];
    }

    v8[0] = v6 + 32;
    v8[1] = v3 >> 1;
    v7 = v6;
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v8, v9, v10, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = v2[2];
  v10[0] = (v2 + 4);
  v10[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3)
    {
      result = specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v3, 1, v10);
    }
  }

  else
  {
    v5 = result;
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23_XMLPlistEncodingFormatV9ReferenceO3key_AE5valuetMd);
      v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v6 + 16) = v3 >> 1;
    }

    else
    {
      v6 = MEMORY[0x1E69E7CC0];
    }

    v8[0] = (v6 + 32);
    v8[1] = (v3 >> 1);
    v7 = v6;
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v8, v9, v10, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

{
  v1 = a1;
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = v2[2];
  v46[0] = (v2 + 4);
  v46[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v33 = v1;
      v32 = v2;
      v7 = v2 + 11;
      v8 = -1;
      v9 = 1;
      v34 = v3;
      do
      {
        v35 = v9;
        v36 = v8;
        v37 = v7;
        do
        {
          v38 = v7 - 3;
          v39 = v8;
          v10 = *(v7 - 2);
          v11 = *(v7 - 1);
          v12 = *v7;
          v13 = *(v7 - 7);
          v15 = *(v7 - 6);
          v14 = *(v7 - 5);
          v16 = *(v7 - 32);
          v17 = *(v7 - 3);
          v43 = v11;
          v44 = v10;
          v42 = v12;
          outlined copy of JSONEncoderValue(v10, v11, v12);
          v18 = v13;
          v40 = v14;
          v41 = v15;
          v19 = v14;
          v20 = v16;
          outlined copy of JSONEncoderValue(v15, v19, v16);
          v21 = [v17 length];
          if (one-time initialization token for system != -1)
          {
            swift_once();
          }

          v22 = *(&static LocaleCache.system + 1);
          ObjectType = swift_getObjectType();
          v24 = *(v22 + 488);
          swift_unknownObjectRetain();
          v25 = v24(ObjectType, v22);
          v26 = [v17 compare:v18 options:577 range:0 locale:{v21, v25}];

          swift_unknownObjectRelease();
          outlined consume of JSONEncoderValue(v41, v40, v20);

          result = outlined consume of JSONEncoderValue(v44, v43, v42);
          if (v26 != -1)
          {
            break;
          }

          v28 = *(v7 - 7);
          v27 = *(v7 - 5);
          *(v7 - 32) = *v7;
          v7 -= 4;
          v29 = v7[1];
          v30 = *(v7 + 1);
          *v38 = v28;
          v38[1] = v27;
          *(v7 - 3) = v29;
          *(v7 - 1) = v30;
          v8 = v39 + 1;
        }

        while (v39 != -1);
        v9 = v35 + 1;
        v7 = v37 + 4;
        v8 = v36 - 1;
      }

      while (v35 + 1 != v34);
      v1 = v33;
      v2 = v32;
    }
  }

  else
  {
    v5 = result;
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSStringC3key_10Foundation16JSONEncoderValueO5valuetMd);
      v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v6 + 16) = v3 >> 1;
    }

    else
    {
      v6 = MEMORY[0x1E69E7CC0];
    }

    v45[0] = v6 + 32;
    v45[1] = v3 >> 1;
    v31 = v6;
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v45, v47, v46, v5);
    *(v31 + 16) = 0;
  }

  *v1 = v2;
  return result;
}

uint64_t specialized Sequence<>.lexicographicallyPrecedes<A>(_:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v7 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v7 = a3 & 0xFFFFFFFFFFFFLL;
  }

  v35 = v7;
  v8 = 4 * v7;
  v9 = (a3 >> 59) & 1;
  if ((a4 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v29 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v30 = a4 & 0xFFFFFFFFFFFFFFLL;
  v11 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v11 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v32 = v8;
  v33 = v11;
  v31 = 4 * v11;
  v12 = (a1 >> 59) & 1;
  if ((a2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v12) = 1;
  }

  v13 = 4 << v12;
  v27 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v28 = a2 & 0xFFFFFFFFFFFFFFLL;
  v14 = 15;
  v15 = 15;
  while (v32 != v15 >> 14)
  {
    v16 = v15 & 0xC;
    v17 = v15;
    if (v16 == v10)
    {
      v17 = _StringGuts._slowEnsureMatchingEncoding(_:)(v15, a3, a4);
    }

    v18 = v17 >> 16;
    if (v17 >> 16 >= v35)
    {
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      v26 = _StringGuts._slowEnsureMatchingEncoding(_:)(v14, a1, a2);
      goto LABEL_50;
    }

    if ((a4 & 0x1000000000000000) != 0)
    {
      v20 = String.UTF8View._foreignSubscript(position:)();
      if (v16 == v10)
      {
        goto LABEL_19;
      }
    }

    else if ((a4 & 0x2000000000000000) != 0)
    {
      v36 = a3;
      v37 = v30;
      v20 = *(&v36 + v18);
      if (v16 == v10)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v19 = v29;
      if ((a3 & 0x1000000000000000) == 0)
      {
        v19 = _StringObject.sharedUTF8.getter();
      }

      v20 = *(v19 + v18);
      if (v16 == v10)
      {
LABEL_19:
        v15 = _StringGuts._slowEnsureMatchingEncoding(_:)(v15, a3, a4);
        if ((a4 & 0x1000000000000000) == 0)
        {
          goto LABEL_24;
        }

        goto LABEL_20;
      }
    }

    if ((a4 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v15 = (v15 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_25;
    }

LABEL_20:
    if (v35 <= v15 >> 16)
    {
      goto LABEL_60;
    }

    v15 = String.UTF8View._foreignIndex(after:)();
LABEL_25:
    if (v31 == v14 >> 14)
    {
      return 0;
    }

    v18 = v14 & 0xC;
    v21 = v14;
    if (v18 == v13)
    {
      v21 = _StringGuts._slowEnsureMatchingEncoding(_:)(v14, a1, a2);
    }

    v22 = v21 >> 16;
    if (v21 >> 16 >= v33)
    {
      goto LABEL_59;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      v24 = String.UTF8View._foreignSubscript(position:)();
      if (v18 == v13)
      {
        goto LABEL_34;
      }
    }

    else if ((a2 & 0x2000000000000000) != 0)
    {
      v36 = a1;
      v37 = v28;
      v24 = *(&v36 + v22);
      if (v18 == v13)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v23 = v27;
      if ((a1 & 0x1000000000000000) == 0)
      {
        v23 = _StringObject.sharedUTF8.getter();
      }

      v24 = *(v23 + v22);
      if (v18 == v13)
      {
LABEL_34:
        v14 = _StringGuts._slowEnsureMatchingEncoding(_:)(v14, a1, a2);
        if ((a2 & 0x1000000000000000) != 0)
        {
          goto LABEL_35;
        }

        goto LABEL_39;
      }
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
LABEL_35:
      if (v33 <= v14 >> 16)
      {
        goto LABEL_61;
      }

      v14 = String.UTF8View._foreignIndex(after:)();
      goto LABEL_40;
    }

LABEL_39:
    v14 = (v14 & 0xFFFFFFFFFFFF0000) + 65540;
LABEL_40:
    if (v20 < v24)
    {
      return 1;
    }

    if (v24 < v20)
    {
      return 0;
    }
  }

  if (v31 == v14 >> 14)
  {
    return 0;
  }

  v18 = v14 & 0xC;
  v26 = v14;
  if (v18 == v13)
  {
    goto LABEL_62;
  }

LABEL_50:
  if (v33 <= v26 >> 16)
  {
    __break(1u);
LABEL_64:
    String.UTF8View._foreignSubscript(position:)();
    if (v18 == v13)
    {
      goto LABEL_65;
    }

    goto LABEL_54;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_64;
  }

  if (!(a2 & 0x2000000000000000 | a1 & 0x1000000000000000))
  {
    goto LABEL_68;
  }

  if (v18 == v13)
  {
    goto LABEL_65;
  }

LABEL_54:
  if ((a2 & 0x1000000000000000) != 0)
  {
    while (v33 <= v14 >> 16)
    {
      __break(1u);
LABEL_68:
      _StringObject.sharedUTF8.getter();
      if (v18 != v13)
      {
        goto LABEL_54;
      }

LABEL_65:
      v14 = _StringGuts._slowEnsureMatchingEncoding(_:)(v14, a1, a2);
      if ((a2 & 0x1000000000000000) == 0)
      {
        return 1;
      }
    }

    String.UTF8View._foreignIndex(after:)();
  }

  return 1;
}

uint64_t JSONDecoderImpl.unwrapDictionary<A, B>(from:as:for:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, uint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, unint64_t a11)
{
  *&v198 = a1;
  v184 = a9;
  v185 = a7;
  *(&v198 + 1) = a2;
  v199 = a5;
  v13 = *(a8 - 8);
  v191 = a6;
  v192 = v13;
  v188 = a11;
  MEMORY[0x1EEE9AC00](a1);
  v186 = &v180 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v183 = &v180 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v190 = (&v180 - v18);
  v193 = v19;
  v196 = type metadata accessor for Optional();
  v194 = *(v196 - 8);
  MEMORY[0x1EEE9AC00](v196);
  v21 = &v180 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v187 = &v180 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v180 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v180 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v180 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v180 - v34;
  v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd);
  v36 = a3 >> 5;
  if (v36 == 5)
  {
    if (v198 == 0 && a3 == 160)
    {
      *(&v198 + 1) = type metadata accessor for DecodingError();
      v216 = swift_allocError();
      v38 = v37;
      v39 = v194;
      *v37 = v195;
      v40 = *(v39 + 16);
      v41 = v196;
      v40(v35, v191, v196);
      v40(v32, v35, v41);
      v42 = v192;
      v43 = v193;
      if ((*(v192 + 48))(v32, 1, v193) == 1)
      {
        v44 = *(v39 + 8);
        v44(v32, v41);
        _CodingPathNode.path.getter(v199);
        v44(v35, v41);
      }

      else
      {
        v72 = *(v42 + 32);
        *&v198 = v38;
        v73 = v190;
        v72(v190, v32, v43);
        v74 = v42;
        v75 = _CodingPathNode.path.getter(v199);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_181218E20;
        v77 = v188;
        *(inited + 56) = v43;
        *(inited + 64) = v77;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
        (*(v74 + 16))(boxed_opaque_existential_0, v73, v43);
        v211 = v75;
        specialized Array.append<A>(contentsOf:)(inited);
        v79 = v73;
        v38 = v198;
        (*(v74 + 8))(v79, v43);
        (*(v39 + 8))(v35, v41);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
      v211 = 0;
      v212 = 0xE000000000000000;
      _StringGuts.grow(_:)(55);
      MEMORY[0x1865CB0E0](0xD000000000000019, 0x8000000181481E50);
      MEMORY[0x1865CB0E0](0xD000000000000017, 0x8000000181481F90);
      MEMORY[0x1865CB0E0](0xD00000000000001CLL, 0x8000000181481E70);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(*(&v198 + 1) - 8) + 104))(v38, *MEMORY[0x1E69E6B08]);
      return swift_willThrow();
    }

    if (dynamic_cast_existential_2_conditional(a4))
    {
LABEL_11:
      *(&v198 + 1) = type metadata accessor for DecodingError();
      v216 = swift_allocError();
      v55 = v194;
      *&v198 = v56;
      *v56 = v195;
      v57 = *(v55 + 16);
      v58 = v187;
      v59 = v196;
      v57(v187, v191, v196);
      v57(v21, v58, v59);
      v60 = v192;
      v61 = v193;
      if ((*(v192 + 48))(v21, 1, v193) == 1)
      {
        v62 = *(v55 + 8);
        v62(v21, v59);
        _CodingPathNode.path.getter(v199);
        v62(v58, v59);
      }

      else
      {
        v63 = *(v60 + 32);
        LODWORD(v197) = v36;
        v64 = v186;
        v63();
        v65 = _CodingPathNode.path.getter(v199);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
        v66 = swift_initStackObject();
        *(v66 + 16) = xmmword_181218E20;
        v67 = v188;
        *(v66 + 56) = v61;
        *(v66 + 64) = v67;
        v68 = __swift_allocate_boxed_opaque_existential_0((v66 + 32));
        (*(v60 + 16))(v68, v64, v61);
        v211 = v65;
        specialized Array.append<A>(contentsOf:)(v66);
        v69 = v64;
        v36 = v197;
        (*(v60 + 8))(v69, v61);
        (*(v55 + 8))(v58, v59);
      }

      v211 = 0;
      v212 = 0xE000000000000000;
      _StringGuts.grow(_:)(43);

      v211 = 0xD000000000000035;
      v212 = 0x8000000181481DA0;
      if (v36 > 2)
      {
        if (v36 == 3)
        {
          v70 = 0xEC0000007972616ELL;
          v71 = 0x6F69746369642061;
        }

        else if (v36 == 4)
        {
          v70 = 0xE800000000000000;
          v71 = 0x7961727261206E61;
        }

        else
        {
          v70 = 0xE400000000000000;
          v71 = 1819047278;
        }
      }

      else if (v36)
      {
        if (v36 == 1)
        {
          v70 = 0xE600000000000000;
          v71 = 0x7265626D756ELL;
        }

        else
        {
          v70 = 0xE400000000000000;
          v71 = 1819242338;
        }
      }

      else
      {
        v70 = 0xE800000000000000;
        v71 = 0x676E697274732061;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
      MEMORY[0x1865CB0E0](v71, v70);

      MEMORY[0x1865CB0E0](0x64616574736E6920, 0xE90000000000002ELL);
      v90 = v198;
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(*(&v198 + 1) - 8) + 104))(v90, *MEMORY[0x1E69E6AF8]);
      return swift_willThrow();
    }

    goto LABEL_117;
  }

  v45 = *(&v198 + 1);
  v189 = dynamic_cast_existential_2_conditional(a4);
  v190 = v46;
  if (v189)
  {
    if (v36 != 3)
    {
      goto LABEL_11;
    }

    v215 = MEMORY[0x1E69E7CC8];
    Dictionary.reserveCapacity(_:)(v45 / 2);
    v47 = v194;
    v48 = *(v194 + 16);
    v49 = v196;
    v48(v29, v191, v196);
    v48(v26, v29, v49);
    v50 = v192;
    v51 = v193;
    if ((*(v192 + 48))(v26, 1, v193) == 1)
    {
      v52 = *(v47 + 8);
      v52(v29, v49);
      v52(v26, v49);

      v53 = v197;
      v54 = v198;
LABEL_35:
      v94 = *(v53 + 32);

      v95 = JSONMap.loadValue(at:)(v54);
      if (v97 >= 0xFEu)
      {
        v85 = v215;
LABEL_108:

        v211 = v85;
        return swift_dynamicCast();
      }

      v98 = v95;
      v99 = v96;
      v100 = v97;
      v193 = (v190 + 1);
      v194 = v94;
      v191 = v199 & 0x3FFFFFFFFFFFFFFFLL;
      v182 = (v199 & 0x3FFFFFFFFFFFFFFFLL) + 32;
      v187 = (v199 + 64);
      v188 = v199 >> 62;
      while (1)
      {
        v103 = v216;
        v104 = JSONMap.offset(after:)(v54);
        v105 = JSONMap.loadValue(at:)(v104);
        v196 = v107;
        if (v106 > 0xFDu)
        {
LABEL_116:
          __break(1u);
          goto LABEL_117;
        }

        v85 = v105;
        v108 = v106;
        *&v198 = JSONMap.offset(after:)(v104);
        *(&v198 + 1) = specialized JSONDecoderImpl.unwrapString<A>(from:for:_:)(v98, v99, v100, v199, 0, 0, 0, 255);
        v110 = v103;
        if (v103)
        {
          goto LABEL_105;
        }

        v111 = v109;
        v112 = v190[1]();
        v213 = v112;
        v214 = v113;
        v114 = __swift_allocate_boxed_opaque_existential_0(&v211);
        if (v112 == &type metadata for Date)
        {
          break;
        }

        if (v112 == &type metadata for Data)
        {

          v117 = specialized JSONDecoderImpl.unwrapData<A>(from:for:_:)(v85, v196, v108, v199, *(&v198 + 1), v111, 0, 0);
          v216 = 0;
          v118 = v117;
          v120 = v119;

          v206 = v118;
          v207 = v120;
          goto LABEL_53;
        }

        if (v112 == &type metadata for URL)
        {

          specialized JSONDecoderImpl.unwrapURL<A>(from:for:_:)(v85, v196, v108, v199, *(&v198 + 1), v111, 0, 0, &v206);
          v216 = 0;

          goto LABEL_53;
        }

        v115 = v114;
        type metadata accessor for NSDecimal(0);
        if (v112 == v116)
        {
          v192 = v115;

          v137 = specialized JSONDecoderImpl.unwrapDecimal<A>(from:for:_:)(v85, v196, v108, v199, *(&v198 + 1), v111, 0, 0);
          v216 = 0;
          v138 = v137;
          v140 = v139;
          v142 = v141;

          v206 = v138;
          v207 = v140;
          v208 = v142;
          goto LABEL_53;
        }

        if (swift_conformsToProtocol2() && v112)
        {

          specialized JSONDecoderImpl.unwrapDictionary<A, B>(from:as:for:_:)(v85, v196, v108, v112, v199, *(&v198 + 1), v111, 0, 0);
          v216 = 0;
        }

        else
        {
          v143 = swift_allocObject();
          *(v143 + 5) = &type metadata for _CodingKey;
          *(v143 + 6) = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
          v144 = swift_allocObject();
          *(v143 + 2) = v144;
          v145 = v199;
          *(v144 + 16) = *(&v198 + 1);
          *(v144 + 24) = v111;
          *(v144 + 32) = 0;
          *(v144 + 40) = 0;
          *(v143 + 7) = v145;
          v146 = v187;
          if (!v188 || (v147 = 0, v146 = v182, v188 == 1))
          {
            v147 = *v146;
          }

          v192 = v115;
          if (__OFADD__(v147, 1))
          {
            goto LABEL_112;
          }

          *(v143 + 8) = v147 + 1;
          v148 = v143;
          v149 = v197;
          v186 = *(v197 + 160);
          *(v197 + 160) = v148;
          v216 = *(v149 + 16);
          swift_bridgeObjectRetain_n();
          v183 = v148;

          v150 = v216;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v152 = v150;
          *(v149 + 16) = v150;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v152 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v150 + 16) + 1, 1, v150);
            *(v197 + 16) = v152;
          }

          v154 = *(v152 + 2);
          v153 = *(v152 + 3);
          v155 = v154 + 1;
          if (v154 >= v153 >> 1)
          {
            v216 = v154 + 1;
            v177 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v153 > 1), v154 + 1, 1, v152);
            v155 = v216;
            v152 = v177;
          }

          *(v152 + 2) = v155;
          v156 = &v152[24 * v154];
          v157 = v196;
          *(v156 + 4) = v85;
          *(v156 + 5) = v157;
          v156[48] = v108;
          v85 = v197;
          *(v197 + 16) = v152;
          v209 = type metadata accessor for JSONDecoderImpl();
          v210 = lazy protocol witness table accessor for type JSONDecoderImpl and conformance JSONDecoderImpl(&lazy protocol witness table cache variable for type JSONDecoderImpl and conformance JSONDecoderImpl, type metadata accessor for JSONDecoderImpl);
          v206 = v85;

          dispatch thunk of Decodable.init(from:)();
          v216 = 0;
          *(v85 + 160) = v186;

          v115 = *(v85 + 16);
          if (!*(v115 + 16))
          {
            goto LABEL_113;
          }

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v158 = *(v115 + 16);
            if (!v158)
            {
              goto LABEL_104;
            }
          }

          else
          {
            v115 = specialized _ArrayBuffer._consumeAndCreateNew()(v115);
            v158 = *(v115 + 16);
            if (!v158)
            {
LABEL_104:
              __break(1u);
LABEL_105:

              v216 = v110;
              return result;
            }
          }

          *(v115 + 16) = v158 - 1;
          *(v85 + 16) = v115;
        }

LABEL_54:
        v121 = v213;
        v122 = __swift_project_boxed_opaque_existential_1(&v211, v213);
        v209 = v121;
        v123 = __swift_allocate_boxed_opaque_existential_0(&v206);
        (*(*(v121 - 8) + 16))(v123, v122, v121);
        v124 = v215;
        v85 = swift_isUniquelyReferenced_nonNull_native();
        v205 = v124;
        v115 = v124;
        v126 = specialized __RawDictionaryStorage.find<A>(_:)(*(&v198 + 1), v111);
        v127 = *(v124 + 16);
        v128 = (v125 & 1) == 0;
        v129 = v127 + v128;
        if (__OFADD__(v127, v128))
        {
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
          __break(1u);
          v178 = specialized _ArrayBuffer._consumeAndCreateNew()(v115);
          v179 = *(v178 + 2);
          if (v179)
          {
            *(v178 + 2) = v179 - 1;
            *(v85 + 16) = v178;

            return __swift_deallocate_boxed_opaque_existential_1(&v211);
          }

          __break(1u);
          goto LABEL_116;
        }

        v130 = v125;
        if (*(v124 + 24) >= v129)
        {
          if (v85)
          {
            v85 = v124;
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd);
            v159 = static _DictionaryStorage.copy(original:)();
            v85 = v159;
            if (*(v124 + 16))
            {
              v160 = (v159 + 64);
              v161 = (v124 + 64);
              v162 = ((1 << *(v85 + 32)) + 63) >> 6;
              v181 = v124 + 64;
              if (v85 != v124 || v160 >= &v161[8 * v162])
              {
                memmove(v160, v161, 8 * v162);
              }

              v115 = 0;
              *(v85 + 16) = *(v124 + 16);
              v163 = 1 << *(v124 + 32);
              if (v163 < 64)
              {
                v164 = ~(-1 << v163);
              }

              else
              {
                v164 = -1;
              }

              v165 = v164 & *(v124 + 64);
              v166 = (v163 + 63) >> 6;
              v183 = v166;
              if (v165)
              {
                do
                {
                  v167 = v216;
                  v168 = __clz(__rbit64(v165));
                  v196 = (v165 - 1) & v165;
LABEL_100:
                  v171 = v168 | (v115 << 6);
                  v216 = v167;
                  v186 = (16 * v171);
                  v172 = *(v124 + 56);
                  v173 = (*(v124 + 48) + 16 * v171);
                  v174 = v173[1];
                  v192 = *v173;
                  v175 = 32 * v171;
                  outlined init with copy of Any(v172 + 32 * v171, &v203);
                  v176 = &v186[*(v85 + 48)];
                  *v176 = v192;
                  *(v176 + 1) = v174;
                  outlined init with take of Any(&v203, (*(v85 + 56) + v175));

                  v166 = v183;
                  v165 = v196;
                }

                while (v196);
              }

              v169 = v115;
              while (1)
              {
                v115 = v169 + 1;
                if (__OFADD__(v169, 1))
                {
                  goto LABEL_114;
                }

                if (v115 >= v166)
                {
                  break;
                }

                v170 = *(v181 + 8 * v115);
                ++v169;
                if (v170)
                {
                  v167 = v216;
                  v168 = __clz(__rbit64(v170));
                  v196 = (v170 - 1) & v170;
                  goto LABEL_100;
                }
              }
            }
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v129, v85);
          v85 = v205;
          v131 = specialized __RawDictionaryStorage.find<A>(_:)(*(&v198 + 1), v111);
          if ((v130 & 1) != (v132 & 1))
          {
            goto LABEL_118;
          }

          v126 = v131;
        }

        v115 = &_sypSgMd;
        if (v130)
        {
          outlined init with take of Any((*(v85 + 56) + 32 * v126), &v203);
        }

        else
        {
          v203 = 0u;
          v204 = 0u;
        }

        outlined init with copy of FloatingPointRoundingRule?(&v203, &v201, &_sypSgMd);
        if (v202)
        {
          outlined destroy of TermOfAddress?(&v201, &_sypSgMd);
        }

        else
        {
          outlined destroy of TermOfAddress?(&v203, &_sypSgMd);
          outlined destroy of TermOfAddress?(&v201, &_sypSgMd);
          outlined init with copy of Any(&v206, &v203);
        }

        v200[0] = v203;
        v200[1] = v204;
        if (*(&v204 + 1))
        {
          outlined init with take of Any(v200, &v201);
          if (v130)
          {

            outlined init with take of Any(&v201, (*(v85 + 56) + 32 * v126));
          }

          else
          {
            *(v85 + 8 * (v126 >> 6) + 64) |= 1 << v126;
            v133 = (*(v85 + 48) + 16 * v126);
            *v133 = *(&v198 + 1);
            v133[1] = v111;
            outlined init with take of Any(&v201, (*(v85 + 56) + 32 * v126));
            v134 = *(v85 + 16);
            v135 = __OFADD__(v134, 1);
            v136 = v134 + 1;
            if (v135)
            {
              goto LABEL_111;
            }

            *(v85 + 16) = v136;
          }

          v54 = v198;
        }

        else
        {

          outlined destroy of TermOfAddress?(v200, &_sypSgMd);
          v54 = v198;
          if (v130)
          {
            outlined destroy of String(*(v85 + 48) + 16 * v126);
            specialized _NativeDictionary._delete(at:)(v126, v85);
          }
        }

        v215 = v85;
        __swift_destroy_boxed_opaque_existential_1(&v206);
        __swift_destroy_boxed_opaque_existential_1(&v211);
        v98 = JSONMap.loadValue(at:)(v54);
        v99 = v101;
        v100 = v102;
        if (v102 > 0xFDu)
        {
          goto LABEL_108;
        }
      }

      specialized JSONDecoderImpl.unwrapDate<A>(from:for:_:)(v85, v196, v108, v199, *(&v198 + 1), v111, 0, 0, &v206);
      v216 = 0;

LABEL_53:
      swift_dynamicCast();
      goto LABEL_54;
    }

    v80 = *(v50 + 32);
    v81 = v183;
    v80(v183, v26, v51);
    v82 = swift_allocObject();
    v83 = v188;
    v82[5] = v51;
    v82[6] = v83;
    v84 = __swift_allocate_boxed_opaque_existential_0(v82 + 2);
    v80(v84, v81, v51);
    v86 = *(v47 + 8);
    v85 = v47 + 8;
    v86(v29, v49);
    v87 = v199;
    v82[7] = v199;
    v88 = v87 >> 62;
    v54 = v198;
    if (v88)
    {
      v53 = v197;
      if (v88 != 1)
      {
        v93 = 1;
LABEL_34:
        v82[8] = v93;
        v199 = v82;
        goto LABEL_35;
      }

      v89 = ((v199 & 0x3FFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v89 = (v199 + 64);
      v53 = v197;
    }

    v92 = *v89;

    v93 = v92 + 1;
    if (__OFADD__(v92, 1))
    {
      __break(1u);
      goto LABEL_108;
    }

    goto LABEL_34;
  }

LABEL_117:
  __break(1u);
LABEL_118:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance _PlistKeyedEncodingContainerBPlist<A>()
{
  return KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)();
}

uint64_t specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1)
{
  return specialized _copyCollectionToContiguousArray<A>(_:)(a1, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS3key_10Foundation16JSONEncoderValueO5valuet_Tt1g5, specialized Sequence._copyContents(initializing:));
}

{
  return specialized _copyCollectionToContiguousArray<A>(_:)(a1, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC10Foundation23_XMLPlistEncodingFormatV9ReferenceO3key_AJ5valuet_Tt1g5, specialized Sequence._copyContents(initializing:));
}

{
  v2 = *a1;
  v11[0] = *(*a1 + 24);
  v3 = *(v2 + 56);
  v11[1] = *(v2 + 40);
  v11[2] = v3;
  v4 = *(a1 + 56);
  v14 = *(a1 + 40);
  v15 = v4;
  v5 = *(a1 + 24);
  v12 = *(a1 + 8);
  v13 = v5;
  swift_unknownObjectRetain();
  result = outlined destroy of BigSubstring.UTF8View(v11);
  if (v14 >> 10 < v12 >> 10)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  v7 = (v14 >> 11) - (v12 >> 11);
  if (v14 >> 11 == v12 >> 11)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v8 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1g5((v14 >> 11) - (v12 >> 11), 0);
  outlined init with copy of AttributedString.UTF8View(a1, v10);
  v9 = specialized Sequence._copySequenceContents(initializing:)(v10, (v8 + 4), v7);
  result = outlined destroy of TermOfAddress?(v10, &_ss16IndexingIteratorVy10Foundation16AttributedStringV8UTF8ViewVGMd);
  if (v9 != v7)
  {
    goto LABEL_8;
  }

  return v8;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v14[2] = v12;
    v14[3] = 2 * ((v15 - 32) / 40);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[5 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 40 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v14[2] = v12;
    v14[3] = 2 * ((v15 - 32) / 296);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[37 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 296 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew()(void *a1)
{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

uint64_t __NSFinalizeThreadData()
{
  v30 = *MEMORY[0x1E69E9840];
  _CFSetTSD();
  result = _NSThreadGet0(1);
  v1 = result;
  v2 = *(result + 8);
  v3 = *(v2 + 60);
  if (v3 == 2)
  {
    *(v2 + 60) = 3;
    pthread_attr_destroy((*(result + 8) + 80));

    return _CFSetTSD();
  }

  else if (v3 == 1)
  {
    *(v2 + 60) = 2;
    _CFAutoreleasePoolPush();

    *(v1[1] + 40) = 0;

    return _CFAutoreleasePoolPop();
  }

  else if (!*(v2 + 60))
  {
    *(v2 + 60) = 1;
    _CFAutoreleasePoolPush();
    [+[NSNotificationCenter _defaultCenterWithoutCreating](NSNotificationCenter "_defaultCenterWithoutCreating")];
    atomic_store(0xFu, (v1[1] + 63));
    objc_sync_enter(v1);
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v4 = *(v1[1] + 64);
    v5 = [v4 countByEnumeratingWithState:&v26 objects:v25 count:16];
    if (v5)
    {
      v6 = *v27;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v27 != v6)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v26 + 1) + 8 * i) signal:1];
        }

        v5 = [v4 countByEnumeratingWithState:&v26 objects:v25 count:16];
      }

      while (v5);
    }

    v8 = v1[1];
    v9 = *(v8 + 72);
    if (v9)
    {
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v10 = [v9 countByEnumeratingWithState:&v21 objects:v20 count:16];
      if (v10)
      {
        v11 = *v22;
        do
        {
          for (j = 0; j != v10; ++j)
          {
            if (*v22 != v11)
            {
              objc_enumerationMutation(v9);
            }

            v13 = [*(v1[1] + 72) objectForKey:*(*(&v21 + 1) + 8 * j)];
            memset(&v19, 0, sizeof(v19));
            CFRunLoopSourceGetContext(v13, &v19);
            free(v19.info);
          }

          v10 = [v9 countByEnumeratingWithState:&v21 objects:v20 count:16];
        }

        while (v10);
      }

      *(v1[1] + 72) = 0;
      v8 = v1[1];
    }

    v14 = *(v8 + 64);
    if (v14)
    {

      *(v1[1] + 64) = 0;
    }

    objc_sync_exit(v1);
    v15 = v1[1];
    if (v15)
    {
      v15 = v15[3];
    }

    [(_NSThreadData *)v1[1] setArgument:?];
    v16 = v1[1];
    if (v16)
    {
      v16 = v16[1];
    }

    v18 = v1[1];
    v17 = v1 + 1;
    [(_NSThreadData *)v18 setTarget:?];

    *(*v17 + 40) = 0;
    return _CFAutoreleasePoolPop();
  }

  return result;
}

uint64_t URL.init(filePath:directoryHint:relativeTo:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char *a3@<X2>, __int128 *a4@<X3>, uint64_t *a5@<X8>)
{
  v8 = *a3;
  v15 = *a4;
  if (one-time initialization token for compatibility2 != -1)
  {
    swift_once();
  }

  if (static URL.compatibility2 == 1 || (_foundation_swift_url_feature_enabled() & 1) == 0)
  {
    v9 = type metadata accessor for _BridgedURL();
    v10 = &protocol witness table for _BridgedURL;
  }

  else
  {
    v9 = type metadata accessor for _SwiftURL();
    v10 = &protocol witness table for _SwiftURL;
  }

  v17 = v8;
  v16 = v15;
  (v10[9])(a1, a2, &v17, &v16);
  v11 = (v10[56])(v9, v10);
  v13 = v12;
  result = swift_unknownObjectRelease();
  *a5 = v11;
  a5[1] = v13;
  return result;
}

uint64_t specialized _ProcessInfo.processorCount.getter()
{

  return specialized _ProcessInfo.processorCount.getter(COERCE_DOUBLE(0x300000006));
}

uint64_t specialized _ProcessInfo.processorCount.getter(double a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = -1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5Int32VGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_181215ED0;
  *(inited + 32) = a1;
  v6 = 4;
  v3 = sysctl((inited + 32), 2u, &v7, &v6, 0, 0);

  v4 = v7;
  if (v3)
  {
    return 0;
  }

  return v4;
}

uint64_t specialized static UUID._forceBridgeFromObjectiveC(_:result:)(void *a1, uint64_t a2)
{
  result = specialized static UUID._conditionallyBridgeFromObjectiveC(_:result:)(a1, a2);
  if ((result & 1) == 0)
  {
    _StringGuts.grow(_:)(25);

    type metadata accessor for NSUUID();
    v3 = _typeName(_:qualified:)();
    MEMORY[0x1865CB0E0](v3);

    MEMORY[0x1865CB0E0](544175136, 0xE400000000000000);
    MEMORY[0x1865CB0E0](1145656661, 0xE400000000000000);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> JSONWriter.serializeArray(_:depth:)(Swift::OpaquePointer _, Swift::Int depth)
{
  if (depth > 511)
  {
    lazy protocol witness table accessor for type JSONError and conformance JSONError();
    swift_allocError();
    *v56 = 0;
    *(v56 + 8) = 0;
    *(v56 + 16) = 0;
    *(v56 + 24) = 1;
    *(v56 + 32) = 0;
    *(v56 + 40) = 0;
    *(v56 + 48) = 2;
    swift_willThrow();
    return;
  }

  v4 = v3;
  v5 = v2;
  v7 = (v2 + 2);
  v8 = v2[2];
  v63 = v7;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_142;
  }

  while (2)
  {
    v10 = *(v8 + 2);
    v9 = *(v8 + 3);
    v11._rawValue = (v10 + 1);
    if (v10 >= v9 >> 1)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v8);
    }

    *(v8 + 2) = v11;
    v8[v10 + 32] = 91;
    v5[2] = v8;
    if (*(v5 + 8) != 1)
    {
      goto LABEL_9;
    }

    v12 = *(v8 + 3);
    v13 = v10 + 2;
    if ((v10 + 2) > (v12 >> 1))
    {
LABEL_145:
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13, 1, v8);
    }

    *(v8 + 2) = v13;
    v8[v11._rawValue + 32] = 10;
    v5[2] = v8;
    if (!__OFADD__(*v5, 1))
    {
      ++*v5;
LABEL_9:
      v14 = *(_._rawValue + 2);
      if (!v14)
      {
        _._rawValue = v63;
LABEL_124:
        if (*(v5 + 8) == 1)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            goto LABEL_147;
          }

          goto LABEL_126;
        }

LABEL_130:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
        }

        v60 = *(v8 + 2);
        v59 = *(v8 + 3);
        if (v60 >= v59 >> 1)
        {
          v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v59 > 1), v60 + 1, 1, v8);
        }

        *(v8 + 2) = v60 + 1;
        v8[v60 + 32] = 93;
        *_._rawValue = v8;
        return;
      }

      v15 = 0;
      v66 = _._rawValue + 32;
      v16 = 1;
      _._rawValue = v63;
      v64 = v14;
      while (1)
      {
        v17 = &v66[24 * v15];
        v11._rawValue = *v17;
        v18._rawValue = *(v17 + 1);
        v13 = v17[16];
        v8 = *(v5 + 8);
        if ((v16 & 1) == 0)
        {
          break;
        }

        outlined copy of JSONEncoderValue(*v17, *(v17 + 1), v17[16]);
        if (v8)
        {
          goto LABEL_16;
        }

LABEL_47:
        ++v15;
        if (v13 > 3)
        {
          if (v13 <= 5)
          {
            v8 = v5;
            if (v13 == 4)
            {
              JSONWriter.serializeObject(_:depth:)(v11, depth + 1);
              v4 = v32;
              rawValue = v11._rawValue;
              v34 = v18._rawValue;
              v35 = 4;
            }

            else
            {
              JSONWriter.serializePreformattedByteArray(_:_:depth:)(v11, v18, depth + 1);
              v4 = v45;
              rawValue = v11._rawValue;
              v34 = v18._rawValue;
              v35 = 5;
            }

LABEL_85:
            outlined consume of JSONEncoderValue(rawValue, v34, v35);
            if (v4)
            {
              return;
            }

            if (v15 == v14)
            {
LABEL_122:
              v8 = *_._rawValue;
              goto LABEL_124;
            }

            goto LABEL_118;
          }

          if (v13 == 6)
          {
            v13 = *(v11._rawValue + 2);
            v8 = *_._rawValue;
            _._rawValue = *(*_._rawValue + 16);
            v38 = _._rawValue + v13;
            if (__OFADD__(_._rawValue, v13))
            {
              goto LABEL_139;
            }

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            if (!isUniquelyReferenced_nonNull_native || (v40 = *(v8 + 3) >> 1, v40 < v38))
            {
              if (_._rawValue <= v38)
              {
                v41 = _._rawValue + v13;
              }

              else
              {
                v41 = _._rawValue;
              }

              v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v41, 1, v8);
              v40 = *(v8 + 3) >> 1;
            }

            _._rawValue = v63;
            v14 = v64;
            if (*(v11._rawValue + 2))
            {
              v42 = *(v8 + 2);
              if (v40 - v42 < v13)
              {
                goto LABEL_141;
              }

              memcpy(&v8[v42 + 32], v11._rawValue + 32, v13);
              outlined consume of JSONEncoderValue(v11._rawValue, v18._rawValue, 6u);
              if (v13)
              {
                v43 = *(v8 + 2);
                v44 = __OFADD__(v43, v13);
                v12 = v43 + v13;
                if (v44)
                {
                  __break(1u);
                  goto LABEL_144;
                }

                *(v8 + 2) = v12;
              }
            }

            else
            {
              outlined consume of JSONEncoderValue(v11._rawValue, v18._rawValue, 6u);
              if (v13)
              {
                goto LABEL_140;
              }
            }

            goto LABEL_117;
          }

          v36 = "null";
          v37 = 4;
          goto LABEL_89;
        }

        if (v13 > 1)
        {
          if (v13 != 2)
          {
            v8 = v5;
            JSONWriter.serializeArray(_:depth:)(v11, depth + 1);
            v4 = v46;
            rawValue = v11._rawValue;
            v34 = v18._rawValue;
            v35 = 3;
            goto LABEL_85;
          }

          if (v11._rawValue)
          {
            v36 = "true";
          }

          else
          {
            v36 = "false";
          }

          if (v11._rawValue)
          {
            v37 = 4;
          }

          else
          {
            v37 = 5;
          }

LABEL_89:
          v8 = _._rawValue;
          specialized Array.append<A>(contentsOf:)(v36, v37);
          if (v15 == v14)
          {
            goto LABEL_122;
          }

          goto LABEL_118;
        }

        if (!v13)
        {
          v25 = *_._rawValue;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v25 + 2) + 1, 1, v25);
          }

          v27 = *(v25 + 2);
          v26 = *(v25 + 3);
          if (v27 >= v26 >> 1)
          {
            v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v25);
          }

          *(v25 + 2) = v27 + 1;
          v25[v27 + 32] = 34;
          *v63 = v25;

          v28 = v18._rawValue;
          v29 = v11._rawValue;
          if ((v18._rawValue & 0x1000000000000000) != 0)
          {
            v29 = static String._copying(_:)();
            v28 = v53;
            outlined consume of JSONEncoderValue(v11._rawValue, v18._rawValue, 0);
            if ((v28 & 0x2000000000000000) == 0)
            {
              goto LABEL_56;
            }
          }

          else if ((v18._rawValue & 0x2000000000000000) == 0)
          {
LABEL_56:
            if ((v29 & 0x1000000000000000) != 0)
            {
              v30 = ((v28 & 0xFFFFFFFFFFFFFFFLL) + 32);
              v31 = v29 & 0xFFFFFFFFFFFFLL;
            }

            else
            {
              v30 = _StringObject.sharedUTF8.getter();
            }

            goto LABEL_112;
          }

          v31 = HIBYTE(v28) & 0xF;
          v65[0] = v29;
          v65[1] = v28 & 0xFFFFFFFFFFFFFFLL;
          v30 = v65;
LABEL_112:
          closure #1 in JSONWriter.serializeStringContents(_:)(v30, v31, v5);

          v8 = *v63;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
          }

          v55 = *(v8 + 2);
          v54 = *(v8 + 3);
          if (v55 >= v54 >> 1)
          {
            v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v54 > 1), v55 + 1, 1, v8);
          }

          outlined consume of JSONEncoderValue(v11._rawValue, v18._rawValue, 0);
          *(v8 + 2) = v55 + 1;
          v8[v55 + 32] = 34;
          _._rawValue = v63;
LABEL_117:
          *_._rawValue = v8;
          if (v15 == v14)
          {
            goto LABEL_122;
          }

          goto LABEL_118;
        }

        v8 = _._rawValue;
        specialized Array.append<A>(contentsOf:)(v11._rawValue, v18._rawValue);
        if (v15 == v14)
        {
          goto LABEL_122;
        }

LABEL_118:
        v16 = 0;
        if (v15 == v14)
        {
          goto LABEL_138;
        }
      }

      if (!*(v5 + 8))
      {
        v22 = *_._rawValue;
        outlined copy of JSONEncoderValue(*v17, *(v17 + 1), v17[16]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v22 + 2) + 1, 1, v22);
        }

        v24 = *(v22 + 2);
        v23 = *(v22 + 3);
        if (v24 >= v23 >> 1)
        {
          v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1, v22);
        }

        *(v22 + 2) = v24 + 1;
        v22[v24 + 32] = 44;
        _._rawValue = v63;
        *v63 = v22;
        goto LABEL_46;
      }

      outlined copy of JSONEncoderValue(*v17, *(v17 + 1), v17[16]);
      v8 = _._rawValue;
      specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of JSONWriter.serializeArray(_:depth:));
LABEL_16:
      v19 = *v5;
      if (*v5 <= 4)
      {
        if (v19 <= 1)
        {
          if (!v19)
          {
LABEL_46:
            v14 = v64;
            goto LABEL_47;
          }

          if (v19 != 1)
          {
LABEL_93:
            if (v19 < 0)
            {
LABEL_144:
              __break(1u);
              goto LABEL_145;
            }

            v61 = v4;
            v8 = *_._rawValue;
            _._rawValue = *(*_._rawValue + 16);
            while (1)
            {
              v4 = _._rawValue + 2;
              if (__OFADD__(_._rawValue, 2))
              {
                break;
              }

              v47 = swift_isUniquelyReferenced_nonNull_native();
              if (!v47 || (v48 = *(v8 + 3) >> 1, v48 < v4))
              {
                if (_._rawValue <= v4)
                {
                  v49 = _._rawValue + 2;
                }

                else
                {
                  v49 = _._rawValue;
                }

                v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v47, v49, 1, v8);
                v48 = *(v8 + 3) >> 1;
              }

              v50 = *(v8 + 2);
              v4 = v48 - v50;
              if (v48 == v50)
              {
                goto LABEL_149;
              }

              v51 = v4 >= 2 ? 2 : v48 - v50;
              memcpy(&v8[v50 + 32], "  ", v51);
              if (v4 < 2)
              {
                goto LABEL_149;
              }

              v52 = *(v8 + 2);
              v44 = __OFADD__(v52, v51);
              _._rawValue = (v52 + v51);
              if (v44)
              {
                goto LABEL_137;
              }

              *(v8 + 2) = _;
              if (!--v19)
              {
                _._rawValue = v63;
                *v63 = v8;
                v4 = v61;
                goto LABEL_46;
              }
            }

            __break(1u);
LABEL_137:
            __break(1u);
LABEL_138:
            __break(1u);
LABEL_139:
            __break(1u);
LABEL_140:
            __break(1u);
LABEL_141:
            __break(1u);
LABEL_142:
            v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
            continue;
          }

          v20 = "  ";
          v21 = 2;
        }

        else
        {
          switch(v19)
          {
            case 2:
              v20 = "    ";
              v21 = 4;
              break;
            case 3:
              v20 = "      ";
              v21 = 6;
              break;
            case 4:
              v20 = "        ";
              v21 = 8;
              break;
            default:
              goto LABEL_93;
          }
        }
      }

      else if (v19 > 7)
      {
        switch(v19)
        {
          case 8:
            v20 = "                ";
            v21 = 16;
            break;
          case 9:
            v20 = "                  ";
            v21 = 18;
            break;
          case 10:
            v20 = "                    ";
            v21 = 20;
            break;
          default:
            goto LABEL_93;
        }
      }

      else
      {
        switch(v19)
        {
          case 5:
            v20 = "          ";
            v21 = 10;
            break;
          case 6:
            v20 = "            ";
            v21 = 12;
            break;
          case 7:
            v20 = "              ";
            v21 = 14;
            break;
          default:
            goto LABEL_93;
        }
      }

      specialized Array.append<A>(contentsOf:)(v20, v21);
      goto LABEL_46;
    }

    break;
  }

  __break(1u);
LABEL_147:
  v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
LABEL_126:
  v58 = *(v8 + 2);
  v57 = *(v8 + 3);
  if (v58 >= v57 >> 1)
  {
    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v57 > 1), v58 + 1, 1, v8);
  }

  *(v8 + 2) = v58 + 1;
  v8[v58 + 32] = 10;
  v5[2] = v8;
  if (!__OFSUB__(*v5, 1))
  {
    --*v5;
    JSONWriter.writeIndent()();
    v8 = v5[2];
    _._rawValue = v63;
    goto LABEL_130;
  }

  __break(1u);
LABEL_149:
  __break(1u);
}

uint64_t _JSONUnkeyedEncodingContainer.encode<A>(_:)(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = *(a2 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v8);
  v11 = *(v3 + 8);
  v12 = specialized __JSONEncoder.wrapGeneric<A, B>(_:for:)(v10, *(*(v11 + 16) + 16), 0, 0, 2, a2, a3);
  if (v4)
  {
    return (*(v7 + 8))(v10, a2);
  }

  if (v14 == 255)
  {
    v16 = MEMORY[0x1E69E7CC8];
  }

  else
  {
    v16 = v12;
  }

  if (v14 == 255)
  {
    v17 = 0;
  }

  else
  {
    v17 = v13;
  }

  if (v14 == 255)
  {
    v18 = 4;
  }

  else
  {
    v18 = v14;
  }

  (*(v7 + 8))(v10, a2);
  v19 = *(v11 + 16);
  outlined copy of JSONEncoderValue(v16, v17, v18);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v11 + 16) = v19;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v19 + 2) + 1, 1, v19);
    *(v11 + 16) = v19;
  }

  v22 = *(v19 + 2);
  v21 = *(v19 + 3);
  if (v22 >= v21 >> 1)
  {
    *(v11 + 16) = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1, v19);
  }

  result = outlined consume of JSONEncoderValue(v16, v17, v18);
  v23 = *(v11 + 16);
  *(v23 + 16) = v22 + 1;
  v24 = v23 + 24 * v22;
  *(v24 + 32) = v16;
  *(v24 + 40) = v17;
  *(v24 + 48) = v18;
  *(v11 + 16) = v23;
  return result;
}

uint64_t JSONFuture.RefArray.values.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v14 = MEMORY[0x1E69E7CC0];

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v3 = v14;
    v4 = (v1 + 48);
    do
    {
      v6 = *(v4 - 2);
      v5 = *(v4 - 1);
      v7 = *v4;
      if (v7 >> 6)
      {

        if (v7 >> 6 == 1)
        {
          v9 = JSONFuture.RefArray.values.getter(v8);
          outlined consume of JSONFuture(v6, v5, v7);
          v5 = 0;
          LOBYTE(v7) = 3;
        }

        else
        {
          v9 = JSONFuture.RefObject.values.getter(v8);
          outlined consume of JSONFuture(v6, v5, v7);
          v5 = 0;
          LOBYTE(v7) = 4;
        }

        v6 = v9;
      }

      else
      {
        outlined copy of JSONEncoderValue(*(v4 - 2), *(v4 - 1), *v4);
      }

      v11 = *(v14 + 16);
      v10 = *(v14 + 24);
      if (v11 >= v10 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
      }

      v4 += 24;
      *(v14 + 16) = v11 + 1;
      v12 = v14 + 24 * v11;
      *(v12 + 32) = v6;
      *(v12 + 40) = v5;
      *(v12 + 48) = v7;
      --v2;
    }

    while (v2);
  }

  return v3;
}

char *_LocaleICU.calendar.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1;
  v5 = *(v1 + 48);
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v6 = qword_1ED440450;
  os_unfair_lock_lock((qword_1ED440450 + 24));
  v7 = *(v6 + 16);
  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
  {
    v10 = (*(v7 + 56) + 16 * v8);
    v12 = *v10;
    v11 = v10[1];
    swift_unknownObjectRetain();
    os_unfair_lock_unlock((v6 + 24));
    if (v12)
    {
      goto LABEL_43;
    }

    if (!v5)
    {
      goto LABEL_10;
    }
  }

  else
  {
    os_unfair_lock_unlock((v6 + 24));
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  if (v5 != 7)
  {
    v13 = type metadata accessor for _CalendarICU();
    v14 = &lazy protocol witness table cache variable for type _CalendarICU and conformance _CalendarICU;
    v15 = type metadata accessor for _CalendarICU;
    goto LABEL_12;
  }

LABEL_10:
  v13 = type metadata accessor for _CalendarGregorian();
  v14 = &lazy protocol witness table cache variable for type _CalendarGregorian and conformance _CalendarGregorian;
  v15 = type metadata accessor for _CalendarGregorian;
LABEL_12:
  v11 = lazy protocol witness table accessor for type _LocaleICU and conformance _LocaleICU(v14, 255, v15);
  LOBYTE(v78) = v5;
  v96[0] = 0uLL;
  v88 = 0uLL;
  *&v80 = 0;
  BYTE8(v80) = 1;
  v16 = (*(v11 + 16))(&v78, v96, &v88, 0, 1, 0, 1, &v80, v13, v11);
  os_unfair_lock_lock((v6 + 24));
  v17 = *(v6 + 16);
  if (*(v17 + 16))
  {
    v18 = specialized __RawDictionaryStorage.find<A>(_:)(v5);
    if (v19)
    {
      v20 = (*(v17 + 56) + 16 * v18);
      v12 = *v20;
      v11 = v20[1];
LABEL_42:
      swift_unknownObjectRetain();
      os_unfair_lock_unlock((v6 + 24));
      swift_unknownObjectRelease();
LABEL_43:
      ObjectType = swift_getObjectType();
      v47 = *(v3 + 136);
      v48 = *(v3 + 168);
      v94 = *(v3 + 152);
      v95[0] = v48;
      *(v95 + 12) = *(v3 + 180);
      v49 = *(v3 + 72);
      v50 = *(v3 + 104);
      v90 = *(v3 + 88);
      v91 = v50;
      v92 = *(v3 + 120);
      v93 = v47;
      v88 = *(v3 + 56);
      v89 = v49;
      v51 = *(v3 + 136);
      v52 = *(v3 + 168);
      v100 = *(v3 + 152);
      v101[0] = v52;
      *(v101 + 12) = *(v3 + 180);
      v53 = *(v3 + 72);
      v54 = *(v3 + 104);
      v96[2] = *(v3 + 88);
      v97 = v54;
      v98 = *(v3 + 120);
      v99 = v51;
      v96[0] = *(v3 + 56);
      v96[1] = v53;
      result = _s10Foundation17LocalePreferencesVSgWOg(v96);
      if (result == 1)
      {
LABEL_62:
        *a1 = v12;
        a1[1] = v11;
        return result;
      }

      v55 = v97;
      if (v97 && *(v97 + 16) && (v56 = specialized __RawDictionaryStorage.find<A>(_:)(*(v3 + 48)), (v57 & 1) != 0))
      {
        v58 = 0;
        v59 = *(*(v55 + 56) + 8 * v56);
        v60 = *(&v97 + 1);
        if (!*(&v97 + 1))
        {
          goto LABEL_57;
        }
      }

      else
      {
        v59 = 0;
        v58 = 1;
        v60 = *(&v97 + 1);
        if (!*(&v97 + 1))
        {
          goto LABEL_57;
        }
      }

      if (*(v60 + 16))
      {
        v61 = specialized __RawDictionaryStorage.find<A>(_:)(*(v3 + 48));
        if (v62)
        {
          v63 = 0;
          v64 = *(*(v60 + 56) + 8 * v61);
          if (v58)
          {
            goto LABEL_58;
          }

          goto LABEL_53;
        }
      }

LABEL_57:
      v64 = 0;
      v63 = 1;
      if (v58)
      {
LABEL_58:
        v86 = v94;
        v87[0] = v95[0];
        *(v87 + 12) = *(v95 + 12);
        v82 = v90;
        v83 = v91;
        v84 = v92;
        v85 = v93;
        v80 = v88;
        v81 = v89;
        outlined init with copy of LocalePreferences(&v80, &v78);
        if (!v63)
        {
          goto LABEL_59;
        }

        goto LABEL_60;
      }

LABEL_53:
      v76 = v64;
      v65 = a1;
      v66 = *(v11 + 56);
      v86 = v94;
      v87[0] = v95[0];
      *(v87 + 12) = *(v95 + 12);
      v82 = v90;
      v83 = v91;
      v84 = v92;
      v85 = v93;
      v80 = v88;
      v81 = v89;
      outlined init with copy of LocalePreferences(&v80, &v78);
      if (v59 != v66(ObjectType, v11))
      {
        v78 = 0;
        v79 = 0;
        v77[0] = 0;
        v77[1] = 0;
        v67 = (*(v11 + 112))(&v78, v77, v59, 0, 0, 1, ObjectType, v11);
        v11 = v68;
        swift_unknownObjectRelease();
        v12 = v67;
      }

      a1 = v65;
      v64 = v76;
      if (!v63)
      {
LABEL_59:
        v69 = swift_getObjectType();
        if (v64 != (*(v11 + 72))(v69, v11))
        {
          v80 = 0uLL;
          v78 = 0;
          v79 = 0;
          v70 = (*(v11 + 112))(&v80, &v78, 0, 1, v64, 0, v69, v11);
          v11 = v71;
          outlined destroy of TermOfAddress?(&v88, &_s10Foundation17LocalePreferencesVSgMd);
          result = swift_unknownObjectRelease();
          v12 = v70;
          goto LABEL_62;
        }
      }

LABEL_60:
      result = outlined destroy of TermOfAddress?(&v88, &_s10Foundation17LocalePreferencesVSgMd);
      goto LABEL_62;
    }
  }

  v75 = a1;
  swift_unknownObjectRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v96[0] = *(v6 + 16);
  v22 = *&v96[0];
  v23 = specialized __RawDictionaryStorage.find<A>(_:)(v5);
  v25 = *(v22 + 16);
  v26 = (v24 & 1) == 0;
  v27 = __OFADD__(v25, v26);
  v28 = v25 + v26;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    v2 = v24;
    if (*(v22 + 24) < v28)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v28, isUniquelyReferenced_nonNull_native);
      v29 = *&v96[0];
      v23 = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if ((v2 & 1) == (v30 & 1))
      {
        goto LABEL_21;
      }

      v23 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v29 = v22;
LABEL_21:
      a1 = v75;
      if (v2)
      {
LABEL_22:
        v31 = (*(v29 + 56) + 16 * v23);
        *v31 = v16;
        v31[1] = v11;
        swift_unknownObjectRelease();
LABEL_41:
        *(v6 + 16) = v29;
        v12 = v16;
        goto LABEL_42;
      }

LABEL_40:
      specialized _NativeDictionary._insert(at:key:value:)(v23, v5, v16, v29, v13, v11);
      goto LABEL_41;
    }
  }

  v72 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation8CalendarV10IdentifierOAC01_D8Protocol_pGMd);
  v32 = static _DictionaryStorage.copy(original:)();
  v29 = v32;
  if (!*(v22 + 16))
  {
LABEL_39:

    v23 = v72;
    a1 = v75;
    if (v2)
    {
      goto LABEL_22;
    }

    goto LABEL_40;
  }

  result = (v32 + 64);
  v34 = (v22 + 64);
  v35 = ((1 << *(v29 + 32)) + 63) >> 6;
  if (v29 != v22 || result >= &v34[8 * v35])
  {
    result = memmove(result, v34, 8 * v35);
  }

  v36 = 0;
  *(v29 + 16) = *(v22 + 16);
  v37 = 1 << *(v22 + 32);
  v38 = -1;
  if (v37 < 64)
  {
    v38 = ~(-1 << v37);
  }

  v39 = v38 & *(v22 + 64);
  v40 = (v37 + 63) >> 6;
  v73 = v40;
  if (v39)
  {
    do
    {
      v41 = __clz(__rbit64(v39));
      v74 = (v39 - 1) & v39;
LABEL_37:
      v44 = v41 | (v36 << 6);
      v45 = *(*(v22 + 56) + 16 * v44);
      *(*(v29 + 48) + v44) = *(*(v22 + 48) + v44);
      *(*(v29 + 56) + 16 * v44) = v45;
      result = swift_unknownObjectRetain();
      v40 = v73;
      v39 = v74;
    }

    while (v74);
  }

  v42 = v36;
  while (1)
  {
    v36 = v42 + 1;
    if (__OFADD__(v42, 1))
    {
      break;
    }

    if (v36 >= v40)
    {
      goto LABEL_39;
    }

    v43 = *(v22 + 64 + 8 * v36);
    ++v42;
    if (v43)
    {
      v41 = __clz(__rbit64(v43));
      v74 = (v43 - 1) & v43;
      goto LABEL_37;
    }
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for _ObjectiveCBridgeable._bridgeToObjectiveC() in conformance Calendar()
{
  v1 = *(v0 + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 216))(ObjectType, v1);
}

Swift::Int __swiftcall _NSSwiftCalendar.component(_:from:)(NSCalendarUnit _, Foundation::Date from)
{
  _fromNSCalendarUnit(_:)(_, &v9);
  v3 = v9;
  if (v9 == 19)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v5 = *(v2 + OBJC_IVAR____NSSwiftCalendar__lock);
  os_unfair_lock_lock((v5 + 32));
  *&froma[0]._time = *(v5 + 16);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v5 + 32));
  v9 = *&froma[0]._time;
  v8 = v3;
  v6 = Calendar.component(_:from:)(&v8, froma[0]);
  swift_unknownObjectRelease();
  return v6;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

void *Calendar.dateComponents(_:from:to:)@<X0>(uint64_t a1@<X0>, double *a2@<X1>, double *a3@<X2>, void *a4@<X8>)
{
  v7 = *a2;
  v8 = *a3;
  v10 = *v4;
  v9 = v4[1];

  Calendar.ComponentSet.init(_:)(v11, v17);
  if (one-time initialization token for validCalendarRange != -1)
  {
    swift_once();
  }

  v12 = *(&static Date.validCalendarRange + 1);
  if (*(&static Date.validCalendarRange + 1) >= v7)
  {
    v13 = v7;
  }

  else
  {
    v13 = *(&static Date.validCalendarRange + 1);
  }

  if (*&static Date.validCalendarRange >= v13)
  {
    v13 = *&static Date.validCalendarRange;
  }

  v19 = v13;
  if (*(&static Date.validCalendarRange + 1) >= v8)
  {
    v12 = v8;
  }

  if (*&static Date.validCalendarRange >= v12)
  {
    v14 = *&static Date.validCalendarRange;
  }

  else
  {
    v14 = v12;
  }

  ObjectType = swift_getObjectType();
  v18 = v14;
  (*(v9 + 208))(__src, v17, &v19, &v18, ObjectType, v9);
  if (specialized Set.contains(_:)(0xEu, a1))
  {
    __src[0] = v10;
    __src[1] = v9;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    if (__src[2])
    {
      if (v10)
      {
        v17[0] = __src[2];
        v17[1] = __src[3];
        swift_unknownObjectRetain();
        Calendar.timeZone.setter(v17);
      }
    }
  }

  return memcpy(a4, __src, 0x11BuLL);
}

unint64_t sub_1808CFD04(unsigned __int8 *a1, uint64_t a2)
{
  if (a2)
  {
    v2 = a1;
    v3 = *a1;
    if (v3 == 43)
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

            result = 0;
            v17 = !is_mul_ok(v14, 0xAuLL);
            v18 = 10 * v14;
            v11 = __CFADD__(v18, v16);
            v14 = v18 + v16;
            v19 = v11;
            if (!v17 && (v19 & 1) == 0)
            {
              ++v13;
              result = v14;
              if (--v15)
              {
                continue;
              }
            }

            return result;
          }

          return 0;
        }

        return 0;
      }
    }

    else
    {
      if (v3 != 45)
      {
        if (a2 >= 1)
        {
          v20 = 0;
          v21 = &a1[a2];
          while (1)
          {
            v22 = *v2 - 48;
            if (v22 > 9)
            {
              break;
            }

            result = 0;
            v23 = !is_mul_ok(v20, 0xAuLL);
            v24 = 10 * v20;
            v11 = __CFADD__(v24, v22);
            v20 = v24 + v22;
            v25 = v11;
            if (!v23 && (v25 & 1) == 0)
            {
              ++v2;
              result = v20;
              if (v2 < v21)
              {
                continue;
              }
            }

            return result;
          }

          return 0;
        }

        return 0;
      }

      if (a2 >= 2)
      {
        v4 = a1 + 1;
        if (a1 + 1 < &a1[a2])
        {
          v5 = 0;
          v6 = a2 - 1;
          while (1)
          {
            v7 = *v4 - 48;
            if (v7 > 9)
            {
              break;
            }

            result = 0;
            v9 = !is_mul_ok(v5, 0xAuLL);
            v10 = 10 * v5;
            v11 = v10 >= v7;
            v5 = v10 - v7;
            v12 = !v11;
            if (!v9 && (v12 & 1) == 0)
            {
              ++v4;
              result = v5;
              if (--v6)
              {
                continue;
              }
            }

            return result;
          }

          return 0;
        }

        return 0;
      }
    }
  }

  return 0;
}

uint64_t Calendar.date(from:)(void *__src)
{
  memcpy(v5, __src, 0x11BuLL);
  v2 = *(v1 + 8);
  ObjectType = swift_getObjectType();
  return (*(v2 + 176))(v5, ObjectType, v2);
}

void Calendar.init(identifier:)(unsigned __int8 *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = *a1;
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v5 = qword_1ED440450;
  os_unfair_lock_lock((qword_1ED440450 + 24));
  v6 = *(v5 + 16);
  if (*(v6 + 16) && (v7 = specialized __RawDictionaryStorage.find<A>(_:)(v4), (v8 & 1) != 0))
  {
    v48 = *(*(v6 + 56) + 16 * v7);
    v9 = *(*(v6 + 56) + 16 * v7);
    swift_unknownObjectRetain();
    os_unfair_lock_unlock((v5 + 24));
    if (v9)
    {
LABEL_44:
      *a2 = v48;
      return;
    }

    if (!v4)
    {
      goto LABEL_10;
    }
  }

  else
  {
    os_unfair_lock_unlock((v5 + 24));
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  if (v4 != 7)
  {
    v10 = type metadata accessor for _CalendarICU();
    v11 = &lazy protocol witness table cache variable for type _CalendarICU and conformance _CalendarICU;
    v12 = type metadata accessor for _CalendarICU;
    goto LABEL_12;
  }

LABEL_10:
  v10 = type metadata accessor for _CalendarGregorian();
  v11 = &lazy protocol witness table cache variable for type _CalendarGregorian and conformance _CalendarGregorian;
  v12 = type metadata accessor for _CalendarGregorian;
LABEL_12:
  v13 = lazy protocol witness table accessor for type _CalendarAutoupdating and conformance _CalendarAutoupdating(v11, v12);
  v54 = v4;
  v53[0] = 0;
  v53[1] = 0;
  v52[0] = 0;
  v52[1] = 0;
  v50 = 0;
  v51 = 1;
  v14 = (*(v13 + 16))(&v54, v53, v52, 0, 1, 0, 1, &v50, v10, v13);
  os_unfair_lock_lock((v5 + 24));
  v15 = *(v5 + 16);
  if (*(v15 + 16))
  {
    v16 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
    if (v17)
    {
      v18 = *(*(v15 + 56) + 16 * v16);
LABEL_43:
      v48 = v18;
      swift_unknownObjectRetain();
      os_unfair_lock_unlock((v5 + 24));
      swift_unknownObjectRelease();
      goto LABEL_44;
    }
  }

  swift_unknownObjectRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v53[0] = *(v5 + 16);
  v20 = v53[0];
  v21 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
  v23 = *(v20 + 16);
  v24 = (v22 & 1) == 0;
  v25 = __OFADD__(v23, v24);
  v26 = v23 + v24;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    v2 = v22;
    if (*(v20 + 24) < v26)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v26, isUniquelyReferenced_nonNull_native);
      v27 = v53[0];
      v21 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
      if ((v2 & 1) == (v28 & 1))
      {
        goto LABEL_21;
      }

      v21 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v27 = v20;
LABEL_21:
      if (v2)
      {
LABEL_22:
        v29 = (*(v27 + 56) + 16 * v21);
        *v29 = v14;
        v29[1] = v13;
        swift_unknownObjectRelease();
LABEL_42:
        *(v5 + 16) = v27;
        *&v18 = v14;
        *(&v18 + 1) = v13;
        goto LABEL_43;
      }

      goto LABEL_40;
    }
  }

  v47 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation8CalendarV10IdentifierOAC01_D8Protocol_pGMd);
  v30 = static _DictionaryStorage.copy(original:)();
  v27 = v30;
  if (*(v20 + 16))
  {
    v31 = (v30 + 64);
    v32 = (v20 + 64);
    v33 = ((1 << *(v27 + 32)) + 63) >> 6;
    if (v27 != v20 || v31 >= &v32[8 * v33])
    {
      memmove(v31, v32, 8 * v33);
    }

    v34 = 0;
    *(v27 + 16) = *(v20 + 16);
    v35 = 1 << *(v20 + 32);
    v36 = -1;
    if (v35 < 64)
    {
      v36 = ~(-1 << v35);
    }

    v37 = v36 & *(v20 + 64);
    v38 = (v35 + 63) >> 6;
    if (v37)
    {
      do
      {
        v39 = __clz(__rbit64(v37));
        v49 = (v37 - 1) & v37;
LABEL_37:
        v42 = v39 | (v34 << 6);
        v43 = *(*(v20 + 56) + 16 * v42);
        *(*(v27 + 48) + v42) = *(*(v20 + 48) + v42);
        *(*(v27 + 56) + 16 * v42) = v43;
        swift_unknownObjectRetain();
        v37 = v49;
      }

      while (v49);
    }

    v40 = v34;
    while (1)
    {
      v34 = v40 + 1;
      if (__OFADD__(v40, 1))
      {
        goto LABEL_46;
      }

      if (v34 >= v38)
      {
        break;
      }

      v41 = *(v20 + 64 + 8 * v34);
      ++v40;
      if (v41)
      {
        v39 = __clz(__rbit64(v41));
        v49 = (v41 - 1) & v41;
        goto LABEL_37;
      }
    }
  }

  v21 = v47;
  if (v2)
  {
    goto LABEL_22;
  }

LABEL_40:
  *(v27 + 8 * (v21 >> 6) + 64) |= 1 << v21;
  *(*(v27 + 48) + v21) = v4;
  v44 = (*(v27 + 56) + 16 * v21);
  *v44 = v14;
  v44[1] = v13;
  v45 = *(v27 + 16);
  v25 = __OFADD__(v45, 1);
  v46 = v45 + 1;
  if (!v25)
  {
    *(v27 + 16) = v46;
    goto LABEL_42;
  }

  __break(1u);
LABEL_46:
  __break(1u);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance String.LocalizationValue.FormatArgument.CodableStorage.AttributedStringCodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1865CD060](v1);
  return Hasher._finalize()();
}

uint64_t static Locale.autoupdatingCurrent.getter@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for _LocaleAutoupdating();
  inited = swift_initStaticObject();
  result = _s10Foundation10_LocaleICUCAcA01_B8ProtocolAAWlTm_0(&lazy protocol witness table cache variable for type _LocaleAutoupdating and conformance _LocaleAutoupdating, type metadata accessor for _LocaleAutoupdating);
  *a1 = inited;
  a1[1] = result;
  return result;
}

id _BridgedStoredNSError.init(_bridgedNSError:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = [a1 domain];
  if (!v8)
  {
    goto LABEL_11;
  }

  v9 = v8;
  isTaggedPointer = _objc_isTaggedPointer(v8);
  v11 = v9;
  v12 = v11;
  if (!isTaggedPointer)
  {
    goto LABEL_7;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v11);
  if (!TaggedPointerTag)
  {
    goto LABEL_15;
  }

  if (TaggedPointerTag != 22)
  {
    if (TaggedPointerTag == 2)
    {
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      v14 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v16 = v15;

      goto LABEL_22;
    }

LABEL_7:
    if (__CFStringIsCF())
    {

LABEL_11:
      v14 = 0;
      v16 = 0xE000000000000000;
      goto LABEL_22;
    }

    v17 = v12;
    v18 = String.init(_nativeStorage:)();
    if (v19)
    {
      v14 = v18;
      v16 = v19;

      goto LABEL_22;
    }

    if (![v17 length])
    {

      goto LABEL_11;
    }

    v14 = String.init(_cocoaString:)();
    v16 = v23;
LABEL_21:

LABEL_22:
    if (v14 == (*(*(a3 + 8) + 16))(a2) && v16 == v24)
    {
    }

    else
    {
      v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v26 & 1) == 0)
      {

        v27 = 1;
        return (*(*(a2 - 8) + 56))(a4, v27, 1, a2);
      }
    }

    (*(a3 + 72))(a1, a2, a3);
    v27 = 0;
    return (*(*(a2 - 8) + 56))(a4, v27, 1, a2);
  }

  result = [v12 UTF8String];
  if (result)
  {
    v21 = String.init(utf8String:)(result);
    if (v22)
    {
LABEL_16:
      v14 = v21;
      v16 = v22;

      goto LABEL_21;
    }

    __break(1u);
LABEL_15:
    _CFIndirectTaggedPointerStringGetContents();
    v21 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v22)
    {
      [v12 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v14 = v28;
      v16 = v29;
      goto LABEL_21;
    }

    goto LABEL_16;
  }

  __break(1u);
  return result;
}

BOOL _bridgeNSErrorToError<A>(_:out:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - v10;
  v12 = *(a3 - 8);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a4 + 16))(a1, a3, a4, v14);
  v17 = (*(v12 + 48))(v11, 1, a3);
  if (v17 == 1)
  {
    (*(v9 + 8))(v11, v8);
  }

  else
  {
    v18 = *(v12 + 32);
    v18(v16, v11, a3);
    v18(a2, v16, a3);
  }

  return v17 != 1;
}

uint64_t _BridgedStoredNSError.code.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v15 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v6 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v6);
  v7 = type metadata accessor for Optional();
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v15 - v9;
  v11 = (*(a2 + 64))(a1, a2, v8);
  v12 = [v11 code];

  swift_getAssociatedConformanceWitness();
  if (dispatch thunk of static BinaryInteger.isSigned.getter())
  {
    v16 = v12;
    lazy protocol witness table accessor for type Int and conformance Int();
  }

  else
  {
    v16 = v12;
    lazy protocol witness table accessor for type UInt and conformance UInt();
  }

  dispatch thunk of BinaryInteger.init<A>(_:)();
  dispatch thunk of RawRepresentable.init(rawValue:)();
  v13 = *(AssociatedTypeWitness - 8);
  result = (*(v13 + 48))(v10, 1, AssociatedTypeWitness);
  if (result != 1)
  {
    return (*(v13 + 32))(v15, v10, AssociatedTypeWitness);
  }

  __break(1u);
  return result;
}

uint64_t __DataStorage.init(bytes:length:copy:deallocator:offset:)(unint64_t a1, uint64_t a2, char a3, void (*a4)(unint64_t, uint64_t), uint64_t a5, uint64_t a6)
{
  *(v7 + 16) = 0;
  v10 = (v7 + 16);
  *(v7 + 48) = 0;
  *(v7 + 56) = 0;
  if (a2 > 0x3FFFFFFFFFFFFFFELL)
  {
    __break(1u);
LABEL_21:
    swift_once();
    goto LABEL_5;
  }

  v6 = a4;
  v9 = a2;
  v8 = a1;
  *(v7 + 40) = a6;
  if (!a2)
  {
    goto LABEL_10;
  }

  if ((a3 & 1) == 0)
  {
    *(v7 + 24) = a2;
    *(v7 + 32) = a2;
    *(v7 + 64) = 0;
    *(v7 + 16) = a1;
    *(v7 + 48) = a4;
    *(v7 + 56) = a5;
    return v7;
  }

  if (one-time initialization token for vmOpsThreshold != -1)
  {
    goto LABEL_21;
  }

LABEL_5:
  if (static __DataStorage.vmOpsThreshold > v9)
  {
    *(v7 + 24) = v9;
    v12 = 0;
    _So30malloc_type_layout_semantics_ta_generic_data_setter(&v12 + 1);
    result = malloc_type_malloc(v9, v12 << 32);
    if (result)
    {
      *(v7 + 16) = result;
      *(v7 + 32) = v9;
      *(v7 + 64) = 1;
      specialized static __DataStorage.move(_:_:_:)(result, v8, v9);
      if (v6)
      {
        if (!v8)
        {
          __break(1u);
LABEL_10:
          *(v7 + 64) = 0;
          *(v7 + 24) = 0;
          *(v7 + 32) = 0;
          *v10 = 0;
          if (v6)
          {
            if (v8)
            {
              v6(v8, 0);
            }

            outlined consume of (@escaping @callee_guaranteed (@in_guaranteed URL, @guaranteed Error) -> (@unowned Bool))?(v6);
          }

          return v7;
        }

        goto LABEL_18;
      }

      return v7;
    }

    __break(1u);
    goto LABEL_23;
  }

  *(v7 + 24) = v9;
  *(v7 + 32) = v9;
  *(v7 + 64) = 1;
  v13 = 0;
  _So30malloc_type_layout_semantics_ta_generic_data_setter(&v13 + 1);
  result = malloc_type_malloc(v9, v13 << 32);
  if (!result)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  *v10 = result;
  result = specialized static __DataStorage.move(_:_:_:)(result, v8, v9);
  if (!v6)
  {
    return v7;
  }

  if (v8)
  {
LABEL_18:
    v6(v8, v9);
    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed URL, @guaranteed Error) -> (@unowned Bool))?(v6);
    return v7;
  }

LABEL_24:
  __break(1u);
  return result;
}

uint64_t Data._Representation.subscript.getter(uint64_t result, uint64_t a2, unint64_t a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a3 >> 62;
  if ((a3 >> 62) <= 1)
  {
    if (!v3)
    {
      if (result < BYTE6(a3))
      {
        v9 = a2;
        v10 = a3;
        v11 = BYTE2(a3);
        v12 = BYTE3(a3);
        v13 = BYTE4(a3);
        v14 = BYTE5(a3);
        return *(&v9 + result);
      }

      __break(1u);
      goto LABEL_19;
    }

LABEL_12:
    if (result >= a2 >> 32 || a2 > result)
    {
      goto LABEL_20;
    }

    v4 = *((a3 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    if (v4)
    {
      v8 = *((a3 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
      v6 = __OFSUB__(result, v8);
      v7 = result - v8;
      if (v6)
      {
        goto LABEL_22;
      }

      return *(v4 + v7);
    }

    goto LABEL_24;
  }

  if (v3 != 2)
  {
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    return result;
  }

  if (*(a2 + 16) > result)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (*(a2 + 24) <= result)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }

  v4 = *((a3 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  if (!v4)
  {
    goto LABEL_25;
  }

  v5 = *((a3 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
  v6 = __OFSUB__(result, v5);
  v7 = result - v5;
  if (v6)
  {
    __break(1u);
    goto LABEL_12;
  }

  return *(v4 + v7);
}

void *destructiveInjectEnumTag for LoadedScopeCache.ScopeType(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

unint64_t Data.Deallocator._deallocator.getter()
{
  v1 = *v0;
  if (*v0 >= 4)
  {
    v2 = *v0;
  }

  else
  {
    v2 = *(&off_1EEEE5A90 + v1);
  }

  outlined copy of Data.Deallocator(v1);
  return v2;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV11DeallocatorO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t NSKeyValueObservedChange.newValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = type metadata accessor for Optional();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t @objc NSObject.__NS_swiftOverlay_automaticallyNotifiesObserversForKey(_:original:)(void *a1, int a2, void *a3, void *aBlock)
{
  v6 = _Block_copy(aBlock);
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)(a3);
  v9 = v8;
  _Block_copy(v6);
  v10 = a1;
  LOBYTE(v7) = specialized NSObject.__NS_swiftOverlay_automaticallyNotifiesObserversForKey(_:original:)(v7, v9, v10, v6);
  _Block_release(v6);
  _Block_release(v6);

  return v7 & 1;
}

uint64_t specialized NSObject.__NS_swiftOverlay_automaticallyNotifiesObserversForKey(_:original:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSObject);
  v8 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation32NSKeyValueObservingCustomization_pXpMd);
  if (swift_dynamicCast() && specialized static __KVOKeyPathBridgeMachinery._bridgeKeyPath(_:)(a1, a2))
  {
    v9 = (*(v12 + 16))();
  }

  else
  {
    v10 = String._bridgeToObjectiveCImpl()();
    v9 = (*(a4 + 16))(a4, v10);
    swift_unknownObjectRelease();
  }

  return v9 & 1;
}

id URL.resourceValues(forKeys:)@<X0>(uint64_t a1@<X0>, SEL *a2@<X1>, void *a3@<X8>)
{
  v20[5] = *MEMORY[0x1E69E9840];
  v7 = *(v3 + 8);
  ObjectType = swift_getObjectType();
  v9 = (*(v7 + 432))(ObjectType, v7);
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi_Tt1g5Tm(v10, 0, &_ss23_ContiguousArrayStorageCySo16NSURLResourceKeyaGMd);
    v12 = specialized Sequence._copyContents(initializing:)(v20, v11 + 4, v10, a1);

    outlined consume of Set<AnyKeyPath>.Iterator._Variant();
    if (v12 != v10)
    {
      __break(1u);
      goto LABEL_12;
    }
  }

  type metadata accessor for NSURLResourceKey(0);
  v13 = _ContiguousArrayBuffer._asCocoaArray()();
  v20[0] = 0;
  v14 = [v9 *a2];

  swift_unknownObjectRelease();
  v15 = v20[0];
  if (!v14)
  {
    if (v20[0])
    {
      v20[0];
      return swift_willThrow();
    }

    if (one-time initialization token for _nilObjCError == -1)
    {
LABEL_9:
      v19 = _nilObjCError;
      return swift_willThrow();
    }

LABEL_12:
    swift_once();
    goto LABEL_9;
  }

  v20[0] = 0;
  v16 = v15;
  result = _sSD10FoundationE26_forceBridgeFromObjectiveC_6resultySo12NSDictionaryC_SDyxq_GSgztFZSo16NSURLResourceKeya_ypTt1g5(v14, v20);
  v18 = v20[0];
  if (v20[0])
  {

    *a3 = v18;
    a3[1] = a1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t URLResourceValues.creationDate.getter@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  if (*(v4 + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(*a1), (v6 & 1) != 0))
  {
    outlined init with copy of Any(*(v4 + 56) + 32 * v5, v8);
  }

  else
  {
    memset(v8, 0, sizeof(v8));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    *a2 = 0;
  }

  *(a2 + 8) = result ^ 1;
  return result;
}

uint64_t closure #1 in NSObject.KVOSubscription.init(_:_:_:_:)()
{
  result = swift_weakLoadStrong();
  if (result)
  {
    NSObject.KVOSubscription.changes()();
  }

  return result;
}

uint64_t NSObject.KVOSubscription.changes()()
{
  v34 = *v0;
  v1 = v34;
  v2 = *(v34 + 96);
  v3 = type metadata accessor for Optional();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v31 - v5;
  v35 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v31 - v8;
  v10 = *(v1 + 88);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v31 - v13;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v32 = v11;
    v33 = v10;
    v36 = result;
    v16 = result;
    swift_getAtKeyPath();

    v17 = *&v0[*(*v0 + 176)];
    os_unfair_lock_lock(v17);
    v18 = *(v0 + 3);
    static Subscribers.Demand.unlimited.getter();
    result = static Subscribers.Demand.== infix(_:_:)();
    if ((result & 1) == 0)
    {
      if (v18 < 0)
      {
        __break(1u);
        goto LABEL_31;
      }

      if (!v18)
      {
LABEL_7:
        v21 = v32;
        v20 = v33;
        if ((v0[32] & 1) == 0 && (v0[*(*v0 + 160)] & 4) != 0)
        {
          v22 = *(*v0 + 136);
          v23 = type metadata accessor for Optional();
          (*(*(v23 - 8) + 8))(&v0[v22], v23);
          (*(v21 + 16))(&v0[v22], v14, v20);
          (*(v21 + 56))(&v0[v22], 0, 1, v20);
          v0[32] = 1;
        }

        os_unfair_lock_unlock(v17);

        return (*(v21 + 8))(v14, v20);
      }
    }

    (*(v4 + 16))(v6, &v0[*(*v0 + 144)], v3);
    v19 = v35;
    if ((*(v35 + 48))(v6, 1, v2) == 1)
    {
      (*(v4 + 8))(v6, v3);
      goto LABEL_7;
    }

    (*(v19 + 32))(v9, v6, v2);
    v24 = *(v0 + 3);
    static Subscribers.Demand.unlimited.getter();
    if (static Subscribers.Demand.== infix(_:_:)())
    {
      goto LABEL_18;
    }

    static Subscribers.Demand.unlimited.getter();
    result = static Subscribers.Demand.== infix(_:_:)();
    if (result)
    {
      v25 = static Subscribers.Demand.unlimited.getter();
LABEL_17:
      *(v0 + 3) = v25;
LABEL_18:
      os_unfair_lock_unlock(v17);
      os_unfair_recursive_lock_lock_with_options();
      v26 = v0;
      v27 = dispatch thunk of Subscriber.receive(_:)();
      os_unfair_recursive_lock_unlock();
      os_unfair_lock_lock(v17);
      v28 = *(v26 + 3);
      static Subscribers.Demand.unlimited.getter();
      if (static Subscribers.Demand.== infix(_:_:)())
      {
LABEL_27:
        os_unfair_lock_unlock(v17);

        (*(v35 + 8))(v9, v2);
        v21 = v32;
        v20 = v33;
        return (*(v21 + 8))(v14, v20);
      }

      static Subscribers.Demand.unlimited.getter();
      v29 = static Subscribers.Demand.== infix(_:_:)();
      v30 = static Subscribers.Demand.unlimited.getter();
      if (v29)
      {
LABEL_26:
        *(v26 + 3) = v30;
        goto LABEL_27;
      }

      result = static Subscribers.Demand.== infix(_:_:)();
      if (result)
      {
LABEL_24:
        v30 = static Subscribers.Demand.unlimited.getter();
        goto LABEL_26;
      }

      if (((v28 | v27) & 0x8000000000000000) == 0)
      {
        v30 = v28 + v27;
        if (!__OFADD__(v28, v27))
        {
          if ((v30 & 0x8000000000000000) == 0)
          {
            goto LABEL_26;
          }

LABEL_34:
          __break(1u);
          return result;
        }

        goto LABEL_24;
      }

LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    if ((v24 & 0x8000000000000000) == 0)
    {
      if (v24)
      {
        v25 = v24 - 1;
        goto LABEL_17;
      }

LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  return result;
}

uint64_t one-time initialization function for _nilObjCError()
{
  lazy protocol witness table accessor for type _GenericObjCError and conformance _GenericObjCError();
  result = swift_allocError();
  _nilObjCError = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type _GenericObjCError and conformance _GenericObjCError()
{
  result = lazy protocol witness table cache variable for type _GenericObjCError and conformance _GenericObjCError;
  if (!lazy protocol witness table cache variable for type _GenericObjCError and conformance _GenericObjCError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _GenericObjCError and conformance _GenericObjCError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _GenericObjCError and conformance _GenericObjCError;
  if (!lazy protocol witness table cache variable for type _GenericObjCError and conformance _GenericObjCError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _GenericObjCError and conformance _GenericObjCError);
  }

  return result;
}

uint64_t StringProtocol.range<A>(of:options:range:locale:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, int a5, unint64_t *a6, uint64_t a7, uint64_t a8, char *a9, unint64_t a10)
{
  v117 = a7;
  v114 = a5;
  v111 = a4;
  v112 = a3;
  v113 = a1;
  v115 = a10;
  v116 = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexV5MatchVyAA03AnyC6OutputV_GSgMd);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v96 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexV5MatchVyAA03AnyC6OutputV_GMd);
  v110 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v96 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = v96 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexVyAA03AnyC6OutputVGSgMd);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = v96 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexVyAA03AnyC6OutputVGMd);
  MEMORY[0x1EEE9AC00](v26);
  MEMORY[0x1EEE9AC00](v27);
  MEMORY[0x1EEE9AC00](v28);
  MEMORY[0x1EEE9AC00](v29);
  v38 = v96 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = *a6;
  if (*a6)
  {
    v40 = a6[1];
    StringProtocol._ephemeralString.getter();
    StringProtocol._ephemeralString.getter();
    v41 = String._bridgeToObjectiveCImpl()();

    v42 = String._bridgeToObjectiveCImpl()();

    if (v114)
    {
      v16 = a9;
      v17 = v117;
      v43 = v118;
      dispatch thunk of Collection.startIndex.getter();
      v44 = v120;
      dispatch thunk of Collection.endIndex.getter();
      if (v119 >> 14 < v44 >> 14)
      {
        goto LABEL_48;
      }
    }

    v43 = v118;
    v16 = a9;
    v45 = StringProtocol._toUTF16Offsets(_:)();
    v47 = v46 - v45;
    if (__OFSUB__(v46, v45))
    {
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    v48 = v45;
    ObjectType = swift_getObjectType();
    v50 = (*(v40 + 488))(ObjectType, v40);
    v43 = [v41 rangeOfString:v42 options:v116 range:v48 locale:{v47, v50}];
    v39 = v51;
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

LABEL_26:
    if (v43 == 0x7FFFFFFFFFFFFFFFLL)
    {
      return 0;
    }

    if (!__OFADD__(v43, v39))
    {
      return StringProtocol._toUTF16Indices(_:)();
    }

    goto LABEL_47;
  }

  v108 = v32;
  v106 = v25;
  v102 = v31;
  v98 = v36;
  v109 = v35;
  v99 = v22;
  v97 = v19;
  v100 = v16;
  v101 = v13;
  v104 = v33;
  v105 = v34;
  v107 = v30;
  v52 = v114;
  if (v114)
  {
    v43 = v118;
    v103 = v17;
    v39 = *(*(a9 + 1) + 8);
    dispatch thunk of Collection.startIndex.getter();
    v16 = v120;
    dispatch thunk of Collection.endIndex.getter();
    if (v119 >> 14 < v16 >> 14)
    {
LABEL_49:
      __break(1u);
LABEL_50:
      swift_once();
LABEL_16:
      v66 = static RegexPatternCache.cache;

      v67 = MEMORY[0x1865CAE80](v43, v39, v103, v16);
      v96[1] = v16;
      v103 = v96;
      MEMORY[0x1EEE9AC00](v67);
      os_unfair_lock_lock((v66 + 24));
      v68 = v106;
      partial apply for closure #1 in RegexPatternCache.regex(for:caseInsensitive:)((v66 + 16), v106);
      os_unfair_lock_unlock((v66 + 24));

      v77 = v105;
      v78 = (*(v105 + 48))(v68, 1, v107);
      if (v78 == 1)
      {

        outlined destroy of TermOfAddress?(v68, &_s17_StringProcessing5RegexVyAA03AnyC6OutputVGSgMd);
        return 0;
      }

      (*(v77 + 32))(v104, v68, v107);
      if ((v116 & 8) != 0)
      {
        lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type Regex<AnyRegexOutput> and conformance Regex<A>, &_s17_StringProcessing5RegexVyAA03AnyC6OutputVGMd);
        v83 = v102;
        dispatch thunk of RegexComponent.regex.getter();
        result = v96[0];
        v84 = v110;
        if (v115 >> 14 >= v96[0] >> 14)
        {
          v85 = v17;
          Substring.subscript.getter();
          v86 = v100;
          Regex.prefixMatch(in:)();
          v87 = v99;
          v92 = *(v105 + 8);
          v92(v83, v107);

          v93 = (*(v84 + 48))(v86, 1, v17);
          if (v93 == 1)
          {

            v92(v104, v107);
            outlined destroy of TermOfAddress?(v86, &_s17_StringProcessing5RegexV5MatchVyAA03AnyC6OutputV_GSgMd);
            return 0;
          }

          (*(v84 + 32))(v87, v86, v17);
          v95 = Regex.Match.range.getter();

          (*(v84 + 8))(v87, v85);
          v92(v104, v107);
          return v95;
        }

        goto LABEL_53;
      }

      v103 = v17;
      result = v96[0];
      if (v115 >> 14 >= v96[0] >> 14)
      {
        Substring.subscript.getter();
        lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type Regex<AnyRegexOutput> and conformance Regex<A>, &_s17_StringProcessing5RegexVyAA03AnyC6OutputVGMd);
        v80 = v98;
        dispatch thunk of RegexComponent.regex.getter();
        v81 = v101;
        Regex.firstMatch(in:)();
        v88 = *(v105 + 8);
        v88(v80, v107);

        v89 = v110;
        v90 = v103;
        v91 = (*(v110 + 48))(v81, 1, v103);
        if (v91 == 1)
        {

          v88(v104, v107);
          outlined destroy of TermOfAddress?(v81, &_s17_StringProcessing5RegexV5MatchVyAA03AnyC6OutputV_GSgMd);
          return 0;
        }

        v94 = v97;
        (*(v89 + 32))(v97, v81, v90);
        v95 = Regex.Match.range.getter();

        (*(v89 + 8))(v94, v90);
        v88(v104, v107);
        return v95;
      }

LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
      return result;
    }

    result = v16;
    v17 = v103;
    v54 = v113;
  }

  else
  {
    result = BidirectionalCollection<>._checkRange(_:)(v112, v111);
    v54 = v113;
    if (v55)
    {
      return result;
    }
  }

  v56 = StringProtocol._asContiguousUTF8Substring(from:)(result);
  if (!v59)
  {
    StringProtocol._ephemeralString.getter();
    if (v52)
    {
      StringProtocol._ephemeralString.getter();
      v69 = String._bridgeToObjectiveCImpl()();

      v70 = String._bridgeToObjectiveCImpl()();

      if (v116)
      {
        v71 = [v69 rangeOfString:v70 options:v116];
      }

      else
      {
        v71 = [v69 rangeOfString_];
      }
    }

    else
    {
      StringProtocol._ephemeralString.getter();
      v17 = v73;
      v74 = String._bridgeToObjectiveCImpl()();

      v75 = String._bridgeToObjectiveCImpl()();

      result = StringProtocol._toUTF16Offsets(_:)();
      if (__OFSUB__(v76, result))
      {
        __break(1u);
        goto LABEL_52;
      }

      v71 = [v74 rangeOfString:v75 options:v116 range:{result, v76 - result}];
    }

    v43 = v71;
    v39 = v72;
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    goto LABEL_26;
  }

  v60 = v56;
  v61 = v59;
  v113 = v58;
  v115 = v57;
  (*(v108 + 16))(v38, v54, v109);
  v62 = Substring.init<A>(_:)();
  v16 = v65;
  if ((v116 & 0x400) != 0)
  {
    v96[0] = v60;
    v108 = v61;
    v43 = v62;
    v39 = v63;
    v103 = v64;
    if (one-time initialization token for cache == -1)
    {
      goto LABEL_16;
    }

    goto LABEL_50;
  }

  if ((v60 ^ v115) < 0x4000 || !((v62 ^ v63) >> 14))
  {

    return 0;
  }

  if ((v116 & 2) != 0)
  {
    v79 = specialized _StringCompareOptionsIterable._range<A>(of:toHalfWidth:diacriticsInsensitive:caseFold:anchored:backwards:)(v62, v63, v64, v65, BYTE1(v116) & 1, (v116 & 0x80) != 0, v116 & 1, (v116 >> 3) & 1, (v116 & 4) != 0, v60, v115, v113, v61);
  }

  else
  {
    v79 = specialized _StringCompareOptionsIterable._range<A>(of:toHalfWidth:diacriticsInsensitive:caseFold:anchored:backwards:)(v62, v63, v64, v65, BYTE1(v116) & 1, (v116 & 0x80) != 0, v116 & 1, (v116 & 8) != 0, (v116 & 4) != 0, v60, v115);
  }

  v82 = v79;

  return v82;
}

void *IndexPath.init(arrayLiteral:)@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = result[2];
  if (v3 == 2)
  {
    v4 = result[4];
    v5 = result[5];

    v6 = 1;
  }

  else if (v3 == 1)
  {
    v4 = result[4];

    v5 = 0;
    v6 = 0;
  }

  else if (v3)
  {
    v5 = 0;
    v6 = 2;
    v4 = result;
  }

  else
  {

    v4 = 0;
    v5 = 0;
    v6 = 3;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  return result;
}

double static Date.timeIntervalSinceReferenceDate.getter()
{
  v2 = *MEMORY[0x1E69E9840];
  __tp.tv_sec = 0;
  __tp.tv_nsec = 0;
  clock_gettime(_CLOCK_REALTIME, &__tp);
  return __tp.tv_sec + -978307200.0 + __tp.tv_nsec * 0.000000001;
}

NSNumber __swiftcall Bool._bridgeToObjectiveC()()
{
  v1 = v0;
  v2 = objc_allocWithZone(NSNumber);

  return [v2 initWithBool_];
}

NSNumber __swiftcall UInt32._bridgeToObjectiveC()()
{
  v1 = v0;
  v2 = objc_allocWithZone(NSNumber);

  return [v2 initWithUnsignedInt_];
}

id NSString.init(stringLiteral:)(unint64_t a1, uint64_t a2, char a3)
{
  v9 = *MEMORY[0x1E69E9840];
  if ((a3 & 1) == 0)
  {
    if (!a1)
    {
      __break(1u);
      goto LABEL_14;
    }

    if ((a3 & 2) != 0)
    {
      v4 = 1;
    }

    else
    {
      v4 = 4;
    }

    result = [objc_allocWithZone(NSString) initWithBytesNoCopy:a1 length:a2 encoding:v4 freeWhenDone:0];
    if (result)
    {
      goto LABEL_12;
    }

    __break(1u);
  }

  if (HIDWORD(a1))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if ((a1 & 0xFFFFF800) == 0xD800)
  {
    goto LABEL_16;
  }

  if (a1 >> 16 > 0x10)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
  }

  v8 = a1;
  result = [objc_allocWithZone(NSString) initWithBytes:&v8 length:4 encoding:2348810496];
  if (result)
  {
LABEL_12:
    v6 = result;
    v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithString_];

    return v7;
  }

  __break(1u);
  return result;
}

void oq_end_waiting(NSMapTable *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  memset(&enumerator, 0, sizeof(enumerator));
  NSEnumerateMapTable(&enumerator, a1);
  __override = 0;
  key = 0;
  while (NSNextMapEnumeratorPair(&enumerator, &key, &__override))
  {
    if (__override)
    {
      pthread_override_qos_class_end_np(__override);
    }
  }
}

uint64_t specialized _dictionaryUpCast<A, B, C, D>(_:)(uint64_t a1)
{
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17CodingUserInfoKeyV3key_yp5valuetMd);
  MEMORY[0x1EEE9AC00](v57);
  v56 = &v45 - v2;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17CodingUserInfoKeyV_yptMd);
  MEMORY[0x1EEE9AC00](v55);
  v54 = &v45 - v3;
  v4 = type metadata accessor for CodingUserInfoKey();
  v58 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17CodingUserInfoKeyV3key_s8Sendable_p5valuetMd);
  MEMORY[0x1EEE9AC00](v52);
  v51 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v50 = &v45 - v9;
  v59 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys17CodingUserInfoKeyVypGMd);
    v10 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC8];
  }

  v11 = v59 + 64;
  v12 = 1 << *(v59 + 32);
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  else
  {
    v13 = -1;
  }

  v14 = v13 & *(v59 + 64);
  v15 = (v12 + 63) >> 6;
  v48 = v58 + 16;
  v61 = v58 + 32;
  v16 = v10 + 64;

  v18 = 0;
  v46 = v11;
  v47 = v15;
  v53 = v6;
  v49 = v10;
  while (v14)
  {
LABEL_15:
    v21 = __clz(__rbit64(v14)) | (v18 << 6);
    v22 = v58;
    v23 = v59;
    v24 = *(v59 + 48);
    v60 = *(v58 + 72);
    v25 = v50;
    (*(v58 + 16))(v50, v24 + v60 * v21, v4);
    v26 = *(v23 + 56) + 32 * v21;
    v27 = v52;
    outlined init with copy of Any(v26, v25 + *(v52 + 48));
    v28 = v51;
    outlined init with take of (key: CodingUserInfoKey, value: Sendable)(v25, v51);
    v29 = *(v27 + 48);
    v30 = *(v57 + 48);
    v31 = *(v22 + 32);
    v32 = v4;
    v33 = v56;
    v31(v56, v28, v32);
    outlined init with take of Any((v28 + v29), v62);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8Sendable_pMd);
    swift_dynamicCast();
    v34 = v54;
    v35 = *(v55 + 48);
    v31(v54, v33, v32);
    v36 = &v33[v30];
    v4 = v32;
    outlined init with take of Any(v36, &v34[v35]);
    v37 = v53;
    v31(v53, v34, v32);
    outlined init with take of Any(&v34[v35], v62);
    v10 = v49;
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v38 = -1 << *(v10 + 32);
    v39 = result & ~v38;
    v40 = v39 >> 6;
    if (((-1 << v39) & ~*(v16 + 8 * (v39 >> 6))) == 0)
    {
      v41 = 0;
      v42 = (63 - v38) >> 6;
      v15 = v47;
      while (++v40 != v42 || (v41 & 1) == 0)
      {
        v43 = v40 == v42;
        if (v40 == v42)
        {
          v40 = 0;
        }

        v41 |= v43;
        v44 = *(v16 + 8 * v40);
        if (v44 != -1)
        {
          v19 = __clz(__rbit64(~v44)) + (v40 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v19 = __clz(__rbit64((-1 << v39) & ~*(v16 + 8 * (v39 >> 6)))) | v39 & 0x7FFFFFFFFFFFFFC0;
    v15 = v47;
LABEL_9:
    v14 &= v14 - 1;
    *(v16 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    v31((*(v10 + 48) + v19 * v60), v37, v4);
    result = outlined init with take of Any(v62, (*(v10 + 56) + 32 * v19));
    ++*(v10 + 16);
    v11 = v46;
  }

  while (1)
  {
    v20 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v20 >= v15)
    {

      return v10;
    }

    v14 = *(v11 + 8 * v20);
    ++v18;
    if (v14)
    {
      v18 = v20;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t _PlistKeyedEncodingContainerBPlist.encode(_:forKey:)(unint64_t a1, unint64_t a2)
{
  v5 = v2[1];
  v44 = *v2;
  if (specialized Sequence.allSatisfy(_:)(implicit closure #1 in _BPlistEncodingFormat.string(_:), 0, a1, a2))
  {

    v6 = MEMORY[0x1865CB280](a1, a2);
    v7 = 1;
  }

  else
  {
    v8 = String._bridgeToObjectiveCImpl()();

    v6 = [v8 hash];
    swift_unknownObjectRelease();
    v7 = 0;
  }

  v9 = v44;
  v10 = *(v44 + 88);
  v12 = *(v10 + 16);
  v11 = *(v10 + 24);
  v13 = *(v10 + 32);
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = v6;
  v14 = *(v10 + 40);
  *(v10 + 40) = v7;

  outlined consume of _BPlistEncodingFormat.Reference.Backing(v12, v11, v13, v14);

  LOBYTE(v11) = specialized Set._Variant.insert(_:)(&v42, v10);

  v15 = v42;
  if (v11)
  {
    type metadata accessor for _BPlistEncodingFormat.Reference();
    v16 = swift_allocObject();
    *(v16 + 24) = 0;
    *(v16 + 32) = 0;
    *(v16 + 16) = 2;
    *(v16 + 40) = -112;
    *(v16 + 48) = -1;

    *(v9 + 88) = v16;
  }

  v17 = dispatch thunk of CodingKey.stringValue.getter();
  v19 = v18;
  if (specialized Sequence.allSatisfy(_:)(implicit closure #1 in _BPlistEncodingFormat.string(_:), 0, v17, v18))
  {

    v20 = MEMORY[0x1865CB280](v17, v19);
    v21 = 1;
  }

  else
  {
    v22 = String._bridgeToObjectiveCImpl()();

    v20 = [v22 hash];
    swift_unknownObjectRelease();
    v21 = 0;
  }

  v23 = *(v9 + 88);
  v24 = *(v23 + 16);
  v25 = *(v23 + 24);
  v26 = *(v23 + 32);
  *(v23 + 16) = v17;
  *(v23 + 24) = v19;
  *(v23 + 32) = v20;
  v27 = *(v23 + 40);
  *(v23 + 40) = v21;

  v28 = v25;
  v29 = v44;
  outlined consume of _BPlistEncodingFormat.Reference.Backing(v24, v28, v26, v27);

  v30 = specialized Set._Variant.insert(_:)(&v42, v23);

  v31 = v42;
  if (v30)
  {
    type metadata accessor for _BPlistEncodingFormat.Reference();
    v32 = swift_allocObject();
    *(v32 + 24) = 0;
    *(v32 + 32) = 0;
    *(v32 + 16) = 2;
    *(v32 + 40) = -112;
    *(v32 + 48) = -1;

    *(v29 + 88) = v32;
  }

  v34 = *(v5 + 40);
  if ((v34 & 0xF0) == 0x60)
  {
    v36 = *(v5 + 24);
    v35 = *(v5 + 32);
    v42 = *(v5 + 16);
    v37 = v42;
    *&v43 = v36;
    *(&v43 + 1) = v35;
    *(v5 + 24) = 0;
    *(v5 + 32) = 0;
    *(v5 + 16) = 2;
    *(v5 + 40) = -112;

    outlined consume of _BPlistEncodingFormat.Reference.Backing(v37, v36, v35, v34);
    specialized OrderedDictionary.subscript.setter(v15, v31);
    v38 = *(v5 + 16);
    v39 = *(v5 + 24);
    v40 = *(v5 + 32);
    *(v5 + 16) = v42;
    *(v5 + 24) = v43;
    v41 = *(v5 + 40);
    *(v5 + 40) = 96;
    return outlined consume of _BPlistEncodingFormat.Reference.Backing(v38, v39, v40, v41);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void specialized String.withUTF8<A>(_:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  if ((v3 & 0x1000000000000000) != 0)
  {
    v8 = static String._copying(_:)();
    v10 = v9;

    v2 = v8;
    *a1 = v8;
    a1[1] = v10;
    v3 = v10;
    if ((v10 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    v6 = HIBYTE(v3) & 0xF;
    v12[0] = v2;
    v12[1] = v3 & 0xFFFFFFFFFFFFFFLL;
    _BPlistEncodingFormat.Writer.append(_:count:)(6, v6);
    v7 = v12;
    goto LABEL_8;
  }

  if ((v3 & 0x2000000000000000) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((v2 & 0x1000000000000000) != 0)
  {
    v5 = (v3 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v6 = v2 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v5 = _StringObject.sharedUTF8.getter();
    v6 = v11;
  }

  _BPlistEncodingFormat.Writer.append(_:count:)(6, v6);
  v7 = v5;
LABEL_8:
  _BPlistEncodingFormat.Writer.write(_:)(v7, v6);
}

{
  v2 = *a1;
  v3 = a1[1];
  if ((v3 & 0x1000000000000000) != 0)
  {
    v8 = static String._copying(_:)();
    v10 = v9;

    v2 = v8;
    *a1 = v8;
    a1[1] = v10;
    v3 = v10;
    if ((v10 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    v6 = HIBYTE(v3) & 0xF;
    v11[0] = v2;
    v11[1] = v3 & 0xFFFFFFFFFFFFFFLL;
    v7 = v11;
    goto LABEL_8;
  }

  if ((v3 & 0x2000000000000000) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((v2 & 0x1000000000000000) != 0)
  {
    v5 = (v3 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v6 = v2 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v5 = _StringObject.sharedUTF8.getter();
  }

  v7 = v5;
LABEL_8:
  closure #1 in _XMLPlistEncodingFormat.Writer.appendEscaped(_:)(v7, v6);
}

{
  v2 = *a1;
  v3 = a1[1];
  if ((v3 & 0x1000000000000000) != 0)
  {
    v8 = static String._copying(_:)();
    v10 = v9;

    v2 = v8;
    *a1 = v8;
    a1[1] = v10;
    v3 = v10;
    if ((v10 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    v6 = HIBYTE(v3) & 0xF;
    v11[0] = v2;
    v11[1] = v3 & 0xFFFFFFFFFFFFFFLL;
    v7 = v11;
    goto LABEL_8;
  }

  if ((v3 & 0x2000000000000000) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((v2 & 0x1000000000000000) != 0)
  {
    v5 = (v3 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v6 = v2 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v5 = _StringObject.sharedUTF8.getter();
  }

  v7 = v5;
LABEL_8:
  _XMLPlistEncodingFormat.Writer.append(_:)(v7, v6);
}

void specialized Data._Representation.withUnsafeBytes<A>(_:)(uint64_t a1, unint64_t a2)
{
  sub_1808D3C9C(a1, a2);
}

{
  __src[2] = *MEMORY[0x1E69E9840];
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      __src[0] = a1;
      LOWORD(__src[1]) = a2;
      BYTE2(__src[1]) = BYTE2(a2);
      BYTE3(__src[1]) = BYTE3(a2);
      v3 = a2 >> 40;
      BYTE4(__src[1]) = BYTE4(a2);
      v4 = BYTE6(a2);
      BYTE5(__src[1]) = v3;
LABEL_21:
      _BPlistEncodingFormat.Writer.write(_:)(__src, v4);
      return;
    }

    v14 = (a1 >> 32) - a1;
    if (a1 >> 32 >= a1)
    {
      v15 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      if (!v15)
      {
        return;
      }

      v16 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
      v17 = a1 - v16;
      if (!__OFSUB__(a1, v16))
      {
        v12 = (v17 + v15);
        if (!(v17 + v15))
        {
          return;
        }

        if (*((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x18) >= v14)
        {
          v13 = v14;
        }

        else
        {
          v13 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
        }

LABEL_19:
        _BPlistEncodingFormat.Writer.write(_:)(v12, v13);
        return;
      }

LABEL_28:
      __break(1u);
    }

    goto LABEL_26;
  }

  if (v2 != 2)
  {
    memset(__src, 0, 14);
    v4 = 0;
    goto LABEL_21;
  }

  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  if (v7)
  {
    v8 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
    v9 = __OFSUB__(v5, v8);
    v10 = v5 - v8;
    if (v9)
    {
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v9 = __OFSUB__(v6, v5);
    v11 = v6 - v5;
    if (!v9)
    {
      v12 = (v10 + v7);
      if (!(v10 + v7))
      {
        return;
      }

      if (*((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x18) >= v11)
      {
        v13 = v11;
      }

      else
      {
        v13 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      }

      goto LABEL_19;
    }

    goto LABEL_25;
  }

  if (__OFSUB__(v6, v5))
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }
}

{
  specialized Data._Representation.withUnsafeBytes<A>(_:)(a1, a2);
}

{
  __src[2] = *MEMORY[0x1E69E9840];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      memset(__src, 0, 14);
      v3 = __src;
      goto LABEL_9;
    }

    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
LABEL_7:
    specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v4, v5, (a2 & 0x3FFFFFFFFFFFFFFFLL));
    return;
  }

  if (v2)
  {
    v4 = a1;
    v5 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    goto LABEL_7;
  }

  __src[0] = a1;
  LOWORD(__src[1]) = a2;
  BYTE2(__src[1]) = BYTE2(a2);
  BYTE3(__src[1]) = BYTE3(a2);
  BYTE4(__src[1]) = BYTE4(a2);
  BYTE5(__src[1]) = BYTE5(a2);
  v3 = __src + BYTE6(a2);
LABEL_9:
  Data._Representation.append(contentsOf:)(__src, v3);
}

uint64_t protocol witness for KeyedEncodingContainerProtocol.encode(_:forKey:) in conformance _PlistKeyedEncodingContainerBPlist<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return sub_1808D3EB8(a1, a2, a3);
}

{
  return sub_1809600C4(a1, a2, a3);
}

uint64_t _PlistKeyedEncodingContainerBPlist.encode(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = *v4;
  v6 = v4[1];
  v7 = *(*v4 + 88);
  v9 = *(v7 + 16);
  v8 = *(v7 + 24);
  v10 = *(v7 + 32);
  *(v7 + 16) = a1;
  *(v7 + 24) = 0;
  *(v7 + 32) = 0;
  v11 = *(v7 + 40);
  *(v7 + 40) = a4;
  outlined consume of _BPlistEncodingFormat.Reference.Backing(v9, v8, v10, v11);
  v12 = *(v5 + 88);

  v13 = specialized Set._Variant.insert(_:)(&v38, v12);
  v40 = v38;
  if (v13)
  {
    type metadata accessor for _BPlistEncodingFormat.Reference();
    v14 = swift_allocObject();
    *(v14 + 24) = 0;
    *(v14 + 32) = 0;
    *(v14 + 16) = 2;
    *(v14 + 40) = -112;
    *(v14 + 48) = -1;
    *(v5 + 88) = v14;
  }

  v15 = dispatch thunk of CodingKey.stringValue.getter();
  v17 = v16;
  if (specialized Sequence.allSatisfy(_:)(implicit closure #1 in _BPlistEncodingFormat.string(_:), 0, v15, v16))
  {

    v18 = MEMORY[0x1865CB280](v15, v17);
    v19 = 1;
  }

  else
  {
    v20 = String._bridgeToObjectiveCImpl()();

    v18 = [v20 hash];
    swift_unknownObjectRelease();
    v19 = 0;
  }

  v21 = *(v5 + 88);
  v22 = *(v21 + 16);
  v23 = *(v21 + 24);
  v24 = *(v21 + 32);
  *(v21 + 16) = v15;
  *(v21 + 24) = v17;
  *(v21 + 32) = v18;
  v25 = *(v21 + 40);
  *(v21 + 40) = v19;

  outlined consume of _BPlistEncodingFormat.Reference.Backing(v22, v23, v24, v25);

  v26 = specialized Set._Variant.insert(_:)(&v38, v21);

  v27 = v38;
  if (v26)
  {
    type metadata accessor for _BPlistEncodingFormat.Reference();
    v28 = swift_allocObject();
    *(v28 + 24) = 0;
    *(v28 + 32) = 0;
    *(v28 + 16) = 2;
    *(v28 + 40) = -112;
    *(v28 + 48) = -1;

    *(v5 + 88) = v28;
  }

  v30 = *(v6 + 40);
  if ((v30 & 0xF0) == 0x60)
  {
    v32 = *(v6 + 24);
    v31 = *(v6 + 32);
    v38 = *(v6 + 16);
    v33 = v38;
    *&v39 = v32;
    *(&v39 + 1) = v31;
    *(v6 + 24) = 0;
    *(v6 + 32) = 0;
    *(v6 + 16) = 2;
    *(v6 + 40) = -112;

    outlined consume of _BPlistEncodingFormat.Reference.Backing(v33, v32, v31, v30);
    specialized OrderedDictionary.subscript.setter(v40, v27);
    v34 = *(v6 + 16);
    v35 = *(v6 + 24);
    v36 = *(v6 + 32);
    *(v6 + 16) = v38;
    *(v6 + 24) = v39;
    v37 = *(v6 + 40);
    *(v6 + 40) = 96;
    return outlined consume of _BPlistEncodingFormat.Reference.Backing(v34, v35, v36, v37);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id protocol witness for _ObjectiveCBridgeable._bridgeToObjectiveC() in conformance UUID()
{
  v5 = *v0;
  v1 = type metadata accessor for __NSConcreteUUID();
  v2 = objc_allocWithZone(v1);
  *&v2[OBJC_IVAR_____NSConcreteUUID__storage] = v5;
  v4.receiver = v2;
  v4.super_class = v1;
  return objc_msgSendSuper2(&v4, sel_init);
}

uint64_t __PlistEncoderBPlist.encode(_:)(uint64_t a1, char a2)
{
  result = (*(*v2 + 240))();
  if (result)
  {
    v6 = v2[11];
    v7 = *(v6 + 16);
    v8 = *(v6 + 24);
    v9 = *(v6 + 32);
    *(v6 + 16) = a1;
    *(v6 + 24) = 0;
    *(v6 + 32) = 0;
    v10 = *(v6 + 40);
    *(v6 + 40) = a2;
    outlined consume of _BPlistEncodingFormat.Reference.Backing(v7, v8, v9, v10);
    v11 = v2[11];

    if (specialized Set._Variant.insert(_:)(&v13, v11))
    {
      type metadata accessor for _BPlistEncodingFormat.Reference();
      v12 = swift_allocObject();
      *(v12 + 24) = 0;
      *(v12 + 32) = 0;
      *(v12 + 16) = 2;
      *(v12 + 40) = -112;
      *(v12 + 48) = -1;
      v2[11] = v12;
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized static _BPlistEncodingFormat.Reference.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  *v26 = v4;
  v26[1] = v3;
  v26[2] = v5;
  v27 = v6;
  v28 = v7;
  v29 = v8;
  v30 = v9;
  v11 = v6 >> 4;
  v31 = v10;
  if (v6 >> 4 <= 2)
  {
    if (!v11)
    {
      if (v10 >= 0x10)
      {
        goto LABEL_36;
      }

      if ((v6 & 1) == 0)
      {
        if ((v10 & 1) == 0)
        {
          v19 = v6;
          v20 = v3;
          v21 = v5;
          type metadata accessor for NSObject();
          String._bridgeToObjectiveCImpl()();
          String._bridgeToObjectiveCImpl()();
          outlined copy of _BPlistEncodingFormat.Reference.Backing(*&v4, v20, v21, v19);
          outlined copy of _BPlistEncodingFormat.Reference.Backing(*&v7, v8, v9, v10);
          v22 = static NSObject.== infix(_:_:)();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          outlined destroy of TermOfAddress?(v26, &_s10Foundation21_BPlistEncodingFormatV9ReferenceC7BackingO_AGtMd);
          return v22 & 1;
        }

        goto LABEL_36;
      }

      if ((v10 & 1) == 0)
      {
LABEL_36:
        outlined copy of _BPlistEncodingFormat.Reference.Backing(*&v4, v3, v5, v6);
        outlined copy of _BPlistEncodingFormat.Reference.Backing(*&v7, v8, v9, v10);
        outlined destroy of TermOfAddress?(v26, &_s10Foundation21_BPlistEncodingFormatV9ReferenceC7BackingO_AGtMd);
        return 0;
      }

      if (*&v4 == *&v7 && v3 == v8)
      {
        v17 = v3;
        outlined copy of _BPlistEncodingFormat.Reference.Backing(*&v4, v3, v5, v6);
        outlined copy of _BPlistEncodingFormat.Reference.Backing(*&v4, v17, v9, v10);
        outlined destroy of TermOfAddress?(v26, &_s10Foundation21_BPlistEncodingFormatV9ReferenceC7BackingO_AGtMd);
        return 1;
      }

      v23 = v3;
      v24 = v5;
      v25 = v6;
      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
      outlined copy of _BPlistEncodingFormat.Reference.Backing(*&v4, v23, v24, v25);
      outlined copy of _BPlistEncodingFormat.Reference.Backing(*&v7, v8, v9, v10);
LABEL_21:
      outlined destroy of TermOfAddress?(v26, &_s10Foundation21_BPlistEncodingFormatV9ReferenceC7BackingO_AGtMd);
      return v16 & 1;
    }

    if (v11 == 1)
    {
      if ((v10 & 0xF0) != 0x10)
      {
        goto LABEL_36;
      }
    }

    else if (v11 != 2 || (v10 & 0xF0) != 0x20)
    {
      goto LABEL_36;
    }

LABEL_32:
    outlined destroy of TermOfAddress?(v26, &_s10Foundation21_BPlistEncodingFormatV9ReferenceC7BackingO_AGtMd);
    return v4 == v7;
  }

  if (v6 >> 4 > 6)
  {
    if (v11 != 7)
    {
      if (v11 != 8 || (v10 & 0xF0) != 0x80)
      {
        goto LABEL_36;
      }

      v13 = v3;
      v14 = v5;
      v15 = v6;
      outlined copy of _BPlistEncodingFormat.Reference.Backing(*&v4, v3, v5, v6);
      outlined copy of _BPlistEncodingFormat.Reference.Backing(*&v7, v8, v9, v10);
      outlined copy of _BPlistEncodingFormat.Reference.Backing(*&v4, v13, v14, v15);
      outlined copy of _BPlistEncodingFormat.Reference.Backing(*&v7, v8, v9, v10);
      v16 = specialized static Data.== infix(_:_:)(*&v4, v13, *&v7, v8);
      outlined consume of _BPlistEncodingFormat.Reference.Backing(*&v7, v8, v9, v10);
      outlined consume of _BPlistEncodingFormat.Reference.Backing(*&v4, v13, v14, v15);
      goto LABEL_21;
    }

    if ((v10 & 0xF0) != 0x70)
    {
      goto LABEL_36;
    }

    goto LABEL_32;
  }

  if (v11 != 3)
  {
    if (v11 == 4 && (v10 & 0xF0) == 0x40)
    {
      outlined destroy of TermOfAddress?(v26, &_s10Foundation21_BPlistEncodingFormatV9ReferenceC7BackingO_AGtMd);
      if (*&v4 != *&v7)
      {
        result = 0;
        if ((~LODWORD(v4) & 0x7F800000) == 0 && (LODWORD(v4) & 0x7FFFFF) != 0)
        {
          return (LODWORD(v7) & 0x7FFFFF) != 0 && (~LODWORD(v7) & 0x7F800000) == 0;
        }

        return result;
      }

      return 1;
    }

    goto LABEL_36;
  }

  if ((v10 & 0xF0) != 0x30)
  {
    goto LABEL_36;
  }

  outlined destroy of TermOfAddress?(v26, &_s10Foundation21_BPlistEncodingFormatV9ReferenceC7BackingO_AGtMd);
  if (v4 == v7)
  {
    return 1;
  }

  if ((~*&v4 & 0x7FF0000000000000) != 0)
  {
    return 0;
  }

  v18 = (~*&v7 & 0x7FF0000000000000) == 0;
  if ((*&v7 & 0xFFFFFFFFFFFFFLL) == 0)
  {
    v18 = 0;
  }

  return (*&v4 & 0xFFFFFFFFFFFFFLL) != 0 && v18;
}

uint64_t outlined copy of _BPlistEncodingFormat.Reference.Backing(uint64_t result, unint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  v4 = a4 >> 4;
  if (v4 > 5)
  {
    if (v4 == 6)
    {

LABEL_15:
    }

    if (v4 == 8)
    {

      return outlined copy of Data._Representation(result, a2);
    }
  }

  else
  {
    if (a4 >> 4)
    {
      if (v4 != 5)
      {
        return result;
      }

      goto LABEL_15;
    }
  }

  return result;
}

uint64_t protocol witness for SingleValueEncodingContainer.encode(_:) in conformance __PlistEncoderBPlist(uint64_t a1)
{
  return sub_1808D486C(a1);
}

{
  return sub_180A4B4A8(a1);
}

uint64_t get_enum_tag_for_layout_string_10Foundation21_BPlistEncodingFormatV9ReferenceC7BackingO(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 <= 0x8F)
  {
    return v1 >> 4;
  }

  else
  {
    return (*a1 + 9);
  }
}

uint64_t protocol witness for Encoder.singleValueContainer() in conformance __PlistEncoderBPlist@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  a1[3] = type metadata accessor for __PlistEncoderBPlist();
  a1[4] = lazy protocol witness table accessor for type _BPlistEncodingFormat.Reference and conformance _BPlistEncodingFormat.Reference(&lazy protocol witness table cache variable for type __PlistEncoderBPlist and conformance __PlistEncoderBPlist, v4, type metadata accessor for __PlistEncoderBPlist);
  *a1 = v3;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> __PlistEncoderBPlist.encode(_:)(Swift::String a1)
{
  v2 = v1;
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  if ((*(*v1 + 240))())
  {
    if (specialized Sequence.allSatisfy(_:)(implicit closure #1 in _BPlistEncodingFormat.string(_:), 0, countAndFlagsBits, object))
    {

      v5 = MEMORY[0x1865CB280](countAndFlagsBits, object);
      v6 = 1;
    }

    else
    {
      v7 = String._bridgeToObjectiveCImpl()();

      v5 = [v7 hash];
      swift_unknownObjectRelease();
      v6 = 0;
    }

    v8 = *(v2 + 88);
    v9 = *(v8 + 16);
    v10 = *(v8 + 24);
    v11 = *(v8 + 32);
    *(v8 + 16) = countAndFlagsBits;
    *(v8 + 24) = object;
    *(v8 + 32) = v5;
    v12 = *(v8 + 40);
    *(v8 + 40) = v6;

    outlined consume of _BPlistEncodingFormat.Reference.Backing(v9, v10, v11, v12);

    v13 = specialized Set._Variant.insert(_:)(&v15, v8);

    if (v13)
    {
      type metadata accessor for _BPlistEncodingFormat.Reference();
      v14 = swift_allocObject();
      *(v14 + 24) = 0;
      *(v14 + 32) = 0;
      *(v14 + 16) = 2;
      *(v14 + 40) = -112;
      *(v14 + 48) = -1;

      *(v2 + 88) = v14;
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
  }

  else
  {
    __break(1u);
  }
}

uint64_t _PlistUnkeyedEncodingContainerBPlist.encode<A>(_:)(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v5 = v4;
  v6 = v3;
  v9 = *(a2 - 8);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  result = (*(v9 + 16))(v12, v10);
  v15 = *(v13 + 40);
  v16 = v6[1];
  v17 = *(v16 + 40) >> 4;
  if (v17 == 5)
  {
    v18 = 16;
  }

  else
  {
    if (v17 != 6)
    {
      __break(1u);
      return result;
    }

    v18 = 32;
  }

  v19 = *(*(v16 + v18) + 16);

  v20 = specialized __PlistEncoderBPlist.wrapGeneric<A, B>(_:for:_:)(v12, v15, v19, 0, 0, 2u, a2, a3);
  if (v5)
  {

    return (*(v9 + 8))(v12, a2);
  }

  else
  {
    if (v20)
    {
    }

    else
    {
      v21 = _s19CollectionsInternal17OrderedDictionaryV20uniqueKeysWithValuesACyxq_Gqd___tcSTRd__x_q_t7ElementRtd__lufC10Foundation21_BPlistEncodingFormatV9ReferenceC_ALSayAL_ALtGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      v23 = v22;
      v25 = v24;

      type metadata accessor for _BPlistEncodingFormat.Reference();
      v26 = swift_allocObject();
      *(v26 + 16) = v21;
      *(v26 + 24) = v23;
      *(v26 + 32) = v25;
      *(v26 + 40) = 96;
      *(v26 + 48) = -1;
    }

    (*(v9 + 8))(v12, a2);
    _BPlistEncodingFormat.Reference.insert(_:)();
  }
}

void _BPlistEncodingFormat.Reference.insert(_:)()
{
  v1 = v0;
  v2 = *(v0 + 40);
  if ((v2 & 0xF0) == 0x50)
  {
    v3 = *(v1 + 24);
    v10 = *(v1 + 16);
    v4 = *(v1 + 32);
    *(v1 + 16) = 2;
    *(v1 + 24) = 0;
    *(v1 + 32) = 0;
    *(v1 + 40) = -112;

    outlined consume of _BPlistEncodingFormat.Reference.Backing(v5, v3, v4, v2);

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    v6 = *(v1 + 16);
    v7 = *(v1 + 24);
    v8 = *(v1 + 32);
    *(v1 + 24) = 0;
    *(v1 + 32) = 0;
    *(v1 + 16) = v10;
    v9 = *(v1 + 40);
    *(v1 + 40) = 80;

    outlined consume of _BPlistEncodingFormat.Reference.Backing(v6, v7, v8, v9);
  }

  else
  {
    __break(1u);
  }
}

id _sSD10FoundationE26_forceBridgeFromObjectiveC_6resultySo12NSDictionaryC_SDyxq_GSgztFZSiSryxG_Sryq_GtXEfU0_s11AnyHashableV_ypTt3g5Tf4xxnn_n(id result, uint64_t a2, id a3, uint64_t a4)
{
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (a2)
  {
    v6 = result;
    result = [a3 _getObjects_andKeys_count_];
    if ((a4 & 0x8000000000000000) == 0)
    {
      if (!a4)
      {
        return a4;
      }

      v7 = v6 + 8 * a4 - 8;
      v8 = v6 + 40 * a4 - 40;
      v9 = a4;
      do
      {
        if (v9 > a4)
        {
          __break(1u);
          goto LABEL_13;
        }

        --v9;
        v7 -= 8;
        swift_unknownObjectRetain();
        result = swift_dynamicCast();
        v10 = v15[0];
        v11 = v15[1];
        *(v8 + 32) = v16;
        *v8 = v10;
        *(v8 + 16) = v11;
        v8 -= 40;
      }

      while (v9);
      v12 = a2 + 8 * a4 - 8;
      v13 = (a2 + 32 * a4 - 32);
      v14 = a4;
      while (v14 <= a4)
      {
        --v14;
        v12 -= 8;
        swift_unknownObjectRetain();
        swift_dynamicCast();
        result = outlined init with take of Any(v15, v13);
        v13 -= 2;
        if (!v14)
        {
          return a4;
        }
      }

LABEL_13:
      __break(1u);
    }

    __break(1u);
    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

void _SwiftURL.appending<A>(component:directoryHint:)(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  if (_SwiftURL.isFileURL.getter())
  {
    v6 = a3;
    v7 = a1;
    v8 = 0;
  }

  else
  {
    v6 = a3;
    v7 = a1;
    v8 = 1;
  }

  _SwiftURL.appending<A>(path:directoryHint:encodingSlashes:compatibility:)(v7, v8, 0, a2, v6);
}

uint64_t static URL.cachesDirectory.getter@<X0>(NSArray *a1@<X0>, NSArray *a2@<X1>, uint64_t *a3@<X8>)
{
  if (!_foundation_swift_url_feature_enabled())
  {
    v7 = NSSearchPathForDirectoriesInDomains(a1, a2, 1);
    if (v7)
    {
      a2 = v7;
      type metadata accessor for __SwiftDeferredNSArray();
      v8 = swift_dynamicCastClass();
      if (v8)
      {
        a1 = *(v8 + 24);
      }

      else
      {
        a1 = a2;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
      v15 = swift_dynamicCastClass();
      if (v15)
      {
        v9 = v15;

        if (*(v9 + 2))
        {
          goto LABEL_20;
        }
      }

      else
      {
        swift_unknownObjectRelease();
        a1 = [(NSArray *)a2 copy];
        v19 = _bridgeCocoaArray<A>(_:)();
        swift_unknownObjectRelease();
        v9 = specialized _arrayForceCast<A, B>(_:)(v19);

        if (*(v9 + 2))
        {
LABEL_20:
          a2 = *(v9 + 4);
          a1 = *(v9 + 5);

          if (one-time initialization token for compatibility2 == -1)
          {
            goto LABEL_21;
          }

          goto LABEL_30;
        }
      }
    }

    else
    {
      v9 = MEMORY[0x1E69E7CC0];
      if (*(MEMORY[0x1E69E7CC0] + 16))
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    swift_once();
LABEL_21:
    if ((static URL.compatibility2 & 1) != 0 || (_foundation_swift_url_feature_enabled() & 1) == 0)
    {
      v16 = type metadata accessor for _BridgedURL();
      v17 = &protocol witness table for _BridgedURL;
    }

    else
    {
      v16 = type metadata accessor for _SwiftURL();
      v17 = &protocol witness table for _SwiftURL;
    }

    v21 = 0;
    v20[0] = 0;
    v20[1] = 0;
    (v17[9])(a2, a1, &v21, v20);
    isa = (v17[56])(v16, v17);
    v13 = v18;
    result = swift_unknownObjectRelease();
    goto LABEL_26;
  }

  v6 = [objc_opt_self() defaultManager];
  a2 = [v6 URLsForDirectory:a1 inDomains:a2];

  if (a2)
  {
    type metadata accessor for __SwiftDeferredNSArray();
    if (swift_dynamicCastClass())
    {
    }

    else
    {
      v10 = a2;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation3URLVGMd);
    a1 = swift_dynamicCastClass();
    if (!a1)
    {
      swift_unknownObjectRelease();
      [(NSArray *)a2 copy];
      v11 = _bridgeCocoaArray<A>(_:)();
      swift_unknownObjectRelease();
      a1 = specialized _arrayForceCast<A, B>(_:)(v11);
    }
  }

  else
  {
    a1 = MEMORY[0x1E69E7CC0];
  }

  if (a1[2].super.isa)
  {

    if (a1[2].super.isa)
    {
      isa = a1[4].super.isa;
      v13 = a1[5].super.isa;
      swift_unknownObjectRetain();

LABEL_26:
      *a3 = isa;
      a3[1] = v13;
      return result;
    }

    goto LABEL_29;
  }

  __break(1u);
  return result;
}

uint64_t Data.write(to:options:)(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v66 = *MEMORY[0x1E69E9840];
  if ((~a2 & 3) == 0)
  {
    goto LABEL_80;
  }

  v7 = *a1;
  v8 = a1[1];
  ObjectType = swift_getObjectType();
  v10 = (*(v8 + 144))(ObjectType, v8);
  if (v10)
  {
    MEMORY[0x1EEE9AC00](v10);
    v56[2] = v7;
    v56[3] = v8;
    v57 = 1;
    v58 = a2;
    v59 = MEMORY[0x1E69E7CC8];
    LOBYTE(v60) = 1;
    swift_unknownObjectRetain();
    specialized Data._Representation.withUnsafeBytes<A>(_:)(partial apply for closure #1 in writeToFile(path:data:options:attributes:reportProgress:), v56, a3, a4);
    return swift_unknownObjectRelease();
  }

  isTaggedPointer = _objc_isTaggedPointer(@"NSCocoaErrorDomain");
  v13 = @"NSCocoaErrorDomain";
  v14 = v13;
  if (isTaggedPointer)
  {
    TaggedPointerTag = _objc_getTaggedPointerTag(v13);
    if (TaggedPointerTag)
    {
      if (TaggedPointerTag != 22)
      {
        if (TaggedPointerTag == 2)
        {
          MEMORY[0x1EEE9AC00](TaggedPointerTag);
          v59 = v14;
          String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

          goto LABEL_22;
        }

        goto LABEL_9;
      }

      v18 = [(__CFString *)v14 UTF8String];
      if (!v18)
      {
        __break(1u);
LABEL_78:
        __break(1u);
        goto LABEL_79;
      }

      String.init(utf8String:)(v18);
      if (v19)
      {
        goto LABEL_10;
      }

      __break(1u);
    }

    v63 = 0;
    _CFIndirectTaggedPointerStringGetContents();
    _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (v20)
    {
      goto LABEL_10;
    }

    [(__CFString *)v14 mutableCopy];
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
    swift_dynamicCast();
    goto LABEL_22;
  }

LABEL_9:
  LOBYTE(v61) = 0;
  v65 = 0;
  LOBYTE(v63) = 0;
  v64 = 0;
  if (__CFStringIsCF())
  {
LABEL_10:

    goto LABEL_22;
  }

  v16 = v14;
  String.init(_nativeStorage:)();
  if (!v17 && [(__CFString *)v16 length])
  {
    String.init(_cocoaString:)();
  }

  else
  {
  }

LABEL_22:
  v21 = objc_allocWithZone(NSError);
  v22 = String._bridgeToObjectiveCImpl()();

  v23 = [v21 initWithDomain:v22 code:518 userInfo:_NativeDictionary.bridged()()];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v24 = [v23 domain];
  if (!v24)
  {
LABEL_35:
    v30 = 0;
    v32 = 0xE000000000000000;
    goto LABEL_48;
  }

  v25 = v24;
  v26 = _objc_isTaggedPointer(v24);
  v27 = v25;
  v28 = v27;
  if ((v26 & 1) == 0)
  {
    goto LABEL_28;
  }

  v29 = _objc_getTaggedPointerTag(v27);
  switch(v29)
  {
    case 0:
      goto LABEL_39;
    case 0x16:
      v36 = [(__CFString *)v28 UTF8String];
      if (!v36)
      {
LABEL_79:
        __break(1u);
LABEL_80:
        result = _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return result;
      }

      v37 = String.init(utf8String:)(v36);
      if (v38)
      {
LABEL_40:
        v30 = v37;
        v32 = v38;

        goto LABEL_47;
      }

      __break(1u);
LABEL_39:
      v63 = 0;
      _CFIndirectTaggedPointerStringGetContents();
      v37 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v38)
      {
        [(__CFString *)v28 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v30 = v61;
        v32 = v62;
        goto LABEL_47;
      }

      goto LABEL_40;
    case 2:
      MEMORY[0x1EEE9AC00](v29);
      v59 = v28;
      v30 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v32 = v31;

      goto LABEL_48;
  }

LABEL_28:
  LOBYTE(v61) = 0;
  v65 = 0;
  LOBYTE(v63) = 0;
  v64 = 0;
  if (__CFStringIsCF())
  {

    goto LABEL_35;
  }

  v33 = v28;
  v34 = String.init(_nativeStorage:)();
  if (v35)
  {
    v30 = v34;
    v32 = v35;

    goto LABEL_48;
  }

  if (![(__CFString *)v33 length])
  {

    goto LABEL_35;
  }

  v39 = String.init(_cocoaString:)();
  v30 = v39;
  v32 = v40;
LABEL_47:

LABEL_48:
  v41 = v14;
  v42 = v41;
  if (!isTaggedPointer)
  {
    goto LABEL_53;
  }

  v43 = _objc_getTaggedPointerTag(v41);
  if (!v43)
  {
    goto LABEL_63;
  }

  if (v43 != 22)
  {
    if (v43 == 2)
    {
      MEMORY[0x1EEE9AC00](v43);
      v59 = v42;
      v44 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v46 = v45;

      goto LABEL_71;
    }

LABEL_53:
    LOBYTE(v61) = 0;
    v65 = 0;
    LOBYTE(v63) = 0;
    v64 = 0;
    if (__CFStringIsCF())
    {
      v44 = v65;

      v46 = 0xE000000000000000;
    }

    else
    {
      v47 = v42;
      v48 = String.init(_nativeStorage:)();
      if (v49)
      {
        v44 = v48;
        v46 = v49;
      }

      else if ([(__CFString *)v47 length])
      {
        v53 = String.init(_cocoaString:)();
        v44 = v53;
        v46 = v54;
      }

      else
      {

        v44 = 0;
        v46 = 0xE000000000000000;
      }
    }

    goto LABEL_71;
  }

  v50 = [(__CFString *)v42 UTF8String];
  if (!v50)
  {
    goto LABEL_78;
  }

  v51 = String.init(utf8String:)(v50);
  if (v52)
  {
LABEL_64:
    v44 = v51;
    v46 = v52;

    goto LABEL_71;
  }

  __break(1u);
LABEL_63:
  v63 = 0;
  _CFIndirectTaggedPointerStringGetContents();
  v51 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
  if (v52)
  {
    goto LABEL_64;
  }

  [(__CFString *)v42 mutableCopy];
  _bridgeAnyObjectToAny(_:)();

  swift_unknownObjectRelease();
  swift_dynamicCast();
  v44 = v61;
  v46 = v62;
LABEL_71:
  if (v30 == v44 && v32 == v46)
  {
  }

  else
  {
    v55 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v55 & 1) == 0)
    {
      __break(1u);
    }
  }

  return swift_willThrow();
}

id static Locale._unconditionallyBridgeFromObjectiveC(_:)@<X0>(id result@<X0>, uint64_t *a2@<X8>)
{
  if (result)
  {
    v2 = result;
    type metadata accessor for _NSSwiftLocale();
    v4 = swift_dynamicCastClass();
    if (v4)
    {
      v5 = *(v4 + OBJC_IVAR____NSSwiftLocale_locale);
      v6 = *(v4 + OBJC_IVAR____NSSwiftLocale_locale + 8);
      result = swift_unknownObjectRetain();
    }

    else
    {
      type metadata accessor for _LocaleBridged();
      v5 = swift_allocObject();
      *(v5 + 16) = v2;
      v6 = lazy protocol witness table accessor for type _LocaleBridged and conformance _LocaleBridged(&lazy protocol witness table cache variable for type _LocaleBridged and conformance _LocaleBridged, type metadata accessor for _LocaleBridged);
      result = v2;
    }

    *a2 = v5;
    a2[1] = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t NSAttributedString.init<A>(_:including:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v39 = static AttributeScope.scopeDescription.getter(a3);

  v4 = *(v3 + 40);
  v65[0] = *(v3 + 24);
  v65[1] = v4;
  v5 = *(v3 + 56);
  v67 = *(v3 + 56);
  v66[0] = v65[0];
  v66[1] = v4;
  v65[2] = v5;
  outlined init with copy of Rope<BigString._Chunk>._Node?(v66, v50);
  MEMORY[0x1865CAF80](v65);
  v6 = objc_allocWithZone(NSMutableAttributedString);
  v7 = String._bridgeToObjectiveCImpl()();

  v38 = [v6 initWithString_];
  swift_unknownObjectRelease();
  v8 = *(v3 + 40);
  v62 = *(v3 + 24);
  v63 = v8;
  v64 = *(v3 + 56);
  result = BigString.startIndex.getter();
  v11 = *(v3 + 72);
  v10 = *(v3 + 80);
  v13 = *(v3 + 88);
  v12 = *(v3 + 96);
  v42 = v3;
  v50[0] = v11;
  v50[1] = v10;
  v44 = v12;
  v50[2] = v13;
  v50[3] = v12;
  if (v11)
  {
    v14 = *(v11 + 18);
    result = swift_unknownObjectRetain();
  }

  else
  {
    v14 = 0;
  }

  v15 = 0;
  v16 = 0;
  v68 = 0;
  v51 = v44;
  v52 = v14;
  v54 = 0;
  v55 = 0;
  v53 = 0;
  v40 = v13;
  v41 = v11;
  while (1)
  {
    if (v11)
    {
      if (v68 == v13)
      {
        goto LABEL_35;
      }
    }

    else if (!v68)
    {
LABEL_35:

      swift_unknownObjectRelease();
      v36 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithAttributedString_];

      return v36;
    }

    if (v51 != v44)
    {
      break;
    }

    v48 = v15;
    v19 = v52;
    v20 = v53;
    if (v53)
    {
      v21 = (v53 + 24 * ((v52 >> ((4 * *(v53 + 18) + 8) & 0x3C)) & 0xF));
      v22 = v21[3];
      v23 = v52;
      v24 = v21[5];
      v18 = __OFADD__(v16++, 1);
      v25 = v18;
      v47 = v21[4];

      v46 = v24;

      if (v25)
      {
        goto LABEL_39;
      }

      v54 = v16;
      v18 = __OFADD__(v68, v22);
      v68 += v22;
      if (v18)
      {
        goto LABEL_41;
      }

      v55 = v68;
      if (!v11)
      {
        goto LABEL_43;
      }
    }

    else
    {
      result = specialized Rope._Node.subscript.getter(v52, v11);
      v46 = v27;
      v47 = v26;
      v18 = __OFADD__(v16++, 1);
      if (v18)
      {
        goto LABEL_39;
      }

      v28 = v68;
      v54 = v16;
      v23 = v19;
      v45 = specialized Rope._Node.subscript.getter(v19, v11);

      v18 = __OFADD__(v28, v45);
      v29 = v28 + v45;
      if (v18)
      {
        goto LABEL_42;
      }

      v55 = v29;
      v68 = v29;
      if (!v11)
      {
        goto LABEL_43;
      }
    }

    if (v23 >= (((-15 << ((4 * *(v11 + 18) + 8) & 0x3C)) - 1) & *(v11 + 18) | (*(v11 + 16) << ((4 * *(v11 + 18) + 8) & 0x3C))))
    {
      goto LABEL_43;
    }

    if (v20 && (v30 = (4 * *(v20 + 18) + 8) & 0x3C, v31 = ((v23 >> v30) & 0xF) + 1, v31 < *(v20 + 16)))
    {
      v52 = (v31 << v30) | ((-15 << v30) - 1) & v23;
    }

    else if ((specialized Rope._Node.formSuccessor(of:)(&v51, v11) & 1) == 0)
    {
      v32 = ((-15 << ((4 * *(v11 + 18) + 8) & 0x3C)) - 1) & *(v11 + 18) | (*(v11 + 16) << ((4 * *(v11 + 18) + 8) & 0x3C));
      v51 = v44;
      v52 = v32;
      v53 = 0;
    }

    v33 = *(v42 + 40);
    v59 = *(v42 + 24);
    v60 = v33;
    v61 = *(v42 + 56);
    swift_unknownObjectRetain();
    BigString.UTF8View.index(_:offsetBy:)();
    swift_unknownObjectRelease();
    v34 = *(v42 + 40);
    v56 = *(v42 + 24);
    v57 = v34;
    v58 = *(v42 + 56);
    swift_unknownObjectRetain();
    v35 = BigString.UTF16View.distance(from:to:)();
    swift_unknownObjectRelease();
    v36 = v47;
    if (*(v47 + 16))
    {
      v49[0] = v47;
      v49[1] = v46;

      v37 = specialized Dictionary<>.init(_:attributeTable:options:)(v49, v39, 0);
      v17 = v48;
      if (v43)
      {

        swift_unknownObjectRelease();
        return v36;
      }

      if (*(v37 + 16))
      {
        type metadata accessor for NSAttributedStringKey(0);
        lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey();
        [v38 setAttributes:_NativeDictionary.bridged()() range:{v48, v35}];
        result = swift_unknownObjectRelease();
      }

      else
      {
      }

      v11 = v41;
    }

    else
    {

      v11 = v41;
      v17 = v48;
    }

    v18 = __OFADD__(v17, v35);
    v15 = v17 + v35;
    v13 = v40;
    if (v18)
    {
      goto LABEL_40;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

{
  v3 = *a1;
  v45 = static AttributeScope.scopeDescription.getter(a3);

  v4 = *(v3 + 40);
  v71[0] = *(v3 + 24);
  v71[1] = v4;
  v5 = *(v3 + 56);
  v73 = *(v3 + 56);
  v72[0] = v71[0];
  v72[1] = v4;
  v71[2] = v5;
  outlined init with copy of Rope<BigString._Chunk>._Node?(v72, v56);
  MEMORY[0x1865CAF80](v71);
  v6 = objc_allocWithZone(NSMutableAttributedString);
  v7 = String._bridgeToObjectiveCImpl()();

  v44 = [v6 initWithString_];
  swift_unknownObjectRelease();
  v8 = *(v3 + 40);
  v68 = *(v3 + 24);
  v69 = v8;
  v70 = *(v3 + 56);
  result = BigString.startIndex.getter();
  v74 = v10;
  v12 = *(v3 + 72);
  v11 = *(v3 + 80);
  v13 = *(v3 + 88);
  v14 = *(v3 + 96);
  v48 = v3;
  v56[0] = v12;
  v56[1] = v11;
  v50 = v14;
  v15 = v13;
  v56[2] = v13;
  v56[3] = v14;
  if (v12)
  {
    v16 = *(v12 + 18);
    result = swift_unknownObjectRetain();
  }

  else
  {
    v16 = 0;
  }

  v17 = 0;
  v18 = 0;
  v19 = 0;
  v57 = v50;
  v58 = v16;
  v60 = 0;
  v61 = 0;
  v59 = 0;
  v46 = v15;
  v47 = v12;
  while (1)
  {
    if (v12)
    {
      if (v19 == v15)
      {
        goto LABEL_36;
      }
    }

    else if (!v19)
    {
LABEL_36:

      swift_unknownObjectRelease();
      v43 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithAttributedString_];

      return v43;
    }

    if (v57 != v50)
    {
      break;
    }

    v54 = v17;
    v22 = v58;
    v23 = v59;
    if (v59)
    {
      v24 = (v59 + 24 * ((v58 >> ((4 * *(v59 + 18) + 8) & 0x3C)) & 0xF));
      v26 = v24[3];
      v25 = v24[4];
      v27 = v24[5];
      v21 = __OFADD__(v18++, 1);
      v28 = v21;

      v53 = v27;

      if (v28)
      {
        goto LABEL_40;
      }

      v60 = v18;
      v21 = __OFADD__(v19, v26);
      v19 += v26;
      if (v21)
      {
        goto LABEL_42;
      }

      v61 = v19;
      if (!v12)
      {
        goto LABEL_44;
      }
    }

    else
    {
      result = specialized Rope._Node.subscript.getter(v58, v12);
      v53 = v30;
      v21 = __OFADD__(v18, 1);
      v31 = v18 + 1;
      if (v21)
      {
        goto LABEL_40;
      }

      v25 = v29;
      v32 = v31;
      v60 = v31;
      v51 = specialized Rope._Node.subscript.getter(v22, v12);
      v33 = v19;

      v19 += v51;
      if (__OFADD__(v33, v51))
      {
        goto LABEL_43;
      }

      v61 = v33 + v51;
      if (!v12)
      {
        goto LABEL_44;
      }

      v18 = v32;
    }

    if (v22 >= (((-15 << ((4 * *(v12 + 18) + 8) & 0x3C)) - 1) & *(v12 + 18) | (*(v12 + 16) << ((4 * *(v12 + 18) + 8) & 0x3C))))
    {
      goto LABEL_44;
    }

    v52 = v25;
    if (v23 && (v34 = (4 * *(v23 + 18) + 8) & 0x3C, v35 = ((v22 >> v34) & 0xF) + 1, v35 < *(v23 + 16)))
    {
      v58 = (v35 << v34) | ((-15 << v34) - 1) & v22;
    }

    else if ((specialized Rope._Node.formSuccessor(of:)(&v57, v12) & 1) == 0)
    {
      v36 = ((-15 << ((4 * *(v12 + 18) + 8) & 0x3C)) - 1) & *(v12 + 18) | (*(v12 + 16) << ((4 * *(v12 + 18) + 8) & 0x3C));
      v57 = v50;
      v58 = v36;
      v59 = 0;
    }

    v37 = *(v48 + 40);
    v65 = *(v48 + 24);
    v66 = v37;
    v67 = *(v48 + 56);
    swift_unknownObjectRetain();
    BigString.UTF8View.index(_:offsetBy:)();
    v39 = v38;
    swift_unknownObjectRelease();
    v40 = *(v48 + 40);
    v62 = *(v48 + 24);
    v63 = v40;
    v64 = *(v48 + 56);
    swift_unknownObjectRetain();
    v41 = BigString.UTF16View.distance(from:to:)();
    swift_unknownObjectRelease();
    if (*(v52 + 16))
    {
      v55[0] = v52;
      v55[1] = v53;

      v42 = specialized Dictionary<>.init(_:attributeTable:options:)(v55, v45, 0);
      v20 = v54;
      if (v49)
      {
        v43 = v56[0];

        swift_unknownObjectRelease();
        return v43;
      }

      if (*(v42 + 16))
      {
        type metadata accessor for NSAttributedStringKey(0);
        lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey();
        [v44 setAttributes:_NativeDictionary.bridged()() range:{v54, v41}];
        result = swift_unknownObjectRelease();
      }

      else
      {
      }

      v15 = v46;
    }

    else
    {

      v15 = v46;
      v20 = v54;
    }

    v74 = v39;
    v21 = __OFADD__(v20, v41);
    v17 = v20 + v41;
    v12 = v47;
    if (v21)
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

id NSArray.init(arrayLiteral:)()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = [v0 initWithArray_];
  swift_unknownObjectRelease();
  return v1;
}

uint64_t specialized __JSONEncoder.wrap<A>(_:for:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v8 = v6;
  v13 = *(v8 + 88);
  if (v13)
  {
    if (v13 == 1)
    {
      return _s10Foundation6Base64O14encodeToString5bytes7optionsSSx_So06NSDataB15EncodingOptionsVtSlRzs5UInt8V7ElementRtzlFZAA4DataV_Tt1g5(a1, a2, 0);
    }

    if (a6 == -1)
    {
      v21 = 0;
      v22 = 0;
      v20 = 0;
      v56 = 0;
      v57 = 0;
    }

    else
    {
      v20 = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
      v21 = swift_allocObject();
      *(v21 + 16) = a3;
      *(v21 + 24) = a4;
      *(v21 + 32) = a5;
      *(v21 + 40) = a6;
      v22 = &type metadata for _CodingKey;
    }

    v55 = v21;
    v58 = v22;
    v59 = v20;
    outlined init with copy of FloatingPointRoundingRule?(&v55, &v46, &_ss9CodingKey_pSgMd);
    if (*(&v47 + 1))
    {
      outlined init with take of Equatable(&v46, v54);
      v24 = *(v8 + 184);
      if (v24)
      {
        *(v8 + 184) = 0;
        outlined copy of _CodingKey?(a3, a4, a5, a6);
        sub_1807A98E4(v13);
        outlined destroy of TermOfAddress?(v24 + 192, &_ss9CodingKey_pSgMd);
        outlined init with take of Equatable(v54, v24 + 192);
        *(v24 + 176) = v8;
      }

      else
      {
        v33 = *(v8 + 136);
        v50 = *(v8 + 120);
        v51 = v33;
        v52 = *(v8 + 152);
        v53 = *(v8 + 168);
        v34 = *(v8 + 72);
        v46 = *(v8 + 56);
        v47 = v34;
        v35 = *(v8 + 104);
        v48 = *(v8 + 88);
        v49 = v35;
        outlined init with take of Equatable(v54, v45);
        type metadata accessor for __JSONEncoder();
        v24 = swift_allocObject();
        *(v24 + 184) = 0u;
        *(v24 + 200) = 0u;
        *(v24 + 216) = 0u;
        v36 = v51;
        *(v24 + 120) = v50;
        *(v24 + 136) = v36;
        *(v24 + 152) = v52;
        v37 = v47;
        *(v24 + 56) = v46;
        *(v24 + 72) = v37;
        v38 = v49;
        *(v24 + 88) = v48;
        *(v24 + 16) = 0;
        *(v24 + 24) = 0;
        *(v24 + 32) = -1;
        *(v24 + 40) = 0;
        *(v24 + 48) = 0;
        v39 = v53;
        *(v24 + 104) = v38;
        *(v24 + 168) = v39;
        *(v24 + 176) = v8;
        outlined copy of _CodingKey?(a3, a4, a5, a6);

        sub_1807A98E4(v13);
        outlined init with copy of JSONEncoder._Options(&v46, v44);
        outlined assign with take of CodingKey?(v45, v24 + 192);
      }
    }

    else
    {
      outlined copy of _CodingKey?(a3, a4, a5, a6);
      sub_1807A98E4(v13);
      outlined destroy of TermOfAddress?(&v46, &_ss9CodingKey_pSgMd);

      v24 = v8;
    }

    outlined destroy of TermOfAddress?(&v55, &_ss9CodingKey_pSgMd);
    v60 = v24;
    *(&v47 + 1) = type metadata accessor for __JSONEncoder();
    *&v48 = lazy protocol witness table accessor for type __JSONEncoder and conformance __JSONEncoder(&lazy protocol witness table cache variable for type __JSONEncoder and conformance __JSONEncoder, type metadata accessor for __JSONEncoder);
    *&v46 = v24;

    v13(a1, a2, &v46);
    if (v7)
    {
      __swift_destroy_boxed_opaque_existential_1(&v46);
      $defer #1 <A>() in __JSONEncoder.wrap<A>(_:for:)(v8, &v60);
      sub_1807A5C7C(v13);
    }

    __swift_destroy_boxed_opaque_existential_1(&v46);
    v40 = __JSONEncoder.takeValue()();
    if (v41 == 255)
    {
      v32 = MEMORY[0x1E69E7CC8];
    }

    else
    {
      v32 = v40;
    }

    $defer #1 <A>() in __JSONEncoder.wrap<A>(_:for:)(v8, &v60);
    sub_1807A5C7C(v13);
  }

  else
  {
    if (a6 == -1)
    {
      v18 = 0;
      v19 = 0;
      v17 = 0;
      v56 = 0;
      v57 = 0;
    }

    else
    {
      v17 = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
      v18 = swift_allocObject();
      *(v18 + 16) = a3;
      *(v18 + 24) = a4;
      *(v18 + 32) = a5;
      *(v18 + 40) = a6;
      v19 = &type metadata for _CodingKey;
    }

    v55 = v18;
    v58 = v19;
    v59 = v17;
    outlined init with copy of FloatingPointRoundingRule?(&v55, &v46, &_ss9CodingKey_pSgMd);
    if (*(&v47 + 1))
    {
      outlined init with take of Equatable(&v46, v54);
      v23 = *(v8 + 184);
      if (v23)
      {
        *(v8 + 184) = 0;
        outlined copy of _CodingKey?(a3, a4, a5, a6);
        outlined destroy of TermOfAddress?(v23 + 192, &_ss9CodingKey_pSgMd);
        outlined init with take of Equatable(v54, v23 + 192);
        *(v23 + 176) = v8;
      }

      else
      {
        v25 = *(v8 + 136);
        v50 = *(v8 + 120);
        v51 = v25;
        v52 = *(v8 + 152);
        v53 = *(v8 + 168);
        v26 = *(v8 + 72);
        v46 = *(v8 + 56);
        v47 = v26;
        v27 = *(v8 + 104);
        v48 = *(v8 + 88);
        v49 = v27;
        outlined init with take of Equatable(v54, v45);
        type metadata accessor for __JSONEncoder();
        v23 = swift_allocObject();
        *(v23 + 184) = 0u;
        *(v23 + 200) = 0u;
        *(v23 + 216) = 0u;
        v28 = v51;
        *(v23 + 120) = v50;
        *(v23 + 136) = v28;
        *(v23 + 152) = v52;
        v29 = v47;
        *(v23 + 56) = v46;
        *(v23 + 72) = v29;
        v30 = v49;
        *(v23 + 88) = v48;
        *(v23 + 16) = 0;
        *(v23 + 24) = 0;
        *(v23 + 32) = -1;
        *(v23 + 40) = 0;
        *(v23 + 48) = 0;
        v31 = v53;
        *(v23 + 104) = v30;
        *(v23 + 168) = v31;
        *(v23 + 176) = v8;
        outlined copy of _CodingKey?(a3, a4, a5, a6);

        outlined init with copy of JSONEncoder._Options(&v46, v44);
        outlined assign with take of CodingKey?(v45, v23 + 192);
      }
    }

    else
    {
      outlined copy of _CodingKey?(a3, a4, a5, a6);
      outlined destroy of TermOfAddress?(&v46, &_ss9CodingKey_pSgMd);

      v23 = v8;
    }

    outlined destroy of TermOfAddress?(&v55, &_ss9CodingKey_pSgMd);
    v60 = v23;

    __JSONEncoder.unkeyedContainer()(&v46);

    specialized Data._Representation.withUnsafeBytes<A>(_:)(a1, a2, &v46);
    if (v7)
    {
      __swift_destroy_boxed_opaque_existential_1(&v46);
      $defer #1 <A>() in __JSONEncoder.wrap<A>(_:for:)(v8, &v60);
    }

    __swift_destroy_boxed_opaque_existential_1(&v46);
    v32 = __JSONEncoder.takeValue()();
    $defer #1 <A>() in __JSONEncoder.wrap<A>(_:for:)(v8, &v60);
  }

  return v32;
}

__n128 protocol witness for Collection.startIndex.getter in conformance AttributedString.CharacterView@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(*v1 + 16);
  result = *(v1 + 8);
  v4 = *(v1 + 24);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

uint64_t NSURLSessionWebSocketTask.send(_:)()
{
  return (*(v0 + 8))();
}

{
  *(v0 + 16) = v0;
  *(v0 + 24) = NSURLSessionWebSocketTask.send(_:);
  v1 = swift_continuation_init();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  NSURLSessionWebSocketTask.send(_:completionHandler:)(v0 + 80, partial apply for closure #1 in closure #1 in NSURLSessionWebSocketTask.send(_:), v2);

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

{
  v1 = *(*v0 + 48);
  *(*v0 + 112) = v1;
  if (v1)
  {
    swift_willThrow();
    v2 = NSURLSessionWebSocketTask.send(_:);
  }

  else
  {
    v2 = NSURLSessionWebSocketTask.send(_:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  return (*(v0 + 8))();
}

uint64_t _sSo20NSNotificationCenterC10FoundationE13NotificationsC8IteratorVScIACScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTQ0_()
{
  v2 = *(*v1 + 24);
  *(*v1 + 48) = v0;

  if (v0)
  {
    if (v2)
    {
      swift_getObjectType();
      v3 = dispatch thunk of Actor.unownedExecutor.getter();
      v5 = v4;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v6 = _sSo20NSNotificationCenterC10FoundationE13NotificationsC8IteratorVScIACScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTY2_;
  }

  else
  {
    if (v2)
    {
      swift_getObjectType();
      v3 = dispatch thunk of Actor.unownedExecutor.getter();
      v5 = v7;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v6 = NSURLSessionWebSocketTask.send(_:);
  }

  return MEMORY[0x1EEE6DFA0](v6, v3, v5);
}

Swift::Void __swiftcall AnyKeyPath._validateForPredicateUsage(restrictArguments:)(Swift::Bool restrictArguments)
{
  v2 = *(v1 + 32);
  v3 = (v2 >> 24) & 0x7F;
  if ((HIBYTE(*(v1 + 32)) & 0x7Fu) > 2)
  {
    if (v3 != 3)
    {
      goto LABEL_23;
    }

    goto LABEL_8;
  }

  if (v3 == 1)
  {
LABEL_8:
    dispatch thunk of static AnyKeyPath._rootAndValueType.getter();
    type metadata accessor for PartialKeyPath();
    swift_dynamicCastClassUnconditional();
    dispatch thunk of AnyKeyPath._storedInlineOffset.getter();
    if ((v5 & 1) == 0)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v3 != 2)
  {
    goto LABEL_24;
  }

  LODWORD(v3) = *(v1 + 24);
  if ((v2 & 0x400000) == 0)
  {
    if ((v2 & 0x80000) == 0)
    {
      v4 = 3;
      goto LABEL_19;
    }

    if (!restrictArguments)
    {
      v6 = 3;
      goto LABEL_16;
    }

LABEL_25:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  if ((v2 & 0x80000) == 0)
  {
    v4 = 4;
    goto LABEL_19;
  }

  if (restrictArguments)
  {
    goto LABEL_25;
  }

  v6 = 4;
LABEL_16:
  v7 = *(v1 + 32 + 8 * v6);
  if ((v7 & 0x8000000000000000) != 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    if (v3 == 4)
    {
      goto LABEL_25;
    }

LABEL_24:
    _StringGuts.grow(_:)(52);
    MEMORY[0x1865CB0E0](0xD000000000000031, 0x8000000181483FC0);
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1865CB0E0](v9);

    MEMORY[0x1865CB0E0](41, 0xE100000000000000);
    goto LABEL_25;
  }

  v8 = v6 + (v7 >> 3);
  if ((v8 - 0xFFFFFFFFFFFFFFELL) >> 61 != 7)
  {
    __break(1u);
    goto LABEL_22;
  }

  v4 = v8 + 2;
LABEL_19:
  if ((v3 & 0xFFFFFFuLL) > 8 * v4)
  {
    goto LABEL_25;
  }
}

uint64_t type metadata completion function for PredicateExpressions.KeyPath()
{
  v0 = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    v0 = type metadata accessor for KeyPath();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v0;
}

uint64_t type metadata completion function for PredicateExpressions.Comparison()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t static PredicateExpressions.build_Comparison<A, B>(lhs:rhs:op:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _BYTE *a6@<X8>)
{
  v11 = *a3;
  v12 = type metadata accessor for PredicateExpressions.Comparison();
  (*(*(a4 - 8) + 16))(&a6[*(v12 + 60)], a1, a4);
  result = (*(*(a5 - 8) + 16))(&a6[*(v12 + 64)], a2, a5);
  *a6 = v11;
  return result;
}

uint64_t PredicateExpressions.KeyPath.kind.getter@<X0>(char *a1@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  result = swift_conformsToProtocol2();
  if (result)
  {
    v4 = AssociatedTypeWitness == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    *a1 = 4;
  }

  else
  {

    return static PredicateExpressions.KeyPath.kind<A>(_:collectionType:)(a1);
  }

  return result;
}

uint64_t static PredicateExpressions.KeyPath.kind<A>(_:collectionType:)@<X0>(char *a1@<X8>)
{
  type metadata accessor for PartialKeyPath();
  swift_dynamicCastClassUnconditional();
  swift_getKeyPath();
  type metadata accessor for AnyKeyPath();
  v2 = dispatch thunk of static Equatable.== infix(_:_:)();

  if ((v2 & 1) == 0)
  {
    swift_getKeyPath();
    v4 = dispatch thunk of static Equatable.== infix(_:_:)();

    if ((v4 & 1) == 0)
    {
      MEMORY[0x1EEE9AC00](result);
      swift_getKeyPath();
      v5 = dispatch thunk of static Equatable.== infix(_:_:)();

      if ((v5 & 1) == 0)
      {
        swift_getKeyPath();
        v6 = dispatch thunk of static Equatable.== infix(_:_:)();

        if (v6 & 1) != 0 || (swift_getKeyPath(), v7 = dispatch thunk of static Equatable.== infix(_:_:)(), result = , (v7) || (MEMORY[0x1EEE9AC00](result), swift_getKeyPath(), v8 = dispatch thunk of static Equatable.== infix(_:_:)(), result = , (v8))
        {
          v9 = 1;
        }

        else
        {
          MEMORY[0x1EEE9AC00](result);
          swift_getKeyPath();
          v10 = dispatch thunk of static Equatable.== infix(_:_:)();

          if (v10)
          {
            v9 = 2;
          }

          else
          {
            MEMORY[0x1EEE9AC00](result);
            swift_getKeyPath();
            v11 = dispatch thunk of static Equatable.== infix(_:_:)();

            if (v11)
            {
              v9 = 3;
            }

            else
            {
              AssociatedTypeWitness = swift_getAssociatedTypeWitness();
              result = swift_conformsToProtocol2();
              if (result && AssociatedTypeWitness)
              {
                return static PredicateExpressions.KeyPath.kind<A, B>(_:hashableElementType:)(a1);
              }

              v9 = 4;
            }
          }
        }

        *a1 = v9;
        return result;
      }
    }
  }

  *a1 = 0;
  return result;
}

uint64_t sub_1808D7BF0@<X0>(uint64_t *a1@<X8>)
{
  result = String.count.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1808D7C24@<X0>(uint64_t *a1@<X8>)
{
  result = Substring.distance(from:to:)();
  *a1 = result;
  return result;
}

uint64_t sub_1808D7C5C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  result = MEMORY[0x1865CB550](v3, AssociatedTypeWitness);
  *a2 = result;
  return result;
}

__n128 sub_1808D7CC4(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(a2 + 32) = *(a1 + 32);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

void *sub_1808D7CD8@<X0>(void *result@<X0>, BOOL *a2@<X8>)
{
  v2 = result[1];
  v3 = *result & 0xFFFFFFFFFFFFLL;
  if ((v2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(v2) & 0xF;
  }

  *a2 = v3 == 0;
  return result;
}

uint64_t static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  (*(*(a2 - 8) + 16))(a3, a1);
  type metadata accessor for KeyPath();

  swift_dynamicCast();

  AnyKeyPath._validateForPredicateUsage(restrictArguments:)(0);

  result = type metadata accessor for PredicateExpressions.KeyPath();
  *(a3 + *(result + 44)) = v5;
  return result;
}

uint64_t getEnumTagSinglePayload for TermOfAddress.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t URLComponents.queryItems.setter(Swift::OpaquePointer_optional a1)
{
  URLComponents._URLComponents.setQueryItems(_:)(a1);
}

uint64_t type metadata instantiation function for _PlistKeyedEncodingContainerBPlist()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t _PlistKeyedEncodingContainerBPlist.encode(_:forKey:)(char a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = 72;
  if (a1)
  {
    v4 = 64;
  }

  v30 = *(v2 + v4);

  v5 = dispatch thunk of CodingKey.stringValue.getter();
  v7 = v6;
  if (specialized Sequence.allSatisfy(_:)(implicit closure #1 in _BPlistEncodingFormat.string(_:), 0, v5, v6))
  {

    v8 = MEMORY[0x1865CB280](v5, v7);
    v9 = 1;
  }

  else
  {
    v10 = String._bridgeToObjectiveCImpl()();

    v8 = [v10 hash];
    swift_unknownObjectRelease();
    v9 = 0;
  }

  v11 = *(v2 + 88);
  v12 = *(v11 + 16);
  v13 = *(v11 + 24);
  v14 = *(v11 + 32);
  *(v11 + 16) = v5;
  *(v11 + 24) = v7;
  *(v11 + 32) = v8;
  v15 = *(v11 + 40);
  *(v11 + 40) = v9;

  outlined consume of _BPlistEncodingFormat.Reference.Backing(v12, v13, v14, v15);

  v16 = specialized Set._Variant.insert(_:)(&v28, v11);

  v17 = v28;
  if (v16)
  {
    type metadata accessor for _BPlistEncodingFormat.Reference();
    v18 = swift_allocObject();
    *(v18 + 24) = 0;
    *(v18 + 32) = 0;
    *(v18 + 16) = 2;
    *(v18 + 40) = -112;
    *(v18 + 48) = -1;

    *(v2 + 88) = v18;
  }

  v20 = *(v3 + 40);
  if ((v20 & 0xF0) == 0x60)
  {
    v22 = *(v3 + 24);
    v21 = *(v3 + 32);
    v28 = *(v3 + 16);
    v23 = v28;
    *&v29 = v22;
    *(&v29 + 1) = v21;
    *(v3 + 24) = 0;
    *(v3 + 32) = 0;
    *(v3 + 16) = 2;
    *(v3 + 40) = -112;

    outlined consume of _BPlistEncodingFormat.Reference.Backing(v23, v22, v21, v20);
    specialized OrderedDictionary.subscript.setter(v30, v17);
    v24 = *(v3 + 16);
    v25 = *(v3 + 24);
    v26 = *(v3 + 32);
    *(v3 + 16) = v28;
    *(v3 + 24) = v29;
    v27 = *(v3 + 40);
    *(v3 + 40) = 96;
    return outlined consume of _BPlistEncodingFormat.Reference.Backing(v24, v25, v26, v27);
  }

  else
  {
    __break(1u);
  }

  return result;
}

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

uint64_t protocol witness for KeyedEncodingContainerProtocol.encode(_:forKey:) in conformance _PlistKeyedEncodingContainerBPlist<A>(char a1)
{
  return _PlistKeyedEncodingContainerBPlist.encode(_:forKey:)(a1);
}

{
  return _PlistKeyedEncodingContainerBPlist.encode(_:forKey:)(a1);
}

uint64_t specialized OrderedDictionary.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a3 + 32;
  v7 = *(a3 + 16);
  if (!a2)
  {
    if (v7)
    {
      v9 = 0;
      while (1)
      {

        v14 = specialized static _BPlistEncodingFormat.Reference.== infix(_:_:)(v13, a1);

        if (v14)
        {
          break;
        }

        if (v7 == ++v9)
        {
          return 0;
        }
      }

LABEL_4:
      if (v9 < *(a4 + 16))
      {
      }

      goto LABEL_12;
    }

    return 0;
  }

  v9 = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(a1, v6, v7, (a2 + 16), a2 + 32);
  v11 = v10;

  if (v11)
  {
    return 0;
  }

  if ((v9 & 0x8000000000000000) == 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t URLRequest.init(url:cachePolicy:timeoutInterval:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, double a4@<D0>)
{
  v7 = *(a1 + 8);
  v8 = objc_allocWithZone(MEMORY[0x1E695AC18]);
  ObjectType = swift_getObjectType();
  v10 = (*(v7 + 432))(ObjectType, v7);
  v11 = [v8 initWithURL:v10 cachePolicy:a2 timeoutInterval:a4];
  swift_unknownObjectRelease();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14_MutableHandleCySo19NSMutableURLRequestCGMd);
  result = swift_allocObject();
  *(result + 16) = v11;
  *a3 = result;
  return result;
}

uint64_t URLRequest.httpMethod.setter(uint64_t a1, uint64_t a2)
{
  specialized URLRequest.httpMethod.setter(a1, a2, closure #1 in URLRequest.httpMethod.setter);
}

void specialized URLRequest.httpMethod.setter(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(*v3 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14_MutableHandleCySo19NSMutableURLRequestCGMd);
    v7 = swift_allocObject();
    v8 = v6;
    [v8 copy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();

    type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSMutableURLRequest);
    swift_dynamicCast();
    v6 = v10;
    *(v7 + 16) = v10;

    *v3 = v7;
  }

  v9 = v6;
  a3();
}

uint64_t closure #1 in URLRequest.httpMethod.setter(void *a1)
{
  [a1 setHTTPMethod_];

  return swift_unknownObjectRelease();
}

NSURLRequest __swiftcall URLRequest._bridgeToObjectiveC()()
{
  [*(*v0 + 16) copy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSMutableURLRequest);
  swift_dynamicCast();
  v2 = v4;
  result._internal = v1;
  result.super.isa = v2;
  return result;
}

void URLRequest.url.getter(SEL *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = *(*v2 + 16);
  v6 = [v5 *a1];
  if (v6)
  {
    v7 = v6;
    static URL._unconditionallyBridgeFromObjectiveC(_:)(v6, &v9);

    v8 = v9;
  }

  else
  {

    v8 = 0uLL;
  }

  *a2 = v8;
}

uint64_t closure #1 in writeToFile(path:data:options:attributes:reportProgress:)(__int128 *a1, std::__fs::filesystem::path *a2, uint64_t a3, _BYTE *a4, int a5, void *a6, uint64_t a7, int a8)
{
  LOBYTE(v10) = v9;
  v108 = a8;
  v11 = a7;
  LODWORD(v13) = a5;
  v14 = a4;
  v15 = a3;
  v109 = a1;
  v110 = a2;
  v118 = *MEMORY[0x1E69E9840];
  v111 = a4;
  v112 = a7;
  if ((a6 & 1) == 0)
  {
    if (a5)
    {
      ObjectType = swift_getObjectType();
      v8 = v14 + 240;
      v17 = *(v14 + 240);
      outlined copy of PathOrURL(v15, v14, 1);

      v11 = v15;
      v19 = v17(ObjectType, v14);
      v14 = v18;
    }

    else
    {
      outlined copy of PathOrURL(a3, a4, 0);
      outlined copy of PathOrURL(v15, v14, 0);

      v19 = v15;
    }

    if ((v14 & 0x1000000000000000) != 0)
    {
      v8 = v19;
      v22 = String.UTF8View._foreignCount()();
      v19 = v8;
    }

    else if ((v14 & 0x2000000000000000) != 0)
    {
      v22 = HIBYTE(v14) & 0xF;
    }

    else
    {
      v22 = v19 & 0xFFFFFFFFFFFFLL;
    }

    v23 = 3 * v22;
    if ((v22 * 3) >> 64 == (3 * v22) >> 63)
    {
      if (v23 >= -1)
      {
        v18 = v23 + 1;
        if (v23 < 1024)
        {
          goto LABEL_14;
        }

        goto LABEL_153;
      }

      __break(1u);
LABEL_160:
      __break(1u);
LABEL_161:
      __break(1u);
      goto LABEL_162;
    }

    __break(1u);
    goto LABEL_151;
  }

  if (a5)
  {
    v20 = swift_getObjectType();
    v21 = *(v14 + 240);
    outlined copy of PathOrURL(v15, v14, 1);

    v11 = v21(v20, v14);
    v14 = v18;
  }

  else
  {
    outlined copy of PathOrURL(a3, a4, 0);
    outlined copy of PathOrURL(v15, v14, 0);

    v11 = v15;
  }

  if ((v14 & 0x1000000000000000) != 0)
  {
LABEL_151:
    v22 = String.UTF8View._foreignCount()();
    goto LABEL_22;
  }

  if ((v14 & 0x2000000000000000) != 0)
  {
    v22 = HIBYTE(v14) & 0xF;
  }

  else
  {
    v22 = v11 & 0xFFFFFFFFFFFFLL;
  }

LABEL_22:
  v8 = 3 * v22;
  if ((v22 * 3) >> 64 == (3 * v22) >> 63)
  {
    if (v8 < -1)
    {
      goto LABEL_160;
    }

    v106 = a6;
    v107 = v9;
    v32 = v8 + 1;

    outlined copy of PathOrURL(v15, v111, v13 & 1);
    outlined copy of PathOrURL(v15, v111, v13 & 1);

    if (v8 < 1024 || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
    {
      MEMORY[0x1EEE9AC00](isStackAllocationSafe);
      v35 = &v104[-v34];
      if (String._fileSystemRepresentation(into:)(&v104[-v34], v32, v11, v14))
      {
        v103 = v112;
        v36 = v13 & 1;
        v37 = v108 & 1;
        v38 = v35;
      }

      else
      {
        v103 = v112;
        v36 = v13 & 1;
        v37 = v108 & 1;
        v38 = 0;
      }

      v43 = v111;
      v44 = v107;
      closure #1 in writeToFileAux(path:buffer:options:attributes:reportProgress:)(v38, v15, v111, v36, v106, v37, v109, v110, v103);
      if (v44)
      {
        swift_willThrow();
      }

      outlined consume of PathOrURL(v15, v43, v13 & 1);
    }

    else
    {
      v102 = swift_slowAlloc();
      v43 = v111;
      outlined copy of PathOrURL(v15, v111, v13 & 1);

      specialized closure #1 in String.withFileSystemRepresentation<A>(_:)(v102, v32, v11, v14, v15, v111, v13 & 1, v106, v108 & 1, v109, v110, v112);
      if (!v107)
      {
        MEMORY[0x1865D2690](v102, -1, -1);
        outlined consume of PathOrURL(v15, v111, v13 & 1);

        outlined consume of PathOrURL(v15, v111, v13 & 1);

        goto LABEL_37;
      }

      MEMORY[0x1865D2690](v102, -1, -1);
      outlined consume of PathOrURL(v15, v111, v13 & 1);
    }

    outlined consume of PathOrURL(v15, v43, v13 & 1);

LABEL_37:
    outlined consume of PathOrURL(v15, v43, v13 & 1);
  }

  __break(1u);
LABEL_153:
  v96 = v18;
  v97 = v19;
  v22 = swift_stdlib_isStackAllocationSafe();
  if ((v22 & 1) == 0)
  {
    v98 = v96;
    v99 = v97;
    v100 = swift_slowAlloc();
    v8 = v111;
    outlined copy of PathOrURL(v15, v111, v13 & 1);

    specialized closure #1 in String.withFileSystemRepresentation<A>(_:)(v100, v98, v99, v14, a6, v15, v111, v13 & 1, v108 & 1, v109, v110, v101);
    v22 = v100;
    v18 = -1;
    v19 = -1;
    if (v9)
    {
      MEMORY[0x1865D2690](v100, -1, -1);

      v29 = v13 & 1;
      v30 = v15;
      v31 = v111;
      goto LABEL_147;
    }

LABEL_162:
    MEMORY[0x1865D2690](v22, v18, v19);

    v29 = v13 & 1;
    v30 = v15;
    v31 = v8;
    goto LABEL_147;
  }

LABEL_14:
  v8 = v104;
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v104[-v24];
  if (String._fileSystemRepresentation(into:)(&v104[-v24], v26, v27, v14))
  {
    v28 = v111;
    closure #1 in writeToFileNoAux(path:buffer:options:attributes:reportProgress:)(v25, a6, v15, v111, v13 & 1, v108 & 1, v109, v110, v112);
    if (!v9)
    {

      v29 = v13 & 1;
      v30 = v15;
      v31 = v28;
LABEL_147:
      outlined consume of PathOrURL(v30, v31, v29);
    }

LABEL_146:
    swift_willThrow();

    v29 = v13 & 1;
    v30 = v15;
    v31 = v28;
    goto LABEL_147;
  }

  isTaggedPointer = _objc_isTaggedPointer(@"NSCocoaErrorDomain");
  v40 = @"NSCocoaErrorDomain";
  v41 = v40;
  v28 = MEMORY[0x1E69E7CA0];
  v108 = isTaggedPointer;
  v110 = v40;
  if (!isTaggedPointer)
  {
LABEL_38:
    LOBYTE(v113) = 0;
    v117 = 0;
    LOBYTE(v115) = 0;
    v116 = 0;
    IsCF = __CFStringIsCF();
    v107 = v9;
    if (!IsCF)
    {
      v46 = v41;
      String.init(_nativeStorage:)();
      if (v47 || (v117 = [(__CFString *)v46 length]) == 0)
      {

        goto LABEL_67;
      }

      goto LABEL_66;
    }

    if (v117)
    {
      if (v116 == 1)
      {
        if (v113)
        {
          lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
        }

        else
        {
          lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
        }

        String.init<A>(_immortalCocoaString:count:encoding:)();
        goto LABEL_67;
      }

      if (v115)
      {
        if (v113 != 1)
        {
          IsCF = [(__CFString *)v41 lengthOfBytesUsingEncoding:4];
        }

        MEMORY[0x1EEE9AC00](IsCF);
        v51 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        v107 = v9;
        v53 = HIBYTE(v52) & 0xF;
        if ((v52 & 0x2000000000000000) == 0)
        {
          v53 = v51 & 0xFFFFFFFFFFFFLL;
        }

        if (v53)
        {

          v8 = v104;
          goto LABEL_67;
        }

        v8 = v104;
      }

LABEL_66:
      String.init(_cocoaString:)();
      goto LABEL_67;
    }

LABEL_50:

    goto LABEL_67;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v40);
  if (!TaggedPointerTag)
  {
    v107 = v9;
    v115 = 0;
    _CFIndirectTaggedPointerStringGetContents();
    _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v50)
    {
      [(__CFString *)v41 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      goto LABEL_67;
    }

    goto LABEL_50;
  }

  if (TaggedPointerTag != 22)
  {
    if (TaggedPointerTag == 2)
    {
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v107 = v9;

      v8 = v104;
      goto LABEL_67;
    }

    goto LABEL_38;
  }

  v107 = v9;
  v48 = [(__CFString *)v41 UTF8String];
  if (!v48)
  {
    outlined consume of PathOrURL(v15, v111, v13 & 1);

    __break(1u);
LABEL_165:
    outlined consume of PathOrURL(isTaggedPointer, v28, v105 & 1);

    __break(1u);
    goto LABEL_166;
  }

  String.init(utf8String:)(v48);
  if (!v49)
  {
LABEL_166:
    outlined consume of PathOrURL(v15, v111, v13 & 1);

    __break(1u);
    goto LABEL_167;
  }

LABEL_67:
  v54 = objc_allocWithZone(NSError);
  v55 = String._bridgeToObjectiveCImpl()();

  v56 = [v54 initWithDomain:v55 code:514 userInfo:_NativeDictionary.bridged()()];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v57 = [v56 domain];
  if (!v57)
  {
    v106 = 0;
    v109 = 0xE000000000000000;
    v28 = v111;
LABEL_106:
    v78 = v110;
    v10 = v78;
    v105 = v13;
    if (!v108)
    {
      goto LABEL_111;
    }

    v79 = _objc_getTaggedPointerTag(v78);
    if (!v79)
    {
      goto LABEL_123;
    }

    if (v79 != 22)
    {
      if (v79 == 2)
      {
        isTaggedPointer = v15;
        MEMORY[0x1EEE9AC00](v79);
        v80 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        v13 = v81;

        v8 = v104;
        goto LABEL_141;
      }

LABEL_111:
      LOBYTE(v113) = 0;
      v117 = 0;
      LOBYTE(v115) = 0;
      v116 = 0;
      v82 = __CFStringIsCF();
      if (v82)
      {
        if (v117)
        {
          isTaggedPointer = v15;
          if (v116 == 1)
          {
            if (v113)
            {
              lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
            }

            else
            {
              lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
            }

            v89 = String.init<A>(_immortalCocoaString:count:encoding:)();
            goto LABEL_140;
          }

          if (v115)
          {
            v111 = v104;
            if (v113 != 1)
            {
              v82 = [(std::__fs::filesystem::path *)v10 lengthOfBytesUsingEncoding:4];
            }

            MEMORY[0x1EEE9AC00](v82);
            v91 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
            v13 = v92;
            v93 = (v92 >> 56) & 0xF;
            if ((v92 & 0x2000000000000000) == 0)
            {
              v93 = v91 & 0xFFFFFFFFFFFFLL;
            }

            if (v93)
            {
              v80 = v91;

              v8 = v111;
              goto LABEL_141;
            }

            v8 = v111;
          }

LABEL_139:
          v89 = String.init(_cocoaString:)();
LABEL_140:
          v80 = v89;
          v13 = v90;
LABEL_141:
          if (v106 == v80 && v109 == v13)
          {

            v15 = isTaggedPointer;
LABEL_145:
            swift_willThrow();
            LOBYTE(v13) = v105;
            goto LABEL_146;
          }

          v94 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v15 = isTaggedPointer;
          if (v94)
          {
            goto LABEL_145;
          }

          goto LABEL_161;
        }

        isTaggedPointer = v15;
      }

      else
      {
        isTaggedPointer = v15;
        v83 = v10;
        v84 = String.init(_nativeStorage:)();
        if (v85)
        {
          v80 = v84;
          v13 = v85;

          goto LABEL_141;
        }

        v117 = [(std::__fs::filesystem::path *)v83 length];
        if (v117)
        {
          goto LABEL_139;
        }
      }

      v80 = 0;
      v13 = 0xE000000000000000;
      goto LABEL_141;
    }

    isTaggedPointer = v15;
    v86 = [(std::__fs::filesystem::path *)v10 UTF8String];
    if (v86)
    {
      v87 = String.init(utf8String:)(v86);
      if (v88)
      {
        goto LABEL_124;
      }

      outlined consume of PathOrURL(v15, v28, v105 & 1);

      __break(1u);
LABEL_123:
      isTaggedPointer = v15;
      v115 = 0;
      _CFIndirectTaggedPointerStringGetContents();
      v87 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v88)
      {
        [(std::__fs::filesystem::path *)v10 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v80 = v113;
        v13 = v114;
        goto LABEL_141;
      }

LABEL_124:
      v80 = v87;
      v13 = v88;

      goto LABEL_141;
    }

    goto LABEL_165;
  }

  LODWORD(v10) = v13;
  v58 = v57;
  v59 = _objc_isTaggedPointer(v57);
  v60 = v58;
  v13 = v60;
  v28 = v111;
  if ((v59 & 1) == 0)
  {
LABEL_73:
    LOBYTE(v113) = 0;
    v117 = 0;
    LOBYTE(v115) = 0;
    v116 = 0;
    v64 = __CFStringIsCF();
    if (v64)
    {
      if (v117)
      {
        if (v116 == 1)
        {
          if (v113)
          {
            lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
          }

          else
          {
            lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
          }

          v72 = String.init<A>(_immortalCocoaString:count:encoding:)();
          goto LABEL_103;
        }

        if (v115)
        {
          if (v113 != 1)
          {
            v64 = [v13 lengthOfBytesUsingEncoding_];
          }

          MEMORY[0x1EEE9AC00](v64);
          v74 = v107;
          v75 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v107 = v74;
          v77 = (v76 >> 56) & 0xF;
          v109 = v76;
          if ((v76 & 0x2000000000000000) == 0)
          {
            v77 = v75 & 0xFFFFFFFFFFFFLL;
          }

          if (v77)
          {
            v106 = v75;

            LODWORD(v13) = v10;
            v8 = v104;
            goto LABEL_106;
          }

          v8 = v104;
        }

LABEL_102:
        v72 = String.init(_cocoaString:)();
LABEL_103:
        v106 = v72;
        v109 = v73;
        goto LABEL_104;
      }
    }

    else
    {
      v65 = v13;
      v66 = String.init(_nativeStorage:)();
      v109 = v67;
      if (v67)
      {
        v106 = v66;

        goto LABEL_105;
      }

      v117 = [v65 length];
      if (v117)
      {
        goto LABEL_102;
      }
    }

    v106 = 0;
    v109 = 0xE000000000000000;
    goto LABEL_105;
  }

  v61 = _objc_getTaggedPointerTag(v60);
  if (!v61)
  {
    v115 = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v70 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    v109 = v71;
    if (v71)
    {
      v106 = v70;
    }

    else
    {
      [v13 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v106 = v113;
      v109 = v114;
    }

    goto LABEL_104;
  }

  if (v61 != 22)
  {
    if (v61 == 2)
    {
      MEMORY[0x1EEE9AC00](v61);
      v62 = v107;
      v106 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v107 = v62;
      v109 = v63;

      v8 = v104;
LABEL_105:
      LODWORD(v13) = v10;
      goto LABEL_106;
    }

    goto LABEL_73;
  }

  v68 = [v13 UTF8String];
  if (!v68)
  {
LABEL_167:
    outlined consume of PathOrURL(v15, v28, v10 & 1);

    __break(1u);
    goto LABEL_168;
  }

  v106 = String.init(utf8String:)(v68);
  v109 = v69;
  if (v69)
  {

LABEL_104:
    goto LABEL_105;
  }

LABEL_168:
  outlined consume of PathOrURL(v15, v28, v10 & 1);

  __break(1u);
  return result;
}