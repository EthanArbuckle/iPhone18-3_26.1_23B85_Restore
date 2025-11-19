id specialized closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  result = _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSS_SRyAIGTt2B5(a1, a2, a3, a4);
  *a5 = result;
  a5[1] = v7;
  return result;
}

id closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  return partial apply for specialized closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)(a1, a2, a3);
}

{
  return partial apply for specialized closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)(a1, a2, a3);
}

{
  return _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA464509excluding8encodingSSSgShys5UInt8VG_SSAAE0D0VtFAFSRyAHGXEfU_SS_TG5TA_0(a1, a2, a3);
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, char a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2;
  v6 = (a4[7] + 16 * result);
  *v6 = a3;
  v6[1] = a6;
  v7 = a4[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v9;
  }

  return result;
}

uint64_t TimeZoneCache.State.bridgedOffsetFixed(_:)(uint64_t a1)
{
  v4 = v1;
  v6 = *(v1 + 88);
  if (*(v6 + 16))
  {
    v7 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
    if (v8)
    {
      v2 = *(*(v6 + 56) + 8 * v7);
      v9 = v2;
      return v2;
    }
  }

  v10 = *(v4 + 40);
  if (!*(v10 + 16) || (v11 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v12 & 1) == 0))
  {
    type metadata accessor for _TimeZoneGMTICU();
    swift_allocObject();
    v20 = _TimeZoneGMTICU.init(secondsFromGMT:)(a1);
    if (!v20)
    {
      return 0;
    }

    v30 = v20;
    v19 = a1;
    if (a1 < 0)
    {
      v19 = -a1;
      if (__OFSUB__(0, a1))
      {
        goto LABEL_40;
      }
    }

    v3 = lazy protocol witness table accessor for type _TimeZoneAutoupdating and conformance _TimeZoneAutoupdating(&lazy protocol witness table cache variable for type _TimeZoneGMTICU and conformance _TimeZoneGMTICU, type metadata accessor for _TimeZoneGMTICU);
    v31 = type metadata accessor for _NSSwiftTimeZone();
    v32 = objc_allocWithZone(v31);
    v33 = &v32[OBJC_IVAR____NSSwiftTimeZone_timeZone];
    *v33 = v30;
    v33[1] = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCyAA16_NSSwiftTimeZoneC0C0V_GMd);
    v34 = swift_allocObject();
    *(v34 + 32) = 0;
    *(v34 + 16) = xmmword_18122E880;
    *&v32[OBJC_IVAR____NSSwiftTimeZone_lock] = v34;
    v106.receiver = v32;
    v106.super_class = v31;

    v2 = objc_msgSendSuper2(&v106, sel_init);
    if (__ROR8__(0xFEDCBA987654321 * v19 + 0x91A2B3C4D5E6F8, 3) > 0x2468ACF13579BEuLL)
    {

      return v2;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v105 = *(v4 + 40);
    v36 = v105;
    v20 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
    v38 = v105[2];
    v39 = (v37 & 1) == 0;
    v24 = __OFADD__(v38, v39);
    v40 = v38 + v39;
    if (v24)
    {
      goto LABEL_41;
    }

    v19 = v37;
    if (v105[3] >= v40)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v41 = v105;
        if (v37)
        {
LABEL_21:
          v43 = (*(v41 + 56) + 16 * v20);
          *v43 = v30;
          v43[1] = v3;
          swift_unknownObjectRelease();
          goto LABEL_28;
        }
      }

      else
      {
        v95 = v20;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySi10Foundation17_TimeZoneProtocol_pGMd);
        v69 = static _DictionaryStorage.copy(original:)();
        v41 = v69;
        if (v105[2])
        {
          v70 = (v69 + 64);
          v98 = (v105 + 8);
          v71 = ((1 << *(v41 + 32)) + 63) >> 6;
          if (v41 != v105 || v70 >= &v98[8 * v71])
          {
            memmove(v70, v98, 8 * v71);
          }

          __srca = 0;
          *(v41 + 16) = v105[2];
          v72 = 1 << *(v36 + 32);
          v73 = v36[8];
          v74 = -1;
          if (v72 < 64)
          {
            v74 = ~(-1 << v72);
          }

          v75 = v74 & v73;
          v76 = (v72 + 63) >> 6;
          if ((v74 & v73) != 0)
          {
            do
            {
              v77 = __clz(__rbit64(v75));
              v75 &= v75 - 1;
              v78 = __srca;
LABEL_73:
              v81 = v77 | (v78 << 6);
              v82 = *(v36[7] + 16 * v81);
              *(*(v41 + 48) + 8 * v81) = *(v36[6] + 8 * v81);
              *(*(v41 + 56) + 16 * v81) = v82;
              swift_unknownObjectRetain();
            }

            while (v75);
          }

          v79 = __srca;
          while (1)
          {
            v78 = v79 + 1;
            if (__OFADD__(v79, 1))
            {
              break;
            }

            if (v78 >= v76)
            {
              goto LABEL_89;
            }

            v80 = *&v98[8 * v78];
            ++v79;
            if (v80)
            {
              v77 = __clz(__rbit64(v80));
              v75 = (v80 - 1) & v80;
              __srca = v78;
              goto LABEL_73;
            }
          }

LABEL_94:
          __break(1u);
LABEL_95:
          __break(1u);
          goto LABEL_96;
        }

LABEL_89:

        v20 = v95;
        if (v19)
        {
          goto LABEL_21;
        }
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v40, isUniquelyReferenced_nonNull_native);
      v41 = v105;
      v20 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
      if ((v19 & 1) != (v42 & 1))
      {
        goto LABEL_96;
      }

      if (v19)
      {
        goto LABEL_21;
      }
    }

    specialized _NativeDictionary._insert(at:key:value:)(v20, a1, v30, v41);
LABEL_28:
    *(v4 + 40) = v41;
    v3 = v2;
    v44 = swift_isUniquelyReferenced_nonNull_native();
    v105 = *(v4 + 88);
    v45 = v105;
    v20 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
    v47 = v105[2];
    v48 = (v46 & 1) == 0;
    v24 = __OFADD__(v47, v48);
    v49 = v47 + v48;
    if (v24)
    {
LABEL_42:
      __break(1u);
LABEL_43:
      v97 = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySi10Foundation16_NSSwiftTimeZoneCGMd);
      v54 = static _DictionaryStorage.copy(original:)();
      v26 = v54;
      if (!*(v19 + 16))
      {
LABEL_58:

        v20 = v97;
        if (v3)
        {
          goto LABEL_10;
        }

        goto LABEL_24;
      }

      v55 = (v54 + 64);
      __src = (v19 + 64);
      v56 = ((1 << *(v26 + 32)) + 63) >> 6;
      if (v26 != v19 || v55 >= &__src[8 * v56])
      {
        memmove(v55, __src, 8 * v56);
      }

      v57 = 0;
      *(v26 + 16) = *(v19 + 16);
      v58 = 1 << *(v19 + 32);
      v59 = *(v19 + 64);
      v60 = -1;
      if (v58 < 64)
      {
        v60 = ~(-1 << v58);
      }

      v61 = v60 & v59;
      v62 = (v58 + 63) >> 6;
      if ((v60 & v59) != 0)
      {
        do
        {
          v63 = __clz(__rbit64(v61));
          v61 &= v61 - 1;
LABEL_56:
          v66 = v63 | (v57 << 6);
          v67 = *(*(v19 + 56) + 8 * v66);
          *(*(v26 + 48) + 8 * v66) = *(*(v19 + 48) + 8 * v66);
          *(*(v26 + 56) + 8 * v66) = v67;
          v68 = v67;
        }

        while (v61);
      }

      v64 = v57;
      while (1)
      {
        v57 = v64 + 1;
        if (__OFADD__(v64, 1))
        {
          break;
        }

        if (v57 >= v62)
        {
          goto LABEL_58;
        }

        v65 = *&__src[8 * v57];
        ++v64;
        if (v65)
        {
          v63 = __clz(__rbit64(v65));
          v61 = (v65 - 1) & v65;
          goto LABEL_56;
        }
      }

      __break(1u);
      goto LABEL_94;
    }

    v50 = v46;
    if (v105[3] >= v49)
    {
      if (v44)
      {
        v26 = v105;
        if (v46)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v96 = v20;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySi10Foundation16_NSSwiftTimeZoneCGMd);
        v83 = static _DictionaryStorage.copy(original:)();
        v26 = v83;
        if (v105[2])
        {
          v84 = (v83 + 64);
          v99 = (v105 + 8);
          v85 = ((1 << *(v26 + 32)) + 63) >> 6;
          if (v26 != v105 || v84 >= &v99[8 * v85])
          {
            memmove(v84, v99, 8 * v85);
          }

          v86 = 0;
          *(v26 + 16) = v105[2];
          v87 = 1 << *(v45 + 32);
          v88 = -1;
          if (v87 < 64)
          {
            v88 = ~(-1 << v87);
          }

          v89 = (v87 + 63) >> 6;
          v90 = v88 & v45[8];
          if (v90)
          {
            do
            {
LABEL_87:
              __srcc = (v90 - 1) & v90;
              v92 = __clz(__rbit64(v90)) | (v86 << 6);
              v93 = *(v45[7] + 8 * v92);
              *(*(v26 + 48) + 8 * v92) = *(v45[6] + 8 * v92);
              *(*(v26 + 56) + 8 * v92) = v93;
              v94 = v93;
              v90 = __srcc;
            }

            while (__srcc);
          }

          v91 = v86;
          while (1)
          {
            v86 = v91 + 1;
            if (__OFADD__(v91, 1))
            {
              goto LABEL_95;
            }

            if (v86 >= v89)
            {
              break;
            }

            v90 = *&v99[8 * v86];
            ++v91;
            if (v90)
            {
              goto LABEL_87;
            }
          }
        }

        v20 = v96;
        if (v50)
        {
LABEL_32:
          v52 = *(v26 + 56);
          v29 = *(v52 + 8 * v20);
          *(v52 + 8 * v20) = v3;

          goto LABEL_33;
        }
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v49, v44);
      v26 = v105;
      v20 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
      if ((v50 & 1) != (v51 & 1))
      {
        goto LABEL_96;
      }

      if (v50)
      {
        goto LABEL_32;
      }
    }

    specialized _NativeDictionary._insert(at:key:value:)(v20, a1, v3, v26);

    goto LABEL_34;
  }

  v13 = v11;
  v14 = *(v10 + 56);
  v15 = type metadata accessor for _NSSwiftTimeZone();
  *__srcb = *(v14 + 16 * v13);
  v16 = objc_allocWithZone(v15);
  *&v16[OBJC_IVAR____NSSwiftTimeZone_timeZone] = *__srcb;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCyAA16_NSSwiftTimeZoneC0C0V_GMd);
  v17 = swift_allocObject();
  *(v17 + 32) = 0;
  *(v17 + 16) = xmmword_18122E880;
  *&v16[OBJC_IVAR____NSSwiftTimeZone_lock] = v17;
  v104.receiver = v16;
  v104.super_class = v15;
  swift_unknownObjectRetain_n();
  v2 = objc_msgSendSuper2(&v104, sel_init);
  v18 = swift_isUniquelyReferenced_nonNull_native();
  v105 = *(v4 + 88);
  v19 = v105;
  v20 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  v22 = *(v19 + 16);
  v23 = (v21 & 1) == 0;
  v24 = __OFADD__(v22, v23);
  v25 = v22 + v23;
  if (v24)
  {
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  LOBYTE(v3) = v21;
  if (*(v19 + 24) >= v25)
  {
    if (v18)
    {
      v26 = v19;
      if (v21)
      {
        goto LABEL_10;
      }

      goto LABEL_24;
    }

    goto LABEL_43;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v25, v18);
  v26 = v105;
  v20 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if ((v3 & 1) == (v27 & 1))
  {
    if (v3)
    {
LABEL_10:
      v28 = *(v26 + 56);
      v29 = *(v28 + 8 * v20);
      *(v28 + 8 * v20) = v2;
      swift_unknownObjectRelease();

LABEL_33:
LABEL_34:
      *(v4 + 88) = v26;
      return v2;
    }

LABEL_24:
    specialized _NativeDictionary._insert(at:key:value:)(v20, a1, v2, v26);
    swift_unknownObjectRelease();
    v29 = v2;
    goto LABEL_33;
  }

LABEL_96:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t closure #1 in _NSSwiftCalendar.timeZone.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v4 = a2;
  }

  else
  {
    if (one-time initialization token for cache != -1)
    {
      swift_once();
    }

    v5 = static TimeZoneCache.cache;
    os_unfair_lock_lock((static TimeZoneCache.cache + 120));
    if (*(v5 + 32))
    {
      a3 = *(v5 + 40);
      v4 = *(v5 + 32);
    }

    else
    {
      v4 = *(v5 + 16);
      if (v4)
      {
        a3 = *(v5 + 24);
        swift_unknownObjectRetain();
      }

      else
      {
        TimeZoneCache.State.findCurrentTimeZone()(&v7);
        v4 = v7;
        a3 = v8;
        *(v5 + 16) = v7;
        *(v5 + 24) = a3;
        swift_unknownObjectRetain();
        swift_unknownObjectRelease();
      }
    }

    swift_unknownObjectRetain();
    os_unfair_lock_unlock((v5 + 120));
  }

  v7 = v4;
  v8 = a3;
  swift_unknownObjectRetain();
  return Calendar.timeZone.setter(&v7);
}

uint64_t Calendar.timeZone.setter(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = a1[1];
  v14 = *a1;
  v15 = v4;
  v5 = v1[1];
  ObjectType = swift_getObjectType();
  (*(v5 + 48))(&v13, ObjectType, v5);
  v12 = v13;
  v7 = specialized static TimeZone.== infix(_:_:)(&v14, &v12);
  swift_unknownObjectRelease();
  if (v7)
  {

    return swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0;
    v15 = 0;
    *&v13 = v3;
    *(&v13 + 1) = v4;
    v9 = (*(v5 + 112))(&v14, &v13, 0, 1, 0, 1, ObjectType, v5);
    v11 = v10;
    swift_unknownObjectRelease();
    result = swift_unknownObjectRelease();
    *v2 = v9;
    v2[1] = v11;
  }

  return result;
}

uint64_t _CalendarGregorian.copy(changingLocale:changingTimeZone:changingFirstWeekday:changingMinimumDaysInFirstWeek:)(uint64_t *a1, uint64_t *a2, uint64_t a3, char a4, uint64_t a5, char a6)
{
  v10 = *a1;
  v27 = a1[1];
  if (*a2)
  {
    v24 = a2[1];
    v11 = *a2;
    v12 = *a1;
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v11 = *(v6 + 112);
    v24 = *(v6 + 120);
    swift_unknownObjectRetain();
    v12 = v10;
    if (v10)
    {
LABEL_3:
      if (a4)
      {
        goto LABEL_4;
      }

LABEL_8:
      v25 = 0;
      if ((a6 & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }
  }

  v12 = *(v6 + 96);
  v27 = *(v6 + 104);
  swift_unknownObjectRetain();
  if ((a4 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  a3 = *(v6 + 128);
  v25 = *(v6 + 136);
  if ((a6 & 1) == 0)
  {
LABEL_5:
    v23 = a5;
    v26 = 0;
    goto LABEL_10;
  }

LABEL_9:
  v23 = *(v6 + 144);
  v26 = *(v6 + 152);
LABEL_10:
  v13 = *(v6 + 88);
  v14 = swift_allocObject();
  v15 = 0;
  v16 = 0;
  inited = 0;
  v18 = 0;
  *(v14 + 48) = 2299161;
  *(v14 + 80) = 0x4290000000000000;
  *(v14 + 136) = 1;
  *(v14 + 152) = 1;
  *(v14 + 16) = xmmword_181232B40;
  *(v14 + 32) = xmmword_181232B50;
  *(v14 + 128) = 0;
  *(v14 + 96) = 0;
  *(v14 + 104) = 0;
  *(v14 + 144) = 0;
  if (v13 == 7)
  {
    type metadata accessor for _LocaleUnlocalized();
    inited = swift_initStaticObject();
    v18 = lazy protocol witness table accessor for type _CalendarGregorian and conformance _CalendarGregorian(&lazy protocol witness table cache variable for type _LocaleUnlocalized and conformance _LocaleUnlocalized, 255, type metadata accessor for _LocaleUnlocalized);
    v16 = 2;
    v15 = 4;
  }

  *(v14 + 112) = v11;
  *(v14 + 120) = v24;
  *(v14 + 56) = xmmword_181232B60;
  *(v14 + 72) = 0xC208951B28000000;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  if (v12)
  {
    swift_unknownObjectRelease();
    v18 = v27;
  }

  else
  {
    v12 = inited;
  }

  swift_unknownObjectRelease();
  *(v14 + 96) = v12;
  *(v14 + 104) = v18;
  v20 = v25;
  if ((a3 - 8) < 0xFFFFFFFFFFFFFFF9)
  {
    v20 = 1;
  }

  if (v20 != 1)
  {
    *(v14 + 128) = a3;
    *(v14 + 136) = 0;
    if (v26)
    {
      if (v13 != 7)
      {
        goto LABEL_31;
      }

      goto LABEL_30;
    }

    goto LABEL_25;
  }

  if (v13 == 7)
  {
    *(v14 + 128) = v16;
    *(v14 + 136) = 0;
    if (v26)
    {
LABEL_30:
      *(v14 + 144) = v15;
      *(v14 + 152) = 0;
      goto LABEL_31;
    }

LABEL_25:
    v21 = 7;
    if (v23 < 7)
    {
      v21 = v23;
    }

    if (v21 <= 1)
    {
      v15 = 1;
    }

    else
    {
      v15 = v21;
    }

    goto LABEL_30;
  }

  if ((v26 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_31:
  *(v14 + 88) = v13;
  lazy protocol witness table accessor for type _CalendarGregorian and conformance _CalendarGregorian(&lazy protocol witness table cache variable for type _CalendarGregorian and conformance _CalendarGregorian, v19, type metadata accessor for _CalendarGregorian);
  return v14;
}

char *_NSSwiftCalendar.init(checkedCalendarIdentifier:)(void *a1)
{
  v2 = v1;
  static Calendar._fromNSCalendarIdentifier(_:)(a1, v52);
  v4 = LOBYTE(v52[0]);
  if (LOBYTE(v52[0]) == 27)
  {

    type metadata accessor for _NSSwiftCalendar();
    swift_deallocPartialClassInstance();
    return 0;
  }

  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v5 = qword_1ED440450;
  os_unfair_lock_lock((qword_1ED440450 + 24));
  v6 = *(v5 + 16);
  if (*(v6 + 16) && (v7 = specialized __RawDictionaryStorage.find<A>(_:)(v4), (v8 & 1) != 0))
  {
    v46 = *(*(v6 + 56) + 16 * v7);
    v9 = *(*(v6 + 56) + 16 * v7);
    swift_unknownObjectRetain();
    os_unfair_lock_unlock((v5 + 24));
    if (v9)
    {
      goto LABEL_44;
    }

    if (!v4)
    {
      goto LABEL_12;
    }
  }

  else
  {
    os_unfair_lock_unlock((v5 + 24));
    if (!v4)
    {
      goto LABEL_12;
    }
  }

  if (v4 != 7)
  {
    v10 = type metadata accessor for _CalendarICU();
    v11 = &lazy protocol witness table cache variable for type _CalendarICU and conformance _CalendarICU;
    v12 = type metadata accessor for _CalendarICU;
    goto LABEL_14;
  }

LABEL_12:
  v10 = type metadata accessor for _CalendarGregorian();
  v11 = &lazy protocol witness table cache variable for type _CalendarGregorian and conformance _CalendarGregorian;
  v12 = type metadata accessor for _CalendarGregorian;
LABEL_14:
  v13 = lazy protocol witness table accessor for type _TimeZoneBridged and conformance _TimeZoneBridged(v11, v12);
  v53 = v4;
  v52[0] = 0;
  v52[1] = 0;
  v51[0] = 0;
  v51[1] = 0;
  v49 = 0;
  v50 = 1;
  v14 = (*(v13 + 16))(&v53, v52, v51, 0, 1, 0, 1, &v49, v10, v13);
  os_unfair_lock_lock((v5 + 24));
  v15 = *(v5 + 16);
  if (*(v15 + 16))
  {
    v16 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
    if (v17)
    {
      v18 = *(*(v15 + 56) + 16 * v16);
LABEL_43:
      v46 = v18;
      swift_unknownObjectRetain();
      os_unfair_lock_unlock((v5 + 24));
      swift_unknownObjectRelease();
LABEL_44:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCy10Foundation8CalendarVSo16os_unfair_lock_sVGMd);
      v40 = swift_allocObject();
      *(v40 + 32) = 0;
      *(v40 + 16) = v46;
      *&v2[OBJC_IVAR____NSSwiftCalendar__lock] = v40;
      v48.receiver = v2;
      v48.super_class = type metadata accessor for _NSSwiftCalendar();
      v41 = objc_msgSendSuper2(&v48, sel_initWithCheckedCalendarIdentifier_, a1);

      if (v41)
      {

        return v41;
      }

      return 0;
    }
  }

  v47 = v10;
  swift_unknownObjectRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v52[0] = *(v5 + 16);
  v20 = v52[0];
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
    LOBYTE(v10) = v22;
    if (*(v20 + 24) < v26)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v26, isUniquelyReferenced_nonNull_native);
      v27 = v52[0];
      v21 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
      if ((v10 & 1) == (v28 & 1))
      {
        goto LABEL_23;
      }

      v21 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v27 = v20;
LABEL_23:
      if (v10)
      {
LABEL_24:
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

LABEL_41:
      specialized _NativeDictionary._insert(at:key:value:)(v21, v4, v14, v27, v47, v13);
      goto LABEL_42;
    }
  }

  v43 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation8CalendarV10IdentifierOAC01_D8Protocol_pGMd);
  v30 = static _DictionaryStorage.copy(original:)();
  v27 = v30;
  if (!*(v20 + 16))
  {
LABEL_40:

    v21 = v43;
    if (v10)
    {
      goto LABEL_24;
    }

    goto LABEL_41;
  }

  result = (v30 + 64);
  __src = (v20 + 64);
  v32 = ((1 << *(v27 + 32)) + 63) >> 6;
  if (v27 != v20 || result >= &__src[8 * v32])
  {
    result = memmove(result, __src, 8 * v32);
  }

  v33 = 0;
  *(v27 + 16) = *(v20 + 16);
  v34 = 1 << *(v20 + 32);
  v35 = -1;
  if (v34 < 64)
  {
    v35 = ~(-1 << v34);
  }

  v42 = (v34 + 63) >> 6;
  v36 = v35 & *(v20 + 64);
  if (v36)
  {
    do
    {
LABEL_38:
      v45 = (v36 - 1) & v36;
      v38 = __clz(__rbit64(v36)) | (v33 << 6);
      v39 = *(*(v20 + 56) + 16 * v38);
      *(*(v27 + 48) + v38) = *(*(v20 + 48) + v38);
      *(*(v27 + 56) + 16 * v38) = v39;
      result = swift_unknownObjectRetain();
      v36 = v45;
    }

    while (v45);
  }

  v37 = v33;
  while (1)
  {
    v33 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      break;
    }

    if (v33 >= v42)
    {
      goto LABEL_40;
    }

    v36 = *&__src[8 * v33];
    ++v37;
    if (v36)
    {
      goto LABEL_38;
    }
  }

  __break(1u);
  return result;
}

NSCompoundPredicate *buildANDPredicate(void *a1, void *a2)
{
  if ((objc_opt_isKindOfClass() & 1) != 0 && [a1 compoundPredicateType] == 1)
  {
    if ((objc_opt_isKindOfClass() & 1) == 0 || [a2 compoundPredicateType] != 1)
    {
      v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:{objc_msgSend(a1, "subpredicates")}];
      [v5 addObject:a2];
      goto LABEL_13;
    }

    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:{objc_msgSend(a1, "subpredicates")}];
  }

  else
  {
    if ((objc_opt_isKindOfClass() & 1) == 0 || [a2 compoundPredicateType] != 1)
    {
      v5 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{a1, a2, 0}];
      goto LABEL_13;
    }

    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{a1, 0}];
  }

  v5 = v4;
  v6 = [a2 subpredicates];
  if (v6)
  {
    [v5 addObjectsFromArray:v6];
  }

LABEL_13:
  v7 = [[NSCompoundPredicate alloc] initWithType:1 subpredicates:v5];

  return v7;
}

