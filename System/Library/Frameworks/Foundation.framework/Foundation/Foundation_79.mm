void _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVys8DurationV10FoundationE16UnitsFormatStyleV4UnitVG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab9VKXEfU_s8i3V10j3E16klm2V4N5V_TG5AOxSbs5Error_pRi_zRi0_zlyANIsgndzo_Tf1nc_n(void *a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(char *))
{
  v43 = a4;
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      bzero(a1, 8 * a2);
    }

    v41 = a1;
    v8 = 0;
    v9 = 0;
    v10 = a3;
    v11 = a3 + 56;
    v12 = 1 << *(a3 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(a3 + 56);
    v15 = (v12 + 63) >> 6;
    while (1)
    {
      if (!v14)
      {
        v17 = v9;
        v18 = v10;
        while (1)
        {
          v9 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            break;
          }

          if (v9 >= v15)
          {
            goto LABEL_19;
          }

          v19 = *(v11 + 8 * v9);
          ++v17;
          if (v19)
          {
            v16 = __clz(__rbit64(v19));
            v14 = (v19 - 1) & v19;
            goto LABEL_14;
          }
        }

        __break(1u);
        goto LABEL_49;
      }

      v16 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_14:
      v18 = v16 | (v9 << 6);
      v42[0] = *(*(v10 + 48) + v18);
      v20 = v43(v42);
      if (v4)
      {
        v43 = v4;

        return;
      }

      if (v20)
      {
        *(v41 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
        v21 = __OFADD__(v8++, 1);
        if (v21)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_19:
    v43 = v4;
    if (!v8)
    {
LABEL_47:

      return;
    }

    if (v8 == *(v18 + 16))
    {
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCys8DurationV10FoundationE16UnitsFormatStyleV4UnitVGMd);
    v22 = static _SetStorage.allocate(capacity:)();
    v23 = v22;
    if (a2)
    {
      v24 = v41;
      v25 = *v41;
    }

    else
    {
      v25 = 0;
      v24 = v41;
    }

    v26 = 0;
    v27 = v22 + 56;
    while (v25)
    {
      v28 = __clz(__rbit64(v25));
      v25 &= v25 - 1;
LABEL_35:
      v31 = *(*(v18 + 48) + (v28 | (v26 << 6)));
      Hasher.init(_seed:)();
      MEMORY[0x1865CD060](v31);
      v32 = Hasher._finalize()();
      v33 = -1 << *(v23 + 32);
      v34 = v32 & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v27 + 8 * (v34 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v33) >> 6;
        while (++v35 != v38 || (v37 & 1) == 0)
        {
          v39 = v35 == v38;
          if (v35 == v38)
          {
            v35 = 0;
          }

          v37 |= v39;
          v40 = *(v27 + 8 * v35);
          if (v40 != -1)
          {
            v36 = __clz(__rbit64(~v40)) + (v35 << 6);
            goto LABEL_45;
          }
        }

        goto LABEL_50;
      }

      v36 = __clz(__rbit64((-1 << v34) & ~*(v27 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_45:
      *(v27 + ((v36 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v36;
      *(*(v23 + 48) + v36) = v31;
      ++*(v23 + 16);
      v21 = __OFSUB__(v8--, 1);
      if (v21)
      {
        goto LABEL_52;
      }

      v24 = v41;
      if (!v8)
      {
        goto LABEL_47;
      }
    }

    v29 = v26;
    while (1)
    {
      v26 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v26 >= a2)
      {
        goto LABEL_47;
      }

      v30 = v24[v26];
      ++v29;
      if (v30)
      {
        v28 = __clz(__rbit64(v30));
        v25 = (v30 - 1) & v30;
        goto LABEL_35;
      }
    }

LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
  }

  __break(1u);
LABEL_52:
  __break(1u);
}

uint64_t specialized static Duration.UnitsFormatStyle.FractionalPartDisplayStrategy.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (a1[1] != a2[1])
  {
    return 0;
  }

  v4 = type metadata accessor for Duration.UnitsFormatStyle.FractionalPartDisplayStrategy(0);
  if ((static FloatingPointRoundingRule.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v5 = *(v4 + 28);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 8);
  if (v7)
  {
    if ((v9 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      v9 = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  return 1;
}

unint64_t lazy protocol witness table accessor for type Duration.UnitsFormatStyle.FractionalPartDisplayStrategy.CodingKeys and conformance Duration.UnitsFormatStyle.FractionalPartDisplayStrategy.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.FractionalPartDisplayStrategy.CodingKeys and conformance Duration.UnitsFormatStyle.FractionalPartDisplayStrategy.CodingKeys;
  if (!lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.FractionalPartDisplayStrategy.CodingKeys and conformance Duration.UnitsFormatStyle.FractionalPartDisplayStrategy.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.FractionalPartDisplayStrategy.CodingKeys and conformance Duration.UnitsFormatStyle.FractionalPartDisplayStrategy.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.FractionalPartDisplayStrategy.CodingKeys and conformance Duration.UnitsFormatStyle.FractionalPartDisplayStrategy.CodingKeys;
  if (!lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.FractionalPartDisplayStrategy.CodingKeys and conformance Duration.UnitsFormatStyle.FractionalPartDisplayStrategy.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.FractionalPartDisplayStrategy.CodingKeys and conformance Duration.UnitsFormatStyle.FractionalPartDisplayStrategy.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.FractionalPartDisplayStrategy.CodingKeys and conformance Duration.UnitsFormatStyle.FractionalPartDisplayStrategy.CodingKeys;
  if (!lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.FractionalPartDisplayStrategy.CodingKeys and conformance Duration.UnitsFormatStyle.FractionalPartDisplayStrategy.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.FractionalPartDisplayStrategy.CodingKeys and conformance Duration.UnitsFormatStyle.FractionalPartDisplayStrategy.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.FractionalPartDisplayStrategy.CodingKeys and conformance Duration.UnitsFormatStyle.FractionalPartDisplayStrategy.CodingKeys;
  if (!lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.FractionalPartDisplayStrategy.CodingKeys and conformance Duration.UnitsFormatStyle.FractionalPartDisplayStrategy.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.FractionalPartDisplayStrategy.CodingKeys and conformance Duration.UnitsFormatStyle.FractionalPartDisplayStrategy.CodingKeys);
  }

  return result;
}

uint64_t specialized static Duration.UnitsFormatStyle.== infix(_:_:)(__int128 *a1, __int128 *a2)
{
  v4 = *a1;
  v13 = *a2;
  v14 = v4;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v5 = specialized static Locale.== infix(_:_:)(&v14, &v13);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if ((v5 & 1) == 0 || (_sSh2eeoiySbShyxG_ABtFZs8DurationV10FoundationE16UnitsFormatStyleV4UnitV_Tt1g5(*(a1 + 2), *(a2 + 2)) & 1) == 0)
  {
    return 0;
  }

  result = 0;
  if (*(a1 + 24) == *(a2 + 24) && *(a1 + 7) == *(a2 + 7))
  {
    v7 = *(a2 + 40);
    if (*(a1 + 40))
    {
      if (!*(a2 + 40))
      {
        return 0;
      }
    }

    else
    {
      if (*(a1 + 4) != *(a2 + 4))
      {
        v7 = 1;
      }

      if (v7)
      {
        return 0;
      }
    }

    if (*(a1 + 6) != *(a2 + 6))
    {
      return 0;
    }

    v8 = type metadata accessor for Duration.UnitsFormatStyle(0);
    if ((specialized static Duration.UnitsFormatStyle.FractionalPartDisplayStrategy.== infix(_:_:)((a1 + *(v8 + 36)), (a2 + *(v8 + 36))) & 1) == 0)
    {
      return 0;
    }

    v9 = *(v8 + 40);
    v10 = (a1 + v9);
    v11 = *(a1 + v9 + 16);
    v12 = a2 + v9;
    if (v11)
    {
      if ((*(v12 + 16) & 1) == 0)
      {
        return 0;
      }
    }

    else if ((*(v12 + 16) & 1) != 0 || *v10 != *v12 || v10[1] != *(v12 + 8))
    {
      return 0;
    }

    return 1;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Duration.UnitsFormatStyle.CodingKeys and conformance Duration.UnitsFormatStyle.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.CodingKeys and conformance Duration.UnitsFormatStyle.CodingKeys;
  if (!lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.CodingKeys and conformance Duration.UnitsFormatStyle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.CodingKeys and conformance Duration.UnitsFormatStyle.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.CodingKeys and conformance Duration.UnitsFormatStyle.CodingKeys;
  if (!lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.CodingKeys and conformance Duration.UnitsFormatStyle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.CodingKeys and conformance Duration.UnitsFormatStyle.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.CodingKeys and conformance Duration.UnitsFormatStyle.CodingKeys;
  if (!lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.CodingKeys and conformance Duration.UnitsFormatStyle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.CodingKeys and conformance Duration.UnitsFormatStyle.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.CodingKeys and conformance Duration.UnitsFormatStyle.CodingKeys;
  if (!lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.CodingKeys and conformance Duration.UnitsFormatStyle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.CodingKeys and conformance Duration.UnitsFormatStyle.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Duration.UnitsFormatStyle.UnitWidth and conformance Duration.UnitsFormatStyle.UnitWidth()
{
  result = lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.UnitWidth and conformance Duration.UnitsFormatStyle.UnitWidth;
  if (!lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.UnitWidth and conformance Duration.UnitsFormatStyle.UnitWidth)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.UnitWidth and conformance Duration.UnitsFormatStyle.UnitWidth);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.UnitWidth and conformance Duration.UnitsFormatStyle.UnitWidth;
  if (!lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.UnitWidth and conformance Duration.UnitsFormatStyle.UnitWidth)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.UnitWidth and conformance Duration.UnitsFormatStyle.UnitWidth);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.UnitWidth and conformance Duration.UnitsFormatStyle.UnitWidth;
  if (!lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.UnitWidth and conformance Duration.UnitsFormatStyle.UnitWidth)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.UnitWidth and conformance Duration.UnitsFormatStyle.UnitWidth);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy and conformance Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy()
{
  result = lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy and conformance Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy;
  if (!lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy and conformance Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy and conformance Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy and conformance Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy;
  if (!lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy and conformance Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy and conformance Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy and conformance Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy;
  if (!lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy and conformance Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy and conformance Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Set<Duration.UnitsFormatStyle.Unit> and conformance <> Set<A>(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sShys8DurationV10FoundationE16UnitsFormatStyleV4UnitVGMd);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSnySiGMd);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSnySiGMd);
    lazy protocol witness table accessor for type Int and conformance Int();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Duration.UnitsFormatStyle.Attributed.CodingKeys and conformance Duration.UnitsFormatStyle.Attributed.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.Attributed.CodingKeys and conformance Duration.UnitsFormatStyle.Attributed.CodingKeys;
  if (!lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.Attributed.CodingKeys and conformance Duration.UnitsFormatStyle.Attributed.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.Attributed.CodingKeys and conformance Duration.UnitsFormatStyle.Attributed.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.Attributed.CodingKeys and conformance Duration.UnitsFormatStyle.Attributed.CodingKeys;
  if (!lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.Attributed.CodingKeys and conformance Duration.UnitsFormatStyle.Attributed.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.Attributed.CodingKeys and conformance Duration.UnitsFormatStyle.Attributed.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.Attributed.CodingKeys and conformance Duration.UnitsFormatStyle.Attributed.CodingKeys;
  if (!lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.Attributed.CodingKeys and conformance Duration.UnitsFormatStyle.Attributed.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.Attributed.CodingKeys and conformance Duration.UnitsFormatStyle.Attributed.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.Attributed.CodingKeys and conformance Duration.UnitsFormatStyle.Attributed.CodingKeys;
  if (!lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.Attributed.CodingKeys and conformance Duration.UnitsFormatStyle.Attributed.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.Attributed.CodingKeys and conformance Duration.UnitsFormatStyle.Attributed.CodingKeys);
  }

  return result;
}

uint64_t outlined init with take of Duration.UnitsFormatStyle.FractionalPartDisplayStrategy(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t specialized Duration.UnitsFormatStyle.Unit._Unit.init(rawValue:)(unint64_t result)
{
  if (result >= 8)
  {
    return 8;
  }

  return result;
}

uint64_t specialized Duration.UnitsFormatStyle.FractionalPartDisplayStrategy.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4C6D756D696E696DLL && a2 == 0xED00006874676E65;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4C6D756D6978616DLL && a2 == 0xED00006874676E65 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x676E69646E756F72 && a2 == 0xEC000000656C7552 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x800000018147F210 == a2)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t specialized Duration.UnitsFormatStyle.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x556465776F6C6C61 && a2 == 0xEC0000007374696ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7464695774696E75 && a2 == 0xE900000000000068 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x800000018147F550 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000015 && 0x800000018147F570 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000015 && 0x800000018147F590 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x800000018147F5B0 == a2)
  {

    return 6;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t specialized Duration.UnitsFormatStyle.Attributed.subscript.setter(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  (*(v3 + 16))(&v5 - v2, v1);
  return swift_setAtWritableKeyPath();
}

uint64_t instantiation function for generic protocol witness table for Duration.UnitsFormatStyle(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type FloatingPointRoundingRule and conformance FloatingPointRoundingRule(&lazy protocol witness table cache variable for type Duration.UnitsFormatStyle and conformance Duration.UnitsFormatStyle, type metadata accessor for Duration.UnitsFormatStyle);
  a1[2] = lazy protocol witness table accessor for type FloatingPointRoundingRule and conformance FloatingPointRoundingRule(&lazy protocol witness table cache variable for type Duration.UnitsFormatStyle and conformance Duration.UnitsFormatStyle, type metadata accessor for Duration.UnitsFormatStyle);
  result = lazy protocol witness table accessor for type FloatingPointRoundingRule and conformance FloatingPointRoundingRule(&lazy protocol witness table cache variable for type Duration.UnitsFormatStyle and conformance Duration.UnitsFormatStyle, type metadata accessor for Duration.UnitsFormatStyle);
  a1[3] = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for Duration.UnitsFormatStyle.Attributed(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type FloatingPointRoundingRule and conformance FloatingPointRoundingRule(&lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.Attributed and conformance Duration.UnitsFormatStyle.Attributed, type metadata accessor for Duration.UnitsFormatStyle.Attributed);
  a1[2] = lazy protocol witness table accessor for type FloatingPointRoundingRule and conformance FloatingPointRoundingRule(&lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.Attributed and conformance Duration.UnitsFormatStyle.Attributed, type metadata accessor for Duration.UnitsFormatStyle.Attributed);
  result = lazy protocol witness table accessor for type FloatingPointRoundingRule and conformance FloatingPointRoundingRule(&lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.Attributed and conformance Duration.UnitsFormatStyle.Attributed, type metadata accessor for Duration.UnitsFormatStyle.Attributed);
  a1[3] = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for Duration.UnitsFormatStyle.Attributed(uint64_t a1)
{
  result = lazy protocol witness table accessor for type FloatingPointRoundingRule and conformance FloatingPointRoundingRule(&lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.Attributed and conformance Duration.UnitsFormatStyle.Attributed, type metadata accessor for Duration.UnitsFormatStyle.Attributed);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for Duration.UnitsFormatStyle(uint64_t a1)
{
  result = lazy protocol witness table accessor for type FloatingPointRoundingRule and conformance FloatingPointRoundingRule(&lazy protocol witness table cache variable for type Duration.UnitsFormatStyle and conformance Duration.UnitsFormatStyle, type metadata accessor for Duration.UnitsFormatStyle);
  *(a1 + 8) = result;
  return result;
}

void type metadata completion function for Duration.UnitsFormatStyle()
{
  type metadata accessor for Set<Duration.UnitsFormatStyle.Unit>();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Double?(319, &lazy cache variable for type metadata for Int?);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Duration.UnitsFormatStyle.FractionalPartDisplayStrategy(319);
      if (v2 <= 0x3F)
      {
        type metadata accessor for Range<Int>?();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for Set<Duration.UnitsFormatStyle.Unit>()
{
  if (!lazy cache variable for type metadata for Set<Duration.UnitsFormatStyle.Unit>)
  {
    lazy protocol witness table accessor for type Duration.UnitsFormatStyle.Unit and conformance Duration.UnitsFormatStyle.Unit();
    v0 = type metadata accessor for Set();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Set<Duration.UnitsFormatStyle.Unit>);
    }
  }
}

void type metadata accessor for Range<Int>?()
{
  if (!lazy cache variable for type metadata for Range<Int>?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSnySiGMd);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Range<Int>?);
    }
  }
}

uint64_t getEnumTagSinglePayload for Duration.UnitsFormatStyle.UnitWidth(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[8])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for Duration.UnitsFormatStyle.UnitWidth(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

void type metadata completion function for Duration.UnitsFormatStyle.FractionalPartDisplayStrategy()
{
  type metadata accessor for FloatingPointRoundingRule();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Double?(319, &lazy cache variable for type metadata for Double?);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t type metadata completion function for Duration.UnitsFormatStyle.Attributed()
{
  result = type metadata accessor for Duration.UnitsFormatStyle(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Duration.UnitsFormatStyle.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.MeasurementAttribute.Component and conformance AttributeScopes.FoundationAttributes.MeasurementAttribute.Component()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.MeasurementAttribute.Component and conformance AttributeScopes.FoundationAttributes.MeasurementAttribute.Component;
  if (!lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.MeasurementAttribute.Component and conformance AttributeScopes.FoundationAttributes.MeasurementAttribute.Component)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.MeasurementAttribute.Component and conformance AttributeScopes.FoundationAttributes.MeasurementAttribute.Component);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.MeasurementAttribute.Component and conformance AttributeScopes.FoundationAttributes.MeasurementAttribute.Component;
  if (!lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.MeasurementAttribute.Component and conformance AttributeScopes.FoundationAttributes.MeasurementAttribute.Component)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.MeasurementAttribute.Component and conformance AttributeScopes.FoundationAttributes.MeasurementAttribute.Component);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.MeasurementAttribute.Component and conformance AttributeScopes.FoundationAttributes.MeasurementAttribute.Component;
  if (!lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.MeasurementAttribute.Component and conformance AttributeScopes.FoundationAttributes.MeasurementAttribute.Component)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.MeasurementAttribute.Component and conformance AttributeScopes.FoundationAttributes.MeasurementAttribute.Component);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.MeasurementAttribute.Component and conformance AttributeScopes.FoundationAttributes.MeasurementAttribute.Component;
  if (!lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.MeasurementAttribute.Component and conformance AttributeScopes.FoundationAttributes.MeasurementAttribute.Component)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.MeasurementAttribute.Component and conformance AttributeScopes.FoundationAttributes.MeasurementAttribute.Component);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.MeasurementAttribute.Component and conformance AttributeScopes.FoundationAttributes.MeasurementAttribute.Component;
  if (!lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.MeasurementAttribute.Component and conformance AttributeScopes.FoundationAttributes.MeasurementAttribute.Component)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.MeasurementAttribute.Component and conformance AttributeScopes.FoundationAttributes.MeasurementAttribute.Component);
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ICUListFormatter.Signature()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  Hasher.init(_seed:)();
  String.hash(into:)();
  MEMORY[0x1865CD060](v1);
  MEMORY[0x1865CD060](v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ICUListFormatter.Signature()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  String.hash(into:)();
  MEMORY[0x1865CD060](v1);
  return MEMORY[0x1865CD060](v2);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ICUListFormatter.Signature()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  Hasher.init(_seed:)();
  String.hash(into:)();
  MEMORY[0x1865CD060](v1);
  MEMORY[0x1865CD060](v2);
  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance ICUListFormatter.Signature(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    if (v2 != v5)
    {
      return 0;
    }

    return v3 == v4;
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  result = 0;
  if ((v7 & 1) != 0 && v2 == v5)
  {
    return v3 == v4;
  }

  return result;
}

uint64_t ICUListFormatter.__deallocating_deinit()
{
  ulistfmt_close();

  return swift_deallocClassInstance();
}

unint64_t lazy protocol witness table accessor for type ICUListFormatter.Signature and conformance ICUListFormatter.Signature()
{
  result = lazy protocol witness table cache variable for type ICUListFormatter.Signature and conformance ICUListFormatter.Signature;
  if (!lazy protocol witness table cache variable for type ICUListFormatter.Signature and conformance ICUListFormatter.Signature)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ICUListFormatter.Signature and conformance ICUListFormatter.Signature);
  }

  return result;
}

Swift::String __swiftcall ICUListFormatter.format(strings:)(Swift::OpaquePointer strings)
{
  v2 = v1;
  v4 = *(strings._rawValue + 2);
  v5 = MEMORY[0x1E69E7CC0];
  v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0, MEMORY[0x1E69E7CC0]);
  v34 = v6;
  v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0, v5);
  v33 = v7;
  if (!v4)
  {
LABEL_20:

    v23 = specialized _withResizingUCharBuffer(initialSize:_:)(32, v2, &v34, &v33, strings._rawValue);
    v25 = v24;

    v26 = *(v6 + 2);
    if (v26)
    {
      v27 = (v6 + 32);
      do
      {
        v29 = *v27++;
        v28 = v29;
        if (v29)
        {
          MEMORY[0x1865D2690](v28, -1, -1);
        }

        --v26;
      }

      while (v26);
    }

    if (v25)
    {
      v11 = v23;
    }

    else
    {
      v11 = 0;
    }

    if (v25)
    {
      v12 = v25;
    }

    else
    {
      v12 = 0xE000000000000000;
    }

    goto LABEL_34;
  }

  v31 = v2;
  v8 = (strings._rawValue + 40);
  while (1)
  {
    v10 = *(v8 - 1);
    v9 = *v8;
    if ((*v8 & 0x1000000000000000) != 0)
    {
      v11 = String.UTF16View._foreignCount()();
      v13 = v11;
      if (!v11)
      {
LABEL_11:
        v14 = MEMORY[0x1E69E7CC0];
        goto LABEL_12;
      }
    }

    else
    {
      v11 = String.UTF16View._nativeGetOffset(for:)();
      v13 = v11;
      if (!v11)
      {
        goto LABEL_11;
      }
    }

    if (v13 < 1)
    {
      v14 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys6UInt16VGMd);
      v14 = swift_allocObject();
      v15 = _swift_stdlib_malloc_size(v14);
      v14[2] = v13;
      v14[3] = (v15 - 32 + ((v15 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
    }

    swift_bridgeObjectRetain_n();
    v16 = specialized Sequence._copySequenceContents(initializing:)(v32, (v14 + 4), v13, v10, v9);

    if (v16 != v13)
    {
      goto LABEL_33;
    }

LABEL_12:
    v17 = v14[2];
    if ((v17 + 0x4000000000000000) < 0)
    {
      break;
    }

    v18 = swift_slowAlloc();
    memcpy(v18, v14 + 4, 2 * v17);

    v20 = *(v6 + 2);
    v19 = *(v6 + 3);
    if (v20 >= v19 >> 1)
    {
      v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v6);
      v6 = v11;
    }

    *(v6 + 2) = v20 + 1;
    *&v6[8 * v20 + 32] = v18;
    if (v17 >> 31)
    {
      goto LABEL_32;
    }

    v22 = *(v7 + 2);
    v21 = *(v7 + 3);
    if (v22 >= v21 >> 1)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1, v7);
    }

    *(v7 + 2) = v22 + 1;
    *&v7[4 * v22 + 32] = v17;
    v8 += 2;
    if (!--v4)
    {
      v33 = v7;
      v34 = v6;
      v2 = v31;
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  result._object = v12;
  result._countAndFlagsBits = v11;
  return result;
}

__n128 ListFormatStyle.locale(_:)@<Q0>(__n128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  (*(*(a2 - 8) + 16))(a3, v3, a2);
  v7 = *(a2 + 60);
  v9 = *a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  result = v9;
  *(a3 + v7) = v9;
  return result;
}

__n128 ListFormatStyle.locale.setter(__n128 *a1, uint64_t a2)
{
  v4 = *(a2 + 60);
  swift_unknownObjectRelease();
  result = *a1;
  *(v2 + v4) = *a1;
  return result;
}

uint64_t ListFormatStyle.init(memberStyle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 - 8);
  (*(v6 + 16))(a3, a1, a2);
  v7 = type metadata accessor for ListFormatStyle();
  *(a3 + v7[13]) = 0;
  *(a3 + v7[14]) = 0;
  type metadata accessor for _LocaleAutoupdating();
  inited = swift_initStaticObject();
  (*(v6 + 8))(a1, a2);
  result = _s10Foundation19_LocaleAutoupdatingCAcA01_B8ProtocolAAWlTm_0(&lazy protocol witness table cache variable for type _LocaleAutoupdating and conformance _LocaleAutoupdating, type metadata accessor for _LocaleAutoupdating);
  v10 = (a3 + v7[15]);
  *v10 = inited;
  v10[1] = result;
  return result;
}

uint64_t ListFormatStyle.format(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v126 = a1;
  v129[1] = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 16);
  v119 = *(a2 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v111 = type metadata accessor for Optional();
  v110 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111);
  v125 = &v98 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v109 = &v98 - v9;
  v124 = AssociatedTypeWitness;
  v120 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v10);
  v121 = &v98 - v11;
  v12 = *(a2 + 24);
  v116 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v115 = &v98 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = *(a2 + 40);
  v122 = swift_getAssociatedTypeWitness();
  v108 = *(v122 - 8);
  MEMORY[0x1EEE9AC00](v122);
  v127 = &v98 - v15;
  v123 = v5;
  v112 = *(v5 - 1);
  MEMORY[0x1EEE9AC00](v16);
  v113 = v17;
  v114 = &v98 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v3 + *(a2 + 60) + 8);
  ObjectType = swift_getObjectType();
  v20 = (*(v18 + 64))(ObjectType, v18);
  v21 = v20;
  v23 = v22;
  v24 = *(a2 + 52);
  v25 = *(v3 + *(a2 + 56));
  v117 = v3;
  v26 = *(v3 + v24);
  if (one-time initialization token for cache != -1)
  {
    v20 = swift_once();
  }

  v27 = &v98;
  v28 = static ICUListFormatter.cache;
  v29 = qword_1EA822138;
  v128[0] = v21;
  v128[1] = v23;
  v128[2] = v25;
  v128[3] = v26;
  MEMORY[0x1EEE9AC00](v20);
  *(&v98 - 2) = v128;
  os_unfair_lock_lock((v29 + 24));
  v30 = 0;
  partial apply for specialized closure #1 in FormatterCache.formatter(for:creator:)(v29 + 16, v129);
  os_unfair_lock_unlock((v29 + 24));
  if (!v129[0])
  {
    v107 = v28;
    v104 = v23;
    v106 = v25;
    type metadata accessor for ICUListFormatter();
    v34 = swift_allocObject();
    LODWORD(v129[0]) = 0;
    if (v26 > 2)
    {
      __break(1u);
    }

    else
    {
      v27 = v34;
      v25 = v26;
      v105 = v21;
      v26 = v104;
      v21 = String.utf8CString.getter();
      v37 = ulistfmt_openForType();

      if (!v37)
      {
LABEL_59:
        __break(1u);
        goto LABEL_60;
      }

      v30 = v107;
      if (SLODWORD(v129[0]) <= 0)
      {
        v27[2] = v37;
        os_unfair_lock_lock((v29 + 24));
        v38 = *(*(v29 + 16) + 16);
        v103 = *(v29 + 16);
        if (v30 < v38)
        {
          *(v29 + 16) = MEMORY[0x1E69E7CC8];
        }

        else
        {
        }

        v21 = v125;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v129[0] = *(v29 + 16);
        v30 = v129[0];
        v36 = specialized __RawDictionaryStorage.find<A>(_:)(v105, v26, v106, v25);
        v40 = *(v30 + 16);
        v41 = (v35 & 1) == 0;
        v42 = v40 + v41;
        if (!__OFADD__(v40, v41))
        {
          if (*(v30 + 24) < v42)
          {
            v43 = v35;
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v42, isUniquelyReferenced_nonNull_native);
            v44 = v129[0];
            v45 = specialized __RawDictionaryStorage.find<A>(_:)(v105, v26, v106, v25);
            if ((v43 & 1) == (v46 & 1))
            {
              v36 = v45;
              LOBYTE(v35) = v43;
              goto LABEL_17;
            }

LABEL_60:
            result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            return result;
          }

          if (isUniquelyReferenced_nonNull_native)
          {
            v44 = v30;
LABEL_17:
            v31 = v126;
            v32 = v123;
            if (v35)
            {
LABEL_18:
              *(*(v44 + 56) + 8 * v36) = v27;

LABEL_39:
              v33 = v112;
              *(v29 + 16) = v44;
              os_unfair_lock_unlock((v29 + 24));

              goto LABEL_40;
            }

LABEL_38:
            specialized _NativeDictionary._insert(at:key:value:)(v36, v105, v26, v106, v25, v27, v44);

            goto LABEL_39;
          }

          goto LABEL_22;
        }

LABEL_21:
        __break(1u);
LABEL_22:
        v100 = v36;
        v101 = v35;
        v107 = v27;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation16ICUListFormatterC9SignatureVAEGMd);
        v47 = static _DictionaryStorage.copy(original:)();
        v44 = v47;
        if (!*(v30 + 16))
        {
LABEL_37:

          v27 = v107;
          v31 = v126;
          v32 = v123;
          v36 = v100;
          if (v101)
          {
            goto LABEL_18;
          }

          goto LABEL_38;
        }

        v99 = v25;
        v48 = (v47 + 64);
        v49 = ((1 << *(v44 + 32)) + 63) >> 6;
        v102 = (v30 + 64);
        if (v44 != v30 || v48 >= v30 + 64 + 8 * v49)
        {
          memmove(v48, v102, 8 * v49);
        }

        v50 = 0;
        *(v44 + 16) = *(v30 + 16);
        v51 = 1 << *(v30 + 32);
        v52 = *(v30 + 64);
        v53 = -1;
        if (v51 < 64)
        {
          v53 = ~(-1 << v51);
        }

        v54 = v53 & v52;
        v55 = (v51 + 63) >> 6;
        if ((v53 & v52) != 0)
        {
          do
          {
            v56 = __clz(__rbit64(v54));
            v54 &= v54 - 1;
LABEL_35:
            v59 = v56 | (v50 << 6);
            v60 = *(v30 + 48) + 32 * v59;
            v61 = *(v60 + 8);
            v62 = *(*(v30 + 56) + 8 * v59);
            v63 = *(v44 + 48) + 32 * v59;
            v64 = *(v60 + 16);
            *v63 = *v60;
            *(v63 + 8) = v61;
            *(v63 + 16) = v64;
            *(*(v44 + 56) + 8 * v59) = v62;
          }

          while (v54);
        }

        v57 = v50;
        v21 = v125;
        v25 = v99;
        v26 = v104;
        while (1)
        {
          v50 = v57 + 1;
          if (__OFADD__(v57, 1))
          {
            break;
          }

          if (v50 >= v55)
          {
            goto LABEL_37;
          }

          v58 = *(v102 + v50);
          ++v57;
          if (v58)
          {
            v56 = __clz(__rbit64(v58));
            v54 = (v58 - 1) & v58;
            goto LABEL_35;
          }
        }

        __break(1u);
        goto LABEL_59;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

  v27 = v129[0];

  v21 = v125;
  v31 = v126;
  v32 = v123;
  v33 = v112;
LABEL_40:
  v65 = v114;
  (*(v33 + 16))(v114, v117, v32);
  v66 = (*(v33 + 80) + 48) & ~*(v33 + 80);
  v67 = swift_allocObject();
  *&v68 = v32;
  *(&v68 + 1) = v12;
  *&v69 = v119;
  *(&v69 + 1) = v118;
  *(v67 + 16) = v68;
  *(v67 + 32) = v69;
  v70 = *(v33 + 32);
  v126 = v67;
  v70(v67 + v66, v65, v32);
  v71 = dispatch thunk of Sequence.underestimatedCount.getter();
  v128[0] = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v71 & ~(v71 >> 63), 0);
  v72._rawValue = v128[0];
  (*(v116 + 16))(v115, v31, v12);
  dispatch thunk of Sequence.makeIterator()();
  v73 = v124;
  if (v71 < 0)
  {
    __break(1u);
    goto LABEL_57;
  }

  v107 = v27;
  if (v71)
  {
    v123 = (v120 + 48);
    v74 = (v120 + 8);
    v75 = v122;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v77 = v75;
    while (1)
    {
      v78 = v77;
      v79 = AssociatedConformanceWitness;
      dispatch thunk of IteratorProtocol.next()();
      if ((*v123)(v21, 1, v73) == 1)
      {
        break;
      }

      v80 = partial apply for implicit closure #2 in implicit closure #1 in ListFormatStyle.format(_:)();
      v82 = v81;
      (*v74)(v21, v73);
      v128[0] = v72._rawValue;
      v84 = *(v72._rawValue + 2);
      v83 = *(v72._rawValue + 3);
      if (v84 >= v83 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v83 > 1), v84 + 1, 1);
        v72._rawValue = v128[0];
      }

      *(v72._rawValue + 2) = v84 + 1;
      v85 = v72._rawValue + 16 * v84;
      *(v85 + 4) = v80;
      *(v85 + 5) = v82;
      --v71;
      v73 = v124;
      v21 = v125;
      AssociatedConformanceWitness = v79;
      v77 = v78;
      if (!v71)
      {
        goto LABEL_49;
      }
    }

LABEL_57:
    __break(1u);
  }

  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
LABEL_49:
  v86 = v109;
  dispatch thunk of IteratorProtocol.next()();
  v87 = v120;
  v124 = *(v120 + 48);
  v125 = (v120 + 48);
  if (v124(v86, 1, v73) != 1)
  {
    v123 = *(v87 + 32);
    v120 = v87 + 8;
    do
    {
      v90 = AssociatedConformanceWitness;
      v91 = v121;
      (v123)(v121, v86, v73);
      v92 = partial apply for implicit closure #2 in implicit closure #1 in ListFormatStyle.format(_:)();
      v94 = v93;
      (*v120)(v91, v73);
      v128[0] = v72._rawValue;
      v96 = *(v72._rawValue + 2);
      v95 = *(v72._rawValue + 3);
      if (v96 >= v95 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v95 > 1), v96 + 1, 1);
        v72._rawValue = v128[0];
      }

      *(v72._rawValue + 2) = v96 + 1;
      v97 = v72._rawValue + 16 * v96;
      *(v97 + 4) = v92;
      *(v97 + 5) = v94;
      AssociatedConformanceWitness = v90;
      dispatch thunk of IteratorProtocol.next()();
    }

    while (v124(v86, 1, v73) != 1);
  }

  (*(v108 + 8))(v127, v122);
  (*(v110 + 8))(v86, v111);

  countAndFlagsBits = ICUListFormatter.format(strings:)(v72)._countAndFlagsBits;

  return countAndFlagsBits;
}

unint64_t ListFormatStyle.Width.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 3;
  if (result < 3)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ListFormatStyle<A, B>.Width(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6550];

  return MEMORY[0x1EEE6B350](a1, a2, a3, WitnessTable, v7);
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance ListFormatStyle<A, B>.Width(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6540];

  return MEMORY[0x1EEE69348](a1, a2, WitnessTable, v5);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ListFormatStyle<A, B>.Width(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6540];

  return MEMORY[0x1EEE69358](a1, a2, a3, WitnessTable, v7);
}

uint64_t protocol witness for Hashable._rawHashValue(seed:) in conformance ListFormatStyle<A, B>.Width(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6540];

  return MEMORY[0x1EEE69350](a1, a2, a3, WitnessTable, v7);
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance ListFormatStyle<A, B>.Width@<X0>(uint64_t *a1@<X8>)
{
  result = ListFormatStyle.Width.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t ListFormatStyle.ListType.init(rawValue:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!result)
  {
    v2 = 0;
  }

  *a2 = v2;
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ListFormatStyle<A, B>.ListType(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6550];

  return MEMORY[0x1EEE6B350](a1, a2, a3, WitnessTable, v7);
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance ListFormatStyle<A, B>.ListType(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6540];

  return MEMORY[0x1EEE69348](a1, a2, WitnessTable, v5);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ListFormatStyle<A, B>.ListType(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6540];

  return MEMORY[0x1EEE69358](a1, a2, a3, WitnessTable, v7);
}

uint64_t protocol witness for Hashable._rawHashValue(seed:) in conformance ListFormatStyle<A, B>.ListType(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6540];

  return MEMORY[0x1EEE69350](a1, a2, a3, WitnessTable, v7);
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance ListFormatStyle<A, B>.ListType@<X0>(uint64_t *a1@<X8>)
{
  result = ListFormatStyle.ListType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t static ListFormatStyle.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) != 0 && (*&v18 = a3, *(&v18 + 1) = a4, v19 = a5, v20 = a6, v12 = type metadata accessor for ListFormatStyle(), *(a1 + v12[13]) == *(a2 + v12[13])) && *(a1 + v12[14]) == *(a2 + v12[14]))
  {
    v15 = v12[15];
    v16 = *(a1 + v15);
    v17 = *(a2 + v15);
    v18 = v16;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v13 = specialized static Locale.== infix(_:_:)(&v18, &v17);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t ListFormatStyle.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74537265626D656DLL && a2 == 0xEB00000000656C79;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6874646977 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x657079547473696CLL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t ListFormatStyle.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  v1 = 0x74537265626D656DLL;
  v2 = 0x657079547473696CLL;
  if (a1 != 2)
  {
    v2 = 0x656C61636F6CLL;
  }

  if (a1)
  {
    v1 = 0x6874646977;
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ListFormatStyle<A, B>.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = ListFormatStyle.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance ListFormatStyle<A, B>.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = protocol witness for static RopeSummary.nodeSizeBitWidth.getter in conformance AttributedString._InternalRun.Summary();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ListFormatStyle<A, B>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ListFormatStyle<A, B>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t ListFormatStyle.encode(to:)(void *a1, void *a2)
{
  v3 = a2[2];
  v5 = a2[4];
  v4 = a2[5];
  v19 = a2[3];
  v20 = a2;
  *(&v25 + 1) = v19;
  v26 = v5;
  v21 = v4;
  v22 = v3;
  v27 = v4;
  type metadata accessor for ListFormatStyle.CodingKeys();
  swift_getWitnessTable();
  v6 = type metadata accessor for KeyedEncodingContainer();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = v22;
  v10 = v23;
  v12 = v6;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v25) = 0;
  v13 = v5;
  v14 = v24;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v14)
  {
    return (*(v7 + 8))(v9, v12);
  }

  v24 = v7;
  *&v25 = v11;
  v17 = v19;
  v16 = v20;
  v29 = *(v10 + *(v20 + 13));
  v28 = 1;
  *(&v25 + 1) = v19;
  v26 = v13;
  v27 = v21;
  type metadata accessor for ListFormatStyle.Width();
  swift_getWitnessTable();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v29 = *(v10 + *(v16 + 14));
  v28 = 2;
  *&v25 = v11;
  *(&v25 + 1) = v17;
  v26 = v13;
  v27 = v21;
  type metadata accessor for ListFormatStyle.ListType();
  swift_getWitnessTable();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v18 = v24;
  v23 = *(v10 + *(v16 + 15));
  v25 = v23;
  v29 = 3;
  lazy protocol witness table accessor for type Locale and conformance Locale();
  swift_unknownObjectRetain();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  swift_unknownObjectRelease();
  return (*(v18 + 8))(v9, v12);
}

void ListFormatStyle.hash(into:)(Swift::Int a1, int *a2)
{
  dispatch thunk of Hashable.hash(into:)();
  MEMORY[0x1865CD060](*(v2 + a2[13]));
  MEMORY[0x1865CD060](*(v2 + a2[14]));
  v5 = *(v2 + a2[15] + 8);
  ObjectType = swift_getObjectType();
  if ((*(v5 + 48))(ObjectType, v5))
  {
    v7 = 1;
LABEL_5:
    Hasher._combine(_:)(v7);
    return;
  }

  Hasher._combine(_:)(0);
  (*(v5 + 64))(ObjectType, v5);
  String.hash(into:)();

  (*(v5 + 464))(&v47, ObjectType, v5);
  v55[6] = v53;
  v56[0] = *v54;
  *(v56 + 12) = *&v54[12];
  v55[2] = v49;
  v55[3] = v50;
  v55[4] = v51;
  v55[5] = v52;
  v55[0] = v47;
  v55[1] = v48;
  if (_s10Foundation17LocalePreferencesVSgWOg(v55) == 1)
  {
    v7 = 0;
    goto LABEL_5;
  }

  v8 = v47;
  v9 = *(&v47 + 1);
  v10 = *(&v48 + 1);
  v11 = *(&v49 + 1);
  v40 = v50;
  v12 = v52;
  v41 = v51;
  v42 = *(&v52 + 1);
  v43 = v53;
  v13 = *v54;
  v14 = v54[24];
  v44 = *&v54[16];
  v45 = v54[25];
  v46 = v54[26];
  v15 = v54[27];
  Hasher._combine(_:)(1u);
  if (v8 == 2)
  {
    v16 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v16 = v8 & 1;
  }

  Hasher._combine(_:)(v16);
  if (v9)
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](*(v9 + 16));
    v17 = *(v9 + 16);
    if (v17)
    {
      v18 = v9 + 40;
      do
      {

        String.hash(into:)();

        v18 += 16;
        --v17;
      }

      while (v17);
    }

    if (v10)
    {
      goto LABEL_14;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (v10)
    {
LABEL_14:
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      goto LABEL_17;
    }
  }

  Hasher._combine(_:)(0);
LABEL_17:
  v19 = v14;
  if (v11)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v20 = v12;
  if (v40)
  {
    Hasher._combine(_:)(1u);
    specialized Dictionary<>.hash(into:)(a1, v40, v21, v22, v23, v24, v25, v26);
    v27 = v45;
    if (*(&v40 + 1))
    {
LABEL_22:
      Hasher._combine(_:)(1u);
      specialized Dictionary<>.hash(into:)(a1, *(&v40 + 1), v28, v29, v30, v31, v32, v33);
      goto LABEL_25;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    v27 = v45;
    if (*(&v40 + 1))
    {
      goto LABEL_22;
    }
  }

  Hasher._combine(_:)(0);
LABEL_25:
  if (v41)
  {
    v34 = v19;
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    _s10Foundation19_LocaleAutoupdatingCAcA01_B8ProtocolAAWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
    _CFObject.hash(into:)();
    if (*(&v41 + 1))
    {
      goto LABEL_27;
    }

LABEL_30:
    Hasher._combine(_:)(0);
    v35 = v34;
    if (v20)
    {
      goto LABEL_28;
    }

    goto LABEL_31;
  }

  v34 = v19;
  Hasher._combine(_:)(0);
  if (!*(&v41 + 1))
  {
    goto LABEL_30;
  }

LABEL_27:
  Hasher._combine(_:)(1u);
  type metadata accessor for CFDictionaryRef(0);
  _s10Foundation19_LocaleAutoupdatingCAcA01_B8ProtocolAAWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
  _CFObject.hash(into:)();
  v35 = v34;
  if (v20)
  {
LABEL_28:
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    _s10Foundation19_LocaleAutoupdatingCAcA01_B8ProtocolAAWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
    _CFObject.hash(into:)();
    goto LABEL_32;
  }

LABEL_31:
  Hasher._combine(_:)(0);
LABEL_32:
  if (v42)
  {
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    _s10Foundation19_LocaleAutoupdatingCAcA01_B8ProtocolAAWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
    _CFObject.hash(into:)();
    v36 = *(&v43 + 1);
    if (v43)
    {
      goto LABEL_34;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    v36 = *(&v43 + 1);
    if (v43)
    {
LABEL_34:
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      _s10Foundation19_LocaleAutoupdatingCAcA01_B8ProtocolAAWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
      _CFObject.hash(into:)();
      if (v36)
      {
        goto LABEL_35;
      }

      goto LABEL_43;
    }
  }

  Hasher._combine(_:)(0);
  if (v36)
  {
LABEL_35:
    Hasher._combine(_:)(1u);
    specialized Dictionary<>.hash(into:)(a1, v36);
    if (v13)
    {
      goto LABEL_36;
    }

    goto LABEL_44;
  }

LABEL_43:
  Hasher._combine(_:)(0);
  if (v13)
  {
LABEL_36:
    Hasher._combine(_:)(1u);
    specialized Dictionary<>.hash(into:)(a1, v13);
    v37 = v15;
    if (v44)
    {
      goto LABEL_37;
    }

    goto LABEL_45;
  }

LABEL_44:
  Hasher._combine(_:)(0);
  v37 = v15;
  if (v44)
  {
LABEL_37:
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    if (v35 == 2)
    {
      goto LABEL_38;
    }

    goto LABEL_46;
  }

LABEL_45:
  Hasher._combine(_:)(0);
  if (v35 == 2)
  {
LABEL_38:
    Hasher._combine(_:)(0);
    if (v27 != 2)
    {
      goto LABEL_39;
    }

LABEL_47:
    Hasher._combine(_:)(0);
    if (v46 != 2)
    {
      goto LABEL_40;
    }

LABEL_48:
    v38 = 0;
    goto LABEL_49;
  }

LABEL_46:
  Hasher._combine(_:)(1u);
  MEMORY[0x1865CD060](v35 & 1);
  if (v27 == 2)
  {
    goto LABEL_47;
  }

LABEL_39:
  Hasher._combine(_:)(1u);
  MEMORY[0x1865CD060](v27 & 1);
  if (v46 == 2)
  {
    goto LABEL_48;
  }

LABEL_40:
  Hasher._combine(_:)(1u);
  v38 = v46 & 1;
LABEL_49:
  Hasher._combine(_:)(v38);
  if (v37 == 2)
  {
    v39 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v39 = v37 & 1;
  }

  Hasher._combine(_:)(v39);
  outlined destroy of LocalePreferences?(&v47);
}

Swift::Int ListFormatStyle.hashValue.getter(int *a1)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  MEMORY[0x1865CD060](*(v1 + a1[13]));
  MEMORY[0x1865CD060](*(v1 + a1[14]));
  v3 = *(v1 + a1[15] + 8);
  ObjectType = swift_getObjectType();
  if ((*(v3 + 48))(ObjectType, v3))
  {
    v5 = 1;
LABEL_5:
    Hasher._combine(_:)(v5);
    return Hasher._finalize()();
  }

  Hasher._combine(_:)(0);
  (*(v3 + 64))(ObjectType, v3);
  String.hash(into:)();

  (*(v3 + 464))(&v38, ObjectType, v3);
  v46[6] = v44;
  v47[0] = *v45;
  *(v47 + 12) = *&v45[12];
  v46[2] = v40;
  v46[3] = v41;
  v46[4] = v42;
  v46[5] = v43;
  v46[0] = v38;
  v46[1] = v39;
  if (_s10Foundation17LocalePreferencesVSgWOg(v46) == 1)
  {
    v5 = 0;
    goto LABEL_5;
  }

  v6 = v38;
  v7 = *(&v38 + 1);
  v8 = *(&v39 + 1);
  v9 = *(&v40 + 1);
  v10 = v41;
  v32 = v42;
  v33 = v43;
  v11 = v44;
  v12 = *v45;
  v34 = v45[24];
  v35 = *&v45[16];
  v13 = v45[25];
  v36 = v45[26];
  v37 = v45[27];
  Hasher._combine(_:)(1u);
  if (v6 == 2)
  {
    Hasher._combine(_:)(0);
    if (v7)
    {
      goto LABEL_8;
    }
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v6 & 1);
    if (v7)
    {
LABEL_8:
      Hasher._combine(_:)(1u);
      MEMORY[0x1865CD060](*(v7 + 16));
      v14 = *(v7 + 16);
      if (v14)
      {
        v15 = v7 + 40;
        do
        {

          String.hash(into:)();

          v15 += 16;
          --v14;
        }

        while (v14);
      }

      if (v8)
      {
        goto LABEL_12;
      }

      goto LABEL_15;
    }
  }

  Hasher._combine(_:)(0);
  if (v8)
  {
LABEL_12:
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    goto LABEL_16;
  }

LABEL_15:
  Hasher._combine(_:)(0);
LABEL_16:
  if (v9)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (v10)
  {
    Hasher._combine(_:)(1u);
    specialized Dictionary<>.hash(into:)(v48, v10, v16, v17, v18, v19, v20, v21);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (*(&v10 + 1))
  {
    Hasher._combine(_:)(1u);
    specialized Dictionary<>.hash(into:)(v48, *(&v10 + 1), v22, v23, v24, v25, v26, v27);
    if (v32)
    {
      goto LABEL_24;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (v32)
    {
LABEL_24:
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      _s10Foundation19_LocaleAutoupdatingCAcA01_B8ProtocolAAWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
      _CFObject.hash(into:)();
      if (*(&v32 + 1))
      {
        goto LABEL_25;
      }

LABEL_29:
      v28 = v34;
      Hasher._combine(_:)(0);
      if (v33)
      {
        goto LABEL_26;
      }

      goto LABEL_30;
    }
  }

  Hasher._combine(_:)(0);
  if (!*(&v32 + 1))
  {
    goto LABEL_29;
  }

LABEL_25:
  v28 = v34;
  Hasher._combine(_:)(1u);
  type metadata accessor for CFDictionaryRef(0);
  _s10Foundation19_LocaleAutoupdatingCAcA01_B8ProtocolAAWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
  _CFObject.hash(into:)();
  if (v33)
  {
LABEL_26:
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    _s10Foundation19_LocaleAutoupdatingCAcA01_B8ProtocolAAWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
    _CFObject.hash(into:)();
    goto LABEL_31;
  }

LABEL_30:
  Hasher._combine(_:)(0);
LABEL_31:
  if (*(&v33 + 1))
  {
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    _s10Foundation19_LocaleAutoupdatingCAcA01_B8ProtocolAAWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
    _CFObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (v11)
  {
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    _s10Foundation19_LocaleAutoupdatingCAcA01_B8ProtocolAAWlTm_0(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
    _CFObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (*(&v11 + 1))
  {
    Hasher._combine(_:)(1u);
    specialized Dictionary<>.hash(into:)(v48, *(&v11 + 1));
    if (v12)
    {
      goto LABEL_39;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (v12)
    {
LABEL_39:
      Hasher._combine(_:)(1u);
      specialized Dictionary<>.hash(into:)(v48, v12);
      if (v35)
      {
        goto LABEL_40;
      }

      goto LABEL_46;
    }
  }

  Hasher._combine(_:)(0);
  if (v35)
  {
LABEL_40:
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    if (v28 == 2)
    {
      goto LABEL_41;
    }

    goto LABEL_47;
  }

LABEL_46:
  Hasher._combine(_:)(0);
  if (v28 == 2)
  {
LABEL_41:
    Hasher._combine(_:)(0);
    if (v13 != 2)
    {
      goto LABEL_42;
    }

LABEL_48:
    Hasher._combine(_:)(0);
    if (v36 != 2)
    {
      goto LABEL_43;
    }

LABEL_49:
    v29 = 0;
    goto LABEL_50;
  }

LABEL_47:
  Hasher._combine(_:)(1u);
  MEMORY[0x1865CD060](v28 & 1);
  if (v13 == 2)
  {
    goto LABEL_48;
  }

LABEL_42:
  Hasher._combine(_:)(1u);
  MEMORY[0x1865CD060](v13 & 1);
  if (v36 == 2)
  {
    goto LABEL_49;
  }

LABEL_43:
  Hasher._combine(_:)(1u);
  v29 = v36 & 1;
LABEL_50:
  Hasher._combine(_:)(v29);
  if (v37 == 2)
  {
    v30 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v30 = v37 & 1;
  }

  Hasher._combine(_:)(v30);
  outlined destroy of LocalePreferences?(&v38);
  return Hasher._finalize()();
}

uint64_t ListFormatStyle.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v38 = a6;
  v42 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v43 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v48 = v12;
  *(&v48 + 1) = v13;
  v49 = v14;
  v50 = v15;
  type metadata accessor for ListFormatStyle.CodingKeys();
  swift_getWitnessTable();
  v46 = type metadata accessor for KeyedDecodingContainer();
  v40 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v17 = &v36 - v16;
  *&v48 = a2;
  *(&v48 + 1) = a3;
  v41 = a3;
  v44 = a4;
  v49 = a4;
  v50 = a5;
  v39 = a5;
  v18 = type metadata accessor for ListFormatStyle();
  v37 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v36 - v19;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v45 = v17;
  v21 = v47;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v21)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = v20;
  v23 = v40;
  v24 = v41;
  v47 = a1;
  LOBYTE(v48) = 0;
  v25 = v42;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v26 = a2;
  v27 = *(v25 + 32);
  v36 = v22;
  v27(v22, v43, a2);
  *&v48 = a2;
  *(&v48 + 1) = v24;
  v28 = v39;
  v49 = v44;
  v50 = v39;
  type metadata accessor for ListFormatStyle.Width();
  LOBYTE(v48) = 1;
  swift_getWitnessTable();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v43 = v18;
  v29 = *(v18 + 52);
  v30 = v36;
  v36[v29] = v51;
  *&v48 = v26;
  *(&v48 + 1) = v24;
  v49 = v44;
  v50 = v28;
  type metadata accessor for ListFormatStyle.ListType();
  LOBYTE(v48) = 2;
  swift_getWitnessTable();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v31 = v23;
  v32 = v43;
  v30[*(v43 + 14)] = v51;
  v51 = 3;
  lazy protocol witness table accessor for type Locale and conformance Locale();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v33 = v47;
  (*(v31 + 8))(v45, v46);
  *&v30[*(v32 + 15)] = v48;
  v34 = v37;
  (*(v37 + 16))(v38, v30, v32);
  __swift_destroy_boxed_opaque_existential_1(v33);
  return (*(v34 + 8))(v30, v32);
}

uint64_t protocol witness for FormatStyle.format(_:) in conformance ListFormatStyle<A, B>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = ListFormatStyle.format(_:)(a1, a2);
  *a3 = result;
  a3[1] = v5;
  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ListFormatStyle<A, B>(uint64_t a1, int *a2)
{
  Hasher.init(_seed:)();
  ListFormatStyle.hash(into:)(v4, a2);
  return Hasher._finalize()();
}

Swift::String __swiftcall StringStyle.format(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;

  v3 = countAndFlagsBits;
  v4 = object;
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance StringStyle.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type StringStyle.CodingKeys and conformance StringStyle.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance StringStyle.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type StringStyle.CodingKeys and conformance StringStyle.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StringStyle.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation11StringStyleV10CodingKeys33_748DE2EBA70808B18EDD83BE36C05312LLOGMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type StringStyle.CodingKeys and conformance StringStyle.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t protocol witness for FormatStyle.format(_:) in conformance StringStyle@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  a2[1] = v3;
}

uint64_t protocol witness for Encodable.encode(to:) in conformance StringStyle(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation11StringStyleV10CodingKeys33_748DE2EBA70808B18EDD83BE36C05312LLOGMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type StringStyle.CodingKeys and conformance StringStyle.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t Sequence<>.formatted()(uint64_t a1, uint64_t a2)
{
  v84 = *MEMORY[0x1E69E9840];
  v77 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v76 = &v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v74 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = &v65 - v6;
  type metadata accessor for _LocaleAutoupdating();
  inited = swift_initStaticObject();
  v9 = _s10Foundation19_LocaleAutoupdatingCAcA01_B8ProtocolAAWlTm_0(&lazy protocol witness table cache variable for type _LocaleAutoupdating and conformance _LocaleAutoupdating, type metadata accessor for _LocaleAutoupdating);
  ObjectType = swift_getObjectType();
  v11 = *(v9 + 64);
  v73 = inited;
  v12 = v11(ObjectType, v9);
  v13 = v12;
  v15 = v14;
  if (one-time initialization token for cache != -1)
  {
    v12 = swift_once();
  }

  v16 = static ICUListFormatter.cache;
  v17 = qword_1EA822138;
  v80 = v13;
  v81 = v15;
  v82 = 0;
  v83 = 0;
  MEMORY[0x1EEE9AC00](v12);
  *(&v65 - 2) = &v80;
  os_unfair_lock_lock((v17 + 24));
  closure #1 in FormatterCache.formatter(for:creator:)specialized partial apply(v17 + 16, &rawValue);
  os_unfair_lock_unlock((v17 + 24));
  v18 = rawValue;
  if (!rawValue)
  {
    v72 = v16;
    v70 = a2;
    type metadata accessor for ICUListFormatter();
    v18 = swift_allocObject();
    LODWORD(rawValue) = 0;
    v71 = v13;
    String.utf8CString.getter();
    v20 = ulistfmt_openForType();

    if (!v20)
    {
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    v23 = v72;
    if (rawValue > 0)
    {
      __break(1u);
    }

    else
    {
      v13 = v15;
      *(v18 + 16) = v20;
      os_unfair_lock_lock((v17 + 24));
      v15 = *(v17 + 16);
      if (v23 >= *(v15 + 16))
      {
      }

      else
      {
        *(v17 + 16) = MEMORY[0x1E69E7CC8];
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      rawValue = *(v17 + 16);
      v23 = rawValue;
      v22 = specialized __RawDictionaryStorage.find<A>(_:)(v71, v13, 0, 0);
      v25 = *(v23 + 16);
      v26 = (v21 & 1) == 0;
      v27 = v25 + v26;
      if (!__OFADD__(v25, v26))
      {
        if (*(v23 + 24) < v27)
        {
          v28 = v21;
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v27, isUniquelyReferenced_nonNull_native);
          v29 = rawValue;
          v30 = specialized __RawDictionaryStorage.find<A>(_:)(v71, v13, 0, 0);
          if ((v28 & 1) == (v31 & 1))
          {
            v22 = v30;
            LOBYTE(v21) = v28;
            goto LABEL_16;
          }

LABEL_56:
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          v29 = v23;
LABEL_16:
          v19 = v78;
          if (v21)
          {
LABEL_17:
            *(*(v29 + 56) + 8 * v22) = v18;

LABEL_37:
            *(v17 + 16) = v29;
            os_unfair_lock_unlock((v17 + 24));

            goto LABEL_38;
          }

LABEL_36:
          specialized _NativeDictionary._insert(at:key:value:)(v22, v71, v13, 0, 0, v18, v29);

          goto LABEL_37;
        }

        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_20:
    v67 = v22;
    v68 = v21;
    v69 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation16ICUListFormatterC9SignatureVAEGMd);
    v32 = static _DictionaryStorage.copy(original:)();
    v29 = v32;
    if (!*(v23 + 16))
    {
LABEL_35:

      v19 = v78;
      v22 = v67;
      if (v68)
      {
        goto LABEL_17;
      }

      goto LABEL_36;
    }

    v66 = v13;
    v72 = v18;
    v33 = (v32 + 64);
    v34 = ((1 << *(v29 + 32)) + 63) >> 6;
    if (v29 != v23 || v33 >= v23 + 64 + 8 * v34)
    {
      memmove(v33, (v23 + 64), 8 * v34);
    }

    v65 = v23 + 64;
    v35 = 0;
    *(v29 + 16) = *(v23 + 16);
    v36 = 1 << *(v23 + 32);
    v37 = *(v23 + 64);
    v38 = -1;
    if (v36 < 64)
    {
      v38 = ~(-1 << v36);
    }

    v39 = v38 & v37;
    v40 = (v36 + 63) >> 6;
    if ((v38 & v37) != 0)
    {
      do
      {
        v41 = __clz(__rbit64(v39));
        v39 &= v39 - 1;
LABEL_33:
        v44 = v41 | (v35 << 6);
        v45 = *(v23 + 48) + 32 * v44;
        v46 = *(v45 + 8);
        v47 = *(*(v23 + 56) + 8 * v44);
        v48 = *(v29 + 48) + 32 * v44;
        v49 = *(v45 + 16);
        *v48 = *v45;
        *(v48 + 8) = v46;
        *(v48 + 16) = v49;
        *(*(v29 + 56) + 8 * v44) = v47;
      }

      while (v39);
    }

    v42 = v35;
    v18 = v72;
    v13 = v66;
    while (1)
    {
      v35 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        break;
      }

      if (v35 >= v40)
      {
        goto LABEL_35;
      }

      v43 = *(v65 + 8 * v35);
      ++v42;
      if (v43)
      {
        v41 = __clz(__rbit64(v43));
        v39 = (v43 - 1) & v43;
        goto LABEL_33;
      }
    }

    __break(1u);
    goto LABEL_55;
  }

  v19 = v78;
LABEL_38:
  v50 = v75;
  v51 = dispatch thunk of Sequence.underestimatedCount.getter();
  rawValue = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v51 & ~(v51 >> 63), 0);
  v52._rawValue = rawValue;
  (*(v77 + 16))(v76, v19, v50);
  dispatch thunk of Sequence.makeIterator()();
  if (v51 < 0)
  {
    __break(1u);
    goto LABEL_53;
  }

  v72 = v18;
  if (v51)
  {
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      dispatch thunk of IteratorProtocol.next()();
      v53 = v81;
      if (!v81)
      {
        break;
      }

      v54 = v80;
      rawValue = v52._rawValue;
      v56 = *(v52._rawValue + 2);
      v55 = *(v52._rawValue + 3);
      if (v56 >= v55 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v55 > 1), v56 + 1, 1);
        v52._rawValue = rawValue;
      }

      *(v52._rawValue + 2) = v56 + 1;
      v57 = v52._rawValue + 16 * v56;
      *(v57 + 4) = v54;
      *(v57 + 5) = v53;
      if (!--v51)
      {
        goto LABEL_47;
      }
    }

LABEL_53:
    __break(1u);
  }

  swift_getAssociatedConformanceWitness();
LABEL_47:
  while (1)
  {
    dispatch thunk of IteratorProtocol.next()();
    v58 = v81;
    if (!v81)
    {
      break;
    }

    v59 = v80;
    rawValue = v52._rawValue;
    v61 = *(v52._rawValue + 2);
    v60 = *(v52._rawValue + 3);
    if (v61 >= v60 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v60 > 1), v61 + 1, 1);
      v52._rawValue = rawValue;
    }

    *(v52._rawValue + 2) = v61 + 1;
    v62 = v52._rawValue + 16 * v61;
    *(v62 + 4) = v59;
    *(v62 + 5) = v58;
  }

  (*(v74 + 8))(v7, AssociatedTypeWitness);
  countAndFlagsBits = ICUListFormatter.format(strings:)(v52)._countAndFlagsBits;
  swift_unknownObjectRelease();

  return countAndFlagsBits;
}

uint64_t static FormatStyle.list<A, B>(memberStyle:type:width:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v11 = *(a2 - 8);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *v15;
  v17 = *v16;
  v18 = *(v11 + 16);
  v18(v14, v20, v19, v12);
  (v18)(a6, v14, a2);
  v29 = a2;
  v30 = a3;
  v31 = a4;
  v32 = a5;
  v21 = type metadata accessor for ListFormatStyle();
  v22 = v21[13];
  *(a6 + v22) = 0;
  v23 = v21[14];
  *(a6 + v23) = 0;
  type metadata accessor for _LocaleAutoupdating();
  inited = swift_initStaticObject();
  (*(v11 + 8))(v14, a2);
  result = _s10Foundation19_LocaleAutoupdatingCAcA01_B8ProtocolAAWlTm_0(&lazy protocol witness table cache variable for type _LocaleAutoupdating and conformance _LocaleAutoupdating, type metadata accessor for _LocaleAutoupdating);
  v26 = (a6 + v21[15]);
  *v26 = inited;
  v26[1] = result;
  *(a6 + v22) = v17;
  *(a6 + v23) = v28;
  return result;
}

uint64_t static FormatStyle.list<A>(type:width:)@<X0>(char *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  *a3 = 0;
  type metadata accessor for _LocaleAutoupdating();
  inited = swift_initStaticObject();
  result = _s10Foundation19_LocaleAutoupdatingCAcA01_B8ProtocolAAWlTm_0(&lazy protocol witness table cache variable for type _LocaleAutoupdating and conformance _LocaleAutoupdating, type metadata accessor for _LocaleAutoupdating);
  *(a3 + 8) = inited;
  *(a3 + 16) = result;
  *a3 = v5;
  *(a3 + 1) = v4;
  return result;
}

unint64_t lazy protocol witness table accessor for type StringStyle.CodingKeys and conformance StringStyle.CodingKeys()
{
  result = lazy protocol witness table cache variable for type StringStyle.CodingKeys and conformance StringStyle.CodingKeys;
  if (!lazy protocol witness table cache variable for type StringStyle.CodingKeys and conformance StringStyle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StringStyle.CodingKeys and conformance StringStyle.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StringStyle.CodingKeys and conformance StringStyle.CodingKeys;
  if (!lazy protocol witness table cache variable for type StringStyle.CodingKeys and conformance StringStyle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StringStyle.CodingKeys and conformance StringStyle.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StringStyle.CodingKeys and conformance StringStyle.CodingKeys;
  if (!lazy protocol witness table cache variable for type StringStyle.CodingKeys and conformance StringStyle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StringStyle.CodingKeys and conformance StringStyle.CodingKeys);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for ListFormatStyle<A, B>(void *a1)
{
  a1[1] = swift_getWitnessTable();
  a1[2] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a1[3] = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ListFormatStyle(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 9) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *((a1 + v6 + 9) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_DWORD *storeEnumTagSinglePayload for ListFormatStyle(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 9) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v8 + 9) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 9) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 9) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 9) & 0xFFFFFFFFFFFFFFF8) + 16);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 9) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      *v18 = a2 & 0x7FFFFFFF;
      v18[1] = 0;
    }

    else
    {
      *v18 = a2 - 1;
    }
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

