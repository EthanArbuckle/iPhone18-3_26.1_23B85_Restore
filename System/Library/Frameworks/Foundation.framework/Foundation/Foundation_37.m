void protocol witness for _LocaleProtocol.weekendRange.getter in conformance _LocaleICU(uint64_t a1@<X8>)
{
  v3 = *(v1 + 200);
  os_unfair_lock_lock(v3 + 134);
  partial apply for closure #1 in _LocaleICU.firstDayOfWeek.getter(&v3[4], &v5);
  os_unfair_lock_unlock(v3 + 134);
  v4 = v5;
  os_unfair_lock_lock(v3 + 134);
  closure #1 in _LocaleICU.weekendRange.getter(&v3[4], v4, a1);

  os_unfair_lock_unlock(v3 + 134);
}

Swift::Bool __swiftcall _CalendarGregorian.isDateInWeekend(_:)(Foundation::Date a1)
{
  v3 = *v1;
  v4 = xmmword_181232B70;
  if (*(v2 + 96))
  {
    v5 = *(v2 + 104);
    ObjectType = swift_getObjectType();
    v7 = *(v5 + 336);
    swift_unknownObjectRetain();
    v7(&weekendRange.onsetTime.is_nil, ObjectType, v5);
    swift_unknownObjectRelease();
    if (v15)
    {
      v8 = 0;
      value_high = 0;
      end = 0;
      start = 0x40F5180000000000;
      v4 = xmmword_181232B70;
    }

    else
    {
      value_high = HIBYTE(weekendRange.ceaseTime.value);
      v8 = *&weekendRange.onsetTime.is_nil;
      start = weekendRange.start;
      end = weekendRange.end;
      v4 = v14;
    }
  }

  else
  {
    v8 = 0;
    value_high = 0;
    end = 0;
    start = 0x40F5180000000000;
  }

  weekendRange.onsetTime.value = v3;
  *&weekendRange.onsetTime.is_nil = v8;
  HIBYTE(weekendRange.ceaseTime.value) = value_high & 1;
  weekendRange.start = start;
  LOBYTE(weekendRange.end) = end & 1;
  v14 = v4;
  return _CalendarGregorian.isDateInWeekend(_:weekendRange:)(v4, &weekendRange);
}

uint64_t closure #1 in _LocaleICU.weekendRange.getter@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  if ((*(result + 257) & 1) == 0)
  {
    v31 = *(result + 256);
    v32 = *(result + 224);
    *a3 = *(result + 208);
    *(a3 + 16) = v32;
    *(a3 + 32) = *(result + 240);
    *(a3 + 48) = v31 & 1;
    return result;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys6UInt32VGMd);
  inited = swift_initStackObject();
  result = specialized Collection<>.firstIndex(of:)(a2, outlined read-only object #0 of one-time initialization function for weekdays);
  if (v10)
  {
    __break(1u);
    return result;
  }

  v11 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    goto LABEL_113;
  }

  if ((v11 & 0x8000000000000000) != 0)
  {
LABEL_113:
    __break(1u);
    goto LABEL_114;
  }

  if (HIDWORD(v11))
  {
LABEL_114:
    __break(1u);
LABEL_115:
    __break(1u);
    goto LABEL_116;
  }

  v40 = a3;
  inited[8] = v11;
  v12 = (inited + 8);
  v13 = v11 % 7;
  v14 = v13 + 1;
  v15 = v13 + 2;
  if (v14 == 7)
  {
    v15 = 1;
  }

  inited[9] = v14;
  inited[10] = v15;
  v16 = v15 % 7;
  v17 = v16 + 1;
  v18 = v16 + 2;
  if (v17 == 7)
  {
    v18 = 1;
  }

  inited[11] = v17;
  inited[12] = v18;
  v19 = v18 % 7;
  v20 = v19 + 1;
  v21 = v19 + 2;
  if (v20 == 7)
  {
    v21 = 1;
  }

  inited[13] = v20;
  inited[14] = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo20UCalendarWeekdayTypeVGMd);
  v22 = swift_initStackObject();
  *(v22 + 16) = xmmword_18122CFA0;
  *(v22 + 32) = 0;
  *(v22 + 40) = 0;
  *(v22 + 48) = 0;
  *(v22 + 56) = 0;
  String.utf8CString.getter();
  ucal_open();

  v39 = inited + 8;
  v24 = *v12;
  if ((*v12 & 0x80000000) != 0)
  {
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    v34 = 4;
    goto LABEL_74;
  }

  v12 = 0;
  v25 = 0;
  v3 = 0;
  v4 = 1;
  v26 = 1;
  while (1)
  {
    DayOfWeekType = ucal_getDayOfWeekType();
    v5 = *(v22 + 16);
    if (v12 >= v5)
    {
      goto LABEL_55;
    }

    *(v22 + 4 * v12 + 32) = DayOfWeekType;
    if (DayOfWeekType == 3)
    {
      if (v12 > 6)
      {
        goto LABEL_65;
      }

      v26 = 0;
      v3 = v24;
LABEL_16:
      if (v12 == 6)
      {
        break;
      }

      goto LABEL_17;
    }

    if (DayOfWeekType != 2)
    {
      goto LABEL_16;
    }

    if (v12 > 6)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      v34 = 2;
      goto LABEL_74;
    }

    v4 = 0;
    v25 = v24;
    if (v12 == 6)
    {
      break;
    }

LABEL_17:
    v24 = inited[v12++ + 9];
    if ((v24 & 0x80000000) != 0)
    {
      goto LABEL_54;
    }
  }

  v28 = 0;
  LOBYTE(v12) = v26;
  do
  {
    if (v5 == v28)
    {
      goto LABEL_109;
    }

    v29 = v22 + 4 * v28++;
  }

  while ((*(v29 + 32) - 1) > 2);
  v6 = 0.0;
  v7 = 0.0;
  if ((v4 & 1) == 0)
  {
    v7 = ucal_getWeekendTransition() / 1000.0;
    if ((v26 & 1) == 0)
    {
      goto LABEL_41;
    }

LABEL_28:
    v23 = (v22 + 32);
    if (v4)
    {
      goto LABEL_29;
    }

LABEL_42:
    LOBYTE(v30) = 0;
    goto LABEL_76;
  }

  if (v26)
  {
    goto LABEL_28;
  }

LABEL_41:
  v6 = ucal_getWeekendTransition() / 1000.0;
  v23 = (v22 + 32);
  if ((v4 & 1) == 0)
  {
    goto LABEL_42;
  }

LABEL_29:
  if (*v23 != 1)
  {
    if (v5 != 1)
    {
      if (*(v22 + 36) == 1)
      {
        v33 = 1;
        goto LABEL_70;
      }

      if (v5 != 2)
      {
        if (*(v22 + 40) == 1)
        {
          v33 = 2;
          goto LABEL_70;
        }

        if (v5 != 3)
        {
          if (*(v22 + 44) == 1)
          {
            v33 = 3;
            goto LABEL_70;
          }

          if (v5 != 4)
          {
            if (*(v22 + 48) == 1)
            {
              v33 = 4;
              goto LABEL_70;
            }

            if (v5 != 5)
            {
              if (*(v22 + 52) == 1)
              {
                v33 = 5;
                goto LABEL_70;
              }

              if (v5 != 6)
              {
                if (*(v22 + 56) != 1)
                {
                  v25 = 0;
                  LOBYTE(v30) = 1;
                  goto LABEL_76;
                }

                v33 = 6;
LABEL_70:
                v35 = &v39[v33];
                goto LABEL_75;
              }
            }
          }
        }
      }
    }

LABEL_116:
    __break(1u);
    goto LABEL_117;
  }

  if (v5 < 7)
  {
LABEL_117:
    __break(1u);
LABEL_118:
    __break(1u);
  }

  if (*(v22 + 56) != 1)
  {
    v33 = 0;
    goto LABEL_70;
  }

  if (*(v22 + 52) != 1)
  {
    v34 = 5;
    goto LABEL_74;
  }

  if (*(v22 + 48) != 1)
  {
    goto LABEL_56;
  }

  if (*(v22 + 44) != 1)
  {
    v34 = 3;
    goto LABEL_74;
  }

  if (*(v22 + 40) != 1)
  {
    goto LABEL_66;
  }

  if (*(v22 + 36) == 1)
  {
    v30 = *v23;
    if (*v23 == 1)
    {
      v25 = 0;
      goto LABEL_76;
    }

    v34 = 0;
  }

  else
  {
    v34 = 1;
  }

LABEL_74:
  v35 = &v39[v34 + 1];
LABEL_75:
  LOBYTE(v30) = 0;
  v25 = *v35;
LABEL_76:
  if ((v12 & 1) == 0)
  {
    goto LABEL_108;
  }

  if (*v23 != 1)
  {
    if (v5 >= 7)
    {
      goto LABEL_87;
    }

    goto LABEL_115;
  }

  if (v5 < 7)
  {
    goto LABEL_118;
  }

  if (*(v22 + 56) != 1)
  {
LABEL_87:
    if (*(v22 + 56) == 1)
    {
      v37 = 6;
    }

    else if (*(v22 + 52) == 1)
    {
      v37 = 5;
    }

    else if (*(v22 + 48) == 1)
    {
      v37 = 4;
    }

    else if (*(v22 + 44) == 1)
    {
      v37 = 3;
    }

    else if (*(v22 + 40) == 1)
    {
      v37 = 2;
    }

    else if (*(v22 + 36) == 1)
    {
      v37 = 1;
    }

    else
    {
      if (*v23 != 1)
      {
        goto LABEL_109;
      }

      v37 = 0;
    }

    v38 = &v39[v37];
    goto LABEL_107;
  }

  if (*(v22 + 36) == 1)
  {
    if (*(v22 + 40) == 1)
    {
      if (*(v22 + 44) == 1)
      {
        if (*(v22 + 48) == 1)
        {
          if (*(v22 + 52) != 1)
          {
            v36 = 5;
            goto LABEL_103;
          }

LABEL_109:
          *(v40 + 16) = 0u;
          *(v40 + 32) = 0u;
          *v40 = 0u;
          *(v40 + 48) = 1;
          goto LABEL_111;
        }

        v36 = 4;
      }

      else
      {
        v36 = 3;
      }
    }

    else
    {
      v36 = 2;
    }
  }

  else
  {
    v36 = 1;
  }

LABEL_103:
  v38 = &v39[v36 - 1];
LABEL_107:
  v3 = *v38;
LABEL_108:
  if (v30)
  {
    goto LABEL_109;
  }

  *v40 = v7;
  *(v40 + 8) = v4 & 1;
  *(v40 + 16) = v6;
  *(v40 + 24) = v12 & 1;
  *(v40 + 32) = v25;
  *(v40 + 40) = v3;
  *(v40 + 48) = 0;
LABEL_111:
  ucal_close();
  swift_setDeallocating();
  return swift_setDeallocating();
}

Swift::Bool __swiftcall _CalendarGregorian.isDateInWeekend(_:weekendRange:)(Foundation::Date _, Foundation::WeekendRange *weekendRange)
{
  value = weekendRange->onsetTime.value;
  v5 = *v2;
  v6 = *(v2 + 8);
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  v10 = *(v2 + 32);
  v9 = *(v2 + 40);
  __src[0] = 128;
  v31 = *&value;
  __dst[0] = *(v3 + 112);
  swift_unknownObjectRetain();
  _CalendarGregorian.dateComponents(_:from:in:)(__src, &v31, __dst, v32);
  swift_unknownObjectRelease();
  result = outlined destroy of DateComponents(v32);
  if (v34)
  {
    goto LABEL_44;
  }

  if (v10 == v9 && v33 != v10)
  {
    return 0;
  }

  if (v10 >= v9 || (result = 0, v33 >= v10) && v9 >= v33)
  {
    if (v9 < v10 && v9 < v33 && v33 < v10)
    {
      return 0;
    }

    if (v33 == v10)
    {
      if (v5 == 0.0)
      {
        v12 = 1;
      }

      else
      {
        v12 = v6;
      }

      if (v12)
      {
        return 1;
      }

      v31 = 112;
      v28 = value;
      __dst[0] = *(v3 + 112);
      swift_unknownObjectRetain();
      _CalendarGregorian.dateComponents(_:from:in:)(&v31, &v28, __dst, __src);
      swift_unknownObjectRelease();
      result = memcpy(__dst, __src, 0x11BuLL);
      if (BYTE8(__dst[7]) & 1) != 0 || (BYTE8(__dst[8]) & 1) != 0 || (BYTE8(__dst[9]))
      {
        goto LABEL_46;
      }

      v21 = *&__dst[7];
      v22 = *&__dst[8];
      v23 = *&__dst[9];
      result = outlined destroy of DateComponents(__dst);
      v24 = 3600 * v21;
      if ((v21 * 3600) >> 64 == (3600 * v21) >> 63)
      {
        v25 = 60 * v22;
        if ((v22 * 60) >> 64 == (60 * v22) >> 63)
        {
          v18 = __OFADD__(v24, v25);
          v26 = v24 + v25;
          if (!v18)
          {
            v18 = __OFADD__(v26, v23);
            v27 = v26 + v23;
            if (!v18)
            {
              return v5 <= v27;
            }

            goto LABEL_42;
          }

          goto LABEL_40;
        }

        goto LABEL_38;
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
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
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
      return result;
    }

    result = 1;
    if (!((v33 != v9) | v8 & 1) && v7 < 86400.0)
    {
      v31 = 112;
      v28 = value;
      __dst[0] = *(v3 + 112);
      swift_unknownObjectRetain();
      _CalendarGregorian.dateComponents(_:from:in:)(&v31, &v28, __dst, __src);
      swift_unknownObjectRelease();
      result = memcpy(__dst, __src, 0x11BuLL);
      if (BYTE8(__dst[7]) & 1) != 0 || (BYTE8(__dst[8]) & 1) != 0 || (BYTE8(__dst[9]))
      {
        goto LABEL_45;
      }

      v13 = *&__dst[7];
      v14 = *&__dst[8];
      v15 = *&__dst[9];
      result = outlined destroy of DateComponents(__dst);
      v16 = 3600 * v13;
      if ((v13 * 3600) >> 64 == (3600 * v13) >> 63)
      {
        v17 = 60 * v14;
        if ((v14 * 60) >> 64 == (60 * v14) >> 63)
        {
          v18 = __OFADD__(v16, v17);
          v19 = v16 + v17;
          if (!v18)
          {
            v18 = __OFADD__(v19, v15);
            v20 = v19 + v15;
            if (!v18)
            {
              return v7 > v20;
            }

            goto LABEL_43;
          }

          goto LABEL_41;
        }

        goto LABEL_39;
      }

      goto LABEL_37;
    }
  }

  return result;
}

double AttributedString.unicodeScalars.getter@<D0>(uint64_t a1@<X8>)
{

  *&result = AttributedString.UnicodeScalarView.init(_:)(v2, a1).n128_u64[0];
  return result;
}

double AttributedString.init(_:)@<D0>(_OWORD *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  v27 = a1[3];
  v28 = v3;
  v4 = a1[2];
  v5 = a1[1];
  v25[0] = *a1;
  v25[1] = v5;
  v26 = v4;
  swift_unknownObjectRetain();
  BigString.UnicodeScalarView.subscript.getter();
  swift_unknownObjectRelease();
  BigString.init(_:)();
  v6 = *(*&v25[0] + 72);
  v7 = *(*&v25[0] + 80);
  v8 = *(*&v25[0] + 88);
  swift_unknownObjectRetain();
  v9 = specialized Rope.extract<A>(from:to:in:)(*(&v25[0] + 1) >> 11, *(&v26 + 1) >> 11, v6, v7, v8);
  v11 = v10;
  v13 = v12;
  v15 = v14;
  swift_unknownObjectRelease();
  outlined destroy of AttributedSubstring(v25);
  type metadata accessor for AttributedString.Guts();
  v16 = swift_allocObject();
  v17 = BigString.isEmpty.getter() & 1;
  specialized Rope._endPath.getter(v9);
  if (v9)
  {
    v18 = v13 == 0;
  }

  else
  {
    v18 = 1;
  }

  v19 = v18;
  if (v19 != v17)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (one-time initialization token for _nextVersion != -1)
  {
LABEL_11:
    swift_once();
  }

  add_explicit = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
  *(v16 + 24) = v22;
  *(v16 + 16) = add_explicit;
  *(v16 + 40) = v23;
  result = *&v24;
  *(v16 + 56) = v24;
  *(v16 + 72) = v9;
  *(v16 + 80) = v11;
  *(v16 + 88) = v13;
  *(v16 + 96) = v15;
  *(v16 + 104) = MEMORY[0x1E69E7CC0];
  *a2 = v16;
  return result;
}

void (*protocol witness for Collection.subscript.read in conformance AttributedString.UnicodeScalarView(void (**a1)(void **a1), void *a2))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0x34uLL);
  }

  v6 = result;
  *a1 = result;
  v7 = *a2 >> 10;
  if (v7 < v2[1] >> 10 || v7 >= v2[5] >> 10)
  {
    __break(1u);
  }

  else
  {
    v9 = *(*v2 + 40);
    v10 = *(*v2 + 56);
    *result = *(*v2 + 24);
    *(result + 1) = v9;
    *(result + 2) = v10;
    swift_unknownObjectRetain();
    v11 = BigString.UnicodeScalarView.subscript.getter();
    swift_unknownObjectRelease();
    *(v6 + 12) = v11;
    return protocol witness for Collection.subscript.read in conformance AttributedString.UnicodeScalarView;
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for AttributedString.Index(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

unint64_t *protocol witness for Collection.formIndex(after:) in conformance AttributedString.UnicodeScalarView(unint64_t *result)
{
  v2 = *result >> 10;
  v3 = v1[5] >> 10;
  if (v2 >= v1[1] >> 10 && v3 >= v2)
  {
    v5 = result;
    v6 = *v1;
    swift_unknownObjectRetain();
    v7 = BigString.UnicodeScalarView.index(after:)();
    v9 = v8;
    v11 = v10;
    v13 = v12;
    result = swift_unknownObjectRelease();
    if (v3 >= v7 >> 10)
    {
      v14 = *(v6 + 16);
      *v5 = v7;
      v5[1] = v9;
      v5[2] = v11;
      v5[3] = v13;
      v5[4] = v14;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t _JSONKeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = v6;
  v240 = a5;
  v241 = a6;
  v267 = *MEMORY[0x1E69E9840];
  v11 = *(a3 + 16);
  v247 = *(v11 - 1);
  v12 = v247;
  MEMORY[0x1EEE9AC00](a1);
  v237 = &v230 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Optional();
  v245 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v230 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v230 - v18;
  v20 = *v7;
  v250 = *(v7 + 16);
  v21 = *(a3 + 24);
  v22 = v11;
  v265 = v11;
  v266 = v21;
  v249 = v21;
  __swift_allocate_boxed_opaque_existential_0(&v262);
  v24 = *(v12 + 16);
  v23 = v12 + 16;
  v244 = a2;
  v243 = v23;
  v242 = v24;
  v24();
  v25 = *(v20 + 152);
  v251 = v20;
  v252 = v16;
  v253 = v19;
  v248 = a4;
  v246 = v14;
  if (!v25)
  {
    v30 = dispatch thunk of CodingKey.stringValue.getter();
    v28 = v38;
    goto LABEL_86;
  }

  if (v25 != 1)
  {
    v28 = v11;
    a4 = *(v20 + 160);

    v39 = __JSONEncoder.codingPath.getter();
    v40 = _CodingPathNode.path.getter(v250);
    v259 = v39;
    specialized Array.append<A>(contentsOf:)(v40);
    v22 = v259;
    outlined init with copy of Hashable & Sendable(&v262, &v259);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_14;
    }

    goto LABEL_132;
  }

  v235 = v11;
  v26 = dispatch thunk of CodingKey.stringValue.getter();
  v28 = v27;
  if ((v27 & 0x2000000000000000) != 0)
  {
    v29 = HIBYTE(v27) & 0xF;
  }

  else
  {
    v29 = v26 & 0xFFFFFFFFFFFFLL;
  }

  v30 = v26;
  if (!v29)
  {
    v22 = v235;
    goto LABEL_86;
  }

  v31 = String.index(after:)();
  v32 = 7;
  if (((v28 >> 60) & ((v30 & 0x800000000000000) == 0)) != 0)
  {
    v32 = 11;
  }

  v234 = 4 * v29;
  if (4 * v29 < v31 >> 14)
  {
    goto LABEL_163;
  }

  v233 = v32 | (v29 << 16);
  v33 = String.subscript.getter();
  v37 = v36;
  v16 = MEMORY[0x1E69E7CC0];
  i = v28;
  v28 = v30;
  v239 = v7;
  if ((v33 ^ v34) < 0x4000)
  {
    v23 = 15;
    goto LABEL_76;
  }

  v20 = v33;
  LOBYTE(a4) = v34;
  v25 = v35;
  v23 = 15;
  while (1)
  {
    v231 = v23;
    v238 = v16;
    v50 = Substring.UnicodeScalarView.index(before:)();
    v51 = Substring.UnicodeScalarView.subscript.getter();
    v52 = v51;
    v53 = BuiltInUnicodeScalarSet._bitmapPtrForPlane(_:)(BYTE2(v51), 1u);
    v7 = v20;
    if (!BuiltInUnicodeScalarSet._isMemberOfBitmap(_:_:)(v52, v53, 0x700030001))
    {
      break;
    }

LABEL_20:
    v54 = Substring.UnicodeScalarView.index(after:)();

    v56 = v7 >> 14;
    v57 = v231;
    if (v7 >> 14 < v231 >> 14 || v54 >> 14 < v56)
    {
      goto LABEL_167;
    }

    v16 = v238;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 2) + 1, 1, v16);
    }

    v59 = *(v16 + 2);
    v58 = *(v16 + 3);
    if (v59 >= v58 >> 1)
    {
      v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v58 > 1), v59 + 1, 1, v16);
    }

    *(v16 + 2) = v59 + 1;
    v60 = &v16[16 * v59];
    *(v60 + 4) = v57;
    *(v60 + 5) = v7;
    if (v234 < v56)
    {
      goto LABEL_168;
    }

    v61 = String.subscript.getter();
    v65 = v64;
    if ((v61 ^ v62) < 0x4000)
    {
      v23 = v7;
      goto LABEL_76;
    }

    v66 = v61;
    LOBYTE(a4) = v62;
    v67 = v63;
    v232 = v7 >> 14;
    v238 = v16;
    v68 = Substring.UnicodeScalarView.index(before:)();
    if ((v65 & 0x2000000000000000) != 0)
    {
      v22 = (HIBYTE(v65) & 0xF);
    }

    else
    {
      v22 = (v67 & 0xFFFFFFFFFFFFLL);
    }

    v236 = v65 & 0xFFFFFFFFFFFFFFLL;
    v69 = v66;
    while (1)
    {
      v70 = Substring.UnicodeScalarView.subscript.getter();
      if (BYTE2(v70) <= 1u)
      {
        v71 = *(&__CFUniCharLowercaseLetterCharacterSetBitmap + BYTE2(v70));
        if (v71)
        {
          if ((*(v71 + (v70 >> 3)) >> (v70 & 7)))
          {
            break;
          }
        }
      }

      if ((v69 ^ v68) < 0x4000)
      {
        v23 = v7;
        v16 = v238;
        goto LABEL_76;
      }

      v25 = _StringGuts.validateInclusiveScalarIndex(_:)(v69, v67, v65) >> 16;
      if (v25 >= v22)
      {
        __break(1u);
        goto LABEL_127;
      }

      if ((v65 & 0x1000000000000000) != 0)
      {
        v69 = String.UnicodeScalarView._foreignIndex(after:)();
      }

      else
      {
        if ((v65 & 0x2000000000000000) != 0)
        {
          v259 = v67;
          v260 = v236;
          v73 = *(&v259 + v25);
        }

        else
        {
          v72 = (v65 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((v67 & 0x1000000000000000) == 0)
          {
            v72 = _StringObject.sharedUTF8.getter();
          }

          v73 = *(v72 + v25);
        }

        v74 = v73;
        v75 = __clz(v73 ^ 0xFF) - 24;
        if (v74 >= 0)
        {
          LOBYTE(v75) = 1;
        }

        v69 = ((v25 + v75) << 16) | 5;
      }
    }

    v84 = Substring.UnicodeScalarView.index(after:)();

    if (v84 >> 14 < v69 >> 14)
    {
      __break(1u);
LABEL_188:
      __break(1u);
LABEL_189:
      __break(1u);
LABEL_190:
      __break(1u);
    }

    if (v69 >> 14 == String.index(after:)() >> 14)
    {
      v23 = v7;
    }

    else
    {
      v85 = String.index(before:)();
      if (v232 > v85 >> 14)
      {
        goto LABEL_189;
      }

      v23 = v85;
      v87 = *(v238 + 2);
      v86 = *(v238 + 3);
      if (v87 >= v86 >> 1)
      {
        v238 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v86 > 1), v87 + 1, 1, v238);
      }

      v88 = v238;
      *(v238 + 2) = v87 + 1;
      v89 = &v88[16 * v87];
      *(v89 + 4) = v7;
      *(v89 + 5) = v23;
    }

    if (v234 < v84 >> 14)
    {
      goto LABEL_188;
    }

    v20 = String.subscript.getter();
    LOBYTE(a4) = v90;
    v25 = v91;
    v37 = v92;
    v16 = v238;
    if ((v20 ^ v90) < 0x4000)
    {
      goto LABEL_76;
    }
  }

  if ((v37 & 0x2000000000000000) != 0)
  {
    v22 = (HIBYTE(v37) & 0xF);
  }

  else
  {
    v22 = (v25 & 0xFFFFFFFFFFFFLL);
  }

  v236 = v37 & 0xFFFFFFFFFFFFFFLL;
  v232 = (v37 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v7 = v20;
  while ((v7 ^ v50) >= 0x4000)
  {
    v79 = _StringGuts.validateInclusiveScalarIndex(_:)(v7, v25, v37) >> 16;
    if (v79 >= v22)
    {
      goto LABEL_130;
    }

    if ((v37 & 0x1000000000000000) != 0)
    {
      v7 = String.UnicodeScalarView._foreignIndex(after:)();
    }

    else
    {
      if ((v37 & 0x2000000000000000) != 0)
      {
        v259 = v25;
        v260 = v236;
        v81 = *(&v259 + v79);
      }

      else
      {
        v80 = v232;
        if ((v25 & 0x1000000000000000) == 0)
        {
          v80 = _StringObject.sharedUTF8.getter();
        }

        v81 = *(v80 + v79);
      }

      v82 = v81;
      v83 = __clz(v81 ^ 0xFF) - 24;
      if (v82 >= 0)
      {
        LOBYTE(v83) = 1;
      }

      v7 = ((v79 + v83) << 16) | 5;
    }

    v76 = Substring.UnicodeScalarView.subscript.getter();
    v77 = v76;
    v78 = BuiltInUnicodeScalarSet._bitmapPtrForPlane(_:)(BYTE2(v76), 1u);
    if (BuiltInUnicodeScalarSet._isMemberOfBitmap(_:_:)(v77, v78, 0x700030001))
    {
      goto LABEL_20;
    }
  }

  v16 = v238;
  v23 = v231;
LABEL_76:

  if (v234 < v23 >> 14)
  {
    goto LABEL_164;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_165;
  }

  while (1)
  {
    v94 = *(v16 + 2);
    v93 = *(v16 + 3);
    v95 = v94 + 1;
    if (v94 >= v93 >> 1)
    {
      v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v93 > 1), v94 + 1, 1, v16);
    }

    *(v16 + 2) = v95;
    v96 = &v16[16 * v94];
    v97 = v233;
    *(v96 + 4) = v23;
    *(v96 + 5) = v97;
    v259 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v94 + 1, 0);
    a4 = v259;
    v238 = v16;
    v98 = v16 + 40;
    do
    {
      String.subscript.getter();
      v99 = Substring.lowercased()();

      v259 = a4;
      v101 = *(a4 + 16);
      v100 = *(a4 + 24);
      if (v101 >= v100 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v100 > 1), v101 + 1, 1);
        a4 = v259;
      }

      v98 += 16;
      *(a4 + 16) = v101 + 1;
      *(a4 + 16 * v101 + 32) = v99;
      --v95;
    }

    while (v95);

    v259 = a4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
    lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd);
    v30 = BidirectionalCollection<>.joined(separator:)();
    v103 = v102;

    v28 = v103;
    v20 = v251;
    v22 = v235;
    while (1)
    {
      v16 = v252;
      v7 = v239;
LABEL_86:
      __swift_destroy_boxed_opaque_existential_1(&v262);
      v104 = *(v7 + 8);
      v105 = *(v104 + 16);
      v106 = *(v105 + 16);
      v238 = v30;
      if (!v106)
      {
        goto LABEL_108;
      }

      v236 = v104;

      v107 = specialized __RawDictionaryStorage.find<A>(_:)(v30, v28);
      if ((v108 & 1) == 0)
      {

        v104 = v236;
        v114 = *(v236 + 16);
        if (*(v114 + 16))
        {

          v115 = specialized __RawDictionaryStorage.find<A>(_:)(v30, v28);
          if (v116)
          {
            v117 = *(v114 + 56) + 24 * v115;
            v118 = *(v117 + 16) >> 6;
            if (v118)
            {
              if (v118 != 2)
              {
                goto LABEL_193;
              }

              v110 = *v117;

              v113 = v253;
              goto LABEL_151;
            }
          }

          v104 = v236;
        }

LABEL_108:
        type metadata accessor for JSONFuture.RefObject();
        v136 = swift_allocObject();
        *(v136 + 16) = MEMORY[0x1E69E7CC8];
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS10Foundation10JSONFutureOGMd);
        Dictionary.reserveCapacity(_:)(4);
        v239 = v136;

        LOBYTE(a4) = swift_isUniquelyReferenced_nonNull_native();
        v262 = *(v104 + 16);
        v25 = v262;
        *(v104 + 16) = 0x8000000000000000;
        v137 = specialized __RawDictionaryStorage.find<A>(_:)(v30, v28);
        v139 = *(v25 + 16);
        v140 = (v138 & 1) == 0;
        v128 = __OFADD__(v139, v140);
        v141 = v139 + v140;
        if (v128)
        {
          goto LABEL_131;
        }

        v142 = v138;
        if (*(v25 + 24) >= v141)
        {
          v113 = v253;
          if (a4)
          {
            v143 = v25;
            goto LABEL_114;
          }

          v235 = v22;
          v236 = v137;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation10JSONFutureOGMd);
          v167 = static _DictionaryStorage.copy(original:)();
          v143 = v167;
          if (*(v25 + 16))
          {
            v168 = (v167 + 64);
            v169 = (v25 + 64);
            v170 = ((1 << *(v143 + 32)) + 63) >> 6;
            v234 = v25 + 64;
            if (v143 != v25 || v168 >= &v169[8 * v170])
            {
              memmove(v168, v169, 8 * v170);
            }

            v171 = 0;
            *(v143 + 16) = *(v25 + 16);
            v172 = 1 << *(v25 + 32);
            v173 = -1;
            if (v172 < 64)
            {
              v173 = ~(-1 << v172);
            }

            v174 = v173 & *(v25 + 64);
            v175 = (v172 + 63) >> 6;
            v16 = v252;
            if (!v174)
            {
              goto LABEL_141;
            }

            while (1)
            {
              v176 = __clz(__rbit64(v174));
              for (i = (v174 - 1) & v174; ; i = (v178 - 1) & v178)
              {
                v179 = v176 | (v171 << 6);
                v180 = 16 * v179;
                v181 = (*(v25 + 48) + 16 * v179);
                v183 = *v181;
                v182 = v181[1];
                v179 *= 24;
                v184 = *(v25 + 56) + v179;
                v185 = *v184;
                v186 = *(v184 + 8);
                v187 = (*(v143 + 48) + v180);
                v188 = *(v184 + 16);
                *v187 = v183;
                v187[1] = v182;
                v189 = *(v143 + 56) + v179;
                *v189 = v185;
                *(v189 + 8) = v186;
                *(v189 + 16) = v188;

                outlined copy of JSONFuture(v185, v186, v188);
                v20 = v251;
                v113 = v253;
                v174 = i;
                v16 = v252;
                if (i)
                {
                  break;
                }

LABEL_141:
                v177 = v171;
                do
                {
                  v171 = v177 + 1;
                  if (__OFADD__(v177, 1))
                  {
                    goto LABEL_190;
                  }

                  if (v171 >= v175)
                  {
                    goto LABEL_148;
                  }

                  v178 = *(v234 + 8 * v171);
                  ++v177;
                }

                while (!v178);
                v176 = __clz(__rbit64(v178));
              }
            }
          }

LABEL_148:

          v137 = v236;
          v22 = v235;
          if ((v142 & 1) == 0)
          {
            goto LABEL_149;
          }

LABEL_115:
          v145 = v22;
          v146 = v137;

          v147 = *(v143 + 56) + 24 * v146;
          v22 = v145;
          v148 = *v147;
          v149 = *(v147 + 8);
          v110 = v239;
          *v147 = v239;
          *(v147 + 8) = 0;
          v150 = *(v147 + 16);
          *(v147 + 16) = 0x80;
          outlined consume of JSONFuture(v148, v149, v150);
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v141, a4);
          v143 = v262;
          v137 = specialized __RawDictionaryStorage.find<A>(_:)(v238, v28);
          v113 = v253;
          if ((v142 & 1) != (v144 & 1))
          {
            goto LABEL_196;
          }

