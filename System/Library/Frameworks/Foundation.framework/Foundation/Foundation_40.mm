Swift::String __swiftcall Character._transform(toHalfWidth:stripDiacritics:caseFolding:)(Swift::Bool toHalfWidth, Swift::Bool stripDiacritics, Swift::Bool caseFolding)
{
  v5 = v4;
  v6 = v3;
  v7 = caseFolding;
  v8 = stripDiacritics;
  v9 = toHalfWidth;
  v58 = *MEMORY[0x1E69E9840];
  v50 = type metadata accessor for Unicode.Scalar.Properties();
  v10 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v49 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v6 == 2573 && v5 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    goto LABEL_9;
  }

  if ((Character._isSingleScalar.getter() & 1) == 0)
  {
    goto LABEL_12;
  }

  v12 = specialized Collection.first.getter(v6, v5);
  if ((v12 & 0x100000000) != 0)
  {
    __break(1u);
    goto LABEL_65;
  }

  if ((v12 & 0xFFFFFF80) != 0)
  {
LABEL_12:
    v17 = 0xE000000000000000;
    v55 = 0;
    v56 = 0xE000000000000000;
    v18 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v18 = v6 & 0xFFFFFFFFFFFFLL;
    }

    v51 = v18;
    if (!v18)
    {
LABEL_58:
      v53 = v18;
      v54 = v17;
      countAndFlagsBits = String.init<A>(_:)();
      goto LABEL_59;
    }

    v46 = (v5 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v47 = v5 & 0xFFFFFFFFFFFFFFLL;
    v48 = (v10 + 8);

    v19 = 0;
    while (1)
    {
      if ((v5 & 0x1000000000000000) != 0)
      {
        v34 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
        v31 = v35;
      }

      else
      {
        if ((v5 & 0x2000000000000000) != 0)
        {
          v53 = v6;
          v54 = v47;
          v33 = &v53 + v19;
        }

        else
        {
          v32 = v46;
          if ((v6 & 0x1000000000000000) == 0)
          {
            v32 = _StringObject.sharedUTF8.getter();
          }

          v33 = (v32 + v19);
        }

        v34 = *v33;
        if ((*v33 & 0x80000000) == 0)
        {
          goto LABEL_27;
        }

        v40 = (__clz(v34 ^ 0xFF) - 24);
        if (v40 > 2)
        {
          if (v40 == 3)
          {
            v34 = ((v34 & 0xF) << 12) | ((v33[1] & 0x3F) << 6) | v33[2] & 0x3F;
            v31 = 3;
          }

          else
          {
            v34 = ((v34 & 0xF) << 18) | ((v33[1] & 0x3F) << 12) | ((v33[2] & 0x3F) << 6) | v33[3] & 0x3F;
            v31 = 4;
          }

          goto LABEL_28;
        }

        if (v40 == 1)
        {
LABEL_27:
          v31 = 1;
        }

        else
        {
          v34 = v33[1] & 0x3F | ((v34 & 0x1F) << 6);
          v31 = 2;
        }
      }

LABEL_28:
      v36 = v34;
      if (v9)
      {
        v36 = v34;
        if (v34 - 65280 < 0xEF)
        {
          LODWORD(v53) = v34;
          CFUniCharCompatibilityDecompose();
          v36 = v53;
          if (v53 >> 11 == 27)
          {
            goto LABEL_62;
          }

          if (WORD1(v53) > 0x10u)
          {
            __break(1u);
LABEL_62:
            __break(1u);
LABEL_63:
            __break(1u);
          }
        }
      }

      if (!v8)
      {
        goto LABEL_42;
      }

      if (BYTE2(v34) > 0xEu || (v37 = *(&__CFUniCharGraphemeExtendCharacterSetBitmap_0 + BYTE2(v34))) == 0 || ((*(v37 + (v34 >> 3)) >> (v34 & 7)) & 1) == 0)
      {
        if (BYTE2(v36) <= 2u)
        {
          v38 = *(&__CFUniCharCanonicalDecomposableCharacterSetBitmap_0 + BYTE2(v36));
          if (v38)
          {
            if (((*(v38 + (v36 >> 3)) >> (v36 & 7)) & 1) != 0 && CFUniCharDecomposeCharacter() >= 1 && v57 < 0x510)
            {
              v36 = v57;
            }
          }
        }

LABEL_42:
        v52 = v31;
        if (v7)
        {
          v20 = v49;
          Unicode.Scalar.properties.getter();
          v21 = v5;
          v22 = v9;
          v23 = v8;
          v24 = v7;
          v25 = v6;
          v26 = Unicode.Scalar.Properties._caseFolded.getter();
          v28 = v27;
          (*v48)(v20, v50);
          v29 = v26;
          v6 = v25;
          v7 = v24;
          v8 = v23;
          v9 = v22;
          v5 = v21;
          v30 = v28;
        }

        else
        {
          if (v36 > 0x7F)
          {
            v41 = (v36 & 0x3F) << 8;
            if (v36 >= 0x800)
            {
              v42 = (v41 | (v36 >> 6) & 0x3F) << 8;
              v43 = (((v42 | (v36 >> 12) & 0x3F) << 8) | (v36 >> 18)) - 2122219023;
              v39 = (v36 >> 12) + v42 + 8487393;
              if (HIWORD(v36))
              {
                v39 = v43;
              }
            }

            else
            {
              v39 = (v36 >> 6) + v41 + 33217;
            }
          }

          else
          {
            v39 = v36 + 1;
          }

          v53 = (v39 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v39) >> 3))));
          v29 = static String._uncheckedFromUTF8(_:)();
        }

        MEMORY[0x1865CB0E0](v29, v30);

        v31 = v52;
      }

      v19 += v31;
      if (v19 >= v51)
      {

        v18 = v55;
        v17 = v56;
        goto LABEL_58;
      }
    }
  }

  v12 = specialized Collection.first.getter(v6, v5);
  if ((v12 & 0x100000000) != 0)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  if ((v12 & 0xFFFFFF00) != 0)
  {
    goto LABEL_63;
  }

LABEL_9:
  if (v7)
  {
    v16 = String.lowercased()();
    object = v16._object;
    countAndFlagsBits = v16._countAndFlagsBits;
LABEL_59:
    v6 = countAndFlagsBits;
    v5 = object;
    goto LABEL_60;
  }

LABEL_60:
  v12 = v6;
  v13 = v5;
LABEL_66:
  result._object = v13;
  result._countAndFlagsBits = v12;
  return result;
}

unint64_t specialized Collection.first.getter(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = _StringGuts.validateScalarIndex(_:)(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v8 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v16[0] = a1;
        v16[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v7 = v16 + v6;
      }

      else if ((a1 & 0x1000000000000000) != 0)
      {
        v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32 + v6);
      }

      else
      {
        v7 = (_StringObject.sharedUTF8.getter() + v6);
      }

      v8 = *v7;
      if (*v7 < 0)
      {
        v9 = (__clz(v8 ^ 0xFF) - 24);
        if (v9 > 2)
        {
          if (v9 == 3)
          {
            v10 = v7[1];
            v11 = v7[2];
            v12 = ((v8 & 0xF) << 12) | ((v10 & 0x3F) << 6);
          }

          else
          {
            v13 = v7[1];
            v14 = v7[2];
            v11 = v7[3];
            v12 = ((v8 & 0xF) << 18) | ((v13 & 0x3F) << 12) | ((v14 & 0x3F) << 6);
          }

          v8 = v12 & 0xFFFFFFC0 | v11 & 0x3F;
        }

        else if (v9 != 1)
        {
          v8 = v7[1] & 0x3F | ((v8 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  LOBYTE(v16[0]) = v2 == 0;
  return v8 | ((v2 == 0) << 32);
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

  if (v2)
  {
    v5 = _StringGuts.validateScalarIndex(_:)(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v9 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v17[0] = a1;
        v17[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v8 = v17 + v6;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v7 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        }

        else
        {
          v7 = _StringObject.sharedUTF8.getter();
        }

        v8 = (v7 + v6);
      }

      v9 = *v8;
      if (*v8 < 0)
      {
        v10 = (__clz(v9 ^ 0xFF) - 24);
        if (v10 > 2)
        {
          if (v10 == 3)
          {
            v11 = v8[1];
            v12 = v8[2];
            v13 = ((v9 & 0xF) << 12) | ((v11 & 0x3F) << 6);
          }

          else
          {
            v14 = v8[1];
            v15 = v8[2];
            v12 = v8[3];
            v13 = ((v9 & 0xF) << 18) | ((v14 & 0x3F) << 12) | ((v15 & 0x3F) << 6);
          }

          v9 = v13 & 0xFFFFFFC0 | v12 & 0x3F;
        }

        else if (v10 != 1)
        {
          v9 = v8[1] & 0x3F | ((v9 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v9 = 0;
  }

  LOBYTE(v17[0]) = v2 == 0;
  return v9 | ((v2 == 0) << 32);
}

uint64_t protocol witness for _LocaleProtocol.customDateFormat(_:) in conformance _LocaleAutoupdating(uint64_t *a1)
{
  v1 = *a1;
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v7[1] = *(&static LocaleCache.cache + 1);
  v7[2] = qword_1ED4404B0;
  LocaleCache._currentAndCache.getter();
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7[0] = v1;
  v5 = (*(v3 + 496))(v7, ObjectType, v3);
  swift_unknownObjectRelease();
  return v5;
}

uint64_t _LocaleICU.customDateFormat(_:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 136);
  v4 = *(v1 + 168);
  v13 = *(v1 + 152);
  v14[0] = v4;
  *(v14 + 12) = *(v1 + 180);
  v5 = *(v1 + 72);
  v6 = *(v1 + 104);
  v12[2] = *(v1 + 88);
  v12[3] = v6;
  v12[4] = *(v1 + 120);
  v12[5] = v3;
  v12[0] = *(v1 + 56);
  v12[1] = v5;
  if (_s10Foundation17LocalePreferencesVSgWOg(v12) == 1)
  {
    return 0;
  }

  v7 = *(&v13 + 1);
  if (!*(&v13 + 1))
  {
    return 0;
  }

  if (!*(*(&v13 + 1) + 16))
  {
    return 0;
  }

  v8 = specialized __RawDictionaryStorage.find<A>(_:)(v2);
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  v10 = *(*(v7 + 56) + 16 * v8);

  return v10;
}

uint64_t type metadata instantiation function for Measurement<>.FormatStyle.UnitWidth()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void type metadata completion function for Measurement<>.FormatStyle()
{
  type metadata accessor for Measurement<>.FormatStyle.UnitWidth();
  if (v0 <= 0x3F)
  {
    type metadata accessor for FloatingPointFormatStyle<Double>?();
    if (v1 <= 0x3F)
    {
      type metadata accessor for MeasurementFormatUnitUsage();
      type metadata accessor for Optional();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for FloatingPointFormatStyle<Double>?()
{
  if (!lazy cache variable for type metadata for FloatingPointFormatStyle<Double>?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation24FloatingPointFormatStyleVySdGMd);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for FloatingPointFormatStyle<Double>?);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t __swift_get_extra_inhabitant_indexTm_0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm_1(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 40) >> 1;
    v5 = -2 - v4;
    if (-2 - v4 < 0)
    {
      v5 = -1;
    }

    if (v4 > 0x80000000)
    {
      return (v5 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss25FloatingPointRoundingRuleOSgMd);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 36);

    return v10(v11, a2, v9);
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t lazy protocol witness table accessor for type CFDictionaryRef and conformance CFDictionaryRef(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _sSo15CFDictionaryRefaAB14CoreFoundation9_CFObjectSCWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _sSo15CFDictionaryRefaAB14CoreFoundation9_CFObjectSCWlTm_1(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _sSo15CFDictionaryRefaAB14CoreFoundation9_CFObjectSCWlTm_2(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined assign with take of FloatingPointFormatStyle<Double>?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24FloatingPointFormatStyleVySdGSgMd);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = a5(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

void *__swift_store_extra_inhabitant_indexTm_0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void *__swift_store_extra_inhabitant_indexTm_1(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t __swift_store_extra_inhabitant_indexTm_2(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 2 * ~a2;
    *(result + 56) = 0;
    *(result + 64) = 0;
    *(result + 48) = 0;
    *(result + 72) = 0;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss25FloatingPointRoundingRuleOSgMd);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t __swift_store_extra_inhabitant_indexTm_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = a5(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

uint64_t instantiation function for generic protocol witness table for Measurement<A><>.FormatStyle(void *a1)
{
  a1[1] = swift_getWitnessTable();
  a1[2] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a1[3] = result;
  return result;
}

uint64_t Measurement<>.FormatStyle.format(_:)(uint64_t a1, void *a2)
{
  v4 = 0;
  v246 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 8);
  v244 = *a1;
  v245 = v5;
  type metadata accessor for Measurement();
  v6 = v244;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMd);
  v239 = v2;
  v241 = a2;
  v240 = v6;
  if (!swift_dynamicCast())
  {
LABEL_9:
    v244 = v6;
    v245 = v5;
    v236 = Measurement<>.FormatStyle.skeleton(forMeasurement:)(&v244, a2);
    if (!v27)
    {
      v14 = v4;
      goto LABEL_105;
    }

    v28 = v27;
    v29 = *(v2 + 16);
    ObjectType = swift_getObjectType();
    v31 = *(v29 + 472);
    swift_unknownObjectRetain();

    v32 = v31(ObjectType, v29);
    v34 = v33;
    v14 = v4;
    v35 = v28;
    if (one-time initialization token for cache != -1)
    {
      v62 = v32;
      swift_once();
      v32 = v62;
    }

    v36 = *algn_1EA7B1588;
    v224 = static ICUMeasurementNumberFormatter.cache;
    a2 = v236;
    v230 = v32;
    MEMORY[0x1EEE9AC00](v32);
    os_unfair_lock_lock(v36 + 6);
    closure #1 in FormatterCache.formatter(for:creator:)specialized partial apply(&v36[4], &v244);
    v228 = v36;
    os_unfair_lock_unlock(v36 + 6);
    v4 = v244;
    v19 = v35;
    if (v244 != 1)
    {
      goto LABEL_100;
    }

    v233 = v14;
    v20 = v31(ObjectType, v29);
    v2 = v37;
    type metadata accessor for ICUMeasurementNumberFormatter();
    v4 = swift_allocObject();
    v4[3] = v236;
    v4[4] = v35;

    v38 = MEMORY[0x1865CB200](v236, v35);
    if (v38)
    {
      v6 = v38;
      v18 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs6UInt16V_Tt1gq5(v38, 0);

      v7 = specialized Sequence._copySequenceContents(initializing:)(&v244, (v18 + 4), v6, v236, v19);

      v39 = v228;
      if (v7 != v6)
      {
        __break(1u);
        goto LABEL_16;
      }
    }

    else
    {
      v18 = MEMORY[0x1E69E7CC0];
      v39 = v228;
    }

    LODWORD(v244) = 0;
    v40 = v18[2];
    if (!(v40 >> 31))
    {
      String.utf8CString.getter();

      v42 = unumf_openForSkeletonAndLocale();

      if (v42)
      {
        if (v244 < 1)
        {
          v4[2] = v42;
LABEL_43:
          os_unfair_lock_lock((v39 + 24));
          if (v224 < *(*(v39 + 16) + 16))
          {
            *(v39 + 16) = MEMORY[0x1E69E7CC8];
          }

          else
          {
          }

          LOBYTE(v40) = swift_isUniquelyReferenced_nonNull_native();
          v244 = *(v39 + 16);
          v20 = v244;
          *(v39 + 16) = 0x8000000000000000;
          v23 = specialized __RawDictionaryStorage.find<A>(_:)(v236, v19, v230, v34);
          v53 = v20[2];
          v54 = (v52 & 1) == 0;
          v55 = v53 + v54;
          if (!__OFADD__(v53, v54))
          {
            v56 = v52;
            if (v20[3] < v55)
            {
              specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v55, v40);
              v57 = v244;
              v58 = specialized __RawDictionaryStorage.find<A>(_:)(v236, v19, v230, v34);
              if ((v56 & 1) != (v59 & 1))
              {
                goto LABEL_219;
              }

              v23 = v58;
LABEL_52:
              v14 = v233;
              if (v56)
              {
LABEL_53:
                v60 = v23;

                *(v57[7] + 8 * v60) = v4;

LABEL_99:
                *(v39 + 16) = v57;

                os_unfair_lock_unlock((v39 + 24));

                outlined consume of ICUMeasurementNumberFormatter??(1);
LABEL_100:
                swift_unknownObjectRelease();

                if (v4)
                {
                  type metadata accessor for ICUNumberFormatterBase.FormatResult();
                  swift_initStackObject();
                  ICUNumberFormatterBase.FormatResult.init(formatter:value:)();
                  a2 = v241;
                  if (!v14)
                  {
                    goto LABEL_113;
                  }

                  v14 = 0;
                  v2 = v239;
                }

                else
                {

                  v2 = v239;
                  a2 = v241;
                }

                v6 = v240;
                while (1)
                {
LABEL_105:
                  if ((Measurement<>.FormatStyle.shouldConvertToBestUnit.getter(a2) & 1) == 0)
                  {
                    goto LABEL_158;
                  }

                  v244 = v6;
                  v245 = v5;
                  v106 = Measurement<>.FormatStyle.skeletonForUsage(_:)(&v244, a2);
                  if (!v107)
                  {
                    goto LABEL_158;
                  }

                  v108 = v107;
                  v231 = v106;

                  v109 = *(v2 + 16);
                  v110 = swift_getObjectType();
                  v111 = v109 + 472;
                  v112 = *(v109 + 472);
                  swift_unknownObjectRetain();

                  v113 = v112(v110, v109);
                  if (one-time initialization token for cache != -1)
                  {
                    v132 = v113;
                    v133 = v114;
                    swift_once();
                    v113 = v132;
                    v114 = v133;
                  }

                  v115 = *algn_1EA7B1588;
                  v220 = static ICUMeasurementNumberFormatter.cache;
                  v116 = v231;
                  v229 = v113;
                  v237 = v114;
                  MEMORY[0x1EEE9AC00](v113);
                  os_unfair_lock_lock(v115 + 6);
                  closure #1 in FormatterCache.formatter(for:creator:)specialized partial apply(&v115[4], &v244);
                  v226 = v115;
                  os_unfair_lock_unlock(v115 + 6);
                  a2 = v244;
                  if (v244 != 1)
                  {
                    goto LABEL_153;
                  }

                  v234 = v14;
                  v117 = v112(v110, v109);
                  type metadata accessor for ICUMeasurementNumberFormatter();
                  a2 = swift_allocObject();
                  a2[3] = v231;
                  a2[4] = v108;

                  v118 = MEMORY[0x1865CB200](v231, v108);
                  if (!v118)
                  {
                    break;
                  }

                  v111 = v118;
                  v119 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs6UInt16V_Tt1gq5(v118, 0);

                  v14 = specialized Sequence._copySequenceContents(initializing:)(&v244, (v119 + 4), v111, v231, v108);

                  v120 = v226;
                  if (v14 == v111)
                  {
                    goto LABEL_116;
                  }

                  __break(1u);
LABEL_113:

                  v103 = specialized _withResizingUCharBuffer(initialSize:_:)(32);
                  v122 = v121;

                  v2 = v239;
                  v6 = v240;
                  if (v122)
                  {
                    return v103;
                  }
                }

                v119 = MEMORY[0x1E69E7CC0];
                v120 = v226;
LABEL_116:
                LODWORD(v244) = 0;
                if (v119[2] >> 31)
                {
                  __break(1u);
                  goto LABEL_134;
                }

                String.utf8CString.getter();

                v123 = unumf_openForSkeletonAndLocale();

                if (v123)
                {
                  if (v244 < 1)
                  {
                    a2[2] = v123;
LABEL_122:
                    os_unfair_lock_lock(v120 + 6);
                    if (v220 >= *(*&v120[4]._os_unfair_lock_opaque + 16))
                    {
                    }

                    else
                    {
                      *&v120[4]._os_unfair_lock_opaque = MEMORY[0x1E69E7CC8];
                    }

                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    v244 = *&v120[4]._os_unfair_lock_opaque;
                    v117 = v244;
                    *&v120[4]._os_unfair_lock_opaque = 0x8000000000000000;
                    v111 = specialized __RawDictionaryStorage.find<A>(_:)(v231, v108, v229, v237);
                    v126 = v117[2];
                    v127 = (v125 & 1) == 0;
                    v128 = v126 + v127;
                    if (!__OFADD__(v126, v127))
                    {
                      LOBYTE(v119) = v125;
                      if (v117[3] < v128)
                      {
                        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v128, isUniquelyReferenced_nonNull_native);
                        v129 = v244;
                        v130 = specialized __RawDictionaryStorage.find<A>(_:)(v231, v108, v229, v237);
                        if ((v119 & 1) != (v131 & 1))
                        {
                          goto LABEL_219;
                        }

                        v111 = v130;
LABEL_131:
                        v14 = v234;
                        if (v119)
                        {
LABEL_132:

                          *(v129[7] + 8 * v111) = a2;

LABEL_152:
                          *&v120[4]._os_unfair_lock_opaque = v129;

                          os_unfair_lock_unlock(v120 + 6);

                          outlined consume of ICUMeasurementNumberFormatter??(1);
LABEL_153:
                          swift_unknownObjectRelease();

                          if (!a2)
                          {

                            goto LABEL_157;
                          }

                          type metadata accessor for ICUNumberFormatterBase.FormatResult();
                          swift_initStackObject();
                          ICUNumberFormatterBase.FormatResult.init(formatter:value:)();
                          if (v14)
                          {

                            v14 = 0;
                            goto LABEL_157;
                          }

                          v103 = specialized _withResizingUCharBuffer(initialSize:_:)(32);
                          v173 = v172;

                          v2 = v239;
                          a2 = v241;
                          v6 = v240;
                          if (v173)
                          {
                            return v103;
                          }

                          goto LABEL_158;
                        }

LABEL_151:
                        specialized _NativeDictionary._insert(at:key:value:)(v111, v116, v108, v229, v237, a2, v129);
                        goto LABEL_152;
                      }

                      if (isUniquelyReferenced_nonNull_native)
                      {
                        v129 = v117;
                        goto LABEL_131;
                      }

LABEL_135:
                      v217 = v111;
                      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation29ICUMeasurementNumberFormatterC9Signature33_1C58B5D80AA37B9371410D3343C91B53LLVAESgGMd);
                      v134 = static _DictionaryStorage.copy(original:)();
                      v129 = v134;
                      if (v117[2])
                      {
                        v135 = (v134 + 64);
                        v136 = (v117 + 8);
                        v137 = ((1 << *(v129 + 32)) + 63) >> 6;
                        if (v129 != v117 || v135 >= &v136[8 * v137])
                        {
                          memmove(v135, v117 + 8, 8 * v137);
                        }

                        v138 = 0;
                        v129[2] = v117[2];
                        v139 = 1 << *(v117 + 32);
                        v140 = -1;
                        if (v139 < 64)
                        {
                          v140 = ~(-1 << v139);
                        }

                        v221 = v140 & v117[8];
                        v212 = (v139 + 63) >> 6;
                        while (v221)
                        {
                          v141 = __clz(__rbit64(v221));
                          v221 &= v221 - 1;
LABEL_149:
                          v144 = v141 | (v138 << 6);
                          v145 = (v117[6] + 32 * v144);
                          v146 = v145[1];
                          v147 = v145[2];
                          v148 = v145[3];
                          v149 = *(v117[7] + 8 * v144);
                          v150 = (v129[6] + 32 * v144);
                          *v150 = *v145;
                          v150[1] = v146;
                          v150[2] = v147;
                          v150[3] = v148;
                          *(v129[7] + 8 * v144) = v149;
                        }

                        v142 = v138;
                        while (1)
                        {
                          v138 = v142 + 1;
                          if (__OFADD__(v142, 1))
                          {
                            goto LABEL_218;
                          }

                          if (v138 >= v212)
                          {
                            break;
                          }

                          v143 = *&v136[8 * v138];
                          ++v142;
                          if (v143)
                          {
                            v141 = __clz(__rbit64(v143));
                            v221 = (v143 - 1) & v143;
                            goto LABEL_149;
                          }
                        }
                      }

                      v14 = v234;
                      v116 = v231;
                      v120 = v226;
                      v111 = v217;
                      if (v119)
                      {
                        goto LABEL_132;
                      }

                      goto LABEL_151;
                    }

LABEL_134:
                    __break(1u);
                    goto LABEL_135;
                  }

                  unumf_close();
                }

                type metadata accessor for ICUNumberFormatterBase();
                swift_deallocPartialClassInstance();
                a2 = 0;
                goto LABEL_122;
              }

LABEL_98:
              specialized _NativeDictionary._insert(at:key:value:)(v23, a2, v19, v230, v34, v4, v57);
              goto LABEL_99;
            }

            if (v40)
            {
              v57 = v20;
              goto LABEL_52;
            }

            v225 = v23;
            v219 = v19;
            v216 = v4;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation29ICUMeasurementNumberFormatterC9Signature33_1C58B5D80AA37B9371410D3343C91B53LLVAESgGMd);
            v83 = static _DictionaryStorage.copy(original:)();
            v57 = v83;
            if (!v20[2])
            {
LABEL_97:

              v14 = v233;
              a2 = v236;
              v4 = v216;
              v39 = v228;
              v19 = v219;
              v23 = v225;
              if (v56)
              {
                goto LABEL_53;
              }

              goto LABEL_98;
            }

            v84 = (v83 + 64);
            v85 = (v20 + 8);
            v86 = ((1 << *(v57 + 32)) + 63) >> 6;
            if (v57 != v20 || v84 >= &v85[8 * v86])
            {
              memmove(v84, v20 + 8, 8 * v86);
            }

            v87 = 0;
            v57[2] = v20[2];
            v88 = 1 << *(v20 + 32);
            v89 = v20[8];
            v90 = -1;
            if (v88 < 64)
            {
              v90 = ~(-1 << v88);
            }

            v91 = v90 & v89;
            v92 = (v88 + 63) >> 6;
            if ((v90 & v89) != 0)
            {
              do
              {
                v93 = __clz(__rbit64(v91));
                v91 &= v91 - 1;
LABEL_86:
                v96 = v93 | (v87 << 6);
                v97 = (v20[6] + 32 * v96);
                v98 = v97[1];
                v99 = v97[2];
                v100 = v97[3];
                v101 = *(v20[7] + 8 * v96);
                v102 = (v57[6] + 32 * v96);
                *v102 = *v97;
                v102[1] = v98;
                v102[2] = v99;
                v102[3] = v100;
                *(v57[7] + 8 * v96) = v101;
              }

              while (v91);
            }

            v94 = v87;
            while (1)
            {
              v87 = v94 + 1;
              if (__OFADD__(v94, 1))
              {
                break;
              }

              if (v87 >= v92)
              {
                goto LABEL_97;
              }

              v95 = *&v85[8 * v87];
              ++v94;
              if (v95)
              {
                v93 = __clz(__rbit64(v95));
                v91 = (v95 - 1) & v95;
                goto LABEL_86;
              }
            }

LABEL_216:
            __break(1u);
LABEL_217:
            __break(1u);
LABEL_218:
            __break(1u);
            goto LABEL_219;
          }

          goto LABEL_57;
        }

        unumf_close();
      }

      type metadata accessor for ICUNumberFormatterBase();
      swift_deallocPartialClassInstance();
      v4 = 0;
      goto LABEL_43;
    }

    goto LABEL_55;
  }

  v7 = v242;
  v244 = v242;
  v245 = v243;
  v236 = Measurement<>.FormatStyle.skeletonForUsage(_:)(&v244, a2);
  if (!v8)
  {
LABEL_16:

    v14 = v4;
    goto LABEL_158;
  }

  v9 = v8;
  v230 = v242;
  v10 = *(v2 + 16);
  v11 = swift_getObjectType();
  v12 = *(v10 + 472);
  swift_unknownObjectRetain();

  v13 = v12(v11, v10);
  v14 = 0;
  v15 = v9;
  if (one-time initialization token for cache != -1)
  {
    v61 = v13;
    swift_once();
    v13 = v61;
  }

  v16 = *algn_1EA7B1588;
  v214 = static ICUMeasurementNumberFormatter.cache;
  a2 = v236;
  v228 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v4 = v17;
  os_unfair_lock_lock(v16 + 6);
  closure #1 in FormatterCache.formatter(for:creator:)specialized partial apply(&v16[4], &v244);
  v224 = v16;
  os_unfair_lock_unlock(v16 + 6);
  v18 = v244;
  v19 = v15;
  if (v244 == 1)
  {
    v233 = 0;
    v20 = v12(v11, v10);
    v2 = v21;
    type metadata accessor for ICUMeasurementNumberFormatter();
    v18 = swift_allocObject();
    v18[3] = v236;
    v18[4] = v15;

    v22 = MEMORY[0x1865CB200](v236, v15);
    if (v22)
    {
      v24 = v22;
      v25 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs6UInt16V_Tt1gq5(v22, 0);

      v6 = specialized Sequence._copySequenceContents(initializing:)(&v244, (v25 + 4), v24, v236, v15);

      v26 = v224;
      if (v6 != v24)
      {
        __break(1u);
        goto LABEL_9;
      }
    }

    else
    {
      v25 = MEMORY[0x1E69E7CC0];
      v26 = v224;
    }

    LODWORD(v244) = 0;
    v40 = v25[2];
    if (v40 >> 31)
    {
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      v215 = v23;
      v211 = v19;
      v210 = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation29ICUMeasurementNumberFormatterC9Signature33_1C58B5D80AA37B9371410D3343C91B53LLVAESgGMd);
      v63 = static _DictionaryStorage.copy(original:)();
      v48 = v63;
      if (v20[2])
      {
        v64 = (v63 + 64);
        v65 = (v20 + 8);
        v66 = ((1 << v48[32]) + 63) >> 6;
        if (v48 != v20 || v64 >= &v65[8 * v66])
        {
          memmove(v64, v20 + 8, 8 * v66);
        }

        v67 = 0;
        *(v48 + 2) = v20[2];
        v68 = 1 << *(v20 + 32);
        v69 = v20[8];
        v70 = -1;
        if (v68 < 64)
        {
          v70 = ~(-1 << v68);
        }

        v71 = v70 & v69;
        v72 = (v68 + 63) >> 6;
        if ((v70 & v69) != 0)
        {
          do
          {
            v73 = __clz(__rbit64(v71));
            v71 &= v71 - 1;
LABEL_71:
            v76 = v73 | (v67 << 6);
            v77 = (v20[6] + 32 * v76);
            v78 = v77[1];
            v79 = v77[2];
            v80 = v77[3];
            v81 = *(v20[7] + 8 * v76);
            v82 = (*(v48 + 6) + 32 * v76);
            *v82 = *v77;
            v82[1] = v78;
            v82[2] = v79;
            v82[3] = v80;
            *(*(v48 + 7) + 8 * v76) = v81;
          }

          while (v71);
        }

        v74 = v67;
        while (1)
        {
          v67 = v74 + 1;
          if (__OFADD__(v74, 1))
          {
            break;
          }

          if (v67 >= v72)
          {
            goto LABEL_88;
          }

          v75 = *&v65[8 * v67];
          ++v74;
          if (v75)
          {
            v73 = __clz(__rbit64(v75));
            v71 = (v75 - 1) & v75;
            goto LABEL_71;
          }
        }

        __break(1u);
        goto LABEL_216;
      }

LABEL_88:

      v18 = v210;
      a2 = v236;
      v26 = v224;
      v19 = v211;
      v23 = v215;
      if ((v40 & 1) == 0)
      {
        goto LABEL_89;
      }

      goto LABEL_41;
    }

    String.utf8CString.getter();

    v41 = unumf_openForSkeletonAndLocale();

    if (v41)
    {
      if (v244 < 1)
      {
        v18[2] = v41;
LABEL_31:
        os_unfair_lock_lock((v26 + 24));
        if (v214 < *(*(v26 + 16) + 16))
        {
          *(v26 + 16) = MEMORY[0x1E69E7CC8];
        }

        else
        {
        }

        v43 = swift_isUniquelyReferenced_nonNull_native();
        v244 = *(v26 + 16);
        v20 = v244;
        *(v26 + 16) = 0x8000000000000000;
        v23 = specialized __RawDictionaryStorage.find<A>(_:)(v236, v19, v228, v4);
        v45 = v20[2];
        v46 = (v44 & 1) == 0;
        v47 = v45 + v46;
        if (!__OFADD__(v45, v46))
        {
          LOBYTE(v40) = v44;
          if (v20[3] >= v47)
          {
            if ((v43 & 1) == 0)
            {
              goto LABEL_58;
            }

            v48 = v20;
          }

          else
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v47, v43);
            v48 = v244;
            v49 = specialized __RawDictionaryStorage.find<A>(_:)(v236, v19, v228, v4);
            if ((v40 & 1) != (v50 & 1))
            {
              goto LABEL_219;
            }

            v23 = v49;
          }

          if ((v40 & 1) == 0)
          {
LABEL_89:
            specialized _NativeDictionary._insert(at:key:value:)(v23, a2, v19, v228, v4, v18, v48);
            goto LABEL_90;
          }

LABEL_41:
          v51 = v23;

          *(*(v48 + 7) + 8 * v51) = v18;

LABEL_90:
          *(v26 + 16) = v48;

          os_unfair_lock_unlock((v26 + 24));

          outlined consume of ICUMeasurementNumberFormatter??(1);
          v14 = v233;
          goto LABEL_91;
        }

        goto LABEL_56;
      }

      unumf_close();
    }

    type metadata accessor for ICUNumberFormatterBase();
    swift_deallocPartialClassInstance();
    v18 = 0;
    goto LABEL_31;
  }

LABEL_91:
  swift_unknownObjectRelease();

  if (v18)
  {
    type metadata accessor for ICUNumberFormatterBase.FormatResult();
    swift_initStackObject();
    ICUNumberFormatterBase.FormatResult.init(formatter:value:)();
    a2 = v241;
    v6 = v240;
    if (v14)
    {

      v14 = 0;
      v2 = v239;
    }

    else
    {

      v103 = specialized _withResizingUCharBuffer(initialSize:_:)(32);
      v105 = v104;

      v14 = 0;

      v2 = v239;
      if (v105)
      {
        return v103;
      }
    }
  }

  else
  {

LABEL_157:
    v2 = v239;
    a2 = v241;
    v6 = v240;
  }

LABEL_158:
  if ((Measurement<>.FormatStyle.shouldConvertToBestUnit.getter(a2) & 1) == 0)
  {
    goto LABEL_211;
  }

  v244 = v6;
  v245 = v5;
  v151 = Measurement<>.FormatStyle.skeletonForBaseUnit(_:)(&v244, a2);
  if (!v152)
  {
    goto LABEL_211;
  }

  v153 = v152;
  v235 = v151;

  v154 = *(v2 + 16);
  v155 = swift_getObjectType();
  v156 = *(v154 + 472);
  swift_unknownObjectRetain();

  v157 = v156(v155, v154);
  v159 = v158;
  v160 = v153;
  if (one-time initialization token for cache != -1)
  {
    v184 = v157;
    swift_once();
    v157 = v184;
  }

  v161 = *algn_1EA7B1588;
  v222 = static ICUMeasurementNumberFormatter.cache;
  v232 = v157;
  MEMORY[0x1EEE9AC00](v157);
  os_unfair_lock_lock(v161 + 6);
  partial apply for specialized closure #1 in FormatterCache.formatter(for:creator:)(&v161[4], &v244);
  v227 = v161;
  os_unfair_lock_unlock(v161 + 6);
  v162 = v244;
  v163 = v160;
  if (v244 != 1)
  {
LABEL_206:
    swift_unknownObjectRelease();

    if (v162)
    {
      type metadata accessor for ICUNumberFormatterBase.FormatResult();
      swift_initStackObject();
      ICUNumberFormatterBase.FormatResult.init(formatter:value:)();
      if (!v14)
      {

        v103 = specialized _withResizingUCharBuffer(initialSize:_:)(32);
        v209 = v208;

        a2 = v241;
        v6 = v240;
        if (v209)
        {
          return v103;
        }

        goto LABEL_211;
      }
    }

    else
    {
    }

    a2 = v241;
    v6 = v240;
LABEL_211:
    v244 = v6;
    v245 = v5;
    v103 = Measurement<>.FormatStyle.formatAsDescription(_:)(&v244, a2);

    return v103;
  }

  v218 = v14;
  v238 = v159;
  v156(v155, v154);
  type metadata accessor for ICUMeasurementNumberFormatter();
  v164 = swift_allocObject();
  v164[3] = v235;
  v164[4] = v160;

  v165 = MEMORY[0x1865CB200](v235, v160);
  v166 = v235;
  if (v165)
  {
    v160 = v165;
    v167 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs6UInt16V_Tt1gq5(v165, 0);

    v168 = specialized Sequence._copySequenceContents(initializing:)(&v244, (v167 + 4), v160, v235, v163);

    v169 = v227;
    if (v168 == v160)
    {
      goto LABEL_167;
    }

    __break(1u);
  }

  v167 = MEMORY[0x1E69E7CC0];
  v169 = v227;
LABEL_167:
  LODWORD(v244) = 0;
  v170 = v167[2];
  if (v170 >> 31)
  {
    __break(1u);
LABEL_187:
    __break(1u);
LABEL_188:
    v223 = v160;
    v213 = v163;
    v185 = v164;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation29ICUMeasurementNumberFormatterC9Signature33_1C58B5D80AA37B9371410D3343C91B53LLVAESgGMd);
    v186 = static _DictionaryStorage.copy(original:)();
    v179 = v186;
    if (!v167[2])
    {
LABEL_203:

      v166 = v235;
      v14 = v218;
      v164 = v185;
      v169 = v227;
      v163 = v213;
      v160 = v223;
      if (v170)
      {
        goto LABEL_185;
      }

      goto LABEL_204;
    }

    v187 = (v186 + 64);
    v188 = v167 + 8;
    v189 = ((1 << v179[32]) + 63) >> 6;
    if (v179 != v167 || v187 >= &v188[v189])
    {
      memmove(v187, v167 + 8, 8 * v189);
    }

    v190 = 0;
    *(v179 + 2) = v167[2];
    v191 = 1 << *(v167 + 32);
    v192 = v167[8];
    v193 = -1;
    if (v191 < 64)
    {
      v193 = ~(-1 << v191);
    }

    v194 = v193 & v192;
    v195 = (v191 + 63) >> 6;
    if ((v193 & v192) != 0)
    {
      do
      {
        v196 = __clz(__rbit64(v194));
        v194 &= v194 - 1;
LABEL_201:
        v199 = v196 | (v190 << 6);
        v200 = (v167[6] + 32 * v199);
        v201 = v200[1];
        v202 = v200[2];
        v203 = v200[3];
        v204 = *(v167[7] + 8 * v199);
        v205 = (*(v179 + 6) + 32 * v199);
        *v205 = *v200;
        v205[1] = v201;
        v205[2] = v202;
        v205[3] = v203;
        *(*(v179 + 7) + 8 * v199) = v204;
      }

      while (v194);
    }

    v197 = v190;
    while (1)
    {
      v190 = v197 + 1;
      if (__OFADD__(v197, 1))
      {
        goto LABEL_217;
      }

      if (v190 >= v195)
      {
        goto LABEL_203;
      }

      v198 = v188[v190];
      ++v197;
      if (v198)
      {
        v196 = __clz(__rbit64(v198));
        v194 = (v198 - 1) & v198;
        goto LABEL_201;
      }
    }
  }

  String.utf8CString.getter();

  v171 = unumf_openForSkeletonAndLocale();

  if (!v171)
  {
    goto LABEL_171;
  }

  if (v244 >= 1)
  {
    unumf_close();
LABEL_171:

    type metadata accessor for ICUNumberFormatterBase();
    swift_deallocPartialClassInstance();
    v164 = 0;
    goto LABEL_175;
  }

  v164[2] = v171;
LABEL_175:
  os_unfair_lock_lock(v169 + 6);
  if (v222 < *(*&v169[4]._os_unfair_lock_opaque + 16))
  {
    *&v169[4]._os_unfair_lock_opaque = MEMORY[0x1E69E7CC8];
  }

  else
  {
  }

  v174 = swift_isUniquelyReferenced_nonNull_native();
  v244 = *&v169[4]._os_unfair_lock_opaque;
  v167 = v244;
  *&v169[4]._os_unfair_lock_opaque = 0x8000000000000000;
  v160 = specialized __RawDictionaryStorage.find<A>(_:)(v235, v163, v232, v238);
  v176 = v167[2];
  v177 = (v175 & 1) == 0;
  v178 = v176 + v177;
  if (__OFADD__(v176, v177))
  {
    goto LABEL_187;
  }

  LOBYTE(v170) = v175;
  if (v167[3] >= v178)
  {
    if (v174)
    {
      v179 = v167;
LABEL_184:
      v14 = v218;
      if (v170)
      {
LABEL_185:

        v182 = v160;
        v183 = v164;
        *(*(v179 + 7) + 8 * v182) = v164;

LABEL_205:
        *&v169[4]._os_unfair_lock_opaque = v179;

        os_unfair_lock_unlock(v169 + 6);

        outlined consume of ICUMeasurementNumberFormatter??(1);
        v162 = v183;
        goto LABEL_206;
      }

LABEL_204:
      v206 = v160;
      v183 = v164;
      specialized _NativeDictionary._insert(at:key:value:)(v206, v166, v163, v232, v238, v164, v179);
      goto LABEL_205;
    }

    goto LABEL_188;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v178, v174);
  v179 = v244;
  v180 = specialized __RawDictionaryStorage.find<A>(_:)(v235, v163, v232, v238);
  if ((v170 & 1) == (v181 & 1))
  {
    v160 = v180;
    goto LABEL_184;
  }

LABEL_219:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t Measurement<>.formatted<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[1];
  v7[0] = *v4;
  v7[1] = v5;
  return (*(a4 + 48))(v7, a3, a4);
}

uint64_t protocol witness for FormatStyle.format(_:) in conformance Measurement<A><>.FormatStyle@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  result = Measurement<>.FormatStyle.format(_:)(a1, a2);
  *a3 = result;
  a3[1] = v5;
  return result;
}

id NSDimension.skeleton.getter()
{
  v34[4] = *MEMORY[0x1E69E9840];
  result = [swift_getObjCClassFromObject() icuType];
  if (result)
  {
    v2 = result;
    isTaggedPointer = _objc_isTaggedPointer(result);
    v4 = v2;
    v5 = v4;
    if (!isTaggedPointer)
    {
LABEL_7:
      LOBYTE(v31) = 0;
      v34[0] = 0;
      if (__CFStringIsCF())
      {

LABEL_12:
        v7 = 0;
        v9 = 0xE000000000000000;
        goto LABEL_23;
      }

      v10 = v5;
      v11 = String.init(_nativeStorage:)();
      if (v12)
      {
        v7 = v11;
        v9 = v12;

        goto LABEL_23;
      }

      if (![v10 length])
      {

        goto LABEL_12;
      }

      v7 = String.init(_cocoaString:)();
      v9 = v15;
LABEL_22:

      goto LABEL_23;
    }

    TaggedPointerTag = _objc_getTaggedPointerTag(v4);
    if (TaggedPointerTag)
    {
      if (TaggedPointerTag != 22)
      {
        if (TaggedPointerTag == 2)
        {
          MEMORY[0x1EEE9AC00](TaggedPointerTag);
          v7 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v9 = v8;

LABEL_23:
          v16 = [v0 icuSubtype];
          if (!v16)
          {

            return 0;
          }

          v17 = v16;
          v18 = _objc_isTaggedPointer(v16);
          v19 = v17;
          v20 = v19;
          if (!v18)
          {
LABEL_29:
            v34[0] = 0;
            if (__CFStringIsCF())
            {
              v22 = v34[0];

              v24 = 0xE000000000000000;
              goto LABEL_44;
            }

            v25 = v20;
            v26 = String.init(_nativeStorage:)();
            if (v27)
            {
              v22 = v26;
              v24 = v27;

              goto LABEL_44;
            }

            if (![v25 length])
            {

              v22 = 0;
              v24 = 0xE000000000000000;
              goto LABEL_44;
            }

            v22 = String.init(_cocoaString:)();
            v24 = v30;
LABEL_43:

            goto LABEL_44;
          }

          v21 = _objc_getTaggedPointerTag(v19);
          if (!v21)
          {
            goto LABEL_37;
          }

          if (v21 != 22)
          {
            if (v21 == 2)
            {
              MEMORY[0x1EEE9AC00](v21);
              v22 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
              v24 = v23;

LABEL_44:
              v34[0] = 0;
              v34[1] = 0xE000000000000000;
              _StringGuts.grow(_:)(18);

              strcpy(v34, "measure-unit/");
              HIWORD(v34[1]) = -4864;
              MEMORY[0x1865CB0E0](v7, v9);

              MEMORY[0x1865CB0E0](45, 0xE100000000000000);
              MEMORY[0x1865CB0E0](v22, v24);

              return v34[0];
            }

            goto LABEL_29;
          }

          result = [v20 UTF8String];
          if (result)
          {
            v28 = String.init(utf8String:)(result);
            if (v29)
            {
LABEL_38:
              v22 = v28;
              v24 = v29;

              goto LABEL_43;
            }

            __break(1u);
LABEL_37:
            _CFIndirectTaggedPointerStringGetContents();
            v28 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
            if (!v29)
            {
              [v20 mutableCopy];
              _bridgeAnyObjectToAny(_:)();

              swift_unknownObjectRelease();
              swift_dynamicCast();
              v22 = v32;
              v24 = v33;
              goto LABEL_43;
            }

            goto LABEL_38;
          }

          goto LABEL_46;
        }

        goto LABEL_7;
      }

      result = [v5 UTF8String];
      if (!result)
      {
        __break(1u);
LABEL_46:
        __break(1u);
        return result;
      }

      v13 = String.init(utf8String:)(result);
      if (v14)
      {
LABEL_17:
        v7 = v13;
        v9 = v14;

        goto LABEL_22;
      }

      __break(1u);
    }

    _CFIndirectTaggedPointerStringGetContents();
    v13 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v14)
    {
      [v5 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v7 = v31;
      v9 = v33;
      goto LABEL_22;
    }

    goto LABEL_17;
  }

  return result;
}

uint64_t outlined init with copy of NumberFormatStyleConfiguration.Collection(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of NumberFormatStyleConfiguration.Collection(uint64_t a1)
{
  v2 = type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type ICUMeasurementNumberFormatter.Signature and conformance ICUMeasurementNumberFormatter.Signature()
{
  result = lazy protocol witness table cache variable for type ICUMeasurementNumberFormatter.Signature and conformance ICUMeasurementNumberFormatter.Signature;
  if (!lazy protocol witness table cache variable for type ICUMeasurementNumberFormatter.Signature and conformance ICUMeasurementNumberFormatter.Signature)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ICUMeasurementNumberFormatter.Signature and conformance ICUMeasurementNumberFormatter.Signature);
  }

  return result;
}

uint64_t specialized closure #1 in FormatterCache.formatter(for:creator:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  result = specialized closure #1 in FormatterCache.formatter(for:creator:)(a1, *a2, a2[1], a2[2], a2[3]);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

{
  result = specialized closure #1 in FormatterCache.formatter(for:creator:)(a1, *a2, a2[1], a2[2], a2[3]);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t Measurement.init(value:unit:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *(a2 + 8) = a3;
  *a2 = result;
  return result;
}

uint64_t static FormatStyle.measurement<A>(width:usage:numberFormatStyle:)@<X0>(char *a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24FloatingPointFormatStyleVySdGSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v19 - v9;
  v11 = *a1;
  LOBYTE(a1) = *a2;
  outlined init with copy of FloatingPointRoundingRule?(a3, &v19 - v9, &_s10Foundation24FloatingPointFormatStyleVySdGSgMd);
  type metadata accessor for _LocaleAutoupdating();
  inited = swift_initStaticObject();
  v13 = _sSo15CFDictionaryRefaAB14CoreFoundation9_CFObjectSCWlTm_2(&lazy protocol witness table cache variable for type _LocaleAutoupdating and conformance _LocaleAutoupdating, type metadata accessor for _LocaleAutoupdating);
  v14 = type metadata accessor for Measurement<>.FormatStyle();
  v15 = v14[8];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24FloatingPointFormatStyleVySdGMd);
  (*(*(v16 - 8) + 56))(a4 + v15, 1, 1, v16);
  v17 = v14[9];
  *(a4 + v17) = 14;
  *(a4 + v14[10]) = 0;
  *a4 = v11;
  *(a4 + 8) = inited;
  *(a4 + 16) = v13;
  *(a4 + v17) = a1;
  return outlined assign with take of FloatingPointFormatStyle<Double>?(v10, a4 + v15);
}

id Measurement<>.FormatStyle.skeleton(forMeasurement:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24FloatingPointFormatStyleVySdGSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v27 - v9;
  result = NSDimension.skeleton.getter();
  if (!v12)
  {
    return result;
  }

  v13 = *(a2 + 36);
  v28 = *(a2 + 32);
  v29 = result;
  v14 = v2[v13];
  v15 = *v2;
  v31 = 0;
  v32 = 0xE000000000000000;
  v30 = v12;

  MEMORY[0x1865CB0E0](32, 0xE100000000000000);
  v16 = "unit-width-iso-code";
  if (v15 == 1)
  {
    v17 = 0xD000000000000010;
  }

  else
  {
    v17 = 0xD000000000000011;
  }

  if (v15 != 1)
  {
    v16 = "unit-width-short";
  }

  if (v15)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0xD000000000000014;
  }

  if (v15)
  {
    v19 = v16;
  }

  else
  {
    v19 = "Invalid Precision";
  }

  MEMORY[0x1865CB0E0](v18, v19 | 0x8000000000000000);

  MEMORY[0x1865CB0E0](v29, v30);

  if (v14 != 14)
  {
    if (Usage.rawValue.getter(v14) != 0x6469766F72507361 || v20 != 0xEA00000000006465)
    {
      v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v21 & 1) != 0 || ([swift_getObjCClassFromMetadata() supportsRegionalPreference] & 1) == 0)
      {
        goto LABEL_20;
      }

      v22 = Usage.rawValue.getter(v14);
      v29 = 0x2F656761737520;
      v30 = 0xE700000000000000;
      MEMORY[0x1865CB0E0](v22);

      MEMORY[0x1865CB0E0](v29, v30);
    }
  }

LABEL_20:
  outlined init with copy of FloatingPointRoundingRule?(&v3[v28], v10, &_s10Foundation24FloatingPointFormatStyleVySdGSgMd);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24FloatingPointFormatStyleVySdGMd);
  if ((*(*(v23 - 8) + 48))(v10, 1, v23) == 1)
  {

    outlined destroy of TermOfAddress?(v10, &_s10Foundation24FloatingPointFormatStyleVySdGSgMd);
  }

  else
  {
    outlined init with copy of NumberFormatStyleConfiguration.Collection(&v10[*(v23 + 36)], v7);
    outlined destroy of TermOfAddress?(v10, &_s10Foundation24FloatingPointFormatStyleVySdGMd);
    v24 = NumberFormatStyleConfiguration.Collection.skeleton.getter();
    v26 = v25;
    outlined destroy of NumberFormatStyleConfiguration.Collection(v7);
    if (String.count.getter() > 0)
    {
      MEMORY[0x1865CB0E0](32, 0xE100000000000000);
    }

    MEMORY[0x1865CB0E0](v24, v26);
  }

  return v31;
}