uint64_t specialized static RFC3986Parser.parseAuthority(_:into:allowEmptyScheme:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v5 = a2;
  do
  {
    if (result == v5)
    {
      goto LABEL_13;
    }

    v6 = v5 - 1;
    v7 = *(a3 - 1 + v5--);
  }

  while (v7 != 64);
  if (v6 < result)
  {
    goto LABEL_44;
  }

  v8 = 40;
  v9 = 32;
  v10 = 24;
  if (result != v6)
  {
    v11 = result;
    while (*(a3 + v11) != 58)
    {
      if (v6 == ++v11)
      {
        goto LABEL_12;
      }
    }

    *(a4 + 24) = result;
    *(a4 + 32) = v11;
    *(a4 + 40) = 0;
    result = v11 + 1;
    if (v6 < v11 + 1)
    {
      goto LABEL_47;
    }

    v8 = 64;
    v9 = 56;
    v10 = 48;
  }

LABEL_12:
  *(a4 + v10) = result;
  result = v6 + 1;
  *(a4 + v9) = v6;
  *(a4 + v8) = 0;
LABEL_13:
  if (result == a2)
  {
    goto LABEL_33;
  }

  if (*(a3 + result) != 91)
  {
LABEL_19:
    if (result > a2)
    {
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    v13 = result;
    while (1)
    {
      v12 = v13 + 1;
      if (*(a3 + v13) == 58)
      {
        break;
      }

      ++v13;
      if (a2 == v12)
      {
        goto LABEL_33;
      }
    }

    if (a2 - 1 == v13 && (a5 & 1) == 0)
    {
      a2 = v13;
      goto LABEL_33;
    }

    if (v12 > a2)
    {
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
      return result;
    }

    goto LABEL_32;
  }

  if (result > a2)
  {
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v12 = result + 2;
  while (*(a3 + v12 - 2) != 93)
  {
    if (++v12 - a2 == 2)
    {
      goto LABEL_19;
    }
  }

  *(a4 + 185) = 1;
  if (v12 - a2 != 1)
  {
    if (*(a3 + v12 - 1) != 58)
    {
      return 0;
    }

    if (v12 > a2)
    {
      goto LABEL_49;
    }

    v13 = v12 - 1;
LABEL_32:
    *(a4 + 96) = v12;
    *(a4 + 104) = a2;
    a2 = v13;
    *(a4 + 112) = 0;
  }

LABEL_33:
  if (a2 < result)
  {
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v14 = 0;
  *(a4 + 72) = result;
  *(a4 + 80) = a2;
  *(a4 + 88) = 0;
  if (result != a2)
  {
    v15 = ~result + a2;
    v16 = (a3 + result);
    do
    {
      v17 = *v16++;
      v14 = v17 == 37;
    }

    while (v17 != 37 && v15-- != 0);
  }

  *(a4 + 186) = v14;
  return 1;
}

uint64_t lazy protocol witness table accessor for type _TimeZoneBridged and conformance _TimeZoneBridged(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s10Foundation16_TimeZoneBridgedCAcA01_bC8ProtocolAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s10Foundation16_TimeZoneBridgedCAcA01_bC8ProtocolAAWlTm_1(unint64_t *a1, void (*a2)(uint64_t))
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

double one-time initialization function for validCalendarRange()
{
  result = -2.11845067e11;
  static Date.validCalendarRange = xmmword_1812DD7C0;
  return result;
}

id protocol witness for CustomStringConvertible.description.getter in conformance NSObject(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = [*v3 *a3];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)(v4);

  return v5;
}

uint64_t _writeJSONNumber(uint64_t a1, id a2)
{
  v25 = *MEMORY[0x1E69E9840];
  Class = object_getClass(a2);
  if (Class != _NSJSONRoundTrippingNumber)
  {
    v5 = *(a1 + 16);
    if (v5 == 2)
    {
      MEMORY[0x1EEE9AC00](Class);
      v13 = &v23;
      v23 = 0u;
      v24 = 0u;
    }

    else if (v5 == 1)
    {
      v7 = *(a1 + 32);
      v6 = *(a1 + 40);
      if (v6 + 33 >= v7)
      {
        if (v6 + 33 <= 2 * v7)
        {
          v14 = 2 * v7;
        }

        else
        {
          v14 = v6 + 33;
        }

        v8 = MEMORY[0x1865CFE30](*(a1 + 24), v14, 2178024471, 0);
        *(a1 + 24) = v8;
        *(a1 + 32) = v14;
        v6 = *(a1 + 40);
      }

      else
      {
        v8 = *(a1 + 24);
      }

      v13 = (v8 + v6);
    }

    else
    {
      v13 = 0;
    }

    v15 = *[a2 objCType];
    if (v15 <= 0x62)
    {
      if (v15 > 75)
      {
        switch(v15)
        {
          case 'L':
            [a2 unsignedLongValue];
            v16 = snprintf_l(v13, 0x20uLL, 0, "%lu");
            break;
          case 'Q':
            [a2 unsignedLongLongValue];
            v16 = snprintf_l(v13, 0x20uLL, 0, "%llu");
            break;
          case 'S':
            [a2 unsignedShortValue];
            v16 = snprintf_l(v13, 0x20uLL, 0, "%hu");
            break;
          default:
            goto LABEL_59;
        }

LABEL_48:
        if (v16 < 1)
        {
          return 0;
        }

        if (v16 < 0x20)
        {
          v19 = *(a1 + 16);
          if (v19 == 2)
          {
            return _appendBytes(v13, v16, a1, 2);
          }

          else
          {
            if (v19 == 1)
            {
              *(a1 + 40) += v16;
            }

            return 1;
          }
        }

        else
        {
          v18 = [a2 stringValue];
          return [a1 appendString:v18 range:{0, objc_msgSend(v18, "length")}];
        }
      }

      if (v15 != 66)
      {
        if (v15 == 67)
        {
          [a2 unsignedCharValue];
        }

        else
        {
          if (v15 != 73)
          {
            goto LABEL_59;
          }

          [a2 unsignedIntValue];
        }

        v16 = snprintf_l(v13, 0x20uLL, 0, "%u");
        goto LABEL_48;
      }
    }

    else
    {
      if (v15 > 104)
      {
        if (v15 <= 112)
        {
          if (v15 != 105)
          {
            if (v15 == 108)
            {
              [a2 longValue];
              v16 = snprintf_l(v13, 0x20uLL, 0, "%ld");
              goto LABEL_48;
            }

            goto LABEL_59;
          }

          *&v24 = [a2 intValue];
          goto LABEL_42;
        }

        if (v15 != 113)
        {
          if (v15 == 115)
          {
            [a2 shortValue];
            v16 = snprintf_l(v13, 0x20uLL, 0, "%hi");
            goto LABEL_48;
          }

LABEL_59:
          *&v24 = *[a2 objCType];
          v22 = [NSString stringWithFormat:@"Invalid number type in JSON write (%c)", v24];
          v20 = MEMORY[0x1E695DF30];
          v21 = *MEMORY[0x1E695D940];
LABEL_60:
          objc_exception_throw([v20 exceptionWithName:v21 reason:v22 userInfo:0]);
        }

        [a2 longLongValue];
        v16 = snprintf_l(v13, 0x20uLL, 0, "%lld");
        goto LABEL_48;
      }

      if (v15 != 99)
      {
        if (v15 != 100 && v15 != 102)
        {
          goto LABEL_59;
        }

        [a2 doubleValue];
        if (fabs(v17) == INFINITY)
        {
          v20 = MEMORY[0x1E695DF30];
          v21 = *MEMORY[0x1E695D940];
          v22 = @"Invalid number value (infinite) in JSON write";
          goto LABEL_60;
        }

        [a2 doubleValue];
        v16 = snprintf_l(v13, 0x20uLL, 0, "%0.*g");
        goto LABEL_48;
      }
    }

    *&v24 = [a2 charValue];
LABEL_42:
    v16 = snprintf_l(v13, 0x20uLL, 0, "%d");
    goto LABEL_48;
  }

  v9 = [objc_msgSend(a2 "stringValue")];
  if (!v9)
  {
    qword_1EA7BB378 = "Unable to allocate UTF-8 representation of JSON number.";
    __break(1u);
    v20 = MEMORY[0x1E695DF30];
    v21 = *MEMORY[0x1E695D940];
    v22 = @"Invalid number value (NaN) in JSON write";
    goto LABEL_60;
  }

  v10 = v9;
  v11 = strlen(v9);

  return _appendBytes(v10, v11, a1, v25);
}

uint64_t __NSPropertyListClasses_ForArchival_ErrorAndException()
{
  if (qword_1ED43FA30 != -1)
  {
    dispatch_once(&qword_1ED43FA30, &__block_literal_global_41);
  }

  return _MergedGlobals_116;
}

id @objc static NSTimeZone._timeZoneWith(secondsFromGMT:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v4 = static TimeZoneCache.cache;
  os_unfair_lock_lock((static TimeZoneCache.cache + 120));
  v5 = TimeZoneCache.State.bridgedOffsetFixed(_:)(a3);
  os_unfair_lock_unlock(v4 + 30);

  return v5;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  result = _s10Foundation16_TimeZoneBridgedCAcA01_bC8ProtocolAAWlTm_1(&lazy protocol witness table cache variable for type _TimeZoneGMTICU and conformance _TimeZoneGMTICU, type metadata accessor for _TimeZoneGMTICU);
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v9 = (a4[7] + 16 * a1);
  *v9 = a3;
  v9[1] = result;
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for ICULegacyNumberFormatter.Signature(0);
  result = outlined init with take of ICULegacyNumberFormatter.Signature(a2, v8 + *(*(v9 - 8) + 72) * a1);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

{
  a4[(result >> 6) + 8] |= 1 << result;
  v4 = a4[6] + 56 * result;
  v5 = *(a2 + 16);
  *v4 = *a2;
  *(v4 + 16) = v5;
  *(v4 + 32) = *(a2 + 32);
  *(v4 + 48) = *(a2 + 48);
  *(a4[7] + 8 * result) = a3;
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

id *_NSKeyValueCreateImplicitObservationInfo(NSObject *a1, void *a2, uint64_t a3, void *a4, objc_class *a5, objc_class **a6)
{
  v29 = *MEMORY[0x1E69E9840];
  os_unfair_recursive_lock_lock_with_options();
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = a2;
  v10 = [a2 countByEnumeratingWithState:&v25 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v26;
    do
    {
      v14 = 0;
      v15 = v12;
      do
      {
        if (*v26 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v16 = NSKeyValuePropertyForIsaAndKeyPath(a5, *(*(&v25 + 1) + 8 * v14));
        v23 = 0;
        v22 = 0;
        v12 = _NSKeyValueObservationInfoCreateByAdding(v15, a1, v16, a3, a4, 0, &v22, &v23);

        if (a6)
        {
          v17 = [(NSKeyValueProperty *)v16 isaForAutonotifying];
          if (v17)
          {
            a5 = v17;
          }
        }

        ++v14;
        v15 = v12;
      }

      while (v11 != v14);
      v11 = [obj countByEnumeratingWithState:&v25 objects:v24 count:16];
    }

    while (v11);
  }

  else
  {
    v12 = 0;
  }

  if (a6)
  {
    *a6 = a5;
  }

  os_unfair_recursive_lock_unlock();
  return v12;
}

uint64_t __iop_copyCompletionBlock_block_invoke()
{
  if (_CFExecutableLinkedOnOrAfter())
  {
    result = 1;
  }

  else
  {
    result = dyld_program_sdk_at_least();
  }

  _MergedGlobals_11 = result;
  return result;
}

id @objc _NSSwiftLocale.countryCode.getter(char *a1)
{
  v2 = *&a1[OBJC_IVAR____NSSwiftLocale_locale + 8];
  ObjectType = swift_getObjectType();
  v4 = *(v2 + 376);
  v5 = a1;
  swift_unknownObjectRetain();
  v4(&v10, ObjectType, v2);
  swift_unknownObjectRelease();
  v6 = v11;
  if (v11)
  {
    v7 = v10;

    outlined consume of Locale.LanguageCode?(v7, v6);

    v8 = String._bridgeToObjectiveCImpl()();
  }

  else
  {

    v8 = 0;
  }

  return v8;
}

uint64_t closure #1 in _LocaleICU.region.getter@<X0>(Swift::String *a1@<X0>, Swift::String *a2@<X8>)
{
  v71 = *MEMORY[0x1E69E9840];
  result = a1[20]._countAndFlagsBits;
  object = a1[20]._object;
  countAndFlagsBits = a1[21]._countAndFlagsBits;
  v6 = a1[21]._object;
  if (!object)
  {
    a2->_countAndFlagsBits = result;
    a2->_object = 0;
    a2[1]._countAndFlagsBits = countAndFlagsBits;
    a2[1]._object = v6;
    return result;
  }

  if (object != 1)
  {
    a2->_countAndFlagsBits = result;
    a2->_object = object;
    a2[1]._countAndFlagsBits = countAndFlagsBits;
    a2[1]._object = v6;
    return outlined copy of Locale.LanguageCode?(result, object);
  }

  v49 = a1;
  specialized static Locale.keywordValue(identifier:key:)();
  if (!v7)
  {
LABEL_9:
    memset(v70, 0, sizeof(v70));
    outlined destroy of Locale.Language.Components(v70);
    LODWORD(v61) = 0;
    String.utf8CString.getter();
    Language = uloc_getLanguage();

    v22 = 0;
    v23 = 0;
    if (Language > 0)
    {
      v69[Language] = 0;
      v22 = MEMORY[0x1865CAEB0](v69);
      v23 = v24;
    }

    LODWORD(v61) = 0;
    String.utf8CString.getter();
    Script = uloc_getScript();

    v26 = 0;
    v27 = 0;
    if (Script > 0)
    {
      v68[Script] = 0;
      v26 = MEMORY[0x1865CAEB0](v68);
      v27 = v28;
    }

    LODWORD(v61) = 0;
    String.utf8CString.getter();
    Country = uloc_getCountry();

    v30 = 0;
    v31 = 0;
    if (Country > 0)
    {
      v67[Country] = 0;
      v30 = MEMORY[0x1865CAEB0](v67);
      v31 = v32;
    }

    if (v23)
    {
      v33 = String.lowercased()();
      v45 = v33._object;
      v46 = v33._countAndFlagsBits;
      v47 = v23;
      v48 = v22;
      if (v27)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v45 = 0;
      v46 = 0;
      v47 = 0;
      v48 = 0;
      if (v27)
      {
LABEL_17:
        *&v61 = v26;
        *(&v61 + 1) = v27;

        String.init<A>(_:)();
        v34 = String._capitalized()();
        v35 = v34._countAndFlagsBits;
        v36 = v34._object;

        if (v31)
        {
LABEL_18:
          v37 = String.uppercased()();
          v38 = v37._countAndFlagsBits;
          v39 = v37._object;
LABEL_22:
          outlined consume of Locale.LanguageCode?(0, 0);
          outlined consume of Locale.LanguageCode?(0, 0);
          outlined consume of Locale.LanguageCode?(0, 0);
          *&v61 = v48;
          *(&v61 + 1) = v47;
          *&v62 = v46;
          *(&v62 + 1) = v45;
          *&v63 = v26;
          *(&v63 + 1) = v27;
          *&v64 = v35;
          *(&v64 + 1) = v36;
          *&v65 = v30;
          *(&v65 + 1) = v31;
          *&v66 = v38;
          *(&v66 + 1) = v39;
          v57 = v63;
          v58 = v64;
          v59 = v65;
          v60 = v66;
          v55 = v61;
          v56 = v62;
          Locale.Language.region.getter(&v51);
          outlined destroy of Locale.Language.Components(&v61);
          v40 = v51;
          v41 = v52;
          v42 = v53;
          v17 = v54;
          v43 = v49[20]._countAndFlagsBits;
          v44 = v49[20]._object;
          outlined copy of Locale.LanguageCode?(v51, v52);
          result = sub_1807E2788(v43, v44);
          v49[20]._countAndFlagsBits = v40;
          v49[20]._object = v41;
          v49[21]._countAndFlagsBits = v42;
          v49[21]._object = v17;
          v20 = a2;
          a2->_countAndFlagsBits = v40;
          a2->_object = v41;
          a2[1]._countAndFlagsBits = v42;
          goto LABEL_23;
        }

LABEL_21:
        v30 = 0;
        v38 = 0;
        v39 = 0;
        goto LABEL_22;
      }
    }

    v26 = 0;
    v35 = 0;
    v36 = 0;
    if (v31)
    {
      goto LABEL_18;
    }

    goto LABEL_21;
  }

  if (String.count.getter() <= 2)
  {

    goto LABEL_9;
  }

  v8 = specialized Collection.prefix(_:)(2);
  v10 = v9;
  v12 = v11;
  v14 = v13;

  MEMORY[0x1865CAE80](v8, v10, v12, v14);

  v15 = String.uppercased()();

  v16 = String.uppercased()();
  v17 = v16._object;
  v18 = v49[20]._countAndFlagsBits;
  v19 = v49[20]._object;

  result = sub_1807E2788(v18, v19);
  v49[20] = v15;
  v49[21] = v16;
  v20 = a2;
  *a2 = v15;
  a2[1]._countAndFlagsBits = v16._countAndFlagsBits;
LABEL_23:
  v20[1]._object = v17;
  return result;
}

void protocol witness for _LocaleProtocol.region.getter in conformance _LocaleICU(Swift::String *a1@<X8>)
{
  v3 = *(v1 + 200);
  os_unfair_lock_lock((v3 + 536));
  partial apply for closure #1 in _LocaleICU.region.getter((v3 + 16), a1);

  os_unfair_lock_unlock((v3 + 536));
}

uint64_t Locale.Language.region.getter@<X0>(uint64_t *a1@<X8>)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = v1[8];
  v3 = v1[9];
  v5 = v4;
  v6 = v3;
  countAndFlagsBits = v1[10];
  object = v1[11];
  if (!v3)
  {
    Locale.Language.Components.identifier.getter();
    String.utf8CString.getter();

    Country = uloc_getCountry();

    if (Country >= 1 && (v14[Country] = 0, v10 = MEMORY[0x1865CAEB0](v14), v11))
    {
      v5 = v10;
      v6 = v11;
      v12 = String.uppercased()();
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

uint64_t _LocaleICU.init(components:)(void *__src)
{
  v2 = v1;
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v74, __src, sizeof(v74));
  *(v2 + 16) = Locale.Components.icuIdentifier.getter();
  *(v2 + 24) = v4;
  _s10Foundation17LocalePreferencesVSgWOi0_(v108);
  v5 = v108[4];
  *(v2 + 136) = v108[5];
  v6 = v109[0];
  *(v2 + 152) = v108[6];
  *(v2 + 168) = v6;
  *(v2 + 180) = *(v109 + 12);
  v7 = v108[0];
  *(v2 + 72) = v108[1];
  v8 = v108[3];
  *(v2 + 88) = v108[2];
  *(v2 + 104) = v8;
  *(v2 + 120) = v5;
  *(v2 + 56) = v7;

  static _LocaleICU._calendarIdentifier(forIdentifier:)(v74);

  v9 = v74[0];
  *(v2 + 48) = v74[0];
  v11 = *(v2 + 16);
  v10 = *(v2 + 24);
  v72[0] = v9;
  v12 = *(v2 + 136);
  v13 = *(v2 + 168);
  v110[6] = *(v2 + 152);
  v111[0] = v13;
  *(v111 + 12) = *(v2 + 180);
  v14 = *(v2 + 72);
  v15 = *(v2 + 104);
  v110[2] = *(v2 + 88);
  v110[3] = v15;
  v16 = *(v2 + 120);
  v110[5] = v12;
  v110[4] = v16;
  v17 = *(v2 + 56);
  v110[1] = v14;
  v110[0] = v17;
  v18 = *(v2 + 136);
  v19 = *(v2 + 168);
  v74[6] = *(v2 + 152);
  v74[7] = v19;
  *(&v74[7] + 12) = *(v2 + 180);
  v20 = *(v2 + 72);
  v21 = *(v2 + 104);
  v74[2] = *(v2 + 88);
  v74[3] = v21;
  v22 = *(v2 + 120);
  v74[5] = v18;
  v74[4] = v22;
  v23 = *(v2 + 56);
  v74[1] = v20;
  v74[0] = v23;

  outlined init with copy of FloatingPointRoundingRule?(v110, __srca, &_s10Foundation17LocalePreferencesVSgMd);
  v24 = specialized static _LocaleICU._identifierCapturingPreferences(forIdentifier:calendarIdentifier:preferences:)(v11, v10, v72, v74);
  v26 = v25;

  v112[6] = v74[6];
  v113[0] = v74[7];
  *(v113 + 12) = *(&v74[7] + 12);
  v112[2] = v74[2];
  v112[3] = v74[3];
  v112[5] = v74[5];
  v112[4] = v74[4];
  v112[1] = v74[1];
  v112[0] = v74[0];
  outlined destroy of TermOfAddress?(v112, &_s10Foundation17LocalePreferencesVSgMd);
  *(v2 + 32) = v24;
  *(v2 + 40) = v26;
  LOBYTE(v74[0]) = 1;
  memset(&v101[7], 0, 49);
  v98 = 1;
  v27 = __dst[0];
  v106 = __dst[5];
  v105 = __dst[4];
  v104 = __dst[3];
  v102 = __dst[1];
  v103 = __dst[2];
  v114[0] = xmmword_1812187D0;
  memset(&v114[1], 0, 80);
  outlined init with copy of Locale.Language.Components(__dst, v74);
  outlined destroy of TermOfAddress?(v114, &_s10Foundation6LocaleV8LanguageV10ComponentsVSgMd);
  v28 = *&__dst[7];
  if (*&__dst[7])
  {
    v29 = *&__dst[8];
    v54 = *(&__dst[7] + 1);
    v30 = *(&__dst[6] + 1);

    outlined consume of Locale.LanguageCode?(0, 0);
    v31 = *&__dst[9];
    if (*&__dst[9])
    {
LABEL_3:
      v32 = *&__dst[10];
      v51 = *(&__dst[9] + 1);
      v33 = *(&__dst[8] + 1);

      v34 = v32;

      sub_1807E2788(0, 1);
      goto LABEL_6;
    }
  }

  else
  {
    v29 = 0;
    v54 = 0;
    v30 = 0;
    v31 = *&__dst[9];
    if (*&__dst[9])
    {
      goto LABEL_3;
    }
  }

  v34 = 0;
  v51 = 0;
  v33 = 0;
  v31 = 1;
LABEL_6:
  v71 = *&__dst[11];
  if (*&__dst[11])
  {
    v35 = *&__dst[12];
    *&v70 = *(&__dst[11] + 1);
    v68 = *(&__dst[10] + 1);

    *(&v70 + 1) = v35;

    outlined consume of Locale.LanguageCode?(0, 0);
  }

  else
  {
    v70 = 0uLL;
    v68 = 0;
  }

  v50 = BYTE8(__dst[12]);
  v66 = BYTE9(__dst[12]);
  v69 = *(&__dst[13] + 1);
  if (*(&__dst[13] + 1))
  {
    v36 = *(&__dst[14] + 1);
    v64 = *&__dst[13];
    v65 = *&__dst[14];

    v67 = v36;

    outlined consume of Locale.LanguageCode?(0, 0);
    v37 = *(&__dst[15] + 1);
    if (*(&__dst[15] + 1))
    {
      goto LABEL_11;
    }
  }

  else
  {
    v67 = 0;
    v64 = 0;
    v65 = 0;
    v37 = *(&__dst[15] + 1);
    if (*(&__dst[15] + 1))
    {
LABEL_11:
      v38 = *(&__dst[16] + 1);
      *(&v62 + 1) = v37;
      *&v63 = *&__dst[16];
      *&v62 = *&__dst[15];

      *(&v63 + 1) = v38;

      sub_1807E2788(0, 1);
      v39 = *(&__dst[17] + 1);
      if (*(&__dst[17] + 1))
      {
        goto LABEL_12;
      }

LABEL_16:
      v58 = 0;
      v59 = 0;
      v60 = 1;
      v61 = 0;
      v41 = *&__dst[19];
      if (*&__dst[19])
      {
        goto LABEL_13;
      }

      goto LABEL_17;
    }
  }

  v63 = 0uLL;
  *&v62 = 0;
  *(&v62 + 1) = 1;
  v39 = *(&__dst[17] + 1);
  if (!*(&__dst[17] + 1))
  {
    goto LABEL_16;
  }

LABEL_12:
  v40 = *(&__dst[18] + 1);
  v58 = *&__dst[17];
  v59 = *&__dst[18];
  v60 = v39;

  v61 = v40;

  sub_1807E2788(0, 1);
  v41 = *&__dst[19];
  if (*&__dst[19])
  {
LABEL_13:
    v56 = v41;
    v57 = *(&__dst[19] + 1);
    swift_unknownObjectRetain();
    outlined consume of TimeZone??(1);
    goto LABEL_18;
  }

LABEL_17:
  v56 = 1;
  v57 = 0;
LABEL_18:
  if (*(&__dst[20] + 1))
  {
    v42 = *(&__dst[21] + 1);
    v52 = *&__dst[20];
    v53 = *&__dst[21];
    v43 = *(&__dst[20] + 1);

    v55 = v42;

    outlined destroy of Locale.Components(__dst);
    sub_1807E2788(0, 1);
  }

  else
  {
    outlined destroy of Locale.Components(__dst);
    v52 = 0;
    v53 = 0;
    v55 = 0;
    v43 = 1;
  }

  *__srca = v27;
  *&__srca[48] = v104;
  *&__srca[64] = v105;
  *&__srca[80] = v106;
  *&__srca[16] = v102;
  *&__srca[32] = v103;
  *&v47 = v30;
  *&__srca[96] = v30;
  *&__srca[104] = v28;
  *&__srca[112] = v54;
  *&__srca[120] = v29;
  *&__srca[128] = v33;
  *&__srca[136] = v31;
  *&__srca[144] = v51;
  *&__srca[152] = v34;
  *&__srca[160] = v68;
  *&__srca[168] = v71;
  *&__srca[176] = v70;
  *&__srca[192] = 0;
  __srca[200] = v50;
  *(&v47 + 1) = v28;
  *&__srca[201] = *v101;
  *&__srca[217] = *&v101[16];
  *&__srca[233] = *&v101[32];
  *&__srca[249] = *&v101[48];
  __srca[257] = 1;
  *&__srca[264] = 0;
  v48 = v98;
  __srca[272] = v98;
  __srca[273] = v66;
  *&__srca[280] = v64;
  *&__srca[288] = v69;
  *&__srca[296] = v65;
  *&__srca[304] = v67;
  __srca[312] = 2;
  *&__srca[320] = v62;
  *&__srca[336] = v63;
  *&__srca[352] = v58;
  *&__srca[360] = v60;
  *&__srca[368] = v59;
  *&__srca[376] = v61;
  *&__srca[384] = v56;
  *&__srca[392] = v57;
  *&__srca[400] = v52;
  v49 = v43;
  *&__srca[408] = v43;
  v44 = MEMORY[0x1E69E7CC8];
  *&__srca[416] = v53;
  *&__srca[424] = v55;
  *&__srca[432] = MEMORY[0x1E69E7CC8];
  *&__srca[440] = MEMORY[0x1E69E7CC8];
  *&__srca[448] = MEMORY[0x1E69E7CC8];
  *&__srca[456] = MEMORY[0x1E69E7CC8];
  *&__srca[464] = MEMORY[0x1E69E7CC8];
  *&__srca[472] = MEMORY[0x1E69E7CC8];
  *&__srca[480] = MEMORY[0x1E69E7CC8];
  *&__srca[488] = MEMORY[0x1E69E7CC8];
  *&__srca[496] = MEMORY[0x1E69E7CC8];
  *&__srca[504] = MEMORY[0x1E69E7CC8];
  *&__srca[512] = MEMORY[0x1E69E7CC8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCyAA10_LocaleICUC0C0V_GMd);
  v45 = swift_allocObject();
  *(v45 + 536) = 0;
  memcpy((v45 + 16), __srca, 0x208uLL);
  *(v2 + 200) = v45;
  v74[0] = v27;
  v74[6] = v47;
  *&v74[7] = v54;
  *(&v74[7] + 1) = v29;
  *&v74[8] = v33;
  *(&v74[8] + 1) = v31;
  *&v74[9] = v51;
  *(&v74[9] + 1) = v34;
  v74[3] = v104;
  v74[4] = v105;
  v74[5] = v106;
  v74[2] = v103;
  v74[1] = v102;
  *&v74[10] = v68;
  *(&v74[10] + 1) = v71;
  v74[11] = v70;
  *&v74[12] = 0;
  BYTE8(v74[12]) = v50;
  *(&v74[12] + 9) = *v101;
  *(&v74[13] + 9) = *&v101[16];
  *(&v74[14] + 9) = *&v101[32];
  *(&v74[15] + 9) = *&v101[48];
  BYTE1(v74[16]) = 1;
  *(&v74[16] + 2) = v99;
  WORD3(v74[16]) = v100;
  *(&v74[16] + 1) = 0;
  LOBYTE(v74[17]) = v48;
  BYTE1(v74[17]) = v66;
  *(&v74[17] + 2) = *&v96[7];
  WORD3(v74[17]) = v97;
  *(&v74[17] + 1) = v64;
  *&v74[18] = v69;
  *(&v74[18] + 1) = v65;
  *&v74[19] = v67;
  BYTE8(v74[19]) = 2;
  *(&v74[19] + 9) = *v96;
  HIDWORD(v74[19]) = *&v96[3];
  v74[20] = v62;
  v74[21] = v63;
  v75 = v58;
  v76 = v60;
  v77 = v59;
  v78 = v61;
  v79 = v56;
  v80 = v57;
  v81 = v52;
  v82 = v49;
  v83 = v53;
  v84 = v55;
  v85 = v44;
  v86 = v44;
  v87 = v44;
  v88 = v44;
  v89 = v44;
  v90 = v44;
  v91 = v44;
  v92 = v44;
  v93 = v44;
  v94 = v44;
  v95 = v44;
  outlined init with copy of _LocaleICU.State(__srca, v72);
  outlined destroy of _LocaleICU.State(v74);
  return v2;
}

uint64_t sub_1807E2788(uint64_t result, uint64_t a2)
{
  if (a2 != 1)
  {
    return outlined consume of Locale.LanguageCode?(result, a2);
  }

  return result;
}

uint64_t specialized static Data.== infix(_:_:)(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          outlined copy of Data._Representation(a3, a4);
          return specialized Data._Representation.withUnsafeBytes<A>(_:)(v13, a2, a3, a4);
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

const void *closure #1 in static Data.== infix(_:_:)@<X0>(const void *result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3 >> 62;
  if ((a3 >> 62) <= 1)
  {
    if (!v5)
    {
      __s2 = a2;
      v20 = a3;
      v21 = BYTE2(a3);
      v22 = BYTE3(a3);
      v23 = BYTE4(a3);
      v24 = BYTE5(a3);
      if (result)
      {
        result = memcmp(result, &__s2, BYTE6(a3));
        v6 = result == 0;
LABEL_25:
        *a4 = v6;
        return result;
      }

      __break(1u);
      goto LABEL_33;
    }

    goto LABEL_14;
  }

  if (v5 != 2)
  {
    if (!result)
    {
LABEL_33:
      __break(1u);
LABEL_34:
      if (!result)
      {
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      goto LABEL_36;
    }

LABEL_24:
    v6 = 1;
    goto LABEL_25;
  }

  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *((a3 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  if (v9)
  {
    v10 = *((a3 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
    v11 = __OFSUB__(v7, v10);
    v12 = v7 - v10;
    if (v11)
    {
      goto LABEL_31;
    }

    v13 = (v12 + v9);
    v11 = __OFSUB__(v8, v7);
    v14 = v8 - v7;
    if (!v11)
    {
      goto LABEL_9;
    }

LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v13 = 0;
  v11 = __OFSUB__(v8, v7);
  v14 = v8 - v7;
  if (v11)
  {
    goto LABEL_28;
  }

LABEL_9:
  v15 = *((a3 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
  if (v15 >= v14)
  {
    v15 = v14;
  }

  if (!result)
  {
    goto LABEL_37;
  }

  if (v13)
  {
LABEL_21:
    if (v13 != result)
    {
      result = memcmp(result, v13, v15);
      v6 = result == 0;
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  __break(1u);
LABEL_14:
  v15 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
  }

  v16 = *((a3 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  if (!v16)
  {
    goto LABEL_34;
  }

  v17 = *((a3 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
  v18 = a2 - v17;
  if (__OFSUB__(a2, v17))
  {
    goto LABEL_30;
  }

  if (*((a3 & 0x3FFFFFFFFFFFFFFFLL) + 0x18) < v15)
  {
    v15 = *((a3 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
  }

  if (!result)
  {
    goto LABEL_35;
  }

  v13 = (v18 + v16);
  if (v18 + v16)
  {
    goto LABEL_21;
  }

LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

uint64_t specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v8 = result;
  v9 = *(a3 + 16);
  if (!v9)
  {
    v13 = 0;
    if (!__OFSUB__(a2, v8))
    {
LABEL_4:
      v16[0] = v6;
      v16[1] = v7;
      v6 = v16;
      closure #1 in static Data.== infix(_:_:)(v13, a4, a5, &v15);
      if (v5)
      {
        return v14 & 1;
      }

      goto LABEL_9;
    }

LABEL_8:
    __break(1u);
LABEL_9:
    v14 = *(v6 - 1);
    return v14 & 1;
  }

  v10 = *(a3 + 40);
  v11 = __OFSUB__(result, v10);
  v12 = result - v10;
  if (!v11)
  {
    v13 = (v12 + v9);
    if (!__OFSUB__(a2, v8))
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t _makeInlinePayload(unint64_t *a1, uint64_t a2)
{
  result = 0;
  if (a2 > 1)
  {
    if (a2 != 2)
    {
      if (a2 != 3)
      {
        if (a2 != 4)
        {
          return result;
        }

        v4 = a1[3];
        if (v4 >> 13)
        {
          return 0;
        }

        result = v4 << 47;
      }

      v5 = a1[2];
      if (v5 >> 13)
      {
        return 0;
      }

      result |= v5 << 34;
    }

    v6 = a1[1];
    if (!(v6 >> 13))
    {
      result |= v6 << 21;
      goto LABEL_13;
    }

    return 0;
  }

  v7 = a2;
  if (!a2)
  {
    return v7 | (8 * a2) | 6;
  }

  if (a2 != 1)
  {
    return result;
  }

LABEL_13:
  v8 = *a1;
  if (v8 >> 13)
  {
    return 0;
  }

  v7 = result | (v8 << 8);
  return v7 | (8 * a2) | 6;
}

uint64_t lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with copy of Hashable & Sendable(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t protocol witness for Decoder.singleValueContainer() in conformance JSONDecoderImpl@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  a1[3] = type metadata accessor for JSONDecoderImpl();
  a1[4] = lazy protocol witness table accessor for type JSONDecoderImpl and conformance JSONDecoderImpl(&lazy protocol witness table cache variable for type JSONDecoderImpl and conformance JSONDecoderImpl, type metadata accessor for JSONDecoderImpl);
  *a1 = v3;
}

NSString *__cdecl NSHomeDirectoryForUser(NSString *userName)
{
  v1 = CFCopyHomeDirectoryURLForUser();
  if (v1)
  {
    v2 = v1;
    v3 = [v1 path];
    CFRelease(v2);
  }

  else
  {
    v3 = 0;
  }

  return [v3 stringByStandardizingPath];
}

void specialized JSONDecoderImpl.decode(_:)()
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

    specialized JSONDecoderImpl.unwrapString<A>(from:for:_:)(v4, v5, v7, v6, 0, 0, 0, 255);
  }

  else
  {
    __break(1u);
  }
}

{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (!v2)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return;
  }

  if ((*(v1 + 24 * v2 + 24) & 0xE0) == 0x40)
  {
    return;
  }

  v3 = *(v0 + 160);

  _CodingPathNode.path.getter(v3);

  v4 = *(v0 + 16);
  v5 = *(v4 + 16);
  if (!v5)
  {
    goto LABEL_17;
  }

  v6 = *(v4 + 24 * v5 + 24);
  v7 = type metadata accessor for DecodingError();
  swift_allocError();
  v9 = v8;
  *v8 = MEMORY[0x1E69E6370];
  _StringGuts.grow(_:)(43);

  v10 = v6 >> 5;
  if (v6 >> 5 > 2)
  {
    if (v10 == 3)
    {
      v11 = 0xEC0000007972616ELL;
      v12 = 0x6F69746369642061;
    }

    else if (v10 == 4)
    {
      v11 = 0xE800000000000000;
      v12 = 0x7961727261206E61;
    }

    else
    {
      v11 = 0xE400000000000000;
      v12 = 1819047278;
    }
  }

  else if (v10)
  {
    if (v10 == 1)
    {
      v11 = 0xE600000000000000;
      v12 = 0x7265626D756ELL;
    }

    else
    {
      v11 = 0xE400000000000000;
      v12 = 1819242338;
    }
  }

  else
  {
    v11 = 0xE800000000000000;
    v12 = 0x676E697274732061;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
  MEMORY[0x1865CB0E0](v12, v11);

  MEMORY[0x1865CB0E0](0x64616574736E6920, 0xE90000000000002ELL);
  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  (*(*(v7 - 8) + 104))(v9, *MEMORY[0x1E69E6AF8], v7);
  swift_willThrow();
}

void *_NSBundlePathFromExecutablePath(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = [objc_msgSend(a1 _stringByResolvingSymlinksInPathUsingCache:{1), "stringByDeletingLastPathComponent"}];
  v2 = [v1 stringByDeletingLastPathComponent];
  v3 = [v2 lastPathComponent];
  if (![v3 compare:@"Contents" options:0 range:{0, objc_msgSend(v3, "length")}] || !objc_msgSend(v3, "compare:options:range:", @"Executables", 0, 0, objc_msgSend(v3, "length")) && (v2 = objc_msgSend(v2, "stringByDeletingLastPathComponent"), v4 = objc_msgSend(v2, "lastPathComponent"), !objc_msgSend(v4, "compare:options:range:", @"Support Files", 0, 0, objc_msgSend(v4, "length"))))
  {
    v5 = [v2 stringByDeletingLastPathComponent];
    memset(&v7, 0, sizeof(v7));
    if ([v5 getFileSystemRepresentation:v8 maxLength:1024])
    {
      if (!stat(v8, &v7))
      {
        if (access(v8, 4))
        {
          getpid();
          sandbox_check();
        }

        else if ((v7.st_mode & 0xF000) == 0x4000)
        {
          return v5;
        }
      }
    }
  }

  return v1;
}

void __NSSwiftData.copy(with:)(char **a1@<X8>)
{
  v3 = *&v1[OBJC_IVAR____TtC10Foundation13__NSSwiftData__backing];
  if (v3)
  {
    if ((*(v3 + 32) & 0x8000000000000000) != 0)
    {
      v6 = [v1 bytes];
      v7 = [v1 length];
      v5 = [objc_allocWithZone(MEMORY[0x1E695DEF0]) initWithBytes:v6 length:v7];
      v4 = type metadata accessor for NSData();
    }

    else
    {
      v4 = type metadata accessor for __NSSwiftData();
      v5 = v1;
    }

    a1[3] = v4;
    *a1 = v5;
  }

  else
  {
    __break(1u);
  }
}

id protocol witness for _ObjectiveCBridgeable._bridgeToObjectiveC() in conformance Int64()
{
  v1 = *v0;
  v2 = objc_allocWithZone(NSNumber);

  return [v2 initWithLongLong_];
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, _OWORD *a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v4 = (a4[6] + 160 * result);
  v5 = a2[7];
  v4[6] = a2[6];
  v4[7] = v5;
  v4[8] = a2[8];
  *(v4 + 140) = *(a2 + 140);
  v6 = a2[3];
  v4[2] = a2[2];
  v4[3] = v6;
  v7 = a2[5];
  v4[4] = a2[4];
  v4[5] = v7;
  v8 = a2[1];
  *v4 = *a2;
  v4[1] = v8;
  *(a4[7] + 8 * result) = a3;
  v9 = a4[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v11;
  }

  return result;
}

{
  a4[(result >> 6) + 8] |= 1 << result;
  v4 = (a4[6] + 96 * result);
  v5 = a2[3];
  v4[2] = a2[2];
  v4[3] = v5;
  v6 = a2[5];
  v4[4] = a2[4];
  v4[5] = v6;
  v7 = a2[1];
  *v4 = *a2;
  v4[1] = v7;
  *(a4[7] + 8 * result) = a3;
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

{
  a4[(result >> 6) + 8] |= 1 << result;
  v4 = (a4[6] + 48 * result);
  v5 = a2[1];
  *v4 = *a2;
  v4[1] = v5;
  v4[2] = a2[2];
  *(a4[7] + 8 * result) = a3;
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

char *closure #1 in LocaleCache.fixedNSLocale(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  v8 = *(a2 + 136);
  v9 = *(a2 + 168);
  v71[6] = *(a2 + 152);
  v72[0] = v9;
  *(v72 + 12) = *(a2 + 180);
  v10 = *(a2 + 72);
  v11 = *(a2 + 104);
  v71[2] = *(a2 + 88);
  v71[3] = v11;
  v71[4] = *(a2 + 120);
  v71[5] = v8;
  v71[0] = *(a2 + 56);
  v71[1] = v10;
  v12 = *(a2 + 120);
  v13 = *(a2 + 104);
  v69[3] = *(a2 + 88);
  v69[4] = v13;
  v14 = *(a2 + 72);
  *(v70 + 12) = *(a2 + 180);
  v15 = *(a2 + 168);
  v69[7] = *(a2 + 152);
  v70[0] = v15;
  v16 = *(a2 + 136);
  v69[5] = v12;
  v69[6] = v16;
  v69[1] = *(a2 + 56);
  v69[2] = v14;
  *&v69[0] = v7;
  *(&v69[0] + 1) = v6;
  v17 = *(a1 + 24);
  v18 = *(v17 + 16);

  if (v18)
  {
    outlined init with copy of LocalePreferences?(v71, v66);
    v19 = specialized __RawDictionaryStorage.find<A>(_:)(v69);
    if (v20)
    {
      v21 = *(*(v17 + 56) + 8 * v19);
      result = outlined destroy of LocaleCache.State.IdentifierAndPrefs(v69);
LABEL_32:
      *a3 = v21;
      return result;
    }
  }

  else
  {
    outlined init with copy of LocalePreferences?(v71, v66);
  }

  v23 = _s10Foundation10_LocaleICUCAcA01_B8ProtocolAAWlTm_1(&lazy protocol witness table cache variable for type _LocaleICU and conformance _LocaleICU, type metadata accessor for _LocaleICU);
  v24 = type metadata accessor for _NSSwiftLocale();
  v25 = objc_allocWithZone(v24);
  v26 = &v25[OBJC_IVAR____NSSwiftLocale_locale];
  *v26 = a2;
  *(v26 + 1) = v23;
  v27 = String._bridgeToObjectiveCImpl()();
  v68.receiver = v25;
  v68.super_class = v24;
  swift_retain_n();
  v28 = objc_msgSendSuper2(&v68, sel_initWithLocaleIdentifier_, v27);
  swift_unknownObjectRelease();
  v21 = v28;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v73 = *(a1 + 24);
  v30 = v73;
  v31 = specialized __RawDictionaryStorage.find<A>(_:)(v69);
  v33 = *(v30 + 16);
  v34 = (v32 & 1) == 0;
  v35 = __OFADD__(v33, v34);
  v36 = v33 + v34;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    LOBYTE(v25) = v32;
    if (*(v30 + 24) < v36)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v36, isUniquelyReferenced_nonNull_native);
      v37 = v73;
      v31 = specialized __RawDictionaryStorage.find<A>(_:)(v69);
      if ((v25 & 1) == (v38 & 1))
      {
        goto LABEL_11;
      }

      v31 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v37 = v30;
LABEL_11:
      if (v25)
      {
LABEL_12:
        v39 = *(v37 + 56);
        v40 = *(v39 + 8 * v31);
        *(v39 + 8 * v31) = v21;

        outlined destroy of LocaleCache.State.IdentifierAndPrefs(v69);
LABEL_31:

        *(a1 + 24) = v37;
        goto LABEL_32;
      }

LABEL_30:
      specialized _NativeDictionary._insert(at:key:value:)(v31, v69, v21, v37);
      goto LABEL_31;
    }
  }

  v60 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation11LocaleCacheV5StateV18IdentifierAndPrefsVAC08_NSSwiftD0CGMd);
  v41 = static _DictionaryStorage.copy(original:)();
  v37 = v41;
  if (!*(v30 + 16))
  {
LABEL_29:

    v31 = v60;
    if (v25)
    {
      goto LABEL_12;
    }

    goto LABEL_30;
  }

  result = (v41 + 64);
  v42 = (v30 + 64);
  v43 = ((1 << *(v37 + 32)) + 63) >> 6;
  if (v37 != v30 || result >= &v42[8 * v43])
  {
    result = memmove(result, v42, 8 * v43);
  }

  v44 = 0;
  *(v37 + 16) = *(v30 + 16);
  v45 = 1 << *(v30 + 32);
  v46 = -1;
  if (v45 < 64)
  {
    v46 = ~(-1 << v45);
  }

  v47 = v46 & *(v30 + 64);
  v48 = (v45 + 63) >> 6;
  v61 = v48;
  if (v47)
  {
    do
    {
      v49 = __clz(__rbit64(v47));
      v62 = (v47 - 1) & v47;
LABEL_27:
      v63 = v49 | (v44 << 6);
      v52 = (*(v30 + 48) + 160 * v63);
      v53 = v52[2];
      v54 = v52[3];
      v55 = v52[5];
      v66[4] = v52[4];
      v66[5] = v55;
      v66[3] = v54;
      v56 = v52[6];
      v57 = v52[7];
      v58 = v52[8];
      *(v67 + 12) = *(v52 + 140);
      v66[7] = v57;
      v67[0] = v58;
      v66[6] = v56;
      v59 = v52[1];
      v66[0] = *v52;
      v66[1] = v59;
      v66[2] = v53;
      v64 = *(*(v30 + 56) + 8 * v63);
      memmove((*(v37 + 48) + 160 * v63), v52, 0x9CuLL);
      *(*(v37 + 56) + 8 * v63) = v64;
      outlined init with copy of LocaleCache.State.IdentifierAndPrefs(v66, v65);
      result = v64;
      v48 = v61;
      v47 = v62;
    }

    while (v62);
  }

  v50 = v44;
  while (1)
  {
    v44 = v50 + 1;
    if (__OFADD__(v50, 1))
    {
      break;
    }

    if (v44 >= v48)
    {
      goto LABEL_29;
    }

    v51 = *(v30 + 64 + 8 * v44);
    ++v50;
    if (v51)
    {
      v49 = __clz(__rbit64(v51));
      v62 = (v51 - 1) & v51;
      goto LABEL_27;
    }
  }

  __break(1u);
  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(__int128 *a1)
{
  v9 = a1[6];
  v10 = a1[7];
  *v11 = a1[8];
  *&v11[12] = *(a1 + 140);
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v8 = a1[5];
  v3 = *a1;
  v4 = a1[1];
  lazy protocol witness table accessor for type LocaleCache.State.IdentifierAndPrefs and conformance LocaleCache.State.IdentifierAndPrefs();
  v1 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12[6] = v9;
  v12[7] = v10;
  v13[0] = *v11;
  *(v13 + 12) = *&v11[12];
  v12[2] = v5;
  v12[3] = v6;
  v12[4] = v7;
  v12[5] = v8;
  v12[0] = v3;
  v12[1] = v4;
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v12, v1);
}

{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = *(a1 + 48);
  lazy protocol witness table accessor for type Date.ComponentsFormatStyle and conformance Date.ComponentsFormatStyle();
  v1 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v7[0] = v3;
  v7[1] = v4;
  v7[2] = v5;
  v8 = v6;
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v7, v1);
}

unint64_t lazy protocol witness table accessor for type LocaleCache.State.IdentifierAndPrefs and conformance LocaleCache.State.IdentifierAndPrefs()
{
  result = lazy protocol witness table cache variable for type LocaleCache.State.IdentifierAndPrefs and conformance LocaleCache.State.IdentifierAndPrefs;
  if (!lazy protocol witness table cache variable for type LocaleCache.State.IdentifierAndPrefs and conformance LocaleCache.State.IdentifierAndPrefs)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocaleCache.State.IdentifierAndPrefs and conformance LocaleCache.State.IdentifierAndPrefs);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LocaleCache.State.IdentifierAndPrefs and conformance LocaleCache.State.IdentifierAndPrefs;
  if (!lazy protocol witness table cache variable for type LocaleCache.State.IdentifierAndPrefs and conformance LocaleCache.State.IdentifierAndPrefs)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocaleCache.State.IdentifierAndPrefs and conformance LocaleCache.State.IdentifierAndPrefs);
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(unint64_t *a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = *a1;
    v92 = a1[1];
    v89 = ~v3;
    v6 = *(a1 + 8);
    v149 = *(a1 + 7);
    v150[0] = v6;
    *(v150 + 12) = *(a1 + 140);
    v7 = *(a1 + 4);
    v145 = *(a1 + 3);
    v146 = v7;
    v8 = *(a1 + 6);
    v78 = v5;
    v147 = *(a1 + 5);
    v148 = v8;
    v9 = *(a1 + 2);
    v143 = *(a1 + 1);
    v144 = v9;
    do
    {
      v10 = (*(v91 + 48) + 160 * v4);
      v11 = v10[1];
      v134 = *v10;
      v135 = v11;
      v12 = v10[4];
      v14 = v10[2];
      v13 = v10[3];
      v139 = v10[5];
      v138 = v12;
      v136 = v14;
      v137 = v13;
      v16 = v10[7];
      v15 = v10[8];
      v17 = v10[6];
      *(v142 + 12) = *(v10 + 140);
      v142[0] = v15;
      v140 = v17;
      v141 = v16;
      if (v134 != __PAIR128__(v92, v5) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_5;
      }

      __src[6] = v141;
      __src[7] = v142[0];
      *(&__src[7] + 12) = *(v142 + 12);
      __src[2] = v137;
      __src[3] = v138;
      __src[5] = v140;
      __src[4] = v139;
      __src[1] = v136;
      __src[0] = v135;
      __src[15] = v149;
      __src[16] = v150[0];
      *(&__src[16] + 12) = *(v150 + 12);
      __src[11] = v145;
      __src[12] = v146;
      __src[13] = v147;
      __src[14] = v148;
      __src[9] = v143;
      __src[10] = v144;
      v132[6] = v141;
      v133[0] = v142[0];
      *(v133 + 12) = *(v142 + 12);
      v132[2] = v137;
      v132[3] = v138;
      v132[5] = v140;
      v132[4] = v139;
      v132[1] = v136;
      v132[0] = v135;
      if (_s10Foundation17LocalePreferencesVSgWOg(v132) == 1)
      {
        v129 = __src[15];
        v130[0] = __src[16];
        *(v130 + 12) = *(&__src[16] + 12);
        v125 = __src[11];
        v126 = __src[12];
        v128 = __src[14];
        v127 = __src[13];
        v124 = __src[10];
        v123 = __src[9];
        if (_s10Foundation17LocalePreferencesVSgWOg(&v123) == 1)
        {
          __dst[6] = __src[6];
          __dst[7] = __src[7];
          *(&__dst[7] + 12) = *(&__src[7] + 12);
          __dst[2] = __src[2];
          __dst[3] = __src[3];
          __dst[4] = __src[4];
          __dst[5] = __src[5];
          __dst[0] = __src[0];
          __dst[1] = __src[1];
          outlined init with copy of FloatingPointRoundingRule?(&v135, v120, &_s10Foundation17LocalePreferencesVSgMd);
          outlined init with copy of FloatingPointRoundingRule?(&v143, v120, &_s10Foundation17LocalePreferencesVSgMd);
          outlined destroy of TermOfAddress?(__dst, &_s10Foundation17LocalePreferencesVSgMd);
          return v4;
        }

        outlined init with copy of LocaleCache.State.IdentifierAndPrefs(&v134, __dst);
        outlined init with copy of FloatingPointRoundingRule?(&v135, __dst, &_s10Foundation17LocalePreferencesVSgMd);
        outlined init with copy of FloatingPointRoundingRule?(&v143, __dst, &_s10Foundation17LocalePreferencesVSgMd);
      }

      else
      {
        v79 = v4;
        *&v121[12] = *(&__src[7] + 12);
        v120[6] = __src[6];
        *v121 = __src[7];
        v120[2] = __src[2];
        v120[3] = __src[3];
        v120[4] = __src[4];
        v120[5] = __src[5];
        v120[0] = __src[0];
        v120[1] = __src[1];
        v88 = LOBYTE(__src[0]);
        v119[0] = *(__src + 1);
        *(v119 + 3) = DWORD1(__src[0]);
        v87 = *(&__src[0] + 1);
        v86 = __src[1];
        v84 = *&__src[3];
        v85 = __src[2];
        v82 = *&__src[4];
        v83 = *(&__src[3] + 1);
        v80 = *&__src[5];
        v81 = *(&__src[4] + 1);
        v18 = *(&__src[5] + 1);
        v19 = __src[6];
        v20 = __src[7];
        v21 = *(&__src[7] + 12) >> 32;
        v22 = BYTE8(__src[8]);
        v23 = BYTE9(__src[8]);
        v24 = BYTE10(__src[8]);
        v25 = BYTE11(__src[8]);
        v129 = __src[15];
        v130[0] = __src[16];
        *(v130 + 12) = *(&__src[16] + 12);
        v125 = __src[11];
        v126 = __src[12];
        v128 = __src[14];
        v127 = __src[13];
        v124 = __src[10];
        v123 = __src[9];
        if (_s10Foundation17LocalePreferencesVSgWOg(&v123) != 1)
        {
          v76 = v18;
          v74 = v21;
          v77 = v22;
          v72 = v25;
          v73 = v23;
          v75 = v24;
          v111 = __src[9];
          v112 = __src[10];
          v113 = __src[11];
          v114 = __src[12];
          v115 = __src[13];
          v116 = __src[14];
          v117 = __src[15];
          *v118 = __src[16];
          *&v118[12] = *(&__src[16] + 12);
          v26 = *(&__src[10] + 1);
          v27 = *&__src[10];
          v29 = *(&__src[11] + 1);
          v28 = *&__src[11];
          if (v88 != 2)
          {
            v30 = v20;
            if (v111 != 2 && ((v111 ^ v88) & 1) == 0)
            {
              goto LABEL_17;
            }

LABEL_48:
            outlined init with copy of LocaleCache.State.IdentifierAndPrefs(&v134, __dst);
            outlined init with copy of FloatingPointRoundingRule?(&v135, __dst, &_s10Foundation17LocalePreferencesVSgMd);
            outlined init with copy of FloatingPointRoundingRule?(&v143, __dst, &_s10Foundation17LocalePreferencesVSgMd);
            outlined init with copy of FloatingPointRoundingRule?(v120, __dst, &_s10Foundation17LocalePreferencesVSgMd);
            v5 = v78;
            LOBYTE(v44) = v75;
            goto LABEL_49;
          }

          v30 = v20;
          if (v111 != 2)
          {
            goto LABEL_48;
          }

LABEL_17:
          v68 = *(&v114 + 1);
          v71 = v114;
          v66 = *(&v115 + 1);
          v67 = v115;
          v64 = *(&v116 + 1);
          v65 = v116;
          v62 = *(&v117 + 1);
          v63 = v117;
          v61 = *&v118[16];
          v31 = *v118;
          v59 = v118[25];
          v60 = v118[24];
          v57 = v118[27];
          v58 = v118[26];
          if (v87)
          {
            if (!*(&v111 + 1))
            {
              goto LABEL_48;
            }

            v32 = *(v87 + 16);
            if (v32 != *(*(&v111 + 1) + 16))
            {
              goto LABEL_48;
            }

            if (v32 && v87 != *(&v111 + 1))
            {
              v33 = (v87 + 40);
              v34 = (*(&v111 + 1) + 40);
              do
              {
                if (*(v33 - 1) != *(v34 - 1) || *v33 != *v34)
                {
                  v36 = v30;
                  v37 = v26;
                  v38 = v27;
                  v39 = v29;
                  v40 = v28;
                  v41 = _stringCompareWithSmolCheck(_:_:expecting:)();
                  v28 = v40;
                  v29 = v39;
                  v27 = v38;
                  v26 = v37;
                  v30 = v36;
                  if ((v41 & 1) == 0)
                  {
                    goto LABEL_48;
                  }
                }

                v33 += 2;
                v34 += 2;
              }

              while (--v32);
            }
          }

          else if (*(&v111 + 1))
          {
            goto LABEL_48;
          }

          if (*(&v86 + 1))
          {
            if (!v26)
            {
              goto LABEL_48;
            }

            if (v86 != __PAIR128__(v26, v27))
            {
              v42 = v28;
              v43 = _stringCompareWithSmolCheck(_:_:expecting:)();
              v28 = v42;
              if ((v43 & 1) == 0)
              {
                goto LABEL_48;
              }
            }
          }

          else if (v26)
          {
            goto LABEL_48;
          }

          if (*(&v85 + 1))
          {
            if (!v29 || v85 != __PAIR128__(v29, v28) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {
              goto LABEL_48;
            }
          }

          else if (v29)
          {
            goto LABEL_48;
          }

          if (v84)
          {
            v5 = v78;
            LOBYTE(v44) = v75;
            if (v71 && (_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ10Foundation8CalendarV10IdentifierO_SiTt1g5(v84, v71) & 1) != 0)
            {
LABEL_42:
              if (v83)
              {
                if (!v68 || (_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ10Foundation8CalendarV10IdentifierO_SiTt1g5(v83, v68) & 1) == 0)
                {
                  goto LABEL_54;
                }
              }

              else if (v68)
              {
                goto LABEL_54;
              }

              if (v82)
              {
                if (!v67)
                {
                  goto LABEL_54;
                }

                type metadata accessor for CFDictionaryRef(0);
                outlined init with copy of LocaleCache.State.IdentifierAndPrefs(&v134, __dst);
                outlined init with copy of FloatingPointRoundingRule?(&v135, __dst, &_s10Foundation17LocalePreferencesVSgMd);
                outlined init with copy of FloatingPointRoundingRule?(&v143, __dst, &_s10Foundation17LocalePreferencesVSgMd);
                outlined init with copy of FloatingPointRoundingRule?(v120, __dst, &_s10Foundation17LocalePreferencesVSgMd);
                lazy protocol witness table accessor for type CombineIdentifier and conformance CombineIdentifier(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, 255, type metadata accessor for CFDictionaryRef);
                v45 = v67;
                v46 = static _CFObject.== infix(_:_:)();

                v5 = v78;
                if (v46)
                {
                  goto LABEL_63;
                }

LABEL_49:
                outlined destroy of TermOfAddress?(&v111, &_s10Foundation17LocalePreferencesVSgMd);
LABEL_50:
                v93 = v88;
                *v94 = v119[0];
                *&v94[3] = *(v119 + 3);
                v95 = v87;
                v96 = v86;
                v97 = v85;
                v98 = v84;
                v99 = v83;
                v100 = v82;
                v101 = v81;
                v102 = v80;
                v103 = v76;
                v104 = v19;
                v105 = v20;
                v106 = v74;
                v107 = BYTE8(v20);
                v108 = v73;
                v109 = v44;
                v110 = v72;
                outlined destroy of LocalePreferences(&v93);
                __dst[6] = __src[6];
                __dst[7] = __src[7];
                *(&__dst[7] + 12) = *(&__src[7] + 12);
                __dst[2] = __src[2];
                __dst[3] = __src[3];
                __dst[4] = __src[4];
                __dst[5] = __src[5];
                __dst[0] = __src[0];
                __dst[1] = __src[1];
                outlined destroy of TermOfAddress?(__dst, &_s10Foundation17LocalePreferencesVSgMd);
                outlined destroy of LocaleCache.State.IdentifierAndPrefs(&v134);
                v4 = v79;
                goto LABEL_5;
              }

              if (v67)
              {
                goto LABEL_54;
              }

              outlined init with copy of LocaleCache.State.IdentifierAndPrefs(&v134, __dst);
              outlined init with copy of FloatingPointRoundingRule?(&v135, __dst, &_s10Foundation17LocalePreferencesVSgMd);
              outlined init with copy of FloatingPointRoundingRule?(&v143, __dst, &_s10Foundation17LocalePreferencesVSgMd);
              outlined init with copy of FloatingPointRoundingRule?(v120, __dst, &_s10Foundation17LocalePreferencesVSgMd);
LABEL_63:
              if (v81)
              {
                if (!v66)
                {
                  goto LABEL_49;
                }

                type metadata accessor for CFDictionaryRef(0);
                lazy protocol witness table accessor for type CombineIdentifier and conformance CombineIdentifier(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, 255, type metadata accessor for CFDictionaryRef);
                v47 = v66;
                v48 = static _CFObject.== infix(_:_:)();

                v5 = v78;
                if ((v48 & 1) == 0)
                {
                  goto LABEL_49;
                }
              }

              else if (v66)
              {
                goto LABEL_49;
              }

              if (v80)
              {
                if (!v65)
                {
                  goto LABEL_49;
                }

                type metadata accessor for CFDictionaryRef(0);
                lazy protocol witness table accessor for type CombineIdentifier and conformance CombineIdentifier(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, 255, type metadata accessor for CFDictionaryRef);
                v49 = v65;
                v50 = static _CFObject.== infix(_:_:)();

                v5 = v78;
                if ((v50 & 1) == 0)
                {
                  goto LABEL_49;
                }
              }

              else if (v65)
              {
                goto LABEL_49;
              }

              if (v76)
              {
                if (!v64)
                {
                  goto LABEL_49;
                }

                type metadata accessor for CFDictionaryRef(0);
                lazy protocol witness table accessor for type CombineIdentifier and conformance CombineIdentifier(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, 255, type metadata accessor for CFDictionaryRef);
                v51 = v64;
                v52 = static _CFObject.== infix(_:_:)();

                v5 = v78;
                if ((v52 & 1) == 0)
                {
                  goto LABEL_49;
                }
              }

              else if (v64)
              {
                goto LABEL_49;
              }

              if (v19)
              {
                if (!v63)
                {
                  goto LABEL_49;
                }

                type metadata accessor for CFDictionaryRef(0);
                lazy protocol witness table accessor for type CombineIdentifier and conformance CombineIdentifier(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, 255, type metadata accessor for CFDictionaryRef);
                v53 = v63;
                v54 = static _CFObject.== infix(_:_:)();

                v5 = v78;
                if ((v54 & 1) == 0)
                {
                  goto LABEL_49;
                }
              }

              else if (v63)
              {
                goto LABEL_49;
              }

              if (*(&v19 + 1))
              {
                v5 = v78;
                LOBYTE(v44) = v75;
                if (!v62)
                {
                  goto LABEL_49;
                }

                v69 = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ10Foundation4DateV11FormatStyleV0cE0V_SSTt1g5(*(&v19 + 1), v62);

                if ((v69 & 1) == 0)
                {
                  goto LABEL_49;
                }
              }

              else
              {
                v5 = v78;
                LOBYTE(v44) = v75;
                if (v62)
                {
                  goto LABEL_49;
                }
              }

              if (v20)
              {
                v5 = v78;
                LOBYTE(v44) = v75;
                if (!v31)
                {
                  goto LABEL_49;
                }

                v70 = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZs6UInt32V_SSTt1g5(v20, v31);

                if ((v70 & 1) == 0)
                {
                  goto LABEL_49;
                }
              }

              else
              {
                v5 = v78;
                LOBYTE(v44) = v75;
                if (v31)
                {
                  goto LABEL_49;
                }
              }

              if (v74)
              {
                v5 = v78;
                LOBYTE(v44) = v75;
                v55 = v77;
                if (!v61 || (*(&v20 + 1) != *(&v31 + 1) || v74 != v61) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                {
                  goto LABEL_49;
                }
              }

              else
              {
                v5 = v78;
                LOBYTE(v44) = v75;
                v55 = v77;
                if (v61)
                {
                  goto LABEL_49;
                }
              }

              if (v55 == 2)
              {
                v5 = v78;
                LOBYTE(v44) = v75;
                if (v60 != 2)
                {
                  goto LABEL_49;
                }
              }

              else
              {
                v5 = v78;
                LOBYTE(v44) = v75;
                if (v60 == 2 || ((v60 ^ v77) & 1) != 0)
                {
                  goto LABEL_49;
                }
              }

              outlined destroy of TermOfAddress?(&v111, &_s10Foundation17LocalePreferencesVSgMd);
              if (v73 == 2)
              {
                v5 = v78;
                v44 = v75;
                if (v59 != 2)
                {
                  goto LABEL_50;
                }
              }

              else
              {
                v5 = v78;
                v44 = v75;
                if (v59 == 2 || ((v59 ^ v73) & 1) != 0)
                {
                  goto LABEL_50;
                }
              }

              if (v44 == 2)
              {
                v5 = v78;
                LOBYTE(v44) = v75;
                if (v58 != 2)
                {
                  goto LABEL_50;
                }
              }

              else
              {
                v5 = v78;
                LOBYTE(v44) = v75;
                if (v58 == 2 || ((v58 ^ v75) & 1) != 0)
                {
                  goto LABEL_50;
                }
              }

              if (v72 == 2)
              {
                v5 = v78;
                LOBYTE(v44) = v75;
                if (v57 == 2)
                {
                  goto LABEL_120;
                }
              }

              else
              {
                v5 = v78;
                LOBYTE(v44) = v75;
                if (v57 != 2 && ((v57 ^ v72) & 1) == 0)
                {
LABEL_120:
                  v93 = v88;
                  *v94 = v119[0];
                  *&v94[3] = *(v119 + 3);
                  v95 = v87;
                  v96 = v86;
                  v97 = v85;
                  v98 = v84;
                  v99 = v83;
                  v100 = v82;
                  v101 = v81;
                  v102 = v80;
                  v103 = v76;
                  v104 = v19;
                  v105 = v20;
                  v106 = v74;
                  v107 = BYTE8(v20);
                  v108 = v73;
                  v109 = v44;
                  v110 = v72;
                  outlined destroy of LocalePreferences(&v93);
                  __dst[6] = __src[6];
                  __dst[7] = __src[7];
                  *(&__dst[7] + 12) = *(&__src[7] + 12);
                  __dst[2] = __src[2];
                  __dst[3] = __src[3];
                  __dst[4] = __src[4];
                  __dst[5] = __src[5];
                  __dst[0] = __src[0];
                  __dst[1] = __src[1];
                  outlined destroy of TermOfAddress?(__dst, &_s10Foundation17LocalePreferencesVSgMd);
                  outlined destroy of LocaleCache.State.IdentifierAndPrefs(&v134);
                  return v79;
                }
              }

              goto LABEL_50;
            }
          }

          else
          {
            v5 = v78;
            LOBYTE(v44) = v75;
            if (!v71)
            {
              goto LABEL_42;
            }
          }

LABEL_54:
          outlined init with copy of LocaleCache.State.IdentifierAndPrefs(&v134, __dst);
          outlined init with copy of FloatingPointRoundingRule?(&v135, __dst, &_s10Foundation17LocalePreferencesVSgMd);
          outlined init with copy of FloatingPointRoundingRule?(&v143, __dst, &_s10Foundation17LocalePreferencesVSgMd);
          outlined init with copy of FloatingPointRoundingRule?(v120, __dst, &_s10Foundation17LocalePreferencesVSgMd);
          goto LABEL_49;
        }

        LOBYTE(v111) = v88;
        *(&v111 + 1) = *(__src + 1);
        DWORD1(v111) = DWORD1(__src[0]);
        *(&v111 + 1) = v87;
        v112 = v86;
        v113 = v85;
        v114 = __PAIR128__(v83, v84);
        v115 = __PAIR128__(v81, v82);
        v116 = __PAIR128__(v18, v80);
        v117 = v19;
        *v118 = v20;
        *&v118[16] = v21;
        v118[24] = v22;
        v118[25] = v23;
        v118[26] = v24;
        v118[27] = v25;
        outlined init with copy of LocaleCache.State.IdentifierAndPrefs(&v134, __dst);
        outlined init with copy of FloatingPointRoundingRule?(&v135, __dst, &_s10Foundation17LocalePreferencesVSgMd);
        outlined init with copy of FloatingPointRoundingRule?(&v143, __dst, &_s10Foundation17LocalePreferencesVSgMd);
        outlined init with copy of FloatingPointRoundingRule?(v120, __dst, &_s10Foundation17LocalePreferencesVSgMd);
        outlined destroy of LocalePreferences(&v111);
        v5 = v78;
      }

      memcpy(__dst, __src, 0x11CuLL);
      outlined destroy of TermOfAddress?(__dst, &_s10Foundation17LocalePreferencesVSg_ADtMd);
      outlined destroy of LocaleCache.State.IdentifierAndPrefs(&v134);
LABEL_5:
      v4 = (v4 + 1) & v89;
    }

    while (((*(v90 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    v6 = *(a1 + 16);
    v7 = *(a1 + 5);
    v22[0] = *(a1 + 3);
    v22[1] = v7;
    v22[2] = *(a1 + 7);
    v23 = *(a1 + 36);
    v8 = *a1;
    v9 = a1[1];
    v17 = *(a1 + 5);
    while (1)
    {
      v10 = (*(v2 + 48) + 96 * v4);
      v11 = v10[1];
      v19 = *v10;
      *v20 = v11;
      v12 = v10[5];
      v14 = v10[2];
      v13 = v10[3];
      *&v20[48] = v10[4];
      v21 = v12;
      *&v20[16] = v14;
      *&v20[32] = v13;
      if (v19 != __PAIR128__(v9, v8) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || v20[0] != v6)
      {
        goto LABEL_5;
      }

      v24[0] = *&v20[8];
      v24[1] = *&v20[24];
      v24[2] = *&v20[40];
      v25 = *&v20[56];
      outlined init with copy of ICUDateFormatter.PatternCacheKey(&v19, v18);
      if (!specialized static Date.FormatStyle.DateFieldCollection.== infix(_:_:)(v24, v22))
      {
        goto LABEL_4;
      }

      if (!*(&v21 + 1))
      {
        break;
      }

      if (!*(&v17 + 1))
      {
        goto LABEL_4;
      }

      if (v21 == v17)
      {
LABEL_15:
        outlined destroy of ICUDateFormatter.PatternCacheKey(&v19);
        return v4;
      }

      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
      outlined destroy of ICUDateFormatter.PatternCacheKey(&v19);
      if (v15)
      {
        return v4;
      }

LABEL_5:
      v4 = (v4 + 1) & v5;
      if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
      {
        return v4;
      }
    }

    if (!*(&v17 + 1))
    {
      goto LABEL_15;
    }

LABEL_4:
    outlined destroy of ICUDateFormatter.PatternCacheKey(&v19);
    goto LABEL_5;
  }

  return v4;
}

uint64_t protocol witness for _LocaleProtocol.bridgeToNSLocale() in conformance _LocaleICU()
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v0 = static LocaleCache.cache;
  os_unfair_lock_lock((static LocaleCache.cache + 48));
  partial apply for closure #1 in LocaleCache.fixedNSLocale(_:)(&v0[4], &v2);
  os_unfair_lock_unlock(v0 + 12);
  return v2;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance LocaleCache.State.IdentifierAndPrefs()
{
  v1 = *(v0 + 16);
  v32 = *(v0 + 24);
  v33 = *(v0 + 40);
  v29 = *(v0 + 32);
  v30 = *(v0 + 48);
  v34 = *(v0 + 56);
  v35 = *(v0 + 64);
  v36 = *(v0 + 72);
  v37 = *(v0 + 80);
  v38 = *(v0 + 88);
  v39 = *(v0 + 96);
  v31 = *(v0 + 104);
  v40 = *(v0 + 112);
  v2 = *(v0 + 120);
  v3 = *(v0 + 128);
  v4 = *(v0 + 136);
  v5 = *(v0 + 144);
  v6 = *(v0 + 152);
  v7 = *(v0 + 153);
  v8 = *(v0 + 154);
  v9 = *(v0 + 155);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v42 = v1;
  *v43 = *(v0 + 17);
  *&v43[3] = *(v0 + 20);
  v44 = v32;
  v45 = v29;
  v46 = v33;
  v47 = v30;
  v48 = v34;
  v49 = v35;
  v50 = v36;
  v51 = v37;
  v52 = v38;
  v53 = v39;
  v54 = v31;
  v55 = v40;
  v28 = v2;
  v56 = v2;
  v57 = v3;
  v58 = v4;
  v59 = v5;
  v60 = v6;
  v61 = v7;
  v62 = v8;
  v63 = v9;
  if (_s10Foundation17LocalePreferencesVSgWOg(&v42) == 1)
  {
    goto LABEL_48;
  }

  Hasher._combine(_:)(1u);
  if (v1 == 2)
  {
    v10 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v10 = v1 & 1;
  }

  Hasher._combine(_:)(v10);
  if (v32)
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](*(v32 + 16));
    v11 = *(v32 + 16);
    if (v11)
    {
      v12 = v32 + 40;
      do
      {

        String.hash(into:)();

        v12 += 16;
        --v11;
      }

      while (v11);
    }

    if (v33)
    {
      goto LABEL_10;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (v33)
    {
LABEL_10:
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      goto LABEL_13;
    }
  }

  Hasher._combine(_:)(0);
LABEL_13:
  if (v34)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    if (v35)
    {
      goto LABEL_15;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (v35)
    {
LABEL_15:
      Hasher._combine(_:)(1u);
      specialized Dictionary<>.hash(into:)(v41, v35, v13, v14, v15, v16, v17, v18);
      if (v36)
      {
        goto LABEL_16;
      }

      goto LABEL_22;
    }
  }

  Hasher._combine(_:)(0);
  if (v36)
  {
LABEL_16:
    Hasher._combine(_:)(1u);
    specialized Dictionary<>.hash(into:)(v41, v36, v19, v20, v21, v22, v23, v24);
    if (v37)
    {
      goto LABEL_17;
    }

    goto LABEL_23;
  }

LABEL_22:
  Hasher._combine(_:)(0);
  if (v37)
  {
LABEL_17:
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    _s10Foundation10_LocaleICUCAcA01_B8ProtocolAAWlTm_1(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
    _CFObject.hash(into:)();
    if (v38)
    {
      goto LABEL_18;
    }

LABEL_24:
    Hasher._combine(_:)(0);
    if (v39)
    {
      goto LABEL_19;
    }

    goto LABEL_25;
  }

LABEL_23:
  Hasher._combine(_:)(0);
  if (!v38)
  {
    goto LABEL_24;
  }

LABEL_18:
  Hasher._combine(_:)(1u);
  type metadata accessor for CFDictionaryRef(0);
  _s10Foundation10_LocaleICUCAcA01_B8ProtocolAAWlTm_1(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
  _CFObject.hash(into:)();
  if (v39)
  {
LABEL_19:
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    _s10Foundation10_LocaleICUCAcA01_B8ProtocolAAWlTm_1(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
    _CFObject.hash(into:)();
    goto LABEL_26;
  }

LABEL_25:
  Hasher._combine(_:)(0);
LABEL_26:
  if (v31)
  {
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    _s10Foundation10_LocaleICUCAcA01_B8ProtocolAAWlTm_1(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
    _CFObject.hash(into:)();
    if (v40)
    {
LABEL_28:
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      _s10Foundation10_LocaleICUCAcA01_B8ProtocolAAWlTm_1(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
      _CFObject.hash(into:)();
      goto LABEL_31;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (v40)
    {
      goto LABEL_28;
    }
  }

  Hasher._combine(_:)(0);
LABEL_31:
  if (v28)
  {
    Hasher._combine(_:)(1u);
    specialized Dictionary<>.hash(into:)(v41, v28);
    if (v3)
    {
      goto LABEL_33;
    }

LABEL_36:
    Hasher._combine(_:)(0);
    if (v5)
    {
      goto LABEL_34;
    }

    goto LABEL_37;
  }

  Hasher._combine(_:)(0);
  if (!v3)
  {
    goto LABEL_36;
  }

LABEL_33:
  Hasher._combine(_:)(1u);
  specialized Dictionary<>.hash(into:)(v41, v3);
  if (v5)
  {
LABEL_34:
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    goto LABEL_38;
  }

LABEL_37:
  Hasher._combine(_:)(0);
LABEL_38:
  if (v6 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v6 & 1);
  }

  if (v7 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v7 & 1);
  }

  if (v8 == 2)
  {
    v25 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v25 = v8 & 1;
  }

  Hasher._combine(_:)(v25);
  if (v9 != 2)
  {
    Hasher._combine(_:)(1u);
    v26 = v9 & 1;
    goto LABEL_50;
  }

LABEL_48:
  v26 = 0;
LABEL_50:
  Hasher._combine(_:)(v26);
  return Hasher._finalize()();
}

uint64_t get_enum_tag_for_layout_string_10Foundation17LocalePreferencesVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

NSLocale __swiftcall Locale._bridgeToObjectiveC()()
{
  v1 = *(v0 + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 488))(ObjectType, v1);
}

uint64_t storeEnumTagSinglePayload for LocalePreferences(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
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
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 140) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 140) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t outlined init with copy of LocalePreferences?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation17LocalePreferencesVSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

NSDictionary __swiftcall Dictionary._bridgeToObjectiveC()()
{
  if ((v0 & 0xC000000000000001) != 0)
  {

    return swift_unknownObjectRetain();
  }

  else
  {

    return _NativeDictionary.bridged()();
  }
}

uint64_t readDataFromFile(path:reportProgress:maxLength:options:)(__int128 *a1, char a2, uint64_t a3, char a4, char a5)
{
  v7 = *(a1 + 16);
  v18 = MEMORY[0x1E69E7CC8];
  v12 = *a1;
  v13 = v7;
  result = readBytesFromFile(path:reportProgress:maxLength:options:attributesToRead:attributes:)(&v12, a2, a3, a4 & 1, a5, MEMORY[0x1E69E7CC0], &v18, &v14);
  if (v6)
  {

    return v5;
  }

  v5 = v15;
  v9 = v16;
  v10 = v17;
  if (!v15)
  {
    outlined consume of Data.Deallocator?(v16);

    return v5;
  }

  v11 = v14;
  if (v14)
  {
    if (v16 != 4)
    {
      outlined copy of Data.Deallocator?(v16);

      v14 = v9;
      v15 = v10;
      v5 = specialized Data.init(bytesNoCopy:count:deallocator:)(v11, v5, &v14);
      outlined consume of Data.Deallocator?(v9);
      return v5;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t outlined copy of Data.Deallocator(unint64_t result)
{
  if (result >= 4)
  {
  }

  return result;
}

uint64_t specialized Data.init(bytesNoCopy:count:deallocator:)(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v5 = *a3;
  if (*a3 < 4)
  {
    v6 = 0;
    v7 = *(&off_1EEEE5A90 + v5);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_8:
    if (v5 >= 4)
    {
      v11 = *a3;
    }

    else
    {
      v11 = *(&off_1EEEE5A90 + v5);
    }

    outlined copy of Data.Deallocator(*a3);
    outlined copy of Data.Deallocator(v5);
    v11(a1, 0);

    v10 = 0;
    goto LABEL_12;
  }

  v7 = *a3;
  v6 = a3[1];
  if (!a2)
  {
    goto LABEL_8;
  }

LABEL_3:
  type metadata accessor for __DataStorage();
  result = swift_allocObject();
  if (a2 <= 0x3FFFFFFFFFFFFFFELL)
  {
    v9 = result;
    *(result + 32) = a2;
    *(result + 40) = 0;
    *(result + 64) = 0;
    *(result + 16) = a1;
    *(result + 24) = a2;
    *(result + 48) = v7;
    *(result + 56) = v6;
    if (v5 == 3)
    {
      *(result + 32) = a2 | 0x8000000000000000;
    }

    outlined copy of Data.Deallocator(v5);
    v10 = specialized Data._Representation.init(_:count:)(v9, a2);
LABEL_12:
    outlined consume of Data.Deallocator(v5);
    return v10;
  }

  __break(1u);
  return result;
}

uint64_t getEnumTagSinglePayload for Measurement(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

id @objc static NSLocale._localeIdentifierByAddingLikelySubtags(_:)(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)(a3);
  specialized static Locale.localeIdentifierWithLikelySubtags(_:)(v3);

  v4 = String._bridgeToObjectiveCImpl()();

  return v4;
}

uint64_t _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA46450LL4host14knownIPLiteralSbx_SbtSyRzlFZSs_Tt1g5(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, char a5)
{
  if (a5)
  {
    goto LABEL_2;
  }

  if ((a2 ^ a1) >= 0x4000)
  {

    if (Substring.UTF8View.subscript.getter() == 91)
    {
      if (__OFSUB__(Substring.UTF8View.distance(from:to:)(), 1))
      {
        goto LABEL_109;
      }

      Substring.UTF8View.index(_:offsetBy:)();
      v33 = Substring.UTF8View.subscript.getter();

      if (v33 == 93)
      {
LABEL_2:
        v9 = a2 >> 14;
        if (a2 >> 14 == a1 >> 14)
        {
          __break(1u);
        }

        else
        {

          if (Substring.UTF8View.subscript.getter() != 91)
          {
LABEL_114:

            __break(1u);
            return result;
          }

          if (!__OFSUB__(Substring.UTF8View.distance(from:to:)(), 1))
          {
            Substring.UTF8View.index(_:offsetBy:)();
            v10 = Substring.UTF8View.subscript.getter();

            if (v10 == 93)
            {

              v11 = Substring.UTF8View.index(after:)();
              if (!__OFSUB__(Substring.UTF8View.distance(from:to:)(), 1))
              {
                if (Substring.UTF8View.index(_:offsetBy:)() >> 14 >= v11 >> 14)
                {
                  v12 = Substring.subscript.getter();
                  v14 = v13;
                  v16 = v15;
                  v18 = v17;
                  v19 = specialized Collection<>.firstIndex(of:)(37, a1, a2, a3, a4);
                  if (v20)
                  {
                    v21 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5Sb_Tg50162_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506string9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSyRzlFZSbSRys5I7VGXEfU_10Foundation0nO0VXMtAP15URLComponentSet01_qrstuvW0LLVSbTf1cn_nTf4ndnn_n(v12, v14, v16, v18, 2u, 0);
                    if (v21 != 2)
                    {
LABEL_13:
                      v31 = v21;
LABEL_14:

                      v32 = v31;
                      return v32 & 1;
                    }

                    v97 = v12;
                    v98 = v14;
                    v99 = v16;
                    v100 = v18;
                    lazy protocol witness table accessor for type Substring and conformance Substring();
                    StringProtocol._ephemeralString.getter();
                    v22 = String._bridgeToObjectiveCImpl()();

                    v23 = [v22 _fastCharacterContents];
                    v24 = v22;
                    if (v23)
                    {
                      v97 = v12;
                      v98 = v14;
                      v99 = v16;
                      v100 = v18;
                      StringProtocol._ephemeralString.getter();
                      v25 = String._bridgeToObjectiveCImpl()();

                      v26 = [v25 length];
                      swift_unknownObjectRelease();
                      v27 = v23;
                      v28 = v26;
                      v29 = 2;
                      v30 = 0;
LABEL_12:
                      v21 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v27, v28, v29, v30);
                      goto LABEL_13;
                    }

                    v54 = v14 >> 14;
                    v55 = (v16 >> 59) & 1;
                    if ((v18 & 0x1000000000000000) == 0)
                    {
                      LOBYTE(v55) = 1;
                    }

                    v56 = 4 << v55;
                    v57 = v12 >> 14;
                    if ((v18 & 0x2000000000000000) != 0)
                    {
                      v58 = HIBYTE(v18) & 0xF;
                    }

                    else
                    {
                      v58 = v16 & 0xFFFFFFFFFFFFLL;
                    }

                    while (1)
                    {
                      v59 = v12 >> 14;
                      if (v12 >> 14 == v54)
                      {

                        v32 = 1;
                        return v32 & 1;
                      }

                      v60 = v12 & 0xC;
                      v61 = v12;
                      if (v60 == v56)
                      {
                        v61 = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, v16, v18);
                        v59 = v61 >> 14;
                        if (v61 >> 14 < v57)
                        {
                          goto LABEL_107;
                        }
                      }

                      else if (v59 < v57)
                      {
                        goto LABEL_107;
                      }

                      if (v59 >= v54)
                      {
                        goto LABEL_107;
                      }

                      if ((v18 & 0x1000000000000000) != 0)
                      {
                        v63 = String.UTF8View._foreignSubscript(position:)();
                        if (v60 == v56)
                        {
                          goto LABEL_49;
                        }
                      }

                      else if ((v18 & 0x2000000000000000) != 0)
                      {
                        v97 = v16;
                        v98 = v18 & 0xFFFFFFFFFFFFFFLL;
                        v63 = *(&v97 + (v61 >> 16));
                        if (v60 == v56)
                        {
                          goto LABEL_49;
                        }
                      }

                      else
                      {
                        v62 = (v18 & 0xFFFFFFFFFFFFFFFLL) + 32;
                        if ((v16 & 0x1000000000000000) == 0)
                        {
                          v65 = v61;
                          v62 = _StringObject.sharedUTF8.getter();
                          v61 = v65;
                        }

                        v63 = *(v62 + (v61 >> 16));
                        if (v60 == v56)
                        {
LABEL_49:
                          v12 = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, v16, v18);
                          if ((v18 & 0x1000000000000000) == 0)
                          {
                            goto LABEL_55;
                          }

                          goto LABEL_50;
                        }
                      }

                      if ((v18 & 0x1000000000000000) == 0)
                      {
LABEL_55:
                        if (v63 < 0)
                        {
                          goto LABEL_61;
                        }

                        v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
                        goto LABEL_39;
                      }

LABEL_50:
                      if (v58 <= v12 >> 16)
                      {
                        goto LABEL_108;
                      }

                      v64 = String.UTF8View._foreignIndex(after:)();
                      if (v63 < 0)
                      {
                        goto LABEL_61;
                      }

                      v12 = v64;
LABEL_39:
                      if ((UInt8.allowedURLComponents.getter(v63) & 2) == 0)
                      {
                        goto LABEL_61;
                      }
                    }
                  }

                  v96 = v14;
                  v34 = v19;
                  if (v9 == Substring.UTF8View.index(after:)() >> 14 || Substring.UTF8View.subscript.getter() != 50 || v9 == Substring.UTF8View.index(after:)() >> 14 || Substring.UTF8View.subscript.getter() != 53)
                  {
                    goto LABEL_61;
                  }

                  if (v34 >> 14 >= v12 >> 14)
                  {
                    v35 = Substring.subscript.getter();
                    v37 = v36;
                    v39 = v38;
                    v41 = v40;
                    v42 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5Sb_Tg50162_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506string9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSyRzlFZSbSRys5I7VGXEfU_10Foundation0nO0VXMtAP15URLComponentSet01_qrstuvW0LLVSbTf1cn_nTf4ndnn_n(v35, v36, v38, v40, 2u, 0);
                    if (v42 != 2)
                    {
                      v67 = v42;

                      if (v67)
                      {
LABEL_96:
                        if (v96 >> 14 >= Substring.index(after:)() >> 14)
                        {
                          v80 = Substring.subscript.getter();
                          v82 = v81;
                          v84 = v83;
                          v86 = v85;
                          v87 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5Sb_Tg50162_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506string9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSyRzlFZSbSRys5I7VGXEfU_10Foundation0nO0VXMtAP15URLComponentSet01_qrstuvW0LLVSbTf1cn_nTf4ndnn_n(v80, v81, v83, v85, 8u, 1);
                          if (v87 == 2)
                          {
                            v97 = v80;
                            v98 = v82;
                            v99 = v84;
                            v100 = v86;
                            lazy protocol witness table accessor for type Substring and conformance Substring();
                            StringProtocol._ephemeralString.getter();
                            v88 = String._bridgeToObjectiveCImpl()();

                            v89 = [v88 _fastCharacterContents];
                            v90 = v88;
                            if (v89)
                            {
                              v97 = v80;
                              v98 = v82;
                              v99 = v84;
                              v100 = v86;
                              StringProtocol._ephemeralString.getter();
                              v91 = String._bridgeToObjectiveCImpl()();

                              v92 = [v91 length];
                              swift_unknownObjectRelease();
                              v27 = v89;
                              v28 = v92;
                              v29 = 8;
                              v30 = 1;
                              goto LABEL_12;
                            }

                            v87 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSs8UTF8ViewV_Tt2g5(v80, v82, v84, v86, 8u, 1);
                          }

                          v31 = v87;

                          goto LABEL_14;
                        }

                        goto LABEL_113;
                      }

LABEL_61:

                      v32 = 0;
                      return v32 & 1;
                    }

                    v97 = v35;
                    v98 = v37;
                    v99 = v39;
                    v100 = v41;
                    lazy protocol witness table accessor for type Substring and conformance Substring();
                    StringProtocol._ephemeralString.getter();
                    v43 = String._bridgeToObjectiveCImpl()();

                    v44 = [v43 _fastCharacterContents];
                    v45 = v43;
                    if (v44)
                    {
                      v97 = v35;
                      v98 = v37;
                      v99 = v39;
                      v100 = v41;
                      v46 = v44;
                      StringProtocol._ephemeralString.getter();
                      v47 = String._bridgeToObjectiveCImpl()();

                      v48 = [v47 length];
                      swift_unknownObjectRelease();
                      if (_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v46, v48, 2u, 0))
                      {
                        goto LABEL_96;
                      }

                      goto LABEL_61;
                    }

                    v68 = v39;
                    v69 = v37 >> 14;
                    v70 = (v68 >> 59) & 1;
                    if ((v41 & 0x1000000000000000) == 0)
                    {
                      LOBYTE(v70) = 1;
                    }

                    v71 = 4 << v70;
                    v94 = v35 >> 14;
                    v72 = HIBYTE(v41) & 0xF;
                    v95 = v68;
                    if ((v41 & 0x2000000000000000) == 0)
                    {
                      v72 = v68 & 0xFFFFFFFFFFFFLL;
                    }

                    v93 = v72;
                    while (1)
                    {
                      v73 = v35 >> 14;
                      if (v35 >> 14 == v69)
                      {

                        goto LABEL_96;
                      }

                      v74 = v35 & 0xC;
                      v75 = v35;
                      if (v74 == v71)
                      {
                        v75 = _StringGuts._slowEnsureMatchingEncoding(_:)(v35, v95, v41);
                        v73 = v75 >> 14;
                      }

                      if (v73 < v94 || v73 >= v69)
                      {
                        goto LABEL_110;
                      }

                      if ((v41 & 0x1000000000000000) != 0)
                      {
                        v78 = String.UTF8View._foreignSubscript(position:)();
                        if (v74 == v71)
                        {
                          goto LABEL_84;
                        }
                      }

                      else
                      {
                        v76 = v75 >> 16;
                        if ((v41 & 0x2000000000000000) != 0)
                        {
                          v97 = v95;
                          v98 = v41 & 0xFFFFFFFFFFFFFFLL;
                          v78 = *(&v97 + v76);
                          if (v74 == v71)
                          {
                            goto LABEL_84;
                          }
                        }

                        else
                        {
                          v77 = (v41 & 0xFFFFFFFFFFFFFFFLL) + 32;
                          if ((v95 & 0x1000000000000000) == 0)
                          {
                            v77 = _StringObject.sharedUTF8.getter();
                          }

                          v78 = *(v77 + v76);
                          if (v74 == v71)
                          {
LABEL_84:
                            v35 = _StringGuts._slowEnsureMatchingEncoding(_:)(v35, v95, v41);
                            if ((v41 & 0x1000000000000000) == 0)
                            {
                              goto LABEL_71;
                            }

                            goto LABEL_88;
                          }
                        }
                      }

                      if ((v41 & 0x1000000000000000) == 0)
                      {
LABEL_71:
                        if (v78 < 0)
                        {
                          goto LABEL_93;
                        }

                        v35 = (v35 & 0xFFFFFFFFFFFF0000) + 65540;
                        goto LABEL_73;
                      }

LABEL_88:
                      if (v93 <= v35 >> 16)
                      {
                        goto LABEL_112;
                      }

                      v79 = String.UTF8View._foreignIndex(after:)();
                      if (v78 < 0)
                      {
LABEL_93:

                        goto LABEL_61;
                      }

                      v35 = v79;
LABEL_73:
                      if ((UInt8.allowedURLComponents.getter(v78) & 2) == 0)
                      {
                        goto LABEL_93;
                      }
                    }
                  }

LABEL_111:
                  __break(1u);
LABEL_112:
                  __break(1u);
LABEL_113:
                  __break(1u);
                  goto LABEL_114;
                }

                goto LABEL_106;
              }

LABEL_105:
              __break(1u);
LABEL_106:
              __break(1u);
LABEL_107:
              __break(1u);
LABEL_108:
              __break(1u);
LABEL_109:
              __break(1u);
LABEL_110:
              __break(1u);
              goto LABEL_111;
            }

LABEL_104:
            __break(1u);
            goto LABEL_105;
          }
        }

        __break(1u);
        goto LABEL_104;
      }
    }

    else
    {
    }
  }

  v32 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5Sb_Tg50162_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506string9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSyRzlFZSbSRys5I7VGXEfU_10Foundation0nO0VXMtAP15URLComponentSet01_qrstuvW0LLVSbTf1cn_nTf4ndnn_n(a1, a2, a3, a4, 4u, 1);
  if (v32 == 2)
  {
    v97 = a1;
    v98 = a2;
    v99 = a3;
    v100 = a4;
    lazy protocol witness table accessor for type Substring and conformance Substring();
    StringProtocol._ephemeralString.getter();
    v49 = String._bridgeToObjectiveCImpl()();

    v50 = [v49 _fastCharacterContents];
    v51 = v49;
    if (v50)
    {
      v97 = a1;
      v98 = a2;
      v99 = a3;
      v100 = a4;
      StringProtocol._ephemeralString.getter();
      v52 = String._bridgeToObjectiveCImpl()();

      v53 = [v52 length];
      swift_unknownObjectRelease();
      v32 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v50, v53, 4u, 1);
    }

    else
    {
      v32 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSs8UTF8ViewV_Tt2g5(a1, a2, a3, a4, 4u, 1);
    }
  }

  return v32 & 1;
}

uint64_t outlined consume of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined consume of Data._Representation(a1, a2);
  }

  return a1;
}

uint64_t static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)(void *a1, void *a2, void (*a3)(char *, char *, uint64_t), uint64_t a4, uint64_t a5)
{
  v10 = MEMORY[0x1E69E6158];

  swift_unknownObjectRetain();
  if (a3 != v10 || a4 != MEMORY[0x1E69E7CA0] + 8)
  {
    v12 = static Dictionary._bridgeFromObjectiveCAdoptingNativeStorageOf(_:)();
    if (!v12)
    {
      if (*(*(a3 - 1) + 72) < 8 || *(*(a4 - 8) + 72) <= 7)
      {
        type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSObject);
        lazy protocol witness table accessor for type NSObject and conformance NSObject();
        swift_unknownObjectRetain();
        v14 = static Dictionary._bridgeFromObjectiveCAdoptingNativeStorageOf(_:)();
        if (!v14)
        {
          v15 = [a1 copyWithZone_];
          v14 = ~(v15 >> 1) & 0x4000000000000000 | v15;
        }

        v16 = specialized _dictionaryDownCastConditional<A, B, C, D>(_:)(v14, a3, a4, a5);

        *a2 = v16;
        return v16 != 0;
      }

      v24 = [a1 count];
      if (v24)
      {
        LOBYTE(v29[0]) = 1;
        MEMORY[0x1EEE9AC00](v24);
        v28[2] = a3;
        v28[3] = a4;
        v28[4] = a5;
        v28[5] = a1;
        v28[6] = v25;
        v28[7] = v29;
        v27 = _NativeDictionary.init(_unsafeUninitializedCapacity:allowingDuplicates:initializingWith:)(v25, v26, partial apply for closure #1 in static Dictionary._conditionallyBridgeFromObjectiveC(_:result:), v28, a3, a4);
        v17 = LOBYTE(v29[0]);
        if (LOBYTE(v29[0]) != 1)
        {

          v27 = 0;
        }

        *a2 = v27;
        return v17;
      }

      v12 = specialized Dictionary.init(dictionaryLiteral:)(MEMORY[0x1E69E7CC0], a3, a4, a5);
    }

    goto LABEL_15;
  }

  v12 = static Dictionary._bridgeFromObjectiveCAdoptingNativeStorageOf(_:)();
  if (v12)
  {
LABEL_15:
    *a2 = v12;
    return 1;
  }

  v19 = [a1 count];
  if (!v19)
  {
    *a2 = MEMORY[0x1E69E7CC8];
    return 1;
  }

  v20 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd);
  v21 = static _DictionaryStorage.allocate(capacity:)();
  v22 = v21[6];
  v23 = v21[7];

  [a1 _getObjects_andKeys_count_];
  if (v20 >= 1)
  {
    v29[0] = 0;
    v29[1] = 0;
    swift_unknownObjectRetain();
    _bridgeNonVerbatimFromObjectiveCConditional<A>(_:_:_:)();
    swift_unknownObjectRelease();
  }

  result = swift_arrayDestroy();
  v17 = 0;
  if (v20 >= 0)
  {
    v21[2] = 0;

    *a2 = 0;
    return v17;
  }

  __break(1u);
  __break(1u);
  __break(1u);
  return result;
}

uint64_t specialized static RFC3986Parser.parse(urlString:allowEmptyScheme:encodedComponents:)(uint64_t a1, unint64_t a2, char a3, char a4)
{
  LOBYTE(v5) = a3;
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;

  if ((a2 & 0x1000000000000000) != 0)
  {
    a1 = static String._copying(_:)();
    v109 = v108;

    *(v8 + 16) = a1;
    *(v8 + 24) = v109;
    a2 = v109;
  }

  v145 = a2;
  v146 = v8;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v20 = HIBYTE(a2) & 0xF;
    v178 = a1;
    v179 = a2 & 0xFFFFFFFFFFFFFFLL;
    LOBYTE(v149) = 1;
    v166 = 1;
    v165 = 1;
    v164 = 1;
    v163 = 1;
    v162 = 1;
    v161 = 1;
    v160 = 1;
    v167 = 0uLL;
    LOBYTE(v168) = 1;
    *(&v168 + 1) = 0;
    *&v169 = 0;
    BYTE8(v169) = 1;
    v170 = 0uLL;
    LOBYTE(v171) = 1;
    *&v172 = 0;
    *(&v171 + 1) = 0;
    BYTE8(v172) = 1;
    v173 = 0uLL;
    LOBYTE(v174) = 1;
    *&v175 = 0;
    *(&v174 + 1) = 0;
    BYTE8(v175) = 1;
    v176 = 0uLL;
    v177[0] = 1;
    *&v177[16] = 0;
    *&v177[8] = 0;
    v177[24] = 1;
    *&v177[25] = 0;
    v177[27] = 0;
    if (!v20)
    {
      v143 = a1;
      v144 = a4;
      BYTE8(v175) = 0;
      *(&v174 + 1) = 0;
      *&v175 = 0;
      v153 = v171;
      v154 = v172;
      v149 = v167;
      v150 = v168;
      v151 = v169;
      v152 = v170;
      v157 = v175;
      v158 = v176;
      *v159 = *v177;
      *&v159[12] = *&v177[12];
LABEL_27:
      v155 = v173;
      v156 = v174;
      _NSBundleDeallocatingImmortalBundle(&v149, v10);
      v14 = *(&v149 + 1);
      v23 = v149;
      v32 = v150;
      v24 = *(&v155 + 1);
      v28 = v156;
      v25 = v157;
      v147 = *(&v156 + 1);
      v26 = *&v159[16];
      LOBYTE(v13) = v159[24];
      v113 = v159[27];
      v114 = *(&v158 + 1);
      v115 = *&v159[8];
      v124 = v154;
      v126 = *(&v153 + 1);
      v121 = v155;
      v116 = v158;
      LOBYTE(v117) = BYTE8(v157);
      BYTE4(v117) = v159[25];
      v129 = *(&v152 + 1);
      v131 = v152;
      v134 = v151;
      v136 = *(&v150 + 1);
      v118 = v159[26];
      v31 = BYTE8(v151);
      v30 = v153;
      v29 = BYTE8(v154);
      v27 = v159[0];
      goto LABEL_178;
    }

    v11 = 0;
    v15 = &v176 + 1;
    v16 = v177;
    v140 = &v177[16];
    v17 = &v177[24];
    while (1)
    {
      v21 = *(&v178 + v11) - 35;
      if (v21 <= 0x3A)
      {
        if (((1 << (*(&v178 + v11) - 35)) & 0x500000030001001) != 0)
        {
          goto LABEL_23;
        }

        if (v21 == 23)
        {
          break;
        }
      }

      if (v20 == ++v11)
      {
        v22 = HIBYTE(a2) & 0xF;
        goto LABEL_59;
      }
    }

    if (!v11 && (v5 & 1) == 0)
    {
LABEL_23:
      v22 = 0;
      goto LABEL_59;
    }

    *&v167 = 0;
    *(&v167 + 1) = v11;
    LOBYTE(v168) = 0;
    if ((v20 - 1) == v11)
    {
      v52 = HIBYTE(a2) & 0xF;
      if (v11)
      {
        if (v178 < 0x41u)
        {
          goto LABEL_24;
        }

        for (i = 0; i != v11; ++i)
        {
          v54 = *(&v178 + i);
          if (v54 < 0 || (UInt8.allowedURLComponents.getter(v54) & 1) == 0)
          {
            goto LABEL_24;
          }
        }
      }

      else if ((v5 & 1) == 0)
      {
        goto LABEL_24;
      }

      v143 = a1;
      v144 = a4;
      *(&v174 + 1) = v52;
      *&v175 = v52;
      BYTE8(v175) = 0;
      *v159 = *v177;
      *&v159[12] = *&v177[12];
      v153 = v171;
      v154 = v172;
      v149 = v167;
      v150 = v168;
      v151 = v169;
      v152 = v170;
      v157 = v175;
      v158 = v176;
      goto LABEL_27;
    }

    if (v11)
    {
      if (v178 < 0x41u)
      {
        goto LABEL_24;
      }

      v65 = 0;
      v22 = (v11 + 1);
      while (1)
      {
        if (*(&v178 + v65) < 0)
        {
          goto LABEL_24;
        }

        v66 = *(&v178 + v65);
        if (v66 <= 0x2A && ((1 << v66) & 0x7D200000000) != 0)
        {
          goto LABEL_24;
        }

        if (v66 > 0x2F)
        {
          goto LABEL_146;
        }

        if (((1 << v66) & 0x680000000000) == 0)
        {
          break;
        }

LABEL_143:
        if (v11 == ++v65)
        {
          goto LABEL_59;
        }
      }

      if (((1 << v66) & 0x900000000000) != 0)
      {
        goto LABEL_24;
      }

LABEL_146:
      v68 = v66 - 58;
      if (v66 - 58 <= 0xFFFFFFF5)
      {
        v56 = v68 > 6;
        v69 = (1 << v68) & 0x6B;
        v70 = v56 || v69 == 0;
        if (!v70 || (v66 & 0x5F) - 91 <= 0xFFFFFFE5)
        {
          goto LABEL_24;
        }
      }

      goto LABEL_143;
    }

    v22 = 1;
    if ((v5 & 1) == 0)
    {
      goto LABEL_24;
    }

LABEL_59:
    if (v22 == v20)
    {
      v42 = 0;
    }

    else
    {
      v42 = v22;
    }

    if (v42 + 1 != v20 && *(&v178 + v42) == 47 && *(&v178 + v42 + 1) == 47)
    {
      result = v42 + 2;
      v43 = v20;
      if (v42 + 2 != v20)
      {
        v43 = v42 + 2;
        do
        {
          v60 = *(&v178 + v43);
          v56 = v60 > 0x3F;
          v61 = (1 << v60) & 0x8000800800000000;
          if (!v56 && v61 != 0)
          {
            goto LABEL_66;
          }

          ++v43;
        }

        while (v20 != v43);
        v43 = v20;
      }

LABEL_66:
      if (v43 < result)
      {
        goto LABEL_231;
      }

      if (result == v43)
      {
        *(&v171 + 1) = v42 + 2;
        *&v172 = v42 + 2;
        v42 += 2;
        BYTE8(v172) = 0;
      }

      else
      {
        v63 = v20;
        v42 = v43;
        if ((specialized static RFC3986Parser.parseAuthority(_:into:allowEmptyScheme:)(result, v43, &v178, &v167, v5 & 1) & 1) == 0)
        {
          goto LABEL_24;
        }

        v20 = v63;
        if ((v174 & 1) == 0)
        {
          v64 = v173;
          if (v173 != *(&v173 + 1))
          {
            while (*(&v178 + v64) - 58 > 0xFFFFFFF5)
            {
              if (*(&v173 + 1) == ++v64)
              {
                goto LABEL_69;
              }
            }

            if (*(&v167 + 1) - v167 == 11)
            {
              v107 = v168;
            }

            else
            {
              v107 = 1;
            }

            if ((v107 & 1) != 0 || (((0x3FFE000000000uLL >> ((v178 - 1) >> 1)) & 0x20) + v178) != 97 || (((0x3FFE000000000uLL >> ((BYTE1(v178) - 1) >> 1)) & 0x20) + BYTE1(v178)) != 100 || (((0x3FFE000000000uLL >> ((BYTE2(v178) - 1) >> 1)) & 0x20) + BYTE2(v178)) != 100 || (((0x3FFE000000000uLL >> ((BYTE3(v178) - 1) >> 1)) & 0x20) + BYTE3(v178)) != 114 || (((0x3FFE000000000uLL >> ((BYTE4(v178) - 1) >> 1)) & 0x20) + BYTE4(v178)) != 101 || (((0x3FFE000000000uLL >> ((BYTE5(v178) - 1) >> 1)) & 0x20) + BYTE5(v178)) != 115 || (((0x3FFE000000000uLL >> ((BYTE6(v178) - 1) >> 1)) & 0x20) + BYTE6(v178)) != 115 || (((0x3FFE000000000uLL >> ((HIBYTE(v178) - 1) >> 1)) & 0x20) + HIBYTE(v178)) != 98 || (((0x3FFE000000000uLL >> ((v179 - 1) >> 1)) & 0x20) + v179) != 111 || (((0x3FFE000000000uLL >> ((BYTE1(v179) - 1) >> 1)) & 0x20) + BYTE1(v179)) != 111 || (((0x3FFE000000000uLL >> ((BYTE2(v179) - 1) >> 1)) & 0x20) + BYTE2(v179)) != 107)
            {
              goto LABEL_24;
            }
          }
        }
      }
    }

LABEL_69:
    if (v20 < v42)
    {
      __break(1u);
    }

    else
    {
      v147 = v42;
      if (one-time initialization token for fileIDPrefix == -1)
      {
LABEL_71:
        v13 = static URL.fileIDPrefix;
        v44 = v20;
        result = specialized Sequence<>.starts<A>(with:)(static URL.fileIDPrefix, v147, v20, &v178);
        v37 = v147;
        if (result)
        {
          v177[27] = 1;
          v37 = *(v13 + 16) + v147;
        }

        v36 = v44;
        v144 = a4;
        v143 = a1;
        if (v37 != v44)
        {
          while (1)
          {
            v45 = *(&v178 + v37);
            if (v45 == 35 || v45 == 63)
            {
              break;
            }

            if (v44 == ++v37)
            {
              goto LABEL_77;
            }
          }

          if (v37 >= v147)
          {
            *(&v174 + 1) = v147;
            *&v175 = v37;
            BYTE8(v175) = 0;
            if (v45 == 35)
            {
              goto LABEL_88;
            }

            if (v44 >= v37 + 1)
            {
              if (v44 - 1 == v37)
              {
LABEL_85:
                *&v176 = v37 + 1;
              }

              else
              {
                v46 = v37 + 1;
                while (*(&v178 + v46) != 35)
                {
                  if (v44 == ++v46)
                  {
                    goto LABEL_85;
                  }
                }

                *&v176 = v37 + 1;
                *(&v176 + 1) = v46;
                v177[0] = 0;
                v48 = v46 + 1;
                if (v44 < v46 + 1)
                {
LABEL_236:
                  __break(1u);
                  return result;
                }

LABEL_175:
                *&v177[8] = v48;
                v15 = v140;
                v16 = v17;
              }

              *v15 = v36;
              *v16 = 0;
              v14 = *(&v167 + 1);
              v23 = v167;
              v134 = v169;
              v136 = *(&v168 + 1);
              v129 = *(&v170 + 1);
              v131 = v170;
              v124 = v172;
              v126 = *(&v171 + 1);
              v24 = *(&v173 + 1);
              v121 = v173;
              v114 = *(&v176 + 1);
              v115 = *&v177[8];
              v116 = v176;
              v26 = *&v177[16];
              v32 = v168;
              v31 = BYTE8(v169);
              v30 = v171;
              v29 = BYTE8(v172);
              v28 = v174;
              LOBYTE(v117) = BYTE8(v175);
              goto LABEL_177;
            }

            goto LABEL_233;
          }

          goto LABEL_229;
        }

LABEL_77:
        LOBYTE(v117) = 0;
        BYTE8(v175) = 0;
        v14 = *(&v167 + 1);
        v23 = v167;
        v134 = v169;
        v136 = *(&v168 + 1);
        v129 = *(&v170 + 1);
        v131 = v170;
        v124 = v172;
        v126 = *(&v171 + 1);
        v24 = *(&v173 + 1);
        v121 = v173;
        v114 = *(&v176 + 1);
        v115 = *&v177[8];
        v116 = v176;
        v26 = *&v177[16];
        v32 = v168;
        v31 = BYTE8(v169);
        v30 = v171;
        v29 = BYTE8(v172);
        v28 = v174;
        v27 = v177[0];
        LOBYTE(v13) = v177[24];
        BYTE4(v117) = v177[25];
        v118 = v177[26];
        v113 = v177[27];
        v25 = v36;
LABEL_178:
        v76 = convert #1 (_:) in static RFC3986Parser.parse(urlString:allowEmptyScheme:encodedComponents:)(v23, v14, v32 & 1, v146);
        v139 = v77;
        v142 = v76;
        v138 = v78;
        v79 = convert #1 (_:) in static RFC3986Parser.parse(urlString:allowEmptyScheme:encodedComponents:)(v136, v134, v31 & 1, v146);
        v135 = v80;
        v137 = v79;
        v133 = v81;
        v82 = convert #1 (_:) in static RFC3986Parser.parse(urlString:allowEmptyScheme:encodedComponents:)(v131, v129, v30 & 1, v146);
        v130 = v83;
        v132 = v82;
        v128 = v84;
        v85 = convert #1 (_:) in static RFC3986Parser.parse(urlString:allowEmptyScheme:encodedComponents:)(v126, v124, v29 & 1, v146);
        v125 = v86;
        v127 = v85;
        v123 = v87;
        v88 = convert #1 (_:) in static RFC3986Parser.parse(urlString:allowEmptyScheme:encodedComponents:)(v121, v24, v28 & 1, v146);
        v120 = v89;
        v122 = v88;
        v119 = v90;
        v91 = convert #1 (_:) in static RFC3986Parser.parse(urlString:allowEmptyScheme:encodedComponents:)(v147, v25, v117 & 1, v146);
        v148 = v92;
        v94 = v93;
        v95 = convert #1 (_:) in static RFC3986Parser.parse(urlString:allowEmptyScheme:encodedComponents:)(v116, v114, v27 & 1, v146);
        v97 = v96;
        v99 = v98;
        v100 = convert #1 (_:) in static RFC3986Parser.parse(urlString:allowEmptyScheme:encodedComponents:)(v115, v26, v13 & 1, v146);
        v102 = v101;
        v104 = v103;

        type metadata accessor for URLParseInfo();
        result = swift_allocObject();
        *(result + 16) = v143;
        *(result + 24) = v145;
        *(result + 32) = v142;
        *(result + 40) = v139;
        *(result + 48) = v138 & 1;
        *(result + 56) = v137;
        *(result + 64) = v135;
        *(result + 72) = v133 & 1;
        *(result + 80) = v132;
        *(result + 88) = v130;
        *(result + 96) = v128 & 1;
        *(result + 104) = v127;
        *(result + 112) = v125;
        *(result + 120) = v123 & 1;
        *(result + 128) = v122;
        *(result + 136) = v120;
        *(result + 144) = v119 & 1;
        *(result + 152) = v91;
        *(result + 160) = v148;
        *(result + 168) = v94 & 1;
        *(result + 176) = v95;
        *(result + 184) = v97;
        *(result + 192) = v99 & 1;
        *(result + 200) = v100;
        *(result + 208) = v102;
        *(result + 216) = v104 & 1;
        *(result + 217) = BYTE4(v117) & 1;
        *(result + 218) = v118 & 1;
        *(result + 219) = v113 & 1;
        *(result + 220) = v144;
        return result;
      }
    }

    v112 = v20;
    swift_once();
    v20 = v112;
    goto LABEL_71;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v11 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v12 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    result = _StringObject.sharedUTF8.getter();
    v11 = result;
    v12 = v110;
  }

  LOBYTE(v13) = 1;
  LOBYTE(v149) = 1;
  LOBYTE(v178) = 1;
  v166 = 1;
  v165 = 1;
  v164 = 1;
  v163 = 1;
  v162 = 1;
  v161 = 1;
  v167 = 0uLL;
  LOBYTE(v168) = 1;
  *(&v168 + 1) = 0;
  *&v169 = 0;
  BYTE8(v169) = 1;
  v170 = 0uLL;
  LOBYTE(v171) = 1;
  *&v172 = 0;
  *(&v171 + 1) = 0;
  BYTE8(v172) = 1;
  v173 = 0uLL;
  LOBYTE(v174) = 1;
  *&v175 = 0;
  *(&v174 + 1) = 0;
  BYTE8(v175) = 1;
  v176 = 0uLL;
  v177[0] = 1;
  *&v177[16] = 0;
  *&v177[8] = 0;
  v177[24] = 1;
  *&v177[25] = 0;
  v177[27] = 0;
  if (!v12)
  {
    v143 = a1;
    v144 = a4;
    v113 = 0;
    v118 = 0;
    v23 = 0;
    v14 = 0;
    v134 = 0;
    v136 = 0;
    v129 = 0;
    v131 = 0;
    v124 = 0;
    v126 = 0;
    v121 = 0;
    v24 = 0;
    v147 = 0;
    v25 = 0;
    v115 = 0;
    v116 = 0;
    v114 = 0;
    v26 = 0;
    BYTE8(v175) = 0;
    *(&v174 + 1) = 0;
    *&v175 = 0;
    v117 = 0;
    v27 = 1;
    v28 = 1;
    v29 = 1;
    v30 = 1;
    v31 = 1;
    v32 = 1;
    goto LABEL_178;
  }

  v14 = 0;
  v15 = &v176 + 1;
  v16 = v177;
  v17 = &v177[16];
  v140 = &v177[24];
  do
  {
    v18 = v11[v14] - 35;
    if (v18 <= 0x3A)
    {
      if (((1 << (v11[v14] - 35)) & 0x500000030001001) != 0)
      {
        goto LABEL_14;
      }

      if (v18 == 23)
      {
        if (v14 || (v5 & 1) != 0)
        {
          goto LABEL_90;
        }

LABEL_14:
        v19 = 0;
        goto LABEL_29;
      }
    }

    ++v14;
  }

  while (v12 != v14);
  v19 = v12;
  while (1)
  {
LABEL_29:
    v33 = v19 == v12 ? 0 : v19;
    if (v33 + 1 != v12 && v11[v33] == 47 && v11[v33 + 1] == 47)
    {
      result = v33 + 2;
      v34 = v12;
      if (v33 + 2 != v12)
      {
        v34 = v33 + 2;
        while (1)
        {
          v55 = v11[v34];
          v56 = v55 > 0x3F;
          v57 = (1 << v55) & 0x8000800800000000;
          if (!v56 && v57 != 0)
          {
            break;
          }

          if (v12 == ++v34)
          {
            v34 = v12;
            break;
          }
        }
      }

      if (v34 < result)
      {
        goto LABEL_230;
      }

      if (result == v34)
      {
        v5 = v17;
        v17 = 0;
        *(&v171 + 1) = v33 + 2;
        *&v172 = v33 + 2;
        v33 += 2;
        BYTE8(v172) = 0;
      }

      else
      {
        v59 = v12;
        v33 = v34;
        if ((specialized static RFC3986Parser.parseAuthority(_:into:allowEmptyScheme:)(result, v34, v11, &v167, v5 & 1) & 1) == 0)
        {
          goto LABEL_24;
        }

        v5 = v17;
        v17 = *(&v173 + 1);
        if (v174)
        {
          v12 = v59;
        }

        else
        {
          v105 = v173;
          v12 = v59;
          if (v173 != *(&v173 + 1))
          {
            while (v11[v105] - 58 > 0xFFFFFFF5)
            {
              if (*(&v173 + 1) == ++v105)
              {
                goto LABEL_40;
              }
            }

            v106 = *(&v167 + 1) - v167 == 11 ? v168 : 1;
            if ((v106 & 1) != 0 || (((0x3FFE000000000uLL >> ((*v11 - 1) >> 1)) & 0x20) + *v11) != 97 || (((0x3FFE000000000uLL >> ((v11[1] - 1) >> 1)) & 0x20) + v11[1]) != 100 || (((0x3FFE000000000uLL >> ((v11[2] - 1) >> 1)) & 0x20) + v11[2]) != 100 || (((0x3FFE000000000uLL >> ((v11[3] - 1) >> 1)) & 0x20) + v11[3]) != 114 || (((0x3FFE000000000uLL >> ((v11[4] - 1) >> 1)) & 0x20) + v11[4]) != 101 || (((0x3FFE000000000uLL >> ((v11[5] - 1) >> 1)) & 0x20) + v11[5]) != 115 || (((0x3FFE000000000uLL >> ((v11[6] - 1) >> 1)) & 0x20) + v11[6]) != 115 || (((0x3FFE000000000uLL >> ((v11[7] - 1) >> 1)) & 0x20) + v11[7]) != 98 || (((0x3FFE000000000uLL >> ((v11[8] - 1) >> 1)) & 0x20) + v11[8]) != 111 || (((0x3FFE000000000uLL >> ((v11[9] - 1) >> 1)) & 0x20) + v11[9]) != 111 || (((0x3FFE000000000uLL >> ((v11[10] - 1) >> 1)) & 0x20) + v11[10]) != 107)
            {
              goto LABEL_24;
            }
          }
        }
      }
    }

    else
    {
      v5 = v17;
      v17 = 0;
    }

LABEL_40:
    if (v12 < v33)
    {
      __break(1u);
    }

    else
    {
      v147 = v33;
      if (one-time initialization token for fileIDPrefix == -1)
      {
        goto LABEL_42;
      }
    }

    v111 = v12;
    swift_once();
    v12 = v111;
LABEL_42:
    v13 = static URL.fileIDPrefix;
    v35 = v12;
    result = specialized Sequence<>.starts<A>(with:)(static URL.fileIDPrefix, v147, v12, v11);
    v37 = v147;
    if (result)
    {
      v177[27] = 1;
      v37 = *(v13 + 16) + v147;
    }

    v38 = v35;
    v144 = a4;
    v143 = a1;
    if (v37 == v35)
    {
LABEL_48:
      LOBYTE(v117) = 0;
      BYTE8(v175) = 0;
      v14 = *(&v167 + 1);
      v23 = v167;
      v134 = v169;
      v136 = *(&v168 + 1);
      v129 = *(&v170 + 1);
      v131 = v170;
      v124 = v172;
      v126 = *(&v171 + 1);
      v121 = v173;
      v114 = *(&v176 + 1);
      v115 = *&v177[8];
      v116 = v176;
      v26 = *&v177[16];
      v32 = v168;
      v31 = BYTE8(v169);
      v30 = v171;
      v29 = BYTE8(v172);
      v28 = v174;
      v24 = v17;
      v27 = v177[0];
      LOBYTE(v13) = v177[24];
      BYTE4(v117) = v177[25];
      v118 = v177[26];
      v113 = v177[27];
      v25 = v38;
      goto LABEL_178;
    }

    while (1)
    {
      v39 = v11[v37];
      if (v39 == 35 || v39 == 63)
      {
        break;
      }

      if (v35 == ++v37)
      {
        goto LABEL_48;
      }
    }

    if (v37 < v147)
    {
      __break(1u);
LABEL_229:
      __break(1u);
LABEL_230:
      __break(1u);
LABEL_231:
      __break(1u);
LABEL_232:
      __break(1u);
LABEL_233:
      __break(1u);
LABEL_234:
      __break(1u);
LABEL_235:
      __break(1u);
      goto LABEL_236;
    }

    *(&v174 + 1) = v147;
    *&v175 = v37;
    BYTE8(v175) = 0;
    v40 = v11[v37];
    if (v40 != 35)
    {
      if (v40 != 63)
      {
LABEL_173:
        v14 = *(&v167 + 1);
        v23 = v167;
        v134 = v169;
        v136 = *(&v168 + 1);
        v129 = *(&v170 + 1);
        v131 = v170;
        v124 = v172;
        v126 = *(&v171 + 1);
        v121 = v173;
        v114 = *(&v176 + 1);
        v115 = *&v177[8];
        v116 = v176;
        v26 = *&v177[16];
        v32 = v168;
        v31 = BYTE8(v169);
        v30 = v171;
        v29 = BYTE8(v172);
        v28 = v174;
        LOBYTE(v117) = BYTE8(v175);
        v24 = v17;
LABEL_177:
        v27 = v177[0];
        LOBYTE(v13) = v177[24];
        BYTE4(v117) = v177[25];
        v118 = v177[26];
        v25 = v37;
        v113 = v177[27];
        goto LABEL_178;
      }

      if (v35 >= v37 + 1)
      {
        if (v35 - 1 == v37)
        {
LABEL_57:
          *&v176 = v37 + 1;
LABEL_172:
          *v15 = v35;
          *v16 = 0;
          goto LABEL_173;
        }

        v41 = v37 + 1;
        while (v11[v41] != 35)
        {
          if (v35 == ++v41)
          {
            goto LABEL_57;
          }
        }

        *&v176 = v37 + 1;
        *(&v176 + 1) = v41;
        v177[0] = 0;
        v47 = v41 + 1;
        if (v35 >= v41 + 1)
        {
LABEL_171:
          *&v177[8] = v47;
          v15 = v5;
          v16 = v140;
          goto LABEL_172;
        }

        goto LABEL_235;
      }

      goto LABEL_232;
    }

    v47 = v37 + 1;
    if (v35 >= v37 + 1)
    {
      goto LABEL_171;
    }

    __break(1u);
LABEL_88:
    v48 = v37 + 1;
    if (v36 >= v37 + 1)
    {
      goto LABEL_175;
    }

    __break(1u);
LABEL_90:
    if ((v14 & 0x8000000000000000) != 0)
    {
      goto LABEL_234;
    }

    *&v167 = 0;
    *(&v167 + 1) = v14;
    LOBYTE(v168) = 0;
    if (v12 - 1 == v14)
    {
      break;
    }

    if (v14)
    {
      if (*v11 < 0x41u)
      {
        goto LABEL_24;
      }

      v71 = 0;
      v19 = v14 + 1;
      while (1)
      {
        if (v11[v71] < 0)
        {
          goto LABEL_24;
        }

        v72 = v11[v71];
        if (v72 <= 0x2F)
        {
          if (((1 << v72) & 0x680000000000) != 0)
          {
            goto LABEL_157;
          }

          if (((1 << v72) & 0x97D200000000) != 0)
          {
            goto LABEL_24;
          }
        }

        v73 = v72 - 58;
        if (v72 - 58 < 0xFFFFFFF6)
        {
          v56 = v73 > 6;
          v74 = (1 << v73) & 0x6B;
          v75 = v56 || v74 == 0;
          if (!v75 || (v72 & 0x5F) - 91 <= 0xFFFFFFE5)
          {
            goto LABEL_24;
          }
        }

LABEL_157:
        if (v14 == ++v71)
        {
          goto LABEL_29;
        }
      }
    }

    v19 = 1;
    if ((v5 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  v141 = v12;
  if (!v14)
  {
    if ((v5 & 1) == 0)
    {
      goto LABEL_24;
    }

LABEL_184:
    v143 = a1;
    v144 = a4;
    v113 = 0;
    v118 = 0;
    v116 = 0;
    v117 = 0;
    v23 = 0;
    v134 = 0;
    v136 = 0;
    v129 = 0;
    v131 = 0;
    v124 = 0;
    v126 = 0;
    v121 = 0;
    v24 = 0;
    v114 = 0;
    v115 = 0;
    v26 = 0;
    BYTE8(v175) = 0;
    v32 = v168;
    v27 = 1;
    v28 = 1;
    v29 = 1;
    v30 = 1;
    v31 = 1;
    v25 = v141;
    v147 = v141;
    goto LABEL_178;
  }

  if (*v11 >= 0x41u)
  {
    v49 = 0;
    while (1)
    {
      v50 = v11[v49];
      if (v50 < 0)
      {
        break;
      }

      v51 = v14;
      if ((UInt8.allowedURLComponents.getter(v50) & 1) == 0)
      {
        break;
      }

      v14 = v51;
      if (v51 == ++v49)
      {
        goto LABEL_184;
      }
    }
  }

LABEL_24:

  return 0;
}

uint64_t sub_1807E9508()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t specialized static RFC3986Parser.parse(urlString:encodingInvalidCharacters:allowEmptyScheme:)(uint64_t a1, unint64_t a2, char a3, int a4)
{
  v356 = *MEMORY[0x1E69E9840];
  v6 = specialized static RFC3986Parser.parse(urlString:allowEmptyScheme:encodedComponents:)(a1, a2, a4, 0);
  v7 = v6;
  if (!v6)
  {
    return v7;
  }

  if ((a3 & 1) == 0)
  {
    if (*(v6 + 72))
    {
      goto LABEL_26;
    }

    v28 = String.subscript.getter();
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v35 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5Sb_Tg50162_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506string9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSyRzlFZSbSRys5I7VGXEfU_10Foundation0nO0VXMtAP15URLComponentSet01_qrstuvW0LLVSbTf1cn_nTf4ndnn_n(v28, v29, v31, v33, 2u, 1);
    if (v35 == 2)
    {
      v352 = v28;
      v353 = v30;
      v354 = v32;
      v355 = v34;
      lazy protocol witness table accessor for type Substring and conformance Substring();
      StringProtocol._ephemeralString.getter();
      v36 = String._bridgeToObjectiveCImpl()();

      v37 = [v36 _fastCharacterContents];
      v38 = v36;
      if (v37)
      {
        v352 = v28;
        v353 = v30;
        v354 = v32;
        v355 = v34;
        StringProtocol._ephemeralString.getter();
        v39 = String._bridgeToObjectiveCImpl()();

        v40 = [v39 length];
        swift_unknownObjectRelease();
        if (!_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v37, v40, 2u, 1))
        {
          goto LABEL_188;
        }

        goto LABEL_26;
      }

      v35 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSs8UTF8ViewV_Tt2g5(v28, v30, v32, v34, 2u, 1);
    }

    v55 = v35;

    if ((v55 & 1) == 0)
    {
      goto LABEL_188;
    }

LABEL_26:
    if (v7[96])
    {
      goto LABEL_91;
    }

    v56 = String.subscript.getter();
    v58 = v57;
    v60 = v59;
    v62 = v61;
    v63 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5Sb_Tg50162_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506string9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSyRzlFZSbSRys5I7VGXEfU_10Foundation0nO0VXMtAP15URLComponentSet01_qrstuvW0LLVSbTf1cn_nTf4ndnn_n(v56, v57, v59, v61, 2u, 1);
    if (v63 == 2)
    {
      v352 = v56;
      v353 = v58;
      v354 = v60;
      v355 = v62;
      lazy protocol witness table accessor for type Substring and conformance Substring();
      StringProtocol._ephemeralString.getter();
      v64 = String._bridgeToObjectiveCImpl()();

      v65 = [v64 _fastCharacterContents];
      v66 = v64;
      if (v65)
      {
        v352 = v56;
        v353 = v58;
        v354 = v60;
        v355 = v62;
        StringProtocol._ephemeralString.getter();
        v67 = String._bridgeToObjectiveCImpl()();

        v68 = [v67 length];
        swift_unknownObjectRelease();
        if (!_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v65, v68, 2u, 1))
        {
          goto LABEL_188;
        }

        goto LABEL_91;
      }

      v63 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSs8UTF8ViewV_Tt2g5(v56, v58, v60, v62, 2u, 1);
    }

    v153 = v63;

    if ((v153 & 1) == 0)
    {
      goto LABEL_188;
    }

LABEL_91:
    if ((v7[120] & 1) == 0)
    {
      v154 = String.subscript.getter();
      v158 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464504host14knownIPLiteralSbx_SbtSyRzlFZSs_Tt1g5(v154, v155, v156, v157, v7[217]);

      if ((v158 & 1) == 0)
      {
        goto LABEL_188;
      }
    }

    if (v7[168])
    {
      v159 = MEMORY[0x1865CBC20](0, 0xE000000000000000);
    }

    else
    {
      v159 = String.subscript.getter();
    }

    v163 = v159;
    v164 = v160;
    v165 = v161;
    v166 = v162;
    v167 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5Sb_Tg50162_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506string9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSyRzlFZSbSRys5I7VGXEfU_10Foundation0nO0VXMtAP15URLComponentSet01_qrstuvW0LLVSbTf1cn_nTf4ndnn_n(v159, v160, v161, v162, 0x10u, 1);
    if (v167 == 2)
    {
      v352 = v163;
      v353 = v164;
      v354 = v165;
      v355 = v166;
      lazy protocol witness table accessor for type Substring and conformance Substring();
      StringProtocol._ephemeralString.getter();
      v168 = String._bridgeToObjectiveCImpl()();

      v169 = [v168 _fastCharacterContents];
      v170 = v168;
      if (v169)
      {
        v352 = v163;
        v353 = v164;
        v354 = v165;
        v355 = v166;
        StringProtocol._ephemeralString.getter();
        v171 = String._bridgeToObjectiveCImpl()();

        v172 = [v171 length];
        swift_unknownObjectRelease();
        if (!_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v169, v172, 0x10u, 1))
        {
          goto LABEL_188;
        }

        goto LABEL_102;
      }

      v167 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSs8UTF8ViewV_Tt2g5(v163, v164, v165, v166, 0x10u, 1);
    }

    v173 = v167;

    if ((v173 & 1) == 0)
    {
      goto LABEL_188;
    }

LABEL_102:
    if ((v7[192] & 1) == 0)
    {
      v174 = String.subscript.getter();
      v176 = v175;
      v178 = v177;
      v180 = v179;
      v181 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5Sb_Tg50162_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506string9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSyRzlFZSbSRys5I7VGXEfU_10Foundation0nO0VXMtAP15URLComponentSet01_qrstuvW0LLVSbTf1cn_nTf4ndnn_n(v174, v175, v177, v179, 0x40u, 1);
      if (v181 == 2)
      {
        v352 = v174;
        v353 = v176;
        v354 = v178;
        v355 = v180;
        lazy protocol witness table accessor for type Substring and conformance Substring();
        StringProtocol._ephemeralString.getter();
        v182 = String._bridgeToObjectiveCImpl()();

        v183 = [v182 _fastCharacterContents];
        v184 = v182;
        if (v183)
        {
          v352 = v174;
          v353 = v176;
          v354 = v178;
          v355 = v180;
          StringProtocol._ephemeralString.getter();
          v185 = String._bridgeToObjectiveCImpl()();

          v186 = [v185 length];
          swift_unknownObjectRelease();
          if (!_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v183, v186, 0x40u, 1))
          {
            goto LABEL_188;
          }

          goto LABEL_111;
        }

        v181 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSs8UTF8ViewV_Tt2g5(v174, v176, v178, v180, 0x40u, 1);
      }

      v189 = v181;

      if ((v189 & 1) == 0)
      {
        goto LABEL_188;
      }
    }

LABEL_111:
    if (v7[216])
    {
      return v7;
    }

    v190 = String.subscript.getter();
    v192 = v191;
    v194 = v193;
    v196 = v195;
    v197 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5Sb_Tg50162_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506string9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSyRzlFZSbSRys5I7VGXEfU_10Foundation0nO0VXMtAP15URLComponentSet01_qrstuvW0LLVSbTf1cn_nTf4ndnn_n(v190, v191, v193, v195, 0x40u, 1);
    if (v197 == 2)
    {
      v352 = v190;
      v353 = v192;
      v354 = v194;
      v355 = v196;
      lazy protocol witness table accessor for type Substring and conformance Substring();
      StringProtocol._ephemeralString.getter();
      v198 = String._bridgeToObjectiveCImpl()();

      v199 = [v198 _fastCharacterContents];
      v200 = v198;
      if (v199)
      {
        v352 = v190;
        v353 = v192;
        v354 = v194;
        v355 = v196;
        StringProtocol._ephemeralString.getter();
        v201 = String._bridgeToObjectiveCImpl()();

        v202 = [v201 length];
        swift_unknownObjectRelease();
        if (_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v199, v202, 0x40u, 1))
        {
          return v7;
        }

        goto LABEL_188;
      }

      v197 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSs8UTF8ViewV_Tt2g5(v190, v192, v194, v196, 0x40u, 1);
    }

    v307 = v197;

    if (v307)
    {
      return v7;
    }

LABEL_188:

    return 0;
  }

  v346 = a4;
  if (*(v6 + 72))
  {
    v8 = 0;
    v9 = 0;
    if (*(v6 + 96))
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

  v14 = String.subscript.getter();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v9 = 0;
  v21 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5Sb_Tg50162_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506string9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSyRzlFZSbSRys5I7VGXEfU_10Foundation0nO0VXMtAP15URLComponentSet01_qrstuvW0LLVSbTf1cn_nTf4ndnn_n(v14, v15, v17, v19, 2u, 1);
  if (v21 == 2)
  {
    v352 = v14;
    v353 = v16;
    v354 = v18;
    v355 = v20;
    lazy protocol witness table accessor for type Substring and conformance Substring();
    StringProtocol._ephemeralString.getter();
    v22 = String._bridgeToObjectiveCImpl()();

    v23 = [v22 _fastCharacterContents];
    v24 = v22;
    if (v23)
    {
      v352 = v14;
      v353 = v16;
      v354 = v18;
      v355 = v20;
      StringProtocol._ephemeralString.getter();
      v25 = String._bridgeToObjectiveCImpl()();

      v26 = [v25 length];
      swift_unknownObjectRelease();
      v27 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v23, v26, 2u, 1);
      goto LABEL_19;
    }

    v21 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSs8UTF8ViewV_Tt2g5(v14, v16, v18, v20, 2u, 1);
  }

  v27 = v21;

LABEL_19:
  v8 = !v27;
  if (v7[96])
  {
LABEL_5:
    if (v7[120])
    {
      goto LABEL_6;
    }

LABEL_36:
    v69 = String.subscript.getter();
    v73 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464504host14knownIPLiteralSbx_SbtSyRzlFZSs_Tt1g5(v69, v70, v71, v72, v7[217]);

    if ((v73 & 1) == 0)
    {
      v8 |= 4u;
    }

    if (v7[168])
    {
      goto LABEL_7;
    }

    goto LABEL_39;
  }

LABEL_20:
  v41 = String.subscript.getter();
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v48 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5Sb_Tg50162_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506string9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSyRzlFZSbSRys5I7VGXEfU_10Foundation0nO0VXMtAP15URLComponentSet01_qrstuvW0LLVSbTf1cn_nTf4ndnn_n(v41, v42, v44, v46, 2u, 1);
  if (v48 == 2)
  {
    LODWORD(v347) = v8;
    v352 = v41;
    v353 = v43;
    v354 = v45;
    v355 = v47;
    lazy protocol witness table accessor for type Substring and conformance Substring();
    StringProtocol._ephemeralString.getter();
    v49 = String._bridgeToObjectiveCImpl()();

    v50 = [v49 _fastCharacterContents];
    v51 = v49;
    if (v50)
    {
      v352 = v41;
      v353 = v43;
      v354 = v45;
      v355 = v47;
      StringProtocol._ephemeralString.getter();
      v52 = String._bridgeToObjectiveCImpl()();

      v53 = [v52 length];
      swift_unknownObjectRelease();
      v54 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v50, v53, 2u, 1);
    }

    else
    {
      v54 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSs8UTF8ViewV_Tt2g5(v41, v43, v45, v47, 2u, 1);
    }

    v8 = v347;
  }

  else
  {
    v54 = v48;
  }

  if ((v54 & 1) == 0)
  {
    v8 |= 2u;
  }

  if ((v7[120] & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_6:
  if (v7[168])
  {
LABEL_7:
    v10 = MEMORY[0x1865CBC20](0, 0xE000000000000000);
    goto LABEL_40;
  }

LABEL_39:
  v10 = String.subscript.getter();
LABEL_40:
  v74 = v10;
  v75 = v11;
  v76 = v12;
  v77 = v13;
  v78 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5Sb_Tg50162_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506string9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSyRzlFZSbSRys5I7VGXEfU_10Foundation0nO0VXMtAP15URLComponentSet01_qrstuvW0LLVSbTf1cn_nTf4ndnn_n(v10, v11, v12, v13, 0x10u, 1);
  if (v78 == 2)
  {
    v347 = 0;
    v79 = v8;
    v352 = v74;
    v353 = v75;
    v354 = v76;
    v355 = v77;
    lazy protocol witness table accessor for type Substring and conformance Substring();
    StringProtocol._ephemeralString.getter();
    v80 = String._bridgeToObjectiveCImpl()();

    v81 = [v80 _fastCharacterContents];
    v82 = v80;
    if (v81)
    {
      v352 = v74;
      v353 = v75;
      v354 = v76;
      v355 = v77;
      StringProtocol._ephemeralString.getter();
      v83 = String._bridgeToObjectiveCImpl()();

      v84 = [v83 length];
      swift_unknownObjectRelease();
      v85 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v81, v84, 0x10u, 1);
    }

    else
    {
      v85 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSs8UTF8ViewV_Tt2g5(v74, v75, v76, v77, 0x10u, 1);
    }

    v8 = v79;
    v9 = v347;
  }

  else
  {
    v85 = v78;
  }

  if (v85)
  {
    v86 = v8;
  }

  else
  {
    v86 = v8 | 8;
  }

  if ((v7[192] & 1) == 0)
  {
    v87 = String.subscript.getter();
    v89 = v88;
    v91 = v90;
    v93 = v92;
    v94 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5Sb_Tg50162_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506string9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSyRzlFZSbSRys5I7VGXEfU_10Foundation0nO0VXMtAP15URLComponentSet01_qrstuvW0LLVSbTf1cn_nTf4ndnn_n(v87, v88, v90, v92, 0x40u, 1);
    if (v94 == 2)
    {
      v347 = v9;
      v95 = v86;
      v352 = v87;
      v353 = v89;
      v354 = v91;
      v355 = v93;
      lazy protocol witness table accessor for type Substring and conformance Substring();
      StringProtocol._ephemeralString.getter();
      v96 = String._bridgeToObjectiveCImpl()();

      v97 = [v96 _fastCharacterContents];
      v98 = v96;
      if (v97)
      {
        v352 = v87;
        v353 = v89;
        v354 = v91;
        v355 = v93;
        StringProtocol._ephemeralString.getter();
        v99 = String._bridgeToObjectiveCImpl()();

        v100 = [v99 length];
        swift_unknownObjectRelease();
        v101 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v97, v100, 0x40u, 1);
      }

      else
      {
        v101 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSs8UTF8ViewV_Tt2g5(v87, v89, v91, v93, 0x40u, 1);
      }

      v86 = v95;
      v9 = v347;
    }

    else
    {
      v101 = v94;
    }

    if ((v101 & 1) == 0)
    {
      v86 |= 0x10u;
    }
  }

  if ((v7[216] & 1) == 0)
  {
    v102 = String.subscript.getter();
    v104 = v103;
    v106 = v105;
    v108 = v107;
    v109 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5Sb_Tg50162_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506string9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSyRzlFZSbSRys5I7VGXEfU_10Foundation0nO0VXMtAP15URLComponentSet01_qrstuvW0LLVSbTf1cn_nTf4ndnn_n(v102, v103, v105, v107, 0x40u, 1);
    if (v109 != 2)
    {
      v116 = v109;

      if ((v116 & 1) == 0)
      {
        v86 |= 0x20u;
        goto LABEL_69;
      }

      goto LABEL_59;
    }

    v347 = v9;
    v110 = v86;
    v352 = v102;
    v353 = v104;
    v354 = v106;
    v355 = v108;
    lazy protocol witness table accessor for type Substring and conformance Substring();
    StringProtocol._ephemeralString.getter();
    v111 = String._bridgeToObjectiveCImpl()();

    v112 = [v111 _fastCharacterContents];
    v113 = v111;
    if (v112)
    {
      v352 = v102;
      v353 = v104;
      v354 = v106;
      v355 = v108;
      StringProtocol._ephemeralString.getter();
      v114 = String._bridgeToObjectiveCImpl()();

      v115 = [v114 length];
      swift_unknownObjectRelease();
      if (_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v112, v115, 0x40u, 1))
      {
LABEL_64:
        v86 = v110;
        v9 = v347;
        goto LABEL_59;
      }
    }

    else
    {
      v117 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSs8UTF8ViewV_Tt2g5(v102, v104, v106, v108, 0x40u, 1);

      if (v117)
      {
        goto LABEL_64;
      }
    }

    v86 = v110 | 0x20;
    v9 = v347;
    goto LABEL_69;
  }

LABEL_59:
  if (!v86)
  {
    return v7;
  }

LABEL_69:
  v350 = 0;
  v351 = 0xE000000000000000;
  if ((v7[48] & 1) == 0)
  {
    v118 = String.subscript.getter();
    v119 = MEMORY[0x1865CAE80](v118);
    v121 = v120;

    v352 = v119;
    v353 = v121;
    MEMORY[0x1865CB0E0](58, 0xE100000000000000);
    MEMORY[0x1865CB0E0](v119, v121);
  }

  if (v7[72] == 1 && v7[96] == 1 && v7[120] == 1 && (v7[144] & 1) != 0)
  {
LABEL_136:
    if (v7[144])
    {
      goto LABEL_137;
    }

    v230 = String.subscript.getter();
    v234 = v233;
    if ((v230 ^ v231) >= 0x4000)
    {
      v235 = v230;
      v236 = v231;
      v237 = v232;
      v238 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SiSg_Tg5061_ss17FixedWidthIntegerPsE_5radixxSgqd___SitcSyRd__lufcADSRys5I15VGXEfU_Si_SsTG5SiTf1cn_n(v230, v231, v232, v233, 10);
      if ((v239 & 0x100) != 0)
      {
        v240 = specialized _parseInteger<A, B>(ascii:radix:)(v235, v236, v237, v234, 10);
        v248 = v247;

        if (v248)
        {
          goto LABEL_137;
        }
      }

      else
      {
        v240 = v238;
        v241 = v239;

        if (v241)
        {
LABEL_137:
          if (v7[168])
          {
            goto LABEL_138;
          }

          goto LABEL_151;
        }
      }

      v352 = 58;
      v353 = 0xE100000000000000;
      v348 = v240;
      v249 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1865CB0E0](v249);

      MEMORY[0x1865CB0E0](v352, v353);
    }

    if (v7[168])
    {
LABEL_138:
      v223 = MEMORY[0x1865CBC20](0, 0xE000000000000000);
      v227 = v226;
      if ((v86 & 8) != 0)
      {
        goto LABEL_139;
      }

      goto LABEL_152;
    }

LABEL_151:
    v223 = String.subscript.getter();
    v227 = v250;
    if ((v86 & 8) != 0)
    {
LABEL_139:
      if ((v223 ^ v224) >= 0x4000)
      {
        v242 = v223;
        v243 = v225;
        v244 = v224;

        v245 = _s10Foundation13RFC3986ParserV17percentEncodePath33_A90579D1FA072CB135F95EF00BA46450LL_18skipAlreadyEncodedSSx_SbtSyRzlFZSs_Tt1g5(v242, v244, v243, v227, 0);
        v229 = v246;

        v228 = v245;
      }

      else
      {
        v228 = 0;
        v229 = 0xE000000000000000;
      }

      MEMORY[0x1865CB0E0](v228, v229);

      if (v7[192])
      {
        goto LABEL_172;
      }

      goto LABEL_153;
    }

LABEL_152:
    v352 = v223;
    v353 = v224;
    v354 = v225;
    v355 = v227;
    lazy protocol witness table accessor for type Substring and conformance Substring();
    String.append<A>(contentsOf:)();
    if (v7[192])
    {
LABEL_172:
      if ((v7[216] & 1) == 0)
      {
        v288 = String.subscript.getter();
        v290 = v289;
        v292 = v291;
        v294 = v293;
        if ((v86 & 0x20) != 0)
        {

          v348 = 35;
          v349 = 0xE100000000000000;
          if ((v288 ^ v290) >> 14)
          {
            v352 = v288;
            v353 = v290;
            v354 = v292;
            v355 = v294;
            MEMORY[0x1EEE9AC00](v300);
            v344 = &v352;
            v345 = 64;

            v303 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SS_Tg5(closure #1 in StringProtocol.addingPercentEncoding(forURLComponent:skipAlreadyEncoded:)specialized partial apply, v343, v288, v290, v292, v294);
            v302 = v304;

            if (v302)
            {
            }

            else
            {

              v303 = _sSy10FoundationE21addingPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9component18skipAlreadyEncodedSSqd___AA15URLComponentSetACLLVSbtSlRd__s5UInt8V7ElementRtd__lFSs_Ss8UTF8ViewVTt2g5(v288, v290, v292, v294, 0x40u, 0);
              v302 = v305;
              swift_bridgeObjectRelease_n();
            }

            v301 = v303;
          }

          else
          {

            v301 = 0;
            v302 = 0xE000000000000000;
          }

          MEMORY[0x1865CB0E0](v301, v302);

          v298 = v348;
          v299 = v349;
        }

        else
        {

          v352 = 35;
          v353 = 0xE100000000000000;
          v295 = MEMORY[0x1865CAE80](v288, v290, v292, v294);
          v297 = v296;

          MEMORY[0x1865CB0E0](v295, v297);

          v298 = v352;
          v299 = v353;
        }

        MEMORY[0x1865CB0E0](v298, v299);
      }

      v306 = specialized static RFC3986Parser.parse(urlString:allowEmptyScheme:encodedComponents:)(v350, v351, v346 & 1, v86);

      return v306;
    }

LABEL_153:
    v251 = String.subscript.getter();
    v255 = v254;
    if ((v86 & 0x10) != 0)
    {
      v348 = 63;
      v349 = 0xE100000000000000;
      if ((v251 ^ v252) >> 14)
      {
        LODWORD(v347) = v86;
        v352 = v251;
        v353 = v252;
        v354 = v253;
        v355 = v254;
        v263 = MEMORY[0x1EEE9AC00](v251);
        v344 = &v352;
        v345 = 64;
        v264 = v263;
        v266 = v265;
        v268 = v267;

        v269 = v264;
        v270 = v264;
        v271 = v268;
        v272 = v268;
        v273 = v266;
        v274 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SS_Tg5(closure #1 in StringProtocol.addingPercentEncoding(forURLComponent:skipAlreadyEncoded:)specialized partial apply, v343, v270, v272, v266, v255);
        v262 = v275;

        if (v262)
        {
        }

        else
        {

          v274 = _sSy10FoundationE21addingPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9component18skipAlreadyEncodedSSqd___AA15URLComponentSetACLLVSbtSlRd__s5UInt8V7ElementRtd__lFSs_Ss8UTF8ViewVTt2g5(v269, v271, v273, v255, 0x40u, 0);
          v262 = v287;
          swift_bridgeObjectRelease_n();
        }

        v261 = v274;
        LOBYTE(v86) = v347;
      }

      else
      {

        v261 = 0;
        v262 = 0xE000000000000000;
      }

      MEMORY[0x1865CB0E0](v261, v262);

      v259 = v348;
      v260 = v349;
    }

    else
    {
      v352 = 63;
      v353 = 0xE100000000000000;
      v256 = MEMORY[0x1865CAE80](v251);
      v258 = v257;

      MEMORY[0x1865CB0E0](v256, v258);

      v259 = v352;
      v260 = v353;
    }

    MEMORY[0x1865CB0E0](v259, v260);

    goto LABEL_172;
  }

  MEMORY[0x1865CB0E0](12079, 0xE200000000000000);
  if ((v7[72] & 1) == 0)
  {
    v122 = String.subscript.getter();
    v126 = v125;
    if (v86)
    {
      if ((v122 ^ v123) >= 0x4000)
      {
        LODWORD(v347) = v86;
        v352 = v122;
        v353 = v123;
        v354 = v124;
        v355 = v125;
        v344 = &v352;
        v345 = 2;
        v129 = MEMORY[0x1EEE9AC00](v122);
        v131 = v130;
        v133 = v132;

        v134 = v133;
        v135 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SS_Tg5(closure #1 in StringProtocol.addingPercentEncoding(forURLComponent:skipAlreadyEncoded:)specialized partial apply, v343, v129, v133, v131, v126);
        v128 = v136;

        if (!v128)
        {

          v135 = _sSy10FoundationE21addingPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9component18skipAlreadyEncodedSSqd___AA15URLComponentSetACLLVSbtSlRd__s5UInt8V7ElementRtd__lFSs_Ss8UTF8ViewVTt2g5(v129, v134, v131, v126, 2u, 0);
          v128 = v137;
        }

        v127 = v135;
        v86 = v347;
      }

      else
      {
        v127 = 0;
        v128 = 0xE000000000000000;
      }

      MEMORY[0x1865CB0E0](v127, v128);

      if (v7[96])
      {
        goto LABEL_120;
      }
    }

    else
    {
      v352 = v122;
      v353 = v123;
      v354 = v124;
      v355 = v125;
      lazy protocol witness table accessor for type Substring and conformance Substring();
      String.append<A>(contentsOf:)();
      if (v7[96])
      {
LABEL_120:

        MEMORY[0x1865CB0E0](64, 0xE100000000000000);
        goto LABEL_121;
      }
    }

    v138 = String.subscript.getter();
    v140 = v139;
    v142 = v141;
    v144 = v143;
    if ((v86 & 2) != 0)
    {

      v348 = 58;
      v349 = 0xE100000000000000;
      if ((v138 ^ v140) >> 14)
      {
        v352 = v138;
        v353 = v140;
        v354 = v142;
        v355 = v144;
        MEMORY[0x1EEE9AC00](v150);
        v344 = &v352;
        v345 = 2;

        v187 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SS_Tg5(closure #1 in StringProtocol.addingPercentEncoding(forURLComponent:skipAlreadyEncoded:)specialized partial apply, v343, v138, v140, v142, v144);
        v152 = v188;

        if (v152)
        {
        }

        else
        {

          v187 = _sSy10FoundationE21addingPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9component18skipAlreadyEncodedSSqd___AA15URLComponentSetACLLVSbtSlRd__s5UInt8V7ElementRtd__lFSs_Ss8UTF8ViewVTt2g5(v138, v140, v142, v144, 2u, 0);
          v152 = v203;
          swift_bridgeObjectRelease_n();
        }

        v151 = v187;
      }

      else
      {

        v151 = 0;
        v152 = 0xE000000000000000;
      }

      MEMORY[0x1865CB0E0](v151, v152);

      v148 = v348;
      v149 = v349;
    }

    else
    {

      v352 = 58;
      v353 = 0xE100000000000000;
      v145 = MEMORY[0x1865CAE80](v138, v140, v142, v144);
      v147 = v146;

      MEMORY[0x1865CB0E0](v145, v147);

      v148 = v352;
      v149 = v353;
    }

    MEMORY[0x1865CB0E0](v148, v149);
    goto LABEL_120;
  }

LABEL_121:
  if (v7[120])
  {
    goto LABEL_136;
  }

  v204 = String.subscript.getter();
  v208 = v204;
  v209 = v205;
  v210 = v206;
  v211 = v207;
  if ((v86 & 4) == 0)
  {
    v352 = v204;
    v353 = v205;
    v354 = v206;
    v355 = v207;
    lazy protocol witness table accessor for type Substring and conformance Substring();
    String.append<A>(contentsOf:)();
LABEL_135:

    goto LABEL_136;
  }

  if (v7[217] & 1) != 0 || ((v7[48] & 1) == 0 ? (v212 = String.subscript.getter(), v213 = v216, v214 = v217, v215 = v218) : (v212 = 0, v213 = 0, v214 = 0, v215 = 0), v219 = _s10Foundation13RFC3986ParserV23shouldPercentEncodeHost_9forSchemeSbx_q_SgtSyRzSyR_r0_lFZSs_SsTt1g5(v208, v209, v210, v211, v212, v213, v214, v215), , (v219))
  {
    if (!((v208 ^ v209) >> 14))
    {

      v220 = 0;
      v221 = 0xE000000000000000;
LABEL_132:
      if (v7[217] != 1 || (_s10Foundation13RFC3986ParserV21validateIPLiteralHost33_A90579D1FA072CB135F95EF00BA46450LLySbxSyRzlFZSS_Tt0g5(v220, v221) & 1) != 0)
      {
        MEMORY[0x1865CB0E0](v220, v221);
        goto LABEL_135;
      }

      goto LABEL_217;
    }

    v220 = _s10Foundation13RFC3986ParserV17percentEncodeHost33_A90579D1FA072CB135F95EF00BA46450LL_18skipAlreadyEncodedSSSgxSg_SbtSyRzlFZSs_Tt1g5(v208, v209, v210, v211, 0);
    v221 = v222;
    swift_bridgeObjectRelease_n();
    if (v221)
    {
      goto LABEL_132;
    }

LABEL_233:

    goto LABEL_234;
  }

  v276 = MEMORY[0x1865CAE80](v208, v209, v210, v211);
  v278 = v277;

  v280 = v276 & 0xFFFFFFFFFFFFLL;
  if ((v278 & 0x2000000000000000) != 0)
  {
    v281 = HIBYTE(v278) & 0xF;
  }

  else
  {
    v281 = v276 & 0xFFFFFFFFFFFFLL;
  }

  if (!v281)
  {

    v284 = 0;
    v286 = 0xE000000000000000;
    goto LABEL_208;
  }

  if ((v278 & 0x1000000000000000) != 0)
  {
  }

  else
  {
    if ((v278 & 0x2000000000000000) != 0)
    {
      v352 = v276;
      v353 = v278 & 0xFFFFFFFFFFFFFFLL;
      v309 = MEMORY[0x1EEE9AC00](v279);
      LOBYTE(v344) = 1;
      MEMORY[0x1EEE9AC00](v309);

      v284 = _s10Foundation12UIDNAHookICUV13IDNACodedHost33_438666AB1527AE198C118BCABA7FD21510hostBuffer9transcode11allowErrors12createStringSSSgSRyxG_s5Int32Vs13OpaquePointerVSg_SPyxGSgAMSpyxGSgAMSpySo9UIDNAInfoVGSgSpySo10UErrorCodeVGSgtXESbs6UInt32VXEAjS_SitXEts17FixedWidthIntegerRzlFZs4Int8V_Tt3g5(&v352, HIBYTE(v278) & 0xF, @nonobjc uidna_nameToASCII_UTF8(_:_:_:_:_:_:_:), 0, closure #1 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply, v343, closure #2 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply);
      v286 = v310;
    }

    else
    {
      v347 = v9;
      if ((v276 & 0x1000000000000000) != 0)
      {
        v282 = (v278 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        v279 = _StringObject.sharedUTF8.getter();
        if (!v279)
        {
          v341 = one-time initialization token for idnaTranscoder;

          if (v341 != -1)
          {
            swift_once();
          }

          if (byte_1ED436DC0)
          {
            v286 = 0;
            v284 = 0;
LABEL_207:
            swift_bridgeObjectRelease_n();
            if (!v286)
            {
              goto LABEL_233;
            }

LABEL_208:
            if (_s10Foundation13RFC3986ParserV18looksLikeIPLiteral33_A90579D1FA072CB135F95EF00BA46450LLySbxSyRzlFZSS_Tt0g5(v284, v286))
            {
              if (_s10Foundation13RFC3986ParserV21validateIPLiteralHost33_A90579D1FA072CB135F95EF00BA46450LLySbxSyRzlFZSS_Tt0g5(v284, v286))
              {
LABEL_210:
                MEMORY[0x1865CB0E0](v284, v286);
                goto LABEL_135;
              }
            }

            else if ((v286 & 0x1000000000000000) != 0)
            {
              v352 = v284;
              v353 = v286;
              lazy protocol witness table accessor for type String and conformance String();
              StringProtocol._ephemeralString.getter();
              v336 = String._bridgeToObjectiveCImpl()();

              v337 = [v336 _fastCharacterContents];
              v338 = v336;
              if (v337)
              {
                v352 = v284;
                v353 = v286;
                StringProtocol._ephemeralString.getter();
                v339 = String._bridgeToObjectiveCImpl()();

                v340 = [v339 length];
                swift_unknownObjectRelease();
                if (_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v337, v340, 4u, 1))
                {
                  goto LABEL_210;
                }
              }

              else if (_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSS8UTF8ViewV_Tt2g5(v284, v286, 4u, 1))
              {
                goto LABEL_210;
              }
            }

            else
            {
              if ((v286 & 0x2000000000000000) != 0)
              {
                v335 = HIBYTE(v286) & 0xF;
                v352 = v284;
                v353 = v286 & 0xFFFFFFFFFFFFFFLL;
                v334 = &v352;
              }

              else if ((v284 & 0x1000000000000000) != 0)
              {
                v334 = ((v286 & 0xFFFFFFFFFFFFFFFLL) + 32);
                v335 = v284 & 0xFFFFFFFFFFFFLL;
              }

              else
              {
                v334 = _StringObject.sharedUTF8.getter();
              }

              if (_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys5UInt8VG_Tt2g5(v334, v335, 4u, 1))
              {
                goto LABEL_210;
              }
            }

LABEL_217:

LABEL_234:

            return 0;
          }

          if (swift_stdlib_isStackAllocationSafe())
          {
            __break(1u);
          }

          swift_slowAlloc();
          __break(1u);
          goto LABEL_238;
        }

        v282 = v279;
        v280 = v327;
      }

      v283 = MEMORY[0x1EEE9AC00](v279);
      LOBYTE(v344) = 1;
      MEMORY[0x1EEE9AC00](v283);

      v284 = _s10Foundation12UIDNAHookICUV13IDNACodedHost33_438666AB1527AE198C118BCABA7FD21510hostBuffer9transcode11allowErrors12createStringSSSgSRyxG_s5Int32Vs13OpaquePointerVSg_SPyxGSgAMSpyxGSgAMSpySo9UIDNAInfoVGSgSpySo10UErrorCodeVGSgtXESbs6UInt32VXEAjS_SitXEts17FixedWidthIntegerRzlFZs4Int8V_Tt3g5(v282, v280, @nonobjc uidna_nameToASCII_UTF8(_:_:_:_:_:_:_:), 0, closure #1 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply, v343, closure #2 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply);
      v286 = v285;
    }

    if (v286 != 1)
    {
      goto LABEL_207;
    }
  }

  v352 = v276;
  v353 = v278;
  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol._ephemeralString.getter();
  v311 = String._bridgeToObjectiveCImpl()();

  v312 = [v311 _fastCharacterContents];
  v313 = v311;
  if (v312)
  {
    v352 = v276;
    v353 = v278;
    StringProtocol._ephemeralString.getter();
    v314 = String._bridgeToObjectiveCImpl()();

    [v314 length];
    v315 = swift_unknownObjectRelease();
    v316 = MEMORY[0x1EEE9AC00](v315);
    LOBYTE(v344) = 1;
    MEMORY[0x1EEE9AC00](v316);
    v284 = _s10Foundation12UIDNAHookICUV13IDNACodedHost33_438666AB1527AE198C118BCABA7FD21510hostBuffer9transcode11allowErrors12createStringSSSgSRyxG_s5Int32Vs13OpaquePointerVSg_SPyxGSgAMSpyxGSgAMSpySo9UIDNAInfoVGSgSpySo10UErrorCodeVGSgtXESbs6UInt32VXEAjS_SitXEts17FixedWidthIntegerRzlFZs6UInt16V_Tt3g5(v312);
    v286 = v317;
    swift_bridgeObjectRelease_n();
    if (!v286)
    {
      goto LABEL_233;
    }

    goto LABEL_208;
  }

  v352 = v276;
  v353 = v278;

  v318 = String.init<A>(_:)();
  v320 = v318;
  v321 = v319;
  if ((v319 & 0x1000000000000000) != 0)
  {
    v320 = static String._copying(_:)();
    v329 = v328;

    v321 = v329;
    if ((v329 & 0x2000000000000000) == 0)
    {
      goto LABEL_198;
    }

LABEL_205:
    v352 = v320;
    v353 = v321 & 0xFFFFFFFFFFFFFFLL;
    v330 = MEMORY[0x1EEE9AC00](v318);
    LOBYTE(v344) = 1;
    MEMORY[0x1EEE9AC00](v330);
    v284 = _s10Foundation12UIDNAHookICUV13IDNACodedHost33_438666AB1527AE198C118BCABA7FD21510hostBuffer9transcode11allowErrors12createStringSSSgSRyxG_s5Int32Vs13OpaquePointerVSg_SPyxGSgAMSpyxGSgAMSpySo9UIDNAInfoVGSgSpySo10UErrorCodeVGSgtXESbs6UInt32VXEAjS_SitXEts17FixedWidthIntegerRzlFZs4Int8V_Tt3g5(&v352, v331, @nonobjc uidna_nameToASCII_UTF8(_:_:_:_:_:_:_:), 0, partial apply for closure #1 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:), v332, partial apply for closure #2 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:));
    v286 = v333;
    goto LABEL_206;
  }

  if ((v319 & 0x2000000000000000) != 0)
  {
    goto LABEL_205;
  }

LABEL_198:
  if ((v320 & 0x1000000000000000) != 0)
  {
    v322 = (v321 & 0xFFFFFFFFFFFFFFFLL) + 32;
LABEL_200:
    v323 = MEMORY[0x1EEE9AC00](v322);
    LOBYTE(v344) = 1;
    v342 = MEMORY[0x1EEE9AC00](v323);
    v284 = _s10Foundation12UIDNAHookICUV13IDNACodedHost33_438666AB1527AE198C118BCABA7FD21510hostBuffer9transcode11allowErrors12createStringSSSgSRyxG_s5Int32Vs13OpaquePointerVSg_SPyxGSgAMSpyxGSgAMSpySo9UIDNAInfoVGSgSpySo10UErrorCodeVGSgtXESbs6UInt32VXEAjS_SitXEts17FixedWidthIntegerRzlFZs4Int8V_Tt3g5(v342, v324, @nonobjc uidna_nameToASCII_UTF8(_:_:_:_:_:_:_:), 0, closure #1 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply, v325, closure #2 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply);
    v286 = v326;
LABEL_206:

    goto LABEL_207;
  }

  v322 = _StringObject.sharedUTF8.getter();
  if (v322)
  {
    goto LABEL_200;
  }

  if (one-time initialization token for idnaTranscoder != -1)
  {
    swift_once();
  }

  if (byte_1ED436DC0)
  {

    swift_bridgeObjectRelease_n();
    goto LABEL_233;
  }

LABEL_238:
  if (swift_stdlib_isStackAllocationSafe())
  {
    __break(1u);
  }

  result = swift_slowAlloc();
  __break(1u);
  return result;
}

unint64_t convert #1 (_:) in static RFC3986Parser.parse(urlString:allowEmptyScheme:encodedComponents:)(unint64_t result, unint64_t a2, char a3, uint64_t a4)
{
  if (a3)
  {
    return 0;
  }

  v5 = *(a4 + 16);
  v6 = *(a4 + 24);
  if ((v6 & 0x1000000000000000) == 0)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v7 = HIBYTE(v6) & 0xF;
      if ((v6 & 0x2000000000000000) == 0)
      {
        v7 = v5 & 0xFFFFFFFFFFFFLL;
      }

      if (v7 >= result)
      {
        result = (result << 16) | 4;
        if ((v6 & 0x1000000000000000) == 0)
        {
          goto LABEL_9;
        }

LABEL_17:
        v10 = result;
        v9 = MEMORY[0x1865CB180](15, a2, v5);
        result = v10;
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

  v11 = a2;
  result = MEMORY[0x1865CB180](15, result, v5);
  a2 = v11;
  v5 = *(a4 + 16);
  v6 = *(a4 + 24);
  if ((v6 & 0x1000000000000000) != 0)
  {
    goto LABEL_17;
  }

LABEL_9:
  if ((a2 & 0x8000000000000000) != 0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v8 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v8 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (v8 < a2)
  {
    goto LABEL_22;
  }

  v9 = (a2 << 16) | 4;
LABEL_14:
  if (v9 >> 14 < result >> 14)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }

  return result;
}

uint64_t _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5Sb_Tg50162_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA46450LL6string9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSyRzlFZSbSRys5I7VGXEfU_10Foundation0nO0VXMtAP15URLComponentSet01_qrstuvW0LLVSbTf1cn_nTf4ndnn_n(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unsigned __int8 a5, char a6)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    return 2;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v15[0] = a3;
    v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v12 = v15;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v12 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v15[3] = v6;
    v14 = a6;
    v12 = _StringObject.sharedUTF8.getter();
    a6 = v14;
  }

  result = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFqd__AGKXEfU_SRys5UInt8VGABySS8UTF8ViewVGSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lyAIqd__Isgyrzo_qd__sAO_pALRszr__lIetyggrzo_Tpq5Sb_Tg50162_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506string9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSyRzlFZSbSRys5H7VGXEfU_10Foundation0nO0VXMtAQ15URLComponentSet01_qrstuvW0LLVSbTf1nnc_nTf4xndnn_n(v12, a1, a2, a3, a4, a5, a6 & 1);
  if (!v6)
  {
    return result & 1;
  }

  return result;
}

BOOL _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA46450LL6buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys5UInt8VG_Tt2g5(_BYTE *a1, uint64_t a2, unsigned __int8 a3, char a4)
{
  v4 = a3;
  if ((a4 & 1) == 0)
  {
    if (!a1 || !a2)
    {
      return 1;
    }

    while (1)
    {
      if (*a1 < 0)
      {
        return 0;
      }

      v9 = *a1;
      if (v9 > 0x2A)
      {
        if (*a1 <= 0x2Cu)
        {
          if (v9 == 43)
          {
            if ((a3 & 0xF7) == 0)
            {
              return 0;
            }

            goto LABEL_48;
          }

          if (v9 == 44)
          {
            goto LABEL_64;
          }
        }

        else
        {
          if (v9 == 45 || v9 == 46)
          {
            goto LABEL_90;
          }

          if (v9 == 47)
          {
            goto LABEL_60;
          }
        }
      }

      else
      {
        v7 = a3 & 0xF6;
        if (*a1 > 0x26u || (v7 = a3 & 0xF6, v9 == 33) || (v7 = a3 & 0xF6, v9 == 36) || (v7 = a3 & 0x76, v9 == 38))
        {
          if (!v7)
          {
            return v7;
          }

          goto LABEL_48;
        }
      }

      if (v9 - 58 > 0xFFFFFFF5)
      {
        goto LABEL_90;
      }

      if (*a1 <= 0x3Cu)
      {
        if (v9 == 58)
        {
          if ((a3 & 0xD2) == 0)
          {
            return 0;
          }

          goto LABEL_48;
        }

        if (v9 == 59)
        {
LABEL_64:
          if ((a3 & 0xF6) == 0)
          {
            return 0;
          }

          goto LABEL_48;
        }
      }

      else
      {
        switch(v9)
        {
          case '=':
            if ((a3 & 0x76) == 0)
            {
              return 0;
            }

            goto LABEL_48;
          case '?':
            if (a3 < 0x40u)
            {
              return 0;
            }

            goto LABEL_48;
          case '@':
LABEL_60:
            if (a3 < 0x10u)
            {
              return 0;
            }

            goto LABEL_48;
        }
      }

      if (v9 - 91 > 0xFFFFFFE5)
      {
        goto LABEL_90;
      }

      if (v9 == 95)
      {
        if (a3 < 2u)
        {
          return 0;
        }

        goto LABEL_48;
      }

      if (v9 - 123 > 0xFFFFFFE5)
      {
LABEL_90:
        if (!a3)
        {
          return 0;
        }

        goto LABEL_48;
      }

      v7 = 0;
      if (v9 != 126 || a3 < 2u)
      {
        return v7;
      }

LABEL_48:
      ++a1;
      if (!--a2)
      {
        return 1;
      }
    }
  }

  if (!a1 || !a2)
  {
    return 1;
  }

  v5 = 0;
  while (2)
  {
    if (*a1 < 0)
    {
      return 0;
    }

    else
    {
      v6 = *a1;
      switch(*a1)
      {
        case '!':
        case '$':
        case '\'':
        case '(':
        case ')':
        case '*':
        case ',':
          goto LABEL_9;
        case '%':
          if (v5)
          {
            return 0;
          }

          v5 = 2;
          goto LABEL_6;
        case '&':
          goto LABEL_20;
        case '+':
          if ((v4 & 0xFFFFFFF7) == 0)
          {
            return 0;
          }

          goto LABEL_39;
        case '-':
        case '.':
          goto LABEL_38;
        case '/':
          goto LABEL_18;
        default:
          if ((v6 - 58) > 0xFFFFFFF5)
          {
            goto LABEL_38;
          }

          if (*a1 <= 0x3Cu)
          {
            if (v6 == 58)
            {
              if ((v4 & 0xD2) == 0)
              {
                return 0;
              }

              goto LABEL_39;
            }

            if (v6 == 59)
            {
LABEL_9:
              if ((v4 & 0xF6) == 0)
              {
                return 0;
              }

              goto LABEL_39;
            }
          }

          else
          {
            switch(v6)
            {
              case '=':
LABEL_20:
                if ((v4 & 0x76) == 0)
                {
                  return 0;
                }

                goto LABEL_39;
              case '?':
                if (v4 < 0x40)
                {
                  return 0;
                }

                goto LABEL_39;
              case '@':
LABEL_18:
                if (v4 < 0x10)
                {
                  return 0;
                }

                goto LABEL_39;
            }
          }

          if ((v6 - 91) > 0xFFFFFFE5)
          {
            goto LABEL_38;
          }

          if (v6 == 95)
          {
            if (v4 < 2)
            {
              return 0;
            }

            goto LABEL_39;
          }

          if ((v6 - 123) > 0xFFFFFFE5)
          {
LABEL_38:
            if (!v4)
            {
              return 0;
            }
          }

          else
          {
            v7 = 0;
            if (v6 != 126 || v4 < 2)
            {
              return v7;
            }
          }

LABEL_39:
          if (v5-- < 1)
          {
            v5 = 0;
          }

          else if ((v6 - 58) <= 0xFFFFFFF5)
          {
            v7 = 0;
            if ((v6 - 65) > 0x25 || ((1 << (v6 - 65)) & 0x3F0000003FLL) == 0)
            {
              return v7;
            }
          }

LABEL_6:
          ++a1;
          if (--a2)
          {
            continue;
          }

          result = v5 == 0;
          break;
      }
    }

    return result;
  }
}

id @objc static NSLocale._preferredLanguages.getter()
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  LocaleCache.preferredLanguages(forCurrentUser:)(0);
  v0 = _ContiguousArrayBuffer._asCocoaArray()();

  return v0;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + 8 * result) = a2;
  v5 = (a5[7] + 16 * result);
  *v5 = a3;
  v5[1] = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = a5[7] + 72 * result;
  *(v6 + 64) = *(a4 + 64);
  v7 = *(a4 + 48);
  *(v6 + 32) = *(a4 + 32);
  *(v6 + 48) = v7;
  v8 = *(a4 + 16);
  *v6 = *a4;
  *(v6 + 16) = v8;
  v9 = a5[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v11;
  }

  return result;
}

void *one-time initialization function for fileSchemeUTF8()
{
  result = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(4, 0);
  *(result + 8) = 1701603686;
  static _SwiftURL.fileSchemeUTF8 = result;
  return result;
}

uint64_t static Calendar._fromNSCalendarIdentifier(_:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v4 = *MEMORY[0x1E695D850];
  isTaggedPointer = _objc_isTaggedPointer(*MEMORY[0x1E695D850]);
  v6 = v4;
  v7 = v6;
  if (isTaggedPointer)
  {
    TaggedPointerTag = _objc_getTaggedPointerTag(v6);
    if (TaggedPointerTag)
    {
      if (TaggedPointerTag != 22)
      {
        if (TaggedPointerTag == 2)
        {
          MEMORY[0x1EEE9AC00](TaggedPointerTag);
          v9 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v11 = v10;

          goto LABEL_20;
        }

        goto LABEL_6;
      }

      v15 = [v7 UTF8String];
      if (!v15)
      {
        __break(1u);
        goto LABEL_213;
      }

      v16 = String.init(utf8String:)(v15);
      if (v17)
      {
LABEL_15:
        v9 = v16;
        v11 = v17;

        goto LABEL_20;
      }

      __break(1u);
    }

    _CFIndirectTaggedPointerStringGetContents();
    v16 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v17)
    {
      [v7 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v9 = v238;
      v11 = v239;
      goto LABEL_20;
    }

    goto LABEL_15;
  }

LABEL_6:
  LOBYTE(v238) = 0;
  if (__CFStringIsCF())
  {

LABEL_10:
    v9 = 0;
    v11 = 0xE000000000000000;
    goto LABEL_20;
  }

  v12 = v7;
  v13 = String.init(_nativeStorage:)();
  if (v14)
  {
    v9 = v13;
    v11 = v14;

    goto LABEL_20;
  }

  if (![v12 length])
  {

    goto LABEL_10;
  }

  v9 = String.init(_cocoaString:)();
  v11 = v18;
LABEL_20:
  v19 = _objc_isTaggedPointer(a1);
  v20 = a1;
  v21 = v20;
  if (!v19)
  {
    goto LABEL_25;
  }

  v22 = _objc_getTaggedPointerTag(v20);
  if (!v22)
  {
    goto LABEL_33;
  }

  if (v22 == 22)
  {
    v29 = [v21 UTF8String];
    if (v29)
    {
      v30 = String.init(utf8String:)(v29);
      if (v31)
      {
LABEL_34:
        v23 = v30;
        v25 = v31;

        goto LABEL_39;
      }

      __break(1u);
LABEL_33:
      _CFIndirectTaggedPointerStringGetContents();
      v30 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v31)
      {
        [v21 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v23 = v238;
        v25 = v239;
        goto LABEL_39;
      }

      goto LABEL_34;
    }

LABEL_213:
    __break(1u);
LABEL_214:
    v162 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v162)
    {
      v33 = 11;
      goto LABEL_44;
    }

    v163 = static String._unconditionallyBridgeFromObjectiveC(_:)(*MEMORY[0x1E695D8C0]);
    v165 = v164;
    if (v163 == static String._unconditionallyBridgeFromObjectiveC(_:)(a1) && v165 == v166)
    {
      v33 = 12;
      goto LABEL_42;
    }

    goto LABEL_221;
  }

  if (v22 != 2)
  {
LABEL_25:
    LOBYTE(v238) = 0;
    if (__CFStringIsCF())
    {
    }

    else
    {
      v26 = v21;
      v27 = String.init(_nativeStorage:)();
      if (v28)
      {
        v23 = v27;
        v25 = v28;

        goto LABEL_39;
      }

      if ([v26 length])
      {
        v23 = String.init(_cocoaString:)();
        v25 = v32;
        goto LABEL_39;
      }
    }

    v23 = 0;
    v25 = 0xE000000000000000;
    goto LABEL_39;
  }

  MEMORY[0x1EEE9AC00](v22);
  v23 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
  v25 = v24;

LABEL_39:
  if (v9 == v23 && v11 == v25)
  {
    v33 = 0;
LABEL_42:

    goto LABEL_44;
  }

  v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v33 = 0;
  if (v35)
  {
    goto LABEL_44;
  }

  v36 = *MEMORY[0x1E695D820];
  v37 = _objc_isTaggedPointer(*MEMORY[0x1E695D820]);
  v38 = v36;
  v39 = v38;
  if (v37)
  {
    v40 = _objc_getTaggedPointerTag(v38);
    if (v40)
    {
      if (v40 != 22)
      {
        if (v40 == 2)
        {
          MEMORY[0x1EEE9AC00](v40);
          v41 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v43 = v42;

          goto LABEL_64;
        }

        goto LABEL_50;
      }

      v47 = [v39 UTF8String];
      if (!v47)
      {
        __break(1u);
        goto LABEL_220;
      }

      v48 = String.init(utf8String:)(v47);
      if (v49)
      {
LABEL_59:
        v41 = v48;
        v43 = v49;

        goto LABEL_64;
      }

      __break(1u);
    }

    _CFIndirectTaggedPointerStringGetContents();
    v48 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v49)
    {
      [v39 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v41 = v238;
      v43 = v239;
      goto LABEL_64;
    }

    goto LABEL_59;
  }

LABEL_50:
  LOBYTE(v238) = 0;
  if (__CFStringIsCF())
  {

LABEL_54:
    v41 = 0;
    v43 = 0xE000000000000000;
    goto LABEL_64;
  }

  v44 = v39;
  v45 = String.init(_nativeStorage:)();
  if (v46)
  {
    v41 = v45;
    v43 = v46;

    goto LABEL_64;
  }

  if (![v44 length])
  {

    goto LABEL_54;
  }

  v41 = String.init(_cocoaString:)();
  v43 = v50;
LABEL_64:
  v51 = v21;
  v52 = v51;
  if (!v19)
  {
    goto LABEL_69;
  }

  v53 = _objc_getTaggedPointerTag(v51);
  if (!v53)
  {
    goto LABEL_77;
  }

  if (v53 == 22)
  {
    v60 = [v52 UTF8String];
    if (v60)
    {
      v61 = String.init(utf8String:)(v60);
      if (v62)
      {
LABEL_78:
        v54 = v61;
        v56 = v62;

        goto LABEL_83;
      }

      __break(1u);
LABEL_77:
      _CFIndirectTaggedPointerStringGetContents();
      v61 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v62)
      {
        [v52 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v54 = v238;
        v56 = v239;
        goto LABEL_83;
      }

      goto LABEL_78;
    }

LABEL_220:
    __break(1u);
LABEL_221:
    v167 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v167)
    {
      v33 = 12;
      goto LABEL_44;
    }

    v168 = static String._unconditionallyBridgeFromObjectiveC(_:)(*MEMORY[0x1E695D8C8]);
    v170 = v169;
    if (v168 == static String._unconditionallyBridgeFromObjectiveC(_:)(a1) && v170 == v171)
    {
      v33 = 13;
      goto LABEL_42;
    }

    goto LABEL_228;
  }

  if (v53 != 2)
  {
LABEL_69:
    LOBYTE(v238) = 0;
    if (__CFStringIsCF())
    {
    }

    else
    {
      v57 = v52;
      v58 = String.init(_nativeStorage:)();
      if (v59)
      {
        v54 = v58;
        v56 = v59;

        goto LABEL_83;
      }

      if ([v57 length])
      {
        v54 = String.init(_cocoaString:)();
        v56 = v63;
        goto LABEL_83;
      }
    }

    v54 = 0;
    v56 = 0xE000000000000000;
    goto LABEL_83;
  }

  MEMORY[0x1EEE9AC00](v53);
  v54 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
  v56 = v55;

LABEL_83:
  if (v41 == v54 && v43 == v56)
  {
    v33 = 1;
    goto LABEL_42;
  }

  v64 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v64)
  {
    v33 = 1;
    goto LABEL_44;
  }

  v65 = *MEMORY[0x1E695D828];
  v66 = _objc_isTaggedPointer(*MEMORY[0x1E695D828]);
  v67 = v65;
  v68 = v67;
  if (!v66)
  {
LABEL_93:
    LOBYTE(v238) = 0;
    if (__CFStringIsCF())
    {
    }

    else
    {
      v73 = v68;
      v74 = String.init(_nativeStorage:)();
      if (v75)
      {
        v70 = v74;
        v72 = v75;

        goto LABEL_107;
      }

      if ([v73 length])
      {
        v70 = String.init(_cocoaString:)();
        v72 = v79;
        goto LABEL_107;
      }
    }

    v70 = 0;
    v72 = 0xE000000000000000;
    goto LABEL_107;
  }

  v69 = _objc_getTaggedPointerTag(v67);
  if (!v69)
  {
    goto LABEL_101;
  }

  if (v69 == 22)
  {
    v76 = [v68 UTF8String];
    if (!v76)
    {
      __break(1u);
      goto LABEL_227;
    }

    v77 = String.init(utf8String:)(v76);
    if (v78)
    {
LABEL_102:
      v70 = v77;
      v72 = v78;

      goto LABEL_107;
    }

    __break(1u);
LABEL_101:
    _CFIndirectTaggedPointerStringGetContents();
    v77 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v78)
    {
      [v68 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v70 = v238;
      v72 = v239;
      goto LABEL_107;
    }

    goto LABEL_102;
  }

  if (v69 != 2)
  {
    goto LABEL_93;
  }

  MEMORY[0x1EEE9AC00](v69);
  v70 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
  v72 = v71;

LABEL_107:
  v80 = v52;
  v81 = v80;
  if (!v19)
  {
    goto LABEL_112;
  }

  v82 = _objc_getTaggedPointerTag(v80);
  if (!v82)
  {
    goto LABEL_120;
  }

  if (v82 != 22)
  {
    if (v82 == 2)
    {
      MEMORY[0x1EEE9AC00](v82);
      v83 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v85 = v84;

LABEL_126:
      if (v70 == v83 && v72 == v85)
      {
        v33 = 2;
        goto LABEL_42;
      }

      v93 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v93)
      {
        v33 = 2;
        goto LABEL_44;
      }

      v94 = *MEMORY[0x1E695D830];
      v95 = _objc_isTaggedPointer(*MEMORY[0x1E695D830]);
      v96 = v94;
      v97 = v96;
      if (!v95)
      {
        goto LABEL_136;
      }

      v98 = _objc_getTaggedPointerTag(v96);
      if (v98)
      {
        if (v98 != 22)
        {
          if (v98 == 2)
          {
            MEMORY[0x1EEE9AC00](v98);
            v99 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
            v101 = v100;

LABEL_150:
            v109 = v81;
            v110 = v109;
            if (!v19)
            {
LABEL_155:
              if (__CFStringIsCF())
              {

LABEL_159:
                v112 = 0;
                v114 = 0xE000000000000000;
                goto LABEL_169;
              }

              v115 = v110;
              v116 = String.init(_nativeStorage:)();
              if (v117)
              {
                v112 = v116;
                v114 = v117;

                goto LABEL_169;
              }

              if (![v115 length])
              {

                goto LABEL_159;
              }

              v112 = String.init(_cocoaString:)();
              v114 = v121;
LABEL_169:
              if (v99 == v112 && v101 == v114)
              {
                v33 = 3;
                goto LABEL_42;
              }

              v122 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v122)
              {
                v33 = 3;
                goto LABEL_44;
              }

              v123 = static String._unconditionallyBridgeFromObjectiveC(_:)(*MEMORY[0x1E695D848]);
              v125 = v124;
              if (v123 == static String._unconditionallyBridgeFromObjectiveC(_:)(a1) && v125 == v126)
              {
                v33 = 4;
                goto LABEL_42;
              }

              v127 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v127)
              {
                v33 = 4;
                goto LABEL_44;
              }

              v128 = static String._unconditionallyBridgeFromObjectiveC(_:)(*MEMORY[0x1E695D840]);
              v130 = v129;
              if (v128 == static String._unconditionallyBridgeFromObjectiveC(_:)(a1) && v130 == v131)
              {
                v33 = 5;
                goto LABEL_42;
              }

              v132 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v132)
              {
                v33 = 5;
                goto LABEL_44;
              }

              v133 = static String._unconditionallyBridgeFromObjectiveC(_:)(*MEMORY[0x1E695D860]);
              v135 = v134;
              if (v133 == static String._unconditionallyBridgeFromObjectiveC(_:)(a1) && v135 == v136)
              {
                v33 = 6;
                goto LABEL_42;
              }

              v137 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v137)
              {
                v33 = 6;
                goto LABEL_44;
              }

              v138 = static String._unconditionallyBridgeFromObjectiveC(_:)(*MEMORY[0x1E695D868]);
              v140 = v139;
              if (v138 == static String._unconditionallyBridgeFromObjectiveC(_:)(a1) && v140 == v141)
              {
                v33 = 7;
                goto LABEL_42;
              }

              v142 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v142)
              {
                v33 = 7;
                goto LABEL_44;
              }

              v143 = static String._unconditionallyBridgeFromObjectiveC(_:)(*MEMORY[0x1E695D870]);
              v145 = v144;
              if (v143 == static String._unconditionallyBridgeFromObjectiveC(_:)(a1) && v145 == v146)
              {
                v33 = 8;
                goto LABEL_42;
              }

              v147 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v147)
              {
                v33 = 8;
                goto LABEL_44;
              }

              v148 = static String._unconditionallyBridgeFromObjectiveC(_:)(*MEMORY[0x1E695D878]);
              v150 = v149;
              if (v148 == static String._unconditionallyBridgeFromObjectiveC(_:)(a1) && v150 == v151)
              {
                v33 = 9;
                goto LABEL_42;
              }

              v152 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v152)
              {
                v33 = 9;
                goto LABEL_44;
              }

              v153 = static String._unconditionallyBridgeFromObjectiveC(_:)(*MEMORY[0x1E695D880]);
              v155 = v154;
              if (v153 == static String._unconditionallyBridgeFromObjectiveC(_:)(a1) && v155 == v156)
              {
                v33 = 10;
                goto LABEL_42;
              }

              v157 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v157)
              {
                v33 = 10;
                goto LABEL_44;
              }

              v158 = static String._unconditionallyBridgeFromObjectiveC(_:)(*MEMORY[0x1E695D898]);
              v160 = v159;
              if (v158 == static String._unconditionallyBridgeFromObjectiveC(_:)(a1) && v160 == v161)
              {
                v33 = 11;
                goto LABEL_42;
              }

              goto LABEL_214;
            }

            v111 = _objc_getTaggedPointerTag(v109);
            if (!v111)
            {
              goto LABEL_163;
            }

            if (v111 != 22)
            {
              if (v111 == 2)
              {
                MEMORY[0x1EEE9AC00](v111);
                v112 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                v114 = v113;

                goto LABEL_169;
              }

              goto LABEL_155;
            }

            v118 = [v110 UTF8String];
            if (v118)
            {
              v119 = String.init(utf8String:)(v118);
              if (v120)
              {
                goto LABEL_164;
              }

              __break(1u);
LABEL_163:
              _CFIndirectTaggedPointerStringGetContents();
              v119 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
              if (!v120)
              {
                [v110 mutableCopy];
                _bridgeAnyObjectToAny(_:)();

                swift_unknownObjectRelease();
                swift_dynamicCast();
                v112 = v238;
                v114 = v239;
                goto LABEL_169;
              }

LABEL_164:
              v112 = v119;
              v114 = v120;

              goto LABEL_169;
            }

LABEL_234:
            __break(1u);
            goto LABEL_235;
          }

LABEL_136:
          LOBYTE(v238) = 0;
          if (__CFStringIsCF())
          {
          }

          else
          {
            v102 = v97;
            v103 = String.init(_nativeStorage:)();
            if (v104)
            {
              v99 = v103;
              v101 = v104;

              goto LABEL_150;
            }

            if ([v102 length])
            {
              v99 = String.init(_cocoaString:)();
              v101 = v108;
              goto LABEL_150;
            }
          }

          v99 = 0;
          v101 = 0xE000000000000000;
          goto LABEL_150;
        }

        v105 = [v97 UTF8String];
        if (!v105)
        {
          __break(1u);
          goto LABEL_234;
        }

        v106 = String.init(utf8String:)(v105);
        if (v107)
        {
LABEL_145:
          v99 = v106;
          v101 = v107;

          goto LABEL_150;
        }

        __break(1u);
      }

      _CFIndirectTaggedPointerStringGetContents();
      v106 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v107)
      {
        [v97 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v99 = v238;
        v101 = v239;
        goto LABEL_150;
      }

      goto LABEL_145;
    }

LABEL_112:
    LOBYTE(v238) = 0;
    if (__CFStringIsCF())
    {
    }

    else
    {
      v86 = v81;
      v87 = String.init(_nativeStorage:)();
      if (v88)
      {
        v83 = v87;
        v85 = v88;

        goto LABEL_126;
      }

      if ([v86 length])
      {
        v83 = String.init(_cocoaString:)();
        v85 = v92;
        goto LABEL_126;
      }
    }

    v83 = 0;
    v85 = 0xE000000000000000;
    goto LABEL_126;
  }

  v89 = [v81 UTF8String];
  if (v89)
  {
    v90 = String.init(utf8String:)(v89);
    if (v91)
    {
LABEL_121:
      v83 = v90;
      v85 = v91;

      goto LABEL_126;
    }

    __break(1u);
LABEL_120:
    _CFIndirectTaggedPointerStringGetContents();
    v90 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v91)
    {
      [v81 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v83 = v238;
      v85 = v239;
      goto LABEL_126;
    }

    goto LABEL_121;
  }

LABEL_227:
  __break(1u);
LABEL_228:
  v172 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v172)
  {
    v33 = 13;
    goto LABEL_44;
  }

  v173 = static String._unconditionallyBridgeFromObjectiveC(_:)(*MEMORY[0x1E695D888]);
  v175 = v174;
  if (v173 == static String._unconditionallyBridgeFromObjectiveC(_:)(a1) && v175 == v176)
  {
    v33 = 14;
    goto LABEL_42;
  }

LABEL_235:
  v177 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v177)
  {
    v33 = 14;
    goto LABEL_44;
  }

  v178 = static String._unconditionallyBridgeFromObjectiveC(_:)(*MEMORY[0x1E695D890]);
  v180 = v179;
  if (v178 == static String._unconditionallyBridgeFromObjectiveC(_:)(a1) && v180 == v181)
  {
    v33 = 15;
    goto LABEL_42;
  }

  v182 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v182)
  {
    v33 = 15;
    goto LABEL_44;
  }

  v183 = static String._unconditionallyBridgeFromObjectiveC(_:)(*MEMORY[0x1E695D818]);
  v185 = v184;
  if (v183 == static String._unconditionallyBridgeFromObjectiveC(_:)(a1) && v185 == v186)
  {
    v33 = 16;
    goto LABEL_42;
  }

  v187 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v187)
  {
    v33 = 16;
    goto LABEL_44;
  }

  v188 = static String._unconditionallyBridgeFromObjectiveC(_:)(*MEMORY[0x1E695D858]);
  v190 = v189;
  if (v188 == static String._unconditionallyBridgeFromObjectiveC(_:)(a1) && v190 == v191)
  {
    v33 = 17;
    goto LABEL_42;
  }

  v192 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v192)
  {
    v33 = 17;
    goto LABEL_44;
  }

  v193 = static String._unconditionallyBridgeFromObjectiveC(_:)(*MEMORY[0x1E695D8A0]);
  v195 = v194;
  if (v193 == static String._unconditionallyBridgeFromObjectiveC(_:)(a1) && v195 == v196)
  {
    v33 = 18;
    goto LABEL_42;
  }

  v197 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v197)
  {
    v33 = 18;
    goto LABEL_44;
  }

  v198 = static String._unconditionallyBridgeFromObjectiveC(_:)(*MEMORY[0x1E695D8A8]);
  v200 = v199;
  if (v198 == static String._unconditionallyBridgeFromObjectiveC(_:)(a1) && v200 == v201)
  {
    v33 = 19;
    goto LABEL_42;
  }

  v202 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v202)
  {
    v33 = 19;
    goto LABEL_44;
  }

  v203 = static String._unconditionallyBridgeFromObjectiveC(_:)(*MEMORY[0x1E695D8B0]);
  v205 = v204;
  if (v203 == static String._unconditionallyBridgeFromObjectiveC(_:)(a1) && v205 == v206)
  {
    v33 = 20;
    goto LABEL_42;
  }

  v207 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v207)
  {
    v33 = 20;
    goto LABEL_44;
  }

  v208 = static String._unconditionallyBridgeFromObjectiveC(_:)(*MEMORY[0x1E695D8B8]);
  v210 = v209;
  if (v208 == static String._unconditionallyBridgeFromObjectiveC(_:)(a1) && v210 == v211)
  {
    v33 = 21;
    goto LABEL_42;
  }

  v212 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v212)
  {
    v33 = 21;
    goto LABEL_44;
  }

  v213 = static String._unconditionallyBridgeFromObjectiveC(_:)(*MEMORY[0x1E695D8D0]);
  v215 = v214;
  if (v213 == static String._unconditionallyBridgeFromObjectiveC(_:)(a1) && v215 == v216)
  {
    v33 = 22;
    goto LABEL_42;
  }

  v217 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v217)
  {
    v33 = 22;
    goto LABEL_44;
  }

  v218 = static String._unconditionallyBridgeFromObjectiveC(_:)(*MEMORY[0x1E695D8D8]);
  v220 = v219;
  if (v218 == static String._unconditionallyBridgeFromObjectiveC(_:)(a1) && v220 == v221)
  {
    v33 = 23;
    goto LABEL_42;
  }

  v222 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v222)
  {
    v33 = 23;
    goto LABEL_44;
  }

  v223 = static String._unconditionallyBridgeFromObjectiveC(_:)(*MEMORY[0x1E695D8E8]);
  v225 = v224;
  if (v223 == static String._unconditionallyBridgeFromObjectiveC(_:)(a1) && v225 == v226)
  {
    v33 = 24;
    goto LABEL_42;
  }

  v227 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v227)
  {
    v33 = 24;
    goto LABEL_44;
  }

  v228 = static String._unconditionallyBridgeFromObjectiveC(_:)(*MEMORY[0x1E695D838]);
  v230 = v229;
  if (v228 == static String._unconditionallyBridgeFromObjectiveC(_:)(a1) && v230 == v231)
  {
    v33 = 25;
    goto LABEL_42;
  }

  v232 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v232)
  {
    v33 = 25;
    goto LABEL_44;
  }

  v233 = static String._unconditionallyBridgeFromObjectiveC(_:)(*MEMORY[0x1E695D8E0]);
  v235 = v234;
  v33 = 26;
  if (v233 == static String._unconditionallyBridgeFromObjectiveC(_:)(a1) && v235 == v236)
  {
    goto LABEL_42;
  }

  v237 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v237)
  {
    v33 = 26;
  }

  else
  {
    v33 = 27;
  }