LABEL_114:
          if (v142)
          {
            goto LABEL_115;
          }

LABEL_149:
          v110 = v239;
          specialized _NativeDictionary._insert(at:key:value:)(v137, v238, v28, v239, 0, 128, v143);
        }

        *(v104 + 16) = v143;
LABEL_151:

        v112 = v245;
        goto LABEL_152;
      }

      i = v28;
      v109 = *(v105 + 56) + 24 * v107;
      v110 = *v109;
      a4 = *(v109 + 8);
      v111 = *(v109 + 16);
      outlined copy of JSONFuture(*v109, a4, *(v109 + 16));

      if ((v111 & 0xC0) == 0x80)
      {

        v112 = v245;
        v113 = v253;
        goto LABEL_152;
      }

      if (v111 != 4)
      {
        goto LABEL_192;
      }

      v234 = a4;
      outlined copy of JSONEncoderValue(v110, a4, 4u);
      v233 = v110;
      v25 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDySS10Foundation16JSONEncoderValueOG_SS_AF10JSONFutureOts5NeverOTg5016_s10Foundation16ef27O20convertedToObjectRefAA10G39O0gF0CSgyFSS_AFtSS3key_AC5valuet_tXEfU_Tf1cn_n(v110);
      v119 = *(v25 + 16);
      v113 = v253;
      v235 = v22;
      if (!v119)
      {
        break;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation10JSONFutureOGMd);
      v120 = static _DictionaryStorage.allocate(capacity:)();
      v121 = *(v25 + 16);
      *&v256 = v120;
      v239 = v121;
      if (!v121)
      {
        goto LABEL_117;
      }

      v22 = 0;
      v122 = (v25 + 64);
      while (v22 < *(v25 + 16))
      {
        v28 = v25;
        v25 = *(v122 - 3);
        v20 = *(v122 - 2);
        v7 = *(v122 - 1);
        LOBYTE(a4) = *v122;
        v262 = *(v122 - 4);
        v123 = v262;
        v263 = v25;

        outlined copy of JSONFuture(v20, v7, a4);
        v124 = specialized __RawDictionaryStorage.find<A>(_:)(v123, v25);
        v126 = v120[2];
        v127 = (v125 & 1) == 0;
        v128 = __OFADD__(v126, v127);
        v129 = v126 + v127;
        if (v128)
        {
          goto LABEL_128;
        }

        v130 = v125;
        if (v120[3] < v129)
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v129, 1);
          v120 = v256;
          v124 = specialized __RawDictionaryStorage.find<A>(_:)(v123, v25);
          if ((v130 & 1) != (v131 & 1))
          {
            goto LABEL_196;
          }
        }

        if (v130)
        {
          goto LABEL_194;
        }

        v120[(v124 >> 6) + 8] |= 1 << v124;
        v132 = (v120[6] + 16 * v124);
        *v132 = v123;
        v132[1] = v25;
        v133 = v120[7] + 24 * v124;
        *v133 = v20;
        *(v133 + 8) = v7;
        *(v133 + 16) = a4;
        v134 = v120[2];
        v128 = __OFADD__(v134, 1);
        v135 = v134 + 1;
        if (v128)
        {
          goto LABEL_129;
        }

        v22 = (v22 + 1);
        v120[2] = v135;
        v122 += 40;
        v20 = v251;
        v16 = v252;
        v113 = v253;
        v25 = v28;
        if (v239 == v22)
        {
          goto LABEL_117;
        }
      }

LABEL_127:
      __break(1u);
LABEL_128:
      __break(1u);
LABEL_129:
      __break(1u);
LABEL_130:
      __break(1u);
LABEL_131:
      __break(1u);
LABEL_132:
      v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v22[2] + 1, 1, v22);
LABEL_14:
      v42 = v22[2];
      v41 = v22[3];
      v239 = v7;
      if (v42 >= v41 >> 1)
      {
        v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v42 + 1, 1, v22);
      }

      v43 = __swift_mutable_project_boxed_opaque_existential_1(&v259, v261);
      v44 = MEMORY[0x1EEE9AC00](v43);
      v46 = &v230 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v47 + 16))(v46, v44);
      v257 = v28;
      v258 = v249;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v256);
      (*(v247 + 32))(boxed_opaque_existential_0, v46, v28);
      v22[2] = v42 + 1;
      outlined init with take of Equatable(&v256, &v22[5 * v42 + 4]);
      __swift_destroy_boxed_opaque_existential_1(&v259);
      (v25)(&v259, v22);

      __swift_project_boxed_opaque_existential_1(&v259, v261);
      v22 = v28;
      v30 = dispatch thunk of CodingKey.stringValue.getter();
      v28 = v49;
      sub_1807A5C7C(v25);
      __swift_destroy_boxed_opaque_existential_1(&v259);
      v20 = v251;
    }

    v120 = MEMORY[0x1E69E7CC8];
LABEL_117:
    v151 = v233;
    outlined consume of JSONFuture(v233, v234, 4u);

    type metadata accessor for JSONFuture.RefObject();
    v152 = swift_allocObject();
    *(v152 + 16) = v120;
    v239 = v152;
    swift_retain_n();
    v153 = v236;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v262 = *(v153 + 16);
    v25 = v262;
    *(v153 + 16) = 0x8000000000000000;
    v55 = specialized __RawDictionaryStorage.find<A>(_:)(v238, i);
    v156 = *(v25 + 16);
    v157 = (v155 & 1) == 0;
    v158 = v156 + v157;
    if (__OFADD__(v156, v157))
    {
      __break(1u);
LABEL_167:
      __break(1u);
LABEL_168:
      __break(1u);
LABEL_169:
      v232 = v55;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation10JSONFutureOGMd);
      v206 = static _DictionaryStorage.copy(original:)();
      v159 = v206;
      if (!*(v25 + 16))
      {
LABEL_184:

        v20 = v251;
        v22 = v235;
        v16 = v252;
        v113 = v253;
        v153 = v236;
        v110 = v239;
        v151 = v233;
        v55 = v232;
        if ((v7 & 1) == 0)
        {
          goto LABEL_185;
        }

        goto LABEL_124;
      }

      v207 = (v206 + 64);
      a4 = v25 + 64;
      v208 = ((1 << *(v159 + 32)) + 63) >> 6;
      if (v159 != v25 || v207 >= a4 + 8 * v208)
      {
        memmove(v207, (v25 + 64), 8 * v208);
      }

      v209 = 0;
      *(v159 + 16) = *(v25 + 16);
      v210 = 1 << *(v25 + 32);
      v211 = *(v25 + 64);
      v212 = -1;
      if (v210 < 64)
      {
        v212 = ~(-1 << v210);
      }

      v213 = v212 & v211;
      v214 = (v210 + 63) >> 6;
      if ((v212 & v211) != 0)
      {
        do
        {
          v215 = __clz(__rbit64(v213));
          v213 &= v213 - 1;
LABEL_182:
          v218 = v215 | (v209 << 6);
          v219 = 16 * v218;
          v220 = (*(v25 + 48) + 16 * v218);
          v222 = *v220;
          v221 = v220[1];
          v218 *= 24;
          v223 = *(v25 + 56) + v218;
          v20 = *v223;
          v224 = *(v223 + 8);
          v225 = (*(v159 + 48) + v219);
          v226 = *(v223 + 16);
          *v225 = v222;
          v225[1] = v221;
          v227 = *(v159 + 56) + v218;
          *v227 = v20;
          *(v227 + 8) = v224;
          *(v227 + 16) = v226;

          outlined copy of JSONFuture(v20, v224, v226);
        }

        while (v213);
      }

      v216 = v209;
      while (1)
      {
        v209 = v216 + 1;
        if (__OFADD__(v216, 1))
        {
          break;
        }

        if (v209 >= v214)
        {
          goto LABEL_184;
        }

        v217 = *(a4 + 8 * v209);
        ++v216;
        if (v217)
        {
          v215 = __clz(__rbit64(v217));
          v213 = (v217 - 1) & v217;
          goto LABEL_182;
        }
      }

      __break(1u);
LABEL_192:
      __break(1u);
LABEL_193:
      __break(1u);
LABEL_194:

      v228 = swift_allocError();
      swift_willThrow();
      outlined consume of JSONFuture(v20, v7, a4);
      v255 = v228;
      v229 = v228;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
      if (swift_dynamicCast())
      {
        v259 = 0;
        v260 = 0xE000000000000000;
        _StringGuts.grow(_:)(30);
        MEMORY[0x1865CB0E0](0xD00000000000001BLL, 0x800000018147F480);
        _print_unlocked<A, B>(_:_:)();
        MEMORY[0x1865CB0E0](39, 0xE100000000000000);
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
LABEL_196:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
      }

      result = swift_unexpectedError();
      __break(1u);
      return result;
    }

    v7 = v155;
    if (*(v25 + 24) >= v158)
    {
      v22 = v235;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        goto LABEL_169;
      }

      v159 = v25;
      v110 = v239;
      if (v155)
      {
        goto LABEL_124;
      }

LABEL_185:
      specialized _NativeDictionary._insert(at:key:value:)(v55, v238, i, v110, 0, 128, v159);
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v158, isUniquelyReferenced_nonNull_native);
      v159 = v262;
      v160 = specialized __RawDictionaryStorage.find<A>(_:)(v238, i);
      v22 = v235;
      if ((v7 & 1) != (v161 & 1))
      {
        goto LABEL_196;
      }

      v55 = v160;
      v110 = v239;
      if ((v7 & 1) == 0)
      {
        goto LABEL_185;
      }

LABEL_124:
      v162 = v55;

      v163 = *(v159 + 56) + 24 * v162;
      v164 = *v163;
      v165 = *(v163 + 8);
      *v163 = v110;
      *(v163 + 8) = 0;
      v166 = *(v163 + 16);
      *(v163 + 16) = 0x80;
      outlined consume of JSONFuture(v164, v165, v166);
    }

    *(v153 + 16) = v159;
    outlined consume of JSONFuture(v151, v234, 4u);
    v112 = v245;
LABEL_152:
    (v242)(v113, v244, v22);
    v190 = v247;
    (*(v247 + 56))(v113, 0, 1, v22);
    v23 = v246;
    (*(v112 + 16))(v16, v113, v246);
    if ((*(v190 + 48))(v16, 1, v22) == 1)
    {
      v191 = *(v112 + 8);

      v191(v113, v23);
      v191(v16, v23);
      v192 = v250;

      goto LABEL_160;
    }

    v193 = v110;
    v194 = *(v190 + 32);
    v195 = v16;
    v16 = v237;
    v194(v237, v195, v22);
    v196 = v22;
    v192 = swift_allocObject();
    v197 = v249;
    v192[5] = v196;
    v192[6] = v197;
    v198 = __swift_allocate_boxed_opaque_existential_0(v192 + 2);
    v194(v198, v16, v196);
    v199 = *(v112 + 8);

    v199(v113, v23);
    v200 = v250;
    v192[7] = v250;
    v201 = v200 >> 62;
    if (v201)
    {
      break;
    }

    v202 = (v250 + 64);
LABEL_158:
    v110 = v193;
    v203 = *v202;

    v204 = v203 + 1;
    if (!__OFADD__(v203, 1))
    {
      goto LABEL_159;
    }

    __break(1u);
LABEL_163:
    __break(1u);
LABEL_164:
    __break(1u);
LABEL_165:
    v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 2) + 1, 1, v16);
  }

  if (v201 == 1)
  {
    v202 = ((v250 & 0x3FFFFFFFFFFFFFFFLL) + 32);
    goto LABEL_158;
  }

  v110 = v193;
  v204 = 1;
LABEL_159:
  v192[8] = v204;
LABEL_160:
  v262 = v20;
  v263 = v110;
  v264 = v192;
  type metadata accessor for _JSONKeyedEncodingContainer();

  swift_getWitnessTable();
  KeyedEncodingContainer.init<A>(_:)();
}

uint64_t sub_180994BEC()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t outlined consume of JSONFuture(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if ((a3 >> 6) > 1u)
  {
    if (a3 >> 6 != 2)
    {
      return a1;
    }
  }

  else if (!(a3 >> 6))
  {
    return outlined consume of JSONEncoderValue(a1, a2, a3);
  }
}

uint64_t instantiation function for generic protocol witness table for <A> PredicateExpressions.Value<A>(void *a1)
{
  a1[1] = swift_getWitnessTable();
  a1[2] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a1[3] = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for <> PredicateExpressions.Equal<A, B>(uint64_t a1)
{
  *(a1 + 16) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 24) = result;
  return result;
}

{
  return instantiation function for generic protocol witness table for <> PredicateExpressions.StringLocalizedStandardContains<A, B>(a1);
}

uint64_t type metadata completion function for PredicateExpressions.CollectionIndexSubscript()
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

uint64_t type metadata completion function for PredicateExpressions.Conjunction()
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

uint64_t instantiation function for generic protocol witness table for PredicateExpressions.Variable<A>(void *a1)
{
  a1[1] = swift_getWitnessTable();
  a1[2] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a1[3] = result;
  return result;
}

uint64_t type metadata completion function for PredicateExpressions.Value()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for PredicateExpressions.StringLocalizedStandardContains()
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

uint64_t type metadata completion function for PredicateExpressions.OptionalFlatMap()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for PredicateExpressions.Variable();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t NSAttributedString.init(_:)(uint64_t *a1)
{
  v95 = *a1;
  if (one-time initialization token for _loadedScopeCache != -1)
  {
    goto LABEL_93;
  }

  while (1)
  {
    v1 = _loadedScopeCache;
    MEMORY[0x1EEE9AC00](a1);
    os_unfair_lock_lock(v1 + 10);
    closure #1 in _loadDefaultAttributes()partial apply(v113);
    os_unfair_lock_unlock(v1 + 10);
    v2 = v113[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation14AttributeScope_pXpGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_181218E20;
    *(inited + 32) = &type metadata for AttributeScopes.FoundationAttributes;
    *(inited + 40) = &protocol witness table for AttributeScopes.FoundationAttributes;
    v113[0] = v2;
    specialized Array.append<A>(contentsOf:)(inited);
    v4 = v113[0];
    v5 = *(v113[0] + 16);
    if (v5)
    {
      v113[0] = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
      v6 = v113[0];
      v7 = v4 + 40;
      do
      {
        v8 = static AttributeScope.scopeDescription.getter(*(v7 - 8));

        v113[0] = v6;
        v10 = *(v6 + 16);
        v9 = *(v6 + 24);
        if (v10 >= v9 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1);
          v6 = v113[0];
        }

        *(v6 + 16) = v10 + 1;
        *(v6 + 8 * v10 + 32) = v8;
        v7 += 16;
        --v5;
      }

      while (v5);
    }

    else
    {

      v6 = MEMORY[0x1E69E7CC0];
    }

    v105 = *(v6 + 16);
    if (!v105)
    {
      v12 = MEMORY[0x1E69E7CC8];
LABEL_51:
      v97 = v12;

      v59 = *(v95 + 40);
      v128[0] = *(v95 + 24);
      v128[1] = v59;
      v128[2] = *(v95 + 56);
      v129[0] = v128[0];
      v130 = *(v95 + 56);
      v129[1] = v59;
      outlined init with copy of Rope<BigString._Chunk>._Node?(v129, v113);
      MEMORY[0x1865CAF80](v128);
      v60 = objc_allocWithZone(NSMutableAttributedString);
      v61 = String._bridgeToObjectiveCImpl()();

      v93 = [v60 initWithString_];
      swift_unknownObjectRelease();
      v62 = *(v95 + 40);
      v125 = *(v95 + 24);
      v126 = v62;
      v127 = *(v95 + 56);
      BigString.startIndex.getter();
      v63 = *(v95 + 72);
      v64 = *(v95 + 80);
      v65 = *(v95 + 88);
      v66 = *(v95 + 96);
      v113[0] = v63;
      v113[1] = v64;
      v96 = v66;
      v113[2] = v65;
      v113[3] = v66;
      v111 = v63;
      if (v63)
      {
        v67 = *(v63 + 18);
        v68 = v65;
        swift_unknownObjectRetain();
        v65 = v68;
      }

      else
      {
        v67 = 0;
      }

      v69 = 0;
      v70 = 0;
      v71 = 0;
      v114 = v96;
      v115 = v67;
      v117 = 0;
      v118 = 0;
      v116 = 0;
      v94 = v65;
      while (1)
      {
        if (v111)
        {
          if (v71 == v65)
          {
            goto LABEL_83;
          }
        }

        else if (!v71)
        {
LABEL_83:

          swift_unknownObjectRelease();
          v91 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithAttributedString_];

          return v91;
        }

        if (v114 != v96)
        {
          goto LABEL_87;
        }

        v108 = v69;
        v73 = v115;
        v74 = v116;
        if (v116)
        {
          v75 = (v116 + 24 * ((v115 >> ((4 * *(v116 + 18) + 8) & 0x3C)) & 0xF));
          v76 = v75[3];
          v77 = v75[5];
          v33 = __OFADD__(v70++, 1);
          v78 = v33;
          v103 = v75[4];

          v79 = v77;

          v80 = v111;
          if (v78)
          {
            goto LABEL_88;
          }

          v117 = v70;
          v33 = __OFADD__(v71, v76);
          v71 += v76;
          if (v33)
          {
            goto LABEL_90;
          }
        }

        else
        {
          v80 = v111;
          specialized Rope._Node.subscript.getter(v115, v111);
          v103 = v82;
          v33 = __OFADD__(v70++, 1);
          if (v33)
          {
            goto LABEL_88;
          }

          v79 = v81;
          v117 = v70;
          v83 = specialized Rope._Node.subscript.getter(v73, v111);
          v84 = v71;

          v71 += v83;
          if (__OFADD__(v84, v83))
          {
            goto LABEL_92;
          }
        }

        v118 = v71;
        if (!v80 || v73 >= (((-15 << ((4 * *(v80 + 18) + 8) & 0x3C)) - 1) & *(v80 + 18) | (*(v80 + 16) << ((4 * *(v80 + 18) + 8) & 0x3C))))
        {
          goto LABEL_95;
        }

        if (v74 && (v85 = (4 * *(v74 + 18) + 8) & 0x3C, v86 = ((v73 >> v85) & 0xF) + 1, v86 < *(v74 + 16)))
        {
          v115 = (v86 << v85) | ((-15 << v85) - 1) & v73;
        }

        else if ((specialized Rope._Node.formSuccessor(of:)(&v114, v80) & 1) == 0)
        {
          v87 = ((-15 << ((4 * *(v80 + 18) + 8) & 0x3C)) - 1) & *(v80 + 18) | (*(v80 + 16) << ((4 * *(v80 + 18) + 8) & 0x3C));
          v114 = v96;
          v115 = v87;
          v116 = 0;
        }

        v88 = *(v95 + 40);
        v122 = *(v95 + 24);
        v123 = v88;
        v124 = *(v95 + 56);
        swift_unknownObjectRetain();
        BigString.UTF8View.index(_:offsetBy:)();
        swift_unknownObjectRelease();
        v89 = *(v95 + 40);
        v119 = *(v95 + 24);
        v120 = v89;
        v121 = *(v95 + 56);
        swift_unknownObjectRetain();
        v90 = BigString.UTF16View.distance(from:to:)();
        swift_unknownObjectRelease();
        if (!*(v103 + 16))
        {
          break;
        }

        v112[0] = v103;
        v112[1] = v79;

        if (!*(specialized Dictionary<>.init(_:attributeTable:options:)(v112, v97, 1) + 16))
        {
          goto LABEL_82;
        }

        type metadata accessor for NSAttributedStringKey(0);
        lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey();
        v72 = v108;
        [v93 setAttributes:_NativeDictionary.bridged()() range:{v108, v90}];
        swift_unknownObjectRelease();
LABEL_56:
        v33 = __OFADD__(v72, v90);
        v69 = v72 + v90;
        v65 = v94;
        if (v33)
        {
          goto LABEL_89;
        }
      }

LABEL_82:

      v72 = v108;
      goto LABEL_56;
    }

    v11 = 0;
    v104 = v6 + 32;
    v12 = MEMORY[0x1E69E7CC8];
    v102 = v6;
LABEL_12:
    if (v11 >= *(v6 + 16))
    {
      goto LABEL_91;
    }

    v13 = *(v104 + 8 * v11);
    v106 = v11 + 1;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v113[0] = v12;
    v15 = v13 + 64;
    v16 = 1 << *(v13 + 32);
    v17 = v16 < 64 ? ~(-1 << v16) : -1;
    v18 = v17 & *(v13 + 64);
    v19 = (v16 + 63) >> 6;
    v107 = v13;

    v20 = 0;
LABEL_19:
    if (v18)
    {
      break;
    }

    while (2)
    {
      v22 = v20 + 1;
      if (!__OFADD__(v20, 1))
      {
        if (v22 < v19)
        {
          v18 = *(v15 + 8 * v22);
          ++v20;
          if (v18)
          {
            goto LABEL_24;
          }

          continue;
        }

        v11 = v106;
        v6 = v102;
        if (v106 == v105)
        {
          goto LABEL_51;
        }

        goto LABEL_12;
      }

      break;
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
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    a1 = swift_once();
  }

  v22 = v20;
LABEL_24:
  v23 = (v22 << 10) | (16 * __clz(__rbit64(v18)));
  v24 = (*(v107 + 48) + v23);
  v25 = *v24;
  v26 = v24[1];
  v109 = *(*(v107 + 56) + v23);

  v110 = v25;
  v27 = v25;
  v28 = v12;
  v29 = specialized __RawDictionaryStorage.find<A>(_:)(v27, v26);
  v31 = *(v12 + 16);
  v32 = (v30 & 1) == 0;
  v33 = __OFADD__(v31, v32);
  v34 = v31 + v32;
  if (v33)
  {
    goto LABEL_85;
  }

  v35 = v30;
  if (*(v12 + 24) < v34)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v34, isUniquelyReferenced_nonNull_native & 1);
    v28 = v113[0];
    v36 = v110;
    v29 = specialized __RawDictionaryStorage.find<A>(_:)(v110, v26);
    if ((v35 & 1) != (v37 & 1))
    {
      goto LABEL_96;
    }