uint64_t ICU.CaseMap.__deallocating_deinit()
{
  ucasemap_close();

  return swift_deallocClassInstance();
}

Swift::String_optional __swiftcall ICU.Enumerator.Elements.Iterator.next()()
{
  if (uenum_next())
  {
    v0 = String.init(cString:)();
  }

  else
  {
    v0 = 0;
    v1 = 0;
  }

  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

uint64_t ICU.FieldPositer.__deallocating_deinit()
{
  ufieldpositer_close();

  return swift_deallocClassInstance();
}

uint64_t specialized _withResizingUCharBuffer(initialSize:_:)(uint64_t isStackAllocationSafe)
{
  v5[2] = *MEMORY[0x1E69E9840];
  if ((isStackAllocationSafe & 0x80000000) != 0)
  {
    __break(1u);
  }

  if (isStackAllocationSafe < 513 || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    specialized closure #1 in _withResizingUCharBuffer(initialSize:_:)(&v5[-1] - v1, v5);
    return v5[0];
  }

  else
  {
    v3 = swift_slowAlloc();
    specialized closure #1 in _withResizingUCharBuffer(initialSize:_:)(v3, v5);
    MEMORY[0x1865D2690](v3, -1, -1);
    return v5[0];
  }
}

{

  return sub_180A47784(isStackAllocationSafe);
}

uint64_t _withFixedUCharBuffer(size:defaultIsError:_:)(uint64_t isStackAllocationSafe, unsigned __int8 a2, uint64_t (*a3)(uint64_t, uint64_t, int *))
{
  v15[2] = *MEMORY[0x1E69E9840];
  if ((isStackAllocationSafe & 0x80000000) != 0)
  {
    __break(1u);
  }

  v5 = isStackAllocationSafe;
  if (isStackAllocationSafe <= 512 || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), isStackAllocationSafe))
  {
    v6 = MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v8 = &v15[-1] - v7;
    LODWORD(v15[0]) = 0;
    v9 = (a3)(&v15[-1] - v7, v5, v15, v6);
    if ((v9 & 0x100000000) != 0 || SLODWORD(v15[0]) > 0)
    {
      return 0;
    }

    else
    {
      v11 = v9;
      result = 0;
      if (((LODWORD(v15[0]) == -127) & a2) == 0 && v11 <= v5 && v11 > 0)
      {
        return specialized String.init(_utf16:)(v8, v11 & 0x7FFFFFFF);
      }
    }
  }

  else
  {
    v13 = swift_slowAlloc();
    closure #1 in _withFixedUCharBuffer(size:defaultIsError:_:)(v13, a3, v5, a2 & 1, v15);
    MEMORY[0x1865D2690](v13, -1, -1);
    return v15[0];
  }

  return result;
}