unint64_t _sSn10FoundationSS5IndexVRszrlE_10_genericInSnyACGSgSo8_NSRangeV_qd__htcSyRd__lu33_47624EAB993F66D471315D8A006C0572LlfCSS_Tt1g5(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a1 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v4 = (a4 & 0x2000000000000000) != 0 ? HIBYTE(a4) & 0xF : a3 & 0xFFFFFFFFFFFFLL;
  v5 = String.UTF16View.index(_:offsetBy:limitedBy:)();
  if (v6)
  {
    return 0;
  }

  v7 = v5;
  result = String.UTF16View.index(_:offsetBy:limitedBy:)();
  if ((v9 & 1) != 0 || result >> 14 > 4 * v4)
  {
    return 0;
  }

  if (result >> 14 >= v7 >> 14)
  {
    return v7;
  }

  __break(1u);
  return result;
}

id String.init(cString:encoding:)(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  if (*a2 == 7)
  {
LABEL_4:
    v4 = MEMORY[0x1865CAEB0](a1);
    if (v5)
    {
      v6 = v4;
      if (_StringGuts._isContiguousASCII.getter())
      {
        return v6;
      }
    }

    goto LABEL_10;
  }

  if (v3 != 4)
  {
    if (v3 != 1)
    {
      goto LABEL_10;
    }

    goto LABEL_4;
  }

  result = MEMORY[0x1865CAEB0](a1);
  if (v8)
  {
    return result;
  }

LABEL_10:
  result = [objc_allocWithZone(NSString) initWithCString:a1 encoding:v3];
  if (!result)
  {
    return result;
  }

  v9 = result;
  isTaggedPointer = _objc_isTaggedPointer(result);
  v11 = v9;
  v12 = v11;
  if (!isTaggedPointer)
  {
    goto LABEL_16;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v11);
  if (!TaggedPointerTag)
  {
    _CFIndirectTaggedPointerStringGetContents();
    v21 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (v22)
    {
      v23 = v21;
    }

    else
    {
      [v12 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v23 = v24;
    }

LABEL_31:

    return v23;
  }

  if (TaggedPointerTag != 22)
  {
    if (TaggedPointerTag == 2)
    {
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      v14 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

      return v14;
    }

LABEL_16:
    if (__CFStringIsCF())
    {

      return 0;
    }

    v15 = v12;
    v16 = String.init(_nativeStorage:)();
    if (v17)
    {
      v18 = v16;

      return v18;
    }

    if (![v15 length])
    {

      return 0;
    }

    v23 = String.init(_cocoaString:)();
    goto LABEL_31;
  }

  result = [v12 UTF8String];
  if (result)
  {
    result = String.init(utf8String:)(result);
    if (v19)
    {
      v20 = result;

      return v20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

__n128 Date.FormatStyle.calendar.setter(__n128 *a1)
{
  swift_unknownObjectRelease();
  result = *a1;
  *(v1 + 104) = *a1;
  return result;
}

NSCharacterSet __swiftcall CharacterSet._bridgeToObjectiveC()()
{
  [*(*v0 + 16) copy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for NSCharacterSet();
  swift_dynamicCast();
  return v2;
}

unint64_t type metadata accessor for NSCharacterSet()
{
  result = lazy cache variable for type metadata for NSCharacterSet;
  if (!lazy cache variable for type metadata for NSCharacterSet)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSCharacterSet);
  }

  return result;
}

uint64_t initkUTTypePlainText()
{
  v0 = MobileCoreServicesLibrary_1();
  v1 = dlsym(v0, "kUTTypePlainText");
  if (!v1)
  {
    __assert_rtn("initkUTTypePlainText", "NSString+NSItemProvider.m", 22, "constant");
  }

  result = *v1;
  constantkUTTypePlainText = result;
  off_1ED439888[0] = kUTTypePlainTextFunction;
  return result;
}

__n128 protocol witness for FormatStyle.locale(_:) in conformance Date.FormatStyle@<Q0>(__n128 *a1@<X0>, _OWORD *a2@<X8>)
{
  v6 = v2[5];
  v18 = v2[4];
  v5 = v18;
  v19 = v6;
  v20[0] = v2[6];
  v7 = v20[0];
  *(v20 + 10) = *(v2 + 106);
  v8 = *(v20 + 10);
  v9 = v2[1];
  v15[0] = *v2;
  v15[1] = v9;
  v11 = v2[3];
  v16 = v2[2];
  v10 = v16;
  v17 = v11;
  *a2 = v15[0];
  a2[1] = v9;
  a2[2] = v10;
  a2[3] = v11;
  a2[4] = v5;
  a2[5] = v6;
  a2[6] = v7;
  *(a2 + 106) = v8;
  outlined init with copy of Date.FormatStyle(v15, v14);
  v13 = *a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  result = v13;
  *(a2 + 72) = v13;
  return result;
}

__n128 Date.FormatStyle.timeZone.setter(__n128 *a1)
{
  swift_unknownObjectRelease();
  result = *a1;
  *(v1 + 88) = *a1;
  return result;
}

void __CFBasicHashDeallocate(void *a1)
{
  v1 = a1[3];
  if ((v1 & 4) != 0)
  {
    __break(1u);
  }

  else
  {
    a1[3] = v1 | 4;
    __CFBasicHashDrain(a1, 1);
  }
}

void __CFBasicHashDrain(void *a1, int a2)
{
  v4 = a1[3];
  v5 = (a1[2] >> 16) & 0x3FLL;
  v6 = __CFBasicHashTableSizes[v5];
  v7 = CFGetAllocator(a1);
  v36 = 0;
  v8 = a1 + 5;
  ptr = a1[5];
  a1[5] = 0;
  v9 = a1[2];
  if ((v9 & 4) != 0)
  {
    v36 = a1[6];
    a1[6] = 0;
  }

  if ((v9 & 0x18) != 0)
  {
    v10 = (v9 >> 3) & 3;
    if (!v10)
    {
      goto LABEL_49;
    }

    v11 = v8[v10];
    v8[v10] = 0;
  }

  else
  {
    v11 = 0;
  }

  if ((v9 & 0x60) != 0)
  {
    v12 = (v9 >> 5) & 3;
    if (!v12)
    {
      goto LABEL_49;
    }

    v35 = v8[v12];
    v8[v12] = 0;
  }

  else
  {
    v35 = 0;
  }

  if ((v9 & 0x380) != 0)
  {
    v13 = (v9 >> 7) & 7;
    if (!v13)
    {
      goto LABEL_49;
    }

    v14 = v8[v13];
    v8[v13] = 0;
  }

  else
  {
    v14 = 0;
  }

  if ((v9 & 0x1C00) != 0)
  {
    v15 = (v9 >> 10) & 7;
    if (!v15)
    {
      goto LABEL_49;
    }

    v16 = v8[v15];
    v8[v15] = 0;
  }

  else
  {
    v16 = 0;
  }

  v33 = a2;
  v31 = v16;
  v32 = v14;
  if ((v9 & 0xE000) != 0)
  {
    v17 = v9 >> 13;
    if (v9 >> 13)
    {
      v30 = v8[v17];
      v8[v17] = 0;
      goto LABEL_23;
    }

LABEL_49:
    __break(1u);
    return;
  }

  v30 = 0;
LABEL_23:
  v18 = a1[4];
  v19 = (a1[3] & 0xFFFF0000000000FFLL) + 0x1000000000000;
  a1[2] = v9;
  a1[3] = v19;
  if (v18 != &CFBasicHashNullCallbacks)
  {
    v20 = v11 ? v11 : ptr;
    if (v5 && v5 != 63)
    {
      v21 = (v4 << 32) & 0xFFFFFF0000000000;
      if (v6 <= 1)
      {
        v22 = 1;
      }

      else
      {
        v22 = v6;
      }

      v23 = ptr;
      v24 = v35;
      v25 = v36;
      v26 = v11;
      do
      {
        v27 = *v20++;
        v28 = v27 ^ v21;
        if (v27 != v21 && v28 != -1)
        {
          (*a1[4])(a1, 14, *v23, 0);
          if (v36)
          {
            (*a1[4])(a1, 15, *v25, 0);
          }

          if (v11)
          {
            (*a1[4])(a1, 16, *v26, 0);
          }

          if (v35)
          {
            (*a1[4])(a1, 17, *v24, 0);
          }
        }

        ++v24;
        ++v26;
        ++v25;
        ++v23;
        --v22;
      }

      while (v22);
    }
  }

  if (v33)
  {
    (*a1[4])(a1, 9, 0, 0);
  }

  CFAllocatorDeallocate(v7, ptr);
  CFAllocatorDeallocate(v7, v36);
  CFAllocatorDeallocate(v7, v11);
  CFAllocatorDeallocate(v7, v35);
  CFAllocatorDeallocate(v7, v32);
  CFAllocatorDeallocate(v7, v31);

  CFAllocatorDeallocate(v7, v30);
}

uint64_t specialized static Date.FormatStyle.== infix(_:_:)(__int128 *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = *(a1 + 7);
  v4 = *(a1 + 64);
  v5 = *(a1 + 72);
  v6 = *(a1 + 88);
  v7 = *(a1 + 104);
  v8 = *(a1 + 120);
  v9 = *(a1 + 121);
  v10 = *(a2 + 32);
  v11 = *(a2 + 56);
  v12 = *(a2 + 64);
  v13 = *(a2 + 72);
  v14 = *(a2 + 88);
  v15 = *(a2 + 104);
  v16 = *(a2 + 120);
  v17.i64[0] = 0xFF000000000000;
  v17.i64[1] = 0xFF000000000000;
  v18 = *(a2 + 121);
  v19 = vmovn_s64(vceqq_s64(vandq_s8(vzip1q_s64(v10, v2), v17), vdupq_n_s64(0x3000000000000uLL)));
  if (v19.i8[4])
  {
    if ((v19.i8[0] & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v19.i8[0])
    {
      return 0;
    }

    v20 = *a1;
    v21 = a1[1];
    v22 = *(a1 + 24);
    v32 = *(a1 + 104);
    v34 = *(a1 + 88);
    v36 = *(a2 + 104);
    v38 = *(a2 + 72);
    v23 = *(a2 + 16);
    v24 = *(a2 + 48);
    v45[0] = *a2;
    v45[1] = v23;
    v45[2] = v10;
    v46 = v24;
    v43[0] = v20;
    v43[1] = v21;
    v43[2] = v2;
    v44 = v22;
    v39 = v14;
    v31 = v5;
    v25 = specialized static Date.FormatStyle.DateFieldCollection.== infix(_:_:)(v43, v45);
    v13 = v38;
    v14 = v39;
    v5 = v31;
    v7 = v32;
    v6 = v34;
    v15 = v36;
    if (!v25)
    {
      return 0;
    }
  }

  if (v4)
  {
    if (!v12)
    {
      return 0;
    }
  }

  else
  {
    if (v3 == v11)
    {
      v26 = v12;
    }

    else
    {
      v26 = 1;
    }

    if (v26)
    {
      return 0;
    }
  }

  v40 = v14;
  v41 = v13;
  v35 = v6;
  v37 = v15;
  v33 = v7;
  v42 = v5;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v27 = specialized static Locale.== infix(_:_:)(&v42, &v41);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if ((v27 & 1) == 0)
  {
    return 0;
  }

  v41 = v40;
  v42 = v35;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v28 = specialized static TimeZone.== infix(_:_:)(&v42, &v41);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if ((v28 & 1) == 0)
  {
    return 0;
  }

  v41 = v37;
  v42 = v33;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v29 = specialized static Calendar.== infix(_:_:)(&v42, &v41);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  result = 0;
  if ((v29 & 1) != 0 && v8 == v16)
  {
    return v9 ^ v18 ^ 1u;
  }

  return result;
}

void *MobileCoreServicesLibrary()
{
  result = MobileCoreServicesLibrary_frameworkLibrary_0;
  if (!MobileCoreServicesLibrary_frameworkLibrary_0)
  {
    result = dlopen("/System/Library/Frameworks/MobileCoreServices.framework/MobileCoreServices", 2);
    MobileCoreServicesLibrary_frameworkLibrary_0 = result;
    if (!result)
    {
      __assert_rtn("MobileCoreServicesLibrary", "NSItemProvider.m", 24, "frameworkLibrary");
    }
  }

  return result;
}

void *MobileCoreServicesLibrary_0()
{
  result = MobileCoreServicesLibrary_frameworkLibrary_1;
  if (!MobileCoreServicesLibrary_frameworkLibrary_1)
  {
    result = dlopen("/System/Library/Frameworks/MobileCoreServices.framework/MobileCoreServices", 2);
    MobileCoreServicesLibrary_frameworkLibrary_1 = result;
    if (!result)
    {
      __assert_rtn("MobileCoreServicesLibrary", "_NSItemProviderUtilities_Internal.m", 32, "frameworkLibrary");
    }
  }

  return result;
}

void *MobileCoreServicesLibrary_1()
{
  result = MobileCoreServicesLibrary_frameworkLibrary_2;
  if (!MobileCoreServicesLibrary_frameworkLibrary_2)
  {
    result = dlopen("/System/Library/Frameworks/MobileCoreServices.framework/MobileCoreServices", 2);
    MobileCoreServicesLibrary_frameworkLibrary_2 = result;
    if (!result)
    {
      __assert_rtn("MobileCoreServicesLibrary", "NSString+NSItemProvider.m", 16, "frameworkLibrary");
    }
  }

  return result;
}

void *MobileCoreServicesLibrary_2()
{
  result = MobileCoreServicesLibrary_frameworkLibrary_3;
  if (!MobileCoreServicesLibrary_frameworkLibrary_3)
  {
    result = dlopen("/System/Library/Frameworks/MobileCoreServices.framework/MobileCoreServices", 2);
    MobileCoreServicesLibrary_frameworkLibrary_3 = result;
    if (!result)
    {
      __assert_rtn("MobileCoreServicesLibrary", "NSURL+NSItemProvider.m", 17, "frameworkLibrary");
    }
  }

  return result;
}

uint64_t initkUTTypeURL()
{
  v0 = CoreServicesLibrary();
  v1 = dlsym(v0, "kUTTypeURL");
  if (!v1)
  {
    __assert_rtn("initkUTTypeURL", "NSExtensionItem.m", 39, "constant");
  }

  result = *v1;
  constantkUTTypeURL = result;
  off_1ED439820[0] = kUTTypeURLFunction;
  return result;
}

uint64_t initkUTTypeURL_0()
{
  v0 = MobileCoreServicesLibrary();
  v1 = dlsym(v0, "kUTTypeURL");
  if (!v1)
  {
    __assert_rtn("initkUTTypeURL", "NSItemProvider.m", 30, "constant");
  }

  result = *v1;
  constantkUTTypeURL_0 = result;
  off_1ED439848[0] = kUTTypeURLFunction_0;
  return result;
}

uint64_t initkUTTypeURL_1()
{
  v0 = MobileCoreServicesLibrary_1();
  v1 = dlsym(v0, "kUTTypeURL");
  if (!v1)
  {
    __assert_rtn("initkUTTypeURL", "NSString+NSItemProvider.m", 17, "constant");
  }

  result = *v1;
  constantkUTTypeURL_1 = result;
  off_1ED439890[0] = kUTTypeURLFunction_1;
  return result;
}

uint64_t initkUTTypeURL_2()
{
  v0 = MobileCoreServicesLibrary_2();
  v1 = dlsym(v0, "kUTTypeURL");
  if (!v1)
  {
    __assert_rtn("initkUTTypeURL", "NSURL+NSItemProvider.m", 18, "constant");
  }

  result = *v1;
  constantkUTTypeURL_2 = result;
  _MergedGlobals_89[0] = kUTTypeURLFunction_2;
  return result;
}

uint64_t initkUTTypeUTF8PlainText()
{
  v0 = MobileCoreServicesLibrary_1();
  v1 = dlsym(v0, "kUTTypeUTF8PlainText");
  if (!v1)
  {
    __assert_rtn("initkUTTypeUTF8PlainText", "NSString+NSItemProvider.m", 19, "constant");
  }

  result = *v1;
  constantkUTTypeUTF8PlainText = result;
  _MergedGlobals_88[0] = kUTTypeUTF8PlainTextFunction;
  return result;
}

uint64_t initkUTTypeUTF16ExternalPlainText()
{
  v0 = MobileCoreServicesLibrary_1();
  v1 = dlsym(v0, "kUTTypeUTF16ExternalPlainText");
  if (!v1)
  {
    __assert_rtn("initkUTTypeUTF16ExternalPlainText", "NSString+NSItemProvider.m", 21, "constant");
  }

  result = *v1;
  constantkUTTypeUTF16ExternalPlainText = result;
  off_1ED439878[0] = kUTTypeUTF16ExternalPlainTextFunction;
  return result;
}

uint64_t initkUTTypeUTF16PlainText()
{
  v0 = MobileCoreServicesLibrary_1();
  v1 = dlsym(v0, "kUTTypeUTF16PlainText");
  if (!v1)
  {
    __assert_rtn("initkUTTypeUTF16PlainText", "NSString+NSItemProvider.m", 20, "constant");
  }

  result = *v1;
  constantkUTTypeUTF16PlainText = result;
  off_1ED439880[0] = kUTTypeUTF16PlainTextFunction;
  return result;
}

id localizedDescriptionForError(void *a1, uint64_t a2)
{
  if ([a1 isEqualToString:@"NSURLErrorDomain"])
  {
    v4 = _CFNetworkErrorCopyLocalizedDescriptionWithHostname();

    return v4;
  }

  else
  {
    pthread_once(&initControl, WebNSErrorExtrasInit);
    result = [descriptions objectForKey:a1];
    if (result)
    {
      v6 = result;
      v7 = [NSNumber numberWithInteger:a2];

      return [v6 objectForKey:v7];
    }
  }

  return result;
}

uint64_t getter of attributeFixup #1 in String.LocalizationValue.FormatArgument.resolve<A>(attributed:with:including:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  if (v6 == 254)
  {
    if (a2)
    {
      String.LocalizationValue.FormatArgument.buildAttributeContainerForArgument()(v14);
      v8 = v14[0];
      v9 = v14[1];
      v10 = *(a1 + 16);
      v11 = *(a1 + 24);
      *(a1 + 16) = v14[0];
      *(a1 + 24) = v9;
      v12 = *(a1 + 32);
      *(a1 + 32) = 1;

      outlined consume of String.LocalizationValue.FormatArgument._AttributeFixup??(v10, v11, v12);
      *a3 = v8;
      *(a3 + 8) = v9;
      *(a3 + 16) = 1;
    }

    else
    {
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
      *(a1 + 32) = -1;
      outlined consume of String.LocalizationValue.FormatArgument._AttributeFixup??(v4, v5, 254);
      *a3 = 0;
      *(a3 + 8) = 0;
      *(a3 + 16) = -1;
    }
  }

  else
  {
    *a3 = v4;
    *(a3 + 8) = v5;
    *(a3 + 16) = v6;
  }

  return outlined copy of String.LocalizationValue.FormatArgument._AttributeFixup??(v4, v5, v6);
}

Swift::Void __swiftcall NSNotificationCenter.Notifications.teardown()()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock((v1 + 64));
  v2 = *(v1 + 40);
  v20 = *(v1 + 24);
  v21 = v2;
  *(v1 + 24) = 0u;
  *(v1 + 40) = 0u;
  v3 = *(v1 + 56);
  memset(v22 + 8, 0, 48);
  *&v22[0] = v3;

  outlined destroy of TermOfAddress?(v22 + 8, &_sSo20NSNotificationCenterC10FoundationE13NotificationsC19NotificationWrapperVSgMd);
  memset(v22 + 8, 0, 48);
  *(v1 + 56) = MEMORY[0x1E69E7CC0];

  os_unfair_lock_unlock((v1 + 64));
  v25[0] = v20;
  v25[1] = v21;
  v23[0] = v22[0];
  v23[1] = v22[1];
  v23[2] = v22[2];
  v24 = *&v22[3];
  outlined init with copy of FloatingPointRoundingRule?(v25, &v18, &_ss8Sendable_pSgMd);
  if (v19)
  {
    outlined init with take of Any(&v18, &v20);
    v4 = *(v0 + 16);
    v5 = *(&v21 + 1);
    v6 = __swift_project_boxed_opaque_existential_1(&v20, *(&v21 + 1));
    isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
    if (isClassOrObjCExistentialType)
    {
      if (*(*(v5 - 8) + 64) != 8)
      {
        __break(1u);
        return;
      }

      v8 = *v6;
      swift_unknownObjectRetain();
    }

    else
    {
      v15 = MEMORY[0x1EEE9AC00](isClassOrObjCExistentialType);
      (*(v17 + 16))(&v18 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v6, v5, v15);
      v8 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    }

    [v4 removeObserver_];
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(&v20);
  }

  else
  {
    outlined destroy of TermOfAddress?(&v18, &_ss8Sendable_pSgMd);
  }

  v9 = *(*&v23[0] + 16);
  if (v9)
  {
    v10 = (*&v23[0] + 32);
    do
    {
      v11 = *v10++;
      outlined init with copy of FloatingPointRoundingRule?(v23 + 8, &v20, &_sSo20NSNotificationCenterC10FoundationE13NotificationsC19NotificationWrapperVSgMd);
      v12 = *(*(v11 + 64) + 40);
      v14 = v21;
      v13 = v22[0];
      *v12 = v20;
      v12[1] = v14;
      v12[2] = v13;
      swift_continuation_resume();
      --v9;
    }

    while (v9);
  }

  outlined destroy of TermOfAddress?(v25, &_ss8Sendable_pSgMd);
  outlined destroy of NSNotificationCenter.Notifications.Resumption(v23);
}

uint64_t NSNotificationCenter.Notifications.__deallocating_deinit()
{
  NSNotificationCenter.Notifications.teardown()();

  return swift_deallocClassInstance();
}

uint64_t outlined consume of String.LocalizationValue.FormatArgument._AttributeFixup??(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != 254)
  {
    return outlined consume of String.LocalizationValue.FormatArgument._AttributeFixup?(result, a2, a3);
  }

  return result;
}

id String.LocalizationOptions._nsOptions.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 17);
  result = [objc_allocWithZone(_NSStringFormattingOptions) init];
  if (result)
  {
    v5 = result;
    if (v3)
    {
      [result setPluralizationNumber_];
    }

    else
    {
      v6 = objc_allocWithZone(NSNumber);
      if (v2)
      {
        v7 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v7 = v1;
      }

      v8 = [v6 initWithInteger_];
      [v5 setPluralizationNumber_];
    }

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.DurationFieldAttribute.Field and conformance AttributeScopes.FoundationAttributes.DurationFieldAttribute.Field()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.DurationFieldAttribute.Field and conformance AttributeScopes.FoundationAttributes.DurationFieldAttribute.Field;
  if (!lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.DurationFieldAttribute.Field and conformance AttributeScopes.FoundationAttributes.DurationFieldAttribute.Field)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.DurationFieldAttribute.Field and conformance AttributeScopes.FoundationAttributes.DurationFieldAttribute.Field);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.DurationFieldAttribute.Field and conformance AttributeScopes.FoundationAttributes.DurationFieldAttribute.Field;
  if (!lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.DurationFieldAttribute.Field and conformance AttributeScopes.FoundationAttributes.DurationFieldAttribute.Field)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.DurationFieldAttribute.Field and conformance AttributeScopes.FoundationAttributes.DurationFieldAttribute.Field);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.DurationFieldAttribute.Field and conformance AttributeScopes.FoundationAttributes.DurationFieldAttribute.Field;
  if (!lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.DurationFieldAttribute.Field and conformance AttributeScopes.FoundationAttributes.DurationFieldAttribute.Field)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.DurationFieldAttribute.Field and conformance AttributeScopes.FoundationAttributes.DurationFieldAttribute.Field);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.DurationFieldAttribute.Field and conformance AttributeScopes.FoundationAttributes.DurationFieldAttribute.Field;
  if (!lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.DurationFieldAttribute.Field and conformance AttributeScopes.FoundationAttributes.DurationFieldAttribute.Field)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.DurationFieldAttribute.Field and conformance AttributeScopes.FoundationAttributes.DurationFieldAttribute.Field);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.DurationFieldAttribute.Field and conformance AttributeScopes.FoundationAttributes.DurationFieldAttribute.Field;
  if (!lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.DurationFieldAttribute.Field and conformance AttributeScopes.FoundationAttributes.DurationFieldAttribute.Field)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.DurationFieldAttribute.Field and conformance AttributeScopes.FoundationAttributes.DurationFieldAttribute.Field);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [Character] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [Character] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Character] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySJGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [Character] and conformance [A]);
  }

  return result;
}