LABEL_30:
    v18 &= v18 - 1;
    if (v35)
    {
      v21 = v29;

      *(*(v28 + 56) + 16 * v21) = v109;
    }

    else
    {
      *(v28 + 8 * (v29 >> 6) + 64) |= 1 << v29;
      v38 = (*(v28 + 48) + 16 * v29);
      *v38 = v36;
      v38[1] = v26;
      *(*(v28 + 56) + 16 * v29) = v109;
      v39 = *(v28 + 16);
      v33 = __OFADD__(v39, 1);
      v40 = v39 + 1;
      if (v33)
      {
        goto LABEL_86;
      }

      *(v28 + 16) = v40;
    }

    isUniquelyReferenced_nonNull_native = 1;
    v20 = v22;
    v12 = v28;
    goto LABEL_19;
  }

  if (isUniquelyReferenced_nonNull_native)
  {
LABEL_29:
    v36 = v110;
    goto LABEL_30;
  }

  v99 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation19AttributedStringKey_pXpGMd);
  v41 = static _DictionaryStorage.copy(original:)();
  v28 = v41;
  if (!*(v12 + 16))
  {
LABEL_49:

    v113[0] = v28;
    v29 = v99;
    goto LABEL_29;
  }

  v42 = (v41 + 64);
  v43 = v12 + 64;
  v44 = ((1 << *(v28 + 32)) + 63) >> 6;
  if (v28 != v12 || v42 >= v43 + 8 * v44)
  {
    memmove(v42, (v12 + 64), 8 * v44);
  }

  v45 = 0;
  *(v28 + 16) = *(v12 + 16);
  v46 = 1 << *(v12 + 32);
  if (v46 < 64)
  {
    v47 = ~(-1 << v46);
  }

  else
  {
    v47 = -1;
  }

  v48 = v47 & *(v12 + 64);
  v98 = (v46 + 63) >> 6;
  if (v48)
  {
    do
    {
      v100 = (v48 - 1) & v48;
      v101 = v45;
      v49 = __clz(__rbit64(v48)) | (v45 << 6);
LABEL_47:
      v53 = 16 * v49;
      v54 = (*(v12 + 48) + v53);
      v56 = *v54;
      v55 = v54[1];
      v57 = *(*(v12 + 56) + v53);
      v58 = (*(v28 + 48) + v53);
      *v58 = v56;
      v58[1] = v55;
      *(*(v28 + 56) + v53) = v57;

      v48 = v100;
      v45 = v101;
    }

    while (v100);
  }

  v50 = v45;
  while (1)
  {
    v51 = v50 + 1;
    if (__OFADD__(v50, 1))
    {
      break;
    }

    if (v51 >= v98)
    {
      goto LABEL_49;
    }

    v52 = *(v43 + 8 * v51);
    ++v50;
    if (v52)
    {
      v100 = (v52 - 1) & v52;
      v101 = v51;
      v49 = __clz(__rbit64(v52)) | (v51 << 6);
      goto LABEL_47;
    }
  }

  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);

  swift_unknownObjectRelease();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

Swift::Bool __swiftcall _NSSwiftCalendar.isDate(_:inSameDayAs:)(Foundation::Date _, Foundation::Date inSameDayAs)
{
  v4 = *v2;
  v5 = *(v3 + OBJC_IVAR____NSSwiftCalendar__lock);
  os_unfair_lock_lock((v5 + 32));
  *&_a[0]._time = *(v5 + 16);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v5 + 32));
  v11 = *&_a[0]._time;
  v10 = v4;
  v7 = Calendar.compare(_:to:toGranularity:)(_a[0], v6, &v10);
  swift_unknownObjectRelease();
  return v7 == NSOrderedSame;
}

uint64_t getEnumTagSinglePayload for AttributedString.Index(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 40))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 - 1;
  if (v4 < 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t specialized Rope.Builder._appendNow(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(v3 + 8) = 0;
  if (v5)
  {
    v13 = v5;
    v14 = v6;
  }

  else
  {
    v7 = a1;
    v8 = a2;
    v9 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s19CollectionsInternal4RopeV8_StorageCy10Foundation16AttributedStringV01_B3RunV_AC5_ItemVyAJ_GGMd);
    v10 = swift_allocObject();
    a2 = v8;
    a3 = v9;
    v11 = v10;
    a1 = v7;
    *(v11 + 16) = 0;
    *(v11 + 18) = 0;
    v14 = 0uLL;
    v13 = v11;
  }

  specialized Rope._Node._appendItem(_:)(a1, a2, a3);
  result = v13;
  if (*(v13 + 16) == 15)
  {

    return specialized Rope.Builder._appendNow(_:)(v13, v14, *(&v14 + 1));
  }

  else
  {
    *(v4 + 8) = v13;
    *(v4 + 16) = v14;
  }

  return result;
}

uint64_t specialized Rope.Builder.finalize()()
{
  v1 = v0;
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[9];
  v0[8] = 0;
  v0[9] = 0;
  v0[7] = 0;
  if (v2)
  {
    if (v3)
    {
      v5 = v0[4];
      v6 = v0[5];
      v7 = v0[6];
      v0[5] = 0;
      v0[6] = 0;
      v0[4] = 0;
      if (v6)
      {
        specialized Rope.Builder._appendNow(_:)(v5, v6, v7);
        outlined consume of Rope<AttributedString._InternalRun>._Item?(v0[4], v0[5]);
      }

      v0[4] = v3;
      v0[5] = v2;
      v0[6] = v4;
    }

    else
    {
    }
  }

  v8 = v0[4];
  v9 = v0[5];
  v10 = v0 + 4;
  v11 = v0[6];
  v0[5] = 0;
  v0[6] = 0;
  v0[4] = 0;
  if (v9)
  {
    specialized Rope.Builder._appendNow(_:)(v8, v9, v11);
  }

LABEL_17:
  v19 = v1[10];
  while (1)
  {
    if (!v19[2])
    {
      v20 = v1[4];
      v21 = v1[5];
      v22 = v1[6];
      *v10 = 0;
      v1[5] = 0;
      v1[6] = 0;
      if (v21)
      {
        specialized Rope.Builder._appendNow(_:)(v20, v21, v22);
      }

      v24 = v1[1];
      v23 = v1[2];
      v25 = v1[3];
      v1[2] = 0;
      v1[3] = 0;
      v1[1] = 0;
      v58 = 0;
      MEMORY[0x1865D26B0](&v58, 8, v22);
      v26 = v58;
      v27 = *v1;
      if (!*(*v1 + 16))
      {
        return v24;
      }

      while (1)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        if (result)
        {
          v32 = v27[2];
          if (!v32)
          {
            goto LABEL_48;
          }
        }

        else
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew()(v27);
          v27 = result;
          v32 = *(result + 16);
          if (!v32)
          {
LABEL_48:
            __break(1u);
            goto LABEL_49;
          }
        }

        v33 = v32 - 1;
        v34 = &v27[4 * v32];
        v28 = *v34;
        v30 = v34[1];
        v31 = v34[2];
        v29 = v34[3];
        v27[2] = v33;
        *v1 = v27;
        if (v24)
        {
          if (!*(v24 + 16))
          {
            goto LABEL_46;
          }

          if (v28)
          {
            if (*(v28 + 16))
            {
              v58 = v28;
              v59 = v30;
              v60 = v31;
              v55 = v24;
              v56 = v23;
              v57 = v25;
              if (*(v28 + 18) >= *(v24 + 18))
              {
                result = specialized Rope._Node._graftBack(_:)(v54, &v55);
                if (result)
                {
                  v46 = v58;
                  v47 = *(v58 + 18) + 1;
                  if ((v47 >> 8))
                  {
                    goto LABEL_51;
                  }

                  v48 = result;
                  v49 = v44;
                  v50 = v45;
                  v51 = v59;
                  v52 = v60;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19CollectionsInternal4RopeV8_StorageCy10Foundation16AttributedStringV01_B3RunV_AC5_NodeVyAJ_GGMd);
                  result = swift_allocObject();
                  *(result + 18) = v47;
                  v30 = v51 + v49;
                  if (__OFADD__(v51, v49))
                  {
                    goto LABEL_52;
                  }

                  v31 = v52 + v50;
                  if (__OFADD__(v52, v50))
                  {
                    goto LABEL_55;
                  }

                  v28 = result;
                  *(result + 24) = v46;
                  *(result + 32) = v51;
                  *(result + 40) = v52;
                  *(result + 48) = v48;
                  *(result + 56) = v49;
                  *(result + 64) = v50;
                  *(result + 16) = 2;
                  v53 = 0;
                  swift_unknownObjectRetain();
                  MEMORY[0x1865D26B0](&v53, 8);
                  v29 = v53;
                  swift_unknownObjectRelease();
                }

                else
                {
                  v28 = v58;
                  v30 = v59;
                  v31 = v60;
                  v53 = 0;
                  swift_unknownObjectRetain();
                  MEMORY[0x1865D26B0](&v53, 8);
                  v29 = v53;
                  swift_unknownObjectRelease();
                }
              }

              else
              {
                result = specialized Rope._Node._graftFront(_:)(v54, &v58);
                if (result)
                {
                  v37 = result;
                  v38 = *(result + 18) + 1;
                  if ((v38 >> 8))
                  {
                    goto LABEL_50;
                  }

                  v39 = v35;
                  v40 = v36;
                  v42 = v55;
                  v41 = v56;
                  v43 = v57;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19CollectionsInternal4RopeV8_StorageCy10Foundation16AttributedStringV01_B3RunV_AC5_NodeVyAJ_GGMd);
                  result = swift_allocObject();
                  *(result + 18) = v38;
                  v30 = v39 + v41;
                  if (__OFADD__(v39, v41))
                  {
                    goto LABEL_53;
                  }

                  v31 = v40 + v43;
                  if (__OFADD__(v40, v43))
                  {
                    goto LABEL_54;
                  }

                  v28 = result;
                  *(result + 24) = v37;
                  *(result + 32) = v39;
                  *(result + 40) = v40;
                  *(result + 48) = v42;
                  *(result + 56) = v41;
                  *(result + 64) = v43;
                  *(result + 16) = 2;
                  v53 = 0;
                  swift_unknownObjectRetain();
                  MEMORY[0x1865D26B0](&v53, 8);
                  v29 = v53;
                }

                else
                {
                  v28 = v55;
                  v30 = v56;
                  v31 = v57;
                  v53 = 0;
                  swift_unknownObjectRetain();
                  MEMORY[0x1865D26B0](&v53, 8);
                  v29 = v53;
                }

                swift_unknownObjectRelease();
              }

LABEL_46:
              swift_unknownObjectRelease();
              goto LABEL_25;
            }

            swift_unknownObjectRelease();
          }

          v29 = v26;
          v28 = v24;
          v30 = v23;
          v31 = v25;
        }

LABEL_25:
        v27 = *v1;
        v25 = v31;
        v23 = v30;
        v24 = v28;
        v26 = v29;
        if (!*(*v1 + 16))
        {
          return v28;
        }
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v19);
      v19 = result;
      v13 = *(result + 16);
      if (!v13)
      {
        break;
      }

      goto LABEL_12;
    }

    v13 = v19[2];
    if (!v13)
    {
      break;
    }

LABEL_12:
    v14 = v13 - 1;
    v15 = &v19[4 * v13];
    v16 = *v15;
    v17 = v15[1];
    v18 = v15[2];
    v19[2] = v14;
    v1[10] = v19;
    if (v16)
    {
      specialized Rope.Builder._insertBeforeTip(_:)(v16, v17, v18);
      goto LABEL_17;
    }
  }

LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
  return result;
}

uint64_t getEnumTagSinglePayload for AttributedString._InternalRun(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

double AttributedString.subscript.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 40);
  v29 = *(*v1 + 24);
  v30 = v4;
  v31 = *(v3 + 56);
  *&v16 = v3;
  *(&v16 + 1) = BigString.startIndex.getter();
  *&v17 = v5;
  *(&v17 + 1) = v6;
  *&v18 = v7;
  *(&v18 + 1) = BigString.endIndex.getter();
  *&v19 = v8;
  *(&v19 + 1) = v9;
  v20 = v10;
  lazy protocol witness table accessor for type AttributedString.CharacterView and conformance AttributedString.CharacterView();

  dispatch thunk of RangeExpression.relative<A>(to:)();
  v32[2] = v18;
  v32[3] = v19;
  v32[4] = v20;
  v32[0] = v16;
  v32[1] = v17;
  outlined destroy of AttributedString.CharacterView(v32);
  *(a1 + 72) = 0;
  *a1 = v3;
  v11 = *(v3 + 40);
  v26 = *(v3 + 24);
  v27 = v11;
  v28 = *(v3 + 56);
  swift_unknownObjectRetain();
  swift_retain_n();
  BigString.UnicodeScalarView.subscript.getter();
  swift_unknownObjectRelease();

  outlined destroy of BigSubstring.UnicodeScalarView(&v21);
  result = *&v22;
  v13 = v23;
  v14 = v24;
  v15 = v25;
  *(a1 + 8) = v22;
  *(a1 + 24) = v13;
  *(a1 + 40) = v14;
  *(a1 + 56) = v15;
  return result;
}

__n128 AttributedString.UnicodeScalarView.init(_:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v36[0] = *(a1 + 24);
  v36[1] = v4;
  v36[2] = *(a1 + 56);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v17 = *(a1 + 40);
  v18 = *(a1 + 24);
  v24 = BigString.startIndex.getter();
  v25 = v7;
  v26 = v8;
  v27 = v9;
  v28 = BigString.endIndex.getter();
  v29 = v10;
  v30 = v11;
  v31 = v12;
  v32 = v18;
  v33 = v17;
  v34 = v5;
  v35 = v6;

  outlined init with copy of BigString(v36, v19);
  BigString.UnicodeScalarView.subscript.getter();

  outlined destroy of BigString(v36);
  outlined destroy of BigSubstring.UnicodeScalarView(v19);
  result = v20;
  v14 = v21;
  v15 = v22;
  v16 = v23;
  *a2 = a1;
  *(a2 + 8) = result;
  *(a2 + 24) = v14;
  *(a2 + 40) = v15;
  *(a2 + 56) = v16;
  *(a2 + 72) = 0;
  return result;
}

uint64_t specialized Rope.extract<A>(from:to:in:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    *v14 = MEMORY[0x1E69E7CC0];
    memset(&v14[8], 0, 72);
    v15 = MEMORY[0x1E69E7CC0];
    if ((result & 0x8000000000000000) == 0 && a2 >= result && a5 >= a2)
    {
      if (result != a2)
      {
        v6 = result;
        v8 = *(a3 + 18);
        swift_unknownObjectRetain();
        v9 = (a3 + 16);
        v10 = (a3 + 24);
        if (v8)
        {
          specialized closure #2 in Rope._Node.extract<A>(from:to:in:into:)(v9, v10, v6, a2, v14);
        }

        else
        {
          specialized closure #1 in Rope._Node.extract<A>(from:to:in:into:)(v9, v10, v6, a2, v14);
        }

        swift_unknownObjectRelease();
      }

      v11 = specialized Rope.Builder.finalize()();
      v12[2] = *&v14[32];
      v12[3] = *&v14[48];
      v12[4] = *&v14[64];
      v13 = v15;
      v12[0] = *v14;
      v12[1] = *&v14[16];
      outlined destroy of TermOfAddress?(v12, &_s19CollectionsInternal4RopeV7BuilderVy10Foundation16AttributedStringV01_B3RunV_GMd);
      return v11;
    }

    __break(1u);
  }

  else if (!(a2 | result))
  {
    *v14 = 0;
    MEMORY[0x1865D26B0](v14, 8);
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t specialized closure #1 in Rope._Node.extract<A>(from:to:in:into:)(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = *result;
  v7 = a3;
  if (*result)
  {
    v8 = 0;
    v9 = a2;
    v10 = a3;
    do
    {
      v11 = *v9;
      v9 += 3;
      v7 = v10 - v11;
      if (__OFSUB__(v10, v11))
      {
        goto LABEL_72;
      }

      if (__OFADD__(v7, 1))
      {
        goto LABEL_73;
      }

      if (v7 + 1 < 1)
      {
        goto LABEL_9;
      }

      ++v8;
      v10 = v7;
    }

    while (v6 != v8);
  }

  if (v7)
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v10 = 0;
  v8 = *result;
LABEL_9:
  v12 = a4 - a3;
  if (__OFSUB__(a4, a3))
  {
    goto LABEL_78;
  }

  v13 = v10 + v12;
  if (__OFADD__(v10, v12))
  {
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  if (v8 >= v6)
  {
    v15 = v8;
  }

  else
  {
    v14 = &a2[3 * v8];
    v15 = v8;
    while (1)
    {
      v17 = *v14;
      v14 += 3;
      v16 = v17;
      if (v17 >= v13)
      {
        break;
      }

      v18 = __OFSUB__(v13, v16);
      v13 -= v16;
      if (v18)
      {
        goto LABEL_74;
      }

      if (v6 == ++v15)
      {
        v15 = *result;
        break;
      }
    }
  }

  v19 = &a2[3 * v8];
  v20 = *v19;
  result = v19[1];
  v21 = v19[2];
  if (v8 != v15)
  {
    if (v10 < 0)
    {
      goto LABEL_82;
    }

    v28 = v20 - v10;
    if (v20 < v10)
    {
      goto LABEL_82;
    }

    if (v20 == v10)
    {

      v29 = v8 + 1;
      if (!__OFADD__(v8, 1))
      {
        goto LABEL_38;
      }
    }

    else
    {
      v30 = a5[4];
      v31 = a5[5];
      v32 = a5[6];
      a5[5] = 0;
      a5[6] = 0;
      a5[4] = 0;
      if (v31)
      {
        v33 = result;
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        specialized Rope.Builder._appendNow(_:)(v30, v31, v32);
        result = outlined consume of Rope<AttributedString._InternalRun>._Item?(a5[4], a5[5]);
        a5[4] = v28;
        a5[5] = v33;
        a5[6] = v21;
        v29 = v8 + 1;
        if (!__OFADD__(v8, 1))
        {
LABEL_38:
          if (v15 < v29)
          {
LABEL_84:
            __break(1u);
LABEL_85:
            __break(1u);
            goto LABEL_86;
          }

          if (v29 != v15)
          {
            if (v29 < v15)
            {
              v40 = ~v8 + v15;
              v41 = &a2[3 * v8 + 5];
              while (1)
              {
                v42 = *(v41 - 2);
                if (v42)
                {
                  v43 = *(v41 - 1);
                  v44 = *v41;
                  v45 = a5[4];
                  v46 = *(a5 + 5);
                  v47 = a5[5];
                  a5[4] = 0;
                  a5[5] = 0;
                  a5[6] = 0;
                  if (v47)
                  {
                    v62 = v45;
                    v63 = v46;
                    v64 = v44;
                    v49 = a5[1];
                    v48 = a5[2];
                    v50 = a5[3];
                    a5[1] = 0;
                    a5[2] = 0;
                    a5[3] = 0;
                    if (!v49)
                    {
                      v51 = v43;
                      __swift_instantiateConcreteTypeFromMangledNameV2(&_s19CollectionsInternal4RopeV8_StorageCy10Foundation16AttributedStringV01_B3RunV_AC5_ItemVyAJ_GGMd);
                      v49 = swift_allocObject();
                      v43 = v51;
                      v50 = 0;
                      v48 = 0;
                      *(v49 + 16) = 0;
                      *(v49 + 18) = 0;
                    }

                    v61 = v43;

                    result = swift_isUniquelyReferenced_nonNull();
                    if ((result & 1) == 0)
                    {
                      v52 = specialized Rope._Node.copy()(v49);
                      v48 = v53;
                      v50 = v54;
                      result = swift_unknownObjectRelease();
                      v49 = v52;
                    }

                    v18 = __OFADD__(v48, 1);
                    v55 = v48 + 1;
                    if (v18)
                    {
                      goto LABEL_75;
                    }

                    v18 = __OFADD__(v50, v62);
                    v56 = v50 + v62;
                    if (v18)
                    {
                      goto LABEL_76;
                    }

                    v57 = *(v49 + 16);
                    v58 = v49 + 24 * *(v49 + 16);
                    *(v58 + 24) = v62;
                    *(v58 + 32) = v63;
                    if (v57 == 0xFFFF)
                    {
                      goto LABEL_77;
                    }

                    v59 = v57 + 1;
                    *(v49 + 16) = v59;
                    if (v59 == 15)
                    {
                      specialized Rope.Builder._appendNow(_:)(v49, v55, v56);
                    }

                    else
                    {
                      swift_unknownObjectRelease();
                      a5[1] = v49;
                      a5[2] = v55;
                      a5[3] = v56;
                    }

                    result = outlined consume of Rope<AttributedString._InternalRun>._Item?(a5[4], a5[5]);
                    a5[4] = v42;
                    a5[5] = v61;
                    a5[6] = v64;
                  }

                  else
                  {
                    a5[4] = v42;
                    a5[5] = v43;
                    a5[6] = v44;
                  }
                }

                v41 += 3;
                if (!--v40)
                {
                  goto LABEL_40;
                }
              }
            }

            goto LABEL_87;
          }

LABEL_40:
          if (v13 < 0 || (v34 = &a2[3 * v15], *v34 < v13))
          {
LABEL_86:
            __break(1u);
LABEL_87:
            __break(1u);
            return result;
          }

          if (v13)
          {
            v36 = v34[1];
            v35 = v34[2];
            v37 = a5[4];
            v38 = a5[5];
            v39 = a5[6];
            a5[5] = 0;
            a5[6] = 0;
            a5[4] = 0;
            if (v38)
            {

              specialized Rope.Builder._appendNow(_:)(v37, v38, v39);
              outlined consume of Rope<AttributedString._InternalRun>._Item?(a5[4], a5[5]);
              a5[4] = v13;
              a5[5] = v36;
              a5[6] = v35;
            }

            else
            {
              a5[4] = v13;
              a5[5] = v36;
              a5[6] = v35;
            }
          }
        }
      }

      else
      {
        a5[4] = v28;
        a5[5] = result;
        a5[6] = v21;
        swift_bridgeObjectRetain_n();
        result = swift_bridgeObjectRetain_n();
        v29 = v8 + 1;
        if (!__OFADD__(v8, 1))
        {
          goto LABEL_38;
        }
      }
    }

    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  if (__OFSUB__(v20, v10))
  {
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  v18 = __OFSUB__(v13, v10);
  v22 = v13 - v10;
  if (v18)
  {
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  if ((v22 | v10) < 0)
  {
    goto LABEL_85;
  }

  if (v20 < v10 || v20 - v10 < v22)
  {
    goto LABEL_85;
  }

  if (v22)
  {
    v24 = a5[4];
    v25 = a5[5];
    v26 = a5[6];
    a5[5] = 0;
    a5[6] = 0;
    a5[4] = 0;
    if (v25)
    {
      v27 = result;

      specialized Rope.Builder._appendNow(_:)(v24, v25, v26);
      result = outlined consume of Rope<AttributedString._InternalRun>._Item?(a5[4], a5[5]);
      a5[4] = v22;
      a5[5] = v27;
      a5[6] = v21;
    }

    else
    {
      a5[4] = v22;
      a5[5] = result;
      a5[6] = v21;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttributedString.UnicodeScalarView and conformance AttributedString.UnicodeScalarView()
{
  result = lazy protocol witness table cache variable for type AttributedString.UnicodeScalarView and conformance AttributedString.UnicodeScalarView;
  if (!lazy protocol witness table cache variable for type AttributedString.UnicodeScalarView and conformance AttributedString.UnicodeScalarView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributedString.UnicodeScalarView and conformance AttributedString.UnicodeScalarView);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributedString.UnicodeScalarView and conformance AttributedString.UnicodeScalarView;
  if (!lazy protocol witness table cache variable for type AttributedString.UnicodeScalarView and conformance AttributedString.UnicodeScalarView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributedString.UnicodeScalarView and conformance AttributedString.UnicodeScalarView);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributedString.UnicodeScalarView and conformance AttributedString.UnicodeScalarView;
  if (!lazy protocol witness table cache variable for type AttributedString.UnicodeScalarView and conformance AttributedString.UnicodeScalarView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributedString.UnicodeScalarView and conformance AttributedString.UnicodeScalarView);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributedString.UnicodeScalarView and conformance AttributedString.UnicodeScalarView;
  if (!lazy protocol witness table cache variable for type AttributedString.UnicodeScalarView and conformance AttributedString.UnicodeScalarView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributedString.UnicodeScalarView and conformance AttributedString.UnicodeScalarView);
  }

  return result;
}

uint64_t SortDescriptor.init<A>(_:order:)@<X0>(char a1@<W1>, uint64_t a2@<X8>)
{
  v3 = a1 & 1;
  *a2 = a1 & 1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = type metadata accessor for ComparableComparator();
  *(a2 + 48) = v4;
  *(a2 + 56) = swift_getWitnessTable();
  *(a2 + 24) = v3;
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  WitnessTable = swift_getWitnessTable();
  *(v5 + 24) = WitnessTable;
  *(a2 + 64) = partial apply for closure #1 in AnySortComparator.init<A>(_:);
  *(a2 + 72) = v5;
  v7 = swift_allocObject();
  *(v7 + 16) = v4;
  *(v7 + 24) = WitnessTable;
  v8 = swift_allocObject();
  *(v8 + 16) = partial apply for closure #2 in AnySortComparator.init<A>(_:);
  *(v8 + 24) = v7;
  *(a2 + 80) = _sSH_s8Sendablep10Foundation9SortOrderOs11AnyHashableVIeghlyr_SH_sAApADSH_sAApIeghlyr_TRTA_0;
  *(a2 + 88) = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = v4;
  *(v9 + 24) = WitnessTable;
  *(a2 + 96) = partial apply for closure #3 in AnySortComparator.init<A>(_:);
  *(a2 + 104) = v9;
  type metadata accessor for KeyPath();
  result = swift_dynamicCast();
  *(a2 + 112) = v11;
  *(a2 + 120) = 2;
  return result;
}

{

  v4 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  v6 = v5;

  if (v6)
  {

    *(a2 + 8) = v4;
    *(a2 + 16) = v6;
    *a2 = a1 & 1;
    *(a2 + 24) = 0u;
    *(a2 + 40) = 0u;
    *(a2 + 56) = 0u;
    *(a2 + 72) = 0u;
    *(a2 + 88) = 0u;
    *(a2 + 104) = 0u;
    *(a2 + 120) = 4;
  }

  else
  {
    _StringGuts.grow(_:)(111);
    swift_getMetatypeMetadata();
    v8 = String.init<A>(describing:)();
    MEMORY[0x1865CB0E0](v8);

    MEMORY[0x1865CB0E0](0xD00000000000006DLL, 0x8000000181480090);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

{
  v3 = a1 & 1;
  *a2 = a1 & 1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  type metadata accessor for ComparableComparator();
  swift_getWitnessTable();
  v4 = type metadata accessor for OptionalComparator();
  *(a2 + 48) = v4;
  *(a2 + 56) = swift_getWitnessTable();
  *(a2 + 24) = v3;
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  WitnessTable = swift_getWitnessTable();
  *(v5 + 24) = WitnessTable;
  *(a2 + 64) = closure #1 in AnySortComparator.init<A>(_:)partial apply;
  *(a2 + 72) = v5;
  v7 = swift_allocObject();
  *(v7 + 16) = v4;
  *(v7 + 24) = WitnessTable;
  v8 = swift_allocObject();
  *(v8 + 16) = closure #2 in AnySortComparator.init<A>(_:)partial apply;
  *(v8 + 24) = v7;
  *(a2 + 80) = thunk for @escaping @callee_guaranteed @Sendable (@inout Hashable & Sendable, @unowned SortOrder) -> (@out AnyHashable)partial apply;
  *(a2 + 88) = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = v4;
  *(v9 + 24) = WitnessTable;
  *(a2 + 96) = closure #3 in AnySortComparator.init<A>(_:)partial apply;
  *(a2 + 104) = v9;
  type metadata accessor for KeyPath();
  result = swift_dynamicCast();
  *(a2 + 112) = v11;
  *(a2 + 120) = 2;
  return result;
}

uint64_t sub_180996EA0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t get_enum_tag_for_layout_string_10Foundation14SortDescriptorV17AllowedComparisonOyx_G(uint64_t a1)
{
  if ((*(a1 + 96) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 96) & 7;
  }
}

uint64_t SortDescriptor.keyPath.getter()
{
  v1 = type metadata accessor for SortDescriptor.AllowedComparison();
  (*(*(v1 - 8) + 16))(v4, v0 + 24, v1);
  if (v7 > 2u)
  {
    return 0;
  }

  if (!v7 || v7 == 1)
  {
    return v5;
  }

  v3 = v6;
  outlined destroy of AnySortComparator(v4);
  return v3;
}

uint64_t type metadata instantiation function for SortDescriptor()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(uint64_t result, uint64_t a2, void *a3, uint64_t *a4)
{
  v4 = result;
  v5 = a3[2];
  if (!v5)
  {
    result = 0;
    v7 = __OFSUB__(a2, v4);
    v9 = a2 - v4;
    if (!v7)
    {
      goto LABEL_4;
    }

    goto LABEL_12;
  }

  v6 = a3[5];
  v7 = __OFSUB__(result, v6);
  v8 = result - v6;
  if (v7)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  result = v8 + v5;
  v7 = __OFSUB__(a2, v4);
  v9 = a2 - v4;
  if (v7)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

LABEL_4:
  if (a3[3] < v9)
  {
    v9 = a3[3];
  }

  v10 = v9 + result;
  if (result)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return closure #1 in Data.customMirror.getter(result, v11, a4);
}

uint64_t type metadata instantiation function for SortDescriptor.AllowedComparison()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata instantiation function for ComparableComparator()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t instantiation function for generic protocol witness table for ComparableComparator<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for <> PredicateExpressions.KeyPath<A, B>(void *a1)
{
  a1[1] = swift_getWitnessTable();
  a1[2] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a1[3] = result;
  return result;
}

uint64_t Date.customMirror.getter()
{
  v1 = type metadata accessor for Mirror.AncestorRepresentation();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSSg5label_yp5valuetGMd);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_181218E20;
  *(v9 + 32) = 0xD00000000000001ELL;
  *(v9 + 40) = 0x8000000181487740;
  *(v9 + 72) = MEMORY[0x1E69E63B0];
  *(v9 + 48) = v8;
  v14[1] = v8;
  v14[0] = v9;
  v10 = *MEMORY[0x1E69E75B8];
  v11 = type metadata accessor for Mirror.DisplayStyle();
  v12 = *(v11 - 8);
  (*(v12 + 104))(v7, v10, v11);
  (*(v12 + 56))(v7, 0, 1, v11);
  (*(v2 + 104))(v4, *MEMORY[0x1E69E75D8], v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSSg5label_yp5valuetGMd);
  lazy protocol witness table accessor for type [(label: String?, value: Any)] and conformance [A]();
  return Mirror.init<A, B>(_:children:displayStyle:ancestorRepresentation:)();
}

void Data.customMirror.getter(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Mirror.AncestorRepresentation();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v39 - v11;
  v13 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v13)
    {
      v14 = BYTE6(a2);
      goto LABEL_10;
    }

LABEL_8:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      return;
    }

    v14 = HIDWORD(a1) - a1;
    goto LABEL_10;
  }

  v14 = 0;
  if (v13 == 2)
  {
    v16 = *(a1 + 16);
    v15 = *(a1 + 24);
    v14 = v15 - v16;
    if (__OFSUB__(v15, v16))
    {
      __break(1u);
      goto LABEL_8;
    }
  }

LABEL_10:
  v39[0] = a3;
  v44 = MEMORY[0x1E69E6530];
  *&v43 = v14;
  v40 = xmmword_181234420;
  outlined init with take of Any(&v43, &v41);
  v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v19 = v17[2];
  v18 = v17[3];
  v20 = v19 + 1;
  if (v19 >= v18 >> 1)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v17[2] = v20;
    v21 = &v17[6 * v19];
    v22 = v40;
    v23 = v42;
    v21[3] = v41;
    v21[4] = v23;
    v21[2] = v22;
    v45 = v17;
    v20 = 0;
    specialized Data._Representation.withUnsafeBytes<A>(_:)(a1, a2, &v45);
    if (v14 >= 64)
    {
      v26 = v45;
      goto LABEL_34;
    }

    if (v13 <= 1)
    {
      break;
    }

    if (v13 == 2)
    {
      v24 = *(a1 + 16);
      v18 = v14 + v24;
      if (__OFADD__(v14, v24))
      {
        goto LABEL_39;
      }

      v27 = *(a1 + 24);
      goto LABEL_25;
    }

    v24 = 0;
    v25 = v14 & (v14 >> 63);
    if (v25 >= 0)
    {
      goto LABEL_29;
    }

LABEL_36:
    __break(1u);
LABEL_37:
    v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v20, 1, v17);
  }

  if (!v13)
  {
    v24 = 0;
    v18 = BYTE6(a2);
    if (BYTE6(a2) >= v14)
    {
      v25 = v14;
    }

    else
    {
      v25 = BYTE6(a2);
    }

    if (v25 >= 0)
    {
      goto LABEL_29;
    }

    goto LABEL_36;
  }

  v24 = a1;
  v18 = v14 + a1;
  if (__OFADD__(v14, a1))
  {
    goto LABEL_40;
  }

  v27 = a1 >> 32;
LABEL_25:
  if (v27 >= v18)
  {
    v25 = v18;
  }

  else
  {
    v25 = v27;
  }

  if (v25 < v24)
  {
    goto LABEL_36;
  }

LABEL_29:
  v28 = Data._Representation.subscript.getter(v24, v25, a1, a2);
  v30 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCs5UInt8V_10Foundation4DataVTt0g5(v28, v29);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd);
  *&v43 = v30;
  v40 = xmmword_181234430;
  outlined init with take of Any(&v43, &v41);
  v26 = v45;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v26[2] + 1, 1, v26);
  }

  v32 = v26[2];
  v31 = v26[3];
  if (v32 >= v31 >> 1)
  {
    v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1, v26);
  }

  v26[2] = v32 + 1;
  v33 = &v26[6 * v32];
  v34 = v40;
  v35 = v42;
  v33[3] = v41;
  v33[4] = v35;
  v33[2] = v34;
  v45 = v26;