const char *ICUError.debugDescription.getter(UErrorCode a1)
{
  result = u_errorName(a1);
  if (result)
  {
    result = MEMORY[0x1865CAEB0]();
    if (!v2)
    {
      _StringGuts.grow(_:)(20);

      v3 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1865CB0E0](v3);

      return 0xD000000000000012;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t one-time initialization function for logger()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static ICUError.logger);
  __swift_project_value_buffer(v0, static ICUError.logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static _CalendarGregorian.logger);
  __swift_project_value_buffer(v0, static _CalendarGregorian.logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static URL.logger);
  __swift_project_value_buffer(v0, static URL.logger);
  return Logger.init(subsystem:category:)();
}

uint64_t specialized closure #1 in _withResizingUCharBuffer(initialSize:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, int *, double)@<X6>, uint64_t (*a7)(void, uint64_t, uint64_t, void, int *, double)@<X7>, uint64_t *a8@<X8>)
{
  v39 = *MEMORY[0x1E69E9840];
  v38 = 0;
  if (!a1)
  {
LABEL_21:
    __break(1u);
  }

  v12 = v8;
  v18 = *(a3 + 16);
  v19 = a4;

  isStackAllocationSafe = a6(v18, a5, a1, a2, &v38, v19);
  if (v38 != 15)
  {
    if (v38 > 0 || isStackAllocationSafe <= 0)
    {

      *a8 = 0;
      a8[1] = 0;
    }

    else
    {
      v29 = specialized String.init(_utf16:)(a1, isStackAllocationSafe);
      v31 = v30;

      *a8 = v29;
      a8[1] = v31;
    }

    return result;
  }

  v21 = (isStackAllocationSafe + 1);
  if (__OFADD__(isStackAllocationSafe, 1))
  {
    __break(1u);
LABEL_17:
    v35 = isStackAllocationSafe;
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if ((isStackAllocationSafe & 1) == 0)
    {
      v33 = swift_slowAlloc();

      specialized closure #1 in closure #1 in _withResizingUCharBuffer(initialSize:_:)(v33, v35, a3, a4, a5, a7, a8);
      if (v36)
      {

        result = MEMORY[0x1865D2690](v33, -1, -1);
        __break(1u);
      }

      else
      {
        MEMORY[0x1865D2690](v33, -1, -1);
      }

      return result;
    }

    goto LABEL_6;
  }

  if ((v21 & 0x80000000) != 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  v36 = v12;
  if (v21 >= 513)
  {
    goto LABEL_17;
  }

LABEL_6:
  MEMORY[0x1EEE9AC00](isStackAllocationSafe);
  v23 = &v34[-v22];
  v37 = 0;
  v24 = a6(*(a3 + 16), a5, &v34[-v22], v21, &v37, v19);
  v25 = 0;
  v26 = 0;
  if (v37 <= 0 && v24 > 0)
  {
    v25 = specialized String.init(_utf16:)(v23, v24);
    v26 = v27;
  }

  *a8 = v25;
  a8[1] = v26;
  return result;
}

uint64_t specialized closure #1 in _withResizingUCharBuffer(initialSize:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X5>, uint64_t a3@<X6>, uint64_t *a4@<X8>)
{
  v25 = *MEMORY[0x1E69E9840];
  v24 = 0;
  if (!a1)
  {
    goto LABEL_18;
  }

  if (!(*(a3 + 16) >> 31))
  {
    v21 = a4;
    v20[1] = a2;

    v6 = ulistfmt_format();
    if (v6 <= 0)
    {

      v15 = v21;
      *v21 = 0;
      v15[1] = 0;
    }

    v10 = specialized String.init(_utf16:)(a1, v6);
    v11 = v13;
LABEL_11:

    v14 = v21;
    *v21 = v10;
    v14[1] = v11;
  }

  __break(1u);
  __break(1u);
  v17 = a1;
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  if (isStackAllocationSafe)
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v8 = v20 - v7;
    v23 = 0;
    if (!(*(a3 + 16) >> 31))
    {
      v9 = ulistfmt_format();
      v10 = 0;
      v11 = 0;
      if (v23 <= 0 && v9 > 0)
      {
        v10 = specialized String.init(_utf16:)(v8, v9);
        v11 = v12;
      }

      goto LABEL_11;
    }

    __break(1u);
    __break(1u);
LABEL_18:
    __break(1u);
  }

  v19 = swift_slowAlloc();

  specialized closure #1 in closure #1 in _withResizingUCharBuffer(initialSize:_:)(v19, v17, a3, v21);
  if (!v22)
  {
    MEMORY[0x1865D2690](v19, -1, -1);
  }

  result = MEMORY[0x1865D2690](v19, -1, -1);
  __break(1u);
  return result;
}