uint64_t outlined init with copy of Duration.TimeFormatStyle.Pattern.Fields(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of FloatingPointFormatStyle<Double>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24FloatingPointFormatStyleVySdGMd);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined consume of Rope<AttributedString._InternalRun>._Item?(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

double specialized Rope.Builder._insertBeforeTip(_:)(uint64_t a1, uint64_t a2, int64_t a3)
{
  v52 = a1;
  v53 = a2;
  v54 = a3;
  if (*(a1 + 18))
  {
    v8 = v3[4];
    v7 = v3[5];
    v9 = v3[6];
    v3[5] = 0;
    v3[6] = 0;
    v3[4] = 0;
    if (v7)
    {
      v10 = v3[1];
      v11 = *(v3 + 1);
      v3[2] = 0;
      v3[3] = 0;
      v3[1] = 0;
      if (v10)
      {
        v46 = v10;
        v49 = v11;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s19CollectionsInternal4RopeV8_StorageCy10Foundation16AttributedStringV01_B3RunV_AC5_ItemVyAJ_GGMd);
        v33 = swift_allocObject();
        *(v33 + 16) = 0;
        *(v33 + 18) = 0;
        v49 = 0uLL;
        v46 = v33;
      }

      specialized Rope._Node._appendItem(_:)(v8, v7, v9);
      if (*(v46 + 16) == 15)
      {
        v34 = swift_unknownObjectRetain();
        specialized Rope.Builder._appendNow(_:)(v34, v49, *(&v49 + 1));
        swift_unknownObjectRelease();
      }

      else
      {

        v3[1] = v46;
        *(v3 + 1) = v49;
      }
    }

    v35 = v3[1];
    v36 = v3[2];
    v37 = v3[3];
    v3[2] = 0;
    v3[3] = 0;
    v3[1] = 0;
    if (v35)
    {
      specialized Rope.Builder._appendNow(_:)(v35, v36, v37);
    }

    v38 = a1;
    v39 = a2;
    v40 = a3;
LABEL_20:

    specialized Rope.Builder._appendNow(_:)(v38, v39, v40);
    return *&v41;
  }

  if (*(a1 + 16) != 1)
  {
    v24 = v3[4];
    v23 = v3[5];
    v25 = v3[6];
    v3[5] = 0;
    v3[6] = 0;
    v3[4] = 0;
    if (v23)
    {

      v26 = specialized Rope._Node.insert(_:at:)(v24, v23, v25, 0);
      if (v26)
      {
        v29 = v26;
        v30 = v27;
        v31 = v28;
        v32 = swift_unknownObjectRetain();
        specialized Rope.Builder._insertBeforeTip(_:)(v32, v53, v54);
        specialized Rope.Builder._insertBeforeTip(_:)(v29, v30, v31);
        swift_unknownObjectRelease();

        goto LABEL_24;
      }
    }

    v42 = v3[1];
    v41 = *(v3 + 1);
    v3[2] = 0;
    v3[3] = 0;
    v3[1] = 0;
    if (v42)
    {
      v48 = v42;
      v51 = v41;
      if (specialized Rope._Node.rebalance(nextNeighbor:)(&v52) && *(v48 + 16) != 15)
      {
        swift_unknownObjectRelease();
        v3[1] = v48;
        *&v41 = v51;
        *(v3 + 1) = v51;
        return *&v41;
      }

      specialized Rope.Builder._appendNow(_:)(v48, v51, *(&v51 + 1));
    }

    v38 = v52;
    v39 = v53;
    v40 = v54;
    if (*(v52 + 16) != 15)
    {
      v3[1] = v52;
      v3[2] = v39;
      v3[3] = v40;
      return *&v41;
    }

    goto LABEL_20;
  }

  v12 = specialized Rope._Node.subscript.getter(0, a1);
  v14 = v13;
  v16 = v15;
  if (v12)
  {
    v17 = v12;
    v18 = v3[5];
    if (v18)
    {
      v19 = v3[4];
      v20 = v3[6];
      v21 = v3[1];
      v22 = *(v3 + 1);
      v3[2] = 0;
      v3[3] = 0;
      v3[1] = 0;
      if (v21)
      {
        v47 = v21;
        v50 = v22;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s19CollectionsInternal4RopeV8_StorageCy10Foundation16AttributedStringV01_B3RunV_AC5_ItemVyAJ_GGMd);
        v43 = swift_allocObject();
        *(v43 + 16) = 0;
        *(v43 + 18) = 0;
        v50 = 0uLL;
        v47 = v43;
      }

      specialized Rope._Node._appendItem(_:)(v19, v18, v20);
      if (*(v47 + 16) == 15)
      {
        v44 = swift_unknownObjectRetain();
        specialized Rope.Builder._appendNow(_:)(v44, v50, *(&v50 + 1));
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();

        v3[1] = v47;
        *&v41 = v50;
        *(v3 + 1) = v50;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

    v3[4] = v17;
    v3[5] = v14;
    v3[6] = v16;
    return *&v41;
  }

  swift_unknownObjectRelease();

LABEL_24:

  return *&v41;
}

uint64_t Duration.TimeFormatStyle.Attributed.format(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = v3;
  v385 = a1;
  v386 = a2;
  v360 = a3;
  v421 = *MEMORY[0x1E69E9840];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24FloatingPointFormatStyleVySdGMd);
  MEMORY[0x1EEE9AC00](v8);
  v353 = &v347 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v352 = &v347 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v358 = &v347 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v357 = &v347 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v356 = &v347 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v376 = &v347 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v383 = &v347 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v370 = &v347 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v347 - v25;
  v373 = type metadata accessor for FloatingPointRoundingRule();
  v27 = *(v373 - 8);
  MEMORY[0x1EEE9AC00](v373);
  v379 = &v347 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v364 = &v347 - v30;
  v31 = type metadata accessor for Duration.TimeFormatStyle.Pattern.Fields(0);
  MEMORY[0x1EEE9AC00](v31);
  v359 = (&v347 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v33);
  v365 = &v347 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v347 - v36;
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v347 - v39;
  v372 = type metadata accessor for Duration.TimeFormatStyle.Pattern(0);
  MEMORY[0x1EEE9AC00](v372);
  v355 = &v347 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v361 = &v347 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v347 - v45;
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v347 - v48;
  outlined init with copy of Duration.TimeFormatStyle.Pattern.Fields(v7, &v347 - v48, type metadata accessor for Duration.TimeFormatStyle.Pattern);
  outlined init with take of Duration.TimeFormatStyle.Pattern(v49, v40, type metadata accessor for Duration.TimeFormatStyle.Pattern.Fields);
  v368 = v31;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v362 = 0xEB00000000737327;
      v51 = 0x3A276D6D273A2768;
    }

    else
    {
      v362 = 0xE600000000000000;
      v51 = 0x7373273A276DLL;
    }

    countAndFlagsBits = v51;
    v40 += *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi23fractionalSecondsLength_s25FloatingPointRoundingRuleO015roundFractionalB0tMd) + 48);
  }

  else
  {
    v362 = 0xE600000000000000;
    countAndFlagsBits = 0x6D6D273A2768;
  }

  v366 = *(v27 + 8);
  v367 = v27 + 8;
  v366(v40, v373);
  LODWORD(v408) = 0;
  v52 = type metadata accessor for Duration.TimeFormatStyle.Attributed(0);
  v53 = *(v7 + *(v52 + 24) + 8);
  v380 = (v7 + *(v52 + 24));
  v381 = v52;
  ObjectType = swift_getObjectType();
  (*(v53 + 64))(ObjectType, v53);
  String.utf8CString.getter();

  TimePattern = uatmufmt_getTimePattern();

  if (v408 <= 0 && (specialized String.init(_utf16:)(v405, TimePattern), v56))
  {
    v57 = String.lowercased()();
    countAndFlagsBits = v57._countAndFlagsBits;
    object = v57._object;
  }

  else
  {
  }

  outlined init with copy of Duration.TimeFormatStyle.Pattern.Fields(v7, v46, type metadata accessor for Duration.TimeFormatStyle.Pattern);
  outlined init with take of Duration.TimeFormatStyle.Pattern(v46, v37, type metadata accessor for Duration.TimeFormatStyle.Pattern.Fields);
  v58 = swift_getEnumCaseMultiPayload();
  if (v58)
  {
    if (v58 == 1)
    {
      v59 = &outlined read-only object #1 of Duration.TimeFormatStyle.Attributed.format(_:);
    }

    else
    {
      v59 = &outlined read-only object #2 of Duration.TimeFormatStyle.Attributed.format(_:);
    }

    v60 = *v37;
    v37 += *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi23fractionalSecondsLength_s25FloatingPointRoundingRuleO015roundFractionalB0tMd) + 48);
  }

  else
  {
    v60 = 0;
    v59 = &outlined read-only object #0 of Duration.TimeFormatStyle.Attributed.format(_:);
  }

  v382 = v27;
  (*(v27 + 32))(v364, v37, v373);
  v61 = v59[2];
  v62 = MEMORY[0x1E69E7CC0];
  v377 = v8;
  v378 = v7;
  v369 = v26;
  *&v387 = v59;
  if (v61)
  {
    v63 = *(v59 + v61 + 31);
    if (v63 <= 4)
    {
      static Duration.interval(fractionalSecondsLength:)(v60);
      v408 = qword_18122B810[v63];
      lazy protocol witness table accessor for type Int64 and conformance Int64();
      v66 = static Duration.* infix<A>(_:_:)();
    }

    else
    {
      if ((v63 - 5) >= 3u)
      {
        __break(1u);
LABEL_343:
        v345 = swift_allocError();
        swift_willThrow();
        *&v396 = v345;
        v346 = v345;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
        if ((swift_dynamicCast() & 1) == 0)
        {
LABEL_346:
          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();

          swift_unexpectedError();
          __break(1u);
LABEL_347:
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
LABEL_348:
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
LABEL_349:
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }

        v408 = 0;
        v409 = 0xE000000000000000;
        _StringGuts.grow(_:)(30);
        MEMORY[0x1865CB0E0](0xD00000000000001BLL, 0x800000018147F480);
        _print_unlocked<A, B>(_:_:)();
        MEMORY[0x1865CB0E0](39, 0xE100000000000000);
LABEL_345:
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        goto LABEL_346;
      }

      v64 = (3 * (v63 - 5) + 3);
      v65 = v64 ^ 0x7FFFFFFFFFFFFFFFLL;
      if ((v64 ^ 0x7FFFFFFFFFFFFFFFLL) >= v60)
      {
        v65 = v60;
      }

      if (__OFADD__(v64, v65))
      {
        goto LABEL_330;
      }

      v66 = static Duration.interval(fractionalSecondsLength:)(v64 + v65);
    }

    v68 = v66;
    v69 = v67;
    static Duration.zero.getter();
    if (static Duration.== infix(_:_:)())
    {
      goto LABEL_75;
    }

    static Duration.zero.getter();
    v70 = static Duration.< infix(_:_:)();
    v349 = v63;
    if (v70)
    {
      static Duration.zero.getter();
      v68 = static Duration.- infix(_:_:)();
      v69 = v71;
    }

    static Duration.zero.getter();
    if (static Duration.< infix(_:_:)())
    {
      static Duration.zero.getter();
      static Duration.- infix(_:_:)();
    }

    v72 = Duration.components.getter();
    static Duration.zero.getter();
    if (static Duration.< infix(_:_:)())
    {
      static Duration.zero.getter();
      static Duration.- infix(_:_:)();
    }

    j = v68;
    v73 = Duration.components.getter();
    v75 = v74;
    v354 = v69;
    if (v73)
    {
      if (!v74)
      {
        v81 = v73;
        if (v72 == 0x8000000000000000 && v73 == -1)
        {
          goto LABEL_338;
        }

        v82 = v72 / v73;
        v76 = Duration.init(secondsComponent:attosecondsComponent:)();
        *&v375 = v83;
        v26 = v369;
        if ((v81 * v82) >> 64 != (v81 * v82) >> 63)
        {
          goto LABEL_331;
        }

        v84 = Duration.init(secondsComponent:attosecondsComponent:)();
        v86 = v85;
        v8 = v377;
        goto LABEL_49;
      }

      if (static Duration.< infix(_:_:)())
      {
        v76 = static Duration.zero.getter();
        *&v375 = v77;
        v78 = static Duration.zero.getter();
      }

      else
      {
        static Duration./ infix(_:_:)();
        if ((*&v87 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
LABEL_332:
          __break(1u);
          goto LABEL_333;
        }

        if (v87 <= -1.0)
        {
LABEL_333:
          __break(1u);
          goto LABEL_334;
        }

        if (v87 >= 1.84467441e19)
        {
LABEL_334:
          __break(1u);
          goto LABEL_335;
        }

        v88 = v87;
        v408 = v87;
        v89 = lazy protocol witness table accessor for type UInt64 and conformance UInt64();
        static Duration.* infix<A>(_:_:)();
        static Duration.- infix(_:_:)();
        static Duration./ infix(_:_:)();
        if ((*&v90 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
LABEL_335:
          __break(1u);
          goto LABEL_336;
        }

        if (v90 <= -9.22337204e18)
        {
LABEL_336:
          __break(1u);
          goto LABEL_337;
        }

        if (v90 >= 9.22337204e18)
        {
LABEL_337:
          __break(1u);
LABEL_338:
          __break(1u);
LABEL_339:
          __break(1u);
LABEL_340:
          __break(1u);
LABEL_341:
          __break(1u);
        }

        v91 = v90;
        v371 = v90;
        Duration.init(secondsComponent:attosecondsComponent:)();
        v408 = v88;
        static Duration.* infix<A>(_:_:)();
        v374 = v89;
        Duration.init(secondsComponent:attosecondsComponent:)();
        v408 = v91;
        lazy protocol witness table accessor for type Int64 and conformance Int64();
        static Duration.* infix<A>(_:_:)();
        v92 = static Duration.+ infix(_:_:)();
        *&v375 = v93;
        v408 = v88;
        static Duration.* infix<A>(_:_:)();
        v408 = v371;
        static Duration.* infix<A>(_:_:)();
        v76 = v92;
        v78 = static Duration.+ infix(_:_:)();
      }
    }

    else
    {
      v408 = v74;
      lazy protocol witness table accessor for type Int64 and conformance Int64();
      v76 = static Duration./ infix<A>(_:_:)();
      v408 = v75;
      *&v375 = v80;
      v78 = static Duration.* infix<A>(_:_:)();
    }

    v84 = v78;
    v86 = v79;
    v8 = v377;
    v26 = v369;
LABEL_49:
    static Duration.zero.getter();
    v94 = static Duration.< infix(_:_:)() & 1;
    static Duration.zero.getter();
    if (v94 == (static Duration.< infix(_:_:)() & 1))
    {
      v95 = v84;
      v97 = v86;
    }

    else
    {
      static Duration.zero.getter();
      v95 = static Duration.- infix(_:_:)();
      v97 = v96;
      static Duration.zero.getter();
      v76 = static Duration.- infix(_:_:)();
      *&v375 = v98;
    }

    static Duration.zero.getter();
    v99 = static Duration.< infix(_:_:)();
    v374 = v95;
    v371 = v97;
    if (v99)
    {
      static Duration.zero.getter();
      static Duration.- infix(_:_:)();
    }

    v350 = v76;
    static Duration.zero.getter();
    if (static Duration.< infix(_:_:)())
    {
      static Duration.zero.getter();
      static Duration.- infix(_:_:)();
    }

    static Duration.- infix(_:_:)();
    static Duration.zero.getter();
    if (static Duration.< infix(_:_:)())
    {
      static Duration.zero.getter();
      static Duration.- infix(_:_:)();
    }

    static Duration.zero.getter();
    if (static Duration.== infix(_:_:)())
    {
      v408 = 2;
      lazy protocol witness table accessor for type Int64 and conformance Int64();
      static Duration./ infix<A>(_:_:)();
      v408 = 2;
      static Duration.* infix<A>(_:_:)();
      static Duration.- infix(_:_:)();
      static Duration.zero.getter();
      static Duration.== infix(_:_:)();
LABEL_74:
      v59 = v387;
      LODWORD(v63) = v349;
LABEL_75:
      v62 = Duration.factor(intoUnits:)(v59);
      v111 = *(v62 + 2);
      v112 = Duration.components.getter();
      Duration.components.getter();
      v37 = v113;
      if (v63 > 3)
      {
        if (v63 > 5)
        {
          if (v63 == 6)
          {
            v115 = 6.0;
          }

          else
          {
            v115 = 9.0;
          }
        }

        else
        {
          v115 = 3.0;
          if (v63 == 4)
          {
            v116 = 1.0;
            goto LABEL_91;
          }
        }

        v116 = pow(0.1, v115);
      }

      else
      {
        if (v63 > 1)
        {
          if (v63 == 2)
          {
            *&v114 = 3600.0;
          }

          else
          {
            *&v114 = 60.0;
          }
        }

        else if (v63)
        {
          *&v114 = 86400.0;
        }

        else
        {
          *&v114 = 604800.0;
        }

        v116 = *&v114;
      }

LABEL_91:
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        if (v111)
        {
          goto LABEL_93;
        }
      }

      else
      {
        v62 = specialized _ArrayBuffer._consumeAndCreateNew()(v62);
        if (v111)
        {
LABEL_93:
          if (v111 <= *(v62 + 2))
          {
            *&v62[8 * v111 + 24] = (v37 * 1.0e-18 + v112) / v116 + *&v62[8 * v111 + 24];
            v7 = v378;
            goto LABEL_95;
          }

          goto LABEL_329;
        }
      }

      __break(1u);
LABEL_329:
      __break(1u);
LABEL_330:
      __break(1u);
LABEL_331:
      __break(1u);
      goto LABEL_332;
    }

    static Duration.zero.getter();
    if (static Duration.< infix(_:_:)())
    {
      static Duration.zero.getter();
      static Duration.- infix(_:_:)();
    }

    v100 = static Duration.+ infix(_:_:)();
    v102 = v101;
    static Duration.zero.getter();
    if (static Duration.< infix(_:_:)())
    {
      static Duration.zero.getter();
      static Duration.- infix(_:_:)();
    }

    v386 = v100;
    static Duration.zero.getter();
    v103 = static Duration.< infix(_:_:)();
    v354 = v102;
    if (v103)
    {
      static Duration.zero.getter();
      static Duration.- infix(_:_:)();
    }

    static Duration.- infix(_:_:)();
    static Duration.zero.getter();
    if (static Duration.< infix(_:_:)())
    {
      static Duration.zero.getter();
      static Duration.- infix(_:_:)();
    }

    v104 = v379;
    v105 = v382;
    v106 = v373;
    (*(v382 + 16))(v379, v364, v373);
    v107 = (*(v105 + 88))(v104, v106);
    if (v107 == *MEMORY[0x1E69E7038])
    {
      v108 = (static Duration.< infix(_:_:)() & 1) == 0;
      goto LABEL_70;
    }

    if (v107 == *MEMORY[0x1E69E7030])
    {
      v339 = static Duration.< infix(_:_:)();
      v109 = v371;
      if ((v339 & 1) == 0)
      {
        v340 = static Duration.== infix(_:_:)();
        v109 = v354;
        if (v340)
        {
          v408 = 2;
          lazy protocol witness table accessor for type Int64 and conformance Int64();
          static Duration./ infix<A>(_:_:)();
          v408 = 2;
          static Duration.* infix<A>(_:_:)();
          static Duration.- infix(_:_:)();
          static Duration.zero.getter();
          v108 = (static Duration.== infix(_:_:)() & 1) == 0;
LABEL_70:
          v109 = v371;
          if (v108)
          {
            v109 = v354;
          }
        }
      }

LABEL_73:
      v408 = 2;
      v110 = v109;
      lazy protocol witness table accessor for type Int64 and conformance Int64();
      static Duration./ infix<A>(_:_:)();
      v408 = 2;
      static Duration.* infix<A>(_:_:)();
      static Duration.- infix(_:_:)();
      static Duration.zero.getter();
      static Duration.== infix(_:_:)();
      v386 = v110;
      static Duration.== infix(_:_:)();
      v26 = v369;
      goto LABEL_74;
    }

    if (v107 == *MEMORY[0x1E69E7040])
    {
      v341 = v354;
      v342 = v371;
      if (static Duration.< infix(_:_:)())
      {
        v109 = v342;
      }

      else
      {
        v109 = v341;
      }

      goto LABEL_73;
    }

    if (v107 == *MEMORY[0x1E69E7048])
    {
      v343 = v354;
      v344 = v371;
      if (static Duration.< infix(_:_:)())
      {
        v109 = v343;
      }

      else
      {
        v109 = v344;
      }

      goto LABEL_73;
    }

    v109 = v371;
    if (v107 == *MEMORY[0x1E69E7020])
    {
      goto LABEL_73;
    }

    v109 = v354;
    if (v107 == *MEMORY[0x1E69E7028])
    {
      goto LABEL_73;
    }

    goto LABEL_345;
  }

LABEL_95:
  if (*(v62 + 2) >= v61)
  {
    v117 = v61;
  }

  else
  {
    v117 = *(v62 + 2);
  }

  if (v117)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys8DurationV10FoundationE16UnitsFormatStyleV4UnitVSdGMd);
    v118 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v118 = MEMORY[0x1E69E7CC8];
  }

  v119 = v7;
  v401[0] = v118;
  swift_bridgeObjectRetain_n();

  if (v61)
  {
    for (i = 0; v61 != i; ++i)
    {
      v121 = *(v62 + 2);
      if (i == v121)
      {
        break;
      }

      if (i >= v121)
      {
        __break(1u);
LABEL_319:
        __break(1u);
LABEL_320:
        __break(1u);
LABEL_321:
        __break(1u);
LABEL_322:
        __break(1u);
LABEL_323:
        __break(1u);
LABEL_324:
        __break(1u);
        goto LABEL_325;
      }

      v122 = *(v387 + i + 32);
      if (v122 == 8)
      {
        break;
      }

      v123 = *&v62[8 * i + 32];
      LOBYTE(v394[0]) = *(v387 + i + 32);
      v124 = specialized __RawDictionaryStorage.find<A>(_:)(v122);
      v126 = v118[2];
      v127 = (v125 & 1) == 0;
      v128 = __OFADD__(v126, v127);
      v129 = v126 + v127;
      if (v128)
      {
        goto LABEL_319;
      }

      v37 = v125;
      if (v118[3] < v129)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v129, 1);
        v118 = v401[0];
        v124 = specialized __RawDictionaryStorage.find<A>(_:)(v394[0]);
        if ((v37 & 1) != (v130 & 1))
        {
          goto LABEL_347;
        }
      }

      if (v37)
      {
        goto LABEL_343;
      }

      v118[(v124 >> 6) + 8] |= 1 << v124;
      *(v118[6] + v124) = v394[0];
      *(v118[7] + 8 * v124) = v123;
      v131 = v118[2];
      v128 = __OFADD__(v131, 1);
      v132 = v131 + 1;
      if (v128)
      {
        goto LABEL_320;
      }

      v118[2] = v132;
    }
  }

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  v62 = specialized static Duration.TimeFormatStyle.Attributed.componentsFromPatternString(_:patternSet:)(countAndFlagsBits, object, &outlined read-only object #3 of Duration.TimeFormatStyle.Attributed.format(_:));
  swift_arrayDestroy();
  if (v118[2])
  {
    v133 = specialized __RawDictionaryStorage.find<A>(_:)(2u);
    v5 = 0.0;
    v4 = 0.0;
    v134 = v382;
    if (v135)
    {
      v4 = *(v118[7] + 8 * v133);
    }

    if (v118[2])
    {
      v136 = specialized __RawDictionaryStorage.find<A>(_:)(3u);
      v6 = 0.0;
      if (v137)
      {
        v5 = *(v118[7] + 8 * v136);
      }

      if (v118[2])
      {
        v138 = specialized __RawDictionaryStorage.find<A>(_:)(4u);
        if (v139)
        {
          v6 = *(v118[7] + 8 * v138);
        }
      }
    }

    else
    {
      v6 = 0.0;
    }
  }

  else
  {
    v5 = 0.0;
    v4 = 0.0;
    v6 = 0.0;
    v134 = v382;
  }

  v140 = v26 + *(v8 + 36);
  *v140 = 0;
  *(v140 + 8) = 1;
  *(v140 + 16) = 0;
  *(v140 + 24) = 0;
  *(v140 + 32) = 0;
  *(v140 + 40) = 0x1FFFFFFFELL;
  *(v140 + 56) = 0;
  *(v140 + 64) = 0;
  *(v140 + 48) = 0;
  *(v140 + 72) = 131584;
  *(v140 + 76) = 512;
  v141 = type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
  v142 = v141[9];
  v143 = *(v134 + 56);
  v387 = *v380;
  v143(v140 + v142, 1, 1, v373);
  v144 = v140 + v141[10];
  *v144 = 0;
  *(v144 + 8) = -1;
  *(v140 + v141[11]) = 3;
  *v26 = v387;
  *(v140 + 73) = *(&v119->_os_unfair_lock_opaque + *(v381 + 20));
  swift_unknownObjectRetain();
  BigString.init()();
  v408 = 0;
  MEMORY[0x1865D26B0](&v408, 8);
  i = v408;
  type metadata accessor for AttributedString.Guts();
  v37 = swift_allocObject();
  if ((BigString.isEmpty.getter() & 1) == 0)
  {
LABEL_325:
    __break(1u);
    goto LABEL_326;
  }

  if (one-time initialization token for _nextVersion != -1)
  {
LABEL_326:
    swift_once();
  }

  add_explicit = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
  v146 = v405[17];
  *(v37 + 24) = v405[16];
  *(v37 + 16) = add_explicit;
  *(v37 + 40) = v146;
  *(v37 + 56) = v405[18];
  *(v37 + 72) = 0;
  *(v37 + 80) = 0;
  *(v37 + 88) = 0;
  *(v37 + 96) = i;
  *(v37 + 104) = MEMORY[0x1E69E7CC0];
  v391 = v37;
  LODWORD(v371) = fmin(fmin(v4, v5), v6) >= 0.0;
  v147 = *(v62 + 2);
  if (v147)
  {
    v148 = 0;
    *&v387 = 0;
    v354 = v62;
    v149 = v62 + 32;
    v385 = "butedString+_InternalRun.swift";
    v375 = xmmword_1812187D0;
    v374 = v147;
    v380 = v149;
    while (1)
    {
      v160 = &v149[32 * v148];
      v161 = *v160;
      if (v160[8] != 1)
      {
        v401[0] = *v160;

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySJGMd);
        lazy protocol witness table accessor for type [Character] and conformance [A]();
        String.init<A>(_:)();
LABEL_148:
        BigString.init(_:)();
        AttributedString.init(_:attributes:)(&v407, MEMORY[0x1E69E7CC8], MEMORY[0x1E69E7CD0], v401);
        v152 = v401[0];
        goto LABEL_130;
      }

      v162 = v161[2];
      if (!v162)
      {
        v149 = v380;
        goto LABEL_131;
      }

      v163 = v161[4];
      v164 = v161[5];
      v165 = v163 == 104 && v164 == 0xE100000000000000;
      v382 = v148;
      if (v165 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v166 = v119 + *(v372 + 20);
        if ((v166[8] & 1) == 0)
        {
          v167 = *v166;
          if (v162 <= v167)
          {
            v162 = v167;
          }
        }

        if (v162 >= 0x3E7)
        {
          v168 = 999;
        }

        else
        {
          v168 = v162;
        }

        LOBYTE(v401[0]) = 0;
        v169 = 1;
        LOBYTE(v396) = 1;
        LOBYTE(v394[0]) = 0;
        LOBYTE(v392[0]) = 0;
        v170 = v370;
        outlined init with take of FloatingPointFormatStyle<Double>(v26, v370);
        v171 = v170 + *(v8 + 36);
        *(v171 + 16) = v168;
        *(v171 + 24) = 0;
        *(v171 + 32) = 0;
        *(v171 + 40) = 1;
        *(v171 + 48) = 0;
        *(v171 + 56) = 0;
        *(v171 + 64) = 0;
        *(v171 + 72) = 0x80;
        outlined init with take of FloatingPointFormatStyle<Double>(v170, v26);
        LODWORD(v381) = 2;
        if (v371)
        {
          v172 = 256;
          v173 = 0x10000;
          goto LABEL_205;
        }

LABEL_150:
        v173 = 0;
        v169 = 0;
        v172 = 0;
        goto LABEL_205;
      }

      v174 = v163 == 109 && v164 == 0xE100000000000000;
      if (v174 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v187 = v163 == 115 && v164 == 0xE100000000000000;
      if (!v187 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        v401[0] = v161;

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySJGMd);
        lazy protocol witness table accessor for type [Character] and conformance [A]();
        String.init<A>(_:)();
        v149 = v380;
        goto LABEL_148;
      }

      v188 = v355;
      outlined init with copy of Duration.TimeFormatStyle.Pattern.Fields(v119, v355, type metadata accessor for Duration.TimeFormatStyle.Pattern);
      outlined init with take of Duration.TimeFormatStyle.Pattern(v188, v359, type metadata accessor for Duration.TimeFormatStyle.Pattern.Fields);
      v189 = swift_getEnumCaseMultiPayload();
      if (v189)
      {
        if (v189 == 1)
        {
          v190 = v359;
          v191 = *v359;
          v192 = 999;
          if (v162 < 0x3E7)
          {
            v192 = v162;
          }

          v381 = v192;
          if (v191 >= 998)
          {
            v193 = 998;
          }

          else
          {
            v193 = v191;
          }

          v194 = v193 & ~(v193 >> 63);
          v195 = v191 & ~(v191 >> 63);
          if (v195 >= 998)
          {
            v195 = 998;
          }

          countAndFlagsBits = v195;
          v386 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi23fractionalSecondsLength_s25FloatingPointRoundingRuleO015roundFractionalB0tMd) + 48);
          LOBYTE(v401[0]) = 0;
          v169 = 1;
          LOBYTE(v396) = 1;
          LOBYTE(v394[0]) = 0;
          LOBYTE(v392[0]) = 0;
          v26 = v369;
          v196 = v352;
          outlined init with take of FloatingPointFormatStyle<Double>(v369, v352);
          v197 = v196 + *(v8 + 36);
          *(v197 + 16) = v381;
          *(v197 + 24) = 0;
          *(v197 + 32) = 0;
          *(v197 + 40) = 1;
          *(v197 + 48) = v194;
          *(v197 + 56) = 0;
          *(v197 + 64) = countAndFlagsBits;
          *(v197 + 72) = 0x80;
          outlined init with take of FloatingPointFormatStyle<Double>(v196, v26);
          v198 = v190 + v386;
        }

        else
        {
          v207 = v359;
          v208 = *v359;
          v209 = 999;
          if (v162 < 0x3E7)
          {
            v209 = v162;
          }

          v381 = v209;
          if (v208 >= 998)
          {
            v210 = 998;
          }

          else
          {
            v210 = v208;
          }

          v386 = v210 & ~(v210 >> 63);
          v211 = v208 & ~(v208 >> 63);
          if (v211 >= 998)
          {
            v212 = 998;
          }

          else
          {
            v212 = v211;
          }

          countAndFlagsBits = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi23fractionalSecondsLength_s25FloatingPointRoundingRuleO015roundFractionalB0tMd) + 48);
          LOBYTE(v401[0]) = 0;
          v169 = 1;
          LOBYTE(v396) = 1;
          LOBYTE(v394[0]) = 0;
          LOBYTE(v392[0]) = 0;
          v26 = v369;
          v213 = v353;
          outlined init with take of FloatingPointFormatStyle<Double>(v369, v353);
          v214 = v213 + *(v8 + 36);
          *(v214 + 16) = v381;
          *(v214 + 24) = 0;
          *(v214 + 32) = 0;
          *(v214 + 40) = 1;
          *(v214 + 48) = v386;
          *(v214 + 56) = 0;
          *(v214 + 64) = v212;
          *(v214 + 72) = 0x80;
          outlined init with take of FloatingPointFormatStyle<Double>(v213, v26);
          v198 = v207 + countAndFlagsBits;
        }

        v366(v198, v373);
        v172 = 256;
        LODWORD(v381) = 4;
      }

      else
      {
        v366(v359, v373);
        v172 = 256;
        LODWORD(v381) = 4;
        v169 = 1;
      }

      v173 = 0x10000;