LABEL_44:
  *a2 = v33;
  return result;
}

uint64_t _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFqd__AGKXEfU_SRys5UInt8VGABySS8UTF8ViewVGSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lyAIqd__Isgyrzo_qd__sAO_pALRszr__lIetyggrzo_Tpq5Sb_Tg50162_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA46450LL6string9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSyRzlFZSbSRys5H7VGXEfU_10Foundation0nO0VXMtAQ15URLComponentSet01_qrstuvW0LLVSbTf1nnc_nTf4xndnn_n(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unsigned __int8 a6, char a7)
{
  v10 = result;
  v11 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v11) = 1;
  }

  v12 = 4 << v11;
  v13 = a2 & 0xC;
  v14 = a2;
  if (v13 == v12)
  {
    v28 = a2;
    v16 = a3;
    v17 = a5;
    result = _StringGuts._slowEnsureMatchingEncoding(_:)(a2, a4, a5);
    a2 = v28;
    a3 = v16;
    a5 = v17;
    v14 = result;
    if ((v17 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v15 = v14 >> 16;
      if (v13 != v12)
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

  v29 = a2;
  v18 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v18 = HIBYTE(a5) & 0xF;
  }

  if (v18 < v14 >> 16)
  {
    goto LABEL_31;
  }

  v19 = a3;
  v20 = a5;
  result = String.UTF8View._foreignDistance(from:to:)();
  a5 = v20;
  v15 = result;
  a3 = v19;
  a2 = v29;
  if (v13 == v12)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = _StringGuts._slowEnsureMatchingEncoding(_:)(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v12)
  {
    v23 = a2;
    v24 = a5;
    result = _StringGuts._slowEnsureMatchingEncoding(_:)(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_29;
  }

  if (v25 < a3 >> 16)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    return result;
  }

  result = String.UTF8View._foreignDistance(from:to:)();
LABEL_21:
  if (__OFADD__(v15, result))
  {
    __break(1u);
    goto LABEL_28;
  }

  v26 = result;
  if (v15 + result < v15)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v10)
  {
    v27 = (v15 + v10);
  }

  else
  {
    v27 = 0;
  }

  return _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys5UInt8VG_Tt2g5(v27, v26, a6, a7 & 1);
}