uint64_t specialized closure #1 in closure #1 in _withResizingUCharBuffer(initialSize:_:)@<X0>(uint64_t a1@<X0>, int a2@<W2>, uint64_t *a3@<X8>)
{
  if (!a1)
  {
LABEL_7:
    __break(1u);
  }

  if (__OFADD__(a2, 1))
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = unumf_resultToString();
  if (v5 <= 0)
  {

    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    v6 = specialized String.init(_utf16:)(a1, v5);
    v8 = v7;

    *a3 = v6;
    a3[1] = v8;
  }

  return result;
}

{
  if (!a1)
  {
LABEL_7:
    __break(1u);
  }

  if (__OFADD__(a2, 1))
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = udat_formatForFields();
  if (v5 <= 0)
  {

    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    v6 = specialized String.init(_utf16:)(a1, v5);
    v8 = v7;

    *a3 = v6;
    a3[1] = v8;
  }

  return result;
}

{
  if (!a1)
  {
LABEL_7:
    __break(1u);
  }

  if (__OFADD__(a2, 1))
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = unum_formatInt64();
  if (v5 <= 0)
  {

    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    v6 = specialized String.init(_utf16:)(a1, v5);
    v8 = v7;

    *a3 = v6;
    a3[1] = v8;
  }

  return result;
}

{
  if (!a1)
  {
LABEL_8:
    __break(1u);
  }

  if (__OFADD__(a2, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  v5 = udat_formatForFields();
  if (v5 <= 0)
  {

    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    v6 = specialized String.init(_utf16:)(a1, v5);
    v8 = v7;

    *a3 = v6;
    a3[1] = v8;
  }
}

{
  if (!a1)
  {
LABEL_7:
    __break(1u);
  }

  if (__OFADD__(a2, 1))
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = udtitvfmt_format();
  if (v5 <= 0)
  {

    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    v6 = specialized String.init(_utf16:)(a1, v5);
    v8 = v7;

    *a3 = v6;
    a3[1] = v8;
  }

  return result;
}

{
  if (!a1)
  {
LABEL_7:
    __break(1u);
  }

  if (__OFADD__(a2, 1))
  {
    __break(1u);
    goto LABEL_7;
  }

  Symbols = udat_getSymbols();
  if (Symbols <= 0)
  {

    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    v6 = specialized String.init(_utf16:)(a1, Symbols);
    v8 = v7;

    *a3 = v6;
    a3[1] = v8;
  }

  return result;
}

{
  if (!a1)
  {
LABEL_9:
    __break(1u);
  }

  if (__OFADD__(a2, 1))
  {
    __break(1u);
    goto LABEL_9;
  }

  String.utf8CString.getter();
  TimeZoneDisplayName = ucal_getTimeZoneDisplayName();

  if (TimeZoneDisplayName <= 0)
  {

    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    v6 = specialized String.init(_utf16:)(a1, TimeZoneDisplayName);
    v8 = v7;

    *a3 = v6;
    a3[1] = v8;
  }

  return result;
}

{
  if (!a1)
  {
LABEL_7:
    __break(1u);
  }

  if (__OFADD__(a2, 1))
  {
    __break(1u);
    goto LABEL_7;
  }

  MEMORY[0x1865D2B40]();
  v5 = udat_format();
  result = 0;
  v7 = 0;
  if (v5 > 0)
  {
    result = specialized String.init(_utf16:)(a1, v5);
  }

  *a3 = result;
  a3[1] = v7;
  return result;
}

uint64_t specialized closure #1 in closure #1 in _withResizingUCharBuffer(initialSize:_:)@<X0>(uint64_t a1@<X0>, int a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t (*a6)(void, uint64_t, uint64_t, void, int *, double)@<X6>, uint64_t *a7@<X8>)
{
  v16 = *MEMORY[0x1E69E9840];
  v15 = 0;
  if (!a1)
  {
LABEL_11:
    __break(1u);
  }

  if (__OFADD__(a2, 1))
  {
    __break(1u);
    goto LABEL_11;
  }

  v9 = a6(*(a3 + 16), a5, a1, (a2 + 1), &v15, a4);
  if (v15 > 0 || v9 <= 0)
  {

    *a7 = 0;
    a7[1] = 0;
  }

  else
  {
    v11 = specialized String.init(_utf16:)(a1, v9);
    v13 = v12;

    *a7 = v11;
    a7[1] = v13;
  }

  return result;
}

uint64_t specialized closure #1 in closure #1 in _withResizingUCharBuffer(initialSize:_:)@<X0>(uint64_t a1@<X0>, int a2@<W2>, uint64_t a3@<X6>, uint64_t *a4@<X8>)
{
  if (!a1)
  {
LABEL_11:
    __break(1u);
  }

  if (__OFADD__(a2, 1))
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(a3 + 16) >> 31)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = ulistfmt_format();
  if (v6 <= 0)
  {

    *a4 = 0;
    a4[1] = 0;
  }

  else
  {
    v7 = specialized String.init(_utf16:)(a1, v6);
    v9 = v8;

    *a4 = v7;
    a4[1] = v9;
  }
}

uint64_t specialized closure #1 in closure #1 in _withResizingUCharBuffer(initialSize:_:)@<X0>(uint64_t a1@<X0>, int a2@<W2>, uint64_t a3@<X4>, uint64_t *a4@<X8>)
{
  if (!a1)
  {
LABEL_11:
    __break(1u);
  }

  if (__OFADD__(a2, 1))
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(a3 + 16) >> 31)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  BestPatternWithOptions = udatpg_getBestPatternWithOptions();
  if (BestPatternWithOptions <= 0)
  {

    *a4 = 0;
    a4[1] = 0;
  }

  else
  {
    v7 = specialized String.init(_utf16:)(a1, BestPatternWithOptions);
    v9 = v8;

    *a4 = v7;
    a4[1] = v9;
  }

  return result;
}