LABEL_205:
      v215 = v26;
      v216 = v376;
      outlined init with copy of FloatingPointRoundingRule?(v26, v376, &_s10Foundation24FloatingPointFormatStyleVySdGMd);
      v217 = v383;
      outlined init with take of FloatingPointFormatStyle<Double>(v216, v383);
      v218 = v173 | v169 | v172;
      v219 = v217 + *(v8 + 36);
      *(v219 + 76) = BYTE2(v173);
      *(v219 + 74) = v218;
      v220 = NumberFormatStyleConfiguration.Collection.skeleton.getter();
      v62 = v221;
      v222 = *(v217 + 8);
      v223 = swift_getObjectType();
      v224 = (*(v222 + 472))(v223, v222);
      v226 = v225;
      if (one-time initialization token for cache != -1)
      {
        v268 = v224;
        swift_once();
        v224 = v268;
      }

      v119 = *algn_1EA7B1D98;
      v379 = static ICUNumberFormatter.cache;
      *&v396 = v220;
      *(&v396 + 1) = v62;
      countAndFlagsBits = v224;
      *&v397 = v224;
      *(&v397 + 1) = v226;
      MEMORY[0x1EEE9AC00](v224);
      os_unfair_lock_lock(v119 + 6);
      v227 = v387;
      partial apply for specialized closure #1 in FormatterCache.formatter(for:creator:)(&v119[4], v401);
      *&v387 = v227;
      os_unfair_lock_unlock(v119 + 6);
      v8 = v401[0];
      i = &_s10Foundation16AttributedStringV15_AttributeValueVSgMR;
      if (v401[0] == 1)
      {
        v386 = v226;
        type metadata accessor for ICUNumberFormatter();
        v8 = swift_allocObject();
        *(v8 + 24) = v220;
        *(v8 + 32) = v62;
        swift_bridgeObjectRetain_n();
        v228 = MEMORY[0x1865CB200](v220, v62);
        v26 = v220;
        if (v228)
        {
          v37 = v228;
          v229 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs6UInt16V_Tt1gq5(v228, 0);

          i = specialized Sequence._copySequenceContents(initializing:)(v401, (v229 + 4), v37, v220, v62);

          if (i != v37)
          {
            goto LABEL_324;
          }
        }

        else
        {

          v229 = MEMORY[0x1E69E7CC0];
        }

        LODWORD(v401[0]) = 0;
        v37 = v229[2];
        if (v37 >> 31)
        {
          goto LABEL_322;
        }

        String.utf8CString.getter();
        v230 = unumf_openForSkeletonAndLocale();

        v231 = MEMORY[0x1E69E7CC8];
        if (v230)
        {
          if (SLODWORD(v401[0]) >= 1)
          {
            unumf_close();
            goto LABEL_216;
          }

          *(v8 + 16) = v230;
        }

        else
        {
LABEL_216:

          type metadata accessor for ICUNumberFormatterBase();
          swift_deallocPartialClassInstance();
          v8 = 0;
        }

        os_unfair_lock_lock(v119 + 6);
        if (v379 >= *(*&v119[4]._os_unfair_lock_opaque + 16))
        {
        }

        else
        {
          *&v119[4]._os_unfair_lock_opaque = v231;
        }

        i = v386;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v401[0] = *&v119[4]._os_unfair_lock_opaque;
        v37 = v401[0];
        *&v119[4]._os_unfair_lock_opaque = 0x8000000000000000;
        v379 = v220;
        v26 = specialized __RawDictionaryStorage.find<A>(_:)(v220, v62, countAndFlagsBits, i);
        v234 = *(v37 + 16);
        v235 = (v233 & 1) == 0;
        v236 = v234 + v235;
        if (__OFADD__(v234, v235))
        {
          goto LABEL_323;
        }

        v237 = v233;
        if (*(v37 + 24) >= v236)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            v238 = v37;
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation18ICUNumberFormatterC9Signature33_1C58B5D80AA37B9371410D3343C91B53LLVAESgGMd);
            v292 = static _DictionaryStorage.copy(original:)();
            v238 = v292;
            if (*(v37 + 16))
            {
              v293 = (v292 + 64);
              v294 = (v37 + 64);
              v295 = ((1 << *(v238 + 32)) + 63) >> 6;
              v347 = v37 + 64;
              if (v238 != v37 || v293 >= &v294[8 * v295])
              {
                memmove(v293, v294, 8 * v295);
              }

              v296 = 0;
              *(v238 + 16) = *(v37 + 16);
              v297 = 1 << *(v37 + 32);
              if (v297 < 64)
              {
                v298 = ~(-1 << v297);
              }

              else
              {
                v298 = -1;
              }

              v299 = v298 & *(v37 + 64);
              v300 = (v297 + 63) >> 6;
              v348 = v300;
              if (!v299)
              {
                goto LABEL_275;
              }

              while (1)
              {
                v301 = __clz(__rbit64(v299));
                for (j = (v299 - 1) & v299; ; j = (v303 - 1) & v303)
                {
                  v304 = v301 | (v296 << 6);
                  v305 = *(v37 + 56);
                  v306 = (*(v37 + 48) + 32 * v304);
                  v307 = *v306;
                  v309 = v306[2];
                  v310 = v306[3];
                  v349 = v306[1];
                  v308 = v349;
                  v350 = v310;
                  v311 = *(v305 + 8 * v304);
                  v312 = (*(v238 + 48) + 32 * v304);
                  *v312 = v307;
                  v312[1] = v308;
                  v312[2] = v309;
                  v312[3] = v310;
                  *(*(v238 + 56) + 8 * v304) = v311;

                  v300 = v348;
                  v299 = j;
                  if (j)
                  {
                    break;
                  }

LABEL_275:
                  v302 = v296;
                  do
                  {
                    v296 = v302 + 1;
                    if (__OFADD__(v302, 1))
                    {
                      goto LABEL_340;
                    }

                    if (v296 >= v300)
                    {
                      goto LABEL_282;
                    }

                    v303 = *(v347 + 8 * v296);
                    ++v302;
                  }

                  while (!v303);
                  v301 = __clz(__rbit64(v303));
                }
              }
            }

LABEL_282:
          }

          v239 = countAndFlagsBits;
          if (v237)
          {
            goto LABEL_225;
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v236, isUniquelyReferenced_nonNull_native);
          v238 = v401[0];
          v239 = countAndFlagsBits;
          v240 = specialized __RawDictionaryStorage.find<A>(_:)(v379, v62, countAndFlagsBits, v386);
          if ((v237 & 1) != (v241 & 1))
          {
            goto LABEL_349;
          }

          v26 = v240;
          if (v237)
          {
LABEL_225:

            *(*(v238 + 56) + 8 * v26) = v8;

LABEL_230:
            *&v119[4]._os_unfair_lock_opaque = v238;

            os_unfair_lock_unlock(v119 + 6);

            outlined consume of ICUNumberFormatter??(1);
            v215 = v369;
            i = &_s10Foundation16AttributedStringV15_AttributeValueVSgMR;
            goto LABEL_231;
          }
        }

        specialized _NativeDictionary._insert(at:key:value:)(v26, v379, v62, v239, v386, v8, v238);
        goto LABEL_230;
      }

LABEL_231:

      if (!v8)
      {
        v8 = v377;
        v243 = MEMORY[0x1E69E7CC8];
        v119 = &_s10Foundation16AttributedStringV15_AttributeValueVSgMd;
        v26 = v215;
        v148 = v382;
        goto LABEL_236;
      }

      type metadata accessor for ICUNumberFormatterBase.FormatResult();
      swift_allocObject();
      v242 = v387;
      ICUNumberFormatterBase.FormatResult.init(formatter:value:)();
      v119 = &_s10Foundation16AttributedStringV15_AttributeValueVSgMd;
      v26 = v215;
      v148 = v382;
      if (v242)
      {

        *&v387 = 0;
LABEL_234:
        v8 = v377;
        v243 = MEMORY[0x1E69E7CC8];
LABEL_236:
        Double.description.getter();
        v62 = v244;
        goto LABEL_237;
      }

      *&v387 = 0;

      specialized _withResizingUCharBuffer(initialSize:_:)(32);
      v62 = v267;

      if (!v62)
      {
        goto LABEL_234;
      }

      v8 = v377;
      v243 = MEMORY[0x1E69E7CC8];
LABEL_237:
      outlined destroy of TermOfAddress?(v383, &_s10Foundation24FloatingPointFormatStyleVySdGMd);
      v389 = v243;
      v390 = MEMORY[0x1E69E7CD0];
      v401[3] = &type metadata for AttributeScopes.FoundationAttributes.DurationFieldAttribute.Field;
      v401[4] = lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.DurationFieldAttribute.Field and conformance AttributeScopes.FoundationAttributes.DurationFieldAttribute.Field();
      LOBYTE(v401[0]) = v381;
      v402 = v375;
      v403 = 1;
      v404 = 0;
      outlined init with copy of FloatingPointRoundingRule?(v401, &v396, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      if (!*(&v397 + 1))
      {
        outlined destroy of TermOfAddress?(&v396, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        v252 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000021, v385 | 0x8000000000000000);
        if (v253)
        {
          v254 = v252;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
            v313 = v243;
            v314 = static _DictionaryStorage.copy(original:)();
            v243 = v314;
            v315 = *(v313 + 16);
            if (v315)
            {
              v316 = (v314 + 64);
              v317 = ((1 << *(v243 + 32)) + 63) >> 6;
              if (v243 != v313 || v316 >= v313 + 8 * v317 + 64)
              {
                v318 = *(v313 + 16);
                memmove(v316, (v313 + 64), 8 * v317);
                v315 = v318;
              }

              v319 = 0;
              *(v243 + 16) = v315;
              v320 = 1 << *(v313 + 32);
              if (v320 < 64)
              {
                v321 = ~(-1 << v320);
              }

              else
              {
                v321 = -1;
              }

              v322 = v321 & *(v313 + 64);
              v323 = (v320 + 63) >> 6;
              v381 = v323;
              if (v322)
              {
                do
                {
                  v386 = (v322 - 1) & v322;
                  v324 = __clz(__rbit64(v322)) | (v319 << 6);
LABEL_297:
                  v327 = 16 * v324;
                  v328 = *(MEMORY[0x1E69E7CC8] + 56);
                  v329 = (*(MEMORY[0x1E69E7CC8] + 48) + 16 * v324);
                  v330 = v329[1];
                  countAndFlagsBits = *v329;
                  v331 = 72 * v324;
                  outlined init with copy of AttributedString._AttributeValue(v328 + 72 * v324, &v396);
                  v332 = (*(v243 + 48) + v327);
                  *v332 = countAndFlagsBits;
                  v332[1] = v330;
                  v333 = *(v243 + 56) + v331;
                  *v333 = v396;
                  v334 = v397;
                  v335 = v398;
                  v336 = v399;
                  *(v333 + 64) = v400;
                  *(v333 + 32) = v335;
                  *(v333 + 48) = v336;
                  *(v333 + 16) = v334;

                  v8 = v377;
                  v26 = v369;
                  v323 = v381;
                  v322 = v386;
                }

                while (v386);
              }

              while (1)
              {
                v325 = v319 + 1;
                if (__OFADD__(v319, 1))
                {
                  goto LABEL_341;
                }

                if (v325 >= v323)
                {
                  break;
                }

                v326 = *(MEMORY[0x1E69E7CC8] + 8 * v325 + 64);
                ++v319;
                if (v326)
                {
                  v386 = (v326 - 1) & v326;
                  v324 = __clz(__rbit64(v326)) | (v325 << 6);
                  v319 = v325;
                  goto LABEL_297;
                }
              }
            }
          }

          v255 = *(v243 + 56) + 72 * v254;
          v396 = *v255;
          v257 = *(v255 + 32);
          v256 = *(v255 + 48);
          v258 = *(v255 + 64);
          v397 = *(v255 + 16);
          v398 = v257;
          v400 = v258;
          v399 = v256;
          specialized _NativeDictionary._delete(at:)(v254, v243);
          v389 = v243;
        }

        else
        {
          v400 = 0;
          v398 = 0u;
          v399 = 0u;
          v396 = 0u;
          v397 = 0u;
        }

        goto LABEL_129;
      }

      v394[2] = v398;
      v394[3] = v399;
      v395 = v400;
      v394[0] = v396;
      v394[1] = v397;
      outlined init with copy of AttributedString._AttributeValue(v394, v392);
      v37 = swift_isUniquelyReferenced_nonNull_native();
      v388 = v243;
      v245 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000021, v385 | 0x8000000000000000);
      v247 = *(v243 + 16);
      v248 = (v246 & 1) == 0;
      v128 = __OFADD__(v247, v248);
      v249 = v247 + v248;
      if (v128)
      {
        goto LABEL_321;
      }

      v250 = v246;
      if (*(v243 + 24) < v249)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v249, v37);
        v243 = v388;
        v245 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000021, v385 | 0x8000000000000000);
        if ((v250 & 1) != (v251 & 1))
        {
          goto LABEL_348;
        }