LABEL_34:
  *&v40 = a1;
  *(&v40 + 1) = a2;
  *&v43 = v26;
  v36 = *MEMORY[0x1E69E75B8];
  v37 = type metadata accessor for Mirror.DisplayStyle();
  v38 = *(v37 - 8);
  (*(v38 + 104))(v12, v36, v37);
  (*(v38 + 56))(v12, 0, 1, v37);
  (*(v7 + 104))(v9, *MEMORY[0x1E69E75D8], v6);
  outlined copy of Data._Representation(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSSg5label_yp5valuetGMd);
  lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type [(label: String?, value: Any)] and conformance [A], &_sSaySSSg5label_yp5valuetGMd);
  Mirror.init<A, B>(_:children:displayStyle:ancestorRepresentation:)();
}

uint64_t specialized Data._Representation.withUnsafeBytes<A>(_:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v8[2] = *MEMORY[0x1E69E9840];
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 != 2)
    {
      memset(v8, 0, 14);
      v4 = v8;
      return closure #1 in Data.customMirror.getter(v8, v4, a3);
    }

    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v5, v6, (a2 & 0x3FFFFFFFFFFFFFFFLL), a3);
  }

  if (v3)
  {
    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v5, v6, (a2 & 0x3FFFFFFFFFFFFFFFLL), a3);
  }

  v8[0] = a1;
  LOWORD(v8[1]) = a2;
  BYTE2(v8[1]) = BYTE2(a2);
  BYTE3(v8[1]) = BYTE3(a2);
  BYTE4(v8[1]) = BYTE4(a2);
  BYTE5(v8[1]) = BYTE5(a2);
  v4 = v8 + BYTE6(a2);
  return closure #1 in Data.customMirror.getter(v8, v4, a3);
}

uint64_t SortDescriptor.stringComparator.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for SortDescriptor.AllowedComparison();
  v4 = *(v3 - 8);
  result = (*(v4 + 16))(&v12, v1 + 24, v3);
  if (v15 == 3)
  {
    v6 = v12;
    if (v14)
    {
      v11 = 256;
    }

    else
    {
      v11 = 0;
    }

    v10 = v11 | v13;
  }

  else if (v15 > 1u)
  {
    result = (*(v4 + 8))(&v12, v3);
    v6 = 0;
    v10 = 2;
  }

  else
  {
    v6 = v12;
    v7 = v13;
    v8 = v14;

    if (v8)
    {
      v9 = 256;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9 | v7;
  }

  if (v10 != 2)
  {
    v10 = v10;
  }

  *a1 = v6;
  *(a1 + 8) = v10;
  return result;
}

uint64_t getEnumTagSinglePayload for String.StandardComparator(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 10))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t closure #1 in Data.customMirror.getter(uint64_t result, uint64_t a2, uint64_t *a3)
{
  if (result)
  {
    v11 = MEMORY[0x1E69E6270];
    *&v10 = result;
    outlined init with take of Any(&v10, v9);
    v4 = *a3;
    result = swift_isUniquelyReferenced_nonNull_native();
    *a3 = v4;
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4[2] + 1, 1, v4);
      v4 = result;
      *a3 = result;
    }

    v6 = v4[2];
    v5 = v4[3];
    if (v6 >= v5 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v6 + 1, 1, v4);
      v4 = result;
      *a3 = result;
    }

    v4[2] = v6 + 1;
    v7 = &v4[6 * v6];
    v8 = v9[1];
    v7[3] = v9[0];
    v7[4] = v8;
    v7[2] = xmmword_181234440;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *specialized closure #1 in JSONMap.withBuffer<A>(for:perform:)@<X0>(void *result@<X0>, void *(*a2)(uint64_t *__return_ptr, uint64_t, uint64_t, void, uint64_t)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, _BYTE *a5@<X8>)
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

void *partial apply for specialized closure #1 in JSONMap.withBuffer<A>(for:perform:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  return specialized closure #1 in JSONMap.withBuffer<A>(for:perform:)(a1, *(v2 + 16), *(v2 + 32), *(v2 + 40), a2);
}

{
  return partial apply for specialized closure #1 in JSONMap.withBuffer<A>(for:perform:)(a1, a2);
}

uint64_t closure #1 in XMLPlistMap.detectUID(dictionaryReferenceCount:objectOffset:)@<X0>(uint64_t result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result == 1428440643 && *(result + 4) == 17481;
  *a2 = v3;
  return result;
}

char **IndexSet.formIndex(before:)(char **result)
{
  v4 = *result;
  v5 = result[1];
  if (*result != v5)
  {
    goto LABEL_11;
  }

  v6 = result[3];
  if (!v6)
  {
    return result;
  }

  v7 = v6 - 1;
  if (__OFSUB__(v6, 1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v8 = *v3;
  v2 = result;
  result[3] = v7;
  v9 = *(v8 + 24);
  result = [*(v8 + 16) rangeAtIndex_];
  v4 = result;
  v5 = result + v10;
  v1 = __OFADD__(result, v10);
  if ((v9 & 1) == 0)
  {
    goto LABEL_14;
  }

  if (v1)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  result = v2;
  if (v5 < v4)
  {
    __break(1u);
LABEL_11:
    if (!__OFSUB__(v4--, 1))
    {
      goto LABEL_17;
    }

    __break(1u);
LABEL_14:
    if (v1)
    {
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    result = v2;
    if (v5 < v4)
    {
LABEL_23:
      __break(1u);
      return result;
    }
  }

  result[1] = v4;
  result[2] = v5;
  v4 = v5 - 1;
  if (__OFSUB__(v5, 1))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_17:
  *result = v4;
  return result;
}

uint64_t IndexSet.init(integer:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [objc_allocWithZone(NSIndexSet) initWithIndex_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation18_MutablePairHandle33_2D7761BAEB66DCEF0A109CF42C1440A7LLCySo10NSIndexSetCSo014NSMutableIndexM0CGMd);
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 24) = 0;
  *a2 = result;
  return result;
}

void updateDateTemplate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_alloc_init(NSDateFormatter);
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  v10 = v6;
  if (!v7)
  {
    v7 = [MEMORY[0x1E695DF58] currentLocale];
    v6 = v10;
  }

  [(NSDateFormatter *)v6 setLocale:v7];
  if (!v8)
  {
    v8 = [v7 objectForKey:*MEMORY[0x1E695D958]];
  }

  [(NSDateFormatter *)v10 setCalendar:v8];
  [(NSDateFormatter *)v10 setDateStyle:a2];
  [(NSDateFormatter *)v10 setTimeStyle:a3];
  v9 = [(NSDateFormatter *)v10 dateFormat];

  *(a1 + 40) = v9;
}

uint64_t __NSFirePerformWithOrder(void *a1, uint64_t a2, uint64_t a3)
{
  v19 = *(a3 + 8);
  v20 = *a3;
  v4 = *(a3 + 24);
  v18 = *(a3 + 16);
  v6 = *(a3 + 32);
  v5 = *(a3 + 40);
  _CFAutoreleasePoolPush();
  CFRetain(a1);
  objc_sync_enter(v5);
  v7 = [v5 _perft];
  v22.length = [v7 count];
  v22.location = 0;
  FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v7, v22, v6);
  if (FirstIndexOfValue << 32 != 0xFFFFFFFF00000000)
  {
    CFArrayRemoveValueAtIndex(v7, FirstIndexOfValue);
  }

  v9 = [v4 count];
  v10 = *MEMORY[0x1E695DA28];
  v11 = *MEMORY[0x1E695E8D0];
  for (i = v9 - 1; i != -1; --i)
  {
    v13 = [v4 objectAtIndex:i];
    v14 = v13;
    v15 = v11;
    if (v13 != v10)
    {
      if ([(__CFString *)v13 isEqual:@"kCFRunLoopCommonModes"])
      {
        v15 = v11;
      }

      else
      {
        v15 = v14;
      }
    }

    Current = CFRunLoopGetCurrent();
    CFRunLoopRemoveObserver(Current, a1, v15);
  }

  objc_sync_exit(v5);
  [v20 v19];
  CFRelease(a1);

  return _CFAutoreleasePoolPop();
}

uint64_t __performOrderedCleanup(id *a1)
{
  _CFAutoreleasePoolPush();

  free(a1);

  return _CFAutoreleasePoolPop();
}

uint64_t _NSSwiftCalendar.nextDate(after:matching:options:)@<X0>(double *a1@<X0>, const void *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  memcpy(__dst, a2, sizeof(__dst));
  if ((a3 & 2) != 0)
  {
    v9 = 3;
  }

  else
  {
    v9 = 0;
  }

  if ((a3 & 0x100) != 0)
  {
    v10 = 2;
  }

  else
  {
    v10 = v9;
  }

  if ((a3 & 0x200) != 0)
  {
    v11 = 1;
  }

  else
  {
    v11 = v10;
  }

  if ((a3 & 0x400) != 0)
  {
    v12 = 0;
  }

  else
  {
    v12 = v11;
  }

  v13 = (a3 & 0x3000) == 0x2000;
  v14 = *(v4 + OBJC_IVAR____NSSwiftCalendar__lock);
  os_unfair_lock_lock((v14 + 32));
  v15 = *(v14 + 16);
  v16 = *(v14 + 24);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v14 + 32));
  memcpy(v34, a2, 0x11BuLL);
  v31 = v15;
  v32 = v16;
  if (!DateComponents._validate(for:)(&v31))
  {
    goto LABEL_18;
  }

  if (one-time initialization token for validCalendarRange != -1)
  {
    swift_once();
  }

  if (v8 >= *&static Date.validCalendarRange && *(&static Date.validCalendarRange + 1) >= v8)
  {
    v20 = (a3 >> 2) & 1;
    v21 = 101;
    v22 = v8;
    while (1)
    {
      v25[0] = v15;
      v25[1] = v16;
      v30 = *&v8;
      memcpy(v34, a2, 0x11BuLL);
      v29 = v12;
      v28 = v13;
      v27 = v20;
      v26 = v22;
      v23 = 0;
      LOBYTE(v24) = 1;
      Calendar._enumerateDatesStep(startingAfter:matching:matchingPolicy:repeatedTimePolicy:direction:inSearchingDate:previouslyReturnedMatchDate:)(&v30, v34, &v29, &v28, &v27, &v26, &v23, &v31);
      if (v32 != 2)
      {
        break;
      }

      v22 = v33;
      if (!--v21)
      {
        *v25 = v8;
        v31 = v15;
        v32 = v16;
        memcpy(v34, a2, 0x11BuLL);
        LOBYTE(v23) = v20;
        LOBYTE(v30) = v12;
        LOBYTE(v26) = v13;
        _handleCalendarResultNotFound(date:calendar:comps:direction:matchingPolicy:repeatedTimePolicy:)(v25, &v31, v34, &v23, &v30, &v26);
        result = swift_unknownObjectRelease();
        v18 = 0;
        v19 = 1;
        goto LABEL_19;
      }
    }

    v18 = v31;
    result = swift_unknownObjectRelease();
    v19 = 0;
  }

  else
  {
LABEL_18:
    result = swift_unknownObjectRelease();
    v18 = 0;
    v19 = 1;
  }

LABEL_19:
  *a4 = v18;
  *(a4 + 8) = v19;
  return result;
}

Swift::Int __swiftcall _CalendarGregorian.wrapAroundRelativeWeekday(_:)(Swift::Int result)
{
  if (*(v1 + 136) != 1)
  {
    v11 = *(v1 + 128);
    v9 = __OFSUB__(result, v11);
    v10 = result - v11;
    if (!v9)
    {
      goto LABEL_9;
    }

    goto LABEL_15;
  }

  if (*(v1 + 96))
  {
    v2 = result;
    v3 = *(v1 + 104);
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 328);
    swift_unknownObjectRetain();
    v5(&v13, ObjectType, v3);
    result = specialized Collection<>.firstIndex(of:)(v13, outlined read-only object #0 of one-time initialization function for weekdays);
    if (v6)
    {
LABEL_17:
      __break(1u);
      return result;
    }

    v7 = result;
    result = swift_unknownObjectRelease();
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    result = v2;
    v9 = __OFSUB__(v2, v8);
    v10 = v2 - v8;
    if (!v9)
    {
      goto LABEL_9;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = result - 1;
  if (__OFSUB__(result, 1))
  {
    goto LABEL_15;
  }

LABEL_9:
  v12 = v10 % 7;
  if (v12 >= 0)
  {
    return v12;
  }

  else
  {
    return v12 + 7;
  }
}

uint64_t _CreateComponent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[3] = *MEMORY[0x1E69E9840];
  v9[0] = a1;
  v6 = *MEMORY[0x1E695D900];
  v8[0] = *MEMORY[0x1E695D910];
  v8[1] = v6;
  v9[1] = [NSNumber numberWithBool:a4];
  v8[2] = *MEMORY[0x1E695D908];
  v9[2] = [NSValue valueWithRange:a2, a3];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:3];
}

unint64_t protocol witness for _LocaleProtocol.languageCodeDisplayName(for:) in conformance _LocaleICU()
{
  v1 = *(v0 + 200);
  os_unfair_lock_lock(v1 + 134);
  partial apply for closure #1 in _LocaleICU.languageCodeDisplayName(for:)(&v1[4], &v3);
  os_unfair_lock_unlock(v1 + 134);
  return v3;
}

uint64_t closure #1 in _LocaleICU.languageCodeDisplayName(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t *a5@<X8>)
{
  v8 = a2;
  *&v119[514] = *MEMORY[0x1E69E9840];
  v103 = a1;
  v10 = *(a1 + 448);
  if (*(v10 + 16))
  {
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if (v12)
    {
      *a5 = *(*(v10 + 56) + 16 * v11);
    }
  }

  v101 = a5;
  v113 = 0;
  v107 = a3;
  v14 = String.utf8CString.getter();
  v15 = String.utf8CString.getter();
  DisplayLanguage = uloc_getDisplayLanguage();

  v108 = v5;
  v106 = v8;
  if (DisplayLanguage - 1 <= 0x100)
  {
    v17 = specialized String.init(_utf16:)(v119, DisplayLanguage);
    if (v18)
    {
      v14 = v17;
      v15 = v18;
LABEL_97:

LABEL_99:
      v69 = v107;

      v70 = v103;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v117[0] = *(v70 + 448);
      v8 = *&v117[0];
      v24 = specialized __RawDictionaryStorage.find<A>(_:)(v106, v69);
      v73 = *(v8 + 16);
      v74 = (v72 & 1) == 0;
      v75 = __OFADD__(v73, v74);
      v76 = v73 + v74;
      if (v75)
      {
LABEL_110:
        __break(1u);
      }

      else
      {
        LOBYTE(a4) = v72;
        if (*(v8 + 24) < v76)
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v76, isUniquelyReferenced_nonNull_native);
          v77 = *&v117[0];
          v24 = specialized __RawDictionaryStorage.find<A>(_:)(v106, v107);
          if ((a4 & 1) != (v78 & 1))
          {
            goto LABEL_133;
          }

          if (a4)
          {
            goto LABEL_103;
          }

LABEL_106:
          result = specialized _NativeDictionary._insert(at:key:value:)(v24, v106, v107, v14, v15, v77);
          goto LABEL_107;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          v77 = v8;
          if ((v72 & 1) == 0)
          {
            goto LABEL_106;
          }

LABEL_103:
          v79 = v24;

          v80 = (*(v77 + 56) + 16 * v79);
          *v80 = v14;
          v80[1] = v15;

LABEL_107:
          *(v103 + 448) = v77;
          v81 = v101;
          *v101 = v14;
          v81[1] = v15;
          return result;
        }
      }

      v105 = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SSgGMd);
      v82 = static _DictionaryStorage.copy(original:)();
      v77 = v82;
      if (*(v8 + 16))
      {
        v83 = (v82 + 64);
        v84 = ((1 << *(v77 + 32)) + 63) >> 6;
        if (v77 != v8 || v83 >= v8 + 64 + 8 * v84)
        {
          memmove(v83, (v8 + 64), 8 * v84);
        }

        v104 = (v8 + 64);
        v85 = 0;
        *(v77 + 16) = *(v8 + 16);
        v86 = 1 << *(v8 + 32);
        v87 = *(v8 + 64);
        v88 = -1;
        if (v86 < 64)
        {
          v88 = ~(-1 << v86);
        }

        v89 = v88 & v87;
        v90 = (v86 + 63) >> 6;
        if ((v88 & v87) != 0)
        {
          do
          {
            v91 = __clz(__rbit64(v89));
            v89 &= v89 - 1;
LABEL_124:
            v94 = 16 * (v91 | (v85 << 6));
            v95 = (*(v8 + 48) + v94);
            v96 = *v95;
            v97 = v95[1];
            v98 = (*(v77 + 48) + v94);
            v99 = *(*(v8 + 56) + v94);
            *v98 = v96;
            v98[1] = v97;
            *(*(v77 + 56) + v94) = v99;
          }

          while (v89);
        }

        v92 = v85;
        while (1)
        {
          v85 = v92 + 1;
          if (__OFADD__(v92, 1))
          {
            __break(1u);
          }

          if (v85 >= v90)
          {
            break;
          }

          v93 = *(v104 + v85);
          ++v92;
          if (v93)
          {
            v91 = __clz(__rbit64(v93));
            v89 = (v93 - 1) & v93;
            goto LABEL_124;
          }
        }
      }

      v24 = v105;
      if ((a4 & 1) == 0)
      {
        goto LABEL_106;
      }

      goto LABEL_103;
    }
  }

  v19 = *(a4 + 136);
  v20 = *(a4 + 168);
  v117[6] = *(a4 + 152);
  *v118 = v20;
  *&v118[12] = *(a4 + 180);
  v21 = *(a4 + 72);
  v22 = *(a4 + 104);
  v117[2] = *(a4 + 88);
  v117[3] = v22;
  v117[4] = *(a4 + 120);
  v117[5] = v19;
  v117[0] = *(a4 + 56);
  v117[1] = v21;
  if (_s10Foundation17LocalePreferencesVSgWOg(v117) != 1)
  {
    v23 = *(&v117[0] + 1);
    if (*(&v117[0] + 1))
    {

      v25 = *(v23 + 16);
      if (!v25)
      {
LABEL_98:

        v14 = 0;
        v15 = 0;
        goto LABEL_99;
      }

      goto LABEL_51;
    }
  }

  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v15 = String._bridgeToObjectiveCImpl()();
  v26 = CFPreferencesCopyAppValue(v15, *MEMORY[0x1E695E8A8]);
  v24 = swift_unknownObjectRelease();
  if (v26 && (v115 = v26, __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd), v24 = swift_dynamicCast(), (v24 & 1) != 0))
  {
    v27 = v109;
  }

  else
  {
    v27 = MEMORY[0x1E69E7CC0];
  }

  v105 = *(v27 + 16);
  if (!v105)
  {
    v23 = MEMORY[0x1E69E7CC0];
LABEL_50:

    v25 = *(v23 + 16);
    if (!v25)
    {
      goto LABEL_98;
    }

LABEL_51:
    v46 = 0;
    v105 = *MEMORY[0x1E695E4A8];
    v47 = v23 + 40;
    while (1)
    {
      if (v46 >= *(v23 + 16))
      {
        goto LABEL_109;
      }

      v48 = String._bridgeToObjectiveCImpl()();
      CanonicalLanguageIdentifierFromString = CFLocaleCreateCanonicalLanguageIdentifierFromString(v105, v48);
      swift_unknownObjectRelease();
      if (!CanonicalLanguageIdentifierFromString)
      {
        goto LABEL_68;
      }

      isTaggedPointer = _objc_isTaggedPointer(CanonicalLanguageIdentifierFromString);
      v51 = CanonicalLanguageIdentifierFromString;
      v52 = v51;
      if (!isTaggedPointer)
      {
        goto LABEL_60;
      }

      TaggedPointerTag = _objc_getTaggedPointerTag(v51);
      if (TaggedPointerTag)
      {
        if (TaggedPointerTag != 22)
        {
          if (TaggedPointerTag == 2)
          {
            MEMORY[0x1EEE9AC00](TaggedPointerTag);
            v54 = v108;
            String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
            v14 = v55;
            v108 = v54;

            goto LABEL_91;
          }

LABEL_60:
          LOBYTE(v109) = 0;
          v115 = 0;
          LOBYTE(v111) = 0;
          v112 = 0;
          IsCF = __CFStringIsCF();
          if (!IsCF)
          {
            v57 = v52;
            String.init(_nativeStorage:)();
            if (v58)
            {
              v14 = v58;

              goto LABEL_91;
            }

            v115 = [(__CFString *)v57 length];
            if (!v115)
            {

              goto LABEL_68;
            }

LABEL_88:
            String.init(_cocoaString:)();
LABEL_89:
            v14 = v61;
            goto LABEL_90;
          }

          if (!v115)
          {

LABEL_68:
            v14 = 0xE000000000000000;
            goto LABEL_91;
          }

          if (v112 == 1)
          {
            if (v109)
            {
              lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
            }

            else
            {
              lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
            }

            String.init<A>(_immortalCocoaString:count:encoding:)();
            goto LABEL_89;
          }

          if ((v111 & 1) == 0)
          {
            goto LABEL_88;
          }

          if (v109 != 1)
          {
            IsCF = [(__CFString *)v52 lengthOfBytesUsingEncoding:4];
          }

          MEMORY[0x1EEE9AC00](IsCF);
          v62 = v108;
          v63 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v14 = v64;
          v108 = v62;
          v65 = HIBYTE(v64) & 0xF;
          if ((v64 & 0x2000000000000000) == 0)
          {
            v65 = v63 & 0xFFFFFFFFFFFFLL;
          }

          if (!v65)
          {

            goto LABEL_88;
          }

          goto LABEL_74;
        }

        v59 = [(__CFString *)v52 UTF8String];
        if (!v59)
        {
          goto LABEL_131;
        }

        String.init(utf8String:)(v59);
        if (!v60)
        {
          goto LABEL_130;
        }
      }

      else
      {
        v111 = 0;
        _CFIndirectTaggedPointerStringGetContents();
        _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
        if (!v60)
        {
          [(__CFString *)v52 mutableCopy];
          _bridgeAnyObjectToAny(_:)();

          swift_unknownObjectRelease();
          swift_dynamicCast();
          v14 = v110;
          goto LABEL_90;
        }
      }

      v14 = v60;
LABEL_74:

LABEL_90:
LABEL_91:
      LODWORD(v109) = 0;
      v8 = String.utf8CString.getter();
      LOBYTE(a4) = String.utf8CString.getter();

      v15 = uloc_getDisplayLanguage();

      if (v109 <= 0 && v109 != -127 && (v15 - 1) < 0x101)
      {
        v14 = &v101;
        MEMORY[0x1EEE9AC00](v24);
        v67 = v108;
        v24 = closure #1 in String.init(_utf16:)(&v101 - v66, v114, v68, &v115);
        v108 = v67;
        if (v67)
        {
          goto LABEL_132;
        }

        v15 = v116;
        if (v116)
        {
          v14 = v115;

          goto LABEL_97;
        }
      }

      ++v46;
      v47 += 16;
      if (v25 == v46)
      {
        goto LABEL_98;
      }
    }
  }

  v28 = 0;
  v104 = *MEMORY[0x1E695E4A8];
  v29 = v27 + 40;
  v23 = MEMORY[0x1E69E7CC0];
  v102 = v27;
  while (1)
  {
    if (v28 >= *(v27 + 16))
    {
      __break(1u);
LABEL_109:
      __break(1u);
      goto LABEL_110;
    }

    v30 = String._bridgeToObjectiveCImpl()();

    v31 = CFLocaleCreateCanonicalLanguageIdentifierFromString(v104, v30);
    swift_unknownObjectRelease();
    if (!v31)
    {

      goto LABEL_29;
    }

    v32 = _objc_isTaggedPointer(v31);
    v33 = v31;
    v34 = v33;
    if (v32)
    {
      break;
    }

LABEL_26:
    LOBYTE(v109) = 0;
    v115 = 0;
    LOBYTE(v111) = 0;
    v112 = 0;
    if (!__CFStringIsCF())
    {
      v37 = v34;
      v38 = String.init(_nativeStorage:)();
      if (v39)
      {
        v8 = v38;
        a4 = v39;

        goto LABEL_41;
      }

      v115 = [(__CFString *)v37 length];
      if (!v115)
      {

        v8 = 0;
        a4 = 0xE000000000000000;
        goto LABEL_41;
      }

      v27 = v102;
      v8 = String.init(_cocoaString:)();
      a4 = v43;
LABEL_42:

      goto LABEL_43;
    }

LABEL_29:
    v8 = 0;
    a4 = 0xE000000000000000;
LABEL_43:
    v24 = swift_isUniquelyReferenced_nonNull_native();
    if ((v24 & 1) == 0)
    {
      v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v23 + 16) + 1, 1, v23);
      v23 = v24;
    }

    v14 = *(v23 + 16);
    v44 = *(v23 + 24);
    v15 = (v14 + 1);
    if (v14 >= v44 >> 1)
    {
      v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), v14 + 1, 1, v23);
      v23 = v24;
    }

    v28 = (v28 + 1);
    *(v23 + 16) = v15;
    v45 = v23 + 16 * v14;
    *(v45 + 32) = v8;
    *(v45 + 40) = a4;
    v29 += 16;
    if (v105 == v28)
    {
      goto LABEL_50;
    }
  }

  v35 = _objc_getTaggedPointerTag(v33);
  if (!v35)
  {
    v111 = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v41 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v42)
    {
      [(__CFString *)v34 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v8 = v109;
      a4 = v110;
      goto LABEL_42;
    }

    goto LABEL_36;
  }

  if (v35 != 22)
  {
    if (v35 == 2)
    {
      MEMORY[0x1EEE9AC00](v35);
      v8 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      a4 = v36;

LABEL_41:
      v27 = v102;
      goto LABEL_43;
    }

    goto LABEL_26;
  }

  v40 = [(__CFString *)v34 UTF8String];
  if (!v40)
  {
    goto LABEL_129;
  }

  v41 = String.init(utf8String:)(v40);
  if (v42)
  {
LABEL_36:
    v8 = v41;
    a4 = v42;

    goto LABEL_43;
  }

  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  v100 = v108;
  swift_willThrow();

  __break(1u);