uint64_t closure #1 in _withFixedUCharBuffer(size:defaultIsError:_:)@<X0>(uint64_t result@<X0>, uint64_t (*a2)(uint64_t, uint64_t, int *)@<X2>, uint64_t a3@<X4>, unsigned __int8 a4@<W5>, uint64_t *a5@<X8>)
{
  v10 = 0;
  if (result)
  {
    v6 = a3;
    v7 = result;
    result = a2(result, a3, &v10);
    if ((result & 0x100000000) != 0 || v10 > 0 || ((v10 == -127) & a4) != 0 || result > v6 || result < 1)
    {
      *a5 = 0;
      a5[1] = 0;
    }

    else
    {
      result = specialized String.init(_utf16:)(v7, result & 0x7FFFFFFF);
      *a5 = result;
      a5[1] = v9;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized closure #1 in closure #1 in _withResizingCharBuffer(initialSize:_:)@<X0>(uint64_t a1@<X0>, int a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t, uint64_t, int *)@<X6>, uint64_t *a7@<X8>)
{
  v17 = *MEMORY[0x1E69E9840];
  v16 = 0;
  if (!a1)
  {
    goto LABEL_14;
  }

  v8 = __OFADD__(a2, 1);
  v9 = (a2 + 1);
  if (v8)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (!a4)
  {
    goto LABEL_15;
  }

  if (a5 < 0xFFFFFFFF80000000)
  {
    goto LABEL_12;
  }

  if (a5 > 0x7FFFFFFF)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
  }

  v11 = a6(*(a3 + 16), a1, v9, a4, a5, &v16);
  if (v16 > 0 || v11 <= 0)
  {

    *a7 = 0;
    a7[1] = 0;
  }

  else
  {
    *(a1 + v11) = 0;
    v12 = MEMORY[0x1865CAEB0](a1);
    v14 = v13;

    *a7 = v12;
    a7[1] = v14;
  }

  return result;
}

uint64_t specialized closure #1 in _withFixedCharBuffer(size:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (!a1)
  {
    __break(1u);
  }

  String.utf8CString.getter();
  Variant = uloc_getVariant();

  if (Variant <= 0)
  {

    *a2 = 0;
    a2[1] = 0;
  }

  else
  {
    *(a1 + Variant) = 0;
    v5 = MEMORY[0x1865CAEB0](a1);
    v7 = v6;

    *a2 = v5;
    a2[1] = v7;
  }

  return result;
}

uint64_t specialized _withResizingUCharBuffer(initialSize:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = MEMORY[0x1E69E5760];
  v5 = MEMORY[0x1E69E5760];

  return specialized _withResizingUCharBuffer(initialSize:_:)(a1, a2, a3, a4, v4, v5);
}

{
  v4 = MEMORY[0x1E69E5768];
  v5 = MEMORY[0x1E69E5768];

  return specialized _withResizingUCharBuffer(initialSize:_:)(a1, a2, a3, a4, v4, v5);
}

uint64_t specialized _withResizingUCharBuffer(initialSize:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, int *, double), uint64_t (*a6)(uint64_t, uint64_t, _BYTE *, uint64_t, int *, double))
{
  v29[2] = *MEMORY[0x1E69E9840];
  if ((a1 & 0x80000000) != 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  v10 = a6;
  v9 = a5;
  v7 = a4;
  v8 = a3;
  v6 = a2;
  v14 = a1;
  isStackAllocationSafe = swift_retain_n();
  if (v14 >= 513)
  {
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if ((isStackAllocationSafe & 1) == 0)
    {
      v23 = swift_slowAlloc();

      specialized closure #1 in _withResizingUCharBuffer(initialSize:_:)(v23, v14, v6, v8, v7, v9, v9, v29);
      MEMORY[0x1865D2690](v23, -1, -1);

      return v29[0];
    }
  }

  MEMORY[0x1EEE9AC00](isStackAllocationSafe);
  v17 = &v26[-v16];
  v28 = 0;
  v12 = *(v6 + 16);
  v13 = v8;
  swift_retain_n();
  a1 = v10(v12, v7, v17, v14, &v28, v8);
  if (v28 == 15)
  {
    v11 = (a1 + 1);
    if (!__OFADD__(a1, 1))
    {
      if ((v11 & 0x80000000) != 0)
      {
        __break(1u);
      }

      if (v11 < 513)
      {
LABEL_7:
        MEMORY[0x1EEE9AC00](a1);
        v19 = &v26[-v18];
        LODWORD(v29[0]) = 0;
        v20 = v10(v12, v7, &v26[-v18], v11, v29, v13);
        v21 = 0;
        if (SLODWORD(v29[0]) <= 0 && v20 > 0)
        {
          v21 = specialized String.init(_utf16:)(v19, v20);
        }

        goto LABEL_14;
      }

LABEL_22:
      v27 = a1;
      a1 = swift_stdlib_isStackAllocationSafe();
      if ((a1 & 1) == 0)
      {
        v24 = v27;
        v25 = swift_slowAlloc();

        specialized closure #1 in closure #1 in _withResizingUCharBuffer(initialSize:_:)(v25, v24, v6, v8, v7, v9, v29);
        MEMORY[0x1865D2690](v25, -1, -1);

        v21 = v29[0];
        goto LABEL_16;
      }

      goto LABEL_7;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v28 > 0 || a1 <= 0)
  {

    v21 = 0;
    goto LABEL_16;
  }

  v21 = specialized String.init(_utf16:)(v17, a1);
LABEL_14:

LABEL_16:

  return v21;
}

uint64_t specialized _withResizingUCharBuffer(initialSize:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23[2] = *MEMORY[0x1E69E9840];
  if ((a1 & 0x80000000) != 0)
  {
    goto LABEL_21;
  }

  v5 = a5;
  v7 = a1;
  swift_retain_n();
  isStackAllocationSafe = swift_bridgeObjectRetain_n();
  if (v7 >= 513)
  {
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if ((isStackAllocationSafe & 1) == 0)
    {
      v18 = swift_slowAlloc();

      specialized closure #1 in _withResizingUCharBuffer(initialSize:_:)(v18, a4, v5, v23);
      MEMORY[0x1865D2690](v18, -1, -1);
      swift_bridgeObjectRelease_n();

      return v23[0];
    }
  }

  MEMORY[0x1EEE9AC00](isStackAllocationSafe);
  v11 = v21 - v10;
  v22 = 0;
  if (*(v5 + 16) >> 31)
  {
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v21[0] = v9;
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  a1 = ulistfmt_format();
  if (v22 != 15)
  {
    if (v22 > 0 || a1 <= 0)
    {
      swift_bridgeObjectRelease_n();

      v16 = 0;
    }

    else
    {
      v16 = specialized String.init(_utf16:)(v11, a1);
      swift_bridgeObjectRelease_n();
    }

    goto LABEL_16;
  }

  v12 = a1 + 1;
  if (!__OFADD__(a1, 1))
  {
    if (v12 < 0)
    {
      __break(1u);
    }

    if (v12 < 513)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  __break(1u);
LABEL_23:
  v19 = a1;
  a1 = swift_stdlib_isStackAllocationSafe();
  if (a1)
  {
LABEL_8:
    MEMORY[0x1EEE9AC00](a1);
    v14 = v21 - v13;
    LODWORD(v23[0]) = 0;
    v15 = ulistfmt_format();
    v16 = 0;
    if (SLODWORD(v23[0]) <= 0 && v15 > 0)
    {
      v16 = specialized String.init(_utf16:)(v14, v15);
    }

    swift_bridgeObjectRelease_n();

    goto LABEL_16;
  }

  v20 = swift_slowAlloc();

  specialized closure #1 in closure #1 in _withResizingUCharBuffer(initialSize:_:)(v20, v19, v5, v23);
  MEMORY[0x1865D2690](v20, -1, -1);
  swift_bridgeObjectRelease_n();

  v16 = v23[0];
LABEL_16:
  swift_bridgeObjectRelease_n();

  return v16;
}

uint64_t specialized _withResizingUCharBuffer(initialSize:_:)(uint64_t a1)
{
  v16[2] = *MEMORY[0x1E69E9840];
  if ((a1 & 0x80000000) != 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  v1 = a1;
  swift_retain_n();
  isStackAllocationSafe = swift_retain_n();
  if (v1 >= 513)
  {
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if ((isStackAllocationSafe & 1) == 0)
    {
      v11 = swift_slowAlloc();

      specialized closure #1 in _withResizingUCharBuffer(initialSize:_:)(v11, v16);
      MEMORY[0x1865D2690](v11, -1, -1);

      return v16[0];
    }
  }

  MEMORY[0x1EEE9AC00](isStackAllocationSafe);
  v4 = &v14[-v3];
  v15 = 0;
  swift_retain_n();
  swift_retain_n();
  a1 = udat_formatForFields();
  if (v15 == 15)
  {
    v5 = a1 + 1;
    if (!__OFADD__(a1, 1))
    {
      if (v5 < 0)
      {
        __break(1u);
      }

      if (v5 < 513)
      {
LABEL_7:
        MEMORY[0x1EEE9AC00](a1);
        v7 = &v14[-v6];
        LODWORD(v16[0]) = 0;
        v8 = udat_formatForFields();
        v9 = 0;
        if (SLODWORD(v16[0]) <= 0 && v8 > 0)
        {
          v9 = specialized String.init(_utf16:)(v7, v8);
        }

        goto LABEL_14;
      }

LABEL_22:
      v12 = a1;
      a1 = swift_stdlib_isStackAllocationSafe();
      if ((a1 & 1) == 0)
      {
        v13 = swift_slowAlloc();

        specialized closure #1 in closure #1 in _withResizingUCharBuffer(initialSize:_:)(v13, v12, v16);
        MEMORY[0x1865D2690](v13, -1, -1);

        v9 = v16[0];
        goto LABEL_16;
      }

      goto LABEL_7;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v15 > 0 || a1 <= 0)
  {

    v9 = 0;
    goto LABEL_16;
  }

  v9 = specialized String.init(_utf16:)(v4, a1);
LABEL_14:

LABEL_16:

  return v9;
}

{
  v16[2] = *MEMORY[0x1E69E9840];
  if ((a1 & 0x80000000) != 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  v1 = a1;
  isStackAllocationSafe = swift_retain_n();
  if (v1 >= 513)
  {
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if ((isStackAllocationSafe & 1) == 0)
    {
      v11 = swift_slowAlloc();

      specialized closure #1 in _withResizingUCharBuffer(initialSize:_:)(v11, v16);
      MEMORY[0x1865D2690](v11, -1, -1);

      return v16[0];
    }
  }

  MEMORY[0x1EEE9AC00](isStackAllocationSafe);
  v4 = &v14[-v3];
  v15 = 0;
  swift_retain_n();
  a1 = udtitvfmt_format();
  if (v15 == 15)
  {
    v5 = a1 + 1;
    if (!__OFADD__(a1, 1))
    {
      if (v5 < 0)
      {
        __break(1u);
      }

      if (v5 < 513)
      {
LABEL_7:
        MEMORY[0x1EEE9AC00](a1);
        v7 = &v14[-v6];
        LODWORD(v16[0]) = 0;
        v8 = udtitvfmt_format();
        v9 = 0;
        if (SLODWORD(v16[0]) <= 0 && v8 > 0)
        {
          v9 = specialized String.init(_utf16:)(v7, v8);
        }

        goto LABEL_14;
      }

LABEL_22:
      v12 = a1;
      a1 = swift_stdlib_isStackAllocationSafe();
      if ((a1 & 1) == 0)
      {
        v13 = swift_slowAlloc();

        specialized closure #1 in closure #1 in _withResizingUCharBuffer(initialSize:_:)(v13, v12, v16);
        MEMORY[0x1865D2690](v13, -1, -1);

        v9 = v16[0];
        goto LABEL_16;
      }

      goto LABEL_7;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v15 > 0 || a1 <= 0)
  {

    v9 = 0;
    goto LABEL_16;
  }

  v9 = specialized String.init(_utf16:)(v4, a1);
LABEL_14:

LABEL_16:

  return v9;
}

uint64_t ICU.StringConverter.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  os_unfair_lock_lock(v1 + 6);
  ucnv_close();
  os_unfair_lock_unlock(v1 + 6);

  return swift_deallocClassInstance();
}

uint64_t ICUPatternGenerator.__deallocating_deinit()
{
  udatpg_close();

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for ICUPatternGenerator.PatternGeneratorInfo(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t storeEnumTagSinglePayload for ICUPatternGenerator.PatternGeneratorInfo(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ICUPatternGenerator.PatternGeneratorInfo()
{
  v1 = *(v0 + 16);
  Hasher.init(_seed:)();
  String.hash(into:)();
  MEMORY[0x1865CD060](v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ICUPatternGenerator.PatternGeneratorInfo()
{
  v1 = *(v0 + 16);
  String.hash(into:)();
  return MEMORY[0x1865CD060](v1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ICUPatternGenerator.PatternGeneratorInfo()
{
  v1 = *(v0 + 16);
  Hasher.init(_seed:)();
  String.hash(into:)();
  MEMORY[0x1865CD060](v1);
  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance ICUPatternGenerator.PatternGeneratorInfo(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return v2 == v3;
  }

  v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

void _LocaleBridged.copy(newCalendarIdentifier:)(char *a1)
{
  v19[44] = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = [*(v1 + 16) localeIdentifier];
  if (v3)
  {
    v4 = v3;
    isTaggedPointer = _objc_isTaggedPointer(v3);
    v6 = v4;
    v7 = v6;
    if (isTaggedPointer)
    {
      TaggedPointerTag = _objc_getTaggedPointerTag(v6);
      switch(TaggedPointerTag)
      {
        case 0:
          v17[0] = 0;
          _CFIndirectTaggedPointerStringGetContents();
          _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
          if (v13)
          {
          }

          else
          {
            [v7 mutableCopy];
            _bridgeAnyObjectToAny(_:)();

            swift_unknownObjectRelease();
            swift_dynamicCast();
          }

          goto LABEL_20;
        case 0x16:
          v11 = [v7 UTF8String];
          if (v11)
          {
            v11 = String.init(utf8String:)(v11);
            if (v12)
            {
              goto LABEL_12;
            }
          }

          else
          {
            __break(1u);
          }

          __break(1u);
          os_unfair_lock_unlock(v11);
          __break(1u);
          return;
        case 2:
          MEMORY[0x1EEE9AC00](TaggedPointerTag);
          String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

          goto LABEL_21;
      }
    }

    v18[0] = 0;
    v19[0] = 0;
    LOBYTE(v17[0]) = 0;
    LOBYTE(v16) = 0;
    if (!__CFStringIsCF())
    {
      v9 = v7;
      String.init(_nativeStorage:)();
      if (v10)
      {

        goto LABEL_21;
      }

      v19[0] = [v9 length];
      if (!v19[0])
      {

        goto LABEL_21;
      }

      String.init(_cocoaString:)();
LABEL_20:

      goto LABEL_21;
    }

LABEL_12:
  }

LABEL_21:
  Locale.Components.init(identifier:)(v18);
  v18[96] = v2;
  memcpy(v19, v18, 0x160uLL);
  v14 = outlined init with copy of Locale.Components(v19, v17);
  if (one-time initialization token for cache != -1)
  {
    v14 = swift_once();
  }

  v15 = static LocaleCache.cache;
  MEMORY[0x1EEE9AC00](v14);
  os_unfair_lock_lock(v15 + 12);
  partial apply for closure #1 in LocaleCache.fixedComponents(_:)(&v15[4], &v16);
  os_unfair_lock_unlock(v15 + 12);
  memcpy(v17, v18, sizeof(v17));
  outlined destroy of Locale.Components(v17);
  outlined destroy of Locale.Components(v19);
}

Swift::String_optional __swiftcall _LocaleBridged.calendarIdentifierDisplayName(for:)(Foundation::Calendar::Identifier a1)
{
  v39[4] = *MEMORY[0x1E69E9840];
  v2 = *(v1 + 16);
  LOBYTE(v39[0]) = *a1;
  v3 = specialized static Calendar._toNSCalendarIdentifier(_:)(v39);
  isTaggedPointer = _objc_isTaggedPointer(v3);
  v5 = v3;
  v6 = v2;
  if (isTaggedPointer)
  {
    TaggedPointerTag = _objc_getTaggedPointerTag(v5);
    if (TaggedPointerTag)
    {
      if (TaggedPointerTag != 22)
      {
        if (TaggedPointerTag == 2)
        {
          MEMORY[0x1EEE9AC00](TaggedPointerTag);
          String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

          goto LABEL_22;
        }

        goto LABEL_6;
      }

      v10 = [v5 UTF8String];
      if (!v10)
      {
        __break(1u);
        goto LABEL_47;
      }

      String.init(utf8String:)(v10);
      if (v12)
      {
LABEL_16:

        goto LABEL_21;
      }

      __break(1u);
    }

    _CFIndirectTaggedPointerStringGetContents();
    _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v13)
    {
      [v5 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      goto LABEL_21;
    }

    goto LABEL_16;
  }

LABEL_6:
  LOBYTE(v37) = 0;
  v39[0] = 0;
  if (__CFStringIsCF())
  {
    if (!v39[0])
    {

      goto LABEL_22;
    }
  }

  else
  {
    v8 = v5;
    String.init(_nativeStorage:)();
    if (v9 || (v39[0] = [v8 length]) == 0)
    {

      goto LABEL_22;
    }
  }

  String.init(_cocoaString:)();
LABEL_21:

LABEL_22:
  v14 = *MEMORY[0x1E695E6C0];
  v15 = String._bridgeToObjectiveCImpl()();

  v16 = CFLocaleCopyDisplayNameForPropertyValue(v6, v14, v15);

  swift_unknownObjectRelease();
  if (!v16)
  {
    v10 = 0;
    v11 = 0;
    goto LABEL_49;
  }

  v17 = _objc_isTaggedPointer(v16);
  v18 = v16;
  v19 = v18;
  if ((v17 & 1) == 0)
  {
LABEL_28:
    v39[0] = 0;
    if (__CFStringIsCF())
    {
      if (v39[0])
      {
LABEL_44:
        v33 = String.init(_cocoaString:)();
        v34 = v35;
LABEL_45:

        v11 = v34;
        v10 = v33;
        goto LABEL_49;
      }
    }

    else
    {
      v24 = v19;
      v25 = String.init(_nativeStorage:)();
      if (v26)
      {
        v27 = v25;
        v28 = v26;

        v11 = v28;
        v10 = v27;
        goto LABEL_49;
      }

      v39[0] = [(__CFString *)v24 length];
      if (v39[0])
      {
        goto LABEL_44;
      }
    }

    v10 = 0;
    v11 = 0xE000000000000000;
    goto LABEL_49;
  }

  v20 = _objc_getTaggedPointerTag(v18);
  if (!v20)
  {
    _CFIndirectTaggedPointerStringGetContents();
    v31 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (v32)
    {
      v33 = v31;
      v34 = v32;
    }

    else
    {
      [(__CFString *)v19 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v33 = v37;
      v34 = v38;
    }

    goto LABEL_45;
  }

  if (v20 == 22)
  {
    v10 = [(__CFString *)v19 UTF8String];
    if (v10)
    {
      v10 = String.init(utf8String:)(v10);
      if (v11)
      {
        v29 = v10;
        v30 = v11;

        v10 = v29;
        v11 = v30;
        goto LABEL_49;
      }

LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if (v20 != 2)
  {
    goto LABEL_28;
  }

  MEMORY[0x1EEE9AC00](v20);
  v21 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
  v23 = v22;

  v11 = v23;
  v10 = v21;
LABEL_49:
  result.value._object = v11;
  result.value._countAndFlagsBits = v10;
  return result;
}

id _LocaleBridged.identifierDisplayName(for:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [*(v3 + 16) displayNameForKey:*a3 value:String._bridgeToObjectiveCImpl()()];
  swift_unknownObjectRelease();
  if (!v4)
  {
    return 0;
  }

  isTaggedPointer = _objc_isTaggedPointer(v4);
  v6 = v4;
  v7 = v6;
  if (!isTaggedPointer)
  {
    goto LABEL_7;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v6);
  if (!TaggedPointerTag)
  {
    _CFIndirectTaggedPointerStringGetContents();
    v17 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (v18)
    {
      v19 = v17;
    }

    else
    {
      [v7 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v19 = v20;
    }

LABEL_22:

    return v19;
  }

  if (TaggedPointerTag != 22)
  {
    if (TaggedPointerTag == 2)
    {
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      v9 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

      return v9;
    }

LABEL_7:
    if (__CFStringIsCF())
    {

      return 0;
    }

    v11 = v7;
    v12 = String.init(_nativeStorage:)();
    if (v13)
    {
      v14 = v12;

      return v14;
    }

    if (![v11 length])
    {

      return 0;
    }

    v19 = String.init(_cocoaString:)();
    goto LABEL_22;
  }

  result = [v7 UTF8String];
  if (result)
  {
    result = String.init(utf8String:)(result);
    if (v15)
    {
      v16 = result;

      return v16;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t _LocaleBridged.variantCode.getter(void *a1)
{
  if ([*(v1 + 16) objectForKey_])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (!*(&v7 + 1))
  {
    outlined destroy of Any?(v8);
    return 0;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  result = v4;
  v3 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v3 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {

    return 0;
  }

  return result;
}

uint64_t _LocaleBridged.exemplarCharacterSet.getter@<X0>(void *a1@<X8>)
{
  if ([*(v1 + 16) objectForKey_])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (!*(&v5 + 1))
  {
    result = outlined destroy of Any?(v6);
    goto LABEL_8;
  }

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_8:
    *a1 = 0;
  }

  return result;
}

void _LocaleBridged.calendar.getter(_OWORD *a1@<X8>)
{
  if ([*(v1 + 16) objectForKey_])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v46 = 0u;
    v47 = 0u;
  }

  v48[0] = v46;
  v48[1] = v47;
  if (*(&v47 + 1))
  {
    if (swift_dynamicCast())
    {
      v4 = v44;
LABEL_45:
      *a1 = v4;
      return;
    }
  }

  else
  {
    outlined destroy of Any?(v48);
  }

  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v5 = qword_1ED440450;
  os_unfair_lock_lock((qword_1ED440450 + 24));
  v6 = *(v5 + 16);
  if (*(v6 + 16) && (v7 = specialized __RawDictionaryStorage.find<A>(_:)(0), (v8 & 1) != 0))
  {
    v41 = *(*(v6 + 56) + 16 * v7);
    v9 = *(*(v6 + 56) + 16 * v7);
    swift_unknownObjectRetain();
    os_unfair_lock_unlock((v5 + 24));
    v4 = v41;
    if (v9)
    {
      goto LABEL_45;
    }
  }

  else
  {
    os_unfair_lock_unlock((v5 + 24));
  }

  v10 = type metadata accessor for _CalendarGregorian();
  v11 = lazy protocol witness table accessor for type _LocaleBridged and conformance _LocaleBridged(&lazy protocol witness table cache variable for type _CalendarGregorian and conformance _CalendarGregorian, 255, type metadata accessor for _CalendarGregorian);
  v45 = 0;
  v48[0] = 0uLL;
  v46 = 0uLL;
  *&v44 = 0;
  BYTE8(v44) = 1;
  v12 = protocol witness for _CalendarProtocol.init(identifier:timeZone:locale:firstWeekday:minimumDaysInFirstWeek:gregorianStartDate:) in conformance _CalendarGregorian(&v45, v48, &v46, 0, 1, 0, 1, &v44);
  os_unfair_lock_lock((v5 + 24));
  v13 = *(v5 + 16);
  if (*(v13 + 16))
  {
    v14 = specialized __RawDictionaryStorage.find<A>(_:)(0);
    if (v15)
    {
      v16 = *(*(v13 + 56) + 16 * v14);
LABEL_44:
      v43 = v16;
      swift_unknownObjectRetain();
      os_unfair_lock_unlock((v5 + 24));

      v4 = v43;
      goto LABEL_45;
    }
  }

  swift_unknownObjectRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v48[0] = *(v5 + 16);
  v18 = *&v48[0];
  v19 = specialized __RawDictionaryStorage.find<A>(_:)(0);
  v21 = *(v18 + 16);
  v22 = (v20 & 1) == 0;
  v23 = __OFADD__(v21, v22);
  v24 = v21 + v22;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    v2 = v20;
    if (*(v18 + 24) < v24)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v24, isUniquelyReferenced_nonNull_native);
      v25 = *&v48[0];
      v19 = specialized __RawDictionaryStorage.find<A>(_:)(0);
      if ((v2 & 1) == (v26 & 1))
      {
        goto LABEL_24;
      }

      v19 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v25 = v18;
LABEL_24:
      if (v2)
      {
LABEL_25:
        v27 = (*(v25 + 56) + 16 * v19);
        *v27 = v12;
        v27[1] = v11;
        swift_unknownObjectRelease();
LABEL_43:
        *(v5 + 16) = v25;
        *&v16 = v12;
        *(&v16 + 1) = v11;
        goto LABEL_44;
      }

LABEL_42:
      specialized _NativeDictionary._insert(at:key:value:)(v19, 0, v12, v25, v10, v11);
      goto LABEL_43;
    }
  }

  v39 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation8CalendarV10IdentifierOAC01_D8Protocol_pGMd);
  v28 = static _DictionaryStorage.copy(original:)();
  v25 = v28;
  if (!*(v18 + 16))
  {
LABEL_41:

    v19 = v39;
    if (v2)
    {
      goto LABEL_25;
    }

    goto LABEL_42;
  }

  v29 = (v28 + 64);
  v30 = ((1 << *(v25 + 32)) + 63) >> 6;
  __src = (v18 + 64);
  if (v25 != v18 || v29 >= v18 + 64 + 8 * v30)
  {
    memmove(v29, __src, 8 * v30);
  }

  v31 = 0;
  *(v25 + 16) = *(v18 + 16);
  v32 = 1 << *(v18 + 32);
  v33 = -1;
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  v34 = (v32 + 63) >> 6;
  v35 = v33 & *(v18 + 64);
  if (v35)
  {
    do
    {
LABEL_39:
      v42 = (v35 - 1) & v35;
      v37 = __clz(__rbit64(v35)) | (v31 << 6);
      v38 = *(*(v18 + 56) + 16 * v37);
      *(*(v25 + 48) + v37) = *(*(v18 + 48) + v37);
      *(*(v25 + 56) + 16 * v37) = v38;
      swift_unknownObjectRetain();
      v35 = v42;
    }

    while (v42);
  }

  v36 = v31;
  while (1)
  {
    v31 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      break;
    }

    if (v31 >= v34)
    {
      goto LABEL_41;
    }

    v35 = *(__src + v31);
    ++v36;
    if (v35)
    {
      goto LABEL_39;
    }
  }

  __break(1u);
}

void _LocaleBridged.calendarIdentifier.getter(char *a1@<X8>)
{
  v3 = [*(v1 + 16) calendarIdentifier];
  if (!v3)
  {
    v3 = String._bridgeToObjectiveCImpl()();
  }

  v4 = v3;
  static Calendar._fromNSCalendarIdentifier(_:)(v3, &v6);

  v5 = v6;
  if (v6 == 27)
  {
    v5 = 0;
  }

  *a1 = v5;
}

id _LocaleBridged.usesMetricSystem.getter()
{
  if ([*(v0 + 16) objectForKey_])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (*(&v5 + 1))
  {
    type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSNumber);
    if (swift_dynamicCast())
    {
      v1 = [v3 BOOLValue];

      return v1;
    }
  }

  else
  {
    outlined destroy of Any?(v6);
  }

  return 0;
}

uint64_t _LocaleBridged.languageCode.getter(void *a1)
{
  if ([*(v1 + 16) objectForKey_])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (*(&v5 + 1))
  {
    if (swift_dynamicCast())
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    outlined destroy of Any?(v6);
    return 0;
  }
}

uint64_t protocol witness for _LocaleProtocol.measurementSystem.getter in conformance _LocaleBridged()
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v1 = [*(v0 + 16) localeIdentifier];
  static String._unconditionallyBridgeFromObjectiveC(_:)(v1);

  v2 = static LocaleCache.cache;
  MEMORY[0x1EEE9AC00](v3);
  os_unfair_lock_lock((v2 + 48));
  closure #1 in LocaleCache.fixed(_:)partial apply((v2 + 16), v7);
  os_unfair_lock_unlock((v2 + 48));
  v4 = v7[1];

  ObjectType = swift_getObjectType();
  (*(v4 + 296))(ObjectType, v4);
  return swift_unknownObjectRelease();
}

uint64_t protocol witness for _LocaleProtocol.currency.getter in conformance _LocaleBridged()
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v1 = [*(v0 + 16) localeIdentifier];
  static String._unconditionallyBridgeFromObjectiveC(_:)(v1);

  v2 = static LocaleCache.cache;
  MEMORY[0x1EEE9AC00](v3);
  os_unfair_lock_lock((v2 + 48));
  closure #1 in LocaleCache.fixed(_:)partial apply((v2 + 16), v7);
  os_unfair_lock_unlock((v2 + 48));
  v4 = v7[1];

  ObjectType = swift_getObjectType();
  (*(v4 + 304))(ObjectType, v4);
  return swift_unknownObjectRelease();
}

uint64_t protocol witness for _LocaleProtocol.numberingSystem.getter in conformance _LocaleBridged()
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v1 = [*(v0 + 16) localeIdentifier];
  static String._unconditionallyBridgeFromObjectiveC(_:)(v1);

  v2 = static LocaleCache.cache;
  MEMORY[0x1EEE9AC00](v3);
  os_unfair_lock_lock((v2 + 48));
  closure #1 in LocaleCache.fixed(_:)partial apply((v2 + 16), v7);
  os_unfair_lock_unlock((v2 + 48));
  v4 = v7[1];

  ObjectType = swift_getObjectType();
  (*(v4 + 312))(ObjectType, v4);
  return swift_unknownObjectRelease();
}

uint64_t protocol witness for _LocaleProtocol.availableNumberingSystems.getter in conformance _LocaleBridged()
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v1 = [*(v0 + 16) localeIdentifier];
  static String._unconditionallyBridgeFromObjectiveC(_:)(v1);

  v2 = static LocaleCache.cache;
  MEMORY[0x1EEE9AC00](v3);
  os_unfair_lock_lock((v2 + 48));
  closure #1 in LocaleCache.fixed(_:)partial apply((v2 + 16), v8);
  os_unfair_lock_unlock((v2 + 48));
  v4 = v8[1];

  ObjectType = swift_getObjectType();
  v6 = (*(v4 + 320))(ObjectType, v4);
  swift_unknownObjectRelease();
  return v6;
}

uint64_t protocol witness for _LocaleProtocol.firstDayOfWeek.getter in conformance _LocaleBridged()
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v1 = [*(v0 + 16) localeIdentifier];
  static String._unconditionallyBridgeFromObjectiveC(_:)(v1);

  v2 = static LocaleCache.cache;
  MEMORY[0x1EEE9AC00](v3);
  os_unfair_lock_lock((v2 + 48));
  closure #1 in LocaleCache.fixed(_:)partial apply((v2 + 16), v7);
  os_unfair_lock_unlock((v2 + 48));
  v4 = v7[1];

  ObjectType = swift_getObjectType();
  (*(v4 + 328))(ObjectType, v4);
  return swift_unknownObjectRelease();
}

uint64_t protocol witness for _LocaleProtocol.weekendRange.getter in conformance _LocaleBridged()
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v1 = [*(v0 + 16) localeIdentifier];
  static String._unconditionallyBridgeFromObjectiveC(_:)(v1);

  v2 = static LocaleCache.cache;
  MEMORY[0x1EEE9AC00](v3);
  os_unfair_lock_lock((v2 + 48));
  closure #1 in LocaleCache.fixed(_:)partial apply((v2 + 16), v7);
  os_unfair_lock_unlock((v2 + 48));
  v4 = v7[1];

  ObjectType = swift_getObjectType();
  (*(v4 + 336))(ObjectType, v4);
  return swift_unknownObjectRelease();
}

uint64_t protocol witness for _LocaleProtocol.minimumDaysInFirstWeek.getter in conformance _LocaleBridged()
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v1 = [*(v0 + 16) localeIdentifier];
  static String._unconditionallyBridgeFromObjectiveC(_:)(v1);

  v2 = static LocaleCache.cache;
  MEMORY[0x1EEE9AC00](v3);
  os_unfair_lock_lock((v2 + 48));
  closure #1 in LocaleCache.fixed(_:)partial apply((v2 + 16), v8);
  os_unfair_lock_unlock((v2 + 48));
  v4 = v8[1];

  ObjectType = swift_getObjectType();
  v6 = (*(v4 + 344))(ObjectType, v4);
  swift_unknownObjectRelease();
  return v6;
}

uint64_t protocol witness for _LocaleProtocol.language.getter in conformance _LocaleBridged()
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v1 = [*(v0 + 16) localeIdentifier];
  static String._unconditionallyBridgeFromObjectiveC(_:)(v1);

  v2 = static LocaleCache.cache;
  MEMORY[0x1EEE9AC00](v3);
  os_unfair_lock_lock((v2 + 48));
  closure #1 in LocaleCache.fixed(_:)partial apply((v2 + 16), v7);
  os_unfair_lock_unlock((v2 + 48));
  v4 = v7[1];

  ObjectType = swift_getObjectType();
  (*(v4 + 352))(ObjectType, v4);
  return swift_unknownObjectRelease();
}

uint64_t protocol witness for _LocaleProtocol.hourCycle.getter in conformance _LocaleBridged()
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v1 = [*(v0 + 16) localeIdentifier];
  static String._unconditionallyBridgeFromObjectiveC(_:)(v1);

  v2 = static LocaleCache.cache;
  MEMORY[0x1EEE9AC00](v3);
  os_unfair_lock_lock((v2 + 48));
  closure #1 in LocaleCache.fixed(_:)partial apply((v2 + 16), v7);
  os_unfair_lock_unlock((v2 + 48));
  v4 = v7[1];

  ObjectType = swift_getObjectType();
  (*(v4 + 360))(ObjectType, v4);
  return swift_unknownObjectRelease();
}

uint64_t protocol witness for _LocaleProtocol.collation.getter in conformance _LocaleBridged()
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v1 = [*(v0 + 16) localeIdentifier];
  static String._unconditionallyBridgeFromObjectiveC(_:)(v1);

  v2 = static LocaleCache.cache;
  MEMORY[0x1EEE9AC00](v3);
  os_unfair_lock_lock((v2 + 48));
  closure #1 in LocaleCache.fixed(_:)partial apply((v2 + 16), v7);
  os_unfair_lock_unlock((v2 + 48));
  v4 = v7[1];

  ObjectType = swift_getObjectType();
  (*(v4 + 368))(ObjectType, v4);
  return swift_unknownObjectRelease();
}

uint64_t protocol witness for _LocaleProtocol.region.getter in conformance _LocaleBridged()
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v1 = [*(v0 + 16) localeIdentifier];
  static String._unconditionallyBridgeFromObjectiveC(_:)(v1);

  v2 = static LocaleCache.cache;
  MEMORY[0x1EEE9AC00](v3);
  os_unfair_lock_lock((v2 + 48));
  closure #1 in LocaleCache.fixed(_:)partial apply((v2 + 16), v7);
  os_unfair_lock_unlock((v2 + 48));
  v4 = v7[1];

  ObjectType = swift_getObjectType();
  (*(v4 + 376))(ObjectType, v4);
  return swift_unknownObjectRelease();
}

uint64_t protocol witness for _LocaleProtocol.timeZone.getter in conformance _LocaleBridged()
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v1 = [*(v0 + 16) localeIdentifier];
  static String._unconditionallyBridgeFromObjectiveC(_:)(v1);

  v2 = static LocaleCache.cache;
  MEMORY[0x1EEE9AC00](v3);
  os_unfair_lock_lock((v2 + 48));
  closure #1 in LocaleCache.fixed(_:)partial apply((v2 + 16), v7);
  os_unfair_lock_unlock((v2 + 48));
  v4 = v7[1];

  ObjectType = swift_getObjectType();
  (*(v4 + 384))(ObjectType, v4);
  return swift_unknownObjectRelease();
}

uint64_t protocol witness for _LocaleProtocol.subdivision.getter in conformance _LocaleBridged()
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v1 = [*(v0 + 16) localeIdentifier];
  static String._unconditionallyBridgeFromObjectiveC(_:)(v1);

  v2 = static LocaleCache.cache;
  MEMORY[0x1EEE9AC00](v3);
  os_unfair_lock_lock((v2 + 48));
  closure #1 in LocaleCache.fixed(_:)partial apply((v2 + 16), v7);
  os_unfair_lock_unlock((v2 + 48));
  v4 = v7[1];

  ObjectType = swift_getObjectType();
  (*(v4 + 392))(ObjectType, v4);
  return swift_unknownObjectRelease();
}

uint64_t protocol witness for _LocaleProtocol.variant.getter in conformance _LocaleBridged()
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v1 = [*(v0 + 16) localeIdentifier];
  static String._unconditionallyBridgeFromObjectiveC(_:)(v1);

  v2 = static LocaleCache.cache;
  MEMORY[0x1EEE9AC00](v3);
  os_unfair_lock_lock((v2 + 48));
  closure #1 in LocaleCache.fixed(_:)partial apply((v2 + 16), v7);
  os_unfair_lock_unlock((v2 + 48));
  v4 = v7[1];

  ObjectType = swift_getObjectType();
  (*(v4 + 400))(ObjectType, v4);
  return swift_unknownObjectRelease();
}

uint64_t protocol witness for _LocaleProtocol.temperatureUnit.getter in conformance _LocaleBridged()
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v1 = [*(v0 + 16) localeIdentifier];
  static String._unconditionallyBridgeFromObjectiveC(_:)(v1);

  v2 = static LocaleCache.cache;
  MEMORY[0x1EEE9AC00](v3);
  os_unfair_lock_lock((v2 + 48));
  closure #1 in LocaleCache.fixed(_:)partial apply((v2 + 16), v7);
  os_unfair_lock_unlock((v2 + 48));
  v4 = v7[1];

  ObjectType = swift_getObjectType();
  (*(v4 + 408))(ObjectType, v4);
  return swift_unknownObjectRelease();
}

uint64_t protocol witness for _LocaleProtocol.identifier(_:) in conformance _LocaleBridged(char *a1)
{
  v2 = *a1;
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v3 = [*(v1 + 16) localeIdentifier];
  static String._unconditionallyBridgeFromObjectiveC(_:)(v3);

  v4 = static LocaleCache.cache;
  MEMORY[0x1EEE9AC00](v5);
  os_unfair_lock_lock((v4 + 48));
  partial apply for closure #1 in LocaleCache.fixed(_:)((v4 + 16), v10);
  os_unfair_lock_unlock((v4 + 48));
  v6 = v10[1];

  ObjectType = swift_getObjectType();
  LOBYTE(v10[0]) = v2;
  v8 = (*(v6 + 416))(v10, ObjectType, v6);
  swift_unknownObjectRelease();
  return v8;
}

__n128 protocol witness for _LocaleProtocol.prefs.getter in conformance _LocaleBridged@<Q0>(uint64_t a1@<X8>)
{
  _s10Foundation17LocalePreferencesVSgWOi0_(v6);
  v2 = v7[0];
  *(a1 + 96) = v6[6];
  *(a1 + 112) = v2;
  *(a1 + 124) = *(v7 + 12);
  v3 = v6[3];
  *(a1 + 32) = v6[2];
  *(a1 + 48) = v3;
  v4 = v6[5];
  *(a1 + 64) = v6[4];
  *(a1 + 80) = v4;
  result = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = result;
  return result;
}