LABEL_246:
        if (v250)
        {
          goto LABEL_247;
        }

        goto LABEL_127;
      }

      if (v37)
      {
        goto LABEL_246;
      }

      v379 = v245;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
      v269 = v243;
      v270 = static _DictionaryStorage.copy(original:)();
      v243 = v270;
      v271 = *(v269 + 16);
      if (v271)
      {
        v272 = (v270 + 64);
        v273 = ((1 << *(v243 + 32)) + 63) >> 6;
        if (v243 != v269 || v272 >= v269 + 8 * v273 + 64)
        {
          memmove(v272, (v269 + 64), 8 * v273);
        }

        v274 = 0;
        *(v243 + 16) = v271;
        v275 = 1 << *(v269 + 32);
        if (v275 < 64)
        {
          v276 = ~(-1 << v275);
        }

        else
        {
          v276 = -1;
        }

        v277 = v276 & *(v269 + 64);
        v278 = (v275 + 63) >> 6;
        v381 = v278;
        while (v277)
        {
          v386 = (v277 - 1) & v277;
          v279 = __clz(__rbit64(v277)) | (v274 << 6);
LABEL_265:
          v282 = 16 * v279;
          v283 = *(MEMORY[0x1E69E7CC8] + 56);
          v284 = (*(MEMORY[0x1E69E7CC8] + 48) + 16 * v279);
          v285 = v284[1];
          countAndFlagsBits = *v284;
          v286 = 72 * v279;
          outlined init with copy of AttributedString._AttributeValue(v283 + 72 * v279, &v396);
          v287 = (*(v243 + 48) + v282);
          *v287 = countAndFlagsBits;
          v287[1] = v285;
          v288 = *(v243 + 56) + v286;
          *v288 = v396;
          v289 = v397;
          v290 = v398;
          v291 = v399;
          *(v288 + 64) = v400;
          *(v288 + 32) = v290;
          *(v288 + 48) = v291;
          *(v288 + 16) = v289;

          v26 = v369;
          v278 = v381;
          v277 = v386;
        }

        while (1)
        {
          v280 = v274 + 1;
          if (__OFADD__(v274, 1))
          {
            goto LABEL_339;
          }

          if (v280 >= v278)
          {
            break;
          }

          v281 = *(MEMORY[0x1E69E7CC8] + 8 * v280 + 64);
          ++v274;
          if (v281)
          {
            v386 = (v281 - 1) & v281;
            v279 = __clz(__rbit64(v281)) | (v280 << 6);
            v274 = v280;
            goto LABEL_265;
          }
        }

        v8 = v377;
      }

      v245 = v379;
      if (v250)
      {
LABEL_247:
        v259 = *(v243 + 56) + 72 * v245;
        v261 = *(v259 + 16);
        v260 = *(v259 + 32);
        v262 = *(v259 + 48);
        v400 = *(v259 + 64);
        v399 = v262;
        v396 = *v259;
        v397 = v261;
        v398 = v260;
        v263 = *(v243 + 56) + 72 * v245;
        v264 = v392[1];
        v265 = v392[2];
        v266 = v392[3];
        *(v263 + 64) = v393;
        *(v263 + 32) = v265;
        *(v263 + 48) = v266;
        *(v263 + 16) = v264;
        *v263 = v392[0];
        outlined destroy of AttributedString._AttributeValue(v394);
        goto LABEL_128;
      }

LABEL_127:
      specialized _NativeDictionary._insert(at:key:value:)(v245, 0xD000000000000021, v385 | 0x8000000000000000, v392, v243);
      outlined destroy of AttributedString._AttributeValue(v394);
      v396 = 0u;
      v397 = 0u;
      v398 = 0u;
      v399 = 0u;
      v400 = 0;
LABEL_128:
      v389 = v243;
LABEL_129:
      AttributedString._AttributeStorage._attributeModified(_:old:new:)(0xD000000000000021, v385 | 0x8000000000000000, &v396, v401);
      outlined destroy of TermOfAddress?(v401, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      outlined destroy of TermOfAddress?(&v396, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      v150 = v389;
      v151 = v390;
      BigString.init(_:)();
      AttributedString.init(_:attributes:)(&v406, v150, v151, v401);
      v152 = v401[0];
      v119 = v378;
      v147 = v374;
      v149 = v380;
LABEL_130:
      v153 = v391;
      v154 = *(v391 + 40);
      v418 = *(v391 + 24);
      v419 = v154;
      v420 = *(v391 + 56);
      v155 = BigString.endIndex.getter();
      v156 = *(v153 + 16);
      v408 = v155;
      v409 = v157;
      v410 = v158;
      v411 = v159;
      v412 = v156;
      v413 = v155;
      v414 = v157;
      v415 = v158;
      v416 = v159;
      v417 = v156;
      specialized AttributedString.replaceSubrange<A, B>(_:with:)(&v408, v152);

LABEL_131:
      if (++v148 == v147)
      {
        goto LABEL_302;
      }
    }

    v175 = v361;
    outlined init with copy of Duration.TimeFormatStyle.Pattern.Fields(v119, v361, type metadata accessor for Duration.TimeFormatStyle.Pattern);
    outlined init with take of Duration.TimeFormatStyle.Pattern(v175, v365, type metadata accessor for Duration.TimeFormatStyle.Pattern.Fields);
    v176 = swift_getEnumCaseMultiPayload();
    if (v176)
    {
      if (v176 != 1)
      {
        v199 = v119 + *(v372 + 20);
        if (v199[8] != 1)
        {
          v200 = *v199;
          if (v162 <= v200)
          {
            v162 = v200;
          }
        }

        if (v162 >= 0x3E7)
        {
          v201 = 999;
        }

        else
        {
          v201 = v162;
        }

        v202 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi23fractionalSecondsLength_s25FloatingPointRoundingRuleO015roundFractionalB0tMd) + 48);
        LOBYTE(v401[0]) = 0;
        v169 = 1;
        LOBYTE(v396) = 1;
        LOBYTE(v394[0]) = 0;
        LOBYTE(v392[0]) = 0;
        v203 = v26;
        v204 = v358;
        outlined init with take of FloatingPointFormatStyle<Double>(v203, v358);
        v205 = v204 + *(v8 + 36);
        *(v205 + 16) = v201;
        *(v205 + 24) = 0;
        *(v205 + 32) = 0;
        *(v205 + 40) = 1;
        *(v205 + 48) = 0;
        *(v205 + 56) = 0;
        *(v205 + 64) = 0;
        *(v205 + 72) = 0x80;
        v206 = v204;
        v26 = v369;
        outlined init with take of FloatingPointFormatStyle<Double>(v206, v369);
        v366((v365 + v202), v373);
        LODWORD(v381) = 3;
        if ((v371 & 1) == 0)
        {
          goto LABEL_150;
        }

        v172 = 256;
        goto LABEL_167;
      }

      if (v162 >= 0x3E7)
      {
        v177 = 999;
      }

      else
      {
        v177 = v162;
      }

      v178 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi23fractionalSecondsLength_s25FloatingPointRoundingRuleO015roundFractionalB0tMd) + 48);
      LOBYTE(v401[0]) = 0;
      v169 = 1;
      LOBYTE(v396) = 1;
      LOBYTE(v394[0]) = 0;
      LOBYTE(v392[0]) = 0;
      v179 = v26;
      v180 = v357;
      outlined init with take of FloatingPointFormatStyle<Double>(v179, v357);
      v181 = v180 + *(v8 + 36);
      *(v181 + 16) = v177;
      *(v181 + 24) = 0;
      *(v181 + 32) = 0;
      *(v181 + 40) = 1;
      *(v181 + 48) = 0;
      *(v181 + 56) = 0;
      *(v181 + 64) = 0;
      *(v181 + 72) = 0x80;
      v182 = v180;
      v26 = v369;
      outlined init with take of FloatingPointFormatStyle<Double>(v182, v369);
      v183 = v365 + v178;
    }

    else
    {
      if (v162 >= 0x3E7)
      {
        v184 = 999;
      }

      else
      {
        v184 = v162;
      }

      LOBYTE(v401[0]) = 0;
      v169 = 1;
      LOBYTE(v396) = 1;
      LOBYTE(v394[0]) = 0;
      LOBYTE(v392[0]) = 0;
      v185 = v356;
      outlined init with take of FloatingPointFormatStyle<Double>(v26, v356);
      v186 = v185 + *(v8 + 36);
      *(v186 + 16) = v184;
      *(v186 + 24) = 0;
      *(v186 + 32) = 0;
      *(v186 + 40) = 1;
      *(v186 + 48) = 0;
      *(v186 + 56) = 0;
      *(v186 + 64) = 0;
      *(v186 + 72) = 0x80;
      outlined init with take of FloatingPointFormatStyle<Double>(v185, v26);
      v183 = v365;
    }

    v366(v183, v373);
    v172 = 256;
    LODWORD(v381) = 3;
LABEL_167:
    v173 = 0x10000;
    goto LABEL_205;
  }

LABEL_302:

  v337 = v360;
  outlined destroy of TermOfAddress?(v26, &_s10Foundation24FloatingPointFormatStyleVySdGMd);
  result = (v366)(v364, v373);
  *v337 = v391;
  return result;
}

uint64_t AttributedString.CharacterView.subscript.getter@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v4 = *(result + 40);
  if (*result >> 10 >= v2[1] >> 10 && v2[5] >> 10 >= v4 >> 10)
  {
    v6 = *v2;
    v7 = *(result + 64);
    v8 = *(result + 24);
    v20[14] = *result;
    v21 = *(result + 8);
    v22 = v8;
    v23 = v4;
    v24 = *(result + 48);
    v25 = v7;
    v9 = *(v6 + 24);
    v10 = *(v6 + 56);
    v26[1] = *(v6 + 40);
    v26[2] = v10;
    v26[0] = v9;

    outlined init with copy of BigString(v26, v20);
    BigString.subscript.getter();
    outlined destroy of BigString(v26);
    result = outlined destroy of BigSubstring(v20);
    v11 = v20[6];
    v12 = v20[7];
    v13 = v20[8];
    v14 = v20[9];
    v15 = v20[10];
    v16 = v20[11];
    v17 = v20[12];
    v18 = v20[13];
    v19 = *(v6 + 16);
    a2[10] = v6;
    a2[11] = v11;
    a2[12] = v12;
    a2[13] = v13;
    a2[14] = v14;
    a2[15] = v15;
    a2[16] = v16;
    a2[17] = v17;
    a2[18] = v18;
    a2[19] = 0;
    *a2 = v11;
    a2[1] = v12;
    a2[2] = v13;
    a2[3] = v14;
    a2[4] = v19;
    a2[5] = v15;
    a2[6] = v16;
    a2[7] = v17;
    a2[8] = v18;
    a2[9] = v19;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized Collection.subscript.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 1);
  v3 = *(v1 + 3);
  v4 = *(v1 + 5);
  v5 = *(v1 + 7);
  v6 = *v1;
  v7 = *(v1 + 1);
  v8 = *(v1 + 3);
  v19 = *(v1 + 2);
  v20 = v8;
  v21 = *(v1 + 4);
  v17 = *v1;
  v18 = v7;
  v9 = vshrq_n_u64(vzip1q_s64(v4, v2), 0xAuLL);
  if (vmovn_s64(vcgtq_u64(vdupq_laneq_s64(v9, 1), v9)).u8[0])
  {
    __break(1u);
  }

  else
  {
    v10 = *(v6 + 16);
    v12[0] = v2;
    v12[1] = v3;
    v13 = v10;
    v14 = v4;
    v15 = v5;
    v16 = v10;
    return AttributedString.CharacterView.subscript.getter(v12, a1);
  }

  return result;
}

uint64_t Duration.TimeFormatStyle.format(_:)(char *a1, uint64_t a2)
{
  Duration.TimeFormatStyle.Attributed.format(_:)(a1, a2, &v17);
  v2 = v17;
  v3 = *(v17 + 40);
  v20 = *(v17 + 24);
  v21 = v3;
  v22 = *(v17 + 56);
  v4 = BigString.startIndex.getter();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = BigString.endIndex.getter();
  v19[0] = v2;
  v19[1] = v4;
  v19[2] = v6;
  v19[3] = v8;
  v19[4] = v10;
  v19[5] = v11;
  v19[6] = v12;
  v19[7] = v13;
  v19[8] = v14;
  v19[9] = 0;
  specialized Collection.subscript.getter(v16);
  outlined destroy of AttributedString.CharacterView(v19);
  v23[6] = v16[6];
  v23[7] = v16[7];
  v23[8] = v16[8];
  v23[9] = v16[9];
  v23[2] = v16[2];
  v23[3] = v16[3];
  v23[4] = v16[4];
  v23[5] = v16[5];
  v23[0] = v16[0];
  v23[1] = v16[1];
  Slice<>._characters.getter(v18);
  outlined destroy of TermOfAddress?(v23, &_ss5SliceVy10Foundation16AttributedStringV13CharacterViewVGMd);
  return MEMORY[0x1865CAF70](v18);
}

double Slice<>._characters.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = v1[9];
  v26[3] = v1[8];
  v26[4] = v3;
  v4 = v1[7];
  v26[1] = v1[6];
  v26[2] = v4;
  v26[0] = v1[5];
  v5 = v1[1];
  v21 = *v1;
  v22 = v5;
  v6 = *(v1 + 56);
  v23 = *(v1 + 40);
  v24 = v6;
  v7 = *&v26[0];
  v8 = *(*&v26[0] + 40);
  v25[0] = *(*&v26[0] + 24);
  v25[1] = v8;
  v25[2] = *(*&v26[0] + 56);
  outlined init with copy of AttributedString.CharacterView(v26, v16);
  outlined init with copy of AttributedString.CharacterView(v26, v16);
  outlined init with copy of BigString(v25, v16);
  BigString.subscript.getter();
  outlined destroy of AttributedString.CharacterView(v26);
  outlined destroy of BigString(v25);
  outlined destroy of BigSubstring(v16);
  v31 = v20;
  v30 = v19;
  v29 = v18;
  v28 = v17;
  v27 = v7;
  v32 = 0;
  v9 = *(v7 + 56);
  v10 = *(v7 + 64);
  v14 = *(v7 + 24);
  v15 = *(v7 + 40);
  swift_unknownObjectRetain();
  outlined destroy of AttributedString.CharacterView(&v27);
  *a1 = v14;
  *(a1 + 16) = v15;
  *(a1 + 32) = v9;
  *(a1 + 40) = v10;
  v11 = v29;
  *(a1 + 48) = v28;
  *(a1 + 64) = v11;
  result = *&v30;
  v13 = v31;
  *(a1 + 80) = v30;
  *(a1 + 96) = v13;
  return result;
}

uint64_t outlined destroy of Duration.TimeFormatStyle(uint64_t a1)
{
  v2 = type metadata accessor for Duration.TimeFormatStyle(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::String __swiftcall Duration.formatted()()
{
  v2 = v1;
  v3 = v0;
  v4 = type metadata accessor for Duration.TimeFormatStyle(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi23fractionalSecondsLength_s25FloatingPointRoundingRuleO015roundFractionalB0tMd) + 48);
  *v6 = 0;
  v8 = *MEMORY[0x1E69E7030];
  v9 = type metadata accessor for FloatingPointRoundingRule();
  (*(*(v9 - 8) + 104))(&v6[v7], v8, v9);
  type metadata accessor for Duration.TimeFormatStyle.Pattern.Fields(0);
  swift_storeEnumTagMultiPayload();
  v10 = &v6[*(type metadata accessor for Duration.TimeFormatStyle.Pattern(0) + 20)];
  *v10 = 0;
  v10[8] = 1;
  type metadata accessor for _LocaleAutoupdating();
  inited = swift_initStaticObject();
  v12 = lazy protocol witness table accessor for type _LocaleAutoupdating and conformance _LocaleAutoupdating();
  v13 = type metadata accessor for Duration.TimeFormatStyle.Attributed(0);
  v6[*(v13 + 20)] = 0;
  v14 = &v6[*(v13 + 24)];
  *v14 = inited;
  v14[1] = v12;
  v15 = Duration.TimeFormatStyle.format(_:)(v3, v2);
  v17 = v16;
  outlined destroy of Duration.TimeFormatStyle(v6);
  v18 = v15;
  v19 = v17;
  result._object = v19;
  result._countAndFlagsBits = v18;
  return result;
}

uint64_t PredicateExpressions.NotEqual<>.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X7>, uint64_t a5@<X8>)
{
  v34 = a4;
  v36 = a3;
  v32 = a5;
  v31 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v35 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = v13;
  v37[0] = v13;
  v37[1] = v14;
  v37[2] = v15;
  v38 = v16;
  v39 = v17;
  v18 = type metadata accessor for PredicateExpressions.NotEqual();
  v30 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v26 - v19;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v5)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v28 = v20;
  v29 = a1;
  v27 = v18;
  __swift_mutable_project_boxed_opaque_existential_1(v37, v38);
  v21 = v35;
  dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
  v22 = v28;
  (*(v33 + 32))(v28, v21, v40);
  __swift_mutable_project_boxed_opaque_existential_1(v37, v38);
  dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
  v23 = v27;
  (*(v31 + 32))(&v22[*(v27 + 60)], v9, a2);
  __swift_destroy_boxed_opaque_existential_1(v37);
  v24 = v30;
  (*(v30 + 16))(v32, v22, v23);
  __swift_destroy_boxed_opaque_existential_1(v29);
  return (*(v24 + 8))(v22, v23);
}

uint64_t PredicateExpressions.NotEqual.evaluate(_:)(uint64_t *a1, void *a2)
{
  v5 = a2[4];
  v6 = a2[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v21 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v20 - v12;
  v14 = *a1;
  v22 = v14;
  (*(v5 + 16))(&v22, v6, v5, v11);
  if (!v2)
  {
    v16 = v21;
    v22 = v14;
    (*(a2[5] + 16))(&v22, a2[3]);
    v18 = dispatch thunk of static Equatable.== infix(_:_:)();
    v19 = *(v16 + 8);
    v19(v9, AssociatedTypeWitness);
    v19(v13, AssociatedTypeWitness);
    v15 = v18 ^ 1;
  }

  return v15 & 1;
}

uint64_t static PredicateExpressions.build_NilCoalesce<A, B>(lhs:rhs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 16))(a5, a1);
  v8 = type metadata accessor for PredicateExpressions.NilCoalesce();
  return (*(*(a4 - 8) + 16))(a5 + *(v8 + 52), a2, a4);
}

__n128 String.LocalizationValue.init(stringInterpolation:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  v3 = a1[1].n128_u64[0];
  *a2 = *a1;
  a2[1].n128_u64[0] = v3;
  return result;
}

uint64_t _sSS10FoundationE17LocalizationValueV14FormatArgumentV7resolve10attributed4with9includings7CVarArg_p6vararg_AE15_AttributeFixupOSg11attrStrInfotSb_AA6LocaleVxmtAA0M5ScopeRzlFAA0M6ScopesO0A10AttributesV_Tt3B5(char *a1, uint64_t a2, int a3, uint64_t i, uint64_t a5)
{
  v393 = a5;
  v10 = &v411;
  v448 = *MEMORY[0x1E69E9840];
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  *(v11 + 32) = -2;
  outlined init with copy of String.LocalizationValue.FormatArgument.Storage(v5, &v421);
  if (v426 <= 2u)
  {
    if (!v426)
    {
      outlined init with take of Any(&v421, &v411);
      outlined init with copy of Any(&v411, &v435);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8Sendable_pMd);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7CVarArg_pMd);
      swift_dynamicCast();
      getter of attributeFixup #1 in String.LocalizationValue.FormatArgument.resolve<A>(attributed:with:including:)(v11, a3 & 1, a2);
      __swift_destroy_boxed_opaque_existential_1(&v411);
    }

    if (v426 != 1)
    {
      v412[1] = v423;
      v413 = v424;
      v414[0] = *v425;
      v414[1] = *&v425[16];
      v411 = v421;
      v412[0] = v422;
      *&v435 = i;
      *(&v435 + 1) = v393;
      v102 = (v421)(&v435);
      v104 = v103;
      *(a1 + 3) = MEMORY[0x1E69E6158];
      *(a1 + 4) = lazy protocol witness table accessor for type String and conformance String();
      *a1 = v102;
      *(a1 + 1) = v104;
      getter of attributeFixup #1 in String.LocalizationValue.FormatArgument.resolve<A>(attributed:with:including:)(v11, a3 & 1, a2);
      outlined destroy of String.LocalizationValue.FormatArgument.Storage.StringFormatWrapper(&v411);
    }

    v12 = v421;
    if (a3)
    {
      v13 = *(&v421 + 1);

      v15 = _sSo18NSAttributedStringC10FoundationE_9includingAbC010AttributedB0V_xmtKcAC14AttributeScopeRzlufCAC0F6ScopesO0C10AttributesV_Tt0t1B5(v14);
      *(a1 + 3) = type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSAttributedString);
      *(a1 + 4) = lazy protocol witness table accessor for type NSNumber and conformance NSObject(&lazy protocol witness table cache variable for type NSAttributedString and conformance NSObject, &lazy cache variable for type metadata for NSAttributedString);
      *a1 = v15;

      *a2 = v12;
      *(a2 + 8) = v13;
      *(a2 + 16) = 0;
      return result;
    }

    v110 = *(v421 + 40);
    v411 = *(v421 + 24);
    v412[0] = v110;
    v412[1] = *(v421 + 56);
    lazy protocol witness table accessor for type BigString and conformance BigString();
    lazy protocol witness table accessor for type BigString and conformance BigString();
    swift_unknownObjectRetain();
    v111 = String.init<A>(_:)();
    v113 = v112;
    *(a1 + 3) = MEMORY[0x1E69E6158];
    *(a1 + 4) = lazy protocol witness table accessor for type String and conformance String();
    *a1 = v111;
    *(a1 + 1) = v113;
LABEL_120:

    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = -1;
    return result;
  }

  v387 = a3;
  v384 = a2;
  v385 = v11;
  v386 = a1;
  v389 = i;
  if (v426 > 4u)
  {
    if (v426 != 5)
    {
      goto LABEL_398;
    }

    v20 = v421;
    v382 = BYTE8(v421);
    v21 = BYTE9(v421);
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    v22 = *(v20 + 16);
    v23 = v393;
    if (!v22)
    {

      v121 = 0;
      *&v395 = MEMORY[0x1E69E7CC0];
      if ((v387 & 1) == 0)
      {
        goto LABEL_129;
      }

      goto LABEL_124;
    }

    v381 = v21;
    v404 = MEMORY[0x1E69E7CC0];
    v24 = &v404;
    v391 = v22;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v22, 0);
    if (!*(v20 + 16))
    {
LABEL_307:
      __break(1u);
LABEL_308:
      __break(1u);
LABEL_309:
      __break(1u);
      goto LABEL_310;
    }

    v25 = 0;
    v26 = 0;
    v24 = v404;
    v392 = v20 + 32;
    v27 = 1;
    v390 = v20;
    while (1)
    {
      *&v395 = v24;
      v28 = v392 + 104 * v25;
      *&v394 = v27;
      v29 = *v28;
      v30 = *(v28 + 32);
      v416[0] = *(v28 + 16);
      v416[1] = v30;
      v415 = v29;
      v31 = *(v28 + 48);
      v32 = *(v28 + 64);
      v33 = *(v28 + 80);
      v420 = *(v28 + 96);
      v418 = v32;
      v419 = v33;
      v417 = v31;
      v430 = *v28;
      v431 = *(v28 + 16);
      v432 = *(v28 + 32);
      v433 = *(v28 + 48);
      v445 = *(v28 + 72);
      v446 = *(v28 + 88);
      outlined init with copy of LocalizedStringResource(&v415, &v411);
      swift_unknownObjectRetain();
      outlined init with copy of LocalizedStringResource(&v415, &v411);
      swift_unknownObjectRelease();
      v435 = v430;
      v436 = v431;
      v437 = v432;
      v441 = v445;
      v438 = v433;
      v439 = i;
      v440 = v23;
      v442 = v446;
      v402 = 1;
      v405 = 0uLL;
      LOWORD(v406) = 256;
      *(&v406 + 1) = 0;
      *&v407 = 0;
      BYTE8(v407) = 0;
      outlined init with copy of String.LocalizationOptions(&v405, &v411);
      outlined init with copy of LocalizedStringResource(&v435, &v411);
      a1 = specialized LocalizedStringResource._withExtensionForBundle<A>(_:)(&v435, &v405, &v435);
      v35 = v34;
      outlined destroy of LocalizedStringResource(&v435);
      outlined destroy of String.LocalizationOptions(&v405);
      v399 = v35;
      if (v35)
      {
        v396 = v26;
        outlined destroy of LocalizedStringResource(&v415);
        outlined destroy of String.LocalizationOptions(&v405);
LABEL_106:
        v24 = v395;
        goto LABEL_107;
      }

      v443 = v436;
      v36 = v437;
      v444 = v437;
      v38 = v439;
      v37 = v440;
      v39 = MEMORY[0x1E69E7CC0];
      if (v405)
      {
        v40 = v405;
      }

      else
      {
        v40 = MEMORY[0x1E69E7CC0];
      }

      v388 = *(&v443 + 1);
      v41 = v443;
      v427 = v40;
      swift_unknownObjectRetain_n();
      outlined init with copy of String.LocalizationValue(&v443, &v411);
      v399 = v36;

      v400 = v37;
      v42 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySS10FoundationE17LocalizationValueV14FormatArgumentVG_AJs5NeverOTg506_sSS10d3E17ef43V25argumentsWithReplacements_6localeSayAC14gH40VGSays7CVarArg_pGSg_AA6LocaleVtFA2GXEfU_s16IndexingIteratorVySays0tU0_pGGAF0X0VTf1cn_nTf4nng_n(v41, &v427, v38, v37);

      v401 = v38;
      swift_unknownObjectRelease();
      v43 = *(v42 + 16);
      v396 = v26;
      if (v43)
      {
        goto LABEL_24;
      }

      if ((BYTE1(v406) & 1) == 0)
      {
        break;
      }

      swift_unknownObjectRelease();
      outlined destroy of String.LocalizationOptions(&v405);
      outlined destroy of LocalizedStringResource(&v415);

      outlined destroy of String.LocalizationValue(&v443);
      a1 = v388;
      i = v389;
      v24 = v395;
      v23 = v393;
      v10 = &v411;
LABEL_107:
      v411 = v430;
      v412[0] = v431;
      v412[1] = v432;
      *&v413 = v433;
      *(&v413 + 1) = i;
      *&v414[0] = v23;
      *(v414 + 8) = v445;
      *(&v414[1] + 8) = v446;
      outlined destroy of LocalizedStringResource(&v411);
      v404 = v24;
      v99 = *(v24 + 16);
      v98 = *(v24 + 24);
      if (v99 >= v98 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v98 > 1), v99 + 1, 1);
        v24 = v404;
      }

      *(v24 + 16) = v99 + 1;
      v100 = (v24 + 16 * v99);
      v101 = v399;
      *(v100 + 4) = a1;
      *(v100 + 5) = v101;
      v25 = v394;
      if (v394 == v391)
      {
        goto LABEL_128;
      }

      v27 = v394 + 1;
      v26 = v396;
      if (v394 >= *(v390 + 16))
      {
        goto LABEL_307;
      }
    }

    a1 = v388;
    String._bridgeToObjectiveCImpl()();
    v74 = _CFStringGetFormatSpecifierConfiguration();
    swift_unknownObjectRelease();
    v23 = v393;
    v10 = &v411;
    if (!v74)
    {
      swift_unknownObjectRelease();
      outlined destroy of String.LocalizationOptions(&v405);
      outlined destroy of LocalizedStringResource(&v415);

      outlined destroy of String.LocalizationValue(&v443);
      i = v389;
      goto LABEL_106;
    }

    v43 = *(v42 + 16);
    if (v43)
    {
LABEL_24:
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v43, 0);
      v23 = v39;
      v44 = v42 + 32;
      do
      {
        outlined init with copy of String.LocalizationValue.FormatArgument(v44, &v411);
        _sSS10FoundationE17LocalizationValueV14FormatArgumentV7resolve10attributed4with9includings7CVarArg_p6vararg_AE15_AttributeFixupOSg11attrStrInfotSb_AA6LocaleVxmtAA0M5ScopeRzlFAA0M6ScopesO0A10AttributesV_Tt3B5(&v427, v409, 0, v401, v400);
        outlined destroy of String.LocalizationValue.FormatArgument(&v411);
        outlined consume of String.LocalizationValue.FormatArgument._AttributeFixup?(v409[0], v409[1], v410);
        v403 = v23;
        v46 = *(v23 + 16);
        v45 = *(v23 + 24);
        if (v46 >= v45 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v45 > 1), v46 + 1, 1);
          v23 = v403;
        }

        *(v23 + 16) = v46 + 1;
        outlined init with take of Equatable(&v427, v23 + 40 * v46 + 32);
        v44 += 112;
        --v43;
      }

      while (v43);
    }

    else
    {

      v23 = v39;
    }

    type metadata accessor for __VaListBuilder();
    v47 = swift_allocObject();
    v47[2] = 8;
    v47[3] = 0;
    v48 = v47 + 3;
    v47[4] = 0;
    v47[5] = 0;
    v18 = *(v23 + 16);
    if (v18)
    {
      a1 = (v23 + 32);
      outlined init with copy of String.LocalizationOptions(&v405, &v411);
      swift_unknownObjectRetain();

      v49 = 0;
      v397 = v23 + 32;
      v398 = v23;
      while (1)
      {
        v50 = &a1[40 * v49];
        v10 = *(v50 + 4);
        v24 = __swift_project_boxed_opaque_existential_1(v50, *(v50 + 3));
        v51 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
        i = *v48;
        v52 = *(v51 + 16);
        v53 = __OFADD__(*v48, v52);
        v54 = *v48 + v52;
        if (v53)
        {
          goto LABEL_288;
        }

        v24 = v47[4];
        if (v24 >= v54)
        {
          goto LABEL_46;
        }

        if (v24 + 0x4000000000000000 < 0)
        {
          goto LABEL_308;
        }

        v10 = v47[5];
        if (2 * v24 > v54)
        {
          v54 = 2 * v24;
        }

        v47[4] = v54;
        if ((v54 - 0x1000000000000000) >> 61 != 7)
        {
          goto LABEL_309;
        }

        v55 = v18;
        v56 = v51;
        v57 = swift_slowAlloc();
        v58 = v57;
        v47[5] = v57;
        if (v10)
        {
          break;
        }

        v51 = v56;
        v18 = v55;
        a1 = v397;
        v23 = v398;
        if (!v58)
        {
LABEL_339:
          __break(1u);
          goto LABEL_340;
        }

LABEL_47:
        v60 = *(v51 + 16);
        if (v60)
        {
          v61 = (v51 + 32);
          v62 = *v48;
          while (1)
          {
            v63 = *v61++;
            v58[v62] = v63;
            v62 = *v48 + 1;
            if (__OFADD__(*v48, 1))
            {
              break;
            }

            *v48 = v62;
            if (!--v60)
            {
              goto LABEL_31;
            }
          }

          __break(1u);
LABEL_128:
          *&v395 = v24;

          v21 = v381;
          v121 = v396;
          a1 = v386;
          if ((v387 & 1) == 0)
          {
LABEL_129:
            v396 = v121;
            *(a1 + 3) = MEMORY[0x1E69E6158];
            *(a1 + 4) = lazy protocol witness table accessor for type String and conformance String();
            ObjectType = swift_getObjectType();
            v129 = (*(v23 + 64))(ObjectType, v23);
            a1 = v129;
            i = v130;
            if (one-time initialization token for cache != -1)
            {
              v129 = swift_once();
            }

            v19 = &v380;
            v131 = qword_1EA822138;
            v400 = static ICUListFormatter.cache;
            *&v411 = a1;
            *(&v411 + 1) = i;
            *&v412[0] = v21;
            isUniquelyReferenced_nonNull_native = v382;
            *(v10 + 24) = v382;
            MEMORY[0x1EEE9AC00](v129);
            os_unfair_lock_lock(v131 + 6);
            v126 = v21;
            partial apply for specialized closure #1 in FormatterCache.formatter(for:creator:)((v131 + 16), &v415);
            os_unfair_lock_unlock(v131 + 6);
            v18 = *(v10 + 112);
            if (v18)
            {
              goto LABEL_383;
            }

            v399 = v131;
            v401 = a1;
            v381 = v126;
            type metadata accessor for ICUListFormatter();
            v168 = swift_allocObject();
            *(v10 + 112) = 0;
            if (isUniquelyReferenced_nonNull_native > 2)
            {
              goto LABEL_332;
            }

            v18 = v168;
            v19 = _s10Foundation16ICUListFormatterC9formatter3forAcA15ListFormatStyleVyxq_G_tAA0gH0RzSTR_7ElementQy_0G5InputRtzSS0G6OutputRtzr0_lFZAA06StringH0V_SaySSGTt0B5Tv0_r[isUniquelyReferenced_nonNull_native + 8];
            v131 = i;
            String.utf8CString.getter();
            v169 = ulistfmt_openForType();

            a1 = v399;
            if (!v169)
            {
              goto LABEL_395;
            }

            v126 = v400;
            if (v415 > 0)
            {
              goto LABEL_334;
            }

            v18[2] = v169;
            os_unfair_lock_lock(a1 + 6);
            v19 = *(a1 + 2);
            if (v126 >= v19[2])
            {
            }

            else
            {
              *(a1 + 2) = MEMORY[0x1E69E7CC8];
            }

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&v415 = *(a1 + 2);
            v126 = v415;
            v251 = specialized __RawDictionaryStorage.find<A>(_:)(v401, i, v381, v382);
            v253 = v126[2];
            v254 = (v252 & 1) == 0;
            v53 = __OFADD__(v253, v254);
            v255 = v253 + v254;
            if (v53)
            {
              goto LABEL_336;
            }

            v256 = v252;
            if (v126[3] >= v255)
            {
              if (isUniquelyReferenced_nonNull_native)
              {
                v257 = v126;
                v23 = v382;
                v258 = v401;
                goto LABEL_255;
              }

              v397 = v251;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation16ICUListFormatterC9SignatureVAEGMd);
              v335 = static _DictionaryStorage.copy(original:)();
              v257 = v335;
              if (v126[2])
              {
                v336 = (v335 + 64);
                v337 = 1 << *(v257 + 32);
                v400 = v126 + 8;
                v338 = (v337 + 63) >> 6;
                if (v257 != v126 || v336 >= &v400[v338])
                {
                  memmove(v336, v400, 8 * v338);
                }

                v339 = 0;
                v257[2] = v126[2];
                v340 = 1 << *(v126 + 32);
                v341 = -1;
                if (v340 < 64)
                {
                  v341 = ~(-1 << v340);
                }

                v398 = v341 & v126[8];
                v342 = (v340 + 63) >> 6;
                if (!v398)
                {
                  goto LABEL_363;
                }

                while (1)
                {
                  v343 = __clz(__rbit64(v398));
                  for (v398 &= v398 - 1; ; v398 = (v345 - 1) & v345)
                  {
                    v346 = v343 | (v339 << 6);
                    v347 = v126[6] + 32 * v346;
                    v348 = *(v347 + 8);
                    v349 = *(v126[7] + 8 * v346);
                    v350 = v257[6] + 32 * v346;
                    v351 = *(v347 + 16);
                    *v350 = *v347;
                    *(v350 + 8) = v348;
                    *(v350 + 16) = v351;
                    *(v257[7] + 8 * v346) = v349;

                    if (v398)
                    {
                      break;
                    }

LABEL_363:
                    v344 = v339;
                    do
                    {
                      v339 = v344 + 1;
                      if (__OFADD__(v344, 1))
                      {
                        goto LABEL_391;
                      }

                      if (v339 >= v342)
                      {
                        goto LABEL_380;
                      }

                      v345 = v400[v339];
                      ++v344;
                    }

                    while (!v345);
                    v343 = __clz(__rbit64(v345));
                  }
                }
              }

LABEL_380:

              v251 = v397;
              v23 = v382;
              v131 = i;
              v258 = v401;
              a1 = v399;
              if ((v256 & 1) == 0)
              {
                goto LABEL_381;
              }

LABEL_256:
              *(v257[7] + 8 * v251) = v18;
            }

            else
            {
              specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v255, isUniquelyReferenced_nonNull_native);
              v257 = v415;
              v258 = v401;
              v23 = v382;
              v251 = specialized __RawDictionaryStorage.find<A>(_:)(v401, v131, v381, v382);
              if ((v256 & 1) != (v259 & 1))
              {
                goto LABEL_248;
              }

LABEL_255:
              if (v256)
              {
                goto LABEL_256;
              }

LABEL_381:
              specialized _NativeDictionary._insert(at:key:value:)(v251, v258, v131, v381, v23, v18, v257);
            }

            *(a1 + 2) = v257;
            os_unfair_lock_unlock(a1 + 6);

LABEL_383:

            v369 = *(v395 + 16);
            *&v411 = MEMORY[0x1E69E7CC0];
            v370 = v395;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v369, 0);
            v371._rawValue = v411;
            if (v369)
            {
              v372 = (v370 + 40);
              do
              {
                v374 = *(v372 - 1);
                v373 = *v372;
                *&v411 = v371;
                v376 = *(v371._rawValue + 2);
                v375 = *(v371._rawValue + 3);

                if (v376 >= v375 >> 1)
                {
                  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v375 > 1), v376 + 1, 1);
                  v371._rawValue = v411;
                }

                *(v371._rawValue + 2) = v376 + 1;
                v377 = v371._rawValue + 16 * v376;
                *(v377 + 4) = v374;
                *(v377 + 5) = v373;
                v372 += 2;
                --v369;
              }

              while (v369);
            }

            v378 = ICUListFormatter.format(strings:)(v371);

            *v386 = v378;

            result = swift_unknownObjectRelease();
            v379 = v384;
            *v384 = 0;
            v379[1] = 0;
            *(v379 + 16) = -1;
            return result;
          }