LABEL_133:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t copyFromStringToStorage(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v21 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v8 = a3;
    v10 = result;
    do
    {
      v19 = 0;
      v20 = 0;
      ValueAtIndex = CFStorageGetValueAtIndex();
      v12 = v19 - a5 + v20;
      if (v12 >= v8)
      {
        v12 = v8;
      }

      v20 = v12;
      if (a6)
      {
        result = [v10 getCharacters:ValueAtIndex range:{a2, v12}];
        v13 = v20;
        v14 = v20;
      }

      else
      {
        v17 = 0;
        v18 = 0;
        v16 = 0;
        result = [v10 getBytes:ValueAtIndex maxLength:v12 usedLength:&v18 encoding:_NSCStringEncoding options:0 range:a2 remainingRange:{v12, &v16}];
        if ((result & 1) == 0)
        {
          v15 = [NSString stringWithFormat:@"Unable to convert bytes in string %p to _NSCStringEncoding", v10];
          objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:v15 userInfo:0]);
        }

        v13 = v18;
        v14 = v20 - v17;
      }

      a2 += v14;
      a5 += v13;
      v8 -= v14;
    }

    while (v8);
  }

  return result;
}

id URLRequest.allowsCellularAccess.setter(char a1, SEL *a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(*v2 + 16);
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

    *v2 = v7;
  }

  return [v6 *a2];
}

void _doPatternNormalization(const __CFString *a1, void **a2, unsigned __int8 *a3, int a4, CFStringRef *a5, CFStringCompareFlags a6, CFIndex *a7, size_t a8, CFStringNormalizationForm theForm)
{
  v10 = a7;
  v46 = a6;
  v13 = a3;
  v62 = *MEMORY[0x1E69E9840];
  v15 = *a2;
  v16 = *a3;
  v17 = *a7;
  bzero(*a2, a8);
  v63.location = 0;
  v63.length = v17;
  CFStringGetCharacters(a1, v63, v15);
  v18 = v46;
  v15[v17] = 0;
  *a5 = CFStringCreateWithCharacters(0, v15, v17);
  if (a4)
  {
    [_NSPredicateOperatorUtilities copyRegexFindSafePattern:a1 toBuffer:v15];
    v17 = u_strlen(v15);
  }

  MutableWithExternalCharactersNoCopy = CFStringCreateMutableWithExternalCharactersNoCopy(*MEMORY[0x1E695E480], v15, v17, a8, *MEMORY[0x1E695E498]);
  if (v18)
  {
    if ((v18 & 0x100) != 0)
    {
      objc_opt_self();
      Length = CFStringGetLength(MutableWithExternalCharactersNoCopy);
      theString = MutableWithExternalCharactersNoCopy;
      v58 = 0;
      v59 = Length;
      CharactersPtr = CFStringGetCharactersPtr(MutableWithExternalCharactersNoCopy);
      v44 = v13;
      v43 = v10;
      if (CharactersPtr)
      {
        CStringPtr = 0;
      }

      else
      {
        CStringPtr = CFStringGetCStringPtr(MutableWithExternalCharactersNoCopy, 0x600u);
      }

      v60 = 0;
      v61 = 0;
      v57 = CStringPtr;
      if (Length >= 1)
      {
        v22 = 0;
        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        v52 = 0u;
        v23 = -Length;
        v24 = Length + 64;
        v49 = 0u;
        v50 = 0u;
        v25 = Length;
        *buffer = 0u;
        v48 = 0u;
        do
        {
          v26 = v25;
          if (v25 >= 5)
          {
            v27 = 5;
          }

          else
          {
            v27 = v25;
          }

          --v25;
          v28 = v59;
          if (v59 >= v26)
          {
            if (CharactersPtr)
            {
              v29 = CharactersPtr[v58 - 1 + v26];
            }

            else if (v57)
            {
              v29 = v57[v58 - 1 + v26];
            }

            else
            {
              v30 = v61 >= v26 && v22 < v26;
              if (!v30)
              {
                v31 = v27 + v23;
                v32 = v24 - v27;
                v33 = v26 - v27;
                v34 = v33 + 64;
                if (v33 + 64 >= v59)
                {
                  v34 = v59;
                }

                v60 = v33;
                v61 = v34;
                if (v59 >= v32)
                {
                  v28 = v32;
                }

                v64.location = v33 + v58;
                v64.length = v28 + v31;
                CFStringGetCharacters(theString, v64, buffer);
                v22 = v60;
              }

              v29 = buffer[v26 - 1 - v22];
            }

            v35 = v29;
            v36 = v29 - 65284;
            v30 = v36 > 0x3A;
            v37 = (1 << v36) & 0x580000008000CF1;
            if (!v30 && v37 != 0 || (v35 - 65371) < 3)
            {
              CFStringInsert(MutableWithExternalCharactersNoCopy, v25, @"\");
              theString = MutableWithExternalCharactersNoCopy;
              v58 = 0;
              v59 = Length;
              CharactersPtr = CFStringGetCharactersPtr(MutableWithExternalCharactersNoCopy);
              if (CharactersPtr)
              {
                v40 = 0;
              }

              else
              {
                v40 = CFStringGetCStringPtr(MutableWithExternalCharactersNoCopy, 0x600u);
              }

              v22 = 0;
              v57 = v40;
              v60 = 0;
              v61 = 0;
            }
          }

          ++v23;
          --v24;
        }

        while (v25 + 1 > 1);
      }

      v13 = v44;
      v10 = v43;
      v18 = v46;
    }

    CFStringFold(MutableWithExternalCharactersNoCopy, v18, 0);
  }

  CFStringNormalize(MutableWithExternalCharactersNoCopy, theForm);
  if (CFStringGetCharactersPtr(MutableWithExternalCharactersNoCopy) == v15)
  {
    v41 = CFStringGetLength(MutableWithExternalCharactersNoCopy);
  }

  else
  {
    if (v16)
    {
      free(v15);
    }

    v41 = CFStringGetLength(MutableWithExternalCharactersNoCopy);
    v42 = malloc_type_malloc(2 * v41 + 2, 0x1000040BDFB0063uLL);
    *a2 = v42;
    *v13 = 1;
    v65.location = 0;
    v65.length = v41;
    CFStringGetCharacters(MutableWithExternalCharactersNoCopy, v65, v42);
    v42[v41] = 0;
  }

  *v10 = v41;
  CFRelease(MutableWithExternalCharactersNoCopy);
}

void sub_18099A9D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, uint64_t a12)
{
  v16 = v14;
  if (a2 == 1)
  {
    v15 = objc_begin_catch(exception_object);
    if (v16)
    {
      free(v13);
    }

    *v12 = 0;
    objc_exception_throw(v15);
  }

  _Unwind_Resume(exception_object);
}

void type metadata completion function for Duration.TimeFormatStyle.Pattern()
{
  type metadata accessor for Duration.TimeFormatStyle.Pattern.Fields(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Int?();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

Swift::String __swiftcall _NSLocalizedStringResourceSwiftWrapper.localize()()
{
  v1 = *(v0 + OBJC_IVAR____NSLocalizedStringResourceSwiftWrapper_wrapped + 48);
  v2 = *(v0 + OBJC_IVAR____NSLocalizedStringResourceSwiftWrapper_wrapped + 80);
  v22 = *(v0 + OBJC_IVAR____NSLocalizedStringResourceSwiftWrapper_wrapped + 64);
  v23 = v2;
  v3 = *(v0 + OBJC_IVAR____NSLocalizedStringResourceSwiftWrapper_wrapped + 16);
  v19[0] = *(v0 + OBJC_IVAR____NSLocalizedStringResourceSwiftWrapper_wrapped);
  v19[1] = v3;
  v4 = *(v0 + OBJC_IVAR____NSLocalizedStringResourceSwiftWrapper_wrapped + 48);
  v6 = *(v0 + OBJC_IVAR____NSLocalizedStringResourceSwiftWrapper_wrapped);
  v5 = *(v0 + OBJC_IVAR____NSLocalizedStringResourceSwiftWrapper_wrapped + 16);
  v20 = *(v0 + OBJC_IVAR____NSLocalizedStringResourceSwiftWrapper_wrapped + 32);
  v21 = v4;
  v7 = *(v0 + OBJC_IVAR____NSLocalizedStringResourceSwiftWrapper_wrapped + 80);
  v17[4] = v22;
  v17[5] = v7;
  v17[0] = v6;
  v17[1] = v5;
  v24 = *(v0 + OBJC_IVAR____NSLocalizedStringResourceSwiftWrapper_wrapped + 96);
  v18 = *(v0 + OBJC_IVAR____NSLocalizedStringResourceSwiftWrapper_wrapped + 96);
  v17[2] = v20;
  v17[3] = v1;
  v12 = 0uLL;
  v13 = 256;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  outlined init with copy of LocalizedStringResource(v19, v11);
  v8 = String.init(localized:options:)(v17, &v12);
  result._object = v9;
  result._countAndFlagsBits = v8;
  return result;
}

id @objc _NSLocalizedStringResourceSwiftWrapper.description.getter(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = String._bridgeToObjectiveCImpl()();

  return v5;
}

void String.LocalizationOptions.init(nsOptions:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  v4 = [a1 pluralizationNumber];
  v5 = v4;
  if (v4)
  {
    if ([v4 integerValue] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = 0;
      v7 = 1;
    }

    else
    {
      v6 = [v5 integerValue];
      v7 = 0;
    }

    v2 = v5;
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  *a2 = 0;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7;
  *(a2 + 17) = v5 == 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
}

uint64_t closure #1 in createTemporaryFile(at:inPath:prefix:options:variant:)@<X0>(char *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, id a6@<X5>, int a7@<W6>, void *a8@<X8>)
{
  v156 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    isTaggedPointer = _objc_isTaggedPointer(@"NSCocoaErrorDomain");
    v22 = @"NSCocoaErrorDomain";
    v23 = v22;
    if (isTaggedPointer)
    {
      TaggedPointerTag = _objc_getTaggedPointerTag(v22);
      if (TaggedPointerTag)
      {
        if (TaggedPointerTag != 22)
        {
          if (TaggedPointerTag == 2)
          {
            MEMORY[0x1EEE9AC00](TaggedPointerTag);
            String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

            goto LABEL_117;
          }

          goto LABEL_17;
        }

        v36 = [(__CFString *)v23 UTF8String];
        if (!v36)
        {
          __break(1u);
LABEL_241:
          __break(1u);
          goto LABEL_242;
        }

        String.init(utf8String:)(v36);
        if (v37)
        {
          goto LABEL_18;
        }

        __break(1u);
      }

      v152 = 0;
      _CFIndirectTaggedPointerStringGetContents();
      _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (v38)
      {
        goto LABEL_18;
      }

      [(__CFString *)v23 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      goto LABEL_117;
    }

LABEL_17:
    LOBYTE(v150) = 0;
    v154 = 0;
    LOBYTE(v152) = 0;
    v153 = 0;
    if (__CFStringIsCF())
    {
LABEL_18:

      goto LABEL_117;
    }

    v30 = v23;
    String.init(_nativeStorage:)();
    if (!v31 && (v154 = [(__CFString *)v30 length]) != 0)
    {
      String.init(_cocoaString:)();
    }

    else
    {
    }

LABEL_117:
    v67 = objc_allocWithZone(NSError);
    v68 = String._bridgeToObjectiveCImpl()();

    v60 = MEMORY[0x1E69E7CA0];
    v8 = _NativeDictionary.bridged()();
    a6 = [v67 initWithDomain:v68 code:514 userInfo:v8];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v69 = [a6 domain];
    if (!v69)
    {
LABEL_127:
      v74 = 0;
      a3 = 0xE000000000000000;
      goto LABEL_154;
    }

    v70 = v69;
    v71 = _objc_isTaggedPointer(v69);
    v72 = v70;
    v8 = v72;
    if ((v71 & 1) == 0)
    {
      goto LABEL_123;
    }

    v73 = _objc_getTaggedPointerTag(v72);
    if (v73)
    {
      if (v73 != 22)
      {
        if (v73 == 2)
        {
          MEMORY[0x1EEE9AC00](v73);
          v74 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          a3 = v75;

LABEL_154:
          v83 = v23;
          v84 = v83;
          if (!isTaggedPointer)
          {
            goto LABEL_159;
          }

          v85 = _objc_getTaggedPointerTag(v83);
          if (!v85)
          {
            goto LABEL_167;
          }

          if (v85 != 22)
          {
            if (v85 == 2)
            {
              v8 = &v146;
              MEMORY[0x1EEE9AC00](v85);
              v86 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
              a2 = v87;

LABEL_173:
              if (v74 == v86 && a3 == a2)
              {
              }

              else
              {
                v94 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if ((v94 & 1) == 0)
                {
                  __break(1u);
                  goto LABEL_178;
                }
              }

              return swift_willThrow();
            }

LABEL_159:
            LOBYTE(v150) = 0;
            v154 = 0;
            LOBYTE(v152) = 0;
            v153 = 0;
            if (__CFStringIsCF())
            {
            }

            else
            {
              v8 = v84;
              v88 = String.init(_nativeStorage:)();
              if (v89)
              {
                v86 = v88;
                a2 = v89;

                goto LABEL_173;
              }

              v154 = [(__CFString *)v8 length];
              if (v154)
              {
                v86 = String.init(_cocoaString:)();
                a2 = v93;
                goto LABEL_173;
              }
            }

            v86 = 0;
            a2 = 0xE000000000000000;
            goto LABEL_173;
          }

          v90 = [(__CFString *)v84 UTF8String];
          if (v90)
          {
            v91 = String.init(utf8String:)(v90);
            if (v92)
            {
LABEL_168:
              v86 = v91;
              a2 = v92;

              goto LABEL_173;
            }

            __break(1u);
LABEL_167:
            v152 = 0;
            _CFIndirectTaggedPointerStringGetContents();
            v91 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
            if (!v92)
            {
              [(__CFString *)v84 mutableCopy];
              _bridgeAnyObjectToAny(_:)();

              swift_unknownObjectRelease();
              swift_dynamicCast();
              v86 = v150;
              a2 = v151;
              goto LABEL_173;
            }

            goto LABEL_168;
          }

          goto LABEL_241;
        }

LABEL_123:
        LOBYTE(v150) = 0;
        v154 = 0;
        LOBYTE(v152) = 0;
        v153 = 0;
        if (__CFStringIsCF())
        {

          goto LABEL_127;
        }

        v76 = v8;
        v77 = String.init(_nativeStorage:)();
        if (v78)
        {
          v74 = v77;
          a3 = v78;

          goto LABEL_154;
        }

        v154 = [(__CFString *)v76 length];
        if (!v154)
        {

          goto LABEL_127;
        }

        v74 = String.init(_cocoaString:)();
        a3 = v82;
LABEL_153:

        goto LABEL_154;
      }

      v79 = [(__CFString *)v8 UTF8String];
      if (!v79)
      {
LABEL_242:
        __break(1u);
        goto LABEL_243;
      }

      v80 = String.init(utf8String:)(v79);
      if (v81)
      {
LABEL_132:
        v74 = v80;
        a3 = v81;

        goto LABEL_153;
      }

      __break(1u);
    }

    v152 = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v80 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v81)
    {
      [(__CFString *)v8 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v74 = v150;
      a3 = v151;
      goto LABEL_153;
    }

    goto LABEL_132;
  }

  if (mktemp(a1))
  {
    v17 = _NSOpenFileDescriptor_Protected(a1, 2562, a7, 438);
    if ((v17 & 0x80000000) == 0)
    {
      v18 = v17;
      result = String.init(cString:)();
      *a8 = v18;
      a8[1] = result;
      a8[2] = v20;
      return result;
    }

    result = MEMORY[0x1865CA7A0]();
    if (result == 17)
    {
      *a8 = 0;
      a8[1] = 0;
      a8[2] = 0;
      return result;
    }

    v32 = MEMORY[0x1865CA7A0]();
    v33 = v32;
    if (a4)
    {
      if (v32 > 27)
      {
        if (v32 <= 62)
        {
          if (v32 != 28)
          {
            if (v32 == 30)
            {
              v39 = 642;
              goto LABEL_182;
            }

            goto LABEL_181;
          }
        }

        else
        {
          if (v32 == 63)
          {
            v39 = 514;
            goto LABEL_182;
          }

          if (v32 != 69)
          {
            if (v32 == 102)
            {
              swift_unknownObjectRetain();
              v26 = 0;
              v27 = 512;
              goto LABEL_187;
            }

LABEL_181:
            v39 = 512;
LABEL_182:
            v147 = v39;
            v148 = a5;
            swift_unknownObjectRetain();
            if ((POSIXErrorCode.init(rawValue:)() & 0x100000000) == 0)
            {
              static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSPOSIXErrorDomain");
              v95 = POSIXErrorCode.rawValue.getter();
              v96 = objc_allocWithZone(NSError);
              v97 = String._bridgeToObjectiveCImpl()();

              v26 = [v96 initWithDomain:v97 code:v95 userInfo:_NativeDictionary.bridged()()];
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              v98 = [v26 domain];
              v99 = static String._unconditionallyBridgeFromObjectiveC(_:)(v98);
              v101 = v100;

              if (v99 == static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSPOSIXErrorDomain") && v101 == v102)
              {

                v27 = v147;
                goto LABEL_187;
              }

              v103 = _stringCompareWithSmolCheck(_:_:expecting:)();

              v27 = v147;
              if (v103)
              {
LABEL_187:
                ObjectType = swift_getObjectType();
                (*(a3 + 240))(ObjectType, a3);
                v51 = String._bridgeToObjectiveCImpl()();

                v52 = (*(a3 + 432))(ObjectType, a3);
                outlined consume of PathOrURL(a2, a3, 1);
                if (v26)
                {
                  v154 = v26;
                  lazy protocol witness table accessor for type POSIXError and conformance POSIXError();
                  v105 = v26;
                  v106 = _getErrorEmbeddedNSError<A>(_:)();

                  if (v106)
                  {
                  }

                  else
                  {
                    swift_allocError();
                    *v107 = v105;
                  }

                  v55 = _swift_stdlib_bridgeErrorToNSError();
                }

                else
                {
                  v55 = 0;
                }

                if (!a6)
                {
                  v56 = 0;
                  goto LABEL_196;
                }

                goto LABEL_194;
              }

              goto LABEL_238;
            }

            goto LABEL_245;
          }
        }

        v39 = 640;
        goto LABEL_182;
      }

      if (v32 > 12)
      {
        if (v32 != 13)
        {
          if (v32 == 17)
          {
            v39 = 516;
            goto LABEL_182;
          }

          goto LABEL_181;
        }
      }

      else if (v32 != 1)
      {
        if (v32 == 2)
        {
          v39 = 4;
          goto LABEL_182;
        }

        goto LABEL_181;
      }

      v39 = 513;
      goto LABEL_182;
    }

    v149 = a6;
    if (v32 > 27)
    {
      if (v32 > 62)
      {
        if (v32 == 63)
        {
          v40 = 514;
          goto LABEL_199;
        }

        if (v32 != 69)
        {
          if (v32 == 102)
          {
            v26 = 0;
            v148 = 512;
            goto LABEL_205;
          }

          goto LABEL_198;
        }

        goto LABEL_151;
      }

      if (v32 == 28)
      {
LABEL_151:
        v40 = 640;
        goto LABEL_199;
      }

      if (v32 == 30)
      {
        v40 = 642;
        goto LABEL_199;
      }

LABEL_198:
      v40 = 512;
      goto LABEL_199;
    }

    if (v32 > 12)
    {
      if (v32 != 13)
      {
        if (v32 != 17)
        {
          goto LABEL_198;
        }

        v40 = 516;
        goto LABEL_199;
      }
    }

    else if (v32 != 1)
    {
      if (v32 != 2)
      {
        goto LABEL_198;
      }

      v40 = 4;
LABEL_199:
      v148 = v40;
      if ((POSIXErrorCode.init(rawValue:)() & 0x100000000) != 0)
      {
LABEL_245:
        _StringGuts.grow(_:)(22);

        v154 = 0xD000000000000014;
        v155 = 0x80000001814813E0;
        LODWORD(v150) = v33;
        goto LABEL_246;
      }

      static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSPOSIXErrorDomain");
      v108 = POSIXErrorCode.rawValue.getter();
      v109 = objc_allocWithZone(NSError);
      v110 = String._bridgeToObjectiveCImpl()();

      v26 = [v109 initWithDomain:v110 code:v108 userInfo:_NativeDictionary.bridged()()];
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v111 = [v26 domain];
      v112 = static String._unconditionallyBridgeFromObjectiveC(_:)(v111);
      v114 = v113;

      if (v112 == static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSPOSIXErrorDomain") && v114 == v115)
      {
      }

      else
      {
        v116 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v116 & 1) == 0)
        {
          goto LABEL_239;
        }
      }

      a6 = v149;
LABEL_205:

      URL.init(_fileManagerFailableFileURLWithPath:)(a2, a3, &v154);
      outlined consume of PathOrURL(a2, a3, 0);
      v117 = v154;
      v118 = v155;
      v119 = String._bridgeToObjectiveCImpl()();
      if (v117)
      {
        v120 = swift_getObjectType();
        v121 = (*(v118 + 432))(v120, v118);
        swift_unknownObjectRelease();
      }

      else
      {
        v121 = 0;
      }

      if (v26)
      {
        v150 = v26;
        lazy protocol witness table accessor for type POSIXError and conformance POSIXError();
        v122 = v26;
        v123 = _getErrorEmbeddedNSError<A>(_:)();

        if (v123)
        {
        }

        else
        {
          swift_allocError();
          *v125 = v122;
        }

        v124 = _swift_stdlib_bridgeErrorToNSError();
      }

      else
      {
        v124 = 0;
      }

      if (a6)
      {
        v56 = String._bridgeToObjectiveCImpl()();
      }

      else
      {
        v56 = 0;
      }

      [objc_opt_self() _cocoaErrorWithCode_path_url_underlying_variant_source_destination_];
      swift_unknownObjectRelease();

      goto LABEL_197;
    }

    v40 = 513;
    goto LABEL_199;
  }

  v25 = MEMORY[0x1865CA7A0]();
  LODWORD(v8) = v25;
  if ((a4 & 1) == 0)
  {
    if (v25 > 27)
    {
      if (v25 > 62)
      {
        if (v25 == 63)
        {
          v35 = 514;
          goto LABEL_100;
        }

        if (v25 != 69)
        {
          if (v25 == 102)
          {
            v28 = 0;
            v29 = 512;
            goto LABEL_224;
          }

          goto LABEL_99;
        }

        goto LABEL_72;
      }

      if (v25 == 28)
      {
LABEL_72:
        v35 = 640;
        goto LABEL_100;
      }

      if (v25 == 30)
      {
        v35 = 642;
        goto LABEL_100;
      }

LABEL_99:
      v35 = 512;
      goto LABEL_100;
    }

    if (v25 > 12)
    {
      if (v25 != 13)
      {
        if (v25 != 17)
        {
          goto LABEL_99;
        }

        v35 = 516;
        goto LABEL_100;
      }
    }

    else if (v25 != 1)
    {
      if (v25 != 2)
      {
        goto LABEL_99;
      }

      v35 = 4;
LABEL_100:
      v147 = v35;
      v148 = a5;
      if ((POSIXErrorCode.init(rawValue:)() & 0x100000000) != 0)
      {
        goto LABEL_244;
      }

      v8 = @"NSPOSIXErrorDomain";
      v58 = _objc_isTaggedPointer(@"NSPOSIXErrorDomain");
      v59 = @"NSPOSIXErrorDomain";
      v60 = v59;
      if (!v58)
      {
LABEL_106:
        LOBYTE(v150) = 0;
        v154 = 0;
        LOBYTE(v152) = 0;
        v153 = 0;
        if (!__CFStringIsCF())
        {
          v62 = v60;
          String.init(_nativeStorage:)();
          if (!v63 && (v154 = [(__CFString *)v62 length]) != 0)
          {
            String.init(_cocoaString:)();
          }

          else
          {
          }

LABEL_220:
          v126 = POSIXErrorCode.rawValue.getter();
          v127 = objc_allocWithZone(NSError);
          v128 = String._bridgeToObjectiveCImpl()();

          v28 = [v127 initWithDomain:v128 code:v126 userInfo:_NativeDictionary.bridged()()];
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          v129 = [v28 domain];
          v130 = static String._unconditionallyBridgeFromObjectiveC(_:)(v129);
          v132 = v131;

          if (v130 == static String._unconditionallyBridgeFromObjectiveC(_:)(v8) && v132 == v133)
          {

            v29 = v147;
          }

          else
          {
            v134 = _stringCompareWithSmolCheck(_:_:expecting:)();

            v29 = v147;
            if ((v134 & 1) == 0)
            {
              goto LABEL_237;
            }
          }

LABEL_224:

          URL.init(_fileManagerFailableFileURLWithPath:)(a2, a3, &v154);
          outlined consume of PathOrURL(a2, a3, 0);
          v135 = v154;
          v136 = v155;
          v137 = String._bridgeToObjectiveCImpl()();
          if (v135)
          {
            v138 = swift_getObjectType();
            v139 = (*(v136 + 432))(v138, v136);
            swift_unknownObjectRelease();
            if (v28)
            {
              goto LABEL_226;
            }
          }

          else
          {
            v139 = 0;
            if (v28)
            {
LABEL_226:
              v150 = v28;
              lazy protocol witness table accessor for type POSIXError and conformance POSIXError();
              v140 = v28;
              v141 = _getErrorEmbeddedNSError<A>(_:)();

              if (v141)
              {
              }

              else
              {
                swift_allocError();
                *v144 = v140;
              }

              v142 = _swift_stdlib_bridgeErrorToNSError();
              if (a6)
              {
                goto LABEL_233;
              }

              goto LABEL_230;
            }
          }

          v142 = 0;
          if (a6)
          {
LABEL_233:
            v143 = String._bridgeToObjectiveCImpl()();
            goto LABEL_234;
          }

LABEL_230:
          v143 = 0;
LABEL_234:
          [objc_opt_self() _cocoaErrorWithCode_path_url_underlying_variant_source_destination_];
          swift_unknownObjectRelease();

          return swift_willThrow();
        }

LABEL_218:

        goto LABEL_220;
      }

      v61 = _objc_getTaggedPointerTag(v59);
      if (!v61)
      {
        goto LABEL_112;
      }

      if (v61 != 22)
      {
        if (v61 == 2)
        {
          MEMORY[0x1EEE9AC00](v61);
          String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

          goto LABEL_220;
        }

        goto LABEL_106;
      }

      v64 = [(__CFString *)v60 UTF8String];
      if (v64)
      {
        String.init(utf8String:)(v64);
        if (v65)
        {
          goto LABEL_218;
        }

        __break(1u);
LABEL_112:
        v152 = 0;
        _CFIndirectTaggedPointerStringGetContents();
        _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
        if (v66)
        {
          goto LABEL_218;
        }

LABEL_178:
        [(__CFString *)v60 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        goto LABEL_220;
      }

LABEL_243:
      __break(1u);
      goto LABEL_244;
    }

    v35 = 513;
    goto LABEL_100;
  }

  v149 = a6;
  if (v25 <= 27)
  {
    if (v25 > 12)
    {
      if (v25 != 13)
      {
        if (v25 == 17)
        {
          v34 = 516;
          goto LABEL_85;
        }

        goto LABEL_84;
      }
    }

    else if (v25 != 1)
    {
      if (v25 == 2)
      {
        v34 = 4;
        goto LABEL_85;
      }

      goto LABEL_84;
    }

    v34 = 513;
    goto LABEL_85;
  }

  if (v25 <= 62)
  {
    if (v25 != 28)
    {
      if (v25 == 30)
      {
        v34 = 642;
        goto LABEL_85;
      }

      goto LABEL_84;
    }

LABEL_71:
    v34 = 640;
    goto LABEL_85;
  }

  switch(v25)
  {
    case '?':
      v34 = 514;
      goto LABEL_85;
    case 'E':
      goto LABEL_71;
    case 'f':
      swift_unknownObjectRetain();
      v26 = 0;
      v27 = 512;
      goto LABEL_91;
  }

LABEL_84:
  v34 = 512;
LABEL_85:
  v148 = v34;
  swift_unknownObjectRetain();
  if ((POSIXErrorCode.init(rawValue:)() & 0x100000000) == 0)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSPOSIXErrorDomain");
    v41 = POSIXErrorCode.rawValue.getter();
    v42 = objc_allocWithZone(NSError);
    v43 = String._bridgeToObjectiveCImpl()();

    v26 = [v42 initWithDomain:v43 code:v41 userInfo:_NativeDictionary.bridged()()];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v44 = [v26 domain];
    v45 = static String._unconditionallyBridgeFromObjectiveC(_:)(v44);
    v47 = v46;

    if (v45 == static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSPOSIXErrorDomain") && v47 == v48)
    {

      v27 = v148;
      a6 = v149;
      goto LABEL_91;
    }

    v49 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v27 = v148;
    if (v49)
    {
      a6 = v149;
LABEL_91:
      v50 = swift_getObjectType();
      (*(a3 + 240))(v50, a3);
      v51 = String._bridgeToObjectiveCImpl()();

      v52 = (*(a3 + 432))(v50, a3);
      outlined consume of PathOrURL(a2, a3, 1);
      if (v26)
      {
        v154 = v26;
        lazy protocol witness table accessor for type POSIXError and conformance POSIXError();
        v53 = v26;
        v54 = _getErrorEmbeddedNSError<A>(_:)();

        if (v54)
        {
        }

        else
        {
          swift_allocError();
          *v57 = v53;
        }

        v55 = _swift_stdlib_bridgeErrorToNSError();
        if (a6)
        {
          goto LABEL_194;
        }
      }

      else
      {
        v55 = 0;
        if (a6)
        {
LABEL_194:
          v56 = String._bridgeToObjectiveCImpl()();
          goto LABEL_196;
        }
      }

      v56 = 0;
LABEL_196:
      [objc_opt_self() _cocoaErrorWithCode_path_url_underlying_variant_source_destination_];
      swift_unknownObjectRelease();

LABEL_197:
      return swift_willThrow();
    }

    __break(1u);
LABEL_237:
    __break(1u);
LABEL_238:
    __break(1u);
LABEL_239:
    __break(1u);
  }

LABEL_244:
  _StringGuts.grow(_:)(22);

  v154 = 0xD000000000000014;
  v155 = 0x80000001814813E0;
  LODWORD(v150) = v8;
LABEL_246:
  v145 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1865CB0E0](v145);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

id _NSLocalizedStringResourceSwiftWrapper.init(key:defaultValue:table:locale:bundleURL:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7, uint64_t *a8)
{
  v9 = v8;
  ObjectType = swift_getObjectType();
  v24 = *a7;
  v19 = *a8;
  v20 = a8[1];
  v21 = swift_getObjectType();
  if ((*(v20 + 144))(v21, v20))
  {
    if (!a4)
    {

      a3 = a1;
      a4 = a2;
    }

    v22 = &v9[OBJC_IVAR____NSLocalizedStringResourceSwiftWrapper_wrapped];
    *v22 = a1;
    *(v22 + 1) = a2;
    *(v22 + 2) = MEMORY[0x1E69E7CC0];
    *(v22 + 3) = a3;
    *(v22 + 4) = a4;
    *(v22 + 5) = a5;
    *(v22 + 6) = a6;
    *(v22 + 56) = v24;
    *(v22 + 9) = v19;
    *(v22 + 10) = v20;
    *(v22 + 11) = 0;
    *(v22 + 12) = 0;
    v25.receiver = v9;
    v25.super_class = ObjectType;
    return objc_msgSendSuper2(&v25, sel_init);
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void _ss45_conditionallyBridgeFromObjectiveC_bridgeableyxSg01_D5CTypeQz_xmts01_D11CBridgeableRzlFSb_Tt1g5(uint64_t a1)
{
  if (!*MEMORY[0x1E695E4D0])
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*MEMORY[0x1E695E4D0] != a1)
  {
    type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSObject);
    v2 = [objc_allocWithZone(NSNumber) initWithInteger_];
    v3 = static NSObject.== infix(_:_:)();

    if ((v3 & 1) == 0)
    {
      if (*MEMORY[0x1E695E4C0])
      {
        if (*MEMORY[0x1E695E4C0] != a1)
        {
          v4 = [objc_allocWithZone(NSNumber) initWithInteger_];
          static NSObject.== infix(_:_:)();
        }

        return;
      }

LABEL_10:
      __break(1u);
    }
  }
}

uint64_t objectdestroy_54Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 50, 7);
}

uint64_t specialized String.withFileSystemRepresentation<A>(_:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v21 = *MEMORY[0x1E69E9840];
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
  if ((v11 * 3) >> 64 == (3 * v11) >> 63)
  {
    if (v12 < -1)
    {
      __break(1u);
    }

    v5 = v12 + 1;

    if (v12 < 1024)
    {
      goto LABEL_8;
    }
  }

  else
  {
    __break(1u);
  }

  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  if ((isStackAllocationSafe & 1) == 0)
  {
    v17 = swift_slowAlloc();

    specialized closure #1 in String.withFileSystemRepresentation<A>(_:)(v17, v5, a1, a2, a3, a4, &v20);
    MEMORY[0x1865D2690](v17, -1, -1);

    if (!v6)
    {
      return v20;
    }

    return a3;
  }

LABEL_8:
  MEMORY[0x1EEE9AC00](isStackAllocationSafe);
  v15 = &v18 - v14;
  if (String._fileSystemRepresentation(into:)(&v18 - v14, v5, a1, a2))
  {
    closure #1 in String._resolvingSymlinksInPath()(v15, a3, a4, &v19);
    if (v6)
    {
      swift_willThrow();

      return a3;
    }

    a3 = v19;
  }

  else
  {
    a3 = 0;
  }

  return a3;
}

{
  v4 = specialized String.withFileSystemRepresentation<A>(_:)(a1, a2, a3, a4);

  return v4;
}

{
  v6 = v4;
  v18[2] = *MEMORY[0x1E69E9840];
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
    goto LABEL_15;
  }

  if (v12 < -1)
  {
    __break(1u);
    return v18[0];
  }

  v5 = v12 + 1;

  if (v12 >= 1024)
  {
LABEL_15:
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if (isStackAllocationSafe)
    {
      goto LABEL_8;
    }

    v16 = swift_slowAlloc();

    specialized closure #1 in String.withFileSystemRepresentation<A>(_:)(v16, v5, a1, a2, a3, a4, v18);
    MEMORY[0x1865D2690](v16, -1, -1);

    if (v6)
    {
      return a3;
    }

    return v18[0];
  }

LABEL_8:
  MEMORY[0x1EEE9AC00](isStackAllocationSafe);
  if (String._fileSystemRepresentation(into:)(&v18[-1] - v14, v5, a1, a2))
  {
    a3 = String.init(cString:)();
  }

  else
  {
  }

  return a3;
}

uint64_t closure #1 in String._resolvingSymlinksInPath()@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, size_t *a4@<X8>)
{
  v15 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    *a4 = 0;
    a4[1] = 0;
    return result;
  }

  v7 = result;
  v12[0] = a2;
  v12[1] = a3;

  if (static URL.isAbsolute(standardizing:pathStyle:)(v12, 0))
  {
    v8 = static String._resolvingSymlinksInPathUsingFullPathAttribute(_:)(v7);
    if (v9)
    {
      v10 = v8;
      v11 = v9;

      *a4 = v10;
      a4[1] = v11;
      return result;
    }
  }

  if (swift_stdlib_isStackAllocationSafe())
  {
    closure #1 in closure #1 in String._resolvingSymlinksInPath()(__dst, v7, 0x402uLL, &v13);
    if (!v4)
    {

      *a4 = v13;
      return result;
    }

    swift_willThrow();

    __break(1u);
  }

  else
  {
    v5 = swift_slowAlloc();
    closure #1 in closure #1 in String._resolvingSymlinksInPath()(v5, v7, 0x402uLL, a4);
    if (!v4)
    {

      return MEMORY[0x1865D2690](v5, -1, -1);
    }
  }

  result = MEMORY[0x1865D2690](v5, -1, -1);
  __break(1u);
  return result;
}