id protocol witness for _LocaleProtocol.identifier.getter in conformance _LocaleBridged()
{
  v1 = [*(v0 + 16) localeIdentifier];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)(v1);

  return v2;
}

uint64_t protocol witness for _LocaleProtocol.bridgeToNSLocale() in conformance _LocaleBridged()
{
  [*(v0 + 16) copy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSLocale);
  swift_dynamicCast();
  return v2;
}

id protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance _LocaleBridged()
{
  v1 = [*(*v0 + 16) debugDescription];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)(v1);

  return v2;
}

uint64_t instantiation function for generic protocol witness table for _LocaleBridged(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type _LocaleBridged and conformance _LocaleBridged(&lazy protocol witness table cache variable for type _LocaleBridged and conformance _LocaleBridged, a2, type metadata accessor for _LocaleBridged);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type _LocaleBridged and conformance _LocaleBridged(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _LocaleICU.State.NumberFormattersBox.formatter(for:identifier:numberSymbols:)(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  LODWORD(v7) = a1;
  v56[5] = *MEMORY[0x1E69E9840];
  v8 = *v4;
  if (*(v8 + 16))
  {
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
    if (v10)
    {
      return *(*(v8 + 56) + 8 * v9);
    }
  }

  String.utf8CString.getter();
  v11 = unum_open();

  if (!v11)
  {
    return v11;
  }

  if (unum_getAttribute() != 1)
  {
    unum_setAttribute();
  }

  unum_setAttribute();
  unum_setContext();
  if (a4)
  {
    v53 = v7;
    v54 = v5;
    v7 = a4 + 64;
    v12 = 1 << *(a4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v5 = v13 & *(a4 + 64);
    v14 = (v12 + 63) >> 6;

    v16 = 0;
    for (i = a4; v5; a4 = i)
    {
      v17 = v11;
      v18 = v16;
LABEL_16:
      v19 = __clz(__rbit64(v5)) | (v18 << 6);
      v20 = *(a4 + 56);
      v21 = *(*(a4 + 48) + 4 * v19);
      v22 = (v20 + 16 * v19);
      v11 = *v22;
      v23 = v22[1];
      if ((v23 & 0x1000000000000000) != 0)
      {
        v15 = String.UTF16View._foreignCount()();
        v24 = v15;
        if (!v15)
        {
LABEL_24:
          v25 = MEMORY[0x1E69E7CC0];
          goto LABEL_25;
        }
      }

      else
      {
        v15 = String.UTF16View._nativeGetOffset(for:)();
        v24 = v15;
        if (!v15)
        {
          goto LABEL_24;
        }
      }

      if (v24 < 1)
      {
        v25 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys6UInt16VGMd);
        v25 = swift_allocObject();
        v26 = _swift_stdlib_malloc_size(v25);
        v25[2] = v24;
        v25[3] = (v26 - 32 + ((v26 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
      }

      v11 = specialized Sequence._copySequenceContents(initializing:)(v56, (v25 + 4), v24, v11, v23);

      if (v11 != v24)
      {
        goto LABEL_43;
      }

LABEL_25:
      v27 = v25[2];
      LODWORD(v56[0]) = 0;
      if (v21 < 0)
      {
        goto LABEL_41;
      }

      if (v27 >> 31)
      {
        goto LABEL_42;
      }

      v11 = v17;
      v5 &= v5 - 1;
      unum_setSymbol();

      v16 = v18;
    }

    while (1)
    {
      v18 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v18 >= v14)
      {

        v5 = v54;
        LODWORD(v7) = v53;
        goto LABEL_30;
      }

      v5 = *(v7 + 8 * v18);
      ++v16;
      if (v5)
      {
        v17 = v11;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

LABEL_30:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v56[0] = *v5;
  v14 = v56[0];
  LODWORD(v18) = v7;
  v15 = specialized __RawDictionaryStorage.find<A>(_:)(v7);
  v30 = *(v14 + 16);
  v31 = (v29 & 1) == 0;
  v32 = __OFADD__(v30, v31);
  v33 = v30 + v31;
  if (v32)
  {
LABEL_44:
    __break(1u);
LABEL_45:
    v37 = v5;
    v38 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys6UInt32VSpySvSgGGMd);
    v39 = static _DictionaryStorage.copy(original:)();
    v34 = v39;
    if (*(v14 + 16))
    {
      v40 = (v39 + 64);
      v41 = v14 + 64;
      v42 = ((1 << *(v34 + 32)) + 63) >> 6;
      if (v34 != v14 || v40 >= v41 + 8 * v42)
      {
        memmove(v40, (v14 + 64), 8 * v42);
      }

      v43 = 0;
      *(v34 + 16) = *(v14 + 16);
      v44 = 1 << *(v14 + 32);
      v45 = -1;
      if (v44 < 64)
      {
        v45 = ~(-1 << v44);
      }

      v46 = v45 & *(v14 + 64);
      for (j = (v44 + 63) >> 6; v46; *(*(v34 + 56) + 8 * v49) = v52)
      {
        v48 = __clz(__rbit64(v46));
        v46 &= v46 - 1;
        v49 = v48 | (v43 << 6);
LABEL_58:
        v52 = *(*(v14 + 56) + 8 * v49);
        *(*(v34 + 48) + 4 * v49) = *(*(v14 + 48) + 4 * v49);
      }

      v50 = v43;
      while (1)
      {
        v43 = v50 + 1;
        if (__OFADD__(v50, 1))
        {
          __break(1u);
        }

        if (v43 >= j)
        {
          break;
        }

        v51 = *(v41 + 8 * v43);
        ++v50;
        if (v51)
        {
          v46 = (v51 - 1) & v51;
          v49 = __clz(__rbit64(v51)) | (v43 << 6);
          goto LABEL_58;
        }
      }
    }

    v15 = v38;
    v5 = v37;
    if ((v7 & 1) == 0)
    {
      goto LABEL_37;
    }

LABEL_34:
    *(*(v34 + 56) + 8 * v15) = v11;
LABEL_38:
    *v5 = v34;
    return v11;
  }

  LOBYTE(v7) = v29;
  if (*(v14 + 24) >= v33)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_45;
    }

    v34 = v14;
    if (v29)
    {
      goto LABEL_34;
    }

LABEL_37:
    specialized _NativeDictionary._insert(at:key:value:)(v15, v18, v11, v34);
    goto LABEL_38;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v33, isUniquelyReferenced_nonNull_native);
  v34 = v56[0];
  v15 = specialized __RawDictionaryStorage.find<A>(_:)(v18);
  if ((v7 & 1) == (v35 & 1))
  {
    if (v7)
    {
      goto LABEL_34;
    }

    goto LABEL_37;
  }

  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance _LocaleICU.State.NumberFormattersBox()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  specialized Dictionary<>.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance _LocaleICU.State.NumberFormattersBox()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  specialized Dictionary<>.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

Swift::Int _LocaleICU.State.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v51 = *(v1 + 32);
  v52 = v3;
  v4 = *(v1 + 80);
  v53 = *(v1 + 64);
  v54 = v4;
  v5 = *(v1 + 16);
  v50[0] = *v1;
  v50[1] = v5;
  v7 = *(v1 + 96);
  v6 = *(v1 + 104);
  v22 = *(v1 + 128);
  v8 = *(v1 + 160);
  v28 = *(v1 + 168);
  v29 = *(v1 + 136);
  v9 = *(v1 + 192);
  v30 = *(v1 + 200);
  v31 = *(v1 + 257);
  v26 = *(v1 + 264);
  v32 = *(v1 + 272);
  v10 = *(v1 + 273);
  v33 = *(v1 + 288);
  v27 = *(v1 + 280);
  v34 = *(v1 + 312);
  v23 = *(v1 + 352);
  v35 = *(v1 + 328);
  v36 = *(v1 + 360);
  v49 = *(v1 + 408);
  v25 = *(v1 + 400);
  v24 = *(v1 + 392);
  v37 = *(v1 + 384);
  v38 = *(v1 + 432);
  v39 = *(v1 + 440);
  v40 = *(v1 + 448);
  v41 = *(v1 + 456);
  v42 = *(v1 + 464);
  v43 = *(v1 + 472);
  v44 = *(v1 + 480);
  v45 = *(v1 + 488);
  v46 = *(v1 + 496);
  v47 = *(v1 + 504);
  v48 = *(v1 + 512);
  if (*(&v50[0] + 1) == 1)
  {
    Hasher._combine(_:)(0);
    v11 = v28;
    v12 = v29;
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v21 = *(v1 + 273);
    Hasher._combine(_:)(1u);
    if (*(&v50[0] + 1))
    {
      Hasher._combine(_:)(1u);
      outlined copy of Locale.LanguageCode?(*&v50[0], *(&v50[0] + 1));
      v13 = *(&v51 + 1);
      outlined copy of Locale.LanguageCode?(v51, *(&v51 + 1));
      outlined copy of Locale.LanguageCode?(v53, *(&v53 + 1));
      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
      outlined copy of Locale.LanguageCode?(*&v50[0], 0);
      v13 = *(&v51 + 1);
      outlined copy of Locale.LanguageCode?(v51, *(&v51 + 1));
      outlined copy of Locale.LanguageCode?(v53, *(&v53 + 1));
    }

    v11 = v28;
    if (v13)
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    v12 = v29;
    if (*(&v53 + 1))
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    outlined destroy of TermOfAddress?(v50, &_s10Foundation6LocaleV8LanguageV10ComponentsVSgMd);
    v10 = v21;
    if (v6)
    {
LABEL_3:
      Hasher._combine(_:)(1u);

      String.hash(into:)();
      outlined consume of Locale.LanguageCode?(v7, v6);
      if (v12 == 1)
      {
        goto LABEL_20;
      }

      goto LABEL_16;
    }
  }

  Hasher._combine(_:)(0);
  if (v12 == 1)
  {
    goto LABEL_20;
  }

LABEL_16:
  Hasher._combine(_:)(1u);
  if (v12)
  {
    Hasher._combine(_:)(1u);
    outlined copy of Locale.LanguageCode?(v22, v12);
    String.hash(into:)();
    sub_1807E2788(v22, v12);
    if (v11)
    {
      goto LABEL_21;
    }

LABEL_18:
    Hasher._combine(_:)(0);
    if (v9)
    {
      goto LABEL_22;
    }

LABEL_19:
    Hasher._combine(_:)(0);
    goto LABEL_25;
  }

LABEL_20:
  Hasher._combine(_:)(0);
  if (!v11)
  {
    goto LABEL_18;
  }

LABEL_21:
  Hasher._combine(_:)(1u);

  String.hash(into:)();
  outlined consume of Locale.LanguageCode?(v8, v11);
  if (!v9)
  {
    goto LABEL_19;
  }

LABEL_22:
  Hasher._combine(_:)(1u);
  MEMORY[0x1865CD060](*(v9 + 16));
  v14 = *(v9 + 16);
  if (v14)
  {
    v15 = v9 + 56;
    do
    {
      v15 += 32;

      String.hash(into:)();

      --v14;
    }

    while (v14);
  }

LABEL_25:
  if (v30 == 7)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  v16 = v49;
  if (v31)
  {
    Hasher._combine(_:)(0);
    if (!v32)
    {
      goto LABEL_30;
    }
  }

  else
  {
    Hasher._combine(_:)(1u);
    specialized Optional<A>.hash(into:)();
    if (!v32)
    {
LABEL_30:
      Hasher._combine(_:)(1u);
      MEMORY[0x1865CD060](v26);
      if (v10 != 4)
      {
        goto LABEL_31;
      }

LABEL_35:
      Hasher._combine(_:)(0);
      if (v33)
      {
        goto LABEL_32;
      }

      goto LABEL_36;
    }
  }

  Hasher._combine(_:)(0);
  if (v10 == 4)
  {
    goto LABEL_35;
  }

LABEL_31:
  Hasher._combine(_:)(1u);
  String.hash(into:)();

  if (v33)
  {
LABEL_32:
    Hasher._combine(_:)(1u);

    String.hash(into:)();
    outlined consume of Locale.LanguageCode?(v27, v33);
    goto LABEL_37;
  }

LABEL_36:
  Hasher._combine(_:)(0);
LABEL_37:
  if (v34 == 2)
  {
    v17 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v17 = v34 & 1;
  }

  Hasher._combine(_:)(v17);
  if (v35 == 1 || (Hasher._combine(_:)(1u), !v35))
  {
    Hasher._combine(_:)(0);
    if (v36 == 1)
    {
      goto LABEL_48;
    }
  }

  else
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    if (v36 == 1)
    {
      goto LABEL_48;
    }
  }

  Hasher._combine(_:)(1u);
  if (v36)
  {
    Hasher._combine(_:)(1u);
    outlined copy of Locale.LanguageCode?(v23, v36);
    String.hash(into:)();
    sub_1807E2788(v23, v36);
    if (v37 == 1)
    {
      goto LABEL_52;
    }

    goto LABEL_49;
  }

LABEL_48:
  Hasher._combine(_:)(0);
  if (v37 == 1)
  {
    goto LABEL_52;
  }

LABEL_49:
  Hasher._combine(_:)(1u);
  if (v37)
  {
    Hasher._combine(_:)(1u);
    ObjectType = swift_getObjectType();
    v19 = *(v24 + 120);
    swift_unknownObjectRetain();
    v19(a1, ObjectType, v24);
    v16 = v49;
    outlined consume of TimeZone??(v37);
    if (v49 == 1)
    {
      goto LABEL_55;
    }

    goto LABEL_53;
  }

LABEL_52:
  Hasher._combine(_:)(0);
  if (v49 == 1)
  {
LABEL_55:
    Hasher._combine(_:)(0);
    goto LABEL_56;
  }

LABEL_53:
  Hasher._combine(_:)(1u);
  if (!v16)
  {
    goto LABEL_55;
  }

  Hasher._combine(_:)(1u);
  outlined copy of Locale.LanguageCode?(v25, v16);
  String.hash(into:)();
  sub_1807E2788(v25, v16);
LABEL_56:
  specialized Dictionary<>.hash(into:)(a1, v38);
  specialized Dictionary<>.hash(into:)(a1, v39);
  specialized Dictionary<>.hash(into:)(a1, v40);
  specialized Dictionary<>.hash(into:)(a1, v41);
  specialized Dictionary<>.hash(into:)(a1, v42);
  specialized Dictionary<>.hash(into:)(a1, v43);
  specialized Dictionary<>.hash(into:)(a1, v44);
  specialized Dictionary<>.hash(into:)(a1, v45);
  specialized Dictionary<>.hash(into:)(a1, v46);
  specialized Dictionary<>.hash(into:)(a1, v47);
  return specialized Dictionary<>.hash(into:)(a1, v48);
}

Swift::Int _LocaleICU.State.hashValue.getter()
{
  v1 = *(v0 + 48);
  v57 = *(v0 + 32);
  v58 = v1;
  v2 = *(v0 + 80);
  v59 = *(v0 + 64);
  v60 = v2;
  v3 = *(v0 + 16);
  v56[0] = *v0;
  v56[1] = v3;
  v4 = *(v0 + 96);
  v5 = *(v0 + 104);
  v20 = *(v0 + 128);
  v6 = *(v0 + 160);
  v7 = *(v0 + 168);
  v8 = *(v0 + 192);
  v31 = *(v0 + 136);
  v32 = *(v0 + 200);
  v28 = *(v0 + 224);
  v24 = *(v0 + 208);
  v26 = *(v0 + 248);
  v27 = *(v0 + 240);
  v25 = *(v0 + 256);
  v33 = *(v0 + 257);
  v29 = *(v0 + 264);
  v34 = *(v0 + 272);
  v9 = *(v0 + 273);
  v35 = *(v0 + 288);
  v30 = *(v0 + 280);
  v36 = *(v0 + 312);
  v21 = *(v0 + 352);
  v37 = *(v0 + 328);
  v38 = *(v0 + 360);
  v39 = *(v0 + 384);
  v40 = *(v0 + 408);
  v23 = *(v0 + 400);
  v22 = *(v0 + 392);
  v41 = *(v0 + 432);
  v42 = *(v0 + 440);
  v43 = *(v0 + 448);
  v44 = *(v0 + 456);
  v45 = *(v0 + 464);
  v46 = *(v0 + 472);
  v10 = *(v0 + 488);
  v47 = *(v0 + 480);
  v48 = *(v0 + 496);
  v49 = *(v0 + 504);
  v11 = *(v0 + 512);
  Hasher.init(_seed:)();
  if (*(&v56[0] + 1) != 1)
  {
    Hasher._combine(_:)(1u);
    if (*(&v56[0] + 1))
    {
      Hasher._combine(_:)(1u);
      outlined copy of Locale.LanguageCode?(*&v56[0], *(&v56[0] + 1));
      outlined copy of Locale.LanguageCode?(v57, *(&v57 + 1));
      outlined copy of Locale.LanguageCode?(v59, *(&v59 + 1));
      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
      outlined copy of Locale.LanguageCode?(*&v56[0], 0);
      outlined copy of Locale.LanguageCode?(v57, *(&v57 + 1));
      outlined copy of Locale.LanguageCode?(v59, *(&v59 + 1));
    }

    v12 = v31;
    if (*(&v57 + 1))
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    if (*(&v59 + 1))
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    outlined destroy of TermOfAddress?(v56, &_s10Foundation6LocaleV8LanguageV10ComponentsVSgMd);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_14:
    Hasher._combine(_:)(0);
    goto LABEL_15;
  }

  Hasher._combine(_:)(0);
  v12 = v31;
  if (!v5)
  {
    goto LABEL_14;
  }

LABEL_3:
  Hasher._combine(_:)(1u);

  String.hash(into:)();
  outlined consume of Locale.LanguageCode?(v4, v5);
LABEL_15:
  if (v12 != 1)
  {
    Hasher._combine(_:)(1u);
    if (v12)
    {
      Hasher._combine(_:)(1u);
      outlined copy of Locale.LanguageCode?(v20, v12);
      String.hash(into:)();
      sub_1807E2788(v20, v12);
      if (!v7)
      {
        goto LABEL_18;
      }

LABEL_21:
      Hasher._combine(_:)(1u);

      String.hash(into:)();
      outlined consume of Locale.LanguageCode?(v6, v7);
      if (!v8)
      {
        goto LABEL_19;
      }

      goto LABEL_22;
    }
  }

  Hasher._combine(_:)(0);
  if (v7)
  {
    goto LABEL_21;
  }

LABEL_18:
  Hasher._combine(_:)(0);
  if (!v8)
  {
LABEL_19:
    Hasher._combine(_:)(0);
    goto LABEL_25;
  }

LABEL_22:
  Hasher._combine(_:)(1u);
  MEMORY[0x1865CD060](*(v8 + 16));
  v13 = *(v8 + 16);
  if (v13)
  {
    v14 = v8 + 56;
    do
    {
      v14 += 32;

      String.hash(into:)();

      --v13;
    }

    while (v13);
  }

LABEL_25:
  if (v32 == 7)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  if (v33)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v51 = v24;
    v52 = v28;
    v53 = v27;
    v54 = v26;
    v55 = v25 & 1;
    Hasher._combine(_:)(1u);
    specialized Optional<A>.hash(into:)();
  }

  if (v34)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v29);
  }

  if (v9 == 4)
  {
    Hasher._combine(_:)(0);
    v15 = v35;
    if (v35)
    {
      goto LABEL_36;
    }

LABEL_39:
    Hasher._combine(_:)(0);
    if (v36 == 2)
    {
      goto LABEL_37;
    }

LABEL_40:
    Hasher._combine(_:)(1u);
    v16 = v36 & 1;
    goto LABEL_41;
  }

  Hasher._combine(_:)(1u);
  String.hash(into:)();

  v15 = v35;
  if (!v35)
  {
    goto LABEL_39;
  }

LABEL_36:
  Hasher._combine(_:)(1u);

  String.hash(into:)();
  outlined consume of Locale.LanguageCode?(v30, v15);
  if (v36 != 2)
  {
    goto LABEL_40;
  }

LABEL_37:
  v16 = 0;
LABEL_41:
  Hasher._combine(_:)(v16);
  if (v37 == 1 || (Hasher._combine(_:)(1u), !v37))
  {
    Hasher._combine(_:)(0);
    if (v38 == 1)
    {
      goto LABEL_49;
    }
  }

  else
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    if (v38 == 1)
    {
      goto LABEL_49;
    }
  }

  Hasher._combine(_:)(1u);
  if (v38)
  {
    Hasher._combine(_:)(1u);
    outlined copy of Locale.LanguageCode?(v21, v38);
    String.hash(into:)();
    sub_1807E2788(v21, v38);
    if (v39 == 1)
    {
      goto LABEL_53;
    }

    goto LABEL_50;
  }

LABEL_49:
  Hasher._combine(_:)(0);
  if (v39 == 1)
  {
    goto LABEL_53;
  }

LABEL_50:
  Hasher._combine(_:)(1u);
  if (v39)
  {
    Hasher._combine(_:)(1u);
    ObjectType = swift_getObjectType();
    v18 = *(v22 + 120);
    swift_unknownObjectRetain();
    v18(v50, ObjectType, v22);
    outlined consume of TimeZone??(v39);
    if (v40 == 1)
    {
      goto LABEL_56;
    }

    goto LABEL_54;
  }

LABEL_53:
  Hasher._combine(_:)(0);
  if (v40 == 1)
  {
LABEL_56:
    Hasher._combine(_:)(0);
    goto LABEL_57;
  }

LABEL_54:
  Hasher._combine(_:)(1u);
  if (!v40)
  {
    goto LABEL_56;
  }

  Hasher._combine(_:)(1u);
  outlined copy of Locale.LanguageCode?(v23, v40);
  String.hash(into:)();
  sub_1807E2788(v23, v40);