LABEL_124:
          v396 = v121;
          v122 = swift_getObjectType();
          v123 = (*(v23 + 64))(v122, v23);
          i = v123;
          a1 = v124;
          if (one-time initialization token for cache != -1)
          {
            goto LABEL_330;
          }

          goto LABEL_125;
        }

LABEL_31:

        if (++v49 == v18)
        {
          goto LABEL_57;
        }
      }

      if (v57 != v10 || v57 >= v10 + 8 * i)
      {
        memmove(v57, v10, 8 * i);
      }

      v24 = v47;
      __VaListBuilder.deallocStorage(wordCount:storage:)();
      v51 = v56;
      v18 = v55;
      a1 = v397;
      v23 = v398;
LABEL_46:
      v58 = v47[5];
      if (!v58)
      {
        goto LABEL_339;
      }

      goto LABEL_47;
    }

    outlined init with copy of String.LocalizationOptions(&v405, &v411);
    swift_unknownObjectRetain();

LABEL_57:
    v64 = __VaListBuilder.va_list()();
    v65 = String._bridgeToObjectiveCImpl()();
    v66 = swift_getObjectType();
    v67 = (v400[61])(v66);
    v68 = [objc_allocWithZone(_NSStringFormattingOptions) init];
    if (!v68)
    {
      __break(1u);
      goto LABEL_390;
    }

    v69 = v68;
    if (BYTE1(v406))
    {
      [v68 setPluralizationNumber_];
    }

    else
    {
      v70 = *(&v405 + 1);
      v71 = v406;
      v72 = objc_allocWithZone(NSNumber);
      if (v71)
      {
        v73 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v73 = v70;
      }

      v75 = [v72 initWithInteger_];
      [v69 setPluralizationNumber_];
    }

    v76 = [objc_opt_self() _stringWithFormat_locale_options_arguments_];

    swift_unknownObjectRelease();
    isTaggedPointer = _objc_isTaggedPointer(v76);
    v78 = v76;
    v79 = v78;
    v383 = v47;
    if (isTaggedPointer)
    {
      TaggedPointerTag = _objc_getTaggedPointerTag(v78);
      switch(TaggedPointerTag)
      {
        case 0:
          LOWORD(v409[0]) = 0;
          _CFIndirectTaggedPointerStringGetContents();
          v90 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
          i = v389;
          if (!v91)
          {
            [v79 mutableCopy];
            _bridgeAnyObjectToAny(_:)();

            swift_unknownObjectRelease();
            swift_dynamicCast();
            v94 = *(&v427 + 1);
            a1 = v427;

            outlined destroy of String.LocalizationOptions(&v405);

            swift_unknownObjectRelease();
            outlined destroy of LocalizedStringResource(&v415);
            swift_unknownObjectRelease();

            outlined destroy of String.LocalizationOptions(&v405);

            outlined destroy of String.LocalizationValue(&v443);
            v399 = v94;
            v10 = &v411;
LABEL_105:
            v23 = v393;
            goto LABEL_106;
          }

          a1 = v90;
          v82 = v91;

          v10 = &v411;
LABEL_104:

          outlined destroy of String.LocalizationOptions(&v405);

          swift_unknownObjectRelease();
          outlined destroy of LocalizedStringResource(&v415);
          swift_unknownObjectRelease();

          outlined destroy of String.LocalizationOptions(&v405);

          outlined destroy of String.LocalizationValue(&v443);
          v399 = v82;
          goto LABEL_105;
        case 0x16:
          v87 = [v79 UTF8String];
          i = v389;
          if (!v87)
          {
            goto LABEL_393;
          }

          v88 = String.init(utf8String:)(v87);
          v10 = &v411;
          if (!v89)
          {
            goto LABEL_392;
          }

          a1 = v88;
          v82 = v89;

          goto LABEL_103;
        case 2:
          MEMORY[0x1EEE9AC00](TaggedPointerTag);
          a1 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v82 = v81;

          i = v389;
          v10 = &v411;
          goto LABEL_104;
      }
    }

    LOBYTE(v427) = 0;
    *&v411 = 0;
    LOBYTE(v409[0]) = 0;
    LOBYTE(v403) = 0;
    IsCF = __CFStringIsCF();
    if (IsCF)
    {
      i = v389;
      v10 = &v411;
      if (!v411)
      {

        a1 = 0;
        v82 = 0xE000000000000000;
        goto LABEL_104;
      }

      if (v403 == 1)
      {
        if (v427)
        {
          lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
        }

        else
        {
          lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
        }

        v92 = String.init<A>(_immortalCocoaString:count:encoding:)();
        goto LABEL_102;
      }

      if (v409[0])
      {
        if (v427 != 1)
        {
          IsCF = [v79 lengthOfBytesUsingEncoding_];
        }

        MEMORY[0x1EEE9AC00](IsCF);
        v95 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        v82 = v96;
        v97 = (v96 >> 56) & 0xF;
        if ((v96 & 0x2000000000000000) == 0)
        {
          v97 = v95 & 0xFFFFFFFFFFFFLL;
        }

        if (v97)
        {
          a1 = v95;

          i = v389;
          goto LABEL_104;
        }

        i = v389;
      }
    }

    else
    {
      v84 = v79;
      v85 = String.init(_nativeStorage:)();
      i = v389;
      if (v86)
      {
        a1 = v85;
        v82 = v86;

        v10 = &v411;
        goto LABEL_104;
      }

      *&v411 = [v84 length];
      if (!v411)
      {

        a1 = 0;
        v82 = 0xE000000000000000;
        v10 = &v411;
        goto LABEL_104;
      }

      v10 = &v411;
    }

    v92 = String.init(_cocoaString:)();
LABEL_102:
    a1 = v92;
    v82 = v93;
LABEL_103:

    goto LABEL_104;
  }

  if (v426 != 3)
  {
    v405 = v421;
    v406 = v422;
    v407 = v423;
    v408 = v424;
    v445 = *&v425[8];
    v446 = *&v425[24];
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    if (v387)
    {
      v411 = v405;
      v412[0] = v406;
      v412[1] = v407;
      *(v414 + 8) = v445;
      *&v413 = v408;
      *(&v413 + 1) = i;
      *&v414[0] = v393;
      *(&v414[1] + 8) = v446;
      LOBYTE(v443) = 1;
      v430 = 0uLL;
      LOWORD(v431) = 1;
      *(&v431 + 1) = 0;
      LOWORD(v432) = 256;
      *(&v432 + 1) = 0;
      v433 = 0;
      v434 = 0;
      if (!*(&v446 + 1))
      {
        outlined init with copy of LocalizedStringResource(&v411, &v435);
        outlined init with copy of LocalizedStringResource(&v411, &v435);
        outlined init with copy of AttributedString.LocalizationOptions(&v430, &v435);
        if (one-time initialization token for localizedStringLogger != -1)
        {
          swift_once();
        }

        v132 = type metadata accessor for Logger();
        __swift_project_value_buffer(v132, localizedStringLogger);
        v133 = Logger.logObject.getter();
        v134 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v133, v134))
        {
          v135 = swift_slowAlloc();
          *v135 = 0;
          _os_log_impl(&dword_18075C000, v133, v134, "LocalizedStringResource did not contain a sandbox extension token. Proceeding to lookup localized string without consuming a sandbox extension.", v135, 2u);
          MEMORY[0x1865D2690](v135, -1, -1);
        }

        v399 = 0;
        v401 = 0;
        goto LABEL_178;
      }

      v105 = *&v414[1];
      v106 = *(&v414[0] + 1);
      v107 = swift_getObjectType();
      v108 = *(v105 + 296);
      outlined init with copy of LocalizedStringResource(&v411, &v435);
      outlined init with copy of LocalizedStringResource(&v411, &v435);
      outlined init with copy of AttributedString.LocalizationOptions(&v430, &v435);
      v400 = v106;
      v108(&v435, closure #1 in LocalizedStringResource._withExtensionForBundle<A>(_:), 0, MEMORY[0x1E69E72F0], v107, v105);
      v401 = 0;
      if (!v435)
      {
        goto LABEL_173;
      }

      String.utf8CString.getter();
      v109 = sandbox_extension_consume();

      if (v109 == -1)
      {
        if (one-time initialization token for localizedStringLogger != -1)
        {
          swift_once();
        }

        v212 = type metadata accessor for Logger();
        __swift_project_value_buffer(v212, localizedStringLogger);
        outlined init with copy of LocalizedStringResource(&v411, &v435);
        v213 = Logger.logObject.getter();
        v214 = static os_log_type_t.error.getter();
        outlined destroy of LocalizedStringResource(&v411);
        if (os_log_type_enabled(v213, v214))
        {
          v215 = swift_slowAlloc();
          v216 = swift_slowAlloc();
          *&v435 = v216;
          *v215 = 136315394;
          v217 = (*(v105 + 240))(v107, v105);
          v219 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v217, v218, &v435);

          *(v215 + 4) = v219;
          *(v215 + 12) = 1026;
          *(v215 + 14) = MEMORY[0x1865CA7A0](v220);
          _os_log_impl(&dword_18075C000, v213, v214, "Unable to consume sandbox extension for path '%s' (errno: %{public}d)", v215, 0x12u);
          __swift_destroy_boxed_opaque_existential_1(v216);
          MEMORY[0x1865D2690](v216, -1, -1);
          MEMORY[0x1865D2690](v215, -1, -1);
        }

        v399 = 0;
        LODWORD(v400) = 1;
      }

      else
      {
        v399 = v109;
        LODWORD(v400) = 0;
      }

      a1 = v386;
LABEL_226:
      v221 = *(&v414[0] + 1);
      v222 = *&v414[1];
      v223 = objc_allocWithZone(NSBundle);
      v224 = swift_getObjectType();
      v225 = *(v222 + 432);
      swift_unknownObjectRetain_n();
      v226 = v221;
      v227 = v225(v224, v222);
      v228 = [v223 initWithURL_];
      swift_unknownObjectRelease();

      if (!v228)
      {
        swift_unknownObjectRelease();
        v231 = 0;
        v232 = v384;
        goto LABEL_278;
      }

      v230 = *(&v432 + 1);
      v229 = v433;
      v427 = v430;
      v428 = v431;
      *&v429 = v432;
      v398 = v226;
      if (v433)
      {
        outlined init with copy of AttributedString.LocalizationOptions(&v430, &v435);
LABEL_277:
        v395 = v412[0];
        v396 = *(&v411 + 1);
        v277 = v411;
        v397 = v230;
        v415 = v427;
        v416[0] = v428;
        *&v416[1] = v429;
        *(&v416[1] + 1) = v230;
        *&v417 = v229;
        BYTE8(v417) = 1;
        v278 = v412[1];
        v279 = *(&v413 + 1);
        v280 = v413;
        v281 = *&v414[0];
        v282 = v228;
        v283 = v228;
        v284 = v282;
        _sSS10FoundationE17LocalizationValueV7resolve3key7options5table6bundle6locale5scope07performB0AA16AttributedStringVSSSg_AM0B7OptionsVANSo8NSBundleCSgAA6LocaleVxmSbtAA14AttributeScopeRzlFAA0Q6ScopesO0A10AttributesV_Tt5B5(v277, v396, &v415, *(&v278 + 1), v280, v283, v279, v281, 1u, v395, *(&v395 + 1), v278);

        v231 = v435;
        v435 = v427;
        v436 = v428;
        *&v437 = v429;
        *(&v437 + 1) = v230;
        v438 = v229;
        LOBYTE(v439) = 1;
        outlined destroy of AttributedString.LocalizationOptions(&v435);
        swift_unknownObjectRelease();
        v232 = v384;
        a1 = v386;
LABEL_278:
        v285 = v393;
        if ((v400 & 1) == 0)
        {
          sandbox_extension_release();
        }

        outlined destroy of AttributedString.LocalizationOptions(&v430);
        outlined destroy of LocalizedStringResource(&v411);
        if (v231)
        {
          outlined destroy of AttributedString.LocalizationOptions(&v430);
          outlined destroy of LocalizedStringResource(&v411);
        }

        else
        {
          v288 = *(&v412[0] + 1);
          v286 = *&v412[0];
          v287 = *&v412[1];
          v289 = *(&v413 + 1);
          v290 = *&v414[0];

          swift_unknownObjectRetain();
          _sSS10FoundationE17LocalizationValueV7resolve3key7options5table6bundle6locale5scope07performB0AA16AttributedStringVSSSg_AM0B7OptionsVANSo8NSBundleCSgAA6LocaleVxmSbtAA14AttributeScopeRzlFAA0Q6ScopesO0A10AttributesV_Tt5B5(0, 0, &v430, 0, 0, 0, v289, v290, 0, v286, v288, v287);
          outlined destroy of LocalizedStringResource(&v411);

          swift_unknownObjectRelease();
          outlined destroy of AttributedString.LocalizationOptions(&v430);
          v231 = v435;
        }

        v292 = _sSo18NSAttributedStringC10FoundationE_9includingAbC010AttributedB0V_xmtKcAC14AttributeScopeRzlufCAC0F6ScopesO0C10AttributesV_Tt0t1B5(v291);
        if (!v401)
        {
          v293 = v292;
          *(a1 + 3) = type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSAttributedString);
          v294 = lazy protocol witness table accessor for type NSNumber and conformance NSObject(&lazy protocol witness table cache variable for type NSAttributedString and conformance NSObject, &lazy cache variable for type metadata for NSAttributedString);
          v435 = v405;
          v436 = v406;
          v437 = v407;
          v295 = v446;
          v441 = v445;
          *(a1 + 4) = v294;
          *a1 = v293;
          *v232 = v231;
          v232[1] = 0;
          *(v232 + 16) = 0;
          v438 = v408;
          v439 = v389;
          v440 = v285;
          v442 = v295;
          v296 = &v435;
          goto LABEL_324;
        }

LABEL_399:
        swift_unexpectedError();
        __break(1u);
        swift_unexpectedError();
        __break(1u);
        goto LABEL_400;
      }

      outlined init with copy of AttributedString.LocalizationOptions(&v430, &v435);
      v233 = v228;
      v234 = [v228 localizations];
      if (!v234)
      {
        v234 = _ContiguousArrayBuffer._asCocoaArray()();
      }

      v235 = objc_opt_self();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
      v236 = swift_allocObject();
      *(v236 + 16) = xmmword_181218E20;
      v237 = *&v414[0];
      v238 = swift_getObjectType();
      *(v236 + 32) = (*(v237 + 64))(v238, v237);
      *(v236 + 40) = v239;
      v240 = [v235 preferredLocalizationsFromArray:v234 forPreferences:_ContiguousArrayBuffer._asCocoaArray()()];

      swift_unknownObjectRelease();
      if (v240)
      {
        type metadata accessor for __SwiftDeferredNSArray();
        if (swift_dynamicCastClass())
        {
        }

        else
        {
          v274 = v240;
        }

        v228 = v233;
        v275 = swift_dynamicCastClass();
        if (!v275)
        {
          swift_unknownObjectRelease();
          [v240 copy];
          v276 = _bridgeCocoaArray<A>(_:)();
          swift_unknownObjectRelease();
          v273 = specialized _arrayForceCast<A, B>(_:)(v276);

          if (!*(v273 + 2))
          {
            goto LABEL_274;
          }

          goto LABEL_276;
        }

        v273 = v275;
      }

      else
      {
        v273 = MEMORY[0x1E69E7CC0];
        v228 = v233;
      }

      if (!*(v273 + 2))
      {
LABEL_274:

        v230 = 0;
        v229 = 0;
        goto LABEL_277;
      }

LABEL_276:
      v230 = *(v273 + 4);
      v229 = *(v273 + 5);

      goto LABEL_277;
    }

    v435 = v405;
    v436 = v406;
    v437 = v407;
    v441 = v445;
    v438 = v408;
    v439 = i;
    v440 = v393;
    v442 = v446;
    LOBYTE(v404) = 1;
    v415 = 0uLL;
    LOWORD(v416[0]) = 256;
    *(&v416[0] + 1) = 0;
    *&v416[1] = 0;
    BYTE8(v416[1]) = 0;
    outlined init with copy of String.LocalizationOptions(&v415, &v411);
    outlined init with copy of LocalizedStringResource(&v435, &v411);
    v397 = specialized LocalizedStringResource._withExtensionForBundle<A>(_:)(&v435, &v415, &v435);
    v119 = v118;
    outlined destroy of LocalizedStringResource(&v435);
    outlined destroy of String.LocalizationOptions(&v415);
    if (v119)
    {
      outlined destroy of String.LocalizationOptions(&v415);
      v120 = v397;
      goto LABEL_323;
    }

    v427 = v436;
    v136 = v437;
    *&v428 = v437;
    v138 = v439;
    v137 = v440;
    v139 = MEMORY[0x1E69E7CC0];
    if (v415)
    {
      v140 = v415;
    }

    else
    {
      v140 = MEMORY[0x1E69E7CC0];
    }

    v397 = *(&v427 + 1);
    v401 = v427;
    v430 = v140;
    swift_unknownObjectRetain_n();
    outlined init with copy of String.LocalizationValue(&v427, &v411);
    v396 = v136;

    v400 = v137;
    v141 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySS10FoundationE17LocalizationValueV14FormatArgumentVG_AJs5NeverOTg506_sSS10d3E17ef43V25argumentsWithReplacements_6localeSayAC14gH40VGSays7CVarArg_pGSg_AA6LocaleVtFA2GXEfU_s16IndexingIteratorVySays0tU0_pGGAF0X0VTf1cn_nTf4nng_n(v401, &v430, v138, v137);

    v401 = v138;
    swift_unknownObjectRelease();
    v142 = *(v141 + 16);
    if (v142)
    {
      goto LABEL_142;
    }

    if ((BYTE1(v416[0]) & 1) != 0 || (String._bridgeToObjectiveCImpl()(), v241 = _CFStringGetFormatSpecifierConfiguration(), swift_unknownObjectRelease(), !v241))
    {
      swift_unknownObjectRelease();
      outlined destroy of String.LocalizationOptions(&v415);

      outlined destroy of String.LocalizationValue(&v427);
      a1 = v386;
      i = v389;
      v10 = &v411;
      v119 = v396;
      v120 = v397;
      goto LABEL_323;
    }

    v142 = *(v141 + 16);
    if (v142)
    {
LABEL_142:
      *&v395 = 0;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v142, 0);
      v143 = v139;
      v144 = v141 + 32;
      do
      {
        outlined init with copy of String.LocalizationValue.FormatArgument(v144, &v411);
        _sSS10FoundationE17LocalizationValueV14FormatArgumentV7resolve10attributed4with9includings7CVarArg_p6vararg_AE15_AttributeFixupOSg11attrStrInfotSb_AA6LocaleVxmtAA0M5ScopeRzlFAA0M6ScopesO0A10AttributesV_Tt3B5(&v430, &v443, 0, v401, v400);
        outlined consume of String.LocalizationValue.FormatArgument._AttributeFixup?(v443, *(&v443 + 1), v444);
        outlined destroy of String.LocalizationValue.FormatArgument(&v411);
        v409[0] = v143;
        v146 = *(v143 + 16);
        v145 = *(v143 + 24);
        if (v146 >= v145 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v145 > 1), v146 + 1, 1);
          v143 = v409[0];
        }

        *(v143 + 16) = v146 + 1;
        outlined init with take of Equatable(&v430, v143 + 40 * v146 + 32);
        v144 += 112;
        --v142;
      }

      while (v142);
    }

    else
    {
      *&v395 = 0;

      v143 = MEMORY[0x1E69E7CC0];
    }

    type metadata accessor for __VaListBuilder();
    v147 = swift_allocObject();
    *(v147 + 16) = 8;
    *(v147 + 24) = 0;
    a1 = (v147 + 24);
    *(v147 + 32) = 0;
    *(v147 + 40) = 0;
    v399 = v147;
    i = *(v143 + 16);
    if (i)
    {
      v398 = v143 + 32;
      outlined init with copy of String.LocalizationOptions(&v415, &v411);
      swift_unknownObjectRetain();

      v10 = 0;
      while (1)
      {
        v24 = __swift_project_boxed_opaque_existential_1((v398 + 40 * v10), *(v398 + 40 * v10 + 24));
        v148 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
        v21 = *a1;
        v149 = *(v148 + 16);
        v53 = __OFADD__(*a1, v149);
        v150 = *a1 + v149;
        if (v53)
        {
          goto LABEL_327;
        }

        v151 = v399;
        v152 = *(v399 + 4);
        if (v152 >= v150)
        {
          goto LABEL_165;
        }

        if (v152 + 0x4000000000000000 < 0)
        {
          goto LABEL_328;
        }

        v153 = *(v399 + 5);
        if (2 * v152 > v150)
        {
          v150 = 2 * v152;
        }

        *(v399 + 4) = v150;
        if ((v150 - 0x1000000000000000) >> 61 != 7)
        {
          goto LABEL_329;
        }

        v154 = v148;
        v24 = v151;
        v155 = swift_slowAlloc();
        v156 = v155;
        *(v24 + 40) = v155;
        if (v153)
        {
          break;
        }

        v148 = v154;
        if (!v156)
        {
LABEL_172:
          __break(1u);
LABEL_173:
          if (one-time initialization token for localizedStringLogger != -1)
          {
            swift_once();
          }

          v162 = type metadata accessor for Logger();
          __swift_project_value_buffer(v162, localizedStringLogger);
          v163 = Logger.logObject.getter();
          v164 = static os_log_type_t.debug.getter();
          a1 = v386;
          if (os_log_type_enabled(v163, v164))
          {
            v165 = swift_slowAlloc();
            *v165 = 0;
            _os_log_impl(&dword_18075C000, v163, v164, "LocalizedStringResource contained a sandbox extension token but sandbox check passed without consuming the token. Proceeding to lookup localized string without consuming a sandbox extension.", v165, 2u);
            MEMORY[0x1865D2690](v165, -1, -1);
          }

          v399 = 0;
LABEL_178:
          LODWORD(v400) = 1;
          goto LABEL_226;
        }

LABEL_166:
        v158 = *(v148 + 16);
        if (v158)
        {
          v159 = (v148 + 32);
          v160 = *a1;
          while (1)
          {
            v161 = *v159++;
            *&v156[8 * v160] = v161;
            v160 = *a1 + 1;
            if (__OFADD__(*a1, 1))
            {
              break;
            }

            *a1 = v160;
            if (!--v158)
            {
              goto LABEL_150;
            }
          }

          __break(1u);
LABEL_288:
          __break(1u);
LABEL_289:

LABEL_290:
          v120 = 0;
          v271 = 0xE000000000000000;
LABEL_321:
          a2 = v384;
LABEL_322:

          outlined destroy of String.LocalizationOptions(&v415);

          swift_unknownObjectRelease_n();
          outlined destroy of String.LocalizationOptions(&v415);

          outlined destroy of String.LocalizationValue(&v427);
          v119 = v271;
LABEL_323:
          *(a1 + 3) = MEMORY[0x1E69E6158];
          *(a1 + 4) = lazy protocol witness table accessor for type String and conformance String();
          *a1 = v120;
          *(a1 + 1) = v119;
          *a2 = 0;
          *(a2 + 8) = 0;
          *(a2 + 16) = -1;
          v411 = v405;
          v412[0] = v406;
          *(v10 + 32) = v407;
          *(v10 + 48) = v408;
          *(v10 + 56) = i;
          *(v10 + 64) = v393;
          v315 = v445;
          *(v10 + 88) = v446;
          *(v10 + 72) = v315;
          v296 = &v411;
LABEL_324:
          outlined destroy of LocalizedStringResource(v296);
        }

LABEL_150:

        if (++v10 == i)
        {
          goto LABEL_258;
        }
      }

      if (v155 != v153 || v155 >= &v153[8 * v21])
      {
        memmove(v155, v153, 8 * v21);
        v24 = v399;
      }

      __VaListBuilder.deallocStorage(wordCount:storage:)();
      v151 = v399;
      v148 = v154;
LABEL_165:
      v156 = *(v151 + 5);
      if (!v156)
      {
        goto LABEL_172;
      }

      goto LABEL_166;
    }

    outlined init with copy of String.LocalizationOptions(&v415, &v411);
    swift_unknownObjectRetain();