uint64_t static String._resolvingSymlinksInPathUsingFullPathAttribute(_:)(const char *a1)
{
  v6[3] = *MEMORY[0x1E69E9840];
  v6[0] = 0x800000000000005;
  v6[1] = 0;
  v6[2] = 0;
  bzero(v4, 0x40CuLL);
  v2 = getattrlist(a1, v6, v4, 0x40CuLL, 0);
  result = 0;
  if (!v2)
  {
    if (v5)
    {
      return String.init(cString:)();
    }
  }

  return result;
}

uint64_t @objc _NSSwiftCalendar.isDateInToday(_:)(void *a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t *))
{
  v6 = a1;
  [a3 timeIntervalSinceReferenceDate];
  v8 = v7;
  v9 = *&v6[OBJC_IVAR____NSSwiftCalendar__lock];
  os_unfair_lock_lock((v9 + 32));
  v11 = *(v9 + 16);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v9 + 32));
  v13 = v11;
  v12 = v8;
  LOBYTE(a4) = a4(&v12);

  swift_unknownObjectRelease();
  return a4 & 1;
}

NSComparisonResult __swiftcall _NSSwiftCalendar.compare(_:to:toUnitGranularity:)(Foundation::Date _, Foundation::Date to, NSCalendarUnit toUnitGranularity)
{
  v5 = *toUnitGranularity;
  _fromNSCalendarUnit(_:)(v3, &v12);
  if (v12 == 19)
  {
    return 0;
  }

  v7 = *(v4 + OBJC_IVAR____NSSwiftCalendar__lock);
  os_unfair_lock_lock((v7 + 32));
  *&_a[0]._time = *(v7 + 16);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v7 + 32));
  v12 = *&_a[0]._time;
  v11 = v5;
  v9 = Calendar.compare(_:to:toGranularity:)(_a[0], v8, &v11);
  swift_unknownObjectRelease();
  return v9;
}

Swift::Void __swiftcall _NSLocalizedStringResourceSwiftWrapper.encode(with:)(NSCoder with)
{
  v27 = *MEMORY[0x1E69E9840];
  if ([(objc_class *)with.super.isa allowsKeyedCoding])
  {
    type metadata accessor for PropertyListEncoder();
    inited = swift_initStackObject();
    v4 = MEMORY[0x1E69E7CC8];
    inited[2] = 200;
    inited[3] = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCyyt_GMd);
    v5 = swift_allocObject();
    *(v5 + 16) = 0;
    v6 = (v5 + 16);
    inited[4] = v5;
    v7 = *(v1 + OBJC_IVAR____NSLocalizedStringResourceSwiftWrapper_wrapped + 80);
    v25[4] = *(v1 + OBJC_IVAR____NSLocalizedStringResourceSwiftWrapper_wrapped + 64);
    v25[5] = v7;
    v26 = *(v1 + OBJC_IVAR____NSLocalizedStringResourceSwiftWrapper_wrapped + 96);
    v8 = *(v1 + OBJC_IVAR____NSLocalizedStringResourceSwiftWrapper_wrapped + 48);
    v25[2] = *(v1 + OBJC_IVAR____NSLocalizedStringResourceSwiftWrapper_wrapped + 32);
    v25[3] = v8;
    v9 = *(v1 + OBJC_IVAR____NSLocalizedStringResourceSwiftWrapper_wrapped + 16);
    v25[0] = *(v1 + OBJC_IVAR____NSLocalizedStringResourceSwiftWrapper_wrapped);
    v25[1] = v9;

    outlined init with copy of LocalizedStringResource(v25, &v19);
    os_unfair_lock_lock(v6);

    v10 = inited[4];

    os_unfair_lock_unlock(v10 + 4);

    v11 = specialized PropertyListEncoder._encodeBPlist<A>(_:)(v25);
    v13 = v12;
    outlined destroy of LocalizedStringResource(v25);
    v14 = v13 >> 62;
    if ((v13 >> 62) > 1)
    {
      if (v14 != 2)
      {
        v15 = [objc_allocWithZone(MEMORY[0x1E695DEF0]) init];
        goto LABEL_10;
      }

      v16 = *(v11 + 16);
      v17 = *(v11 + 24);
    }

    else
    {
      if (!v14)
      {
        v19 = v11;
        v20 = v13;
        v21 = BYTE2(v13);
        v22 = BYTE3(v13);
        v23 = BYTE4(v13);
        v24 = BYTE5(v13);
        v15 = [objc_allocWithZone(MEMORY[0x1E695DEF0]) initWithBytes:&v19 length:BYTE6(v13)];
LABEL_10:
        v18 = v15;
        [(objc_class *)with.super.isa encodeObject:v15 forKey:String._bridgeToObjectiveCImpl()()];
        outlined consume of Data._Representation(v11, v13);

        swift_unknownObjectRelease();
        return;
      }

      v16 = v11;
      v17 = v11 >> 32;
      if (v11 >> 32 < v11)
      {
        __break(1u);
      }
    }

    v15 = __DataStorage.bridgedReference(_:)(v16, v17);
    goto LABEL_10;
  }

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t specialized PropertyListEncoder._encodeBPlist<A>(_:)(uint64_t a1)
{
  v4 = specialized PropertyListEncoder.encodeToTopLevelContainerBPlist<A>(_:)(a1);
  if (!v2)
  {
    v5 = *(v4 + 16);
    v6 = *(v4 + 40);
    if ((v6 & 0xF0) == 0x90 && (v6 == 144 ? (v7 = (*(v4 + 24) | *(v4 + 32) | v5) == 0) : (v7 = 0), v7 || (v6 == 144 ? (v8 = v5 == 1) : (v8 = 0), v8 ? (v9 = *(v4 + 24) == 0) : (v9 = 0), v9)))
    {
      v1 = v4;
      v11 = type metadata accessor for EncodingError();
      swift_allocError();
      v13 = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_syp_s13EncodingErrorO7ContextVtMd);
      v13[3] = &type metadata for LocalizedStringResource;
      v20 = swift_allocObject();
      *v13 = v20;
      v21 = *(a1 + 16);
      *(v20 + 16) = *a1;
      *(v20 + 32) = v21;
      v22 = *(a1 + 48);
      *(v20 + 48) = *(a1 + 32);
      *(v20 + 64) = v22;
      v23 = *(a1 + 80);
      *(v20 + 80) = *(a1 + 64);
      *(v20 + 96) = v23;
      *(v20 + 112) = *(a1 + 96);
      v43 = 0;
      v44 = 0xE000000000000000;
      outlined init with copy of LocalizedStringResource(a1, &v38);
      _StringGuts.grow(_:)(55);
      v38 = v43;
      v39 = v44;
      MEMORY[0x1865CB0E0](0x6576656C2D706F54, 0xEA0000000000206CLL);
      MEMORY[0x1865CB0E0](0xD000000000000017, 0x80000001812E82A0);
      v24 = "er property list fragment.";
      v25 = 0xD00000000000002BLL;
    }

    else
    {
      v10 = v6 >> 4;
      if ((v6 >> 4) - 1 >= 4)
      {
        if (v10 && (v10 != 9 || v6 != 144 || v5 != 2 || *(v4 + 24) != 0))
        {
          v1 = v4;
          if ((v6 & 0xF0) != 0x70)
          {
            v37 = swift_slowAlloc();
            v38 = MEMORY[0x1E69E7CC0];
            LOBYTE(v39) = 0;
            v40 = v37;
            v41 = 0x2000;
            v42 = 0;
            v1 = _BPlistEncodingFormat.Writer.serializePlist(_:)(v1);

            outlined consume of Data._Representation(0, 0xC000000000000000);

            return v1;
          }

          v11 = type metadata accessor for EncodingError();
          swift_allocError();
          v13 = v32;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_syp_s13EncodingErrorO7ContextVtMd);
          v13[3] = &type metadata for LocalizedStringResource;
          v33 = swift_allocObject();
          *v13 = v33;
          v34 = *(a1 + 16);
          *(v33 + 16) = *a1;
          *(v33 + 32) = v34;
          v35 = *(a1 + 48);
          *(v33 + 48) = *(a1 + 32);
          *(v33 + 64) = v35;
          v36 = *(a1 + 80);
          *(v33 + 80) = *(a1 + 64);
          *(v33 + 96) = v36;
          *(v33 + 112) = *(a1 + 96);
          v43 = 0;
          v44 = 0xE000000000000000;
          outlined init with copy of LocalizedStringResource(a1, &v38);
          _StringGuts.grow(_:)(52);
          v38 = v43;
          v39 = v44;
          MEMORY[0x1865CB0E0](0x6576656C2D706F54, 0xEA0000000000206CLL);
          MEMORY[0x1865CB0E0](0xD000000000000017, 0x80000001812E82A0);
          v24 = "list version=1.0>\n";
          v25 = 0xD000000000000028;
          goto LABEL_24;
        }

        v1 = v4;
        v11 = type metadata accessor for EncodingError();
        swift_allocError();
        v13 = v26;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_syp_s13EncodingErrorO7ContextVtMd);
        v13[3] = &type metadata for LocalizedStringResource;
        v27 = swift_allocObject();
        *v13 = v27;
        v28 = *(a1 + 16);
        *(v27 + 16) = *a1;
        *(v27 + 32) = v28;
        v29 = *(a1 + 48);
        *(v27 + 48) = *(a1 + 32);
        *(v27 + 64) = v29;
        v30 = *(a1 + 80);
        *(v27 + 80) = *(a1 + 64);
        *(v27 + 96) = v30;
        *(v27 + 112) = *(a1 + 96);
        v43 = 0;
        v44 = 0xE000000000000000;
        outlined init with copy of LocalizedStringResource(a1, &v38);
        _StringGuts.grow(_:)(54);
        v38 = v43;
        v39 = v44;
        MEMORY[0x1865CB0E0](0x6576656C2D706F54, 0xEA0000000000206CLL);
        MEMORY[0x1865CB0E0](0xD000000000000017, 0x80000001812E82A0);
        v18 = " encoded as string property list fragment.";
      }

      else
      {
        v1 = v4;
        v11 = type metadata accessor for EncodingError();
        swift_allocError();
        v13 = v12;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_syp_s13EncodingErrorO7ContextVtMd);
        v13[3] = &type metadata for LocalizedStringResource;
        v14 = swift_allocObject();
        *v13 = v14;
        v15 = *(a1 + 16);
        *(v14 + 16) = *a1;
        *(v14 + 32) = v15;
        v16 = *(a1 + 48);
        *(v14 + 48) = *(a1 + 32);
        *(v14 + 64) = v16;
        v17 = *(a1 + 80);
        *(v14 + 80) = *(a1 + 64);
        *(v14 + 96) = v17;
        *(v14 + 112) = *(a1 + 96);
        v43 = 0;
        v44 = 0xE000000000000000;
        outlined init with copy of LocalizedStringResource(a1, &v38);
        _StringGuts.grow(_:)(54);
        v38 = v43;
        v39 = v44;
        MEMORY[0x1865CB0E0](0x6576656C2D706F54, 0xEA0000000000206CLL);
        MEMORY[0x1865CB0E0](0xD000000000000017, 0x80000001812E82A0);
        v18 = " encoded as number property list fragment.";
      }

      v24 = (v18 - 32);
      v25 = 0xD00000000000002ALL;
    }

LABEL_24:
    MEMORY[0x1865CB0E0](v25, v24 | 0x8000000000000000);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v11 - 8) + 104))(v13, *MEMORY[0x1E69E6B30], v11);
    swift_willThrow();
  }

  return v1;
}

uint64_t sub_18099E63C()
{

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 120, 7);
}

uint64_t specialized PropertyListEncoder.encodeToTopLevelContainerBPlist<A>(_:)(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  type metadata accessor for __PlistEncoderBPlist();
  v6 = swift_allocObject();
  v7 = MEMORY[0x1E69E7CC0];
  *(v6 + 24) = v5;
  *(v6 + 32) = v4;
  *(v6 + 16) = v7;
  *(v6 + 40) = xmmword_181248570;
  specialized _BPlistEncodingFormat.init()(v26);
  v8 = v26[1];
  *(v6 + 56) = v26[0];
  *(v6 + 72) = v8;
  *(v6 + 88) = v27;
  v9 = *(a1 + 80);
  v24[4] = *(a1 + 64);
  v24[5] = v9;
  v25 = *(a1 + 96);
  v10 = *(a1 + 16);
  v24[0] = *a1;
  v24[1] = v10;
  v11 = *(a1 + 48);
  v24[2] = *(a1 + 32);
  v24[3] = v11;
  v23[2] = v24;

  v12 = specialized __PlistEncoderBPlist._wrapGeneric<A>(_:for:_:)(partial apply for specialized closure #1 in __PlistEncoderBPlist.wrapGeneric<A, B>(_:for:_:), v23, 0x8000000000000000, 0, 0, 0, 255);
  if (v2)
  {
  }

  if (!v12)
  {
    v15 = type metadata accessor for EncodingError();
    swift_allocError();
    v17 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_syp_s13EncodingErrorO7ContextVtMd);
    v17[3] = &type metadata for LocalizedStringResource;
    v18 = swift_allocObject();
    *v17 = v18;
    v19 = *(a1 + 16);
    *(v18 + 16) = *a1;
    *(v18 + 32) = v19;
    v20 = *(a1 + 48);
    *(v18 + 48) = *(a1 + 32);
    *(v18 + 64) = v20;
    v21 = *(a1 + 64);
    v22 = *(a1 + 80);
    *(v18 + 112) = *(a1 + 96);
    *(v18 + 80) = v21;
    *(v18 + 96) = v22;
    outlined init with copy of LocalizedStringResource(a1, v24);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v15 - 8) + 104))(v17, *MEMORY[0x1E69E6B30], v15);
    swift_willThrow();
  }

  v14 = v12;

  return v14;
}