LABEL_57:
  specialized Dictionary<>.hash(into:)(v50, v41);
  specialized Dictionary<>.hash(into:)(v50, v42);
  specialized Dictionary<>.hash(into:)(v50, v43);
  specialized Dictionary<>.hash(into:)(v50, v44);
  specialized Dictionary<>.hash(into:)(v50, v45);
  specialized Dictionary<>.hash(into:)(v50, v46);
  specialized Dictionary<>.hash(into:)(v50, v47);
  specialized Dictionary<>.hash(into:)(v50, v10);
  specialized Dictionary<>.hash(into:)(v50, v48);
  specialized Dictionary<>.hash(into:)(v50, v49);
  specialized Dictionary<>.hash(into:)(v50, v11);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance _LocaleICU.State()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 4);
  v71 = *(v0 + 3);
  v72 = v3;
  v73 = *(v0 + 5);
  v4 = *(v0 + 2);
  v69 = *(v0 + 1);
  v70 = v4;
  v5 = v0[13];
  v6 = v0[17];
  v17 = v0[16];
  v7 = v0[21];
  v28 = v0[20];
  v27 = v0[12];
  v30 = v0[24];
  v31 = *(v0 + 200);
  v25 = *(v0 + 14);
  v21 = *(v0 + 13);
  v23 = v0[31];
  v24 = v0[30];
  v22 = *(v0 + 256);
  v26 = v0[33];
  v32 = *(v0 + 257);
  v33 = *(v0 + 272);
  v8 = *(v0 + 273);
  v34 = v0[36];
  v29 = v0[35];
  v35 = *(v0 + 312);
  v18 = v0[44];
  v36 = v0[41];
  v37 = v0[45];
  v9 = v0[48];
  v20 = v0[50];
  v19 = v0[49];
  v38 = v0[51];
  v39 = v0[54];
  v40 = v0[55];
  v41 = v0[56];
  v42 = v0[57];
  v43 = v0[58];
  v44 = v0[59];
  v45 = v0[60];
  v46 = v0[61];
  v47 = v0[62];
  v48 = v0[63];
  v49 = v0[64];
  Hasher.init(_seed:)();
  if (v1 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v53 = v71;
    v54 = v72;
    v55 = v73;
    v51 = v69;
    v52 = v70;
    *&v50 = v2;
    *(&v50 + 1) = v1;
    Hasher._combine(_:)(1u);
    v56[0] = v2;
    v56[1] = v1;
    v59 = v71;
    v60 = v72;
    v61 = v73;
    v57 = v69;
    v58 = v70;
    outlined init with copy of Locale.Language.Components(v56, &v62);
    Locale.Language.Components.hash(into:)(v68);
    v64 = v52;
    v65 = v53;
    v66 = v54;
    v67 = v55;
    v62 = v50;
    v63 = v51;
    outlined destroy of Locale.Language.Components(&v62);
  }

  if (v5)
  {
    Hasher._combine(_:)(1u);

    String.hash(into:)();
    outlined consume of Locale.LanguageCode?(v27, v5);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v10 = v9;
  if (v6 != 1)
  {
    Hasher._combine(_:)(1u);
    if (v6)
    {
      Hasher._combine(_:)(1u);
      outlined copy of Locale.LanguageCode?(v17, v6);
      String.hash(into:)();
      sub_1807E2788(v17, v6);
      if (!v7)
      {
        goto LABEL_10;
      }

LABEL_13:
      Hasher._combine(_:)(1u);

      String.hash(into:)();
      outlined consume of Locale.LanguageCode?(v28, v7);
      if (!v30)
      {
        goto LABEL_11;
      }

      goto LABEL_14;
    }
  }

  Hasher._combine(_:)(0);
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_10:
  Hasher._combine(_:)(0);
  if (!v30)
  {
LABEL_11:
    Hasher._combine(_:)(0);
    goto LABEL_17;
  }

LABEL_14:
  Hasher._combine(_:)(1u);
  MEMORY[0x1865CD060](*(v30 + 16));
  v11 = *(v30 + 16);
  if (v11)
  {
    v12 = v30 + 56;
    do
    {
      v12 += 32;

      String.hash(into:)();

      --v11;
    }

    while (v11);
  }

LABEL_17:
  if (v31 == 7)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  if (v32)
  {
    Hasher._combine(_:)(0);
    if (!v33)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v62 = v21;
    v63 = v25;
    *&v64 = v24;
    *(&v64 + 1) = v23;
    LOBYTE(v65) = v22 & 1;
    Hasher._combine(_:)(1u);
    specialized Optional<A>.hash(into:)();
    if (!v33)
    {
LABEL_22:
      Hasher._combine(_:)(1u);
      MEMORY[0x1865CD060](v26);
      if (v8 != 4)
      {
        goto LABEL_23;
      }

      goto LABEL_28;
    }
  }

  Hasher._combine(_:)(0);
  if (v8 != 4)
  {
LABEL_23:
    Hasher._combine(_:)(1u);
    String.hash(into:)();

    if (v34)
    {
      goto LABEL_24;
    }

LABEL_29:
    Hasher._combine(_:)(0);
    if (v35 == 2)
    {
      goto LABEL_25;
    }

LABEL_30:
    Hasher._combine(_:)(1u);
    v13 = v35 & 1;
    goto LABEL_31;
  }

LABEL_28:
  Hasher._combine(_:)(0);
  if (!v34)
  {
    goto LABEL_29;
  }

LABEL_24:
  Hasher._combine(_:)(1u);

  String.hash(into:)();
  outlined consume of Locale.LanguageCode?(v29, v34);
  if (v35 != 2)
  {
    goto LABEL_30;
  }

LABEL_25:
  v13 = 0;
LABEL_31:
  Hasher._combine(_:)(v13);
  if (v36 == 1 || (Hasher._combine(_:)(1u), !v36))
  {
    Hasher._combine(_:)(0);
    if (v37 == 1)
    {
LABEL_38:
      Hasher._combine(_:)(0);
      goto LABEL_39;
    }
  }

  else
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    if (v37 == 1)
    {
      goto LABEL_38;
    }
  }

  Hasher._combine(_:)(1u);
  if (!v37)
  {
    goto LABEL_38;
  }

  Hasher._combine(_:)(1u);
  outlined copy of Locale.LanguageCode?(v18, v37);
  String.hash(into:)();
  sub_1807E2788(v18, v37);
LABEL_39:
  if (v10 == 1 || (Hasher._combine(_:)(1u), !v10))
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    ObjectType = swift_getObjectType();
    v15 = *(v19 + 120);
    swift_unknownObjectRetain();
    v15(v68, ObjectType, v19);
    outlined consume of TimeZone??(v10);
  }

  if (v38 == 1 || (Hasher._combine(_:)(1u), !v38))
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    outlined copy of Locale.LanguageCode?(v20, v38);
    String.hash(into:)();
    sub_1807E2788(v20, v38);
  }

  specialized Dictionary<>.hash(into:)(v68, v39);
  specialized Dictionary<>.hash(into:)(v68, v40);
  specialized Dictionary<>.hash(into:)(v68, v41);
  specialized Dictionary<>.hash(into:)(v68, v42);
  specialized Dictionary<>.hash(into:)(v68, v43);
  specialized Dictionary<>.hash(into:)(v68, v44);
  specialized Dictionary<>.hash(into:)(v68, v45);
  specialized Dictionary<>.hash(into:)(v68, v46);
  specialized Dictionary<>.hash(into:)(v68, v47);
  specialized Dictionary<>.hash(into:)(v68, v48);
  specialized Dictionary<>.hash(into:)(v68, v49);
  return Hasher._finalize()();
}

uint64_t one-time initialization function for log()
{
  type metadata accessor for OS_os_log();
  result = OS_os_log.init(subsystem:category:)();
  static _LocaleICU.log = result;
  return result;
}

{
  type metadata accessor for OS_os_log();
  result = OS_os_log.init(subsystem:category:)();
  static Calendar.log = result;
  return result;
}

uint64_t closure #1 in _LocaleICU.identifierDisplayName(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t *a5@<X8>)
{
  v8 = a2;
  *&v119[514] = *MEMORY[0x1E69E9840];
  v103 = a1;
  v10 = *(a1 + 432);
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
  DisplayName = uloc_getDisplayName();

  v108 = v5;
  v106 = v8;
  if (DisplayName - 1 <= 0x100)
  {
    v17 = specialized String.init(_utf16:)(v119, DisplayName);
    if (v18)
    {
      v14 = v17;
      v15 = v18;
LABEL_97:

LABEL_99:
      v69 = v107;

      v70 = v103;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v117[0] = *(v70 + 432);
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
          *(v103 + 432) = v77;
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

      v15 = uloc_getDisplayName();

      if (v109 <= 0 && v109 != -127 && (v15 - 1) <= 0x100)
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

uint64_t closure #1 in _LocaleICU.variant.getter@<X0>(uint64_t *a1@<X0>, Swift::String *a2@<X8>)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a1[50];
  v3 = a1[51];
  v5 = a1[52];
  v6 = a1[53];
  if (v3 == 1)
  {
    String.utf8CString.getter();
    Variant = uloc_getVariant();

    if (Variant >= 1 && (v17[Variant] = 0, v9 = MEMORY[0x1865CAEB0](v17), v10))
    {
      v16 = v9;
      v11 = v10;
      v12 = String.lowercased()();
      v13 = a1[50];
      v15 = a1[51];

      sub_1807E2788(v13, v15);
      a1[50] = v16;
      a1[51] = v11;
      *(a1 + 26) = v12;
      a2->_countAndFlagsBits = v16;
      a2->_object = v11;
      a2[1] = v12;
    }

    else
    {
      sub_1807E2788(a1[50], a1[51]);
      *(a1 + 25) = 0u;
      *(a1 + 26) = 0u;
      *a2 = 0u;
      a2[1] = 0u;
    }
  }

  else
  {
    a2->_countAndFlagsBits = v4;
    a2->_object = v3;
    a2[1]._countAndFlagsBits = v5;
    a2[1]._object = v6;
  }

  return sub_1808B890C(v4, v3);
}

uint64_t closure #1 in _LocaleICU.scriptCodeDisplayName(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v153 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 464);
  if (*(v10 + 16))
  {
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if (v12)
    {
      *a5 = *(*(v10 + 56) + 16 * v11);
    }
  }

  v127 = a1;
  v126 = a5;
  v137 = a3;
  v138 = a2;
  if (String.count.getter() == 4 && (*v152 = 6254181, *&v152[8] = 0xE300000000000000, MEMORY[0x1865CB0E0](a2, a3), , MEMORY[0x1865CB0E0](5461343, 0xE300000000000000), , String.utf8CString.getter(), , String.utf8CString.getter(), DisplayScript = uloc_getDisplayScript(), , , DisplayScript - 1 <= 0x100))
  {
    v15 = specialized String.init(_utf16:)(&v139, DisplayScript);
    if (v16)
    {
      v17 = v15;
      v18 = v16;
LABEL_116:

LABEL_117:
      v30 = v137;
LABEL_118:

      v86 = v127;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v152 = *(v127 + 464);
      v88 = *v152;
      v89 = specialized __RawDictionaryStorage.find<A>(_:)(v138, v30);
      v91 = *(v88 + 16);
      v92 = (v90 & 1) == 0;
      v93 = __OFADD__(v91, v92);
      v94 = v91 + v92;
      if (v93)
      {
        goto LABEL_130;
      }

      v95 = v90;
      if (*(v88 + 24) >= v94)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v96 = v88;
        }

        else
        {
          v136 = v89;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SSgGMd);
          v102 = static _DictionaryStorage.copy(original:)();
          v96 = v102;
          if (*(v88 + 16))
          {
            v103 = (v102 + 64);
            v104 = ((1 << *(v96 + 32)) + 63) >> 6;
            if (v96 != v88 || v103 >= v88 + 64 + 8 * v104)
            {
              memmove(v103, (v88 + 64), 8 * v104);
            }

            v105 = 0;
            *(v96 + 16) = *(v88 + 16);
            v106 = 1 << *(v88 + 32);
            v107 = *(v88 + 64);
            v108 = -1;
            if (v106 < 64)
            {
              v108 = ~(-1 << v106);
            }

            v109 = v108 & v107;
            v110 = (v106 + 63) >> 6;
            if ((v108 & v107) != 0)
            {
              do
              {
                v111 = __clz(__rbit64(v109));
                v109 &= v109 - 1;
LABEL_145:
                v114 = 16 * (v111 | (v105 << 6));
                v115 = (*(v88 + 48) + v114);
                v116 = *v115;
                v117 = v115[1];
                v118 = (*(v96 + 48) + v114);
                v119 = *(*(v88 + 56) + v114);
                *v118 = v116;
                v118[1] = v117;
                *(*(v96 + 56) + v114) = v119;
              }

              while (v109);
            }

            v112 = v105;
            while (1)
            {
              v105 = v112 + 1;
              if (__OFADD__(v112, 1))
              {
                __break(1u);
              }

              if (v105 >= v110)
              {
                break;
              }

              v113 = *(v88 + 64 + 8 * v105);
              ++v112;
              if (v113)
              {
                v111 = __clz(__rbit64(v113));
                v109 = (v113 - 1) & v113;
                goto LABEL_145;
              }
            }

            v86 = v127;
            v30 = v137;
          }

          v89 = v136;
        }

        v99 = v126;
        v97 = v138;
        if (v95)
        {
LABEL_122:
          v100 = v89;

          v101 = (*(v96 + 56) + 16 * v100);
          *v101 = v17;
          v101[1] = v18;

LABEL_127:
          *(v86 + 464) = v96;
          *v99 = v17;
          v99[1] = v18;
          return result;
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v94, isUniquelyReferenced_nonNull_native);
        v96 = *v152;
        v97 = v138;
        v89 = specialized __RawDictionaryStorage.find<A>(_:)(v138, v30);
        if ((v95 & 1) != (v98 & 1))
        {
          goto LABEL_153;
        }

        v99 = v126;
        if (v95)
        {
          goto LABEL_122;
        }
      }

      result = specialized _NativeDictionary._insert(at:key:value:)(v89, v97, v30, v17, v18, v96);
      goto LABEL_127;
    }

    v32 = *(a4 + 152);
    v149 = *(a4 + 136);
    v150 = v32;
    v151[0] = *(a4 + 168);
    *(v151 + 12) = *(a4 + 180);
    v33 = *(a4 + 72);
    v34 = *(a4 + 104);
    v146 = *(a4 + 88);
    v147 = v34;
    v148 = *(a4 + 120);
    v144 = *(a4 + 56);
    v145 = v33;
    v35 = *(a4 + 152);
    *&v152[80] = *(a4 + 136);
    *&v152[96] = v35;
    *&v152[112] = *(a4 + 168);
    *&v152[124] = *(a4 + 180);
    v36 = *(a4 + 72);
    v37 = *(a4 + 104);
    *&v152[32] = *(a4 + 88);
    *&v152[48] = v37;
    *&v152[64] = *(a4 + 120);
    *v152 = *(a4 + 56);
    *&v152[16] = v36;
    if (_s10Foundation17LocalePreferencesVSgWOg(v152) == 1)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v19 = *(a4 + 136);
    v20 = *(a4 + 168);
    v150 = *(a4 + 152);
    v151[0] = v20;
    *(v151 + 12) = *(a4 + 180);
    v21 = *(a4 + 72);
    v22 = *(a4 + 104);
    v146 = *(a4 + 88);
    v147 = v22;
    v148 = *(a4 + 120);
    v149 = v19;
    v144 = *(a4 + 56);
    v145 = v21;
    v23 = *(a4 + 136);
    v24 = *(a4 + 168);
    *&v152[96] = *(a4 + 152);
    *&v152[112] = v24;
    *&v152[124] = *(a4 + 180);
    v25 = *(a4 + 72);
    v26 = *(a4 + 104);
    *&v152[32] = *(a4 + 88);
    *&v152[48] = v26;
    *&v152[64] = *(a4 + 120);
    *&v152[80] = v23;
    *v152 = *(a4 + 56);
    *&v152[16] = v25;
    if (_s10Foundation17LocalePreferencesVSgWOg(v152) == 1)
    {
      goto LABEL_14;
    }
  }

  v27.i32[0] = *&v152[136];
  v130 = *&v152[120];
  v133 = vmovl_u8(v27).u64[0];
  v128 = *&v152[104];
  v124 = *&v152[72];
  v125 = *&v152[88];
  v121 = *&v152[40];
  v122 = *&v152[56];
  v120 = *&v152[24];
  v123 = *&v152[8];
  v28 = v152[0];
  v141[6] = v150;
  *v142 = v151[0];
  *&v142[12] = *(v151 + 12);
  v141[2] = v146;
  v141[3] = v147;
  v141[4] = v148;
  v141[5] = v149;
  v141[0] = v144;
  v141[1] = v145;
  outlined init with copy of LocalePreferences(v141, v140);
  v152[0] = v28;
  *&v152[8] = v123;
  *&v152[24] = v120;
  *&v152[40] = v121;
  *&v152[56] = v122;
  *&v152[72] = v124;
  *&v152[88] = v125;
  *&v152[104] = v128;
  *&v152[120] = v130;
  v29 = v123;
  *&v152[136] = vuzp1_s8(v133, v133).u32[0];
  v30 = v137;
  if (v123)
  {

    outlined destroy of LocalePreferences(v152);
    v31 = *(v123 + 16);
    if (v31)
    {
      goto LABEL_69;
    }

    goto LABEL_11;
  }

  outlined destroy of LocalePreferences(v152);
LABEL_14:
  if (one-time initialization token for cache != -1)
  {
    goto LABEL_131;
  }

  while (1)
  {
    v38 = String._bridgeToObjectiveCImpl()();
    v39 = CFPreferencesCopyAppValue(v38, *MEMORY[0x1E695E8A8]);
    swift_unknownObjectRelease();
    if (v39 && (*v152 = v39, __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd), (swift_dynamicCast() & 1) != 0))
    {
      v40 = v144;
    }

    else
    {
      v40 = MEMORY[0x1E69E7CC0];
    }

    v134 = *(v40 + 16);
    if (!v134)
    {
      break;
    }

    v41 = 0;
    v131 = *MEMORY[0x1E695E4A8];
    v42 = v40 + 40;
    v29 = MEMORY[0x1E69E7CC0];
    v129 = v40;
    while (v41 < *(v40 + 16))
    {
      v43 = String._bridgeToObjectiveCImpl()();

      CanonicalLanguageIdentifierFromString = CFLocaleCreateCanonicalLanguageIdentifierFromString(v131, v43);
      swift_unknownObjectRelease();
      if (CanonicalLanguageIdentifierFromString)
      {
        isTaggedPointer = _objc_isTaggedPointer(CanonicalLanguageIdentifierFromString);
        v46 = CanonicalLanguageIdentifierFromString;
        v47 = v46;
        if ((isTaggedPointer & 1) == 0)
        {
          goto LABEL_28;
        }

        TaggedPointerTag = _objc_getTaggedPointerTag(v46);
        if (TaggedPointerTag)
        {
          if (TaggedPointerTag != 22)
          {
            if (TaggedPointerTag == 2)
            {
              MEMORY[0x1EEE9AC00](TaggedPointerTag);
              CanonicalLanguageIdentifierFromString = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
              v50 = v49;
            }

            else
            {
LABEL_28:
              LOBYTE(v144) = 0;
              *v152 = 0;
              LOBYTE(v141[0]) = 0;
              v140[0] = 0;
              IsCF = __CFStringIsCF();
              if (IsCF)
              {
                CanonicalLanguageIdentifierFromString = *v152;
                if (*v152)
                {
                  v40 = v129;
                  if (v140[0] == 1)
                  {
                    if (v144)
                    {
                      lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
                    }

                    else
                    {
                      lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
                    }

                    v58 = String.init<A>(_immortalCocoaString:count:encoding:)();
                    goto LABEL_59;
                  }

                  if ((v141[0] & 1) == 0)
                  {
                    goto LABEL_58;
                  }

                  if (v144 != 1)
                  {
                    IsCF = [v47 lengthOfBytesUsingEncoding_];
                  }

                  MEMORY[0x1EEE9AC00](IsCF);
                  v60 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                  v50 = v61;
                  v62 = HIBYTE(v61) & 0xF;
                  if ((v61 & 0x2000000000000000) == 0)
                  {
                    v62 = v60 & 0xFFFFFFFFFFFFLL;
                  }

                  if (!v62)
                  {
                    v40 = v129;

LABEL_58:
                    v58 = String.init(_cocoaString:)();
LABEL_59:
                    CanonicalLanguageIdentifierFromString = v58;
                    v50 = v59;
LABEL_60:

                    goto LABEL_61;
                  }

                  CanonicalLanguageIdentifierFromString = v60;
                }

                else
                {

                  v50 = 0xE000000000000000;
                }
              }

              else
              {
                v52 = v47;
                v53 = String.init(_nativeStorage:)();
                if (v54)
                {
                  CanonicalLanguageIdentifierFromString = v53;
                  v50 = v54;
                }

                else
                {
                  *v152 = [v52 length];
                  if (*v152)
                  {
                    v40 = v129;
                    goto LABEL_58;
                  }

                  CanonicalLanguageIdentifierFromString = 0;
                  v50 = 0xE000000000000000;
                }
              }
            }

            v40 = v129;
            goto LABEL_61;
          }

          v55 = [v47 UTF8String];
          if (!v55)
          {
            goto LABEL_152;
          }

          v56 = String.init(utf8String:)(v55);
          v40 = v129;
          if (!v57)
          {
            goto LABEL_151;
          }
        }

        else
        {
          LOWORD(v141[0]) = 0;
          _CFIndirectTaggedPointerStringGetContents();
          v56 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
          v40 = v129;
          if (!v57)
          {
            [v47 mutableCopy];
            _bridgeAnyObjectToAny(_:)();

            swift_unknownObjectRelease();
            swift_dynamicCast();
            v50 = *(&v144 + 1);
            CanonicalLanguageIdentifierFromString = v144;
            goto LABEL_60;
          }
        }

        CanonicalLanguageIdentifierFromString = v56;
        v50 = v57;
      }

      else
      {

        v50 = 0xE000000000000000;
      }

LABEL_61:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v29 + 2) + 1, 1, v29);
      }

      v64 = *(v29 + 2);
      v63 = *(v29 + 3);
      if (v64 >= v63 >> 1)
      {
        v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v63 > 1), v64 + 1, 1, v29);
      }

      ++v41;
      *(v29 + 2) = v64 + 1;
      v65 = &v29[16 * v64];
      *(v65 + 4) = CanonicalLanguageIdentifierFromString;
      *(v65 + 5) = v50;
      v42 += 16;
      if (v134 == v41)
      {
        goto LABEL_68;
      }
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    swift_once();
  }

  v29 = MEMORY[0x1E69E7CC0];
LABEL_68:

  v30 = v137;
  v31 = *(v29 + 2);
  if (!v31)
  {
LABEL_11:

    v17 = 0;
    v18 = 0;
    goto LABEL_118;
  }