uint64_t storeEnumTagSinglePayload for Measurement(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id @objc static NSLocale._preferredLanguagesForCurrentUser(_:)(uint64_t a1, uint64_t a2, char a3)
{
  v3 = a3;
  if (one-time initialization token for cache != -1)
  {
    swift_once();
    v3 = a3;
  }

  LocaleCache.preferredLanguages(forCurrentUser:)(v3);
  v4 = _ContiguousArrayBuffer._asCocoaArray()();

  return v4;
}

void *_NSKVONotifyingCreateInfoWithOriginalClass(Class cls)
{
  v13 = *MEMORY[0x1E69E9840];
  if (_NSKeyValueObserverRegistrationEnableLockingAssertions == 1)
  {
    os_unfair_lock_assert_owner(&_NSKeyValueObserverRegistrationLock);
  }

  Name = class_getName(cls);
  if (strchr(Name, 46))
  {
    v3 = @"..NSKVONotifying_%s";
  }

  else
  {
    v3 = @"NSKVONotifying_%s";
  }

  v4 = [NSString stringWithFormat:v3, Name];
  ClassPair = objc_allocateClassPair(cls, [(NSString *)v4 UTF8String], 0x30uLL);
  if (ClassPair)
  {
    v6 = ClassPair;
    objc_registerClassPair(ClassPair);
    IndexedIvars = object_getIndexedIvars(v6);
    *IndexedIvars = cls;
    IndexedIvars[1] = v6;
    IndexedIvars[2] = CFSetCreateMutable(0, 0, MEMORY[0x1E695E530]);
    IndexedIvars[3] = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x1E695E9E8]);
    IndexedIvars[4] = 0;
    if (qword_1ED43F6A0 != -1)
    {
      dispatch_once(&qword_1ED43F6A0, &__block_literal_global_20);
    }

    v8 = class_getMethodImplementation(*IndexedIvars, sel_willChangeValueForKey_) != qword_1ED43F6A8 || class_getMethodImplementation(*IndexedIvars, sel_didChangeValueForKey_) != qword_1ED43F6B0;
    *(IndexedIvars + 40) = v8;
    NSKVONotifyingSetMethodImplementation(IndexedIvars, sel__isKVOA, NSKVOIsAutonotifying, 0);
    NSKVONotifyingSetMethodImplementation(IndexedIvars, sel_dealloc, NSKVODeallocate, 0);
    NSKVONotifyingSetMethodImplementation(IndexedIvars, sel_class, NSKVOClass, 0);
  }

  else
  {
    if (qword_1ED43F698 != -1)
    {
      dispatch_once(&qword_1ED43F698, &__block_literal_global_15);
    }

    v9 = qword_1ED43F690;
    if (os_log_type_enabled(qword_1ED43F690, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v12 = v4;
      _os_log_error_impl(&dword_18075C000, v9, OS_LOG_TYPE_ERROR, "KVO failed to allocate class pair for name %{public}@, automatic key-value observing will not work for this class", buf, 0xCu);
    }

    return 0;
  }

  return IndexedIvars;
}