LABEL_258:
    v260 = __VaListBuilder.va_list()();
    v261 = objc_opt_self();
    v262 = String._bridgeToObjectiveCImpl()();
    v263 = swift_getObjectType();
    v264 = (v400[61])(v263);
    v10 = &v411;
    v411 = v415;
    v412[0] = v416[0];
    *(v412 + 9) = *(v416 + 9);
    v265 = String.LocalizationOptions._nsOptions.getter();
    v266 = [v261 _stringWithFormat_locale_options_arguments_];

    swift_unknownObjectRelease();
    LODWORD(v261) = _objc_isTaggedPointer(v266);
    v267 = v266;
    v24 = v267;
    i = v389;
    if (!v261)
    {
LABEL_263:
      LOBYTE(v430) = 0;
      *&v411 = 0;
      LOBYTE(v443) = 0;
      LOBYTE(v409[0]) = 0;
      v272 = __CFStringIsCF();
      if (!v272)
      {
        v297 = v24;
        v298 = String.init(_nativeStorage:)();
        a1 = v386;
        if (v299)
        {
          v120 = v298;
          v271 = v299;

          goto LABEL_321;
        }

        *&v411 = [v297 length];
        if (!v411)
        {

          goto LABEL_290;
        }

        goto LABEL_318;
      }

      a1 = v386;
      if (!v411)
      {
        goto LABEL_289;
      }

      if (LOBYTE(v409[0]) == 1)
      {
        if (v430)
        {
          lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
LABEL_311:
          v308 = String.init<A>(_immortalCocoaString:count:encoding:)();
LABEL_319:
          v120 = v308;
          v271 = v309;
          goto LABEL_320;
        }

LABEL_310:
        lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
        goto LABEL_311;
      }

      if ((v443 & 1) == 0)
      {
LABEL_318:
        v308 = String.init(_cocoaString:)();
        goto LABEL_319;
      }

      if (v430 == 1)
      {
        MEMORY[0x1EEE9AC00](v272);
        v305 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        v271 = v306;
        v307 = HIBYTE(v306) & 0xF;
        if ((v306 & 0x2000000000000000) == 0)
        {
          v307 = v305 & 0xFFFFFFFFFFFFLL;
        }

        if (v307)
        {
          v120 = v305;

LABEL_320:
          goto LABEL_321;
        }

        goto LABEL_317;
      }

      v311 = [v24 lengthOfBytesUsingEncoding_];
      MEMORY[0x1EEE9AC00](v311);
      v312 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v271 = v313;
      v314 = HIBYTE(v313) & 0xF;
      if ((v313 & 0x2000000000000000) == 0)
      {
        v314 = v312 & 0xFFFFFFFFFFFFLL;
      }

      a2 = v384;
      if (!v314)
      {
LABEL_317:

        goto LABEL_318;
      }

      v120 = v312;
LABEL_294:

      goto LABEL_322;
    }

    v268 = _objc_getTaggedPointerTag(v267);
    if (!v268)
    {
      LOWORD(v443) = 0;
      _CFIndirectTaggedPointerStringGetContents();
      v303 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v304)
      {
        [v24 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v310 = *(&v430 + 1);
        v120 = v430;

        outlined destroy of String.LocalizationOptions(&v415);

        swift_unknownObjectRelease_n();
        outlined destroy of String.LocalizationOptions(&v415);

        outlined destroy of String.LocalizationValue(&v427);
        v119 = v310;
        a2 = v384;
        a1 = v386;
        goto LABEL_323;
      }

      v120 = v303;
      v271 = v304;

LABEL_297:
      a2 = v384;
      a1 = v386;
      goto LABEL_322;
    }

    if (v268 != 22)
    {
      if (v268 == 2)
      {
        MEMORY[0x1EEE9AC00](v268);
        v269 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        v271 = v270;

        v120 = v269;
        goto LABEL_297;
      }

      goto LABEL_263;
    }

    v300 = [v24 UTF8String];
    if (!v300)
    {
      goto LABEL_396;
    }

    v301 = String.init(utf8String:)(v300);
    a2 = v384;
    a1 = v386;
    if (v302)
    {
      v120 = v301;
      v271 = v302;
      goto LABEL_294;
    }

LABEL_397:
    __break(1u);
LABEL_398:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    swift_unexpectedError();
    __break(1u);
    goto LABEL_399;
  }

  v412[1] = v423;
  v413 = v424;
  v414[0] = *v425;
  v414[1] = *&v425[16];
  v411 = v421;
  v412[0] = v422;
  *&v435 = i;
  *(&v435 + 1) = v393;
  (v421)(&v443, &v435);
  if ((v387 & 1) == 0)
  {
    v114 = *(v443 + 40);
    v435 = *(v443 + 24);
    v436 = v114;
    v437 = *(v443 + 56);
    lazy protocol witness table accessor for type BigString and conformance BigString();
    lazy protocol witness table accessor for type BigString and conformance BigString();
    swift_unknownObjectRetain();
    v115 = String.init<A>(_:)();
    v117 = v116;
    *(a1 + 3) = MEMORY[0x1E69E6158];
    *(a1 + 4) = lazy protocol witness table accessor for type String and conformance String();
    *a1 = v115;
    *(a1 + 1) = v117;
    outlined destroy of String.LocalizationValue.FormatArgument.Storage.AttributedStringFormatWrapper(&v411);
    goto LABEL_120;
  }

  getter of attributeFixup #1 in String.LocalizationValue.FormatArgument.resolve<A>(attributed:with:including:)(v11, 1, &v435);
  if (v436 == 255)
  {
LABEL_219:
    v209 = v443;

    v211 = _sSo18NSAttributedStringC10FoundationE_9includingAbC010AttributedB0V_xmtKcAC14AttributeScopeRzlufCAC0F6ScopesO0C10AttributesV_Tt0t1B5(v210);
    *(a1 + 3) = type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSAttributedString);
    *(a1 + 4) = lazy protocol witness table accessor for type NSNumber and conformance NSObject(&lazy protocol witness table cache variable for type NSAttributedString and conformance NSObject, &lazy cache variable for type metadata for NSAttributedString);
    *a1 = v211;

    outlined destroy of String.LocalizationValue.FormatArgument.Storage.AttributedStringFormatWrapper(&v411);

    *a2 = v209;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    return result;
  }

  if ((v436 & 1) == 0)
  {
    outlined consume of String.LocalizationValue.FormatArgument._AttributeFixup?(v435, *(&v435 + 1), v436);
    goto LABEL_219;
  }

  LODWORD(v393) = v436;
  v17 = v443;
  v18 = &unk_1EA7B2000;
  v19 = &static AttributedString.Guts._nextVersion;
  v400 = *(&v435 + 1);
  v401 = v435;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v170 = *(v17 + 40);
    v415 = *(v17 + 24);
    v416[0] = v170;
    v416[1] = *(v17 + 56);
    v126 = *(v17 + 72);
    isUniquelyReferenced_nonNull_native = *(v17 + 80);
    a1 = *(v17 + 88);
    v131 = *(v17 + 96);
    type metadata accessor for AttributedString.Guts();
    i = swift_allocObject();
    v171 = BigString.isEmpty.getter() & 1;
    outlined init with copy of BigString(&v415, &v435);
    v172 = swift_unknownObjectRetain();
    specialized Rope._endPath.getter(v172);
    if (v126)
    {
      v173 = a1 == 0;
    }

    else
    {
      v173 = 1;
    }

    v174 = v173;
    if (v174 != v171)
    {
      goto LABEL_337;
    }

    if (one-time initialization token for _nextVersion != -1)
    {
      goto LABEL_338;
    }

    goto LABEL_197;
  }

  for (i = v17; ; *&v443 = i)
  {
    if (v18[147] != -1)
    {
      swift_once();
    }

    *(i + 16) = atomic_fetch_add_explicit(v19, 1uLL, memory_order_relaxed);
    v177 = *(i + 24);
    v178 = *(i + 56);
    v431 = *(i + 40);
    v432 = v178;
    v430 = v177;
    v179 = *(i + 56);
    v180 = *(i + 64);
    v181 = *(i + 24);
    v394 = *(i + 40);
    v395 = v181;
    BigString.startIndex.getter();
    v182 = BigString.endIndex.getter();
    v398 = v183;
    v399 = v182;
    v396 = v185;
    v397 = v184;
    v405 = v395;
    v406 = v394;
    *&v407 = v179;
    *(&v407 + 1) = v180;
    v445 = v430;
    v446 = v431;
    v447 = v432;
    outlined init with copy of Rope<BigString._Chunk>._Node?(&v445, &v435);
    v186 = BigString.UnicodeScalarView.index(roundingDown:)();
    outlined destroy of BigString(&v430);
    v187 = *(i + 40);
    v427 = *(i + 24);
    v428 = v187;
    v429 = *(i + 56);
    swift_unknownObjectRetain();
    v188 = BigString.UnicodeScalarView.index(roundingDown:)();
    swift_unknownObjectRelease();
    v189 = v186 >> 11;
    v10 = v188 >> 11;
    v190 = v401;

    v191 = v400;

    specialized AttributedString._InternalRunsSlice.updateEach(with:)(i, v189, v10, v190, 0);

    if ((specialized AttributedString._AttributeStorage.hasConstrainedAttributes.getter(v190) & 1) == 0)
    {
      v206 = v190;
      v207 = v191;
LABEL_218:
      outlined consume of String.LocalizationValue.FormatArgument._AttributeFixup?(v206, v207, v393);
      a2 = v384;
      a1 = v386;
      goto LABEL_219;
    }

    v398 = v189;
    v21 = v190 + 64;
    v192 = 1 << *(v190 + 32);
    v193 = -1;
    if (v192 < 64)
    {
      v193 = ~(-1 << v192);
    }

    v194 = v193 & *(v190 + 64);
    a1 = ((v192 + 63) >> 6);

    v195 = 0;
    v399 = MEMORY[0x1E69E7CC0];
    if (!v194)
    {
      goto LABEL_206;
    }

    do
    {
LABEL_204:
      while (1)
      {
        v196 = __clz(__rbit64(v194));
        v194 &= v194 - 1;
        outlined init with copy of AttributedString._AttributeValue(*(v401 + 56) + 72 * (v196 | (v195 << 6)), &v435);
        v197 = *(&v437 + 1);
        v198 = v438;
        outlined copy of AttributedString.AttributeRunBoundaries?(*(&v437 + 1), v438);
        outlined destroy of AttributedString._AttributeValue(&v435);
        if (v198 != 1)
        {
          break;
        }

        if (!v194)
        {
          goto LABEL_206;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v399 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v399 + 2) + 1, 1, v399);
      }

      v201 = *(v399 + 2);
      v200 = *(v399 + 3);
      v202 = v201 + 1;
      if (v201 >= v200 >> 1)
      {
        v396 = *(v399 + 2);
        v397 = v201 + 1;
        v205 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v200 > 1), v201 + 1, 1, v399);
        v201 = v396;
        v202 = v397;
        v399 = v205;
      }

      v203 = v399;
      *(v399 + 2) = v202;
      v204 = &v203[16 * v201];
      *(v204 + 4) = v197;
      *(v204 + 5) = v198;
    }

    while (v194);
LABEL_206:
    while (1)
    {
      v199 = v195 + 1;
      if (__OFADD__(v195, 1))
      {
        break;
      }

      if (v199 >= a1)
      {
        v208 = v401;

        AttributedString.Guts.enforceAttributeConstraintsAfterMutation(in:type:constraintsInvolved:)(v398, v10, 0, v399);

        v206 = v208;
        v207 = v400;
        goto LABEL_218;
      }

      v194 = *(v21 + 8 * v199);
      ++v195;
      if (v194)
      {
        v195 = v199;
        goto LABEL_204;
      }
    }

    __break(1u);
LABEL_327:
    __break(1u);
LABEL_328:
    __break(1u);
LABEL_329:
    __break(1u);
LABEL_330:
    v123 = swift_once();
LABEL_125:
    isUniquelyReferenced_nonNull_native = qword_1EA822138;
    v399 = static ICUListFormatter.cache;
    *&v411 = i;
    *(&v411 + 1) = a1;
    *&v412[0] = v21;
    v126 = v382;
    *(v10 + 24) = v382;
    MEMORY[0x1EEE9AC00](v123);
    os_unfair_lock_lock((isUniquelyReferenced_nonNull_native + 24));
    v19 = v21;
    v127 = v396;
    closure #1 in FormatterCache.formatter(for:creator:)specialized partial apply(isUniquelyReferenced_nonNull_native + 16, &v415);
    v401 = v127;
    os_unfair_lock_unlock((isUniquelyReferenced_nonNull_native + 24));
    v18 = *(v10 + 112);
    if (v18)
    {
      goto LABEL_373;
    }

    v131 = v399;
    v397 = isUniquelyReferenced_nonNull_native;
    v398 = i;
    v400 = a1;
    v381 = v19;
    type metadata accessor for ICUListFormatter();
    v166 = swift_allocObject();
    *(v10 + 112) = 0;
    if (v126 > 2)
    {
      __break(1u);
LABEL_332:
      __break(1u);
LABEL_333:
      __break(1u);
LABEL_334:
      __break(1u);
      goto LABEL_335;
    }

    v18 = v166;
    i = v398;
    v126 = String.utf8CString.getter();
    v167 = ulistfmt_openForType();

    v19 = v397;
    if (!v167)
    {
      goto LABEL_394;
    }

    if (v415 > 0)
    {
      goto LABEL_333;
    }

    v18[2] = v167;
    os_unfair_lock_lock(v19 + 6);
    if (v131 >= *(v19[2] + 16))
    {
    }

    else
    {
      v19[2] = MEMORY[0x1E69E7CC8];
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v415 = v19[2];
    a1 = v415;
    v51 = specialized __RawDictionaryStorage.find<A>(_:)(i, v400, v381, v382);
    v243 = *(a1 + 2);
    v244 = (v242 & 1) == 0;
    v53 = __OFADD__(v243, v244);
    v245 = v243 + v244;
    if (!v53)
    {
      break;
    }

LABEL_335:
    __break(1u);
LABEL_336:
    __break(1u);
LABEL_337:
    __break(1u);
LABEL_338:
    swift_once();
LABEL_197:
    add_explicit = atomic_fetch_add_explicit(v19, 1uLL, memory_order_relaxed);
    v176 = v416[0];
    *(i + 24) = v415;
    *(i + 16) = add_explicit;
    *(i + 40) = v176;
    *(i + 56) = v416[1];
    *(i + 72) = v126;
    *(i + 80) = isUniquelyReferenced_nonNull_native;
    *(i + 88) = a1;
    *(i + 96) = v131;
    *(i + 104) = MEMORY[0x1E69E7CC0];
  }

  LOBYTE(v23) = v242;
  if (*(a1 + 3) >= v245)
  {
    goto LABEL_249;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v245, isUniquelyReferenced_nonNull_native);
  v246 = v415;
  v247 = i;
  v248 = v400;
  v249 = v382;
  v51 = specialized __RawDictionaryStorage.find<A>(_:)(v247, v400, v381, v382);
  if ((v23 & 1) == (v250 & 1))
  {
LABEL_251:
    if ((v23 & 1) == 0)
    {
      goto LABEL_371;
    }
  }

  else
  {
LABEL_248:
    v51 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
LABEL_249:
    if (isUniquelyReferenced_nonNull_native)
    {
      v246 = a1;
      v249 = v382;
      v248 = v400;
      goto LABEL_251;
    }

LABEL_340:
    v396 = v51;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation16ICUListFormatterC9SignatureVAEGMd);
    v316 = static _DictionaryStorage.copy(original:)();
    v246 = v316;
    if (*(a1 + 2))
    {
      v317 = (v316 + 64);
      v318 = 1 << *(v246 + 32);
      v399 = a1 + 64;
      v319 = (v318 + 63) >> 6;
      if (v246 != a1 || v317 >= &v399[8 * v319])
      {
        memmove(v317, v399, 8 * v319);
      }

      v320 = 0;
      *(v246 + 16) = *(a1 + 2);
      v321 = 1 << a1[32];
      v322 = *(a1 + 8);
      v323 = -1;
      if (v321 < 64)
      {
        v323 = ~(-1 << v321);
      }

      v324 = v323 & v322;
      v325 = (v321 + 63) >> 6;
      if ((v323 & v322) != 0)
      {
        do
        {
          v326 = __clz(__rbit64(v324));
          v324 &= v324 - 1;
LABEL_353:
          v329 = v326 | (v320 << 6);
          v330 = *(a1 + 6) + 32 * v329;
          v331 = *(v330 + 8);
          v332 = *(*(a1 + 7) + 8 * v329);
          v333 = *(v246 + 48) + 32 * v329;
          v334 = *(v330 + 16);
          *v333 = *v330;
          *(v333 + 8) = v331;
          *(v333 + 16) = v334;
          *(*(v246 + 56) + 8 * v329) = v332;
        }

        while (v324);
      }

      v327 = v320;
      while (1)
      {
        v320 = v327 + 1;
        if (__OFADD__(v327, 1))
        {
          break;
        }

        if (v320 >= v325)
        {
          goto LABEL_370;
        }

        v328 = *&v399[8 * v320];
        ++v327;
        if (v328)
        {
          v326 = __clz(__rbit64(v328));
          v324 = (v328 - 1) & v328;
          goto LABEL_353;
        }
      }

LABEL_390:
      __break(1u);
LABEL_391:
      __break(1u);
LABEL_392:
      __break(1u);
LABEL_393:
      __break(1u);
LABEL_394:
      __break(1u);
LABEL_395:
      __break(1u);
LABEL_396:
      __break(1u);
      goto LABEL_397;
    }

LABEL_370:

    v51 = v396;
    v19 = v397;
    v249 = v382;
    v248 = v400;
    if ((v23 & 1) == 0)
    {
LABEL_371:
      specialized _NativeDictionary._insert(at:key:value:)(v51, v398, v248, v381, v249, v18, v246);

      goto LABEL_372;
    }
  }

  *(*(v246 + 56) + 8 * v51) = v18;

LABEL_372:
  v19[2] = v246;
  os_unfair_lock_unlock(v19 + 6);

LABEL_373:

  v352 = *(v395 + 16);
  *&v411 = MEMORY[0x1E69E7CC0];
  v353 = v395;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v352, 0);
  v354._rawValue = v411;
  if (v352)
  {
    v355 = (v353 + 40);
    do
    {
      v357 = *(v355 - 1);
      v356 = *v355;
      *&v411 = v354;
      v359 = *(v354._rawValue + 2);
      v358 = *(v354._rawValue + 3);

      if (v359 >= v358 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v358 > 1), v359 + 1, 1);
        v354._rawValue = v411;
      }

      *(v354._rawValue + 2) = v359 + 1;
      v360 = v354._rawValue + 16 * v359;
      *(v360 + 4) = v357;
      *(v360 + 5) = v356;
      v355 += 2;
      --v352;
    }

    while (v352);
  }

  ICUListFormatter.format(strings:)(v354);

  BigString.init(_:)();
  AttributedString.init(_:attributes:)(&v411, MEMORY[0x1E69E7CC8], MEMORY[0x1E69E7CD0], &v415);
  v361 = v415;

  v363 = v401;
  v364 = _sSo18NSAttributedStringC10FoundationE_9includingAbC010AttributedB0V_xmtKcAC14AttributeScopeRzlufCAC0F6ScopesO0C10AttributesV_Tt0t1B5(v362);
  if (!v363)
  {
    v365 = v364;
    v366 = type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSAttributedString);
    v367 = v386;
    v386[1]._object = v366;
    v367[2]._countAndFlagsBits = lazy protocol witness table accessor for type NSNumber and conformance NSObject(&lazy protocol witness table cache variable for type NSAttributedString and conformance NSObject, &lazy cache variable for type metadata for NSAttributedString);
    v367->_countAndFlagsBits = v365;

    result = swift_unknownObjectRelease();
    v368 = v384;
    *v384 = v361;
    v368[1] = 0;
    *(v368 + 16) = 0;
    return result;
  }

LABEL_400:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1809D0FC0()
{
  v1 = *(v0 + 32);
  if (v1 <= 0xFD)
  {
    outlined consume of String.LocalizationValue.FormatArgument._AttributeFixup(*(v0 + 16), *(v0 + 24), v1 & 1);
  }

  return MEMORY[0x1EEE6BDD0](v0, 33, 7);
}

uint64_t outlined copy of String.LocalizationValue.FormatArgument._AttributeFixup??(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != 254)
  {
    return outlined copy of String.LocalizationValue.FormatArgument._AttributeFixup?(result, a2, a3);
  }

  return result;
}

uint64_t outlined consume of String.LocalizationValue.FormatArgument._AttributeFixup?(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return outlined consume of String.LocalizationValue.FormatArgument._AttributeFixup(result, a2, a3 & 1);
  }

  return result;
}

uint64_t protocol witness for PredicateExpression.evaluate(_:) in conformance PredicateExpressions.NotEqual<A, B>@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = PredicateExpressions.NotEqual.evaluate(_:)(a1, a2);
  if (!v3)
  {
    *a3 = result & 1;
  }

  return result;
}

BOOL _ss17FixedWidthIntegerPsE8_convert4fromxSg5value_Sb5exacttqd___tSBRd__lFZs5Int64V_SdTt1g5Tm(uint64_t a1, double a2)
{
  v4 = (*&a2 >> 52) & 0x7FFLL;
  v5 = *&a2 & 0xFFFFFFFFFFFFFLL;
  v6 = v4 | *&a2 & 0xFFFFFFFFFFFFFLL;
  if (!v6)
  {
    v14 = 0;
    result = 1;
    goto LABEL_35;
  }

  if (v4 == 2047)
  {
    goto LABEL_38;
  }

  v7 = Double.exponent.getter();
  if (v7 > 63)
  {
    goto LABEL_38;
  }

  v8 = v7;
  v9 = Double.significandWidth.getter();
  result = v8 >= v9;
  v11 = v9 + __clz(__rbit64(v5));
  v12 = v8 - v11;
  if (__OFSUB__(v8, v11))
  {
    __break(1u);
    goto LABEL_37;
  }

  if (v11 <= 63)
  {
    if (v12 < -64 || v12 > 64)
    {
LABEL_8:
      if (v8 != 63)
      {
        if (v8 < -64)
        {
          do
          {
            v13 = 0;
            v14 = 0;
LABEL_29:
            v14 |= v13;
LABEL_30:
            if (a2 >= 0.0)
            {
              if ((v14 & 0x8000000000000000) == 0)
              {
                goto LABEL_34;
              }
            }

            else
            {
              if ((v14 & 0x8000000000000000) == 0)
              {
                goto LABEL_32;
              }

              __break(1u);
            }

            __break(1u);
LABEL_42:
            ;
          }

          while (v8 != -64);
          goto LABEL_15;
        }

        goto LABEL_17;
      }

LABEL_37:
      if (a2 >= 0.0)
      {
LABEL_38:
        v14 = 0;
        result = 0;
        LOBYTE(v6) = 1;
        goto LABEL_35;
      }

LABEL_50:
      LOBYTE(v6) = 0;
      v14 = 0x8000000000000000;
      goto LABEL_35;
    }

    if ((v12 & 0x8000000000000000) == 0)
    {
      if (v12 == 64)
      {
        goto LABEL_8;
      }

LABEL_24:
      v14 = v5 << v12;
      if (v8 != 63)
      {
        goto LABEL_25;
      }

      goto LABEL_48;
    }

    if (v12 == -64)
    {
      goto LABEL_8;
    }

LABEL_47:
    v14 = v5 >> (v11 - v8);
    if (v8 != 63)
    {
LABEL_25:
      if (v8 >= -64)
      {
        if ((v8 & 0x8000000000000000) == 0)
        {
LABEL_28:
          v13 = 1 << v8;
          goto LABEL_29;
        }

        if (v8 == -64)
        {
          goto LABEL_30;
        }
      }

      v13 = 0;
      goto LABEL_29;
    }

LABEL_48:
    if (a2 >= 0.0 || v14)
    {
      goto LABEL_38;
    }

    goto LABEL_50;
  }

  if (v12 >= -64 && v12 <= 64)
  {
    if (v12 < 0)
    {
      if (v12 != -64)
      {
        goto LABEL_47;
      }
    }

    else if (v12 != 64)
    {
      goto LABEL_24;
    }
  }

  if (v8 == 63)
  {
    goto LABEL_37;
  }

  if (v8 >= -64)
  {
LABEL_17:
    if (v8 < 0)
    {
      goto LABEL_42;
    }

    v14 = 0;
    goto LABEL_28;
  }

LABEL_15:
  v14 = 0;
  if (a2 < 0.0)
  {
LABEL_32:
    LOBYTE(v6) = 0;
    v14 = -v14;
  }

  else
  {
LABEL_34:
    LOBYTE(v6) = 0;
  }

LABEL_35:
  *a1 = v14;
  *(a1 + 8) = v6;
  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation9JSONErrorO(uint64_t a1)
{
  if ((*(a1 + 48) & 0xFu) <= 0xB)
  {
    return *(a1 + 48) & 0xF;
  }

  else
  {
    return (*a1 + 12);
  }
}

uint64_t JSONDecoderImpl.KeyedContainer.nestedUnkeyedContainer(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v69 = a3;
  v65 = a2;
  v62 = a7;
  v12 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v61 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Optional();
  v63 = *(v14 - 8);
  v64 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v57 - v18;
  v66 = a6;
  v20 = dispatch thunk of CodingKey.stringValue.getter();
  if (!*(a4 + 16))
  {

    goto LABEL_6;
  }

  v60 = v7;
  v22 = specialized __RawDictionaryStorage.find<A>(_:)(v20, v21);
  v24 = v23;

  if ((v24 & 1) == 0)
  {
LABEL_6:
    v32 = type metadata accessor for DecodingError();
    v64 = swift_allocError();
    v34 = v33;
    v65 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss9CodingKey_p_s13DecodingErrorO7ContextVtMd) + 48);
    v35 = v66;
    v34[3] = a5;
    v34[4] = v35;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v34);
    (*(v12 + 16))(boxed_opaque_existential_0, a1, a5);
    _CodingPathNode.path.getter(v69);
    v67 = 0;
    v68 = 0xE000000000000000;
    _StringGuts.grow(_:)(39);

    v67 = 0xD00000000000001DLL;
    v68 = 0x8000000181482300;
    v37 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1865CB0E0](v37);

    MEMORY[0x1865CB0E0](2238496, 0xE300000000000000);
    v38 = dispatch thunk of CodingKey.stringValue.getter();
    MEMORY[0x1865CB0E0](v38);

    MEMORY[0x1865CB0E0](3025186, 0xE300000000000000);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v32 - 8) + 104))(v34, *MEMORY[0x1E69E6AF0], v32);
    return swift_willThrow();
  }

  v25 = *(a4 + 56) + 24 * v22;
  v26 = *(v25 + 8);
  v58 = *v25;
  v59 = *(v25 + 16);
  (*(v12 + 16))(v19, a1, a5);
  (*(v12 + 56))(v19, 0, 1, a5);
  v27 = v63;
  v28 = v64;
  (*(v63 + 16))(v16, v19, v64);
  if ((*(v12 + 48))(v16, 1, a5) == 1)
  {
    v29 = *(v27 + 8);
    v29(v19, v28);
    v29(v16, v28);
    v30 = v69;

    v31 = v65;
    goto LABEL_13;
  }

  v40 = *(v12 + 32);
  v41 = v61;
  v40(v61, v16, a5);
  v30 = swift_allocObject();
  v42 = v66;
  *(v30 + 40) = a5;
  *(v30 + 48) = v42;
  v43 = __swift_allocate_boxed_opaque_existential_0((v30 + 16));
  v40(v43, v41, a5);
  (*(v27 + 8))(v19, v28);
  v44 = v69;
  *(v30 + 56) = v69;
  if (v44 >> 62)
  {
    if (v44 >> 62 != 1)
    {
      v31 = v65;
      v47 = 1;
      goto LABEL_12;
    }

    v45 = ((v44 & 0x3FFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v45 = (v44 + 64);
  }

  v31 = v65;
  v46 = *v45;

  v47 = v46 + 1;
  if (!__OFADD__(v46, 1))
  {
LABEL_12:
    *(v30 + 64) = v47;
LABEL_13:
    v19 = *(v31 + 160);
    *(v31 + 160) = v30;
    v30 = *(v31 + 16);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v31 + 16) = v30;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_14;
    }

    goto LABEL_27;
  }

  __break(1u);
LABEL_27:
  v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v30 + 16) + 1, 1, v30);
  *(v31 + 16) = v30;
LABEL_14:
  v49 = v58;
  v50 = v59;
  v52 = *(v30 + 16);
  v51 = *(v30 + 24);
  if (v52 >= v51 >> 1)
  {
    v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v51 > 1), v52 + 1, 1, v30);
  }

  *(v30 + 16) = v52 + 1;
  v53 = v30 + 24 * v52;
  *(v53 + 32) = v49;
  *(v53 + 40) = v26;
  *(v53 + 48) = v50;
  *(v31 + 16) = v30;
  v54 = v60;
  JSONDecoderImpl.unkeyedContainer()(v62);
  if (v54)
  {
    *(v31 + 160) = v19;

    v55 = *(v31 + 16);
    if (*(v55 + 2))
    {
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v56 = *(v55 + 2);
        if (v56)
        {
LABEL_24:
          *(v55 + 2) = v56 - 1;
          *(v31 + 16) = v55;
        }

        goto LABEL_20;
      }
    }

    else
    {
      __break(1u);
    }

    v55 = specialized _ArrayBuffer._consumeAndCreateNew()(v55);
    v56 = *(v55 + 2);
    if (v56)
    {
      goto LABEL_24;
    }

LABEL_20:
    __break(1u);
  }

  *(v31 + 160) = v19;

  v55 = *(v31 + 16);
  if (!*(v55 + 2))
  {
    __break(1u);
LABEL_32:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v55);
    v55 = result;
    v56 = *(result + 16);
    if (v56)
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

  v56 = *(v55 + 2);
  if (v56)
  {
    goto LABEL_24;
  }

LABEL_33:
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type JSONError and conformance JSONError()
{
  result = lazy protocol witness table cache variable for type JSONError and conformance JSONError;
  if (!lazy protocol witness table cache variable for type JSONError and conformance JSONError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JSONError and conformance JSONError);
  }

  return result;
}