void specialized closure #1 in __PlistEncoderBPlist.wrapGeneric<A, B>(_:for:_:)(uint64_t *a1, NSObject *a2)
{
  v3 = v2;
  v80 = a2;
  v91 = *MEMORY[0x1E69E9840];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation23LocalizedStringResourceV10CodingKeys33_6BD3BCCACE0AF34AB8D7E61AF16B4164LLOGMd);
  isa = v5[-1].isa;
  v7 = MEMORY[0x1EEE9AC00](v5);
  v79 = &v74 - v8;
  if ((*(*a1 + 240))(v7))
  {
    v9 = _s19CollectionsInternal17OrderedDictionaryV20uniqueKeysWithValuesACyxq_Gqd___tcSTRd__x_q_t7ElementRtd__lufC10Foundation21_BPlistEncodingFormatV9ReferenceC_ALSayAL_ALtGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v11 = v10;
    *&v78 = v2;
    v12 = v5;
    v13 = isa;
    v15 = v14;
    type metadata accessor for _BPlistEncodingFormat.Reference();
    v16 = swift_allocObject();
    *(v16 + 16) = v9;
    *(v16 + 24) = v11;
    *(v16 + 32) = v15;
    isa = v13;
    v5 = v12;
    v3 = v78;
    *(v16 + 40) = 96;
    *(v16 + 48) = -1;

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    v17 = v79;
    goto LABEL_5;
  }

  v18 = specialized BidirectionalCollection.last.getter(a1[2]);
  if (v18)
  {
    v16 = v18;
    v17 = v79;
    if ((*(v18 + 40) & 0xF0) == 0x60)
    {
LABEL_5:
      v19 = a1[5];
      *&v90[0] = a1;
      *(&v90[0] + 1) = v16;
      *&v90[1] = v19;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation34_PlistKeyedEncodingContainerBPlist33_BB206CA0B38724D56C5B55865D7B7E02LLVyAA23LocalizedStringResourceV10CodingKeys019_6BD3BCCACE0AF34AB8M12E61AF16B4164LLOGMd);
      lazy protocol witness table accessor for type _PlistKeyedEncodingContainerBPlist<LocalizedStringResource.CodingKeys> and conformance _PlistKeyedEncodingContainerBPlist<A>();
      KeyedEncodingContainer.init<A>(_:)();
      v20 = v80;
      LOBYTE(v90[0]) = 0;
      KeyedEncodingContainer.encode(_:forKey:)();
      if (v3)
      {
        (*(isa + 8))(v17, v5);
        return;
      }

      v87 = *&v20[2].isa;
      v88 = v20[4].isa;
      v90[0] = *&v20[2].isa;
      *&v90[1] = v20[4];
      LOBYTE(v83) = 1;
      outlined init with copy of String.LocalizationValue(&v87, v89);
      lazy protocol witness table accessor for type String.LocalizationValue and conformance String.LocalizationValue();
      KeyedEncodingContainer.encode<A>(_:forKey:)();

      v84 = 2;
      KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
      v77 = isa;
      v86 = *&v20[7].isa;
      v89[0] = *&v20[7].isa;
      outlined init with copy of Locale(&v86, &v83);
      Locale.Components.init(locale:)(v89, v90);
      memcpy(v89, v90, sizeof(v89));
      v21 = Locale.Components.icuIdentifier.getter();
      v23 = v22;
      if (one-time initialization token for cache != -1)
      {
        v68 = v21;
        swift_once();
        v21 = v68;
      }

      v24 = static LocaleCache.cache;
      MEMORY[0x1EEE9AC00](v21);
      *(&v74 - 2) = v25;
      *(&v74 - 1) = v23;
      os_unfair_lock_lock((v24 + 48));
      partial apply for closure #1 in LocaleCache.fixed(_:)((v24 + 16), &v83);
      os_unfair_lock_unlock((v24 + 48));
      v78 = v83;

      v89[0] = v78;
      LOBYTE(v83) = 3;
      lazy protocol witness table accessor for type Locale and conformance Locale();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v26 = v80;
      v85 = *&v80[9].isa;
      v89[0] = *&v80[9].isa;
      LOBYTE(v81) = 4;
      outlined init with copy of URL(&v85, &v83);
      lazy protocol witness table accessor for type URL and conformance URL();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v27 = v77;
      swift_unknownObjectRelease();
      if (v26[12].isa)
      {
        LOBYTE(v89[0]) = 5;
        KeyedEncodingContainer.encode(_:forKey:)();
        (*(v27 + 8))(v17, v5);
        swift_unknownObjectRelease();
        outlined destroy of Locale.Components(v90);
        return;
      }

      v76 = *MEMORY[0x1E69E9BA8];
      v28 = *(&v85 + 1);
      ObjectType = swift_getObjectType();
      v74 = *(v28 + 240);
      v75 = ObjectType;
      v74(ObjectType, v28);
      String.utf8CString.getter();

      v30 = sandbox_extension_issue_file();

      if (v30)
      {
        v80 = v5;
        MEMORY[0x1865CAEB0](v30);
        if (v31)
        {
LABEL_14:
          isa = v30;
LABEL_15:
          v32 = v77;
          LOBYTE(v89[0]) = 5;
          v33 = v79;
          v34 = v80;
          KeyedEncodingContainer.encode(_:forKey:)();

          MEMORY[0x1865D2690](isa, -1, -1);
          outlined destroy of Locale.Components(v90);
          swift_unknownObjectRelease();
          (*(v32 + 8))(v33, v34);
          return;
        }

        v49 = [objc_allocWithZone(NSString) initWithCString:v30 encoding:4];
        if (v49)
        {
          v50 = v49;
          isTaggedPointer = _objc_isTaggedPointer(v49);
          v52 = v50;
          v53 = v52;
          if (!isTaggedPointer)
          {
            goto LABEL_27;
          }

          TaggedPointerTag = _objc_getTaggedPointerTag(v52);
          if (!TaggedPointerTag)
          {
            goto LABEL_40;
          }

          if (TaggedPointerTag != 22)
          {
            if (TaggedPointerTag == 2)
            {
              MEMORY[0x1EEE9AC00](TaggedPointerTag);
              *(&v74 - 2) = v53;
              String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

              goto LABEL_14;
            }

LABEL_27:
            LOBYTE(v83) = 0;
            *&v89[0] = 0;
            LOBYTE(v81) = 0;
            v82 = 0;
            IsCF = __CFStringIsCF();
            if (IsCF)
            {
              v58 = *&v89[0];
              if (!*&v89[0])
              {
                isa = v30;

                goto LABEL_15;
              }

              isa = v30;
              if (v82 == 1)
              {
                if (v83)
                {
                  lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
                }

                else
                {
                  lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
                }

                String.init<A>(_immortalCocoaString:count:encoding:)();
                goto LABEL_57;
              }

              if (v81)
              {
                if (v83 == 1)
                {
                  MEMORY[0x1EEE9AC00](IsCF);
                  *(&v74 - 4) = v53;
                  *(&v74 - 3) = v89;
                  *(&v74 - 4) = 1536;
                  *(&v74 - 1) = v58;
                }

                else
                {
                  v69 = [v53 lengthOfBytesUsingEncoding_];
                  MEMORY[0x1EEE9AC00](v69);
                  *(&v74 - 4) = v53;
                  *(&v74 - 3) = v89;
                  *(&v74 - 4) = 134217984;
                  *(&v74 - 1) = v70;
                }

                v71 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                v73 = HIBYTE(v72) & 0xF;
                if ((v72 & 0x2000000000000000) == 0)
                {
                  v73 = v71 & 0xFFFFFFFFFFFFLL;
                }

                if (v73)
                {

                  goto LABEL_57;
                }
              }
            }

            else
            {
              isa = v30;
              v63 = v53;
              String.init(_nativeStorage:)();
              if (v64 || (*&v89[0] = [v63 length]) == 0)
              {

                goto LABEL_15;
              }
            }

            String.init(_cocoaString:)();
            goto LABEL_57;
          }

          isa = v30;
          v65 = [v53 UTF8String];
          if (v65)
          {
            String.init(utf8String:)(v65);
            if (v66)
            {
              goto LABEL_41;
            }

            __break(1u);
LABEL_40:
            isa = v30;
            v81 = 0;
            _CFIndirectTaggedPointerStringGetContents();
            _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
            if (!v67)
            {
              [v53 mutableCopy];
              _bridgeAnyObjectToAny(_:)();

              swift_unknownObjectRelease();
              swift_dynamicCast();
LABEL_57:

              goto LABEL_15;
            }

LABEL_41:

            goto LABEL_15;
          }

          goto LABEL_60;
        }

        v59 = type metadata accessor for EncodingError();
        swift_allocError();
        v61 = v60;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_syp_s13EncodingErrorO7ContextVtMd);
        v61[3] = MEMORY[0x1E69E6158];
        *v61 = 0;
        v61[1] = 0xE000000000000000;
        v62 = v79;
        v5 = v80;
        KeyedEncodingContainer.codingPath.getter();
        DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
        (*(*(v59 - 8) + 104))(v61, *MEMORY[0x1E69E6B30], v59);
        swift_willThrow();
        MEMORY[0x1865D2690](v30, -1, -1);
        outlined destroy of Locale.Components(v90);
        swift_unknownObjectRelease();
        v55 = *(v77 + 8);
        v56 = v62;
      }

      else
      {
        if (one-time initialization token for localizedStringLogger != -1)
        {
          swift_once();
        }

        v35 = type metadata accessor for Logger();
        __swift_project_value_buffer(v35, localizedStringLogger);
        v36 = v80;
        outlined init with copy of LocalizedStringResource(v80, v89);
        v37 = Logger.logObject.getter();
        v38 = static os_log_type_t.error.getter();
        outlined destroy of LocalizedStringResource(v36);
        LODWORD(v76) = v38;
        v80 = v37;
        v39 = os_log_type_enabled(v37, v38);
        v40 = v75;
        if (v39)
        {
          v41 = v5;
          v42 = swift_slowAlloc();
          v43 = swift_slowAlloc();
          *&v89[0] = v43;
          *v42 = 136315394;
          v44 = (v74)(v40, v28);
          v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v45, v89);

          *(v42 + 4) = v46;
          *(v42 + 12) = 1026;
          *(v42 + 14) = MEMORY[0x1865CA7A0](v47);
          v48 = v80;
          _os_log_impl(&dword_18075C000, v80, v76, "Unable to issue sandbox extension for path '%s' (errno: %{public}d)", v42, 0x12u);
          __swift_destroy_boxed_opaque_existential_1(v43);
          MEMORY[0x1865D2690](v43, -1, -1);
          MEMORY[0x1865D2690](v42, -1, -1);
          outlined destroy of Locale.Components(v90);

          swift_unknownObjectRelease();
          (*(v77 + 8))(v79, v41);
          return;
        }

        outlined destroy of Locale.Components(v90);

        swift_unknownObjectRelease();
        v55 = *(v77 + 8);
        v56 = v79;
      }

      v55(v56, v5);
      return;
    }
  }

  __break(1u);
LABEL_60:
  __break(1u);
  os_unfair_lock_unlock((isa + 48));
  __break(1u);
}

__n128 partial apply for specialized closure #1 in __PlistEncoderBPlist.wrapGeneric<A, B>(_:for:_:)(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v2 + 80);
  v7[4] = *(v2 + 64);
  v7[5] = v3;
  v8 = *(v2 + 96);
  v4 = *(v2 + 16);
  v7[0] = *v2;
  v7[1] = v4;
  v5 = *(v2 + 48);
  v7[2] = *(v2 + 32);
  v7[3] = v5;
  specialized closure #1 in __PlistEncoderBPlist.wrapGeneric<A, B>(_:for:_:)(a1, v7);
  return result;
}

unint64_t lazy protocol witness table accessor for type _PlistKeyedEncodingContainerBPlist<LocalizedStringResource.CodingKeys> and conformance _PlistKeyedEncodingContainerBPlist<A>()
{
  result = lazy protocol witness table cache variable for type _PlistKeyedEncodingContainerBPlist<LocalizedStringResource.CodingKeys> and conformance _PlistKeyedEncodingContainerBPlist<A>;
  if (!lazy protocol witness table cache variable for type _PlistKeyedEncodingContainerBPlist<LocalizedStringResource.CodingKeys> and conformance _PlistKeyedEncodingContainerBPlist<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation34_PlistKeyedEncodingContainerBPlist33_BB206CA0B38724D56C5B55865D7B7E02LLVyAA23LocalizedStringResourceV10CodingKeys019_6BD3BCCACE0AF34AB8M12E61AF16B4164LLOGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _PlistKeyedEncodingContainerBPlist<LocalizedStringResource.CodingKeys> and conformance _PlistKeyedEncodingContainerBPlist<A>);
  }

  return result;
}

uint64_t String.LocalizationValue.encode(to:)(void *a1)
{
  v3 = type metadata accessor for String.LocalizationValue.FormatArgument.CodableStorage(0);
  v24 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVySS10FoundationE17LocalizationValueV10CodingKeys33_6BD3BCCACE0AF34AB8D7E61AF16B4164LLOGMd);
  v29 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v23 - v7;
  v9 = *v1;
  v27 = v1[1];
  v10 = v1[2];
  v25 = v9;
  v26 = v10;
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v33 = static LocaleCache.cache;
  v34 = qword_1ED4404B0;
  v11 = LocaleCache._currentAndCache.getter();
  v30 = v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type String.LocalizationValue.CodingKeys and conformance String.LocalizationValue.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v33) = 0;
  v13 = v28;
  KeyedEncodingContainer.encode(_:forKey:)();
  v14 = v8;
  if (v13)
  {
    swift_unknownObjectRelease();
    return (*(v29 + 8))(v8, v6);
  }

  else
  {
    v16 = *(v25 + 16);
    v17 = MEMORY[0x1E69E7CC0];
    if (v16)
    {
      v26 = 0;
      v27 = v14;
      v28 = v6;
      v35 = MEMORY[0x1E69E7CC0];
      v18 = v25;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16, 0);
      v17 = v35;
      v19 = v18 + 32;
      v20 = v24;
      do
      {
        outlined init with copy of String.LocalizationValue.FormatArgument(v19, &v33);
        outlined init with copy of String.LocalizationValue.FormatArgument.Storage(&v33, v32);
        v31[0] = v11;
        v31[1] = v30;
        swift_unknownObjectRetain();
        String.LocalizationValue.FormatArgument.CodableStorage.init(_:fallbackLocale:)(v32, v31, v5);
        outlined destroy of String.LocalizationValue.FormatArgument(&v33);
        v35 = v17;
        v22 = *(v17 + 16);
        v21 = *(v17 + 24);
        if (v22 >= v21 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v21 > 1, v22 + 1, 1);
          v20 = v24;
          v17 = v35;
        }

        *(v17 + 16) = v22 + 1;
        outlined init with take of String.LocalizationValue.FormatArgument.CodableStorage(v5, v17 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v22, type metadata accessor for String.LocalizationValue.FormatArgument.CodableStorage);
        v19 += 112;
        --v16;
      }

      while (v16);
      v14 = v27;
      v6 = v28;
    }

    *&v33 = v17;
    v32[0] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySS10FoundationE17LocalizationValueV14FormatArgumentV14CodableStorageOGMd);
    lazy protocol witness table accessor for type [String.LocalizationValue.FormatArgument.CodableStorage] and conformance <A> [A](&lazy protocol witness table cache variable for type [String.LocalizationValue.FormatArgument.CodableStorage] and conformance <A> [A], &lazy protocol witness table cache variable for type String.LocalizationValue.FormatArgument.CodableStorage and conformance String.LocalizationValue.FormatArgument.CodableStorage);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    swift_unknownObjectRelease();
    (*(v29 + 8))(v14, v6);
  }
}