LABEL_69:
  v66 = 0;
  v135 = *MEMORY[0x1E695E4A8];
  v67 = v29 + 40;
  v132 = v31 - 1;
  while (1)
  {
    v68 = String._bridgeToObjectiveCImpl()();
    v69 = CFLocaleCreateCanonicalLanguageIdentifierFromString(v135, v68);
    swift_unknownObjectRelease();
    if (!v69)
    {
      goto LABEL_105;
    }

    v70 = _objc_isTaggedPointer(v69);
    v71 = v69;
    v72 = v71;
    if (!v70)
    {
      goto LABEL_76;
    }

    v73 = _objc_getTaggedPointerTag(v71);
    if (!v73)
    {
      LOWORD(v141[0]) = 0;
      _CFIndirectTaggedPointerStringGetContents();
      _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (v79)
      {
        goto LABEL_89;
      }

      [(__CFString *)v72 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      goto LABEL_104;
    }

    if (v73 == 22)
    {
      break;
    }

    if (v73 == 2)
    {
      MEMORY[0x1EEE9AC00](v73);
      String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

      goto LABEL_105;
    }

LABEL_76:
    LOBYTE(v144) = 0;
    *v152 = 0;
    LOBYTE(v141[0]) = 0;
    v140[0] = 0;
    v74 = __CFStringIsCF();
    if (v74)
    {
      if (!*v152)
      {

        goto LABEL_105;
      }

      if (v140[0] == 1)
      {
        if (v144)
        {
          lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
        }

        else
        {
          lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
        }

        String.init<A>(_immortalCocoaString:count:encoding:)();
        goto LABEL_104;
      }

      if (v141[0])
      {
        if (v144 != 1)
        {
          v74 = [(__CFString *)v72 lengthOfBytesUsingEncoding:4];
        }

        MEMORY[0x1EEE9AC00](v74);
        v80 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        v82 = HIBYTE(v81) & 0xF;
        if ((v81 & 0x2000000000000000) == 0)
        {
          v82 = v80 & 0xFFFFFFFFFFFFLL;
        }

        if (!v82)
        {

          goto LABEL_103;
        }

LABEL_89:
      }

      else
      {
LABEL_103:
        String.init(_cocoaString:)();
      }

LABEL_104:

      goto LABEL_105;
    }

    v75 = v72;
    String.init(_nativeStorage:)();
    if (!v76)
    {
      *v152 = [(__CFString *)v75 length];
      if (*v152)
      {
        goto LABEL_103;
      }
    }

LABEL_105:
    if (String.count.getter() == 4)
    {
      *v152 = 6254181;
      *&v152[8] = 0xE300000000000000;
      MEMORY[0x1865CB0E0](v138, v137);

      MEMORY[0x1865CB0E0](5461343, 0xE300000000000000);

      *v152 = 0;
      String.utf8CString.getter();

      String.utf8CString.getter();

      v83 = uloc_getDisplayScript();

      if (*v152 <= 0 && *v152 != -127 && v83 - 1 < 0x101)
      {
        v84 = specialized String.init(_utf16:)(&v143, v83);
        if (v85)
        {
          v17 = v84;
          v18 = v85;

          goto LABEL_116;
        }
      }
    }

    else
    {
    }

    if (v132 == v66)
    {
      goto LABEL_115;
    }

    ++v66;
    v67 += 16;
    if (v66 >= *(v29 + 2))
    {
      __break(1u);
LABEL_115:

      v17 = 0;
      v18 = 0;
      goto LABEL_117;
    }
  }

  v77 = [(__CFString *)v72 UTF8String];
  if (!v77)
  {
    goto LABEL_150;
  }

  String.init(utf8String:)(v77);
  if (v78)
  {
    goto LABEL_89;
  }

  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t _LocaleICU.variantCode.getter()
{
  v1 = *(v0 + 200);
  os_unfair_lock_lock((v1 + 536));
  closure #1 in _LocaleICU.variant.getterpartial apply((v1 + 16), &v5);
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

uint64_t closure #1 in _LocaleICU.variantCodeDisplayName(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v153 = *MEMORY[0x1E69E9840];
  v11 = *(a1 + 472);
  if (*(v11 + 16))
  {
    v12 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if (v13)
    {
      *a5 = *(*(v11 + 56) + 16 * v12);
    }
  }

  v130 = a5;
  v131 = a1;
  v135 = v5;
  v136 = a3;
  v137 = a2;
  if (String.count.getter() > 250 || (*v152 = 0x5F53555F6E65, *&v152[8] = 0xE600000000000000, MEMORY[0x1865CB0E0](a2, a3), v138 = 0, String.utf8CString.getter(), , String.utf8CString.getter(), DisplayVariant = uloc_getDisplayVariant(), , , DisplayVariant - 1 > 0x100))
  {
    v20 = *(a4 + 136);
    v21 = *(a4 + 168);
    v150 = *(a4 + 152);
    v151[0] = v21;
    *(v151 + 12) = *(a4 + 180);
    v22 = *(a4 + 72);
    v23 = *(a4 + 104);
    v146 = *(a4 + 88);
    v147 = v23;
    v148 = *(a4 + 120);
    v149 = v20;
    v144 = *(a4 + 56);
    v145 = v22;
    v24 = *(a4 + 136);
    v25 = *(a4 + 168);
    *&v152[96] = *(a4 + 152);
    *&v152[112] = v25;
    *&v152[124] = *(a4 + 180);
    v26 = *(a4 + 72);
    v27 = *(a4 + 104);
    *&v152[32] = *(a4 + 88);
    *&v152[48] = v27;
    *&v152[64] = *(a4 + 120);
    *&v152[80] = v24;
    *v152 = *(a4 + 56);
    *&v152[16] = v26;
    if (_s10Foundation17LocalePreferencesVSgWOg(v152) == 1)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v16 = specialized String.init(_utf16:)(&v139, DisplayVariant);
    if (v17)
    {
      v18 = v16;
      v19 = v17;
LABEL_117:

LABEL_118:
      v31 = v136;
LABEL_119:

      v90 = v131;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v152 = *(v90 + 472);
      v92 = *v152;
      v93 = specialized __RawDictionaryStorage.find<A>(_:)(v137, v31);
      v95 = *(v92 + 16);
      v96 = (v94 & 1) == 0;
      v97 = __OFADD__(v95, v96);
      v98 = v95 + v96;
      if (v97)
      {
        goto LABEL_131;
      }

      v99 = v94;
      if (*(v92 + 24) >= v98)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v100 = v92;
        }

        else
        {
          v134.i64[0] = v93;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SSgGMd);
          v106 = static _DictionaryStorage.copy(original:)();
          v100 = v106;
          if (*(v92 + 16))
          {
            v107 = (v106 + 64);
            v108 = ((1 << *(v100 + 32)) + 63) >> 6;
            if (v100 != v92 || v107 >= v92 + 64 + 8 * v108)
            {
              memmove(v107, (v92 + 64), 8 * v108);
            }

            *&v133 = v92 + 64;
            v109 = 0;
            *(v100 + 16) = *(v92 + 16);
            v110 = 1 << *(v92 + 32);
            v111 = *(v92 + 64);
            v112 = -1;
            if (v110 < 64)
            {
              v112 = ~(-1 << v110);
            }

            v113 = v112 & v111;
            v114 = (v110 + 63) >> 6;
            if ((v112 & v111) != 0)
            {
              do
              {
                v115 = __clz(__rbit64(v113));
                v113 &= v113 - 1;
LABEL_146:
                v118 = 16 * (v115 | (v109 << 6));
                v119 = (*(v92 + 48) + v118);
                v120 = *v119;
                v121 = v119[1];
                v122 = (*(v100 + 48) + v118);
                v123 = *(*(v92 + 56) + v118);
                *v122 = v120;
                v122[1] = v121;
                *(*(v100 + 56) + v118) = v123;
              }

              while (v113);
            }

            v116 = v109;
            while (1)
            {
              v109 = v116 + 1;
              if (__OFADD__(v116, 1))
              {
                __break(1u);
              }

              if (v109 >= v114)
              {
                break;
              }

              v117 = *(v133 + 8 * v109);
              ++v116;
              if (v117)
              {
                v115 = __clz(__rbit64(v117));
                v113 = (v117 - 1) & v117;
                goto LABEL_146;
              }
            }

            v90 = v131;
            v31 = v136;
          }

          v93 = v134.i64[0];
        }

        v103 = v130;
        v101 = v137;
        if (v99)
        {
LABEL_123:
          v104 = v93;

          v105 = (*(v100 + 56) + 16 * v104);
          *v105 = v18;
          v105[1] = v19;

LABEL_128:
          *(v90 + 472) = v100;
          *v103 = v18;
          v103[1] = v19;
          return result;
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v98, isUniquelyReferenced_nonNull_native);
        v100 = *v152;
        v101 = v137;
        v93 = specialized __RawDictionaryStorage.find<A>(_:)(v137, v31);
        if ((v99 & 1) != (v102 & 1))
        {
          goto LABEL_155;
        }

        v103 = v130;
        if (v99)
        {
          goto LABEL_123;
        }
      }

      result = specialized _NativeDictionary._insert(at:key:value:)(v93, v101, v31, v18, v19, v100);
      goto LABEL_128;
    }

    v33 = *(a4 + 152);
    v149 = *(a4 + 136);
    v150 = v33;
    v151[0] = *(a4 + 168);
    *(v151 + 12) = *(a4 + 180);
    v34 = *(a4 + 72);
    v35 = *(a4 + 104);
    v146 = *(a4 + 88);
    v147 = v35;
    v148 = *(a4 + 120);
    v144 = *(a4 + 56);
    v145 = v34;
    v36 = *(a4 + 152);
    *&v152[80] = *(a4 + 136);
    *&v152[96] = v36;
    *&v152[112] = *(a4 + 168);
    *&v152[124] = *(a4 + 180);
    v37 = *(a4 + 72);
    v38 = *(a4 + 104);
    *&v152[32] = *(a4 + 88);
    *&v152[48] = v38;
    *&v152[64] = *(a4 + 120);
    *v152 = *(a4 + 56);
    *&v152[16] = v37;
    if (_s10Foundation17LocalePreferencesVSgWOg(v152) == 1)
    {
      goto LABEL_14;
    }
  }

  v28.i32[0] = *&v152[136];
  v133 = *&v152[120];
  v134 = vmovl_u8(v28);
  v132 = *&v152[104];
  v128 = *&v152[72];
  v129 = *&v152[88];
  v125 = *&v152[40];
  v126 = *&v152[56];
  v124 = *&v152[24];
  v127 = *&v152[8];
  v29 = v152[0];
  v141[6] = v150;
  *v142 = v151[0];
  *&v142[12] = *(v151 + 12);
  v141[2] = v146;
  v141[3] = v147;
  v141[4] = v148;
  v141[5] = v149;
  v141[0] = v144;
  v141[1] = v145;
  outlined init with copy of LocalePreferences(v141, v140);
  v152[0] = v29;
  *&v152[8] = v127;
  *&v152[24] = v124;
  *&v152[40] = v125;
  *&v152[56] = v126;
  *&v152[72] = v128;
  *&v152[88] = v129;
  *&v152[104] = v132;
  *&v152[120] = v133;
  v30 = v127;
  *&v152[136] = vuzp1_s8(*v134.i8, *v134.i8).u32[0];
  v31 = v136;
  if (v127)
  {

    outlined destroy of LocalePreferences(v152);
    v32 = *(v127 + 16);
    if (v32)
    {
      goto LABEL_69;
    }

    goto LABEL_11;
  }

  outlined destroy of LocalePreferences(v152);
LABEL_14:
  if (one-time initialization token for cache != -1)
  {
    goto LABEL_132;
  }

  while (1)
  {
    v39 = String._bridgeToObjectiveCImpl()();
    v40 = CFPreferencesCopyAppValue(v39, *MEMORY[0x1E695E8A8]);
    swift_unknownObjectRelease();
    if (v40 && (*v152 = v40, __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd), (swift_dynamicCast() & 1) != 0))
    {
      v41 = v144;
    }

    else
    {
      v41 = MEMORY[0x1E69E7CC0];
    }

    v134.i64[0] = *(v41 + 16);
    if (!v134.i64[0])
    {
      break;
    }

    v42 = 0;
    *&v133 = *MEMORY[0x1E695E4A8];
    v43 = v41 + 40;
    v30 = MEMORY[0x1E69E7CC0];
    *&v132 = v41;
    while (v42 < *(v41 + 16))
    {
      v44 = String._bridgeToObjectiveCImpl()();

      CanonicalLanguageIdentifierFromString = CFLocaleCreateCanonicalLanguageIdentifierFromString(v133, v44);
      swift_unknownObjectRelease();
      if (CanonicalLanguageIdentifierFromString)
      {
        isTaggedPointer = _objc_isTaggedPointer(CanonicalLanguageIdentifierFromString);
        v47 = CanonicalLanguageIdentifierFromString;
        v48 = v47;
        if ((isTaggedPointer & 1) == 0)
        {
          goto LABEL_28;
        }

        TaggedPointerTag = _objc_getTaggedPointerTag(v47);
        if (TaggedPointerTag)
        {
          if (TaggedPointerTag != 22)
          {
            if (TaggedPointerTag == 2)
            {
              MEMORY[0x1EEE9AC00](TaggedPointerTag);
              v5 = v135;
              CanonicalLanguageIdentifierFromString = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
              v51 = v50;
              v135 = v5;
            }

            else
            {
LABEL_28:
              LOBYTE(v144) = 0;
              *v152 = 0;
              LOBYTE(v141[0]) = 0;
              v140[0] = 0;
              IsCF = __CFStringIsCF();
              if (IsCF)
              {
                CanonicalLanguageIdentifierFromString = *v152;
                if (*v152)
                {
                  v41 = v132;
                  if (v140[0] == 1)
                  {
                    if (v144)
                    {
                      lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
                    }

                    else
                    {
                      lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
                    }

                    v59 = String.init<A>(_immortalCocoaString:count:encoding:)();
                    goto LABEL_59;
                  }

                  if ((v141[0] & 1) == 0)
                  {
                    goto LABEL_58;
                  }

                  if (v144 != 1)
                  {
                    IsCF = [v48 lengthOfBytesUsingEncoding_];
                  }

                  MEMORY[0x1EEE9AC00](IsCF);
                  v5 = v135;
                  v61 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                  v51 = v62;
                  v135 = v5;
                  v63 = HIBYTE(v62) & 0xF;
                  if ((v62 & 0x2000000000000000) == 0)
                  {
                    v63 = v61 & 0xFFFFFFFFFFFFLL;
                  }

                  if (!v63)
                  {
                    v41 = v132;

LABEL_58:
                    v59 = String.init(_cocoaString:)();
LABEL_59:
                    CanonicalLanguageIdentifierFromString = v59;
                    v51 = v60;
LABEL_60:

                    goto LABEL_61;
                  }

                  CanonicalLanguageIdentifierFromString = v61;
                }

                else
                {

                  v51 = 0xE000000000000000;
                }
              }

              else
              {
                v53 = v48;
                v54 = String.init(_nativeStorage:)();
                if (v55)
                {
                  CanonicalLanguageIdentifierFromString = v54;
                  v51 = v55;
                }

                else
                {
                  *v152 = [v53 length];
                  if (*v152)
                  {
                    v41 = v132;
                    goto LABEL_58;
                  }

                  CanonicalLanguageIdentifierFromString = 0;
                  v51 = 0xE000000000000000;
                }
              }
            }

            v41 = v132;
            goto LABEL_61;
          }

          v56 = [v48 UTF8String];
          if (!v56)
          {
            goto LABEL_153;
          }

          v57 = String.init(utf8String:)(v56);
          v41 = v132;
          if (!v58)
          {
            goto LABEL_152;
          }
        }

        else
        {
          LOWORD(v141[0]) = 0;
          _CFIndirectTaggedPointerStringGetContents();
          v57 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
          v41 = v132;
          if (!v58)
          {
            [v48 mutableCopy];
            _bridgeAnyObjectToAny(_:)();

            swift_unknownObjectRelease();
            swift_dynamicCast();
            v51 = *(&v144 + 1);
            CanonicalLanguageIdentifierFromString = v144;
            goto LABEL_60;
          }
        }

        CanonicalLanguageIdentifierFromString = v57;
        v51 = v58;
      }

      else
      {

        v51 = 0xE000000000000000;
      }

LABEL_61:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v30 + 2) + 1, 1, v30);
      }

      v65 = *(v30 + 2);
      v64 = *(v30 + 3);
      if (v65 >= v64 >> 1)
      {
        v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v64 > 1), v65 + 1, 1, v30);
      }

      ++v42;
      *(v30 + 2) = v65 + 1;
      v66 = &v30[16 * v65];
      *(v66 + 4) = CanonicalLanguageIdentifierFromString;
      *(v66 + 5) = v51;
      v43 += 16;
      if (v134.i64[0] == v42)
      {
        goto LABEL_68;
      }
    }

    __break(1u);
LABEL_131:
    __break(1u);
LABEL_132:
    swift_once();
  }

  v30 = MEMORY[0x1E69E7CC0];
LABEL_68:

  v31 = v136;
  v32 = *(v30 + 2);
  if (!v32)
  {
LABEL_11:

    v18 = 0;
    v19 = 0;
    goto LABEL_119;
  }

LABEL_69:
  v67 = 0;
  v134.i64[0] = *MEMORY[0x1E695E4A8];
  v68 = v30 + 40;
  *&v133 = v32 - 1;
  v69 = v137;
  while (1)
  {
    v70 = String._bridgeToObjectiveCImpl()();
    v71 = CFLocaleCreateCanonicalLanguageIdentifierFromString(v134.i64[0], v70);
    swift_unknownObjectRelease();
    if (!v71)
    {
      goto LABEL_105;
    }

    v72 = _objc_isTaggedPointer(v71);
    v73 = v71;
    v74 = v73;
    if (!v72)
    {
      goto LABEL_76;
    }

    v75 = _objc_getTaggedPointerTag(v73);
    if (!v75)
    {
      LOWORD(v141[0]) = 0;
      _CFIndirectTaggedPointerStringGetContents();
      _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (v81)
      {
        goto LABEL_89;
      }

      [(__CFString *)v74 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      goto LABEL_104;
    }

    if (v75 == 22)
    {
      break;
    }

    if (v75 == 2)
    {
      MEMORY[0x1EEE9AC00](v75);
      v5 = v135;
      String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v135 = v5;

      goto LABEL_105;
    }

LABEL_76:
    LOBYTE(v144) = 0;
    *v152 = 0;
    LOBYTE(v141[0]) = 0;
    v140[0] = 0;
    v76 = __CFStringIsCF();
    if (v76)
    {
      if (!*v152)
      {

        goto LABEL_105;
      }

      if (v140[0] == 1)
      {
        if (v144)
        {
          lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
        }

        else
        {
          lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
        }

        String.init<A>(_immortalCocoaString:count:encoding:)();
        goto LABEL_104;
      }

      if (v141[0])
      {
        if (v144 != 1)
        {
          v76 = [(__CFString *)v74 lengthOfBytesUsingEncoding:4];
        }

        MEMORY[0x1EEE9AC00](v76);
        v5 = v135;
        v82 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        v135 = v5;
        v84 = HIBYTE(v83) & 0xF;
        if ((v83 & 0x2000000000000000) == 0)
        {
          v84 = v82 & 0xFFFFFFFFFFFFLL;
        }

        if (!v84)
        {

          goto LABEL_103;
        }

LABEL_89:
      }

      else
      {
LABEL_103:
        String.init(_cocoaString:)();
      }

LABEL_104:

      goto LABEL_105;
    }

    v77 = v74;
    String.init(_nativeStorage:)();
    if (!v78)
    {
      *v152 = [(__CFString *)v77 length];
      if (*v152)
      {
        goto LABEL_103;
      }
    }

LABEL_105:
    v85 = v136;
    if (String.count.getter() > 250)
    {
    }

    else
    {
      *v152 = 0x5F53555F6E65;
      *&v152[8] = 0xE600000000000000;
      MEMORY[0x1865CB0E0](v69, v85);
      LODWORD(v144) = 0;
      String.utf8CString.getter();

      String.utf8CString.getter();

      v86 = uloc_getDisplayVariant();

      if (v144 <= 0 && v144 != -127 && (v86 - 1) < 0x101)
      {
        MEMORY[0x1EEE9AC00](v87);
        v5 = v135;
        closure #1 in String.init(_utf16:)(&v124 - v88, v143, v89, v152);
        if (v5)
        {
          goto LABEL_154;
        }

        v19 = *&v152[8];
        v135 = 0;
        if (*&v152[8])
        {
          v18 = *v152;

          goto LABEL_117;
        }
      }
    }

    if (v133 == v67)
    {
      goto LABEL_116;
    }

    ++v67;
    v68 += 16;
    if (v67 >= *(v30 + 2))
    {
      __break(1u);
LABEL_116:

      v18 = 0;
      v19 = 0;
      goto LABEL_118;
    }
  }

  v79 = [(__CFString *)v74 UTF8String];
  if (!v79)
  {
    goto LABEL_151;
  }

  String.init(utf8String:)(v79);
  if (v80)
  {
    goto LABEL_89;
  }

  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  swift_willThrow();

  __break(1u);
LABEL_155:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

id _LocaleICU.exemplarCharacterSet.getter@<X0>(uint64_t *a1@<X8>)
{
  String.utf8CString.getter();
  ulocdata_open();

  ulocdata_getExemplarSet();
  result = CFCharacterSetCreateMutable(0);
  if (!result)
  {
    goto LABEL_56;
  }

  v3 = result;
  type metadata accessor for __CharacterSetStorage();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = 1;
  v5 = swift_slowAlloc();
  ItemCount = uset_getItemCount();
  if (ItemCount < 0)
  {
    __break(1u);
  }

  v7 = ItemCount;
  if (!ItemCount)
  {
LABEL_50:
    *a1 = v4;

    MEMORY[0x1865D2690](v5, -1, -1);

    uset_close();
    return ulocdata_close();
  }

  v8 = 0;
  v40 = ItemCount;
  while (1)
  {
    Item = uset_getItem();
    if (Item <= 0)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = *(v4 + 24);
        v19 = *(v4 + 16);
        result = CFCharacterSetCreateMutableCopy(0, v19);
        v20 = result;
        if (v18)
        {
          v7 = v40;
          if (!result)
          {
            goto LABEL_58;
          }
        }

        else
        {
          v7 = v40;
          if (!result)
          {
            goto LABEL_57;
          }
        }

        v21 = swift_allocObject();
        *(v21 + 16) = v20;
        *(v21 + 24) = 1;

        v4 = v21;
      }

      v22 = *(v4 + 16);
      if (*(v4 + 24))
      {
        v41.location = 0;
        v41.length = 1;
        CFCharacterSetAddCharactersInRange(v22, v41);
        goto LABEL_7;
      }

      v23 = v22;
      result = CFCharacterSetCreateMutableCopy(0, v23);
      if (!result)
      {
        goto LABEL_53;
      }

      v24 = result;
      v25 = result;
      v42.location = 0;
      v42.length = 1;
      CFCharacterSetAddCharactersInRange(v25, v42);

      v26 = *(v4 + 16);
      *(v4 + 16) = v24;
      goto LABEL_49;
    }

    v12 = [objc_allocWithZone(NSString) initWithCharacters:v5 length:Item];
    if (!v12)
    {
      goto LABEL_40;
    }

    v13 = v12;
    isTaggedPointer = _objc_isTaggedPointer(v12);
    v15 = v13;
    v16 = v15;
    if (isTaggedPointer)
    {
      TaggedPointerTag = _objc_getTaggedPointerTag(v15);
      if (TaggedPointerTag)
      {
        if (TaggedPointerTag != 22)
        {
          if (TaggedPointerTag == 2)
          {
            MEMORY[0x1EEE9AC00](TaggedPointerTag);
            String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

            goto LABEL_40;
          }

          goto LABEL_19;
        }

        result = [v16 UTF8String];
        if (!result)
        {
          goto LABEL_60;
        }

        result = String.init(utf8String:)(result);
        if (!v29)
        {
          goto LABEL_59;
        }
      }

      else
      {
        _CFIndirectTaggedPointerStringGetContents();
        _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
        if (!v30)
        {
          [v16 mutableCopy];
          _bridgeAnyObjectToAny(_:)();

          swift_unknownObjectRelease();
          swift_dynamicCast();
          goto LABEL_39;
        }
      }

LABEL_39:
      goto LABEL_40;
    }

LABEL_19:
    if (__CFStringIsCF())
    {

      goto LABEL_40;
    }

    v27 = v16;
    String.init(_nativeStorage:)();
    if (v28)
    {

      goto LABEL_40;
    }

    if ([v27 length])
    {
      String.init(_cocoaString:)();
      goto LABEL_39;
    }

LABEL_40:
    String.init<A>(_:)();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v31 = *(v4 + 24);
      v32 = *(v4 + 16);
      result = CFCharacterSetCreateMutableCopy(0, v32);
      v33 = result;
      if (v31)
      {
        if (!result)
        {
          goto LABEL_55;
        }
      }

      else if (!result)
      {
        goto LABEL_54;
      }

      v34 = swift_allocObject();
      *(v34 + 16) = v33;
      *(v34 + 24) = 1;

      v4 = v34;
    }

    v35 = *(v4 + 16);
    if ((*(v4 + 24) & 1) == 0)
    {
      break;
    }

    v9 = String._bridgeToObjectiveCImpl()();
    v10 = v35;

    CFCharacterSetAddCharactersInString(v10, v9);

    swift_unknownObjectRelease();
LABEL_6:
    v7 = v40;
LABEL_7:
    if (v7 == ++v8)
    {
      goto LABEL_50;
    }
  }

  v36 = v35;
  result = CFCharacterSetCreateMutableCopy(0, v36);
  if (result)
  {
    v37 = result;
    v38 = String._bridgeToObjectiveCImpl()();
    v39 = v37;

    CFCharacterSetAddCharactersInString(v39, v38);

    swift_unknownObjectRelease();
    v26 = *(v4 + 16);
    *(v4 + 16) = v37;
LABEL_49:
    *(v4 + 24) = 1;

    goto LABEL_6;
  }

  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
  return result;
}