void NSKVOForwardInvocation(void *a1, const char *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  Class = object_getClass(a1);
  IndexedIvars = object_getIndexedIvars(Class);
  v8 = [a3 selector];
  os_unfair_recursive_lock_lock_with_options();
  v9 = [CFDictionaryGetValue(IndexedIvars[3] v8)];
  os_unfair_recursive_lock_unlock();
  if (v9)
  {
    [a1 willChangeValueForKey:v9];
    strcpy(&__source, "_original_");
    Name = sel_getName(v8);
    v11 = strlen(Name);
    MEMORY[0x1EEE9AC00](v11);
    v13 = &v14 - ((v12 + 26) & 0xFFFFFFFFFFFFFFF0);
    strlcpy(v13, &__source, v12 + 11);
    strlcat(v13, Name, v11 + 11);
    [a3 setSelector:sel_registerName(v13)];
    [a3 invoke];
    [a1 didChangeValueForKey:v9];
  }

  else
  {
    __source.receiver = a1;
    __source.super_class = *IndexedIvars;
    objc_msgSendSuper(&__source, a2, a3);
  }
}

BOOL specialized static CGRect._conditionallyBridgeFromObjectiveC(_:result:)(void *a1, uint64_t a2)
{
  v4 = [a1 objCType];
  type metadata accessor for CGRect(0);
  v5 = strcmp(v4, "{CGRect={CGPoint=dd}{CGSize=dd}}");
  if (v5)
  {
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 1;
  }

  else
  {
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    [a1 getValue:a2 size:32];
  }

  return v5 == 0;
}

unint64_t _JSONKeyedEncodingContainer.encode(_:forKey:)(unint64_t a1, uint64_t a2, float a3)
{
  *&v156 = a3;
  v7 = *(a2 + 16);
  v158 = type metadata accessor for Optional();
  v8 = *(v158 - 8);
  v9.n128_f64[0] = MEMORY[0x1EEE9AC00](v158);
  v11 = &v144 - v10;
  v153 = v3;
  v12 = *v3;
  v13 = *(v7 - 8);
  v14 = *(v13 + 16);
  v155 = a1;
  v154 = v14;
  v14(v11, a1, v7, v9);
  v151 = v13;
  (*(v13 + 56))(v11, 0, 1, v7);
  v170[0] = *(v12 + 104);
  v15 = *(v12 + 136);
  v170[1] = *(v12 + 120);
  v170[2] = v15;
  if ((v156 & 0x7FFFFFFF) <= 0x7F7FFFFF)
  {
    v150 = v7;
    v22 = a2;
    v166 = Float.description.getter();
    v167 = v23;

    v24._countAndFlagsBits = 12334;
    v24._object = 0xE200000000000000;
    v25 = String.hasSuffix(_:)(v24);

    if (v25)
    {
      specialized RangeReplaceableCollection<>.removeLast(_:)(2uLL);
    }

    (*(v8 + 8))(v11, v158);
    v26 = v166;
    v156 = v167;
    v152 = 1;
    v16 = *(v22 + 24);
    v7 = v150;
  }

  else
  {
    v16 = *(a2 + 24);
    v17 = v157;
    v18 = specialized static JSONEncoderValue.nonConformantNumber<A, B>(from:with:encoder:_:)(v170, v12, v11, v7, v16, a3);
    v157 = v17;
    if (v17)
    {
      return (*(v8 + 8))(v11, v158);
    }

    v156 = v19;
    v26 = v18;
    v152 = v20;
    (*(v8 + 8))(v11, v158);
  }

  v27 = *(v153 + 16);
  v155 = *(v153 + 8);
  v168 = v7;
  v169 = v16;
  __swift_allocate_boxed_opaque_existential_0(&v166);
  (v154)();
  v28 = *(v12 + 152);
  if (!v28)
  {
    v31 = dispatch thunk of CodingKey.stringValue.getter();
    v32 = v41;
    goto LABEL_20;
  }

  if (v28 != 1)
  {
    v45 = *(v12 + 160);

    v46 = __JSONEncoder.codingPath.getter();
    v47 = _CodingPathNode.path.getter(v27);
    v162 = v46;
    specialized Array.append<A>(contentsOf:)(v47);
    v48 = v162;
    outlined init with copy of Hashable & Sendable(&v166, &v162);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v150 = v26;
    v158 = v45;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v48[2] + 1, 1, v48);
    }

    v51 = v48[2];
    v50 = v48[3];
    if (v51 >= v50 >> 1)
    {
      v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v50 > 1), v51 + 1, 1, v48);
    }

    v52 = __swift_mutable_project_boxed_opaque_existential_1(&v162, v164);
    v53 = MEMORY[0x1EEE9AC00](v52);
    v55 = &v144 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v56 + 16))(v55, v53);
    v160 = v7;
    v161 = v16;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v159);
    (*(v151 + 4))(boxed_opaque_existential_0, v55, v7);
    v48[2] = v51 + 1;
    outlined init with take of Equatable(&v159, &v48[5 * v51 + 4]);
    __swift_destroy_boxed_opaque_existential_1(&v162);
    (v28)(&v162, v48);

    LOBYTE(v7) = v165;
    __swift_project_boxed_opaque_existential_1(&v162, v164);
    v31 = dispatch thunk of CodingKey.stringValue.getter();
    v32 = v58;
    sub_1807A5C7C(v28);
    __swift_destroy_boxed_opaque_existential_1(&v162);
    goto LABEL_91;
  }

  v29 = dispatch thunk of CodingKey.stringValue.getter();
  v31 = v29;
  v32 = v30;
  if ((v30 & 0x2000000000000000) != 0)
  {
    v33 = HIBYTE(v30) & 0xF;
  }

  else
  {
    v33 = v29 & 0xFFFFFFFFFFFFLL;
  }

  if (!v33)
  {
LABEL_20:
    v42 = v155;
    v43 = v26;
    v44 = v156;
    goto LABEL_92;
  }

  v34 = String.index(after:)();
  v35 = 7;
  if (((v32 >> 60) & ((v31 & 0x800000000000000) == 0)) != 0)
  {
    v35 = 11;
  }

  v148 = 4 * v33;
  if (4 * v33 < v34 >> 14)
  {
    __break(1u);
LABEL_123:
    __break(1u);
    goto LABEL_124;
  }

  v147 = v35 | (v33 << 16);
  v158 = v31;
  v149 = v32;
  v36 = String.subscript.getter();
  v40 = v39;
  v150 = v26;
  if ((v36 ^ v37) >= 0x4000)
  {
    v42 = v36;
    v28 = v37;
    v59 = v38;
    v151 = MEMORY[0x1E69E7CC0];
    v32 = 0x700030001;
    v154 = 15;
    while (1)
    {
      v43 = Substring.UnicodeScalarView.index(before:)();
      v60 = Substring.UnicodeScalarView.subscript.getter();
      v61 = v60;
      v62 = BuiltInUnicodeScalarSet._bitmapPtrForPlane(_:)(BYTE2(v60), 1u);
      if (!BuiltInUnicodeScalarSet._isMemberOfBitmap(_:_:)(v61, v62, 0x700030001))
      {
        break;
      }

      v7 = v42;
LABEL_29:
      v63 = Substring.UnicodeScalarView.index(after:)();

      v11 = (v7 >> 14);
      v64 = v154;
      if (v7 >> 14 < v154 >> 14 || v63 >> 14 < v11)
      {
        __break(1u);
LABEL_126:
        __break(1u);
LABEL_127:
        __break(1u);
LABEL_128:
        __break(1u);
LABEL_129:
        __break(1u);
        goto LABEL_130;
      }

      v28 = v151;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v28 + 2) + 1, 1, v28);
        v28 = result;
      }

      v66 = *(v28 + 2);
      v65 = *(v28 + 3);
      if (v66 >= v65 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v65 > 1), v66 + 1, 1, v28);
        v28 = result;
      }

      *(v28 + 2) = v66 + 1;
      v151 = v28;
      v67 = &v28[16 * v66];
      *(v67 + 4) = v64;
      *(v67 + 5) = v7;
      if (v148 < v11)
      {
        goto LABEL_126;
      }

      v68 = String.subscript.getter();
      v72 = v71;
      if ((v68 ^ v69) < 0x4000)
      {
        goto LABEL_81;
      }

      v43 = v68;
      v28 = v69;
      v42 = v70;
      v144 = v7 >> 14;
      v154 = Substring.UnicodeScalarView.index(before:)();
      v73 = Substring.UnicodeScalarView.subscript.getter();
      v74 = v73;
      v44 = 0x700030000;
      v75 = BuiltInUnicodeScalarSet._bitmapPtrForPlane(_:)(BYTE2(v73), 0);
      if (!BuiltInUnicodeScalarSet._isMemberOfBitmap(_:_:)(v74, v75, 0x700030000))
      {
        v91 = HIBYTE(v72) & 0xF;
        if ((v72 & 0x2000000000000000) == 0)
        {
          v91 = v42 & 0xFFFFFFFFFFFFLL;
        }

        v153 = v91;
        v146 = v72 & 0xFFFFFFFFFFFFFFLL;
        v145 = (v72 & 0xFFFFFFFFFFFFFFFLL) + 32;
        v76 = v43;
        v32 = v149;
        while ((v76 ^ v154) >= 0x4000)
        {
          v86 = _StringGuts.validateInclusiveScalarIndex(_:)(v76, v42, v72);
          v59 = v86 >> 16;
          if (v86 >> 16 >= v153)
          {
            goto LABEL_101;
          }

          if ((v72 & 0x1000000000000000) != 0)
          {
            v76 = String.UnicodeScalarView._foreignIndex(after:)();
          }

          else
          {
            if ((v72 & 0x2000000000000000) != 0)
            {
              v162 = v42;
              v163 = v146;
              v94 = *(&v162 + v59);
            }

            else
            {
              v93 = v145;
              if ((v42 & 0x1000000000000000) == 0)
              {
                v93 = _StringObject.sharedUTF8.getter();
              }

              v94 = *(v93 + v59);
            }

            v95 = v94;
            v96 = __clz(v94 ^ 0xFF) - 24;
            if (v95 >= 0)
            {
              LOBYTE(v96) = 1;
            }

            v76 = ((v59 + v96) << 16) | 5;
          }

          v11 = Substring.UnicodeScalarView.subscript.getter();
          v92 = BuiltInUnicodeScalarSet._bitmapPtrForPlane(_:)(BYTE2(v11), 0);
          if (BuiltInUnicodeScalarSet._isMemberOfBitmap(_:_:)(v11, v92, 0x700030000))
          {
            goto LABEL_39;
          }
        }

LABEL_81:
        v154 = v7;
        goto LABEL_82;
      }

      v76 = v43;
LABEL_39:
      v77 = Substring.UnicodeScalarView.index(after:)();

      if (v77 >> 14 < v76 >> 14)
      {
        goto LABEL_127;
      }

      v11 = v158;
      result = String.index(after:)();
      if (v76 >> 14 != result >> 14)
      {
        result = String.index(before:)();
        if (v144 > result >> 14)
        {
          goto LABEL_129;
        }

        v11 = result;
        v79 = *(v151 + 2);
        v78 = *(v151 + 3);
        if (v79 >= v78 >> 1)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v78 > 1), v79 + 1, 1, v151);
          v151 = result;
        }

        v80 = v151;
        *(v151 + 2) = v79 + 1;
        v81 = &v80[16 * v79];
        *(v81 + 4) = v7;
        *(v81 + 5) = v11;
        v7 = v11;
      }

      v154 = v7;
      if (v148 < v77 >> 14)
      {
        goto LABEL_128;
      }

      v42 = String.subscript.getter();
      v28 = v82;
      v59 = v83;
      v40 = v84;
      v32 = 0x700030001;
      if ((v42 ^ v82) < 0x4000)
      {
        goto LABEL_82;
      }
    }

    if ((v40 & 0x2000000000000000) != 0)
    {
      v44 = HIBYTE(v40) & 0xF;
    }

    else
    {
      v44 = v59 & 0xFFFFFFFFFFFFLL;
    }

    v153 = v40 & 0xFFFFFFFFFFFFFFLL;
    v146 = (v40 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v7 = v42;
    while ((v7 ^ v43) >= 0x4000)
    {
      v86 = _StringGuts.validateInclusiveScalarIndex(_:)(v7, v59, v40);
      v7 = v86 >> 16;
      if (v86 >> 16 >= v44)
      {
        __break(1u);
LABEL_101:
        __break(1u);
        goto LABEL_102;
      }

      if ((v40 & 0x1000000000000000) != 0)
      {
        v7 = String.UnicodeScalarView._foreignIndex(after:)();
      }

      else
      {
        if ((v40 & 0x2000000000000000) != 0)
        {
          v162 = v59;
          v163 = v153;
          v88 = *(&v162 + v7);
        }

        else
        {
          v87 = v146;
          if ((v59 & 0x1000000000000000) == 0)
          {
            v87 = _StringObject.sharedUTF8.getter();
          }

          v88 = *(v87 + v7);
        }

        v89 = v88;
        v90 = __clz(v88 ^ 0xFF) - 24;
        if (v89 >= 0)
        {
          LOBYTE(v90) = 1;
        }

        v7 = ((v7 + v90) << 16) | 5;
      }

      v11 = Substring.UnicodeScalarView.subscript.getter();
      v32 = 0x700030001;
      v85 = BuiltInUnicodeScalarSet._bitmapPtrForPlane(_:)(BYTE2(v11), 1u);
      if (BuiltInUnicodeScalarSet._isMemberOfBitmap(_:_:)(v11, v85, 0x700030001))
      {
        goto LABEL_29;
      }
    }
  }

  else
  {
    v154 = 15;
    v151 = MEMORY[0x1E69E7CC0];
  }

LABEL_82:

  v7 = v154;
  if (v148 < v154 >> 14)
  {
    goto LABEL_123;
  }

  v28 = v151;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_124:
    v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v28 + 2) + 1, 1, v28);
  }

  v98 = *(v28 + 2);
  v97 = *(v28 + 3);
  v99 = v98 + 1;
  if (v98 >= v97 >> 1)
  {
    v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v97 > 1), v98 + 1, 1, v28);
  }

  *(v28 + 2) = v99;
  v100 = &v28[16 * v98];
  v101 = v147;
  *(v100 + 4) = v7;
  *(v100 + 5) = v101;
  v162 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v99, 0);
  v7 = v162;
  v151 = v28;
  v102 = v28 + 40;
  do
  {
    String.subscript.getter();
    v103 = Substring.lowercased()();

    v162 = v7;
    v105 = *(v7 + 16);
    v104 = *(v7 + 24);
    if (v105 >= v104 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v104 > 1), v105 + 1, 1);
      v7 = v162;
    }

    v102 += 16;
    *(v7 + 16) = v105 + 1;
    *(v7 + 16 * v105 + 32) = v103;
    --v99;
  }

  while (v99);

  v162 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
  lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd);
  v31 = BidirectionalCollection<>.joined(separator:)();
  v107 = v106;

  v32 = v107;
LABEL_91:
  v43 = v150;
  v44 = v156;
  v42 = v155;
LABEL_92:
  __swift_destroy_boxed_opaque_existential_1(&v166);
  v108 = swift_isUniquelyReferenced_nonNull_native();
  v166 = *(v42 + 16);
  v59 = v166;
  *(v42 + 16) = 0x8000000000000000;
  v11 = v31;
  v86 = specialized __RawDictionaryStorage.find<A>(_:)(v31, v32);
  v110 = *(v59 + 16);
  v111 = (v109 & 1) == 0;
  v112 = __OFADD__(v110, v111);
  v113 = v110 + v111;
  if (v112)
  {
LABEL_102:
    __break(1u);
  }

  else
  {
    LOBYTE(v7) = v109;
    if (*(v59 + 24) < v113)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v113, v108);
      v114 = v166;
      v86 = specialized __RawDictionaryStorage.find<A>(_:)(v11, v32);
      if ((v7 & 1) == (v115 & 1))
      {
        goto LABEL_98;
      }

      v86 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
    }

    if (v108)
    {
      v114 = v59;
LABEL_98:
      if (v7)
      {
LABEL_99:
        v116 = v86;

        v117 = *(v114 + 56) + 24 * v116;
        v118 = *v117;
        v119 = *(v117 + 8);
        *v117 = v43;
        *(v117 + 8) = v44;
        v120 = *(v117 + 16);
        *(v117 + 16) = v152;
        result = outlined consume of JSONFuture(v118, v119, v120);
LABEL_121:
        *(v42 + 16) = v114;
        return result;
      }

LABEL_120:
      result = specialized _NativeDictionary._insert(at:key:value:)(v86, v11, v32, v43, v44, v152, v114);
      goto LABEL_121;
    }
  }

  v158 = v86;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation10JSONFutureOGMd);
  v121 = static _DictionaryStorage.copy(original:)();
  v114 = v121;
  if (!*(v59 + 16))
  {
LABEL_119:

    v86 = v158;
    if (v7)
    {
      goto LABEL_99;
    }

    goto LABEL_120;
  }

  v149 = v32;
  v156 = v44;
  v150 = v43;
  result = v121 + 64;
  v122 = (v59 + 64);
  v123 = ((1 << *(v114 + 32)) + 63) >> 6;
  v154 = v59 + 64;
  if (v114 != v59 || result >= v122 + 8 * v123)
  {
    result = memmove(result, v122, 8 * v123);
  }

  v124 = 0;
  *(v114 + 16) = *(v59 + 16);
  v125 = 1 << *(v59 + 32);
  v126 = *(v59 + 64);
  v127 = -1;
  if (v125 < 64)
  {
    v127 = ~(-1 << v125);
  }

  v128 = v127 & v126;
  v129 = (v125 + 63) >> 6;
  if ((v127 & v126) != 0)
  {
    do
    {
      v130 = __clz(__rbit64(v128));
      v128 &= v128 - 1;
LABEL_116:
      v133 = v130 | (v124 << 6);
      v134 = 16 * v133;
      v135 = (*(v59 + 48) + 16 * v133);
      v137 = *v135;
      v136 = v135[1];
      v133 *= 24;
      v138 = *(v59 + 56) + v133;
      v139 = *v138;
      v140 = *(v138 + 8);
      v141 = (*(v114 + 48) + v134);
      v142 = *(v138 + 16);
      *v141 = v137;
      v141[1] = v136;
      v143 = *(v114 + 56) + v133;
      *v143 = v139;
      *(v143 + 8) = v140;
      *(v143 + 16) = v142;

      result = outlined copy of JSONFuture(v139, v140, v142);
    }

    while (v128);
  }

  v131 = v124;
  while (1)
  {
    v124 = v131 + 1;
    if (__OFADD__(v131, 1))
    {
      break;
    }

    if (v124 >= v129)
    {
      v43 = v150;
      v44 = v156;
      v42 = v155;
      v32 = v149;
      goto LABEL_119;
    }

    v132 = *(v154 + 8 * v124);
    ++v131;
    if (v132)
    {
      v130 = __clz(__rbit64(v132));
      v128 = (v132 - 1) & v132;
      goto LABEL_116;
    }
  }

LABEL_130:
  __break(1u);
  return result;
}

char *Data.InlineData.replaceSubrange(_:with:count:)(char *result, uint64_t a2, void *__src, size_t __len)
{
  v5 = *(v4 + 14);
  if (v5 < result || v5 < a2)
  {
    __break(1u);
    goto LABEL_22;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v9 = &v5[-v8];
  if (__OFSUB__(v5, v8))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v11 = &v9[__len];
  if (__OFADD__(v9, __len))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (__OFSUB__(v11, v5))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v11 != v5)
  {
    if (__OFADD__(result, __len))
    {
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    if (__OFADD__(result, v8))
    {
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v13 = __OFSUB__(v5, result);
    v14 = v5 - result;
    if (v13)
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    if (__OFSUB__(v14, v8))
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    result = memmove(&result[__len + v4], (v4 + a2), v14 - (a2 - result));
  }

  if (!__len)
  {
LABEL_18:
    if ((v11 & 0x8000000000000000) == 0)
    {
      if (v11 <= 0xFF)
      {
        *(v4 + 14) = v11;
        return result;
      }

      goto LABEL_27;
    }

LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (__src)
  {
    result = memmove(&v7[v4], __src, __len);
    goto LABEL_18;
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t URLComponents.host.getter()
{
  v71 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 80);
  v2 = *(v0 + 152);
  if (v1)
  {
    v3 = *(v0 + 72);
    v4 = *(v0 + 80);
    goto LABEL_29;
  }

  v5 = *v0;
  v6 = *(v0 + 10);
  v7 = *(v0 + 11);
  v8 = *(v0 + 48);
  v9 = *(v0 + 64);
  if (*(v0 + 12) == 1 && v5 && (v5[120] & 1) == 0)
  {
    v10 = *(v0 + 80);
    v11 = String.subscript.getter();
    v3 = MEMORY[0x1865CAE80](v11);
    v4 = v12;

    v1 = v10;
    goto LABEL_29;
  }

  if (!*(v0 + 96))
  {
    goto LABEL_28;
  }

  if (!*(v0 + 13) || !v5 || (v5[144] & 1) != 0)
  {
    if (!v8)
    {
      goto LABEL_18;
    }

LABEL_28:
    v3 = 0;
    v4 = 0xE000000000000000;
    goto LABEL_29;
  }

  v68 = 0;
  v13 = String.subscript.getter();
  if (!((v13 ^ v14) >> 14))
  {

    v1 = v68;
    if (!v8)
    {
      goto LABEL_18;
    }

    goto LABEL_28;
  }

  v17 = v13;
  v18 = v14;
  v66 = v15;
  v67 = v16;
  _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SiSg_Tg5061_ss17FixedWidthIntegerPsE_5radixxSgqd___SitcSyRd__lufcADSRys5I15VGXEfU_Si_SsTG5SiTf1cn_n(v13, v14, v15, v16, 10);
  if ((v19 & 0x100) != 0)
  {
    specialized _parseInteger<A, B>(ascii:radix:)(v17, v18, v66, v67, 10);
  }

  v20 = v19;

  v3 = 0;
  v4 = 0xE000000000000000;
  v1 = v68;
  if ((v20 & 1) != 0 && !v8)
  {
LABEL_18:
    if (v6 && v5 && (v5[72] & 1) == 0)
    {
      v23 = v1;
      v24 = String.subscript.getter();
      MEMORY[0x1865CAE80](v24);

      v1 = v23;
    }

    else
    {
      if (!v9)
      {
        v22 = 0;
        if (!v7 || !v5)
        {
          return v22;
        }

        if (v5[96])
        {
          return 0;
        }

        v50 = v1;
        v51 = String.subscript.getter();
        MEMORY[0x1865CAE80](v51);

        v1 = v50;
      }

      v21 = v1;

      v1 = v21;
    }

    goto LABEL_28;
  }

LABEL_29:
  v25 = v3 & 0xFFFFFFFFFFFFLL;
  if ((v4 & 0x2000000000000000) != 0)
  {
    v26 = HIBYTE(v4) & 0xF;
  }

  else
  {
    v26 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v26)
  {

    return 0;
  }

  if (v2)
  {
    v69 = v3;
    v70 = v4;
    MEMORY[0x1EEE9AC00](v1);
    v64[0] = &v69;
    v64[1] = MEMORY[0x1E69E7CD0];
    v65 = 4;

    v27 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, &v62, v3, v4);
    if (v28 == 1)
    {
      v22 = _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSS_SS8UTF8ViewVTt2B5(v3, v4, MEMORY[0x1E69E7CD0], 4);
      swift_bridgeObjectRelease_n();
      return v22;
    }

    v22 = v27;
LABEL_63:
    swift_bridgeObjectRelease_n();
    return v22;
  }

  if ((v4 & 0x1000000000000000) != 0)
  {
  }

  else if ((v4 & 0x2000000000000000) != 0)
  {
    v69 = v3;
    v70 = v4 & 0xFFFFFFFFFFFFFFLL;
    MEMORY[0x1EEE9AC00](v1);
    LOBYTE(v65) = 0;
    MEMORY[0x1EEE9AC00](v32);
    v62 = &v69;
    v63 = HIBYTE(v4) & 0xF;

    v22 = _s10Foundation12UIDNAHookICUV13IDNACodedHost33_438666AB1527AE198C118BCABA7FD21510hostBuffer9transcode11allowErrors12createStringSSSgSRyxG_s5Int32Vs13OpaquePointerVSg_SPyxGSgAMSpyxGSgAMSpySo9UIDNAInfoVGSgSpySo10UErrorCodeVGSgtXESbs6UInt32VXEAjS_SitXEts17FixedWidthIntegerRzlFZs4Int8V_Tt3g5(&v69, v63, @nonobjc uidna_nameToUnicodeUTF8(_:_:_:_:_:_:_:), 0, closure #1 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply, v64, closure #2 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply);
    if (v33 != 1)
    {
      goto LABEL_63;
    }
  }

  else
  {
    if ((v3 & 0x1000000000000000) != 0)
    {
      v29 = (v4 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      v52 = v1;
      v53 = _StringObject.sharedUTF8.getter();
      if (!v53)
      {
        v60 = one-time initialization token for idnaTranscoder;

        if (v60 != -1)
        {
          swift_once();
        }

        if (byte_1ED436DC0)
        {
          v22 = 0;
          goto LABEL_63;
        }

        if (swift_stdlib_isStackAllocationSafe())
        {
          __break(1u);
        }

        swift_slowAlloc();
        __break(1u);
        goto LABEL_75;
      }

      v29 = v53;
      v25 = v54;
      v1 = v52;
    }

    MEMORY[0x1EEE9AC00](v1);
    LOBYTE(v65) = 0;
    MEMORY[0x1EEE9AC00](v30);
    v62 = v29;
    v63 = v25;

    v22 = _s10Foundation12UIDNAHookICUV13IDNACodedHost33_438666AB1527AE198C118BCABA7FD21510hostBuffer9transcode11allowErrors12createStringSSSgSRyxG_s5Int32Vs13OpaquePointerVSg_SPyxGSgAMSpyxGSgAMSpySo9UIDNAInfoVGSgSpySo10UErrorCodeVGSgtXESbs6UInt32VXEAjS_SitXEts17FixedWidthIntegerRzlFZs4Int8V_Tt3g5(v29, v25, @nonobjc uidna_nameToUnicodeUTF8(_:_:_:_:_:_:_:), 0, closure #1 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply, v64, closure #2 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply);
    if (v31 != 1)
    {
      goto LABEL_63;
    }
  }

  v69 = v3;
  v70 = v4;
  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol._ephemeralString.getter();
  v34 = String._bridgeToObjectiveCImpl()();

  v35 = [v34 _fastCharacterContents];
  v36 = v34;
  if (v35)
  {
    v69 = v3;
    v70 = v4;
    StringProtocol._ephemeralString.getter();
    v37 = String._bridgeToObjectiveCImpl()();

    v38 = [v37 length];
    v39 = swift_unknownObjectRelease();
    MEMORY[0x1EEE9AC00](v39);
    LOBYTE(v65) = 0;
    MEMORY[0x1EEE9AC00](v40);
    v62 = v35;
    v63 = v38;
    v22 = _s10Foundation12UIDNAHookICUV13IDNACodedHost33_438666AB1527AE198C118BCABA7FD21510hostBuffer9transcode11allowErrors12createStringSSSgSRyxG_s5Int32Vs13OpaquePointerVSg_SPyxGSgAMSpyxGSgAMSpySo9UIDNAInfoVGSgSpySo10UErrorCodeVGSgtXESbs6UInt32VXEAjS_SitXEts17FixedWidthIntegerRzlFZs6UInt16V_Tt3g5(v35);
    swift_bridgeObjectRelease_n();
    return v22;
  }

  v69 = v3;
  v70 = v4;

  v41 = String.init<A>(_:)();
  v43 = v41;
  v44 = v42;
  if ((v42 & 0x1000000000000000) != 0)
  {
    v43 = static String._copying(_:)();
    v56 = v55;

    v44 = v56;
    if ((v56 & 0x2000000000000000) == 0)
    {
      goto LABEL_49;
    }

LABEL_58:
    v69 = v43;
    v70 = v44 & 0xFFFFFFFFFFFFFFLL;
    MEMORY[0x1EEE9AC00](v41);
    LOBYTE(v65) = 0;
    MEMORY[0x1EEE9AC00](v57);
    v62 = &v69;
    v63 = v58;
    v22 = _s10Foundation12UIDNAHookICUV13IDNACodedHost33_438666AB1527AE198C118BCABA7FD21510hostBuffer9transcode11allowErrors12createStringSSSgSRyxG_s5Int32Vs13OpaquePointerVSg_SPyxGSgAMSpyxGSgAMSpySo9UIDNAInfoVGSgSpySo10UErrorCodeVGSgtXESbs6UInt32VXEAjS_SitXEts17FixedWidthIntegerRzlFZs4Int8V_Tt3g5(&v69, v58, @nonobjc uidna_nameToUnicodeUTF8(_:_:_:_:_:_:_:), 0, partial apply for closure #1 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:), v59, partial apply for closure #2 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:));

    swift_bridgeObjectRelease_n();
    return v22;
  }

  if ((v42 & 0x2000000000000000) != 0)
  {
    goto LABEL_58;
  }

LABEL_49:
  if ((v43 & 0x1000000000000000) != 0)
  {
    v45 = (v44 & 0xFFFFFFFFFFFFFFFLL) + 32;
LABEL_51:
    MEMORY[0x1EEE9AC00](v45);
    LOBYTE(v65) = 0;
    MEMORY[0x1EEE9AC00](v46);
    v62 = v47;
    v63 = v48;
    v22 = _s10Foundation12UIDNAHookICUV13IDNACodedHost33_438666AB1527AE198C118BCABA7FD21510hostBuffer9transcode11allowErrors12createStringSSSgSRyxG_s5Int32Vs13OpaquePointerVSg_SPyxGSgAMSpyxGSgAMSpySo9UIDNAInfoVGSgSpySo10UErrorCodeVGSgtXESbs6UInt32VXEAjS_SitXEts17FixedWidthIntegerRzlFZs4Int8V_Tt3g5(v47, v48, @nonobjc uidna_nameToUnicodeUTF8(_:_:_:_:_:_:_:), 0, closure #1 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply, v49, closure #2 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply);
LABEL_52:
    swift_bridgeObjectRelease_n();

    return v22;
  }

  v45 = _StringObject.sharedUTF8.getter();
  if (v45)
  {
    goto LABEL_51;
  }

  if (one-time initialization token for idnaTranscoder != -1)
  {
    swift_once();
  }

  if (byte_1ED436DC0 == 1)
  {
    v22 = 0;
    goto LABEL_52;
  }

LABEL_75:
  if (swift_stdlib_isStackAllocationSafe())
  {
    __break(1u);
  }

  result = swift_slowAlloc();
  __break(1u);
  return result;
}