void type metadata completion function for Duration.TimeFormatStyle.Pattern.Fields()
{
  type metadata accessor for (roundSeconds: FloatingPointRoundingRule)();
  if (v0 <= 0x3F)
  {
    type metadata accessor for (fractionalSecondsLength: Int, roundFractionalSeconds: FloatingPointRoundingRule)();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void *URL.standardizedFileURL.getter@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  ObjectType = swift_getObjectType();
  result = (*(v3 + 400))(v8, ObjectType, v3);
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

NSNumber __swiftcall UInt._bridgeToObjectiveC()()
{
  v1 = v0;
  v2 = objc_allocWithZone(NSNumber);

  return [v2 initWithUnsignedInteger_];
}

uint64_t URLComponents.percentEncodedQuery.getter()
{
  v1 = *(v0 + 128);
  if (v1)
  {
    v2 = *(v0 + 120);
  }

  else
  {
    v2 = 0;
  }

  if (!v1 && (*(v0 + 15) & 1) != 0)
  {
    if (*v0 && (*(*v0 + 192) & 1) == 0)
    {
      v3 = String.subscript.getter();
      v2 = MEMORY[0x1865CAE80](v3);
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t URLQueryItem.name.getter()
{
  v1 = *v0;

  return v1;
}

Foundation::Date __swiftcall Date.init(timeInterval:since:)(Swift::Double timeInterval, Foundation::Date since)
{
  result._time = *v2 + timeInterval;
  *v3 = result._time;
  return result;
}

uint64_t NSData.subscript.getter(uint64_t a1)
{
  v11 = 0;
  v10 = a1;
  v3 = swift_allocObject();
  v3[2] = &v10;
  v3[3] = a1;
  v3[4] = &v11;
  v4 = swift_allocObject();
  *(v4 + 16) = _sSo6NSDataC10FoundationEys5UInt8VSicigySV_So8_NSRangeVSpy10ObjectiveC8ObjCBoolVGtXEfU_TA_0;
  *(v4 + 24) = v3;
  v9[4] = thunk for @callee_guaranteed (@unowned UnsafeRawPointer, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ()partial apply;
  v9[5] = v4;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = thunk for @escaping @callee_guaranteed (@unowned UnsafeRawPointer, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
  v9[3] = &block_descriptor_13_1;
  v5 = _Block_copy(v9);

  [v1 enumerateByteRangesUsingBlock_];
  _Block_release(v5);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v11;

    return v8;
  }

  return result;
}

uint64_t _sSo6NSDataC10FoundationEys5UInt8VSicigySV_So8_NSRangeVSpy10ObjectiveC8ObjCBoolVGtXEfU_TA_0(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v5 = v4[2];
  v6 = *v5 - a2;
  if (__OFSUB__(*v5, a2))
  {
    __break(1u);
    goto LABEL_8;
  }

  v8 = v4[3];
  v7 = v4[4];
  *v5 = v6;
  if (v8 < a2)
  {
    return result;
  }

  if (__OFSUB__(v8, a2))
  {
LABEL_8:
    __break(1u);
    return result;
  }

  if (v8 - a2 < a3)
  {
    *v7 = *(result + v6);
    *a4 = 1;
  }

  return result;
}

NSNumber __swiftcall Int32._bridgeToObjectiveC()()
{
  v1 = v0;
  v2 = objc_allocWithZone(NSNumber);

  return [v2 initWithInt_];
}

ssize_t specialized NSFileHandle.write<A>(contentsOf:)(uint64_t a1, unint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v103[9] = *MEMORY[0x1E69E9840];
  if ((_NSFileHandleIsClosed(v2) & 1) == 0)
  {
    result = _NSFileHandleCanPerformWritingInSwiftOverlay(v2);
    v15 = a2 >> 62;
    if (result)
    {
      result = [v5 fileDescriptor];
      if ((result & 0x80000000) == 0)
      {
        v16 = [v5 fileDescriptor];
        if (v15 > 1)
        {
          if (v15 == 2)
          {
            v46 = *(a1 + 16);
            v47 = *(a1 + 24);
            v48 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
            if (v48)
            {
              v49 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
              v24 = __OFSUB__(v46, v49);
              v50 = v46 - v49;
              if (v24)
              {
LABEL_129:
                __break(1u);
                goto LABEL_130;
              }

              v18 = (v50 + v48);
            }

            else
            {
              v18 = 0;
            }

            v24 = __OFSUB__(v47, v46);
            v59 = v47 - v46;
            if (v24)
            {
LABEL_128:
              __break(1u);
              goto LABEL_129;
            }

            v60 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
            if (v60 >= v59)
            {
              v60 = v59;
            }

            v61 = v18 + v60;
            if (v18)
            {
              v17 = v61;
            }

            else
            {
              v17 = 0;
            }
          }

          else
          {
            *(&v99 + 6) = 0;
            *&v99 = 0;
            v18 = &v99;
            v17 = &v99;
          }
        }

        else if (v15)
        {
          v53 = (a1 >> 32) - a1;
          if (a1 >> 32 < a1)
          {
LABEL_127:
            __break(1u);
            goto LABEL_128;
          }

          v54 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
          if (!v54)
          {
            goto LABEL_71;
          }

          v55 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
          v56 = a1 - v55;
          if (__OFSUB__(a1, v55))
          {
LABEL_130:
            __break(1u);
            goto LABEL_131;
          }

          if (*((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x18) < v53)
          {
            v53 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
          }

          v18 = (v56 + v54);
          if (v56 + v54)
          {
            v17 = v18 + v53;
          }

          else
          {
LABEL_71:
            v18 = 0;
            v17 = 0;
          }
        }

        else
        {
          *&v99 = a1;
          WORD4(v99) = a2;
          BYTE10(v99) = BYTE2(a2);
          BYTE11(v99) = BYTE3(a2);
          BYTE12(v99) = BYTE4(a2);
          BYTE13(v99) = BYTE5(a2);
          v17 = &v99 + BYTE6(a2);
          v18 = &v99;
        }

        return closure #1 in writeSingleRegion #1 <A><A1>(_:) in NSFileHandle.write<A>(contentsOf:)(v18, v17, v16);
      }
    }

    if (v15 <= 1)
    {
      if (!v15)
      {
        *&v99 = a1;
        WORD4(v99) = a2;
        BYTE10(v99) = BYTE2(a2);
        BYTE11(v99) = BYTE3(a2);
        BYTE12(v99) = BYTE4(a2);
        BYTE13(v99) = BYTE5(a2);
        v19 = &v99 + BYTE6(a2);
LABEL_45:
        closure #1 in NSFileHandle.write<A>(contentsOf:)(&v99, v19, v5);
        return outlined consume of Data._Representation(a1, a2);
      }

      if (a1 >> 32 < a1)
      {
LABEL_124:
        __break(1u);
        goto LABEL_125;
      }

      v38 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      if (!v38)
      {
        return result;
      }

      v39 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
      v40 = a1 - v39;
      if (__OFSUB__(a1, v39))
      {
LABEL_126:
        __break(1u);
        goto LABEL_127;
      }

      v41 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x18) >= (a1 >> 32) - a1 ? (a1 >> 32) - a1 : *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v42 = v40 + v38;
      if (!(v40 + v38))
      {
        return result;
      }

      if (v41)
      {
        type metadata accessor for __DataStorage();
        v43 = swift_allocObject();
        *(v43 + 64) = 0;
        *(v43 + 16) = v42;
        *(v43 + 24) = v41;
        *(v43 + 40) = 0;
        *(v43 + 48) = _NSBundleDeallocatingImmortalBundle;
        *(v43 + 56) = 0;
        *(v43 + 32) = v41 | 0x8000000000000000;
        outlined copy of Data._Representation(a1, a2);
        v31 = specialized Data._Representation.init(_:count:)(v43, v41);
        v4 = v44;
        v33 = v44 >> 62;
        if ((v44 >> 62) <= 1)
        {
          if (v33)
          {
LABEL_111:
            v30 = v31;
            v34 = v31 >> 32;
            if (v31 >> 32 < v31)
            {
              __break(1u);
            }

            goto LABEL_112;
          }

LABEL_43:
          *&v99 = v31;
          WORD4(v99) = v4;
          BYTE10(v99) = BYTE2(v4);
          BYTE11(v99) = BYTE3(v4);
          BYTE12(v99) = BYTE4(v4);
          BYTE13(v99) = BYTE5(v4);
          v45 = [objc_allocWithZone(MEMORY[0x1E695DEF0]) initWithBytes:&v99 length:BYTE6(v4)];
          goto LABEL_113;
        }

LABEL_73:
        if (v33 == 2)
        {
          v30 = *(v31 + 16);
          v34 = *(v31 + 24);
          goto LABEL_112;
        }

LABEL_75:
        v45 = [objc_allocWithZone(MEMORY[0x1E695DEF0]) init];
        goto LABEL_113;
      }

      goto LABEL_70;
    }

    if (v15 != 2)
    {
      *(&v99 + 6) = 0;
      *&v99 = 0;
      v19 = &v99;
      goto LABEL_45;
    }

    v20 = *(a1 + 16);
    v21 = *(a1 + 24);
    v22 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    if (v22)
    {
      v23 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
      v24 = __OFSUB__(v20, v23);
      v25 = v20 - v23;
      if (v24)
      {
LABEL_125:
        __break(1u);
        goto LABEL_126;
      }

      v24 = __OFSUB__(v21, v20);
      v26 = v21 - v20;
      if (!v24)
      {
        if (*((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x18) >= v26)
        {
          v10 = v26;
        }

        else
        {
          v10 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
        }

        v27 = v25 + v22;
        if (!(v25 + v22))
        {
          return result;
        }

        if (v10)
        {
          type metadata accessor for __DataStorage();
          v28 = swift_allocObject();
          if (v10 > 0x3FFFFFFFFFFFFFFELL)
          {
LABEL_131:
            __break(1u);
            goto LABEL_132;
          }

          *(v28 + 64) = 0;
          *(v28 + 16) = v27;
          *(v28 + 24) = v10;
          *(v28 + 40) = 0;
          *(v28 + 48) = _NSBundleDeallocatingImmortalBundle;
          *(v28 + 56) = 0;
          *(v28 + 32) = v10 | 0x8000000000000000;
          v29 = v28;
          outlined copy of Data._Representation(a1, a2);
          v30 = specialized Data._Representation.init(_:count:)(v29, v10);
          v31 = v30;
          v4 = v32;
          v33 = v32 >> 62;
          if ((v32 >> 62) <= 1)
          {
            if (!v33)
            {
              goto LABEL_43;
            }

            v30 = v30;
            v34 = v31 >> 32;
            if (v31 >> 32 < v31)
            {
              __break(1u);
LABEL_31:
              v35 = v10;
              v36 = String.init(_nativeStorage:)();
              if (v37)
              {
                a1 = v36;
                v13 = v37;

                goto LABEL_86;
              }

              if (![v35 length])
              {

                goto LABEL_51;
              }

              v57 = String.init(_cocoaString:)();
LABEL_85:
              a1 = v57;
              v13 = v58;
              goto LABEL_86;
            }

LABEL_112:
            v45 = __DataStorage.bridgedReference(_:)(v30, v34);
LABEL_113:
            v84 = v45;
            outlined consume of Data._Representation(v31, v4);
            *&v99 = 0;
            v85 = [v5 writeData:v84 error:&v99];

            if (v85)
            {
              v86 = v99;
              return outlined consume of Data._Representation(a1, a2);
            }

            if (v99)
            {
              v99;
LABEL_119:
              swift_willThrow();
              return outlined consume of Data._Representation(a1, a2);
            }

            if (one-time initialization token for _nilObjCError == -1)
            {
LABEL_118:
              v87 = _nilObjCError;
              goto LABEL_119;
            }

LABEL_132:
            swift_once();
            goto LABEL_118;
          }

          goto LABEL_73;
        }

LABEL_70:
        outlined copy of Data._Representation(a1, a2);
        v31 = 0;
        v4 = 0xC000000000000000;
        goto LABEL_75;
      }
    }

    else if (!__OFSUB__(v21, v20))
    {
      return result;
    }

    __break(1u);
    lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
    v57 = String.init<A>(_immortalCocoaString:count:encoding:)();
    goto LABEL_85;
  }

  isTaggedPointer = _objc_isTaggedPointer(@"NSDebugDescription");
  v9 = @"NSDebugDescription";
  v10 = v9;
  if (!isTaggedPointer)
  {
    goto LABEL_15;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v9);
  if (!TaggedPointerTag)
  {
    goto LABEL_55;
  }

  if (TaggedPointerTag != 22)
  {
    if (TaggedPointerTag == 2)
    {
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      a1 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v13 = v12;

LABEL_86:
      *&v99 = a1;
      *(&v99 + 1) = v13;
      v62 = MEMORY[0x1E69E6158];
      AnyHashable.init<A>(_:)();
      v103[8] = v62;
      v103[5] = 0xD00000000000002ELL;
      v103[6] = 0x800000018147DC60;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd);
      v31 = static _DictionaryStorage.allocate(capacity:)();
      a2 = &v99;
      outlined init with copy of (AnyHashable, Any)(v103, &v99);

      outlined destroy of TermOfAddress?(v103, &_ss11AnyHashableV_yptMd);
      v63 = specialized __RawDictionaryStorage.find<A>(_:)(&v99);
      v65 = v64;

      if (v65)
      {
LABEL_122:
        __break(1u);
      }

      else
      {
        a1 = v31 + 64;
        *(v31 + 64 + ((v63 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v63;
        v66 = *(v31 + 48) + 40 * v63;
        v67 = v99;
        v68 = v100;
        *(v66 + 32) = *&v101[0];
        *v66 = v67;
        *(v66 + 16) = v68;
        outlined init with take of Any((v101 + 8), (*(v31 + 56) + 32 * v63));
        v69 = *(v31 + 16);
        if (!__OFADD__(v69, 1))
        {
          *(v31 + 16) = v69 + 1;
          v88 = v4;
          if (v69 == -1)
          {
            v70 = MEMORY[0x1E69E7CC8];
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd);
            v70 = static _DictionaryStorage.allocate(capacity:)();
          }

          v71 = 1 << *(v31 + 32);
          v72 = -1;
          if (v71 < 64)
          {
            v72 = ~(-1 << v71);
          }

          v5 = v72 & *(v31 + 64);
          v4 = (v71 + 63) >> 6;

          v73 = 0;
          v89 = v31;
          while (v5)
          {
            a2 = v73;
LABEL_101:
            v75 = __clz(__rbit64(v5)) | (a2 << 6);
            outlined init with copy of AnyHashable(*(v31 + 48) + 40 * v75, &v99);
            outlined init with copy of Any(*(v31 + 56) + 32 * v75, v101 + 8);
            v97[0] = v101[0];
            v97[1] = v101[1];
            v98 = v102;
            v96[0] = v99;
            v96[1] = v100;
            outlined init with copy of AnyHashable(v96, v91);
            if (!swift_dynamicCast())
            {
              outlined destroy of TermOfAddress?(v96, &_ss11AnyHashableV3key_yp5valuetMd);

LABEL_107:
              v82 = objc_allocWithZone(NSError);
              v83 = @"NSCocoaErrorDomain";
              [v82 initWithDomain:v83 code:512 userInfo:{_NativeDictionary.bridged()(), v88}];

              swift_unknownObjectRelease();

              return swift_willThrow();
            }

            v5 &= v5 - 1;
            outlined init with copy of Any(v97 + 8, v92);
            outlined destroy of TermOfAddress?(v96, &_ss11AnyHashableV3key_yp5valuetMd);
            v93 = v90;
            outlined init with take of Any(v92, v94);
            v76 = v93;
            outlined init with take of Any(v94, v95);
            outlined init with take of Any(v95, &v93);
            v77 = specialized __RawDictionaryStorage.find<A>(_:)(v76, *(&v76 + 1));
            v78 = v77;
            if (v79)
            {
              *(v70[6] + 16 * v77) = v76;

              v74 = (v70[7] + 32 * v78);
              __swift_destroy_boxed_opaque_existential_1(v74);
              outlined init with take of Any(&v93, v74);
            }

            else
            {
              if (v70[2] >= v70[3])
              {
                __break(1u);
LABEL_121:
                __break(1u);
                goto LABEL_122;
              }

              *(v70 + ((v77 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v77;
              *(v70[6] + 16 * v77) = v76;
              outlined init with take of Any(&v93, (v70[7] + 32 * v77));
              v80 = v70[2];
              v24 = __OFADD__(v80, 1);
              v81 = v80 + 1;
              if (v24)
              {
                goto LABEL_121;
              }

              v70[2] = v81;
            }

            v73 = a2;
            v31 = v89;
          }

          while (1)
          {
            a2 = v73 + 1;
            if (__OFADD__(v73, 1))
            {
              break;
            }

            if (a2 >= v4)
            {

              goto LABEL_107;
            }

            v5 = *(a1 + 8 * a2);
            ++v73;
            if (v5)
            {
              goto LABEL_101;
            }
          }

          __break(1u);
          goto LABEL_111;
        }
      }

      __break(1u);
      goto LABEL_124;
    }

LABEL_15:
    LOBYTE(v96[0]) = 0;
    *&v99 = 0;
    LOBYTE(v93) = 0;
    v91[40] = 0;
    if (__CFStringIsCF())
    {

LABEL_51:
      a1 = 0;
      v13 = 0xE000000000000000;
      goto LABEL_86;
    }

    goto LABEL_31;
  }

  result = [v10 UTF8String];
  if (result)
  {
    v51 = String.init(utf8String:)(result);
    if (v52)
    {
LABEL_56:
      a1 = v51;
      v13 = v52;

      goto LABEL_86;
    }

    __break(1u);
LABEL_55:
    LOWORD(v93) = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v51 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v52)
    {
      [v10 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v13 = *(&v96[0] + 1);
      a1 = *&v96[0];
      goto LABEL_86;
    }

    goto LABEL_56;
  }

  __break(1u);
  return result;
}

ssize_t closure #1 in writeSingleRegion #1 <A><A1>(_:) in NSFileHandle.write<A>(contentsOf:)(ssize_t __buf, uint64_t a2, int __fd)
{
  if (__buf)
  {
    v3 = __buf;
    v4 = a2 - __buf;
    if (a2 - __buf >= 1)
    {
      do
      {
        while (1)
        {
          __buf = write(__fd, v3, v4);
          if (__buf < 0)
          {
            break;
          }

          v3 += __buf;
          v6 = v4 <= __buf;
          v4 -= __buf;
          if (v6)
          {
            return __buf;
          }
        }
      }

      while (MEMORY[0x1865CA7A0]() == 35);
      v7 = MEMORY[0x1865CA7A0]();
      __buf = _NSErrorWithFilePathAndErrno(v7, 0, 0);
      if (__buf)
      {
        return swift_willThrow();
      }

      else
      {
        __break(1u);
      }
    }
  }

  return __buf;
}

uint64_t PredicateOperatorForCustomSelector(uint64_t a1)
{
  v1 = [(NSString *)[NSMutableString alloc] initWithString:a1];
  [(NSMutableString *)v1 appendString:@":"];
  v2 = NSSelectorFromString(&v1->super);

  v3 = [NSCustomPredicateOperator alloc];

  return [(NSCustomPredicateOperator *)v3 initWithCustomSelector:v2 modifier:0];
}

uint64_t _NSSwiftLocale.displayName(forKey:value:)(void *a1, uint64_t a2)
{
  v209[4] = *MEMORY[0x1E69E9840];
  outlined init with copy of Any(a2, v209);
  if (!swift_dynamicCast())
  {
    return 0;
  }

  v206 = v207;
  v4 = *MEMORY[0x1E695D9A8];
  isTaggedPointer = _objc_isTaggedPointer(*MEMORY[0x1E695D9A8]);
  v6 = v4;
  v7 = v6;
  if (!isTaggedPointer)
  {
    goto LABEL_7;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v6);
  switch(TaggedPointerTag)
  {
    case 0:
      goto LABEL_17;
    case 0x16:
      v15 = [v7 UTF8String];
      if (!v15)
      {
        __break(1u);
        goto LABEL_211;
      }

      v16 = String.init(utf8String:)(v15);
      if (v17)
      {
        goto LABEL_18;
      }

      __break(1u);
LABEL_17:
      _CFIndirectTaggedPointerStringGetContents();
      v16 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v17)
      {
        [v7 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v9 = v207;
        v11 = v208;
        goto LABEL_23;
      }

LABEL_18:
      v9 = v16;
      v11 = v17;

      goto LABEL_23;
    case 2:
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      v9 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v11 = v10;

      goto LABEL_23;
  }

LABEL_7:
  LOBYTE(v207) = 0;
  v209[0] = 0;
  if (!__CFStringIsCF())
  {
    v12 = v7;
    v13 = String.init(_nativeStorage:)();
    if (v14)
    {
      v9 = v13;
      v11 = v14;

      goto LABEL_23;
    }

    v209[0] = [v12 length];
    if (v209[0])
    {
      goto LABEL_22;
    }

LABEL_13:
    v9 = 0;
    v11 = 0xE000000000000000;
    goto LABEL_23;
  }

  if (!v209[0])
  {

    goto LABEL_13;
  }

LABEL_22:
  v9 = String.init(_cocoaString:)();
  v11 = v18;
LABEL_23:
  v19 = _objc_isTaggedPointer(a1);
  v20 = a1;
  v21 = v20;
  if (!v19)
  {
    goto LABEL_28;
  }

  v22 = _objc_getTaggedPointerTag(v20);
  if (!v22)
  {
    goto LABEL_37;
  }

  if (v22 == 22)
  {
    v29 = [v21 UTF8String];
    if (v29)
    {
      v30 = String.init(utf8String:)(v29);
      if (v31)
      {
LABEL_38:
        v23 = v30;
        v25 = v31;

        goto LABEL_43;
      }

      __break(1u);
LABEL_37:
      _CFIndirectTaggedPointerStringGetContents();
      v30 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v31)
      {
        [v21 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v23 = v207;
        v25 = v208;
        goto LABEL_43;
      }

      goto LABEL_38;
    }

LABEL_211:
    __break(1u);
    goto LABEL_212;
  }

  if (v22 != 2)
  {
LABEL_28:
    LOBYTE(v207) = 0;
    v209[0] = 0;
    if (__CFStringIsCF())
    {
      v23 = v209[0];
      if (!v209[0])
      {

        v25 = 0xE000000000000000;
        goto LABEL_43;
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

        goto LABEL_43;
      }

      v209[0] = [v26 length];
      if (!v209[0])
      {

        v23 = 0;
        v25 = 0xE000000000000000;
        goto LABEL_43;
      }
    }

    v23 = String.init(_cocoaString:)();
    v25 = v32;
    goto LABEL_43;
  }

  MEMORY[0x1EEE9AC00](v22);
  v23 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
  v25 = v24;

LABEL_43:
  if (v9 == v23 && v11 == v25)
  {

LABEL_47:
    v34 = *&v2[OBJC_IVAR____NSSwiftLocale_locale + 8];
    ObjectType = swift_getObjectType();
    v36 = *(v34 + 72);
    swift_unknownObjectRetain();
    v37 = v36(v206, v208, ObjectType, v34);
    swift_unknownObjectRelease();

    return v37;
  }

  v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v33)
  {
    goto LABEL_47;
  }

  v39 = *MEMORY[0x1E695D9B0];
  v40 = _objc_isTaggedPointer(*MEMORY[0x1E695D9B0]);
  v41 = v39;
  v42 = v41;
  if (!v40)
  {
    goto LABEL_54;
  }

  v43 = _objc_getTaggedPointerTag(v41);
  switch(v43)
  {
    case 0:
      goto LABEL_64;
    case 0x16:
      v50 = [v42 UTF8String];
      if (v50)
      {
        v51 = String.init(utf8String:)(v50);
        if (v52)
        {
          goto LABEL_65;
        }

        __break(1u);
LABEL_64:
        _CFIndirectTaggedPointerStringGetContents();
        v51 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
        if (!v52)
        {
          [v42 mutableCopy];
          _bridgeAnyObjectToAny(_:)();

          swift_unknownObjectRelease();
          swift_dynamicCast();
          v44 = v207;
          v46 = v208;
          goto LABEL_70;
        }

LABEL_65:
        v44 = v51;
        v46 = v52;

        goto LABEL_70;
      }

LABEL_212:
      __break(1u);
      goto LABEL_213;
    case 2:
      MEMORY[0x1EEE9AC00](v43);
      v44 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v46 = v45;

      goto LABEL_70;
  }

LABEL_54:
  LOBYTE(v207) = 0;
  v209[0] = 0;
  if (!__CFStringIsCF())
  {
    v47 = v42;
    v48 = String.init(_nativeStorage:)();
    if (v49)
    {
      v44 = v48;
      v46 = v49;

      goto LABEL_70;
    }

    v209[0] = [v47 length];
    if (v209[0])
    {
      goto LABEL_69;
    }

LABEL_60:
    v44 = 0;
    v46 = 0xE000000000000000;
    goto LABEL_70;
  }

  if (!v209[0])
  {

    goto LABEL_60;
  }

LABEL_69:
  v44 = String.init(_cocoaString:)();
  v46 = v53;
LABEL_70:
  v54 = v21;
  v55 = v54;
  if (!v19)
  {
    goto LABEL_75;
  }

  v56 = _objc_getTaggedPointerTag(v54);
  if (!v56)
  {
    goto LABEL_84;
  }

  if (v56 == 22)
  {
    v63 = [v55 UTF8String];
    if (v63)
    {
      v64 = String.init(utf8String:)(v63);
      if (v65)
      {
LABEL_85:
        v57 = v64;
        v59 = v65;

        goto LABEL_90;
      }

      __break(1u);
LABEL_84:
      _CFIndirectTaggedPointerStringGetContents();
      v64 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v65)
      {
        [v55 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v57 = v207;
        v59 = v208;
        goto LABEL_90;
      }

      goto LABEL_85;
    }

LABEL_213:
    __break(1u);
    goto LABEL_214;
  }

  if (v56 != 2)
  {
LABEL_75:
    LOBYTE(v207) = 0;
    v209[0] = 0;
    if (__CFStringIsCF())
    {
      v57 = v209[0];
      if (!v209[0])
      {

        v59 = 0xE000000000000000;
        goto LABEL_90;
      }
    }

    else
    {
      v60 = v55;
      v61 = String.init(_nativeStorage:)();
      if (v62)
      {
        v57 = v61;
        v59 = v62;

        goto LABEL_90;
      }

      v209[0] = [v60 length];
      if (!v209[0])
      {

        v57 = 0;
        v59 = 0xE000000000000000;
        goto LABEL_90;
      }
    }

    v57 = String.init(_cocoaString:)();
    v59 = v66;
    goto LABEL_90;
  }

  MEMORY[0x1EEE9AC00](v56);
  v57 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
  v59 = v58;

LABEL_90:
  if (v44 == v57 && v46 == v59)
  {

    goto LABEL_94;
  }

  v67 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v67)
  {
LABEL_94:
    a1 = String._bridgeToObjectiveCImpl()();

    v68 = [v2 localizedStringForLanguageCode_];
    swift_unknownObjectRelease();
    if (!v68)
    {
      return 0;
    }

    v2 = _objc_isTaggedPointer(v68);
    v69 = v68;
    v70 = v69;
    if (!v2)
    {
      goto LABEL_100;
    }

    v71 = _objc_getTaggedPointerTag(v69);
    if (!v71)
    {
      _CFIndirectTaggedPointerStringGetContents();
      v91 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (v92)
      {
        v93 = v91;
      }

      else
      {
        [v70 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v93 = v207;
      }

      goto LABEL_165;
    }

    if (v71 != 22)
    {
      if (v71 == 2)
      {
        MEMORY[0x1EEE9AC00](v71);
        v72 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

        return v72;
      }

LABEL_100:
      v209[0] = 0;
      if (__CFStringIsCF())
      {
        if (v209[0])
        {
LABEL_135:
          v97 = String.init(_cocoaString:)();
LABEL_164:
          v93 = v97;
LABEL_165:

          return v93;
        }
      }

      else
      {
        v81 = v70;
        v82 = String.init(_nativeStorage:)();
        if (v83)
        {
          v37 = v82;

          return v37;
        }

        v209[0] = [v81 length];
        if (v209[0])
        {
          goto LABEL_135;
        }
      }

      return 0;
    }

    v84 = [v70 UTF8String];
    if (v84)
    {
      v85 = String.init(utf8String:)(v84);
      if (v86)
      {
        v87 = v85;

        return v87;
      }

      goto LABEL_215;
    }

LABEL_214:
    __break(1u);
LABEL_215:
    __break(1u);
    goto LABEL_216;
  }

  v73 = *MEMORY[0x1E695D978];
  v74 = _objc_isTaggedPointer(*MEMORY[0x1E695D978]);
  v75 = v73;
  v76 = v75;
  if (!v74)
  {
    goto LABEL_108;
  }

  v77 = _objc_getTaggedPointerTag(v75);
  switch(v77)
  {
    case 0:
      goto LABEL_129;
    case 0x16:
      v94 = [v76 UTF8String];
      if (!v94)
      {
LABEL_216:
        __break(1u);
        goto LABEL_217;
      }

      v95 = String.init(utf8String:)(v94);
      if (v96)
      {
        goto LABEL_130;
      }

      __break(1u);
LABEL_129:
      _CFIndirectTaggedPointerStringGetContents();
      v95 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v96)
      {
        [v76 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v78 = v207;
        v80 = v208;
        goto LABEL_137;
      }

LABEL_130:
      v78 = v95;
      v80 = v96;

      goto LABEL_137;
    case 2:
      MEMORY[0x1EEE9AC00](v77);
      v78 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v80 = v79;

      goto LABEL_137;
  }

LABEL_108:
  LOBYTE(v207) = 0;
  v209[0] = 0;
  if (!__CFStringIsCF())
  {
    v88 = v76;
    v89 = String.init(_nativeStorage:)();
    if (v90)
    {
      v78 = v89;
      v80 = v90;

      goto LABEL_137;
    }

    v209[0] = [v88 length];
    if (v209[0])
    {
      goto LABEL_136;
    }

LABEL_125:
    v78 = 0;
    v80 = 0xE000000000000000;
    goto LABEL_137;
  }

  if (!v209[0])
  {

    goto LABEL_125;
  }

LABEL_136:
  v78 = String.init(_cocoaString:)();
  v80 = v98;
LABEL_137:
  v99 = v55;
  v100 = v99;
  if (v19)
  {
    v101 = _objc_getTaggedPointerTag(v99);
    if (v101)
    {
      if (v101 != 22)
      {
        if (v101 == 2)
        {
          MEMORY[0x1EEE9AC00](v101);
          v102 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v104 = v103;

          goto LABEL_157;
        }

        goto LABEL_142;
      }

      v108 = [v100 UTF8String];
      if (!v108)
      {
LABEL_217:
        __break(1u);
        goto LABEL_218;
      }

      v109 = String.init(utf8String:)(v108);
      if (v110)
      {
LABEL_152:
        v102 = v109;
        v104 = v110;

        goto LABEL_157;
      }

      __break(1u);
    }

    _CFIndirectTaggedPointerStringGetContents();
    v109 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v110)
    {
      [v100 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v102 = v207;
      v104 = v208;
      goto LABEL_157;
    }

    goto LABEL_152;
  }

LABEL_142:
  v209[0] = 0;
  if (__CFStringIsCF())
  {
    v102 = v209[0];
    if (!v209[0])
    {

      v104 = 0xE000000000000000;
      goto LABEL_157;
    }
  }

  else
  {
    v105 = v100;
    v106 = String.init(_nativeStorage:)();
    if (v107)
    {
      v102 = v106;
      v104 = v107;

      goto LABEL_157;
    }

    v209[0] = [v105 length];
    if (!v209[0])
    {

      v102 = 0;
      v104 = 0xE000000000000000;
      goto LABEL_157;
    }
  }

  v102 = String.init(_cocoaString:)();
  v104 = v111;
LABEL_157:
  if (v78 == v102 && v80 == v104)
  {

LABEL_161:
    v113 = String._bridgeToObjectiveCImpl()();

    v114 = [v2 localizedStringForCountryCode_];
    goto LABEL_162;
  }

  v112 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v112)
  {
    goto LABEL_161;
  }

  v115 = static String._unconditionallyBridgeFromObjectiveC(_:)(*MEMORY[0x1E695D9E8]);
  v117 = v116;
  if (v115 == static String._unconditionallyBridgeFromObjectiveC(_:)(a1) && v117 == v118)
  {

LABEL_170:
    v120 = String._bridgeToObjectiveCImpl()();

    v114 = [v2 localizedStringForScriptCode_];
    goto LABEL_162;
  }

  v119 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v119)
  {
    goto LABEL_170;
  }

  v121 = static String._unconditionallyBridgeFromObjectiveC(_:)(*MEMORY[0x1E695DA10]);
  v123 = v122;
  if (v121 == static String._unconditionallyBridgeFromObjectiveC(_:)(a1) && v123 == v124)
  {

LABEL_175:
    v126 = String._bridgeToObjectiveCImpl()();

    v114 = [v2 localizedStringForVariantCode_];
    goto LABEL_162;
  }

  v125 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v125)
  {
    goto LABEL_175;
  }

  v127 = static String._unconditionallyBridgeFromObjectiveC(_:)(*MEMORY[0x1E695D998]);
  v129 = v128;
  if (v127 == static String._unconditionallyBridgeFromObjectiveC(_:)(a1) && v129 == v130)
  {
LABEL_178:

    goto LABEL_180;
  }

  v131 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v131)
  {
    goto LABEL_180;
  }

  v132 = static String._unconditionallyBridgeFromObjectiveC(_:)(*MEMORY[0x1E695D960]);
  v134 = v133;
  if (v132 == static String._unconditionallyBridgeFromObjectiveC(_:)(a1) && v134 == v135)
  {
    goto LABEL_184;
  }

  v136 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v136)
  {
    goto LABEL_186;
  }

  v138 = static String._unconditionallyBridgeFromObjectiveC(_:)(*MEMORY[0x1E695D958]);
  v140 = v139;
  if (v138 == static String._unconditionallyBridgeFromObjectiveC(_:)(a1) && v140 == v141)
  {
LABEL_184:

LABEL_186:
    v137 = String._bridgeToObjectiveCImpl()();

    v114 = [v2 localizedStringForCalendarIdentifier_];
    goto LABEL_162;
  }

  v142 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v142)
  {
    goto LABEL_186;
  }

  v143 = static String._unconditionallyBridgeFromObjectiveC(_:)(*MEMORY[0x1E695D968]);
  v145 = v144;
  if (v143 == static String._unconditionallyBridgeFromObjectiveC(_:)(a1) && v145 == v146)
  {

LABEL_194:
    v148 = String._bridgeToObjectiveCImpl()();

    v114 = [v2 localizedStringForCollationIdentifier_];
    goto LABEL_162;
  }

  v147 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v147)
  {
    goto LABEL_194;
  }

  v149 = static String._unconditionallyBridgeFromObjectiveC(_:)(*MEMORY[0x1E695DA08]);
  v151 = v150;
  if (v149 == static String._unconditionallyBridgeFromObjectiveC(_:)(a1) && v151 == v152)
  {
    goto LABEL_178;
  }

  v153 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v153)
  {
    goto LABEL_180;
  }

  v154 = static String._unconditionallyBridgeFromObjectiveC(_:)(*MEMORY[0x1E695D9B8]);
  v156 = v155;
  if (v154 == static String._unconditionallyBridgeFromObjectiveC(_:)(a1) && v156 == v157)
  {
    goto LABEL_178;
  }

  v158 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v158)
  {
    goto LABEL_180;
  }

  v159 = static String._unconditionallyBridgeFromObjectiveC(_:)(*MEMORY[0x1E695D990]);
  v161 = v160;
  if (v159 == static String._unconditionallyBridgeFromObjectiveC(_:)(a1) && v161 == v162)
  {
    goto LABEL_178;
  }

  v163 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v163)
  {
    goto LABEL_180;
  }

  v164 = static String._unconditionallyBridgeFromObjectiveC(_:)(*MEMORY[0x1E695D9A0]);
  v166 = v165;
  if (v164 == static String._unconditionallyBridgeFromObjectiveC(_:)(a1) && v166 == v167)
  {
    goto LABEL_178;
  }

  v168 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v168)
  {
    goto LABEL_180;
  }

  v169 = static String._unconditionallyBridgeFromObjectiveC(_:)(*MEMORY[0x1E695D988]);
  v171 = v170;
  if (v169 == static String._unconditionallyBridgeFromObjectiveC(_:)(a1) && v171 == v172)
  {

LABEL_219:
    v174 = String._bridgeToObjectiveCImpl()();

    v114 = [v2 localizedStringForCurrencySymbol_];
    goto LABEL_162;
  }

LABEL_218:
  v173 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v173)
  {
    goto LABEL_219;
  }

  v175 = static String._unconditionallyBridgeFromObjectiveC(_:)(*MEMORY[0x1E695D980]);
  v177 = v176;
  if (v175 == static String._unconditionallyBridgeFromObjectiveC(_:)(a1) && v177 == v178)
  {

LABEL_224:
    v180 = String._bridgeToObjectiveCImpl()();

    v114 = [v2 localizedStringForCurrencyCode_];
    goto LABEL_162;
  }

  v179 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v179)
  {
    goto LABEL_224;
  }

  v181 = static String._unconditionallyBridgeFromObjectiveC(_:)(*MEMORY[0x1E695D970]);
  v183 = v182;
  if (v181 != static String._unconditionallyBridgeFromObjectiveC(_:)(a1) || v183 != v184)
  {
    v185 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v185)
    {
      goto LABEL_229;
    }

    v187 = static String._unconditionallyBridgeFromObjectiveC(_:)(*MEMORY[0x1E695D9D8]);
    v189 = v188;
    if (v187 != static String._unconditionallyBridgeFromObjectiveC(_:)(a1) || v189 != v190)
    {
      v191 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v191)
      {
        return 0;
      }

      v192 = static String._unconditionallyBridgeFromObjectiveC(_:)(*MEMORY[0x1E695D9E0]);
      v194 = v193;
      if (v192 != static String._unconditionallyBridgeFromObjectiveC(_:)(a1) || v194 != v195)
      {
        v196 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v196)
        {
          return 0;
        }

        v197 = static String._unconditionallyBridgeFromObjectiveC(_:)(*MEMORY[0x1E695D948]);
        v199 = v198;
        if (v197 != static String._unconditionallyBridgeFromObjectiveC(_:)(a1) || v199 != v200)
        {
          v201 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v201)
          {
            return 0;
          }

          v202 = static String._unconditionallyBridgeFromObjectiveC(_:)(*MEMORY[0x1E695D950]);
          v204 = v203;
          if (v202 != static String._unconditionallyBridgeFromObjectiveC(_:)(a1) || v204 != v205)
          {
            _stringCompareWithSmolCheck(_:_:expecting:)();
          }
        }
      }
    }

LABEL_180:

    return 0;
  }

LABEL_229:
  v186 = String._bridgeToObjectiveCImpl()();

  v114 = [v2 localizedStringForCollatorIdentifier_];
LABEL_162:
  v70 = v114;
  swift_unknownObjectRelease();
  if (v70)
  {
    v97 = static String._unconditionallyBridgeFromObjectiveC(_:)(v70);
    goto LABEL_164;
  }

  return 0;
}