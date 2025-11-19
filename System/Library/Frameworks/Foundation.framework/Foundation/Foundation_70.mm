uint64_t getEnumTagSinglePayload for Date.FormatStyle.Symbol.SecondFraction(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = (v3 ^ 0xFF) - 1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for Date.FormatStyle.Symbol.SecondFraction(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = ~a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Date.FormatStyle.Symbol.TimeZone(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 <= 0xC)
  {
    v7 = 12;
  }

  else
  {
    v7 = *a1;
  }

  v8 = v7 - 13;
  if (v6 < 0xC)
  {
    v9 = -1;
  }

  else
  {
    v9 = v8;
  }

  return (v9 + 1);
}

uint64_t storeEnumTagSinglePayload for Date.FormatStyle.Symbol.TimeZone(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Date.FormatStyle.Symbol.SymbolType.TimeZoneSymbolOption(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Date.FormatStyle.Symbol.SymbolType.TimeZoneSymbolOption(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Date.FormatStyle.Symbol.SymbolType.DayPeriodOption(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Date.FormatStyle.Symbol.SymbolType.DayPeriodOption(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for Date.FormatStyle.Symbol.StandaloneQuarter(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Date.FormatStyle.Symbol.StandaloneQuarter(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Date.FormatStyle.Symbol.SymbolType.YearOption(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for Date.FormatStyle.Symbol.SymbolType.YearOption(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTag for Date.FormatStyle.Symbol.SymbolType.YearOption(uint64_t a1)
{
  if (*(a1 + 8) <= 2u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 3);
  }
}

uint64_t destructiveInjectEnumTag for Date.FormatStyle.Symbol.SymbolType.YearOption(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for Date.FormatStyle.Symbol(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x2E && *(a1 + 9))
  {
    return (*a1 + 46);
  }

  v3 = ((*(a1 + 8) >> 3) & 0xFFFFFFDF | (32 * ((*(a1 + 8) >> 2) & 1))) ^ 0x3F;
  if (v3 >= 0x2D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for Date.FormatStyle.Symbol(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x2D)
  {
    *(result + 8) = 0;
    *result = a2 - 46;
    if (a3 >= 0x2E)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x2E)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 4 * (((-a2 & 0x20) != 0) - 2 * a2);
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Date.FormatStyle.Symbol.SymbolType and conformance Date.FormatStyle.Symbol.SymbolType()
{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType and conformance Date.FormatStyle.Symbol.SymbolType;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType and conformance Date.FormatStyle.Symbol.SymbolType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType and conformance Date.FormatStyle.Symbol.SymbolType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Date.FormatStyle.Symbol.SymbolType.EraOption and conformance Date.FormatStyle.Symbol.SymbolType.EraOption()
{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.EraOption and conformance Date.FormatStyle.Symbol.SymbolType.EraOption;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.EraOption and conformance Date.FormatStyle.Symbol.SymbolType.EraOption)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.EraOption and conformance Date.FormatStyle.Symbol.SymbolType.EraOption);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.EraOption and conformance Date.FormatStyle.Symbol.SymbolType.EraOption;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.EraOption and conformance Date.FormatStyle.Symbol.SymbolType.EraOption)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.EraOption and conformance Date.FormatStyle.Symbol.SymbolType.EraOption);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.EraOption and conformance Date.FormatStyle.Symbol.SymbolType.EraOption;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.EraOption and conformance Date.FormatStyle.Symbol.SymbolType.EraOption)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.EraOption and conformance Date.FormatStyle.Symbol.SymbolType.EraOption);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.EraOption and conformance Date.FormatStyle.Symbol.SymbolType.EraOption;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.EraOption and conformance Date.FormatStyle.Symbol.SymbolType.EraOption)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.EraOption and conformance Date.FormatStyle.Symbol.SymbolType.EraOption);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Date.FormatStyle.Symbol.SymbolType.YearOption and conformance Date.FormatStyle.Symbol.SymbolType.YearOption()
{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.YearOption and conformance Date.FormatStyle.Symbol.SymbolType.YearOption;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.YearOption and conformance Date.FormatStyle.Symbol.SymbolType.YearOption)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.YearOption and conformance Date.FormatStyle.Symbol.SymbolType.YearOption);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.YearOption and conformance Date.FormatStyle.Symbol.SymbolType.YearOption;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.YearOption and conformance Date.FormatStyle.Symbol.SymbolType.YearOption)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.YearOption and conformance Date.FormatStyle.Symbol.SymbolType.YearOption);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.YearOption and conformance Date.FormatStyle.Symbol.SymbolType.YearOption;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.YearOption and conformance Date.FormatStyle.Symbol.SymbolType.YearOption)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.YearOption and conformance Date.FormatStyle.Symbol.SymbolType.YearOption);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.YearOption and conformance Date.FormatStyle.Symbol.SymbolType.YearOption;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.YearOption and conformance Date.FormatStyle.Symbol.SymbolType.YearOption)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.YearOption and conformance Date.FormatStyle.Symbol.SymbolType.YearOption);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Date.FormatStyle.Symbol.SymbolType.YearForWeekOfYearOption and conformance Date.FormatStyle.Symbol.SymbolType.YearForWeekOfYearOption()
{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.YearForWeekOfYearOption and conformance Date.FormatStyle.Symbol.SymbolType.YearForWeekOfYearOption;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.YearForWeekOfYearOption and conformance Date.FormatStyle.Symbol.SymbolType.YearForWeekOfYearOption)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.YearForWeekOfYearOption and conformance Date.FormatStyle.Symbol.SymbolType.YearForWeekOfYearOption);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.YearForWeekOfYearOption and conformance Date.FormatStyle.Symbol.SymbolType.YearForWeekOfYearOption;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.YearForWeekOfYearOption and conformance Date.FormatStyle.Symbol.SymbolType.YearForWeekOfYearOption)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.YearForWeekOfYearOption and conformance Date.FormatStyle.Symbol.SymbolType.YearForWeekOfYearOption);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Date.FormatStyle.Symbol.SymbolType.CyclicYearOption and conformance Date.FormatStyle.Symbol.SymbolType.CyclicYearOption()
{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.CyclicYearOption and conformance Date.FormatStyle.Symbol.SymbolType.CyclicYearOption;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.CyclicYearOption and conformance Date.FormatStyle.Symbol.SymbolType.CyclicYearOption)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.CyclicYearOption and conformance Date.FormatStyle.Symbol.SymbolType.CyclicYearOption);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.CyclicYearOption and conformance Date.FormatStyle.Symbol.SymbolType.CyclicYearOption;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.CyclicYearOption and conformance Date.FormatStyle.Symbol.SymbolType.CyclicYearOption)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.CyclicYearOption and conformance Date.FormatStyle.Symbol.SymbolType.CyclicYearOption);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Date.FormatStyle.Symbol.SymbolType.QuarterOption and conformance Date.FormatStyle.Symbol.SymbolType.QuarterOption()
{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.QuarterOption and conformance Date.FormatStyle.Symbol.SymbolType.QuarterOption;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.QuarterOption and conformance Date.FormatStyle.Symbol.SymbolType.QuarterOption)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.QuarterOption and conformance Date.FormatStyle.Symbol.SymbolType.QuarterOption);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.QuarterOption and conformance Date.FormatStyle.Symbol.SymbolType.QuarterOption;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.QuarterOption and conformance Date.FormatStyle.Symbol.SymbolType.QuarterOption)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.QuarterOption and conformance Date.FormatStyle.Symbol.SymbolType.QuarterOption);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.QuarterOption and conformance Date.FormatStyle.Symbol.SymbolType.QuarterOption;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.QuarterOption and conformance Date.FormatStyle.Symbol.SymbolType.QuarterOption)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.QuarterOption and conformance Date.FormatStyle.Symbol.SymbolType.QuarterOption);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.QuarterOption and conformance Date.FormatStyle.Symbol.SymbolType.QuarterOption;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.QuarterOption and conformance Date.FormatStyle.Symbol.SymbolType.QuarterOption)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.QuarterOption and conformance Date.FormatStyle.Symbol.SymbolType.QuarterOption);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Date.FormatStyle.Symbol.SymbolType.MonthOption and conformance Date.FormatStyle.Symbol.SymbolType.MonthOption()
{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.MonthOption and conformance Date.FormatStyle.Symbol.SymbolType.MonthOption;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.MonthOption and conformance Date.FormatStyle.Symbol.SymbolType.MonthOption)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.MonthOption and conformance Date.FormatStyle.Symbol.SymbolType.MonthOption);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.MonthOption and conformance Date.FormatStyle.Symbol.SymbolType.MonthOption;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.MonthOption and conformance Date.FormatStyle.Symbol.SymbolType.MonthOption)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.MonthOption and conformance Date.FormatStyle.Symbol.SymbolType.MonthOption);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.MonthOption and conformance Date.FormatStyle.Symbol.SymbolType.MonthOption;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.MonthOption and conformance Date.FormatStyle.Symbol.SymbolType.MonthOption)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.MonthOption and conformance Date.FormatStyle.Symbol.SymbolType.MonthOption);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.MonthOption and conformance Date.FormatStyle.Symbol.SymbolType.MonthOption;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.MonthOption and conformance Date.FormatStyle.Symbol.SymbolType.MonthOption)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.MonthOption and conformance Date.FormatStyle.Symbol.SymbolType.MonthOption);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Date.FormatStyle.Symbol.SymbolType.WeekOption and conformance Date.FormatStyle.Symbol.SymbolType.WeekOption()
{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.WeekOption and conformance Date.FormatStyle.Symbol.SymbolType.WeekOption;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.WeekOption and conformance Date.FormatStyle.Symbol.SymbolType.WeekOption)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.WeekOption and conformance Date.FormatStyle.Symbol.SymbolType.WeekOption);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.WeekOption and conformance Date.FormatStyle.Symbol.SymbolType.WeekOption;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.WeekOption and conformance Date.FormatStyle.Symbol.SymbolType.WeekOption)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.WeekOption and conformance Date.FormatStyle.Symbol.SymbolType.WeekOption);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.WeekOption and conformance Date.FormatStyle.Symbol.SymbolType.WeekOption;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.WeekOption and conformance Date.FormatStyle.Symbol.SymbolType.WeekOption)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.WeekOption and conformance Date.FormatStyle.Symbol.SymbolType.WeekOption);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.WeekOption and conformance Date.FormatStyle.Symbol.SymbolType.WeekOption;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.WeekOption and conformance Date.FormatStyle.Symbol.SymbolType.WeekOption)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.WeekOption and conformance Date.FormatStyle.Symbol.SymbolType.WeekOption);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Date.FormatStyle.Symbol.SymbolType.DayOption and conformance Date.FormatStyle.Symbol.SymbolType.DayOption()
{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.DayOption and conformance Date.FormatStyle.Symbol.SymbolType.DayOption;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.DayOption and conformance Date.FormatStyle.Symbol.SymbolType.DayOption)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.DayOption and conformance Date.FormatStyle.Symbol.SymbolType.DayOption);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.DayOption and conformance Date.FormatStyle.Symbol.SymbolType.DayOption;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.DayOption and conformance Date.FormatStyle.Symbol.SymbolType.DayOption)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.DayOption and conformance Date.FormatStyle.Symbol.SymbolType.DayOption);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.DayOption and conformance Date.FormatStyle.Symbol.SymbolType.DayOption;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.DayOption and conformance Date.FormatStyle.Symbol.SymbolType.DayOption)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.DayOption and conformance Date.FormatStyle.Symbol.SymbolType.DayOption);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.DayOption and conformance Date.FormatStyle.Symbol.SymbolType.DayOption;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.DayOption and conformance Date.FormatStyle.Symbol.SymbolType.DayOption)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.DayOption and conformance Date.FormatStyle.Symbol.SymbolType.DayOption);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Date.FormatStyle.Symbol.SymbolType.DayOfYearOption and conformance Date.FormatStyle.Symbol.SymbolType.DayOfYearOption()
{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.DayOfYearOption and conformance Date.FormatStyle.Symbol.SymbolType.DayOfYearOption;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.DayOfYearOption and conformance Date.FormatStyle.Symbol.SymbolType.DayOfYearOption)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.DayOfYearOption and conformance Date.FormatStyle.Symbol.SymbolType.DayOfYearOption);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.DayOfYearOption and conformance Date.FormatStyle.Symbol.SymbolType.DayOfYearOption;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.DayOfYearOption and conformance Date.FormatStyle.Symbol.SymbolType.DayOfYearOption)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.DayOfYearOption and conformance Date.FormatStyle.Symbol.SymbolType.DayOfYearOption);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.DayOfYearOption and conformance Date.FormatStyle.Symbol.SymbolType.DayOfYearOption;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.DayOfYearOption and conformance Date.FormatStyle.Symbol.SymbolType.DayOfYearOption)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.DayOfYearOption and conformance Date.FormatStyle.Symbol.SymbolType.DayOfYearOption);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.DayOfYearOption and conformance Date.FormatStyle.Symbol.SymbolType.DayOfYearOption;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.DayOfYearOption and conformance Date.FormatStyle.Symbol.SymbolType.DayOfYearOption)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.DayOfYearOption and conformance Date.FormatStyle.Symbol.SymbolType.DayOfYearOption);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Date.FormatStyle.Symbol.SymbolType.WeekdayOption and conformance Date.FormatStyle.Symbol.SymbolType.WeekdayOption()
{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.WeekdayOption and conformance Date.FormatStyle.Symbol.SymbolType.WeekdayOption;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.WeekdayOption and conformance Date.FormatStyle.Symbol.SymbolType.WeekdayOption)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.WeekdayOption and conformance Date.FormatStyle.Symbol.SymbolType.WeekdayOption);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.WeekdayOption and conformance Date.FormatStyle.Symbol.SymbolType.WeekdayOption;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.WeekdayOption and conformance Date.FormatStyle.Symbol.SymbolType.WeekdayOption)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.WeekdayOption and conformance Date.FormatStyle.Symbol.SymbolType.WeekdayOption);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.WeekdayOption and conformance Date.FormatStyle.Symbol.SymbolType.WeekdayOption;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.WeekdayOption and conformance Date.FormatStyle.Symbol.SymbolType.WeekdayOption)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.WeekdayOption and conformance Date.FormatStyle.Symbol.SymbolType.WeekdayOption);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.WeekdayOption and conformance Date.FormatStyle.Symbol.SymbolType.WeekdayOption;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.WeekdayOption and conformance Date.FormatStyle.Symbol.SymbolType.WeekdayOption)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.WeekdayOption and conformance Date.FormatStyle.Symbol.SymbolType.WeekdayOption);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Date.FormatStyle.Symbol.SymbolType.DayPeriodOption and conformance Date.FormatStyle.Symbol.SymbolType.DayPeriodOption()
{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.DayPeriodOption and conformance Date.FormatStyle.Symbol.SymbolType.DayPeriodOption;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.DayPeriodOption and conformance Date.FormatStyle.Symbol.SymbolType.DayPeriodOption)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.DayPeriodOption and conformance Date.FormatStyle.Symbol.SymbolType.DayPeriodOption);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.DayPeriodOption and conformance Date.FormatStyle.Symbol.SymbolType.DayPeriodOption;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.DayPeriodOption and conformance Date.FormatStyle.Symbol.SymbolType.DayPeriodOption)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.DayPeriodOption and conformance Date.FormatStyle.Symbol.SymbolType.DayPeriodOption);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.DayPeriodOption and conformance Date.FormatStyle.Symbol.SymbolType.DayPeriodOption;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.DayPeriodOption and conformance Date.FormatStyle.Symbol.SymbolType.DayPeriodOption)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.DayPeriodOption and conformance Date.FormatStyle.Symbol.SymbolType.DayPeriodOption);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.DayPeriodOption and conformance Date.FormatStyle.Symbol.SymbolType.DayPeriodOption;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.DayPeriodOption and conformance Date.FormatStyle.Symbol.SymbolType.DayPeriodOption)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.DayPeriodOption and conformance Date.FormatStyle.Symbol.SymbolType.DayPeriodOption);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Date.FormatStyle.Symbol.SymbolType.HourOption and conformance Date.FormatStyle.Symbol.SymbolType.HourOption()
{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.HourOption and conformance Date.FormatStyle.Symbol.SymbolType.HourOption;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.HourOption and conformance Date.FormatStyle.Symbol.SymbolType.HourOption)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.HourOption and conformance Date.FormatStyle.Symbol.SymbolType.HourOption);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.HourOption and conformance Date.FormatStyle.Symbol.SymbolType.HourOption;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.HourOption and conformance Date.FormatStyle.Symbol.SymbolType.HourOption)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.HourOption and conformance Date.FormatStyle.Symbol.SymbolType.HourOption);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.HourOption and conformance Date.FormatStyle.Symbol.SymbolType.HourOption;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.HourOption and conformance Date.FormatStyle.Symbol.SymbolType.HourOption)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.HourOption and conformance Date.FormatStyle.Symbol.SymbolType.HourOption);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.HourOption and conformance Date.FormatStyle.Symbol.SymbolType.HourOption;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.HourOption and conformance Date.FormatStyle.Symbol.SymbolType.HourOption)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.HourOption and conformance Date.FormatStyle.Symbol.SymbolType.HourOption);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Date.FormatStyle.Symbol.SymbolType.MinuteOption and conformance Date.FormatStyle.Symbol.SymbolType.MinuteOption()
{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.MinuteOption and conformance Date.FormatStyle.Symbol.SymbolType.MinuteOption;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.MinuteOption and conformance Date.FormatStyle.Symbol.SymbolType.MinuteOption)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.MinuteOption and conformance Date.FormatStyle.Symbol.SymbolType.MinuteOption);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.MinuteOption and conformance Date.FormatStyle.Symbol.SymbolType.MinuteOption;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.MinuteOption and conformance Date.FormatStyle.Symbol.SymbolType.MinuteOption)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.MinuteOption and conformance Date.FormatStyle.Symbol.SymbolType.MinuteOption);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.MinuteOption and conformance Date.FormatStyle.Symbol.SymbolType.MinuteOption;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.MinuteOption and conformance Date.FormatStyle.Symbol.SymbolType.MinuteOption)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.MinuteOption and conformance Date.FormatStyle.Symbol.SymbolType.MinuteOption);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.MinuteOption and conformance Date.FormatStyle.Symbol.SymbolType.MinuteOption;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.MinuteOption and conformance Date.FormatStyle.Symbol.SymbolType.MinuteOption)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.MinuteOption and conformance Date.FormatStyle.Symbol.SymbolType.MinuteOption);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Date.FormatStyle.Symbol.SymbolType.SecondOption and conformance Date.FormatStyle.Symbol.SymbolType.SecondOption()
{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.SecondOption and conformance Date.FormatStyle.Symbol.SymbolType.SecondOption;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.SecondOption and conformance Date.FormatStyle.Symbol.SymbolType.SecondOption)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.SecondOption and conformance Date.FormatStyle.Symbol.SymbolType.SecondOption);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.SecondOption and conformance Date.FormatStyle.Symbol.SymbolType.SecondOption;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.SecondOption and conformance Date.FormatStyle.Symbol.SymbolType.SecondOption)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.SecondOption and conformance Date.FormatStyle.Symbol.SymbolType.SecondOption);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.SecondOption and conformance Date.FormatStyle.Symbol.SymbolType.SecondOption;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.SecondOption and conformance Date.FormatStyle.Symbol.SymbolType.SecondOption)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.SecondOption and conformance Date.FormatStyle.Symbol.SymbolType.SecondOption);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.SecondOption and conformance Date.FormatStyle.Symbol.SymbolType.SecondOption;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.SecondOption and conformance Date.FormatStyle.Symbol.SymbolType.SecondOption)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.SecondOption and conformance Date.FormatStyle.Symbol.SymbolType.SecondOption);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Date.FormatStyle.Symbol.SymbolType.SecondFractionOption and conformance Date.FormatStyle.Symbol.SymbolType.SecondFractionOption()
{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.SecondFractionOption and conformance Date.FormatStyle.Symbol.SymbolType.SecondFractionOption;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.SecondFractionOption and conformance Date.FormatStyle.Symbol.SymbolType.SecondFractionOption)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.SecondFractionOption and conformance Date.FormatStyle.Symbol.SymbolType.SecondFractionOption);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.SecondFractionOption and conformance Date.FormatStyle.Symbol.SymbolType.SecondFractionOption;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.SecondFractionOption and conformance Date.FormatStyle.Symbol.SymbolType.SecondFractionOption)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.SecondFractionOption and conformance Date.FormatStyle.Symbol.SymbolType.SecondFractionOption);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.SecondFractionOption and conformance Date.FormatStyle.Symbol.SymbolType.SecondFractionOption;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.SecondFractionOption and conformance Date.FormatStyle.Symbol.SymbolType.SecondFractionOption)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.SecondFractionOption and conformance Date.FormatStyle.Symbol.SymbolType.SecondFractionOption);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.SecondFractionOption and conformance Date.FormatStyle.Symbol.SymbolType.SecondFractionOption;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.SecondFractionOption and conformance Date.FormatStyle.Symbol.SymbolType.SecondFractionOption)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.SecondFractionOption and conformance Date.FormatStyle.Symbol.SymbolType.SecondFractionOption);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Date.FormatStyle.Symbol.SymbolType.TimeZoneSymbolOption and conformance Date.FormatStyle.Symbol.SymbolType.TimeZoneSymbolOption()
{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.TimeZoneSymbolOption and conformance Date.FormatStyle.Symbol.SymbolType.TimeZoneSymbolOption;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.TimeZoneSymbolOption and conformance Date.FormatStyle.Symbol.SymbolType.TimeZoneSymbolOption)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.TimeZoneSymbolOption and conformance Date.FormatStyle.Symbol.SymbolType.TimeZoneSymbolOption);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.TimeZoneSymbolOption and conformance Date.FormatStyle.Symbol.SymbolType.TimeZoneSymbolOption;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.TimeZoneSymbolOption and conformance Date.FormatStyle.Symbol.SymbolType.TimeZoneSymbolOption)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.TimeZoneSymbolOption and conformance Date.FormatStyle.Symbol.SymbolType.TimeZoneSymbolOption);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.TimeZoneSymbolOption and conformance Date.FormatStyle.Symbol.SymbolType.TimeZoneSymbolOption;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.TimeZoneSymbolOption and conformance Date.FormatStyle.Symbol.SymbolType.TimeZoneSymbolOption)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.TimeZoneSymbolOption and conformance Date.FormatStyle.Symbol.SymbolType.TimeZoneSymbolOption);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.TimeZoneSymbolOption and conformance Date.FormatStyle.Symbol.SymbolType.TimeZoneSymbolOption;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.TimeZoneSymbolOption and conformance Date.FormatStyle.Symbol.SymbolType.TimeZoneSymbolOption)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.TimeZoneSymbolOption and conformance Date.FormatStyle.Symbol.SymbolType.TimeZoneSymbolOption);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Date.FormatStyle.Symbol.SymbolType.StandaloneQuarterOption and conformance Date.FormatStyle.Symbol.SymbolType.StandaloneQuarterOption()
{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.StandaloneQuarterOption and conformance Date.FormatStyle.Symbol.SymbolType.StandaloneQuarterOption;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.StandaloneQuarterOption and conformance Date.FormatStyle.Symbol.SymbolType.StandaloneQuarterOption)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.StandaloneQuarterOption and conformance Date.FormatStyle.Symbol.SymbolType.StandaloneQuarterOption);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.StandaloneQuarterOption and conformance Date.FormatStyle.Symbol.SymbolType.StandaloneQuarterOption;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.StandaloneQuarterOption and conformance Date.FormatStyle.Symbol.SymbolType.StandaloneQuarterOption)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.StandaloneQuarterOption and conformance Date.FormatStyle.Symbol.SymbolType.StandaloneQuarterOption);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Date.FormatStyle.Symbol.SymbolType.StandaloneMonthOption and conformance Date.FormatStyle.Symbol.SymbolType.StandaloneMonthOption()
{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.StandaloneMonthOption and conformance Date.FormatStyle.Symbol.SymbolType.StandaloneMonthOption;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.StandaloneMonthOption and conformance Date.FormatStyle.Symbol.SymbolType.StandaloneMonthOption)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.StandaloneMonthOption and conformance Date.FormatStyle.Symbol.SymbolType.StandaloneMonthOption);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.StandaloneMonthOption and conformance Date.FormatStyle.Symbol.SymbolType.StandaloneMonthOption;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.StandaloneMonthOption and conformance Date.FormatStyle.Symbol.SymbolType.StandaloneMonthOption)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.StandaloneMonthOption and conformance Date.FormatStyle.Symbol.SymbolType.StandaloneMonthOption);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Date.FormatStyle.Symbol.SymbolType.StandaloneWeekdayOption and conformance Date.FormatStyle.Symbol.SymbolType.StandaloneWeekdayOption()
{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.StandaloneWeekdayOption and conformance Date.FormatStyle.Symbol.SymbolType.StandaloneWeekdayOption;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.StandaloneWeekdayOption and conformance Date.FormatStyle.Symbol.SymbolType.StandaloneWeekdayOption)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.StandaloneWeekdayOption and conformance Date.FormatStyle.Symbol.SymbolType.StandaloneWeekdayOption);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.StandaloneWeekdayOption and conformance Date.FormatStyle.Symbol.SymbolType.StandaloneWeekdayOption;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.StandaloneWeekdayOption and conformance Date.FormatStyle.Symbol.SymbolType.StandaloneWeekdayOption)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.StandaloneWeekdayOption and conformance Date.FormatStyle.Symbol.SymbolType.StandaloneWeekdayOption);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Date.FormatStyle.Symbol.SymbolType.VerbatimHourOption and conformance Date.FormatStyle.Symbol.SymbolType.VerbatimHourOption()
{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.VerbatimHourOption and conformance Date.FormatStyle.Symbol.SymbolType.VerbatimHourOption;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.VerbatimHourOption and conformance Date.FormatStyle.Symbol.SymbolType.VerbatimHourOption)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.VerbatimHourOption and conformance Date.FormatStyle.Symbol.SymbolType.VerbatimHourOption);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.VerbatimHourOption and conformance Date.FormatStyle.Symbol.SymbolType.VerbatimHourOption;
  if (!lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.VerbatimHourOption and conformance Date.FormatStyle.Symbol.SymbolType.VerbatimHourOption)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatStyle.Symbol.SymbolType.VerbatimHourOption and conformance Date.FormatStyle.Symbol.SymbolType.VerbatimHourOption);
  }

  return result;
}

unint64_t specialized Date.FormatStyle.Symbol.SymbolType.EraOption.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Date.FormatStyle.Symbol.SymbolType.EraOption.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t specialized Date.FormatStyle.Symbol.SymbolType.YearOption.init(rawValue:)(uint64_t a1, unint64_t a2)
{
  v2 = specialized Collection.first.getter(a1, a2);
  if (!v3)
  {
    goto LABEL_26;
  }

  v4 = v2;
  v5 = v3;
  if (v2 == 121 && v3 == 0xE100000000000000)
  {
    goto LABEL_25;
  }

  v6 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v8 = v4 == 114 && v5 == 0xE100000000000000;
  if ((v6 & 1) == 0 && !v8 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    if (v4 == 117 && v5 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      do
      {
        while (1)
        {
          v10 = String.Iterator.next()();
          if (!v10.value._object)
          {

            goto LABEL_24;
          }

          if (v10.value._countAndFlagsBits != v4 || v10.value._object != v5)
          {
            break;
          }
        }

        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      while ((v9 & 1) != 0);
    }

    else
    {
    }

    goto LABEL_26;
  }

LABEL_24:
  if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {
LABEL_25:

    if (String.count.getter() == 1)
    {
LABEL_26:

      return 0;
    }

    if (String.count.getter() == 2)
    {

      return 1;
    }
  }

  else
  {
    if (!v8)
    {
      _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  v12 = String.count.getter();

  return v12;
}

uint64_t specialized Date.FormatStyle.Symbol.SymbolType.YearForWeekOfYearOption.init(rawValue:)()
{

  v2 = String.Iterator.next()();
  object = v2.value._object;
  countAndFlagsBits = v2.value._countAndFlagsBits;
  if (v2.value._object)
  {
    do
    {
      if (countAndFlagsBits == 89 && object == 0xE100000000000000)
      {
      }

      else
      {
        v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v3 & 1) == 0)
        {

          return 0;
        }
      }

      v4 = String.Iterator.next()();
      object = v4.value._object;
      countAndFlagsBits = v4.value._countAndFlagsBits;
    }

    while (v4.value._object);
  }

  if (String.count.getter() == 1)
  {

    return 0;
  }

  else if (String.count.getter() == 2)
  {

    return 1;
  }

  else
  {
    v6 = String.count.getter();

    return v6;
  }
}

unint64_t specialized Date.FormatStyle.Symbol.SymbolType.CyclicYearOption.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Date.FormatStyle.Symbol.SymbolType.CyclicYearOption.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t specialized Date.FormatStyle.Symbol.SymbolType.QuarterOption.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Date.FormatStyle.Symbol.SymbolType.QuarterOption.init(rawValue:), v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

unint64_t specialized Date.FormatStyle.Symbol.SymbolType.StandaloneQuarterOption.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Date.FormatStyle.Symbol.SymbolType.StandaloneQuarterOption.init(rawValue:), v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

unint64_t specialized Date.FormatStyle.Symbol.SymbolType.MonthOption.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Date.FormatStyle.Symbol.SymbolType.MonthOption.init(rawValue:), v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

unint64_t specialized Date.FormatStyle.Symbol.SymbolType.StandaloneMonthOption.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Date.FormatStyle.Symbol.SymbolType.StandaloneMonthOption.init(rawValue:), v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

unint64_t specialized Date.FormatStyle.Symbol.SymbolType.WeekOption.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Date.FormatStyle.Symbol.SymbolType.WeekOption.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t specialized Date.FormatStyle.Symbol.SymbolType.DayOfYearOption.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Date.FormatStyle.Symbol.SymbolType.DayOfYearOption.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t specialized Date.FormatStyle.Symbol.SymbolType.DayOption.init(rawValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 100 && a2 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  if (a1 == 25700 && a2 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  if (a1 == 70 && a2 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  v7 = String.Iterator.next()();
  object = v7.value._object;
  countAndFlagsBits = v7.value._countAndFlagsBits;
  if (!v7.value._object)
  {
LABEL_20:

    v10 = String.count.getter();

    return v10;
  }

  while (1)
  {
    if (countAndFlagsBits == 103 && object == 0xE100000000000000)
    {

      goto LABEL_16;
    }

    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v8 & 1) == 0)
    {
      break;
    }

LABEL_16:
    v9 = String.Iterator.next()();
    object = v9.value._object;
    countAndFlagsBits = v9.value._countAndFlagsBits;
    if (!v9.value._object)
    {
      goto LABEL_20;
    }
  }

  return 0;
}

unint64_t specialized Date.FormatStyle.Symbol.SymbolType.WeekdayOption.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Date.FormatStyle.Symbol.SymbolType.WeekdayOption.init(rawValue:), v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

unint64_t specialized Date.FormatStyle.Symbol.SymbolType.StandaloneWeekdayOption.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Date.FormatStyle.Symbol.SymbolType.StandaloneWeekdayOption.init(rawValue:), v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

unint64_t specialized Date.FormatStyle.Symbol.SymbolType.DayPeriodOption.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Date.FormatStyle.Symbol.SymbolType.DayPeriodOption.init(rawValue:), v2);

  if (v3 >= 9)
  {
    return 9;
  }

  else
  {
    return v3;
  }
}

unint64_t specialized Date.FormatStyle.Symbol.SymbolType.HourOption.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Date.FormatStyle.Symbol.SymbolType.HourOption.init(rawValue:), v2);

  if (v3 >= 0xE)
  {
    return 14;
  }

  else
  {
    return v3;
  }
}

unint64_t specialized Date.FormatStyle.Symbol.SymbolType.VerbatimHourOption.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Date.FormatStyle.Symbol.SymbolType.VerbatimHourOption.init(rawValue:), v2);

  if (v3 >= 8)
  {
    return 8;
  }

  else
  {
    return v3;
  }
}

uint64_t specialized Date.FormatStyle.Symbol.SymbolType.SecondFractionOption.init(rawValue:)(uint64_t a1, unint64_t a2)
{
  v2 = specialized Collection.first.getter(a1, a2);
  if (v3)
  {
    v4 = v2;
    v5 = v3;

    while (1)
    {
      v7 = String.Iterator.next()();
      if (!v7.value._object)
      {
        break;
      }

      if (v7.value._countAndFlagsBits == v4 && v7.value._object == v5)
      {
      }

      else
      {
        v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v6 & 1) == 0)
        {

          goto LABEL_18;
        }
      }
    }

    if (v4 == 83 && v5 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v8 = String.count.getter();

      return v8;
    }

    if (v4 == 65 && v5 == 0xE100000000000000)
    {

LABEL_17:
      v11 = String.count.getter();

      return v11;
    }

    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v10)
    {
      goto LABEL_17;
    }
  }

LABEL_18:

  return 0;
}

unint64_t specialized Date.FormatStyle.Symbol.SymbolType.TimeZoneSymbolOption.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Date.FormatStyle.Symbol.SymbolType.TimeZoneSymbolOption.init(rawValue:), v2);

  if (v3 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v3;
  }
}

uint64_t static Date.FormatString.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

Swift::Int Date.FormatString.hashValue.getter()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Date.FormatString()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Date.FormatString()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Date.FormatString(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t Date.FormatString.init(stringInterpolation:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];

  *a2 = v3;
  a2[1] = v4;
  return result;
}

uint64_t Date.FormatString.init(stringLiteral:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0xE000000000000000;

  v7 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v7 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v7)
  {

    v10 = String.Iterator.next()();
    object = v10.value._object;
    countAndFlagsBits = v10.value._countAndFlagsBits;
    if (v10.value._object)
    {
      do
      {
        if (countAndFlagsBits == 39 && object == 0xE100000000000000)
        {
        }

        else
        {
          v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v11 & 1) == 0)
          {

            lazy protocol witness table accessor for type String and conformance String();
            lazy protocol witness table accessor for type String and conformance String();
            RangeReplaceableCollection<>.replacing<A, B>(_:with:maxReplacements:)();
            MEMORY[0x1865CB0E0]();

            MEMORY[0x1865CB0E0](39, 0xE100000000000000);

            a1 = 39;
            a2 = 0xE100000000000000;
            goto LABEL_14;
          }
        }

        v12 = String.Iterator.next()();
        object = v12.value._object;
        countAndFlagsBits = v12.value._countAndFlagsBits;
      }

      while (v12.value._object);
    }

    result = String.count.getter();
    if (result + 0x4000000000000000 >= 0)
    {
      v13 = 2 * result;
      v14._countAndFlagsBits = 39;
      v14._object = 0xE100000000000000;
      v15 = String.init(repeating:count:)(v14, v13);
      a1 = v15._countAndFlagsBits;

      a2 = v15._object;
      goto LABEL_14;
    }

    __break(1u);
  }

  else
  {
LABEL_14:
    *a3 = a1;
    a3[1] = a2;
  }

  return result;
}

Swift::Void __swiftcall Date.FormatString.StringInterpolation.appendLiteral(_:)(Swift::String a1)
{
  object = a1._object;
  v2 = HIBYTE(a1._object) & 0xF;
  if ((a1._object & 0x2000000000000000) == 0)
  {
    v2 = a1._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    countAndFlagsBits = a1._countAndFlagsBits;

    v11 = countAndFlagsBits;
    goto LABEL_15;
  }

  v5 = String.Iterator.next()();
  v4 = v5.value._object;
  v3 = v5.value._countAndFlagsBits;
  if (!v5.value._object)
  {
LABEL_11:

    v8 = String.count.getter();
    if (v8 + 0x4000000000000000 >= 0)
    {
      v9 = 2 * v8;
      v10._countAndFlagsBits = 39;
      v10._object = 0xE100000000000000;
      v12 = String.init(repeating:count:)(v10, v9);
      v11 = v12._countAndFlagsBits;
      object = v12._object;
      goto LABEL_15;
    }

    __break(1u);
    return;
  }

  while (1)
  {
    if (v3 == 39 && v4 == 0xE100000000000000)
    {

      goto LABEL_7;
    }

    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v6 & 1) == 0)
    {
      break;
    }

LABEL_7:
    v7 = String.Iterator.next()();
    v4 = v7.value._object;
    v3 = v7.value._countAndFlagsBits;
    if (!v7.value._object)
    {
      goto LABEL_11;
    }
  }

  lazy protocol witness table accessor for type String and conformance String();
  lazy protocol witness table accessor for type String and conformance String();
  RangeReplaceableCollection<>.replacing<A, B>(_:with:maxReplacements:)();
  MEMORY[0x1865CB0E0]();

  MEMORY[0x1865CB0E0](39, 0xE100000000000000);
  v11 = 39;
  object = 0xE100000000000000;
LABEL_15:
  MEMORY[0x1865CB0E0](v11, object);
}

_BYTE *Date.FormatString.StringInterpolation.appendInterpolation(era:)(_BYTE *result)
{
  v1 = *result;
  if (v1 > 1)
  {
    if (v1 != 2)
    {
      return result;
    }

    v3 = 0xE500000000000000;
    v2 = 0x4747474747;
  }

  else
  {
    if (*result)
    {
      v2 = 1195853639;
    }

    else
    {
      v2 = 71;
    }

    if (v1)
    {
      v3 = 0xE400000000000000;
    }

    else
    {
      v3 = 0xE100000000000000;
    }
  }

  MEMORY[0x1865CB0E0](v2, v3);
}

uint64_t Date.FormatString.StringInterpolation.appendInterpolation(year:)(uint64_t result)
{
  v1 = *result;
  v2 = *(result + 8);
  if (v2 <= 1)
  {
    if (*(result + 8))
    {
      if (v1 >= 10)
      {
        v1 = 10;
      }

      if (v1 <= 1)
      {
        v3 = 1;
      }

      else
      {
        v3 = v1;
      }

      v4 = 114;
    }

    else
    {
      if (v1 >= 10)
      {
        v1 = 10;
      }

      if (v1 <= 1)
      {
        v3 = 1;
      }

      else
      {
        v3 = v1;
      }

      v4 = 121;
    }

    goto LABEL_30;
  }

  if (v2 == 2)
  {
    if (v1 >= 10)
    {
      v1 = 10;
    }

    if (v1 <= 1)
    {
      v3 = 1;
    }

    else
    {
      v3 = v1;
    }

    v4 = 117;
LABEL_30:
    v7 = 0xE100000000000000;
    v8 = String.init(repeating:count:)(*&v4, v3);
    countAndFlagsBits = v8._countAndFlagsBits;
    object = v8._object;
    goto LABEL_31;
  }

  if (v2 == 255)
  {
    return result;
  }

  if (v1)
  {
    countAndFlagsBits = 31097;
  }

  else
  {
    countAndFlagsBits = 121;
  }

  if (v1)
  {
    object = 0xE200000000000000;
  }

  else
  {
    object = 0xE100000000000000;
  }

LABEL_31:
  MEMORY[0x1865CB0E0](countAndFlagsBits, object);
}

uint64_t Date.FormatString.StringInterpolation.appendInterpolation(yearForWeekOfYear:)(uint64_t result)
{
  if ((*(result + 9) & 1) == 0)
  {
    v1 = *result;
    if (*(result + 8))
    {
      if (v1)
      {
        countAndFlagsBits = 22873;
      }

      else
      {
        countAndFlagsBits = 89;
      }

      if (v1)
      {
        object = 0xE200000000000000;
      }

      else
      {
        object = 0xE100000000000000;
      }
    }

    else
    {
      if (v1 >= 10)
      {
        v1 = 10;
      }

      if (v1 <= 1)
      {
        v4 = 1;
      }

      else
      {
        v4 = v1;
      }

      v5._countAndFlagsBits = 89;
      v5._object = 0xE100000000000000;
      v6 = String.init(repeating:count:)(v5, v4);
      countAndFlagsBits = v6._countAndFlagsBits;
      object = v6._object;
    }

    MEMORY[0x1865CB0E0](countAndFlagsBits, object);
  }

  return result;
}

_BYTE *Date.FormatString.StringInterpolation.appendInterpolation(cyclicYear:)(_BYTE *result)
{
  v1 = *result;
  if (v1 > 1)
  {
    if (v1 != 2)
    {
      return result;
    }

    v3 = 0xE500000000000000;
    v2 = 0x5555555555;
  }

  else
  {
    if (*result)
    {
      v2 = 1431655765;
    }

    else
    {
      v2 = 85;
    }

    if (v1)
    {
      v3 = 0xE400000000000000;
    }

    else
    {
      v3 = 0xE100000000000000;
    }
  }

  MEMORY[0x1865CB0E0](v2, v3);
}

_BYTE *Date.FormatString.StringInterpolation.appendInterpolation(quarter:)(_BYTE *result)
{
  v1 = *result;
  if (v1 > 2)
  {
    if (v1 == 3)
    {
      v5 = 0xE400000000000000;
      v4 = 1364283729;
    }

    else
    {
      if (v1 != 4)
      {
        return result;
      }

      v5 = 0xE500000000000000;
      v4 = 0x5151515151;
    }
  }

  else
  {
    v2 = 0xE200000000000000;
    v3 = 20817;
    if (v1 != 1)
    {
      v3 = 5329233;
      v2 = 0xE300000000000000;
    }

    if (*result)
    {
      v4 = v3;
    }

    else
    {
      v4 = 81;
    }

    if (v1)
    {
      v5 = v2;
    }

    else
    {
      v5 = 0xE100000000000000;
    }
  }

  MEMORY[0x1865CB0E0](v4, v5);
}

uint64_t Date.FormatString.StringInterpolation.appendInterpolation(standaloneQuarter:)(_BYTE *a1)
{
  v1 = *a1;
  v2 = 0xE100000000000000;
  v3 = 113;
  v4 = 0xE300000000000000;
  v5 = 7434609;
  v6 = 0xE400000000000000;
  v7 = 1903260017;
  if (v1 != 3)
  {
    v7 = 0x7171717171;
    v6 = 0xE500000000000000;
  }

  if (v1 != 2)
  {
    v5 = v7;
    v4 = v6;
  }

  if (*a1)
  {
    v3 = 29041;
    v2 = 0xE200000000000000;
  }

  if (*a1 <= 1u)
  {
    v8 = v3;
  }

  else
  {
    v8 = v5;
  }

  if (v1 <= 1)
  {
    v9 = v2;
  }

  else
  {
    v9 = v4;
  }

  MEMORY[0x1865CB0E0](v8, v9);
}

_BYTE *Date.FormatString.StringInterpolation.appendInterpolation(month:)(_BYTE *result)
{
  v1 = *result;
  if (v1 > 2)
  {
    if (v1 == 3)
    {
      v5 = 0xE400000000000000;
      v4 = 1296911693;
    }

    else
    {
      if (v1 != 4)
      {
        return result;
      }

      v5 = 0xE500000000000000;
      v4 = 0x4D4D4D4D4DLL;
    }
  }

  else
  {
    v2 = 0xE200000000000000;
    v3 = 19789;
    if (v1 != 1)
    {
      v3 = 5066061;
      v2 = 0xE300000000000000;
    }

    if (*result)
    {
      v4 = v3;
    }

    else
    {
      v4 = 77;
    }

    if (v1)
    {
      v5 = v2;
    }

    else
    {
      v5 = 0xE100000000000000;
    }
  }

  MEMORY[0x1865CB0E0](v4, v5);
}

uint64_t Date.FormatString.StringInterpolation.appendInterpolation(standaloneMonth:)(_BYTE *a1)
{
  v1 = *a1;
  v2 = 0xE100000000000000;
  v3 = 76;
  v4 = 0xE300000000000000;
  v5 = 5000268;
  v6 = 0xE400000000000000;
  v7 = 1280068684;
  if (v1 != 3)
  {
    v7 = 0x4C4C4C4C4CLL;
    v6 = 0xE500000000000000;
  }

  if (v1 != 2)
  {
    v5 = v7;
    v4 = v6;
  }

  if (*a1)
  {
    v3 = 19532;
    v2 = 0xE200000000000000;
  }

  if (*a1 <= 1u)
  {
    v8 = v3;
  }

  else
  {
    v8 = v5;
  }

  if (v1 <= 1)
  {
    v9 = v2;
  }

  else
  {
    v9 = v4;
  }

  MEMORY[0x1865CB0E0](v8, v9);
}

_BYTE *Date.FormatString.StringInterpolation.appendInterpolation(week:)(_BYTE *result)
{
  v1 = *result;
  if (v1 > 1)
  {
    if (v1 != 2)
    {
      return result;
    }

    v3 = 0xE100000000000000;
    v2 = 87;
  }

  else
  {
    if (*result)
    {
      v2 = 30583;
    }

    else
    {
      v2 = 119;
    }

    if (v1)
    {
      v3 = 0xE200000000000000;
    }

    else
    {
      v3 = 0xE100000000000000;
    }
  }

  MEMORY[0x1865CB0E0](v2, v3);
}

uint64_t Date.FormatString.StringInterpolation.appendInterpolation(day:)(uint64_t result)
{
  if ((*(result + 9) & 1) == 0)
  {
    v1 = *result;
    if (*(result + 8))
    {
      v2 = 0xE200000000000000;
      v3 = 25700;
      if (v1 != 1)
      {
        v3 = 70;
        v2 = 0xE100000000000000;
      }

      if (v1)
      {
        countAndFlagsBits = v3;
      }

      else
      {
        countAndFlagsBits = 100;
      }

      if (v1)
      {
        object = v2;
      }

      else
      {
        object = 0xE100000000000000;
      }
    }

    else
    {
      if (v1 >= 10)
      {
        v1 = 10;
      }

      if (v1 <= 1)
      {
        v6 = 1;
      }

      else
      {
        v6 = v1;
      }

      v7._countAndFlagsBits = 103;
      v7._object = 0xE100000000000000;
      v8 = String.init(repeating:count:)(v7, v6);
      countAndFlagsBits = v8._countAndFlagsBits;
      object = v8._object;
    }

    MEMORY[0x1865CB0E0](countAndFlagsBits, object);
  }

  return result;
}

_BYTE *Date.FormatString.StringInterpolation.appendInterpolation(dayOfYear:)(_BYTE *result)
{
  v1 = *result;
  if (v1 > 1)
  {
    if (v1 != 2)
    {
      return result;
    }

    v3 = 0xE300000000000000;
    v2 = 4473924;
  }

  else
  {
    if (*result)
    {
      v2 = 17476;
    }

    else
    {
      v2 = 68;
    }

    if (v1)
    {
      v3 = 0xE200000000000000;
    }

    else
    {
      v3 = 0xE100000000000000;
    }
  }

  MEMORY[0x1865CB0E0](v2, v3);
}

_BYTE *Date.FormatString.StringInterpolation.appendInterpolation(weekday:)(_BYTE *result)
{
  v1 = *result;
  if (v1 <= 2)
  {
    v4 = 0xE400000000000000;
    v5 = 1162167621;
    if (v1 != 1)
    {
      v5 = 0x4545454545;
      v4 = 0xE500000000000000;
    }

    if (*result)
    {
      v2 = v5;
    }

    else
    {
      v2 = 4539717;
    }

    if (v1)
    {
      v3 = v4;
    }

    else
    {
      v3 = 0xE300000000000000;
    }
  }

  else if (*result > 4u)
  {
    if (v1 != 5)
    {
      return result;
    }

    v3 = 0xE200000000000000;
    v2 = 25957;
  }

  else
  {
    if (v1 == 3)
    {
      v2 = 0x454545454545;
    }

    else
    {
      v2 = 101;
    }

    if (v1 == 3)
    {
      v3 = 0xE600000000000000;
    }

    else
    {
      v3 = 0xE100000000000000;
    }
  }

  MEMORY[0x1865CB0E0](v2, v3);
}

uint64_t Date.FormatString.StringInterpolation.appendInterpolation(standaloneWeekday:)(_BYTE *a1)
{
  v1 = *a1;
  v2 = 0xE100000000000000;
  v3 = 99;
  v4 = 0xE400000000000000;
  v5 = 1667457891;
  v6 = 0xE500000000000000;
  v7 = 0x6363636363;
  if (v1 != 3)
  {
    v7 = 0x636363636363;
    v6 = 0xE600000000000000;
  }

  if (v1 != 2)
  {
    v5 = v7;
    v4 = v6;
  }

  if (*a1)
  {
    v3 = 6513507;
    v2 = 0xE300000000000000;
  }

  if (*a1 <= 1u)
  {
    v8 = v3;
  }

  else
  {
    v8 = v5;
  }

  if (v1 <= 1)
  {
    v9 = v2;
  }

  else
  {
    v9 = v4;
  }

  MEMORY[0x1865CB0E0](v8, v9);
}

_BYTE *Date.FormatString.StringInterpolation.appendInterpolation(dayPeriod:)(_BYTE *result)
{
  v1 = *result;
  if (v1 > 4)
  {
    if (*result <= 6u)
    {
      if (v1 == 5)
      {
        v8 = 0x6262626262;
      }

      else
      {
        v8 = 66;
      }

      if (v1 == 5)
      {
        v9 = 0xE500000000000000;
      }

      else
      {
        v9 = 0xE100000000000000;
      }
    }

    else if (v1 == 7)
    {
      v9 = 0xE400000000000000;
      v8 = 1111638594;
    }

    else
    {
      if (v1 != 8)
      {
        return result;
      }

      v9 = 0xE500000000000000;
      v8 = 0x4242424242;
    }
  }

  else
  {
    v2 = 0xE100000000000000;
    v3 = 97;
    v4 = 0xE500000000000000;
    v5 = 0x6161616161;
    v6 = 0xE100000000000000;
    v7 = 98;
    if (v1 != 3)
    {
      v7 = 1650614882;
      v6 = 0xE400000000000000;
    }

    if (v1 != 2)
    {
      v5 = v7;
      v4 = v6;
    }

    if (*result)
    {
      v3 = 1633771873;
      v2 = 0xE400000000000000;
    }

    if (*result <= 1u)
    {
      v8 = v3;
    }

    else
    {
      v8 = v5;
    }

    if (v1 <= 1)
    {
      v9 = v2;
    }

    else
    {
      v9 = v4;
    }
  }

  MEMORY[0x1865CB0E0](v8, v9);
}

uint64_t Date.FormatString.StringInterpolation.appendInterpolation(hour:)(_BYTE *a1)
{
  v1 = *a1;
  v2 = 0xE100000000000000;
  v3 = 104;
  v4 = 0xE100000000000000;
  v5 = 107;
  if (v1 != 6)
  {
    v5 = 27499;
    v4 = 0xE200000000000000;
  }

  v6 = 0xE100000000000000;
  v7 = 75;
  if (v1 != 4)
  {
    v7 = 19275;
    v6 = 0xE200000000000000;
  }

  if (*a1 <= 5u)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xE100000000000000;
  v9 = 72;
  if (v1 != 2)
  {
    v9 = 18504;
    v8 = 0xE200000000000000;
  }

  if (*a1)
  {
    v3 = 26728;
    v2 = 0xE200000000000000;
  }

  if (*a1 > 1u)
  {
    v3 = v9;
    v2 = v8;
  }

  if (*a1 <= 3u)
  {
    v10 = v3;
  }

  else
  {
    v10 = v5;
  }

  if (v1 <= 3)
  {
    v11 = v2;
  }

  else
  {
    v11 = v4;
  }

  MEMORY[0x1865CB0E0](v10, v11);
}

unsigned __int8 *Date.FormatString.StringInterpolation.appendInterpolation(minute:)(unsigned __int8 *result)
{
  v1 = *result;
  if (v1 != 2)
  {
    if (v1)
    {
      v2 = 28013;
    }

    else
    {
      v2 = 109;
    }

    if (v1)
    {
      v3 = 0xE200000000000000;
    }

    else
    {
      v3 = 0xE100000000000000;
    }

    MEMORY[0x1865CB0E0](v2, v3);
  }

  return result;
}

unsigned __int8 *Date.FormatString.StringInterpolation.appendInterpolation(second:)(unsigned __int8 *result)
{
  v1 = *result;
  if (v1 != 2)
  {
    if (v1)
    {
      v2 = 29555;
    }

    else
    {
      v2 = 115;
    }

    if (v1)
    {
      v3 = 0xE200000000000000;
    }

    else
    {
      v3 = 0xE100000000000000;
    }

    MEMORY[0x1865CB0E0](v2, v3);
  }

  return result;
}

uint64_t Date.FormatString.StringInterpolation.appendInterpolation(secondFraction:)(uint64_t result)
{
  v1 = *(result + 8);
  if (v1 != 255)
  {
    v2 = Date.FormatStyle.Symbol.SymbolType.SecondFractionOption.rawValue.getter(*result, v1 & 1);
    MEMORY[0x1865CB0E0](v2);
  }

  return result;
}

uint64_t Date.FormatString.StringInterpolation.appendInterpolation(timeZone:)(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = 0xE100000000000000;
  result = 122;
  switch(v1)
  {
    case 1:
      v2 = 0xE400000000000000;
      result = 2054847098;
      goto LABEL_13;
    case 2:
      result = 90;
      goto LABEL_13;
    case 3:
      v2 = 0xE400000000000000;
      result = 1515870810;
      goto LABEL_13;
    case 4:
      v2 = 0xE500000000000000;
      result = 0x5A5A5A5A5ALL;
      goto LABEL_13;
    case 5:
      result = 79;
      goto LABEL_13;
    case 6:
      result = 118;
      goto LABEL_13;
    case 7:
      v2 = 0xE400000000000000;
      result = 1987475062;
      goto LABEL_13;
    case 8:
      result = 86;
      goto LABEL_13;
    case 9:
      v2 = 0xE200000000000000;
      result = 22102;
      goto LABEL_13;
    case 10:
      v2 = 0xE300000000000000;
      result = 5658198;
      goto LABEL_13;
    case 11:
      v2 = 0xE400000000000000;
      result = 1448498774;
      goto LABEL_13;
    case 12:
      return result;
    default:
LABEL_13:
      MEMORY[0x1865CB0E0](result, v2);
  }
}

unint64_t lazy protocol witness table accessor for type Date.FormatString and conformance Date.FormatString()
{
  result = lazy protocol witness table cache variable for type Date.FormatString and conformance Date.FormatString;
  if (!lazy protocol witness table cache variable for type Date.FormatString and conformance Date.FormatString)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatString and conformance Date.FormatString);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.FormatString and conformance Date.FormatString;
  if (!lazy protocol witness table cache variable for type Date.FormatString and conformance Date.FormatString)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatString and conformance Date.FormatString);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.FormatString and conformance Date.FormatString;
  if (!lazy protocol witness table cache variable for type Date.FormatString and conformance Date.FormatString)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatString and conformance Date.FormatString);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date.FormatString and conformance Date.FormatString;
  if (!lazy protocol witness table cache variable for type Date.FormatString and conformance Date.FormatString)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatString and conformance Date.FormatString);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Date.FormatString.StringInterpolation and conformance Date.FormatString.StringInterpolation()
{
  result = lazy protocol witness table cache variable for type Date.FormatString.StringInterpolation and conformance Date.FormatString.StringInterpolation;
  if (!lazy protocol witness table cache variable for type Date.FormatString.StringInterpolation and conformance Date.FormatString.StringInterpolation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date.FormatString.StringInterpolation and conformance Date.FormatString.StringInterpolation);
  }

  return result;
}

uint64_t protocol witness for ExpressibleByStringInterpolation.init(stringInterpolation:) in conformance Date.FormatString@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];

  *a2 = v3;
  a2[1] = v4;
  return result;
}

uint64_t protocol witness for ExpressibleByExtendedGraphemeClusterLiteral.init(extendedGraphemeClusterLiteral:) in conformance Date.FormatString@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  *a2 = 0;
  a2[1] = 0xE000000000000000;

  v6 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v6 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {

    v9 = String.Iterator.next()();
    object = v9.value._object;
    countAndFlagsBits = v9.value._countAndFlagsBits;
    if (v9.value._object)
    {
      do
      {
        if (countAndFlagsBits == 39 && object == 0xE100000000000000)
        {
        }

        else
        {
          v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v10 & 1) == 0)
          {

            lazy protocol witness table accessor for type String and conformance String();
            lazy protocol witness table accessor for type String and conformance String();
            RangeReplaceableCollection<>.replacing<A, B>(_:with:maxReplacements:)();
            MEMORY[0x1865CB0E0]();

            MEMORY[0x1865CB0E0](39, 0xE100000000000000);

            v4 = 39;
            v3 = 0xE100000000000000;
            goto LABEL_14;
          }
        }

        v11 = String.Iterator.next()();
        object = v11.value._object;
        countAndFlagsBits = v11.value._countAndFlagsBits;
      }

      while (v11.value._object);
    }

    result = String.count.getter();
    if (result + 0x4000000000000000 >= 0)
    {
      v12 = 2 * result;
      v13._countAndFlagsBits = 39;
      v13._object = 0xE100000000000000;
      v14 = String.init(repeating:count:)(v13, v12);
      v4 = v14._countAndFlagsBits;

      v3 = v14._object;
      goto LABEL_14;
    }

    __break(1u);
  }

  else
  {
LABEL_14:
    *a2 = v4;
    a2[1] = v3;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Date.FormatString(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for Date.FormatString(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

__n128 Date.FormatStyle.locale(_:)@<Q0>(__n128 *a1@<X0>, _OWORD *a2@<X8>)
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

__n128 Date.FormatStyle.DateFieldCollection.collection(time:)@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (*a1 == 3)
  {
    v7 = 0;
    v4 = 0;
    goto LABEL_7;
  }

  v4 = *(v2 + 49);
  if (v3 == 2)
  {
    v7 = 0;
LABEL_7:
    v6 = 1;
    v5 = 1;
    goto LABEL_9;
  }

  v5 = *(v2 + 39);
  if (v3)
  {
    v7 = 0;
    v6 = 1;
  }

  else
  {
    v6 = *(v2 + 38);
    v7 = *(v2 + 37);
  }

LABEL_9:
  *v11 = *(v2 + 16);
  *&v11[13] = *(v2 + 29);
  v9 = *(v2 + 40);
  v10 = *(v2 + 48);
  result = *v11;
  *a2 = *v2;
  *(a2 + 16) = *v11;
  *(a2 + 29) = *&v11[13];
  *(a2 + 37) = v7;
  *(a2 + 38) = v6;
  *(a2 + 39) = v5;
  *(a2 + 48) = v10;
  *(a2 + 40) = v9;
  *(a2 + 49) = v4;
  return result;
}

double static Calendar.nextAccuracyStep(for:direction:)@<D0>(double *a1@<X0>, _BYTE *a2@<X1>, double *a3@<X8>)
{
  v3 = *a1;
  v4 = 0.0 - *a1;
  if (v4 != INFINITY)
  {
    *&v4 += (*&v4 >> 63) | 1;
  }

  v5 = (v3 + 978307200.0) * -1000.0;
  v6 = v5 + 0.0;
  if (v5 != INFINITY)
  {
    *&v6 += (*&v6 >> 63) | 1;
  }

  v7 = (fabs(v3 + v4) + vabdd_f64(v3, v6 / -1000.0 + -978307200.0)) * 9.0;
  v8 = -v7;
  if (!*a2)
  {
    v8 = v7;
  }

  result = v3 + v8;
  *a3 = result;
  return result;
}

uint64_t Calendar.bound(for:isLower:updateSchedule:)@<X0>(double *a1@<X0>, unsigned __int8 a2@<W1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  v8 = *a3;
  v9 = *(a3 + 8);
  v10 = *v4;
  v11 = v4[1];
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
  __src[32] = 0;
  LOBYTE(__src[33]) = 1;
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
  __src[30] = 0;
  LOBYTE(__src[31]) = 1;
  __src[32] = 0;
  LOBYTE(__src[33]) = 1;
  __src[34] = 0;
  LOBYTE(__src[35]) = 1;
  __src[12] = 0;
  LOBYTE(__src[13]) = 1;
  memcpy(__dst, __src, 0x11BuLL);
  ObjectType = swift_getObjectType();
  memcpy(v33, __src, 0x11BuLL);
  (*(v11 + 176))(&v36, v33, ObjectType, v11);
  outlined destroy of DateComponents(__dst);
  if (v37 == 1)
  {
    v13 = -978307200.0;
    if ((a2 & 1) == 0)
    {
LABEL_3:
      v14 = v7 < v13;
      goto LABEL_6;
    }
  }

  else
  {
    v13 = v36;
    if ((a2 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  v14 = v13 < v7;
LABEL_6:
  v15 = v14;
  v33[0] = v8;
  LOBYTE(v33[1]) = v9;
  ICUDateFormatter.DateFormatInfo.UpdateSchedule.updateIntervals.getter();
  v18 = *(v16 + 16);
  if (!v18)
  {

LABEL_28:
    time = 0.0;
    v26 = 2;
    goto LABEL_29;
  }

  v27 = v15;
  time = 0.0;
  v20 = (v16 + 40);
  v21 = 1;
  do
  {
    v22 = *(v20 - 8);
    *(&v23 + 1) = *v20;
    v33[0] = v10;
    v33[1] = v11;
    v30 = v7;
    v29 = a2 & 1;
    v28 = v22;
    *&v23 = &v29;
    Calendar.advance(_:_:by:_:)(&v30, v23, &v28, &v31, v17);
    if (v32)
    {
      v24 = time;
    }

    else
    {
      v24 = v31;
    }

    if (v32)
    {
      time = v24;
      v21 &= v32;
    }

    else
    {
      v17._time = v31;
      if (((time < v31) ^ a2))
      {
        v17._time = time;
      }

      if (v21)
      {
        time = v24;
      }

      else
      {
        time = v17._time;
      }

      if (v21)
      {
        v21 &= v32;
      }

      else
      {
        v21 = 0;
      }
    }

    v20 += 2;
    --v18;
  }

  while (v18);

  if (v21)
  {
    goto LABEL_28;
  }

  v26 = (v7 == time) | v27 & 1;
LABEL_29:
  *a4 = time;
  *(a4 + 8) = v26;
  return result;
}

uint64_t Date.FormatStyle.DateFieldCollection.CodingKeys.stringValue.getter(char a1)
{
  result = 6386277;
  switch(a1)
  {
    case 1:
      result = 1918985593;
      break;
    case 2:
      result = 0x72657472617571;
      break;
    case 3:
      result = 0x68746E6F6DLL;
      break;
    case 4:
      result = 1801807223;
      break;
    case 5:
      result = 7954788;
      break;
    case 6:
      result = 0x616559664F796164;
      break;
    case 7:
      result = 0x7961646B656577;
      break;
    case 8:
      result = 0x6F69726550796164;
      break;
    case 9:
      result = 1920298856;
      break;
    case 10:
      result = 0x6574756E696DLL;
      break;
    case 11:
      result = 0x646E6F636573;
      break;
    case 12:
      result = 0x7246646E6F636573;
      break;
    case 13:
      result = 0x656E6F5A656D6974;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t Date.FormatStyle.DateFieldCollection.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation4DateV11FormatStyleV0E15FieldCollectionV10CodingKeys33_83F1B432FCCCE88C2D9349A2B9C9BC3DLLOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Date.FormatStyle.DateFieldCollection.CodingKeys and conformance Date.FormatStyle.DateFieldCollection.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v10) = *v3;
  v12 = 0;
  lazy protocol witness table accessor for type Date.FormatStyle.Symbol.SymbolType.EraOption and conformance Date.FormatStyle.Symbol.SymbolType.EraOption();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v2)
  {
    v10 = *(v3 + 8);
    LOBYTE(v11) = *(v3 + 16);
    v12 = 1;
    lazy protocol witness table accessor for type Date.FormatStyle.Symbol.SymbolType.YearOption and conformance Date.FormatStyle.Symbol.SymbolType.YearOption();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v10) = *(v3 + 17);
    v12 = 2;
    lazy protocol witness table accessor for type Date.FormatStyle.Symbol.SymbolType.QuarterOption and conformance Date.FormatStyle.Symbol.SymbolType.QuarterOption();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v10) = *(v3 + 18);
    v12 = 3;
    lazy protocol witness table accessor for type Date.FormatStyle.Symbol.SymbolType.MonthOption and conformance Date.FormatStyle.Symbol.SymbolType.MonthOption();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v10) = *(v3 + 19);
    v12 = 4;
    lazy protocol witness table accessor for type Date.FormatStyle.Symbol.SymbolType.WeekOption and conformance Date.FormatStyle.Symbol.SymbolType.WeekOption();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v10 = *(v3 + 24);
    v11 = *(v3 + 32);
    v12 = 5;
    lazy protocol witness table accessor for type Date.FormatStyle.Symbol.SymbolType.DayOption and conformance Date.FormatStyle.Symbol.SymbolType.DayOption();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v10) = *(v3 + 34);
    v12 = 6;
    lazy protocol witness table accessor for type Date.FormatStyle.Symbol.SymbolType.DayOfYearOption and conformance Date.FormatStyle.Symbol.SymbolType.DayOfYearOption();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v10) = *(v3 + 35);
    v12 = 7;
    lazy protocol witness table accessor for type Date.FormatStyle.Symbol.SymbolType.WeekdayOption and conformance Date.FormatStyle.Symbol.SymbolType.WeekdayOption();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v10) = *(v3 + 36);
    v12 = 8;
    lazy protocol witness table accessor for type Date.FormatStyle.Symbol.SymbolType.DayPeriodOption and conformance Date.FormatStyle.Symbol.SymbolType.DayPeriodOption();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v10) = *(v3 + 37);
    v12 = 9;
    lazy protocol witness table accessor for type Date.FormatStyle.Symbol.SymbolType.HourOption and conformance Date.FormatStyle.Symbol.SymbolType.HourOption();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v10) = *(v3 + 38);
    v12 = 10;
    lazy protocol witness table accessor for type Date.FormatStyle.Symbol.SymbolType.MinuteOption and conformance Date.FormatStyle.Symbol.SymbolType.MinuteOption();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v10) = *(v3 + 39);
    v12 = 11;
    lazy protocol witness table accessor for type Date.FormatStyle.Symbol.SymbolType.SecondOption and conformance Date.FormatStyle.Symbol.SymbolType.SecondOption();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v10 = *(v3 + 40);
    LOBYTE(v11) = *(v3 + 48);
    v12 = 12;
    lazy protocol witness table accessor for type Date.FormatStyle.Symbol.SymbolType.SecondFractionOption and conformance Date.FormatStyle.Symbol.SymbolType.SecondFractionOption();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v10) = *(v3 + 49);
    v12 = 13;
    lazy protocol witness table accessor for type Date.FormatStyle.Symbol.SymbolType.TimeZoneSymbolOption and conformance Date.FormatStyle.Symbol.SymbolType.TimeZoneSymbolOption();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

void Date.FormatStyle.DateFieldCollection.hash(into:)(uint64_t a1)
{
  v2 = v1;
  if (*v2 == 3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  v4 = *(v2 + 16);
  if (v4 == 255)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v5 = *(v2 + 8);
    Hasher._combine(_:)(1u);
    Date.FormatStyle.Symbol.SymbolType.YearOption.rawValue.getter(v5, v4);
    String.hash(into:)();
  }

  v6 = *(v2 + 17);
  if (v6 == 5)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  v7 = *(v2 + 18);
  if (v7 == 5)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  if (*(v2 + 19) != 3)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();

    if ((*(v2 + 33) & 1) == 0)
    {
      goto LABEL_15;
    }

LABEL_18:
    Hasher._combine(_:)(0);
    goto LABEL_26;
  }

  Hasher._combine(_:)(0);
  if (*(v2 + 33))
  {
    goto LABEL_18;
  }

LABEL_15:
  v8 = *(v2 + 24);
  v9 = *(v2 + 32);
  Hasher._combine(_:)(1u);
  if ((v9 & 1) == 0)
  {
    v10 = 10;
    if (v8 < 10)
    {
      v10 = v8;
    }

    if (v10 <= 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = v10;
    }

    v12._countAndFlagsBits = 103;
    v12._object = 0xE100000000000000;
    String.init(repeating:count:)(v12, v11);
  }

  String.hash(into:)();

LABEL_26:
  if (*(v2 + 34) == 3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  v13 = *(v2 + 35);
  if (v13 == 6)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  if (*(v2 + 36) == 9)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    specialized RawRepresentable<>.hash(into:)();
  }

  v14 = *(v2 + 37);
  if (v14 == 14)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Date.FormatStyle.Symbol.SymbolType.HourOption.rawValue.getter(v14);
    String.hash(into:)();
  }

  if (*(v2 + 38) == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  if (*(v2 + 39) == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  v15 = *(v2 + 48);
  if (v15 == 255)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v16 = *(v2 + 40);
    Hasher._combine(_:)(1u);
    specialized RawRepresentable<>.hash(into:)(a1, v16, v15 & 1);
  }

  v17 = *(v2 + 49);
  if (v17 == 12)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Date.FormatStyle.Symbol.SymbolType.TimeZoneSymbolOption.rawValue.getter(v17);
    String.hash(into:)();
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Date.FormatStyle.DateFieldCollection.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized Date.FormatStyle.DateFieldCollection.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Date.FormatStyle.DateFieldCollection.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Date.FormatStyle.DateFieldCollection.CodingKeys and conformance Date.FormatStyle.DateFieldCollection.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Date.FormatStyle.DateFieldCollection.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Date.FormatStyle.DateFieldCollection.CodingKeys and conformance Date.FormatStyle.DateFieldCollection.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double protocol witness for Decodable.init(from:) in conformance Date.FormatStyle.DateFieldCollection@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  specialized Date.FormatStyle.DateFieldCollection.init(from:)(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Date.FormatStyle.DateFieldCollection()
{
  Hasher.init(_seed:)();
  Date.FormatStyle.DateFieldCollection.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Date.FormatStyle.DateFieldCollection()
{
  Hasher.init(_seed:)();
  Date.FormatStyle.DateFieldCollection.hash(into:)(v1);
  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance Date.FormatStyle.DateFieldCollection(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return specialized static Date.FormatStyle.DateFieldCollection.== infix(_:_:)(v5, v7);
}

__n128 Date.FormatStyle.locale.setter(__n128 *a1)
{
  swift_unknownObjectRelease();
  result = *a1;
  *(v1 + 72) = *a1;
  return result;
}

uint64_t Date.FormatStyle.attributed.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1[5];
  v15 = v1[4];
  v16 = v3;
  v17[0] = v1[6];
  v4 = v17[0];
  *(v17 + 10) = *(v1 + 106);
  v5 = v1[1];
  v12[0] = *v1;
  v12[1] = v5;
  v6 = v1[3];
  v13 = v1[2];
  v14 = v6;
  *(v24 + 10) = *(v17 + 10);
  v23 = v3;
  v24[0] = v4;
  v21 = v6;
  v22 = v15;
  v19 = v5;
  v20 = v13;
  v18 = v12[0];
  _sSS10FoundationE17LocalizationValueV14FormatArgumentV04DateeD5StyleV0D033_52A34860FC1D9F87FB0A99C608112EB3LLOWOi_(&v18);
  v7 = v23;
  a1[4] = v22;
  a1[5] = v7;
  a1[6] = v24[0];
  *(a1 + 106) = *(v24 + 10);
  v8 = v19;
  *a1 = v18;
  a1[1] = v8;
  v9 = v21;
  a1[2] = v20;
  a1[3] = v9;
  return outlined init with copy of Date.FormatStyle(v12, &v11);
}

uint64_t Date.AttributedStyle.InnerStyle.encode(to:)(void *a1)
{
  v2 = v1;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation33DefaultAssociatedValueCodingKeys1OGMd);
  v33 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v32 - v7;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation4DateV15AttributedStyleV05InnerG0O10CodingKeys33_83F1B432FCCCE88C2D9349A2B9C9BC3DLLOGMd);
  v9 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v11 = &v32 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Date.AttributedStyle.InnerStyle.CodingKeys and conformance Date.AttributedStyle.InnerStyle.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = v2[5];
  v42[4] = v2[4];
  v42[5] = v12;
  v43[0] = v2[6];
  *(v43 + 10) = *(v2 + 106);
  v13 = v2[1];
  v42[0] = *v2;
  v42[1] = v13;
  v14 = v2[3];
  v42[2] = v2[2];
  v42[3] = v14;
  LODWORD(a1) = _s10Foundation4DateV15AttributedStyleV05InnerD0OWOg(v42);
  v15 = (v33 + 8);
  v16 = (v9 + 8);
  v17 = destructiveProjectEnumData for Date.AttributedStyle.InnerStyle(v42);
  if (a1 == 1)
  {
    LOBYTE(v35) = 1;
    lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();
    v18 = v34;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v19 = *v17;
    v20 = v17[1];
    v21 = v17[3];
    v37 = v17[2];
    v38 = v21;
    v35 = v19;
    v36 = v20;
    lazy protocol witness table accessor for type Date.VerbatimFormatStyle and conformance Date.VerbatimFormatStyle();
    v22 = v44;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*v15)(v5, v22);
    return (*v16)(v11, v18);
  }

  else
  {
    LOBYTE(v35) = 0;
    lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();
    v24 = v34;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v25 = *v17;
    v26 = v17[1];
    v27 = v17[3];
    v37 = v17[2];
    v38 = v27;
    v35 = v25;
    v36 = v26;
    v28 = v17[4];
    v29 = v17[5];
    v30 = v17[6];
    *(v41 + 10) = *(v17 + 106);
    v40 = v29;
    v41[0] = v30;
    v39 = v28;
    lazy protocol witness table accessor for type Date.FormatStyle and conformance Date.FormatStyle();
    v31 = v44;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*v15)(v8, v31);
    return (*v16)(v11, v24);
  }
}

void Date.AttributedStyle.InnerStyle.hash(into:)(Swift::Int a1)
{
  v3 = v1[5];
  v118[4] = v1[4];
  v118[5] = v3;
  v119[0] = v1[6];
  *(v119 + 10) = *(v1 + 106);
  v4 = v1[1];
  v118[0] = *v1;
  v118[1] = v4;
  v5 = v1[3];
  v118[2] = v1[2];
  v118[3] = v5;
  v6 = _s10Foundation4DateV15AttributedStyleV05InnerD0OWOg(v118);
  v7 = destructiveProjectEnumData for Date.AttributedStyle.InnerStyle(v118);
  v8 = v7;
  if (v6 == 1)
  {
    v9 = v7[1];
    v10 = v7[3];
    v12 = v7[4];
    v11 = v7[5];
    MEMORY[0x1865CD060](1);
    ObjectType = swift_getObjectType();
    (*(v9 + 120))(a1, ObjectType, v9);
    v14 = swift_getObjectType();
    (*(v10 + 120))(a1, v14, v10);
    if (!v12)
    {
      goto LABEL_14;
    }

    Hasher._combine(_:)(1u);
    v15 = swift_getObjectType();
    if ((*(v11 + 48))(v15, v11))
    {
      v16 = 1;
LABEL_15:
      Hasher._combine(_:)(v16);
LABEL_16:
      String.hash(into:)();
      return;
    }

    Hasher._combine(_:)(0);
    (*(v11 + 64))(v15, v11);
    String.hash(into:)();

    (*(v11 + 464))(&v101, v15, v11);
    v115 = v107;
    v116[0] = *v108;
    *(v116 + 12) = *&v108[12];
    v111 = v103;
    v112 = v104;
    v113 = v105;
    v114 = v106;
    v109 = v101;
    v110 = v102;
    if (_s10Foundation17LocalePreferencesVSgWOg(&v109) == 1)
    {
LABEL_14:
      v16 = 0;
      goto LABEL_15;
    }

    v32 = v101;
    v33 = *(&v101 + 1);
    v34 = *(&v102 + 1);
    v35 = *(&v103 + 1);
    v36 = *(&v104 + 1);
    v87 = v104;
    v88 = v105;
    v37 = v106;
    v92 = v107;
    v38 = *v108;
    v93 = *&v108[16];
    v39 = v108[24];
    v97 = v108[25];
    v40 = v108[26];
    v99 = v108[27];
    Hasher._combine(_:)(1u);
    if (v32 == 2)
    {
      v41 = 0;
    }

    else
    {
      Hasher._combine(_:)(1u);
      v41 = v32 & 1;
    }

    v95 = v39;
    Hasher._combine(_:)(v41);
    if (v33)
    {
      Hasher._combine(_:)(1u);
      MEMORY[0x1865CD060](*(v33 + 16));
      v67 = *(v33 + 16);
      if (v67)
      {
        v68 = v33 + 40;
        do
        {

          String.hash(into:)();

          v68 += 16;
          --v67;
        }

        while (v67);
      }

      if (v34)
      {
        goto LABEL_74;
      }
    }

    else
    {
      Hasher._combine(_:)(0);
      if (v34)
      {
LABEL_74:
        Hasher._combine(_:)(1u);
        String.hash(into:)();
        goto LABEL_77;
      }
    }

    Hasher._combine(_:)(0);
LABEL_77:
    if (v35)
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      v69 = v92;
      if (v87)
      {
        goto LABEL_79;
      }
    }

    else
    {
      Hasher._combine(_:)(0);
      v69 = v92;
      if (v87)
      {
LABEL_79:
        Hasher._combine(_:)(1u);
        specialized Dictionary<>.hash(into:)(a1, v87, v70, v71, v72, v73, v74, v75);
        if (v36)
        {
          goto LABEL_80;
        }

        goto LABEL_92;
      }
    }

    Hasher._combine(_:)(0);
    if (v36)
    {
LABEL_80:
      Hasher._combine(_:)(1u);
      specialized Dictionary<>.hash(into:)(a1, v36, v76, v77, v78, v79, v80, v81);
      if (v88)
      {
        goto LABEL_81;
      }

      goto LABEL_93;
    }

LABEL_92:
    Hasher._combine(_:)(0);
    if (v88)
    {
LABEL_81:
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      lazy protocol witness table accessor for type _LocaleAutoupdating and conformance _LocaleAutoupdating(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
      _CFObject.hash(into:)();
      if (*(&v88 + 1))
      {
        goto LABEL_82;
      }

      goto LABEL_94;
    }

LABEL_93:
    Hasher._combine(_:)(0);
    if (*(&v88 + 1))
    {
LABEL_82:
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      lazy protocol witness table accessor for type _LocaleAutoupdating and conformance _LocaleAutoupdating(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
      _CFObject.hash(into:)();
      if (v37)
      {
        goto LABEL_83;
      }

      goto LABEL_95;
    }

LABEL_94:
    Hasher._combine(_:)(0);
    if (v37)
    {
LABEL_83:
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      lazy protocol witness table accessor for type _LocaleAutoupdating and conformance _LocaleAutoupdating(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
      _CFObject.hash(into:)();
      if (*(&v37 + 1))
      {
        goto LABEL_84;
      }

      goto LABEL_96;
    }

LABEL_95:
    Hasher._combine(_:)(0);
    if (*(&v37 + 1))
    {
LABEL_84:
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      lazy protocol witness table accessor for type _LocaleAutoupdating and conformance _LocaleAutoupdating(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
      _CFObject.hash(into:)();
      if (v69)
      {
        goto LABEL_85;
      }

      goto LABEL_97;
    }

LABEL_96:
    Hasher._combine(_:)(0);
    if (v69)
    {
LABEL_85:
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      lazy protocol witness table accessor for type _LocaleAutoupdating and conformance _LocaleAutoupdating(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
      _CFObject.hash(into:)();
      v82 = *(&v92 + 1);
      if (*(&v92 + 1))
      {
        goto LABEL_86;
      }

      goto LABEL_98;
    }

LABEL_97:
    Hasher._combine(_:)(0);
    v82 = *(&v92 + 1);
    if (*(&v92 + 1))
    {
LABEL_86:
      Hasher._combine(_:)(1u);
      specialized Dictionary<>.hash(into:)(a1, v82);
      v83 = v95;
      if (v38)
      {
        goto LABEL_87;
      }

      goto LABEL_99;
    }

LABEL_98:
    Hasher._combine(_:)(0);
    v83 = v95;
    if (v38)
    {
LABEL_87:
      Hasher._combine(_:)(1u);
      specialized Dictionary<>.hash(into:)(a1, v38);
      if (v93)
      {
        goto LABEL_88;
      }

      goto LABEL_100;
    }

LABEL_99:
    Hasher._combine(_:)(0);
    if (v93)
    {
LABEL_88:
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      if (v83 == 2)
      {
LABEL_89:
        Hasher._combine(_:)(0);
LABEL_102:
        if (v97 == 2)
        {
          Hasher._combine(_:)(0);
        }

        else
        {
          Hasher._combine(_:)(1u);
          MEMORY[0x1865CD060](v97 & 1);
        }

        if (v40 == 2)
        {
          v84 = 0;
        }

        else
        {
          Hasher._combine(_:)(1u);
          v84 = v40 & 1;
        }

        Hasher._combine(_:)(v84);
        if (v99 == 2)
        {
          v85 = 0;
        }

        else
        {
          Hasher._combine(_:)(1u);
          v85 = v99 & 1;
        }

        Hasher._combine(_:)(v85);
        outlined destroy of TermOfAddress?(&v101, &_s10Foundation17LocalePreferencesVSgMd);
        goto LABEL_16;
      }

LABEL_101:
      Hasher._combine(_:)(1u);
      MEMORY[0x1865CD060](v83 & 1);
      goto LABEL_102;
    }

LABEL_100:
    Hasher._combine(_:)(0);
    if (v83 == 2)
    {
      goto LABEL_89;
    }

    goto LABEL_101;
  }

  MEMORY[0x1865CD060](0);
  v17 = *(v8 + 24);
  v18 = *(v8 + 1);
  v116[2] = *v8;
  v116[3] = v18;
  v116[4] = *(v8 + 2);
  v117 = v17;
  v19 = v8[7];
  v20 = *(v8 + 64);
  specialized Optional<A>.hash(into:)(a1);
  if (v20 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v19);
  }

  v21 = v8[10];
  v22 = swift_getObjectType();
  if (((*(v21 + 48))(v22, v21) & 1) == 0)
  {
    Hasher._combine(_:)(0);
    (*(v21 + 64))(v22, v21);
    String.hash(into:)();

    (*(v21 + 464))(&v101, v22, v21);
    v115 = v107;
    v116[0] = *v108;
    *(v116 + 12) = *&v108[12];
    v111 = v103;
    v112 = v104;
    v113 = v105;
    v114 = v106;
    v109 = v101;
    v110 = v102;
    if (_s10Foundation17LocalePreferencesVSgWOg(&v109) == 1)
    {
      v23 = 0;
      goto LABEL_12;
    }

    v24 = v101;
    v25 = *(&v101 + 1);
    v26 = *(&v102 + 1);
    v27 = *(&v103 + 1);
    v86 = v104;
    v89 = v105;
    v91 = v106;
    v28 = v107;
    v94 = *v108;
    v96 = *&v108[16];
    v98 = v108[24];
    v100 = v108[25];
    v29 = v108[26];
    v30 = v108[27];
    Hasher._combine(_:)(1u);
    if (v24 == 2)
    {
      v31 = 0;
    }

    else
    {
      Hasher._combine(_:)(1u);
      v31 = v24 & 1;
    }

    Hasher._combine(_:)(v31);
    if (v25)
    {
      Hasher._combine(_:)(1u);
      MEMORY[0x1865CD060](*(v25 + 16));
      v42 = *(v25 + 16);
      if (v42)
      {
        v43 = v25 + 40;
        do
        {

          String.hash(into:)();

          v43 += 16;
          --v42;
        }

        while (v42);
      }
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    v90 = v29;
    if (v26)
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    if (v27)
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    if (v86)
    {
      Hasher._combine(_:)(1u);
      specialized Dictionary<>.hash(into:)(a1, v86, v44, v45, v46, v47, v48, v49);
      if (*(&v86 + 1))
      {
        goto LABEL_36;
      }
    }

    else
    {
      Hasher._combine(_:)(0);
      if (*(&v86 + 1))
      {
LABEL_36:
        Hasher._combine(_:)(1u);
        specialized Dictionary<>.hash(into:)(a1, *(&v86 + 1), v50, v51, v52, v53, v54, v55);
        if (v89)
        {
          goto LABEL_37;
        }

        goto LABEL_48;
      }
    }

    Hasher._combine(_:)(0);
    if (v89)
    {
LABEL_37:
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      lazy protocol witness table accessor for type _LocaleAutoupdating and conformance _LocaleAutoupdating(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
      _CFObject.hash(into:)();
      if (*(&v89 + 1))
      {
        goto LABEL_38;
      }

      goto LABEL_49;
    }

LABEL_48:
    Hasher._combine(_:)(0);
    if (*(&v89 + 1))
    {
LABEL_38:
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      lazy protocol witness table accessor for type _LocaleAutoupdating and conformance _LocaleAutoupdating(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
      _CFObject.hash(into:)();
      if (v91)
      {
        goto LABEL_39;
      }

      goto LABEL_50;
    }

LABEL_49:
    Hasher._combine(_:)(0);
    if (v91)
    {
LABEL_39:
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      lazy protocol witness table accessor for type _LocaleAutoupdating and conformance _LocaleAutoupdating(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
      _CFObject.hash(into:)();
      v56 = v96;
      if (*(&v91 + 1))
      {
        goto LABEL_40;
      }

      goto LABEL_51;
    }

LABEL_50:
    Hasher._combine(_:)(0);
    v56 = v96;
    if (*(&v91 + 1))
    {
LABEL_40:
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      lazy protocol witness table accessor for type _LocaleAutoupdating and conformance _LocaleAutoupdating(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
      _CFObject.hash(into:)();
      if (v28)
      {
        goto LABEL_41;
      }

      goto LABEL_52;
    }

LABEL_51:
    Hasher._combine(_:)(0);
    if (v28)
    {
LABEL_41:
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      lazy protocol witness table accessor for type _LocaleAutoupdating and conformance _LocaleAutoupdating(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
      _CFObject.hash(into:)();
      v57 = v98;
      v58 = v100;
      if (*(&v28 + 1))
      {
        goto LABEL_42;
      }

      goto LABEL_53;
    }

LABEL_52:
    Hasher._combine(_:)(0);
    v57 = v98;
    v58 = v100;
    if (*(&v28 + 1))
    {
LABEL_42:
      Hasher._combine(_:)(1u);
      specialized Dictionary<>.hash(into:)(a1, *(&v28 + 1));
      if (v94)
      {
        goto LABEL_43;
      }

      goto LABEL_54;
    }

LABEL_53:
    Hasher._combine(_:)(0);
    if (v94)
    {
LABEL_43:
      Hasher._combine(_:)(1u);
      specialized Dictionary<>.hash(into:)(a1, v94);
      if (v56)
      {
        goto LABEL_44;
      }

      goto LABEL_55;
    }

LABEL_54:
    Hasher._combine(_:)(0);
    if (v56)
    {
LABEL_44:
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      if (v57 == 2)
      {
LABEL_45:
        Hasher._combine(_:)(0);
LABEL_57:
        if (v58 == 2)
        {
          Hasher._combine(_:)(0);
        }

        else
        {
          Hasher._combine(_:)(1u);
          MEMORY[0x1865CD060](v58 & 1);
        }

        if (v90 == 2)
        {
          v59 = 0;
        }

        else
        {
          Hasher._combine(_:)(1u);
          v59 = v90 & 1;
        }

        Hasher._combine(_:)(v59);
        if (v30 == 2)
        {
          v60 = 0;
        }

        else
        {
          Hasher._combine(_:)(1u);
          v60 = v30 & 1;
        }

        Hasher._combine(_:)(v60);
        outlined destroy of TermOfAddress?(&v101, &_s10Foundation17LocalePreferencesVSgMd);
        goto LABEL_67;
      }

LABEL_56:
      Hasher._combine(_:)(1u);
      MEMORY[0x1865CD060](v57 & 1);
      goto LABEL_57;
    }

LABEL_55:
    Hasher._combine(_:)(0);
    if (v57 == 2)
    {
      goto LABEL_45;
    }

    goto LABEL_56;
  }

  v23 = 1;
LABEL_12:
  Hasher._combine(_:)(v23);
LABEL_67:
  v61 = v8[12];
  v62 = v8[14];
  v63 = *(v8 + 120);
  v64 = *(v8 + 121);
  v65 = swift_getObjectType();
  (*(v61 + 120))(a1, v65, v61);
  v66 = swift_getObjectType();
  (*(v62 + 120))(a1, v66, v62);
  MEMORY[0x1865CD060](v63);
  Hasher._combine(_:)(v64);
}

uint64_t Date.AttributedStyle.InnerStyle.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v31 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation33DefaultAssociatedValueCodingKeys1OGMd);
  v30 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v30 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation4DateV15AttributedStyleV05InnerG0O10CodingKeys33_83F1B432FCCCE88C2D9349A2B9C9BC3DLLOGMd);
  v32 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v30 - v10;
  v12 = a1[3];
  v59 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  lazy protocol witness table accessor for type Date.AttributedStyle.InnerStyle.CodingKeys and conformance Date.AttributedStyle.InnerStyle.CodingKeys();
  v13 = v33;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v13)
  {
    v14 = v3;
    v15 = v31;
    v16 = KeyedDecodingContainer.allKeys.getter();
    v17 = (2 * *(v16 + 16)) | 1;
    v55 = v16;
    v56 = v16 + 32;
    v57 = 0;
    v58 = v17;
    v18 = specialized Collection<>.popFirst()();
    if (v18 == 2 || v57 != v58 >> 1)
    {
      v20 = type metadata accessor for DecodingError();
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
      *v22 = &type metadata for Date.AttributedStyle.InnerStyle;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x1E69E6AF8], v20);
      swift_willThrow();
      (*(v32 + 8))(v11, v9);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v18)
      {
        LOBYTE(v41) = 1;
        lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        lazy protocol witness table accessor for type Date.VerbatimFormatStyle and conformance Date.VerbatimFormatStyle();
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v19 = v32;
        (*(v30 + 8))(v5, v14);
        (*(v19 + 8))(v11, v9);
        swift_unknownObjectRelease();
        v41 = v34;
        v42 = v35;
        v43 = v36;
        v44 = v37;
        _sSS10FoundationE17LocalizationValueV14FormatArgumentV04DateeD5StyleV0D033_52A34860FC1D9F87FB0A99C608112EB3LLOWOi1_(&v41);
        v52 = v45;
        v53 = v46;
        v54[0] = v47[0];
        *(v54 + 10) = *(v47 + 10);
        v48 = v41;
        v49 = v42;
        v25 = v43;
        v26 = v44;
      }

      else
      {
        LOBYTE(v41) = 0;
        lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        lazy protocol witness table accessor for type Date.FormatStyle and conformance Date.FormatStyle();
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v24 = (v32 + 8);
        (*(v30 + 8))(v8, v14);
        (*v24)(v11, v9);
        swift_unknownObjectRelease();
        v38 = v45;
        v39 = v46;
        v40[0] = v47[0];
        *(v40 + 10) = *(v47 + 10);
        v34 = v41;
        v35 = v42;
        v36 = v43;
        v37 = v44;
        _sSS10FoundationE17LocalizationValueV14FormatArgumentV04DateeD5StyleV0D033_52A34860FC1D9F87FB0A99C608112EB3LLOWOi_(&v34);
        v52 = v38;
        v53 = v39;
        v54[0] = v40[0];
        *(v54 + 10) = *(v40 + 10);
        v48 = v34;
        v49 = v35;
        v25 = v36;
        v26 = v37;
      }

      v50 = v25;
      v51 = v26;
      v27 = v53;
      v15[4] = v52;
      v15[5] = v27;
      v15[6] = v54[0];
      *(v15 + 106) = *(v54 + 10);
      v28 = v49;
      *v15 = v48;
      v15[1] = v28;
      v29 = v51;
      v15[2] = v50;
      v15[3] = v29;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v59);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance Date.AttributedStyle.InnerStyle.CodingKeys()
{
  if (*v0)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0x745374616D726F66;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Date.AttributedStyle.InnerStyle.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x745374616D726F66 && a2 == 0xEB00000000656C79;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000013 && 0x800000018147EAC0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Date.AttributedStyle.InnerStyle.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Date.AttributedStyle.InnerStyle.CodingKeys and conformance Date.AttributedStyle.InnerStyle.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Date.AttributedStyle.InnerStyle.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Date.AttributedStyle.InnerStyle.CodingKeys and conformance Date.AttributedStyle.InnerStyle.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Date.AttributedStyle.format(_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = v2[5];
  v228 = v2[4];
  v229 = v4;
  v230[0] = v2[6];
  v5 = v230[0];
  *(v230 + 10) = *(v2 + 106);
  v6 = v2[1];
  v224 = *v2;
  v225 = v6;
  v7 = v2[3];
  v226 = v2[2];
  v227 = v7;
  v231[2] = v226;
  v231[3] = v7;
  v231[0] = v224;
  v231[1] = v6;
  *(v232 + 10) = *(v230 + 10);
  v231[5] = v4;
  v232[0] = v5;
  v231[4] = v228;
  if (_s10Foundation4DateV15AttributedStyleV05InnerD0OWOg(v231) == 1)
  {
    v8 = destructiveProjectEnumData for Date.AttributedStyle.InnerStyle(v231);
    v179 = *v8;
    v180 = v8[1];
    v181 = v8[2];
    v182 = v8[3];
    v195 = v228;
    v196 = v229;
    v197[0] = v230[0];
    *(v197 + 10) = *(v230 + 10);
    v191 = v224;
    v192 = v225;
    v193 = v226;
    v194 = v227;
    v9 = destructiveProjectEnumData for Date.AttributedStyle.InnerStyle(&v191);
    outlined init with copy of Date.AttributedStyle.InnerStyle(&v224, &v186);
    outlined init with copy of Date.VerbatimFormatStyle(v9, &v186);
    ICUDateFormatter.DateFormatInfo.init(_:)(&v179, &v169);
  }

  else
  {
    v10 = destructiveProjectEnumData for Date.AttributedStyle.InnerStyle(v231);
    *&v188[32] = v10[4];
    v189 = v10[5];
    v190[0] = v10[6];
    *(v190 + 10) = *(v10 + 106);
    v186 = *v10;
    v187 = v10[1];
    *v188 = v10[2];
    *&v188[16] = v10[3];
    v195 = v228;
    v196 = v229;
    v197[0] = v230[0];
    *(v197 + 10) = *(v230 + 10);
    v191 = v224;
    v192 = v225;
    v193 = v226;
    v194 = v227;
    v11 = destructiveProjectEnumData for Date.AttributedStyle.InnerStyle(&v191);
    outlined init with copy of Date.AttributedStyle.InnerStyle(&v224, &v169);
    outlined init with copy of Date.FormatStyle(v11, &v169);
    ICUDateFormatter.DateFormatInfo.init(_:)(&v186, &v169);
  }

  v12 = specialized static ICUDateFormatter.cachedFormatter(for:)(&v169);
  outlined destroy of Date.AttributedStyle.InnerStyle(&v224);
  *v188 = *v171;
  *&v188[16] = *&v171[16];
  *&v188[32] = v172;
  v189 = v173;
  v186 = v169;
  v187 = v170;
  outlined destroy of ICUDateFormatter.DateFormatInfo(&v186);
  if (!v12)
  {
    goto LABEL_110;
  }

  *&v191 = v3;

  v233 = ICUDateFormatter.attributedFormat(_:)(v13);
  if (!v233.value._0._object)
  {

LABEL_110:
    BigString.init(_:)();
    AttributedString.init(_:attributes:)(&v191, MEMORY[0x1E69E7CC8], MEMORY[0x1E69E7CD0], &v186);

    v19 = v186;
    goto LABEL_111;
  }

  countAndFlagsBits = v233.value._0._countAndFlagsBits;
  object = v233.value._0._object;
  rawValue = v233.value._1._rawValue;

  BigString.init(_:)();
  v17 = MEMORY[0x1E69E7CC8];
  v18 = MEMORY[0x1E69E7CD0];
  AttributedString.init(_:attributes:)(v198, MEMORY[0x1E69E7CC8], MEMORY[0x1E69E7CD0], &v191);
  v19 = v191;
  v158 = *(rawValue + 2);
  if (!v158)
  {
LABEL_108:

LABEL_111:
    *a2 = v19;
    return result;
  }

  v20 = 0;
  v157 = rawValue + 32;
  v155 = object;
  v156 = rawValue;
  v154 = countAndFlagsBits;
  while (1)
  {
    if (v20 >= *(rawValue + 2))
    {
      goto LABEL_113;
    }

    v159 = v20;
    v21 = *&v157[24 * v20];
    *&v186 = countAndFlagsBits;
    *(&v186 + 1) = object;
    lazy protocol witness table accessor for type String and conformance String();

    v22 = String.Index.init<A>(utf16Offset:in:)();
    *&v186 = countAndFlagsBits;
    *(&v186 + 1) = object;

    v23 = String.Index.init<A>(utf16Offset:in:)();
    if (v23 >> 14 < v22 >> 14)
    {
      goto LABEL_114;
    }

    v24 = v23;

    _sSn10FoundationAA16AttributedStringV5IndexVRszrlE6_range2inSnyAEGSgSnySSADVG_qd__tcAA0bC8ProtocolRd__lufCAC_Tt2B5(v22, v24, v19, &v186);
    v165 = v187;
    if (*(&v187 + 1) == 2)
    {
      goto LABEL_120;
    }

    v160 = *&v188[24];
    v161 = *&v188[8];
    v163 = v186;
    v184 = v17;
    v185 = v18;
    AttributeScopes.FoundationAttributes.DateFieldAttribute.Field.init(udateFormatField:)(v21, &v169);
    v25 = v169;
    if (v169 == 17)
    {
      v167 = v17;
      goto LABEL_47;
    }

    *(&v170 + 1) = &type metadata for AttributeScopes.FoundationAttributes.DateFieldAttribute.Field;
    *v171 = lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.DateFieldAttribute.Field and conformance AttributeScopes.FoundationAttributes.DateFieldAttribute.Field();
    LOBYTE(v169) = v25;
    *&v171[8] = xmmword_1812187D0;
    v171[24] = 1;
    *&v172 = 0;
    outlined init with copy of FloatingPointRoundingRule?(&v169, &v179, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
    if (*(&v180 + 1))
    {
      v177[2] = v181;
      v177[3] = v182;
      v178 = v183;
      v177[0] = v179;
      v177[1] = v180;
      outlined init with copy of AttributedString._AttributeValue(v177, v175);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v174 = v17;
      v27 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001ALL, 0x800000018147E880);
      v29 = *(v17 + 16);
      v30 = (v28 & 1) == 0;
      v31 = __OFADD__(v29, v30);
      v32 = v29 + v30;
      if (v31)
      {
        goto LABEL_119;
      }

      v33 = v28;
      if (*(v17 + 24) >= v32)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v168 = v27;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
          v51 = static _DictionaryStorage.copy(original:)();
          v34 = v51;
          v52 = *(v17 + 16);
          if (v52)
          {
            v53 = (v51 + 64);
            v54 = ((1 << *(v34 + 32)) + 63) >> 6;
            if (v34 != v17 || v53 >= v17 + 8 * v54 + 64)
            {
              memmove(v53, (v17 + 64), 8 * v54);
            }

            v55 = 0;
            *(v34 + 16) = v52;
            v56 = 1 << *(v17 + 32);
            v57 = *(v17 + 64);
            if (v56 < 64)
            {
              v58 = ~(-1 << v56);
            }

            else
            {
              v58 = -1;
            }

            v59 = v58 & v57;
            v60 = (v56 + 63) >> 6;
            if ((v58 & v57) != 0)
            {
              do
              {
                v61 = __clz(__rbit64(v59));
                v59 &= v59 - 1;
                v62 = v61 | (v55 << 6);
LABEL_41:
                v65 = 16 * v62;
                v66 = (*(MEMORY[0x1E69E7CC8] + 48) + 16 * v62);
                v68 = *v66;
                v67 = v66[1];
                v69 = 72 * v62;
                outlined init with copy of AttributedString._AttributeValue(*(MEMORY[0x1E69E7CC8] + 56) + 72 * v62, &v179);
                v70 = (*(v34 + 48) + v65);
                *v70 = v68;
                v70[1] = v67;
                v71 = *(v34 + 56) + v69;
                *v71 = v179;
                v72 = v180;
                v73 = v181;
                v74 = v182;
                *(v71 + 64) = v183;
                *(v71 + 32) = v73;
                *(v71 + 48) = v74;
                *(v71 + 16) = v72;
              }

              while (v59);
            }

            while (1)
            {
              v63 = v55 + 1;
              if (__OFADD__(v55, 1))
              {
                goto LABEL_121;
              }

              if (v63 >= v60)
              {
                break;
              }

              v64 = *(MEMORY[0x1E69E7CC8] + 8 * v63 + 64);
              ++v55;
              if (v64)
              {
                v59 = (v64 - 1) & v64;
                v62 = __clz(__rbit64(v64)) | (v63 << 6);
                v55 = v63;
                goto LABEL_41;
              }
            }
          }

          v27 = v168;
          if (v33)
          {
            goto LABEL_26;
          }

          goto LABEL_44;
        }

        v34 = v17;
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v32, isUniquelyReferenced_nonNull_native);
        v34 = v174;
        v27 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001ALL, 0x800000018147E880);
        if ((v33 & 1) != (v35 & 1))
        {
          goto LABEL_123;
        }
      }

      if (v33)
      {
LABEL_26:
        v43 = *(v34 + 56) + 72 * v27;
        v45 = *(v43 + 16);
        v44 = *(v43 + 32);
        v46 = *(v43 + 48);
        v183 = *(v43 + 64);
        v182 = v46;
        v179 = *v43;
        v180 = v45;
        v181 = v44;
        v47 = *(v34 + 56) + 72 * v27;
        v48 = v175[1];
        v49 = v175[2];
        v50 = v175[3];
        *(v47 + 64) = v176;
        *(v47 + 32) = v49;
        *(v47 + 48) = v50;
        *(v47 + 16) = v48;
        *v47 = v175[0];
        outlined destroy of AttributedString._AttributeValue(v177);
        goto LABEL_45;
      }

LABEL_44:
      specialized _NativeDictionary._insert(at:key:value:)(v27, 0xD00000000000001ALL, 0x800000018147E880, v175, v34);
      outlined destroy of AttributedString._AttributeValue(v177);
      v179 = 0u;
      v180 = 0u;
      v181 = 0u;
      v182 = 0u;
      v183 = 0;
      goto LABEL_45;
    }

    outlined destroy of TermOfAddress?(&v179, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
    v36 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001ALL, 0x800000018147E880);
    if (v37)
    {
      break;
    }

    v183 = 0;
    v181 = 0u;
    v182 = 0u;
    v179 = 0u;
    v180 = 0u;
LABEL_46:
    AttributedString._AttributeStorage._attributeModified(_:old:new:)(0xD00000000000001ALL, 0x800000018147E880, &v179, &v169);
    outlined destroy of TermOfAddress?(&v169, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
    outlined destroy of TermOfAddress?(&v179, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
    v167 = v184;
LABEL_47:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v75 = *(v19 + 40);
      v221 = *(v19 + 24);
      v222 = v75;
      v223 = *(v19 + 56);
      v76 = *(v19 + 72);
      v77 = *(v19 + 80);
      v78 = *(v19 + 88);
      v79 = *(v19 + 96);
      type metadata accessor for AttributedString.Guts();
      v80 = swift_allocObject();
      v81 = BigString.isEmpty.getter() & 1;
      outlined init with copy of BigString(&v221, &v169);
      v82 = swift_unknownObjectRetain();
      specialized Rope._endPath.getter(v82);
      if (v76)
      {
        v83 = v78 == 0;
      }

      else
      {
        v83 = 1;
      }

      v84 = v83;
      if (v84 != v81)
      {
        goto LABEL_117;
      }

      if (one-time initialization token for _nextVersion != -1)
      {
        swift_once();
      }

      *(v80 + 16) = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
      v85 = v222;
      *(v80 + 24) = v221;
      *(v80 + 40) = v85;
      *(v80 + 56) = v223;
      *(v80 + 72) = v76;
      *(v80 + 80) = v77;
      *(v80 + 88) = v78;
      *(v80 + 96) = v79;
      *(v80 + 104) = MEMORY[0x1E69E7CC0];

      v19 = v80;
    }

    if (one-time initialization token for _nextVersion != -1)
    {
      swift_once();
    }

    *(v19 + 16) = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
    v86 = *(v19 + 40);
    v87 = *(v19 + 24);
    v220 = *(v19 + 56);
    v218 = v87;
    v219 = v86;
    BigString.startIndex.getter();
    BigString.endIndex.getter();
    v212 = v165;
    v211 = v163;
    v214 = v160;
    v213 = v161;
    v88 = *(v19 + 40);
    v215 = *(v19 + 24);
    v216 = v88;
    v217 = *(v19 + 56);
    swift_unknownObjectRetain();

    BigString.UnicodeScalarView.subscript.getter();
    swift_unknownObjectRelease();
    outlined destroy of BigSubstring.UnicodeScalarView(&v191);
    if (one-time initialization token for currentIdentity != -1)
    {
      swift_once();
    }

    v89 = static AttributedString.currentIdentity;
    os_unfair_lock_lock((static AttributedString.currentIdentity + 24));
    v90 = *(v89 + 16);
    v31 = __OFADD__(v90, 1);
    v91 = v90 + 1;
    if (v31)
    {
      goto LABEL_115;
    }

    *(v89 + 16) = v91;
    os_unfair_lock_unlock((v89 + 24));
    BigString.init()();
    *&v169 = 0;
    MEMORY[0x1865D26B0](&v169, 8);
    v92 = v169;
    type metadata accessor for AttributedString.Guts();
    v93 = swift_allocObject();
    if ((BigString.isEmpty.getter() & 1) == 0)
    {
      goto LABEL_116;
    }

    *(v93 + 16) = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
    v94 = v200;
    *(v93 + 24) = v199;
    *(v93 + 40) = v94;
    *(v93 + 56) = v201;
    *(v93 + 72) = 0;
    *(v93 + 80) = 0;
    *(v93 + 88) = 0;
    *(v93 + 96) = v92;
    *(v93 + 104) = MEMORY[0x1E69E7CC0];

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v95 = *(v19 + 40);
      v208 = *(v19 + 24);
      v209 = v95;
      v210 = *(v19 + 56);
      v97 = *(v19 + 72);
      v96 = *(v19 + 80);
      v98 = *(v19 + 88);
      v99 = *(v19 + 96);
      v100 = swift_allocObject();
      v101 = BigString.isEmpty.getter() & 1;
      outlined init with copy of BigString(&v208, &v169);
      v102 = swift_unknownObjectRetain();
      specialized Rope._endPath.getter(v102);
      if (v97)
      {
        v103 = v98 == 0;
      }

      else
      {
        v103 = 1;
      }

      v104 = v103;
      if (v104 != v101)
      {
        goto LABEL_118;
      }

      *(v100 + 16) = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
      v105 = v209;
      *(v100 + 24) = v208;
      *(v100 + 40) = v105;
      *(v100 + 56) = v210;
      *(v100 + 72) = v97;
      *(v100 + 80) = v96;
      *(v100 + 88) = v98;
      *(v100 + 96) = v99;
      *(v100 + 104) = MEMORY[0x1E69E7CC0];

      v19 = v100;
    }

    v106 = *(v19 + 40);
    v205 = *(v19 + 24);
    v206 = v106;
    v207 = *(v19 + 56);
    swift_unknownObjectRetain();
    v107 = BigString.UnicodeScalarView.index(roundingDown:)();
    swift_unknownObjectRelease();
    v108 = *(v19 + 40);
    v202 = *(v19 + 24);
    v203 = v108;
    v204 = *(v19 + 56);
    swift_unknownObjectRetain();
    v109 = BigString.UnicodeScalarView.index(roundingDown:)();
    swift_unknownObjectRelease();
    v110 = v107 >> 11;
    v111 = v109 >> 11;

    specialized AttributedString._InternalRunsSlice.updateEach(with:)(v19, v107 >> 11, v111, v167, 0);

    if (specialized AttributedString._AttributeStorage.hasConstrainedAttributes.getter(v167))
    {
      v112 = 1 << *(v167 + 32);
      if (v112 < 64)
      {
        v113 = ~(-1 << v112);
      }

      else
      {
        v113 = -1;
      }

      v114 = v113 & *(v167 + 64);
      v115 = (v112 + 63) >> 6;

      v116 = 0;
      v166 = MEMORY[0x1E69E7CC0];
      if (!v114)
      {
        goto LABEL_80;
      }

      do
      {
LABEL_78:
        while (1)
        {
          v117 = __clz(__rbit64(v114));
          v114 &= v114 - 1;
          outlined init with copy of AttributedString._AttributeValue(*(v167 + 56) + 72 * (v117 | (v116 << 6)), &v169);
          v118 = *&v171[8];
          v119 = *&v171[16];
          outlined copy of AttributedString.AttributeRunBoundaries?(*&v171[8], *&v171[16]);
          outlined destroy of AttributedString._AttributeValue(&v169);
          if (v119 != 1)
          {
            break;
          }

          if (!v114)
          {
            goto LABEL_80;
          }
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v166 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v166 + 2) + 1, 1, v166);
        }

        v122 = *(v166 + 2);
        v121 = *(v166 + 3);
        v123 = v122 + 1;
        if (v122 >= v121 >> 1)
        {
          v164 = v122 + 1;
          v162 = *(v166 + 2);
          v125 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v121 > 1), v122 + 1, 1, v166);
          v123 = v164;
          v122 = v162;
          v166 = v125;
        }

        *(v166 + 2) = v123;
        v124 = &v166[16 * v122];
        *(v124 + 4) = v118;
        *(v124 + 5) = v119;
      }

      while (v114);
LABEL_80:
      while (1)
      {
        v120 = v116 + 1;
        if (__OFADD__(v116, 1))
        {
          break;
        }

        if (v120 >= v115)
        {

          AttributedString.Guts.enforceAttributeConstraintsAfterMutation(in:type:constraintsInvolved:)(v110, v111, 0, v166);

          goto LABEL_9;
        }

        v114 = *(v167 + 64 + 8 * v120);
        ++v116;
        if (v114)
        {
          v116 = v120;
          goto LABEL_78;
        }
      }

      __break(1u);
LABEL_113:
      __break(1u);
LABEL_114:
      __break(1u);
LABEL_115:
      __break(1u);
LABEL_116:
      __break(1u);
LABEL_117:
      __break(1u);
LABEL_118:
      __break(1u);
LABEL_119:
      __break(1u);
LABEL_120:
      __break(1u);
LABEL_121:
      __break(1u);
      goto LABEL_122;
    }

LABEL_9:
    object = v155;
    rawValue = v156;
    countAndFlagsBits = v154;
    v17 = MEMORY[0x1E69E7CC8];
    v20 = v159 + 1;

    v18 = MEMORY[0x1E69E7CD0];
    if (v159 + 1 == v158)
    {
      goto LABEL_108;
    }
  }

  v38 = v36;
  v34 = v17;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    goto LABEL_22;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
  v126 = static _DictionaryStorage.copy(original:)();
  v34 = v126;
  v127 = *(v17 + 16);
  if (!v127)
  {
LABEL_107:

LABEL_22:

    v39 = *(v34 + 56) + 72 * v38;
    v179 = *v39;
    v41 = *(v39 + 32);
    v40 = *(v39 + 48);
    v42 = *(v39 + 64);
    v180 = *(v39 + 16);
    v181 = v41;
    v183 = v42;
    v182 = v40;
    specialized _NativeDictionary._delete(at:)(v38, v34);
LABEL_45:
    v184 = v34;
    goto LABEL_46;
  }

  v128 = (v126 + 64);
  v129 = ((1 << *(v34 + 32)) + 63) >> 6;
  if (v34 != v17 || v128 >= v17 + 8 * v129 + 64)
  {
    memmove(v128, (v17 + 64), 8 * v129);
  }

  v130 = 0;
  *(v34 + 16) = v127;
  v131 = 1 << *(v17 + 32);
  v132 = *(v17 + 64);
  if (v131 < 64)
  {
    v133 = ~(-1 << v131);
  }

  else
  {
    v133 = -1;
  }

  v134 = v133 & v132;
  v135 = (v131 + 63) >> 6;
  if ((v133 & v132) != 0)
  {
    do
    {
      v136 = __clz(__rbit64(v134));
      v134 &= v134 - 1;
      v137 = v136 | (v130 << 6);
      v138 = MEMORY[0x1E69E7CC8];
LABEL_105:
      v141 = 16 * v137;
      v142 = *(v138 + 56);
      v143 = (*(v138 + 48) + 16 * v137);
      v145 = *v143;
      v144 = v143[1];
      v146 = 72 * v137;
      outlined init with copy of AttributedString._AttributeValue(v142 + 72 * v137, &v179);
      v147 = (*(v34 + 48) + v141);
      *v147 = v145;
      v147[1] = v144;
      v148 = *(v34 + 56) + v146;
      *v148 = v179;
      v149 = v180;
      v150 = v181;
      v151 = v182;
      *(v148 + 64) = v183;
      *(v148 + 32) = v150;
      *(v148 + 48) = v151;
      *(v148 + 16) = v149;
    }

    while (v134);
  }

  v138 = MEMORY[0x1E69E7CC8];
  while (1)
  {
    v139 = v130 + 1;
    if (__OFADD__(v130, 1))
    {
      break;
    }

    if (v139 >= v135)
    {
      goto LABEL_107;
    }

    v140 = *(MEMORY[0x1E69E7CC8] + 8 * v139 + 64);
    ++v130;
    if (v140)
    {
      v134 = (v140 - 1) & v140;
      v137 = __clz(__rbit64(v140)) | (v139 << 6);
      v130 = v139;
      goto LABEL_105;
    }
  }

LABEL_122:
  __break(1u);
LABEL_123:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

double Date.AttributedStyle.locale(_:)@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = v2[3];
  v5 = v2[5];
  v44 = v2[4];
  v45 = v5;
  v6 = v2[5];
  v46[0] = v2[6];
  *(v46 + 10) = *(v2 + 106);
  v7 = v2[1];
  v40 = *v2;
  v41 = v7;
  v8 = v2[3];
  v42 = v2[2];
  v43 = v8;
  v47[2] = v42;
  v47[3] = v4;
  v47[0] = v40;
  v47[1] = v7;
  *(v48 + 10) = *(v2 + 106);
  v9 = v2[6];
  v47[5] = v6;
  v48[0] = v9;
  v10 = *a1;
  v11 = a1[1];
  v47[4] = v44;
  if (_s10Foundation4DateV15AttributedStyleV05InnerD0OWOg(v47) == 1)
  {
    v12 = destructiveProjectEnumData for Date.AttributedStyle.InnerStyle(v47);
    v22 = *v12;
    v23 = v12[1];
    v18 = v12[3];
    outlined init with copy of Date.AttributedStyle(&v40, &v27);
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    v27 = v22;
    v28 = v23;
    *&v29 = v10;
    *(&v29 + 1) = v11;
    v30 = v18;
    _sSS10FoundationE17LocalizationValueV14FormatArgumentV04DateeD5StyleV0D033_52A34860FC1D9F87FB0A99C608112EB3LLOWOi1_(&v27);
  }

  else
  {
    v13 = destructiveProjectEnumData for Date.AttributedStyle.InnerStyle(v47);
    v23 = *(v13 + 16);
    v24 = *(v13 + 32);
    v25 = *(v13 + 48);
    v26 = *(v13 + 64);
    v22 = *v13;
    v19 = *(v13 + 88);
    v20 = *(v13 + 104);
    v21 = *(v13 + 120);
    outlined init with copy of Date.AttributedStyle(&v40, &v27);
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    v29 = v24;
    v30 = v25;
    v27 = v22;
    v28 = v23;
    *&v32[8] = v19;
    *&v31 = v26;
    *(&v31 + 1) = v10;
    *v32 = v11;
    *&v32[24] = v20;
    *&v32[40] = v21;
    _sSS10FoundationE17LocalizationValueV14FormatArgumentV04DateeD5StyleV0D033_52A34860FC1D9F87FB0A99C608112EB3LLOWOi_(&v27);
  }

  v37 = v31;
  v38 = *v32;
  v39[0] = *&v32[16];
  *(v39 + 10) = *&v32[26];
  v33 = v27;
  v34 = v28;
  v35 = v29;
  v36 = v30;
  v31 = v44;
  *v32 = v45;
  *&v32[16] = v46[0];
  *&v32[26] = *(v46 + 10);
  v27 = v40;
  v28 = v41;
  v29 = v42;
  v30 = v43;
  outlined init with copy of Date.AttributedStyle(&v40, &v22);
  outlined destroy of Date.AttributedStyle(&v27);
  v14 = v38;
  a2[4] = v37;
  a2[5] = v14;
  a2[6] = v39[0];
  *(a2 + 106) = *(v39 + 10);
  v15 = v34;
  *a2 = v33;
  a2[1] = v15;
  result = *&v35;
  v17 = v36;
  a2[2] = v35;
  a2[3] = v17;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Date.AttributedStyle.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x79745372656E6E69 && a2 == 0xEA0000000000656CLL)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Date.AttributedStyle.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Date.AttributedStyle.CodingKeys and conformance Date.AttributedStyle.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Date.AttributedStyle.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Date.AttributedStyle.CodingKeys and conformance Date.AttributedStyle.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t static Date.AttributedStyle.== infix(_:_:)(_OWORD *a1, __int128 *a2)
{
  v2 = a1[5];
  v3 = a1[3];
  v37 = a1[4];
  v38 = v2;
  v4 = a1[5];
  v39[0] = a1[6];
  *(v39 + 10) = *(a1 + 106);
  v5 = a1[1];
  v34[0] = *a1;
  v34[1] = v5;
  v6 = a1[3];
  v8 = *a1;
  v7 = a1[1];
  v35 = a1[2];
  v36 = v6;
  v9 = *a2;
  v10 = a2[1];
  v11 = a2[3];
  v40[2] = a2[2];
  v40[3] = v11;
  v12 = a2[1];
  v13 = a2[2];
  v14 = *a2;
  v40[0] = v9;
  v40[1] = v12;
  *(v43 + 10) = *(a2 + 106);
  v15 = a2[5];
  v43[0] = a2[6];
  v16 = a2[5];
  v17 = a2[3];
  v41 = a2[4];
  v42 = v16;
  v31 = v37;
  v32 = v4;
  v33[0] = a1[6];
  *(v33 + 10) = *(a1 + 106);
  v27 = v8;
  v28 = v7;
  v29 = v35;
  v30 = v3;
  v24 = v41;
  v25 = v15;
  v26[0] = a2[6];
  *(v26 + 10) = *(a2 + 106);
  v20 = v14;
  v21 = v10;
  v22 = v13;
  v23 = v17;
  outlined init with copy of Date.AttributedStyle.InnerStyle(v34, v46);
  outlined init with copy of Date.AttributedStyle.InnerStyle(v40, v46);
  v18 = specialized static Date.AttributedStyle.InnerStyle.== infix(_:_:)(&v27, &v20);
  v44[4] = v24;
  v44[5] = v25;
  v45[0] = v26[0];
  *(v45 + 10) = *(v26 + 10);
  v44[0] = v20;
  v44[1] = v21;
  v44[2] = v22;
  v44[3] = v23;
  outlined destroy of Date.AttributedStyle.InnerStyle(v44);
  v46[4] = v31;
  v46[5] = v32;
  v47[0] = v33[0];
  *(v47 + 10) = *(v33 + 10);
  v46[0] = v27;
  v46[1] = v28;
  v46[2] = v29;
  v46[3] = v30;
  outlined destroy of Date.AttributedStyle.InnerStyle(v46);
  return v18 & 1;
}

uint64_t Date.AttributedStyle.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation4DateV15AttributedStyleV10CodingKeys33_83F1B432FCCCE88C2D9349A2B9C9BC3DLLOGMd);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v11 - v5;
  v7 = v1[5];
  v24 = v1[4];
  v25 = v7;
  v26[0] = v1[6];
  *(v26 + 10) = *(v1 + 106);
  v8 = v1[1];
  v20 = *v1;
  v21 = v8;
  v9 = v1[3];
  v22 = v1[2];
  v23 = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  outlined init with copy of Date.AttributedStyle.InnerStyle(&v20, &v13);
  lazy protocol witness table accessor for type Date.AttributedStyle.CodingKeys and conformance Date.AttributedStyle.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = v24;
  v18 = v25;
  v19[0] = v26[0];
  *(v19 + 10) = *(v26 + 10);
  v13 = v20;
  v14 = v21;
  v15 = v22;
  v16 = v23;
  lazy protocol witness table accessor for type Date.AttributedStyle.InnerStyle and conformance Date.AttributedStyle.InnerStyle();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v11[4] = v17;
  v11[5] = v18;
  v12[0] = v19[0];
  *(v12 + 10) = *(v19 + 10);
  v11[0] = v13;
  v11[1] = v14;
  v11[2] = v15;
  v11[3] = v16;
  outlined destroy of Date.AttributedStyle.InnerStyle(v11);
  return (*(v4 + 8))(v6, v3);
}

Swift::Int Date.AttributedStyle.hashValue.getter()
{
  Hasher.init(_seed:)();
  Date.AttributedStyle.InnerStyle.hash(into:)(v1);
  return Hasher._finalize()();
}

uint64_t Date.AttributedStyle.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation4DateV15AttributedStyleV10CodingKeys33_83F1B432FCCCE88C2D9349A2B9C9BC3DLLOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Date.AttributedStyle.CodingKeys and conformance Date.AttributedStyle.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    lazy protocol witness table accessor for type Date.AttributedStyle.InnerStyle and conformance Date.AttributedStyle.InnerStyle();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    v9 = v13[5];
    a2[4] = v13[4];
    a2[5] = v9;
    a2[6] = v14[0];
    *(a2 + 106) = *(v14 + 10);
    v10 = v13[1];
    *a2 = v13[0];
    a2[1] = v10;
    v11 = v13[3];
    a2[2] = v13[2];
    a2[3] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Date.AttributedStyle.InnerStyle(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  Hasher.init(_seed:)();
  a3(v5);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Date.AttributedStyle.InnerStyle(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  Hasher.init(_seed:)();
  a4(v6);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Date.AttributedStyle(_OWORD *a1, __int128 *a2)
{
  v2 = a1[5];
  v3 = a1[3];
  v37 = a1[4];
  v38 = v2;
  v4 = a1[5];
  v39[0] = a1[6];
  *(v39 + 10) = *(a1 + 106);
  v5 = a1[1];
  v34[0] = *a1;
  v34[1] = v5;
  v6 = a1[3];
  v8 = *a1;
  v7 = a1[1];
  v35 = a1[2];
  v36 = v6;
  v9 = *a2;
  v10 = a2[1];
  v11 = a2[3];
  v40[2] = a2[2];
  v40[3] = v11;
  v12 = a2[1];
  v13 = a2[2];
  v14 = *a2;
  v40[0] = v9;
  v40[1] = v12;
  *(v43 + 10) = *(a2 + 106);
  v15 = a2[5];
  v43[0] = a2[6];
  v16 = a2[5];
  v17 = a2[3];
  v41 = a2[4];
  v42 = v16;
  v31 = v37;
  v32 = v4;
  v33[0] = a1[6];
  *(v33 + 10) = *(a1 + 106);
  v27 = v8;
  v28 = v7;
  v29 = v35;
  v30 = v3;
  v24 = v41;
  v25 = v15;
  v26[0] = a2[6];
  *(v26 + 10) = *(a2 + 106);
  v20 = v14;
  v21 = v10;
  v22 = v13;
  v23 = v17;
  outlined init with copy of Date.AttributedStyle.InnerStyle(v34, v46);
  outlined init with copy of Date.AttributedStyle.InnerStyle(v40, v46);
  v18 = specialized static Date.AttributedStyle.InnerStyle.== infix(_:_:)(&v27, &v20);
  v44[4] = v24;
  v44[5] = v25;
  v45[0] = v26[0];
  *(v45 + 10) = *(v26 + 10);
  v44[0] = v20;
  v44[1] = v21;
  v44[2] = v22;
  v44[3] = v23;
  outlined destroy of Date.AttributedStyle.InnerStyle(v44);
  v46[4] = v31;
  v46[5] = v32;
  v47[0] = v33[0];
  *(v47 + 10) = *(v33 + 10);
  v46[0] = v27;
  v46[1] = v28;
  v46[2] = v29;
  v46[3] = v30;
  outlined destroy of Date.AttributedStyle.InnerStyle(v46);
  return v18 & 1;
}

uint64_t Date.FormatStyle.Attributed.subscript.getter()
{
  v1 = v0[5];
  v2 = v0[3];
  v19 = v0[4];
  v20 = v1;
  v3 = v0[5];
  v21[0] = v0[6];
  *(v21 + 10) = *(v0 + 106);
  v4 = v0[1];
  v16[0] = *v0;
  v16[1] = v4;
  v5 = v0[3];
  v7 = *v0;
  v6 = v0[1];
  v17 = v0[2];
  v18 = v5;
  v13 = v19;
  v14 = v3;
  *v15 = v0[6];
  *&v15[10] = *(v0 + 106);
  v9 = v7;
  v10 = v6;
  v11 = v17;
  v12 = v2;
  outlined init with copy of Date.FormatStyle(v16, v22);
  swift_getAtKeyPath();
  v22[4] = v13;
  v22[5] = v14;
  v23[0] = *v15;
  *(v23 + 10) = *&v15[10];
  v22[0] = v9;
  v22[1] = v10;
  v22[2] = v11;
  v22[3] = v12;
  return outlined destroy of Date.FormatStyle(v22);
}

uint64_t Date.FormatStyle.Attributed.subscript.setter(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  specialized Date.FormatStyle.Attributed.subscript.setter(a1);

  v4 = *(*(*(v3 + *MEMORY[0x1E69E6CE8] + 8) - 8) + 8);

  return v4(a1);
}

void (*Date.FormatStyle.Attributed.subscript.modify(void *a1, void *a2))(uint64_t a1, char a2)
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x238uLL);
  }

  v7 = v6;
  *a1 = v6;
  v6[65] = v2;
  v6[64] = a2;
  v8 = *(*a2 + *MEMORY[0x1E69E6CE8] + 8);
  v6[66] = v8;
  v9 = *(v8 - 8);
  v6[67] = v9;
  v10 = *(v9 + 64);
  if (v5)
  {
    v6[68] = swift_coroFrameAlloc();
    *(v7 + 552) = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v6[68] = malloc(v10);
    *(v7 + 552) = malloc(v10);
    v11 = malloc(v10);
  }

  *(v7 + 560) = v11;
  v12 = *v2;
  v13 = v2[1];
  v14 = v2[3];
  *(v7 + 160) = v2[2];
  *(v7 + 176) = v14;
  *(v7 + 128) = v12;
  *(v7 + 144) = v13;
  v15 = v2[4];
  v16 = v2[5];
  v17 = v2[6];
  *(v7 + 234) = *(v2 + 106);
  *(v7 + 208) = v16;
  *(v7 + 224) = v17;
  *(v7 + 192) = v15;
  v19 = v2[5];
  v18 = v2[6];
  v20 = v2[4];
  *(v7 + 362) = *(v2 + 106);
  *(v7 + 336) = v19;
  *(v7 + 352) = v18;
  *(v7 + 320) = v20;
  v21 = *v2;
  v22 = v2[1];
  v23 = v2[3];
  *(v7 + 288) = v2[2];
  *(v7 + 304) = v23;
  *(v7 + 256) = v21;
  *(v7 + 272) = v22;
  outlined init with copy of Date.FormatStyle(v7 + 128, v7 + 384);
  swift_getAtKeyPath();
  v24 = *(v7 + 336);
  *(v7 + 64) = *(v7 + 320);
  *(v7 + 80) = v24;
  *(v7 + 96) = *(v7 + 352);
  *(v7 + 106) = *(v7 + 362);
  v25 = *(v7 + 272);
  *v7 = *(v7 + 256);
  *(v7 + 16) = v25;
  v26 = *(v7 + 304);
  *(v7 + 32) = *(v7 + 288);
  *(v7 + 48) = v26;
  outlined destroy of Date.FormatStyle(v7);
  return Date.FormatStyle.Attributed.subscript.modify;
}

void Date.FormatStyle.Attributed.subscript.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 536) + 16);
  v4(*(*a1 + 552), *(*a1 + 560), *(*a1 + 528));
  v11 = v3[70];
  v5 = v3[69];
  v6 = v3[68];
  v7 = v3[67];
  v8 = v3[66];
  if (a2)
  {
    v4(v3[68], v3[69], v3[66]);
    swift_setAtWritableKeyPath();
    v9 = *(v7 + 8);
    v9(v5, v8);
    v10 = v11;
    v9(v11, v8);
  }

  else
  {
    swift_setAtWritableKeyPath();
    v10 = v11;
    (*(v7 + 8))(v11, v8);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

uint64_t Date.FormatStyle.Attributed.format(_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2[5];
  v4 = v2[3];
  v216 = v2[4];
  v217 = v3;
  v5 = v2[5];
  v218[0] = v2[6];
  *(v218 + 10) = *(v2 + 106);
  v6 = v2[1];
  v213[0] = *v2;
  v213[1] = v6;
  v7 = v2[3];
  v9 = *v2;
  v8 = v2[1];
  v214 = v2[2];
  v215 = v7;
  v185[4] = v216;
  v185[5] = v5;
  v186[0] = v2[6];
  *(v186 + 10) = *(v2 + 106);
  v185[0] = v9;
  v185[1] = v8;
  v10 = *a1;
  v185[2] = v214;
  v185[3] = v4;
  outlined init with copy of Date.FormatStyle(v213, v184);
  ICUDateFormatter.DateFormatInfo.init(_:)(v185, &v180);
  v11 = specialized static ICUDateFormatter.cachedFormatter(for:)(&v180);
  v184[2] = *v182;
  v184[3] = *&v182[16];
  v184[4] = *&v182[32];
  v184[5] = v183;
  v184[0] = v180;
  v184[1] = v181;
  outlined destroy of ICUDateFormatter.DateFormatInfo(v184);
  if (!v11)
  {
    goto LABEL_106;
  }

  *&v185[0] = v10;
  v219 = ICUDateFormatter.attributedFormat(_:)(v12);
  if (!v219.value._0._object)
  {

LABEL_106:
    BigString.init(_:)();
    result = AttributedString.init(_:attributes:)(v185, MEMORY[0x1E69E7CC8], MEMORY[0x1E69E7CD0], &v180);
    v17 = v180;
    goto LABEL_107;
  }

  countAndFlagsBits = v219.value._0._countAndFlagsBits;
  object = v219.value._0._object;
  rawValue = v219.value._1._rawValue;

  BigString.init(_:)();
  v16 = MEMORY[0x1E69E7CD0];
  AttributedString.init(_:attributes:)(v187, MEMORY[0x1E69E7CC8], MEMORY[0x1E69E7CD0], v185);
  v17 = *&v185[0];
  v154 = *(rawValue + 2);
  if (!v154)
  {
LABEL_104:

LABEL_107:
    *a2 = v17;
    return result;
  }

  v18 = 0;
  v153 = rawValue + 32;
  v151 = object;
  v152 = rawValue;
  v150 = countAndFlagsBits;
  while (1)
  {
    if (v18 >= *(rawValue + 2))
    {
      goto LABEL_109;
    }

    v155 = v18;
    v19 = *&v153[24 * v18];
    *&v180 = countAndFlagsBits;
    *(&v180 + 1) = object;
    lazy protocol witness table accessor for type String and conformance String();

    v20 = String.Index.init<A>(utf16Offset:in:)();
    *&v180 = countAndFlagsBits;
    *(&v180 + 1) = object;

    v21 = String.Index.init<A>(utf16Offset:in:)();
    if (v21 >> 14 < v20 >> 14)
    {
      goto LABEL_110;
    }

    v22 = v21;

    _sSn10FoundationAA16AttributedStringV5IndexVRszrlE6_range2inSnyAEGSgSnySSADVG_qd__tcAA0bC8ProtocolRd__lufCAC_Tt2B5(v20, v22, v17, &v180);
    v162 = v181;
    if (*(&v181 + 1) == 2)
    {
      goto LABEL_116;
    }

    v156 = *&v182[24];
    v158 = *&v182[8];
    v160 = v180;
    v23 = MEMORY[0x1E69E7CC8];
    v178 = MEMORY[0x1E69E7CC8];
    v179 = v16;
    AttributeScopes.FoundationAttributes.DateFieldAttribute.Field.init(udateFormatField:)(v19, v174);
    v24 = v174[0];
    if (LOBYTE(v174[0]) == 17)
    {
      v163 = v23;
      goto LABEL_44;
    }

    v174[3] = &type metadata for AttributeScopes.FoundationAttributes.DateFieldAttribute.Field;
    v174[4] = lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.DateFieldAttribute.Field and conformance AttributeScopes.FoundationAttributes.DateFieldAttribute.Field();
    LOBYTE(v174[0]) = v24;
    v175 = xmmword_1812187D0;
    v176 = 1;
    v177 = 0;
    outlined init with copy of FloatingPointRoundingRule?(v174, &v169, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
    if (*(&v170 + 1))
    {
      v167[2] = v171;
      v167[3] = v172;
      v168 = v173;
      v167[0] = v169;
      v167[1] = v170;
      outlined init with copy of AttributedString._AttributeValue(v167, v165);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v26 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001ALL, 0x800000018147E880);
      v28 = *(v23 + 16);
      v29 = (v27 & 1) == 0;
      v30 = __OFADD__(v28, v29);
      v31 = v28 + v29;
      if (v30)
      {
        goto LABEL_115;
      }

      v32 = v27;
      if (*(v23 + 24) >= v31)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v164 = v26;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
          v50 = static _DictionaryStorage.copy(original:)();
          v33 = v50;
          v51 = *(v23 + 16);
          if (v51)
          {
            v52 = (v50 + 64);
            v53 = ((1 << *(v33 + 32)) + 63) >> 6;
            if (v33 != v23 || v52 >= v23 + 8 * v53 + 64)
            {
              memmove(v52, (v23 + 64), 8 * v53);
            }

            v54 = 0;
            *(v33 + 16) = v51;
            v55 = 1 << *(v23 + 32);
            v56 = *(v23 + 64);
            if (v55 < 64)
            {
              v57 = ~(-1 << v55);
            }

            else
            {
              v57 = -1;
            }

            v58 = v57 & v56;
            v59 = (v55 + 63) >> 6;
            if ((v57 & v56) != 0)
            {
              do
              {
                v60 = __clz(__rbit64(v58));
                v58 &= v58 - 1;
                v61 = v60 | (v54 << 6);
LABEL_38:
                v64 = 16 * v61;
                v65 = (*(MEMORY[0x1E69E7CC8] + 48) + 16 * v61);
                v67 = *v65;
                v66 = v65[1];
                v68 = 72 * v61;
                outlined init with copy of AttributedString._AttributeValue(*(MEMORY[0x1E69E7CC8] + 56) + 72 * v61, &v169);
                v69 = (*(v33 + 48) + v64);
                *v69 = v67;
                v69[1] = v66;
                v70 = *(v33 + 56) + v68;
                *v70 = v169;
                v71 = v170;
                v72 = v171;
                v73 = v172;
                *(v70 + 64) = v173;
                *(v70 + 32) = v72;
                *(v70 + 48) = v73;
                *(v70 + 16) = v71;
              }

              while (v58);
            }

            while (1)
            {
              v62 = v54 + 1;
              if (__OFADD__(v54, 1))
              {
                goto LABEL_117;
              }

              if (v62 >= v59)
              {
                break;
              }

              v63 = *(MEMORY[0x1E69E7CC8] + 8 * v62 + 64);
              ++v54;
              if (v63)
              {
                v58 = (v63 - 1) & v63;
                v61 = __clz(__rbit64(v63)) | (v62 << 6);
                v54 = v62;
                goto LABEL_38;
              }
            }
          }

          v26 = v164;
          if (v32)
          {
            goto LABEL_23;
          }

          goto LABEL_41;
        }

        v33 = v23;
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v31, isUniquelyReferenced_nonNull_native);
        v33 = v23;
        v26 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001ALL, 0x800000018147E880);
        if ((v32 & 1) != (v34 & 1))
        {
          goto LABEL_119;
        }
      }

      if (v32)
      {
LABEL_23:
        v42 = *(v33 + 56) + 72 * v26;
        v44 = *(v42 + 16);
        v43 = *(v42 + 32);
        v45 = *(v42 + 48);
        v173 = *(v42 + 64);
        v172 = v45;
        v169 = *v42;
        v170 = v44;
        v171 = v43;
        v46 = *(v33 + 56) + 72 * v26;
        v47 = v165[1];
        v48 = v165[2];
        v49 = v165[3];
        *(v46 + 64) = v166;
        *(v46 + 32) = v48;
        *(v46 + 48) = v49;
        *(v46 + 16) = v47;
        *v46 = v165[0];
        outlined destroy of AttributedString._AttributeValue(v167);
        goto LABEL_42;
      }

LABEL_41:
      specialized _NativeDictionary._insert(at:key:value:)(v26, 0xD00000000000001ALL, 0x800000018147E880, v165, v33);
      outlined destroy of AttributedString._AttributeValue(v167);
      v169 = 0u;
      v170 = 0u;
      v171 = 0u;
      v172 = 0u;
      v173 = 0;
      goto LABEL_42;
    }

    outlined destroy of TermOfAddress?(&v169, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
    v35 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001ALL, 0x800000018147E880);
    if (v36)
    {
      break;
    }

    v173 = 0;
    v171 = 0u;
    v172 = 0u;
    v169 = 0u;
    v170 = 0u;
LABEL_43:
    AttributedString._AttributeStorage._attributeModified(_:old:new:)(0xD00000000000001ALL, 0x800000018147E880, &v169, v174);
    outlined destroy of TermOfAddress?(v174, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
    outlined destroy of TermOfAddress?(&v169, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
    v163 = v178;
LABEL_44:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v74 = *(v17 + 40);
      v210 = *(v17 + 24);
      v211 = v74;
      v212 = *(v17 + 56);
      v75 = *(v17 + 72);
      v76 = *(v17 + 80);
      v77 = *(v17 + 88);
      v78 = *(v17 + 96);
      type metadata accessor for AttributedString.Guts();
      v79 = swift_allocObject();
      v80 = BigString.isEmpty.getter() & 1;
      outlined init with copy of BigString(&v210, v174);
      v81 = swift_unknownObjectRetain();
      specialized Rope._endPath.getter(v81);
      if (v75)
      {
        v82 = v77 == 0;
      }

      else
      {
        v82 = 1;
      }

      v83 = v82;
      if (v83 != v80)
      {
        goto LABEL_113;
      }

      if (one-time initialization token for _nextVersion != -1)
      {
        swift_once();
      }

      *(v79 + 16) = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
      v84 = v211;
      *(v79 + 24) = v210;
      *(v79 + 40) = v84;
      *(v79 + 56) = v212;
      *(v79 + 72) = v75;
      *(v79 + 80) = v76;
      *(v79 + 88) = v77;
      *(v79 + 96) = v78;
      *(v79 + 104) = MEMORY[0x1E69E7CC0];

      v17 = v79;
    }

    if (one-time initialization token for _nextVersion != -1)
    {
      swift_once();
    }

    *(v17 + 16) = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
    v85 = *(v17 + 40);
    v86 = *(v17 + 24);
    v209 = *(v17 + 56);
    v207 = v86;
    v208 = v85;
    BigString.startIndex.getter();
    BigString.endIndex.getter();
    v201 = v162;
    v200 = v160;
    v203 = v156;
    v202 = v158;
    v87 = *(v17 + 40);
    v204 = *(v17 + 24);
    v205 = v87;
    v206 = *(v17 + 56);
    swift_unknownObjectRetain();

    BigString.UnicodeScalarView.subscript.getter();
    swift_unknownObjectRelease();
    outlined destroy of BigSubstring.UnicodeScalarView(v185);
    if (one-time initialization token for currentIdentity != -1)
    {
      swift_once();
    }

    v88 = static AttributedString.currentIdentity;
    os_unfair_lock_lock((static AttributedString.currentIdentity + 24));
    v89 = *(v88 + 16);
    v30 = __OFADD__(v89, 1);
    v90 = v89 + 1;
    if (v30)
    {
      goto LABEL_111;
    }

    *(v88 + 16) = v90;
    os_unfair_lock_unlock((v88 + 24));
    BigString.init()();
    v174[0] = 0;
    MEMORY[0x1865D26B0](v174, 8);
    v91 = v174[0];
    type metadata accessor for AttributedString.Guts();
    v92 = swift_allocObject();
    if ((BigString.isEmpty.getter() & 1) == 0)
    {
      goto LABEL_112;
    }

    *(v92 + 16) = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
    v93 = v189;
    *(v92 + 24) = v188;
    *(v92 + 40) = v93;
    *(v92 + 56) = v190;
    *(v92 + 72) = 0;
    *(v92 + 80) = 0;
    *(v92 + 88) = 0;
    *(v92 + 96) = v91;
    *(v92 + 104) = MEMORY[0x1E69E7CC0];

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v94 = *(v17 + 40);
      v197 = *(v17 + 24);
      v198 = v94;
      v199 = *(v17 + 56);
      v96 = *(v17 + 72);
      v95 = *(v17 + 80);
      v97 = *(v17 + 88);
      v98 = *(v17 + 96);
      v99 = swift_allocObject();
      v100 = BigString.isEmpty.getter() & 1;
      outlined init with copy of BigString(&v197, v174);
      v101 = swift_unknownObjectRetain();
      specialized Rope._endPath.getter(v101);
      if (v96)
      {
        v102 = v97 == 0;
      }

      else
      {
        v102 = 1;
      }

      v103 = v102;
      if (v103 != v100)
      {
        goto LABEL_114;
      }

      *(v99 + 16) = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
      v104 = v198;
      *(v99 + 24) = v197;
      *(v99 + 40) = v104;
      *(v99 + 56) = v199;
      *(v99 + 72) = v96;
      *(v99 + 80) = v95;
      *(v99 + 88) = v97;
      *(v99 + 96) = v98;
      *(v99 + 104) = MEMORY[0x1E69E7CC0];

      v17 = v99;
    }

    v105 = *(v17 + 40);
    v194 = *(v17 + 24);
    v195 = v105;
    v196 = *(v17 + 56);
    swift_unknownObjectRetain();
    v106 = BigString.UnicodeScalarView.index(roundingDown:)();
    swift_unknownObjectRelease();
    v107 = *(v17 + 40);
    v191 = *(v17 + 24);
    v192 = v107;
    v193 = *(v17 + 56);
    swift_unknownObjectRetain();
    v108 = BigString.UnicodeScalarView.index(roundingDown:)();
    swift_unknownObjectRelease();
    v109 = v106 >> 11;
    v110 = v108 >> 11;

    specialized AttributedString._InternalRunsSlice.updateEach(with:)(v17, v106 >> 11, v110, v163, 0);

    if (specialized AttributedString._AttributeStorage.hasConstrainedAttributes.getter(v163))
    {
      v111 = 1 << *(v163 + 32);
      if (v111 < 64)
      {
        v112 = ~(-1 << v111);
      }

      else
      {
        v112 = -1;
      }

      v113 = v112 & *(v163 + 64);
      v114 = (v111 + 63) >> 6;

      v115 = 0;
      v161 = MEMORY[0x1E69E7CC0];
      if (!v113)
      {
        goto LABEL_77;
      }

      do
      {
LABEL_75:
        while (1)
        {
          v116 = __clz(__rbit64(v113));
          v113 &= v113 - 1;
          outlined init with copy of AttributedString._AttributeValue(*(v163 + 56) + 72 * (v116 | (v115 << 6)), v174);
          v117 = v175;
          outlined copy of AttributedString.AttributeRunBoundaries?(v175, *(&v175 + 1));
          outlined destroy of AttributedString._AttributeValue(v174);
          if (*(&v117 + 1) != 1)
          {
            break;
          }

          if (!v113)
          {
            goto LABEL_77;
          }
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v161 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v161 + 2) + 1, 1, v161);
        }

        v120 = *(v161 + 2);
        v119 = *(v161 + 3);
        v121 = v120 + 1;
        if (v120 >= v119 >> 1)
        {
          v159 = v120 + 1;
          v157 = *(v161 + 2);
          v122 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v119 > 1), v120 + 1, 1, v161);
          v121 = v159;
          v120 = v157;
          v161 = v122;
        }

        *(v161 + 2) = v121;
        *&v161[16 * v120 + 32] = v117;
      }

      while (v113);
LABEL_77:
      while (1)
      {
        v118 = v115 + 1;
        if (__OFADD__(v115, 1))
        {
          break;
        }

        if (v118 >= v114)
        {

          AttributedString.Guts.enforceAttributeConstraintsAfterMutation(in:type:constraintsInvolved:)(v109, v110, 0, v161);

          object = v151;
          rawValue = v152;
          countAndFlagsBits = v150;
          goto LABEL_6;
        }

        v113 = *(v163 + 64 + 8 * v118);
        ++v115;
        if (v113)
        {
          v115 = v118;
          goto LABEL_75;
        }
      }

      __break(1u);
LABEL_109:
      __break(1u);
LABEL_110:
      __break(1u);
LABEL_111:
      __break(1u);
LABEL_112:
      __break(1u);
LABEL_113:
      __break(1u);
LABEL_114:
      __break(1u);
LABEL_115:
      __break(1u);
LABEL_116:
      __break(1u);
LABEL_117:
      __break(1u);
      goto LABEL_118;
    }

    countAndFlagsBits = v150;
    object = v151;
    rawValue = v152;
LABEL_6:
    v18 = v155 + 1;

    v16 = MEMORY[0x1E69E7CD0];
    if (v155 + 1 == v154)
    {
      goto LABEL_104;
    }
  }

  v37 = v35;
  v33 = v23;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
  v123 = static _DictionaryStorage.copy(original:)();
  v33 = v123;
  v124 = *(v23 + 16);
  if (!v124)
  {
LABEL_103:

LABEL_19:

    v38 = *(v33 + 56) + 72 * v37;
    v169 = *v38;
    v40 = *(v38 + 32);
    v39 = *(v38 + 48);
    v41 = *(v38 + 64);
    v170 = *(v38 + 16);
    v171 = v40;
    v173 = v41;
    v172 = v39;
    specialized _NativeDictionary._delete(at:)(v37, v33);
LABEL_42:
    v178 = v33;
    goto LABEL_43;
  }

  v125 = (v123 + 64);
  v126 = ((1 << *(v33 + 32)) + 63) >> 6;
  v127 = MEMORY[0x1E69E7CC8];
  if (v33 != MEMORY[0x1E69E7CC8] || v125 >= MEMORY[0x1E69E7CC8] + 8 * v126 + 64)
  {
    memmove(v125, (MEMORY[0x1E69E7CC8] + 64), 8 * v126);
  }

  v128 = 0;
  *(v33 + 16) = v124;
  v129 = 1 << *(v127 + 32);
  v130 = *(v127 + 64);
  if (v129 < 64)
  {
    v131 = ~(-1 << v129);
  }

  else
  {
    v131 = -1;
  }

  v132 = v131 & v130;
  v133 = (v129 + 63) >> 6;
  if ((v131 & v130) != 0)
  {
    do
    {
      v134 = __clz(__rbit64(v132));
      v132 &= v132 - 1;
      v135 = v134 | (v128 << 6);
LABEL_101:
      v138 = 16 * v135;
      v139 = (*(MEMORY[0x1E69E7CC8] + 48) + 16 * v135);
      v141 = *v139;
      v140 = v139[1];
      v142 = 72 * v135;
      outlined init with copy of AttributedString._AttributeValue(*(MEMORY[0x1E69E7CC8] + 56) + 72 * v135, &v169);
      v143 = (*(v33 + 48) + v138);
      *v143 = v141;
      v143[1] = v140;
      v144 = *(v33 + 56) + v142;
      *v144 = v169;
      v145 = v170;
      v146 = v171;
      v147 = v172;
      *(v144 + 64) = v173;
      *(v144 + 32) = v146;
      *(v144 + 48) = v147;
      *(v144 + 16) = v145;
    }

    while (v132);
  }

  while (1)
  {
    v136 = v128 + 1;
    if (__OFADD__(v128, 1))
    {
      break;
    }

    if (v136 >= v133)
    {
      goto LABEL_103;
    }

    v137 = *(MEMORY[0x1E69E7CC8] + 8 * v136 + 64);
    ++v128;
    if (v137)
    {
      v132 = (v137 - 1) & v137;
      v135 = __clz(__rbit64(v137)) | (v136 << 6);
      v128 = v136;
      goto LABEL_101;
    }
  }

LABEL_118:
  __break(1u);
LABEL_119:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

double Date.FormatStyle.Attributed.locale(_:)@<D0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[5];
  v19 = v2[4];
  *v20 = v5;
  *&v20[16] = v2[6];
  v6 = *&v20[16];
  *&v20[26] = *(v2 + 106);
  v7 = v2[1];
  v15 = *v2;
  v16 = v7;
  v8 = v2[3];
  v17 = v2[2];
  v18 = v8;
  *(v22 + 10) = *&v20[26];
  v21[5] = v5;
  v22[0] = v6;
  v21[3] = v8;
  v21[4] = v19;
  v21[1] = v7;
  v21[2] = v17;
  v21[0] = v15;
  outlined init with copy of Date.FormatStyle.Attributed(&v15, v14);
  outlined destroy of Date.FormatStyle.Attributed(v21);
  v30 = v19;
  v28 = v17;
  v29 = v18;
  v26 = v15;
  v27 = v16;
  v23 = *&v20[8];
  v24 = *&v20[24];
  v25 = *&v20[40];
  outlined init with copy of Date.FormatStyle.Attributed(&v15, v14);
  v13 = *a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v9 = v29;
  *(a2 + 32) = v28;
  *(a2 + 48) = v9;
  *(a2 + 64) = v30;
  v10 = v27;
  *a2 = v26;
  *(a2 + 16) = v10;
  *(a2 + 72) = v13;
  result = *&v23;
  v12 = v24;
  *(a2 + 88) = v23;
  *(a2 + 104) = v12;
  *(a2 + 120) = v25;
  return result;
}

uint64_t static Date.FormatStyle.Attributed.== infix(_:_:)(__int128 *a1, __int128 *a2)
{
  v2 = a1[5];
  v3 = a1[3];
  v37 = a1[4];
  v38 = v2;
  v4 = a1[5];
  v39[0] = a1[6];
  *(v39 + 10) = *(a1 + 106);
  v5 = a1[1];
  v34[0] = *a1;
  v34[1] = v5;
  v6 = a1[3];
  v8 = *a1;
  v7 = a1[1];
  v35 = a1[2];
  v36 = v6;
  v9 = *a2;
  v10 = a2[1];
  v11 = a2[3];
  v40[2] = a2[2];
  v40[3] = v11;
  v12 = a2[1];
  v13 = a2[2];
  v14 = *a2;
  v40[0] = v9;
  v40[1] = v12;
  *(v43 + 10) = *(a2 + 106);
  v15 = a2[5];
  v43[0] = a2[6];
  v16 = a2[5];
  v17 = a2[3];
  v41 = a2[4];
  v42 = v16;
  v31 = v37;
  v32 = v4;
  v33[0] = a1[6];
  *(v33 + 10) = *(a1 + 106);
  v27 = v8;
  v28 = v7;
  v29 = v35;
  v30 = v3;
  v24 = v41;
  v25 = v15;
  v26[0] = a2[6];
  *(v26 + 10) = *(a2 + 106);
  v20 = v14;
  v21 = v10;
  v22 = v13;
  v23 = v17;
  outlined init with copy of Date.FormatStyle(v34, v46);
  outlined init with copy of Date.FormatStyle(v40, v46);
  v18 = specialized static Date.FormatStyle.== infix(_:_:)(&v27, &v20);
  v44[4] = v24;
  v44[5] = v25;
  v45[0] = v26[0];
  *(v45 + 10) = *(v26 + 10);
  v44[0] = v20;
  v44[1] = v21;
  v44[2] = v22;
  v44[3] = v23;
  outlined destroy of Date.FormatStyle(v44);
  v46[4] = v31;
  v46[5] = v32;
  v47[0] = v33[0];
  *(v47 + 10) = *(v33 + 10);
  v46[0] = v27;
  v46[1] = v28;
  v46[2] = v29;
  v46[3] = v30;
  outlined destroy of Date.FormatStyle(v46);
  return v18 & 1;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Date.FormatStyle.Attributed.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Date.FormatStyle.Attributed.CodingKeys and conformance Date.FormatStyle.Attributed.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Date.FormatStyle.Attributed.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Date.FormatStyle.Attributed.CodingKeys and conformance Date.FormatStyle.Attributed.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Date.FormatStyle.Attributed.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation4DateV11FormatStyleV10AttributedV10CodingKeys33_83F1B432FCCCE88C2D9349A2B9C9BC3DLLOGMd);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v11 - v5;
  v7 = v1[5];
  v24 = v1[4];
  v25 = v7;
  v26[0] = v1[6];
  *(v26 + 10) = *(v1 + 106);
  v8 = v1[1];
  v20 = *v1;
  v21 = v8;
  v9 = v1[3];
  v22 = v1[2];
  v23 = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  outlined init with copy of Date.FormatStyle(&v20, &v13);
  lazy protocol witness table accessor for type Date.FormatStyle.Attributed.CodingKeys and conformance Date.FormatStyle.Attributed.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = v24;
  v18 = v25;
  v19[0] = v26[0];
  *(v19 + 10) = *(v26 + 10);
  v13 = v20;
  v14 = v21;
  v15 = v22;
  v16 = v23;
  lazy protocol witness table accessor for type Date.FormatStyle and conformance Date.FormatStyle();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v11[4] = v17;
  v11[5] = v18;
  v12[0] = v19[0];
  *(v12 + 10) = *(v19 + 10);
  v11[0] = v13;
  v11[1] = v14;
  v11[2] = v15;
  v11[3] = v16;
  outlined destroy of Date.FormatStyle(v11);
  return (*(v4 + 8))(v6, v3);
}

uint64_t Date.FormatStyle.Attributed.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation4DateV11FormatStyleV10AttributedV10CodingKeys33_83F1B432FCCCE88C2D9349A2B9C9BC3DLLOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Date.FormatStyle.Attributed.CodingKeys and conformance Date.FormatStyle.Attributed.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    lazy protocol witness table accessor for type Date.FormatStyle and conformance Date.FormatStyle();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    v9 = v13[5];
    a2[4] = v13[4];
    a2[5] = v9;
    a2[6] = v14[0];
    *(a2 + 106) = *(v14 + 10);
    v10 = v13[1];
    *a2 = v13[0];
    a2[1] = v10;
    v11 = v13[3];
    a2[2] = v13[2];
    a2[3] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

double protocol witness for FormatStyle.locale(_:) in conformance Date.FormatStyle.Attributed@<D0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[5];
  v19 = v2[4];
  *v20 = v5;
  *&v20[16] = v2[6];
  v6 = *&v20[16];
  *&v20[26] = *(v2 + 106);
  v7 = v2[1];
  v15 = *v2;
  v16 = v7;
  v8 = v2[3];
  v17 = v2[2];
  v18 = v8;
  *(v22 + 10) = *&v20[26];
  v21[5] = v5;
  v22[0] = v6;
  v21[3] = v8;
  v21[4] = v19;
  v21[1] = v7;
  v21[2] = v17;
  v21[0] = v15;
  outlined init with copy of Date.FormatStyle.Attributed(&v15, v14);
  outlined destroy of Date.FormatStyle.Attributed(v21);
  v30 = v19;
  v28 = v17;
  v29 = v18;
  v26 = v15;
  v27 = v16;
  v23 = *&v20[8];
  v24 = *&v20[24];
  v25 = *&v20[40];
  outlined init with copy of Date.FormatStyle.Attributed(&v15, v14);
  v13 = *a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v9 = v29;
  *(a2 + 32) = v28;
  *(a2 + 48) = v9;
  *(a2 + 64) = v30;
  v10 = v27;
  *a2 = v26;
  *(a2 + 16) = v10;
  *(a2 + 72) = v13;
  result = *&v23;
  v12 = v24;
  *(a2 + 88) = v23;
  *(a2 + 104) = v12;
  *(a2 + 120) = v25;
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Date.FormatStyle.Attributed(__int128 *a1, __int128 *a2)
{
  v2 = a1[5];
  v3 = a1[3];
  v37 = a1[4];
  v38 = v2;
  v4 = a1[5];
  v39[0] = a1[6];
  *(v39 + 10) = *(a1 + 106);
  v5 = a1[1];
  v34[0] = *a1;
  v34[1] = v5;
  v6 = a1[3];
  v8 = *a1;
  v7 = a1[1];
  v35 = a1[2];
  v36 = v6;
  v9 = *a2;
  v10 = a2[1];
  v11 = a2[3];
  v40[2] = a2[2];
  v40[3] = v11;
  v12 = a2[1];
  v13 = a2[2];
  v14 = *a2;
  v40[0] = v9;
  v40[1] = v12;
  *(v43 + 10) = *(a2 + 106);
  v15 = a2[5];
  v43[0] = a2[6];
  v16 = a2[5];
  v17 = a2[3];
  v41 = a2[4];
  v42 = v16;
  v31 = v37;
  v32 = v4;
  v33[0] = a1[6];
  *(v33 + 10) = *(a1 + 106);
  v27 = v8;
  v28 = v7;
  v29 = v35;
  v30 = v3;
  v24 = v41;
  v25 = v15;
  v26[0] = a2[6];
  *(v26 + 10) = *(a2 + 106);
  v20 = v14;
  v21 = v10;
  v22 = v13;
  v23 = v17;
  outlined init with copy of Date.FormatStyle(v34, v46);
  outlined init with copy of Date.FormatStyle(v40, v46);
  v18 = specialized static Date.FormatStyle.== infix(_:_:)(&v27, &v20);
  v44[4] = v24;
  v44[5] = v25;
  v45[0] = v26[0];
  *(v45 + 10) = *(v26 + 10);
  v44[0] = v20;
  v44[1] = v21;
  v44[2] = v22;
  v44[3] = v23;
  outlined destroy of Date.FormatStyle(v44);
  v46[4] = v31;
  v46[5] = v32;
  v47[0] = v33[0];
  *(v47 + 10) = *(v33 + 10);
  v46[0] = v27;
  v46[1] = v28;
  v46[2] = v29;
  v46[3] = v30;
  outlined destroy of Date.FormatStyle(v46);
  return v18 & 1;
}

uint64_t Date.FormatStyle.attributedStyle.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1[5];
  v14 = v1[4];
  v2 = v14;
  v15 = v3;
  v16[0] = v1[6];
  v4 = v16[0];
  *(v16 + 10) = *(v1 + 106);
  v5 = *(v16 + 10);
  v6 = v1[1];
  v11[0] = *v1;
  v11[1] = v6;
  v8 = v1[3];
  v12 = v1[2];
  v7 = v12;
  v13 = v8;
  *a1 = v11[0];
  a1[1] = v6;
  a1[2] = v7;
  a1[3] = v8;
  a1[4] = v2;
  a1[5] = v3;
  a1[6] = v4;
  *(a1 + 106) = v5;
  return outlined init with copy of Date.FormatStyle(v11, &v10);
}

uint64_t Date.FormatStyle.era(_:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = v2[1];
  v27 = *v2;
  v28 = v4;
  v5 = v2[3];
  v29 = v2[2];
  v30 = v5;
  v6 = v2[5];
  v31 = v2[4];
  v32 = v6;
  v33[0] = v2[6];
  *(v33 + 10) = *(v2 + 106);
  v7 = *(&v27 + 1);
  v8 = v27;
  v9 = *(&v28 + 1);
  v10 = v28;
  v11 = *(&v29 + 1);
  v12 = v29;
  v13 = v30;
  if ((v29 & 0xFF000000000000) == 0x3000000000000)
  {
    if (v3 == 3)
    {
      v19 = *(v2 + 66);
      v20 = *(v2 + 82);
      v21 = *(v2 + 98);
      v22 = *(v2 + 114);
      v18 = *(v2 + 50);
      v16[0] = v27;
      v16[1] = v28;
      v16[2] = v29;
      v17 = v30;
      v14 = a2;
      Date.FormatStyle.symbols.getter(v23);
      a2 = v14;
      v8 = v23[0];
      v7 = v23[1];
      v10 = v23[2];
      v9 = v23[3];
      v12 = v24;
      v11 = v25;
      v13 = v26;
      if ((v24 & 0xFF000000000000) == 0x3000000000000)
      {
        LOBYTE(v3) = v23[0];
      }

      else
      {
        LOBYTE(v3) = 3;
      }
    }

    else
    {
      v11 = 0;
      v9 = 0;
      v7 = 0;
      LOBYTE(v16[0]) = 1;
      v12 = 0x2020E0906030100;
      v13 = 3327;
      v10 = 50660863;
      v8 = 3;
    }
  }

  *a2 = v8 & 0xFFFFFFFFFFFFFF00 | v3;
  *(a2 + 8) = v7;
  *(a2 + 16) = v10;
  *(a2 + 24) = v9;
  *(a2 + 32) = v12;
  *(a2 + 40) = v11;
  *(a2 + 48) = v13;
  *(a2 + 66) = *(v2 + 66);
  *(a2 + 82) = *(v2 + 82);
  *(a2 + 98) = *(v2 + 98);
  *(a2 + 114) = *(v2 + 114);
  *(a2 + 50) = *(v2 + 50);
  return outlined init with copy of Date.FormatStyle(&v27, v16);
}

uint64_t Date.FormatStyle.quarter(_:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = v2[1];
  v29 = *v2;
  v30 = v4;
  v5 = v2[3];
  v31 = v2[2];
  v32 = v5;
  v6 = v2[5];
  v33 = v2[4];
  v34 = v6;
  v35[0] = v2[6];
  *(v35 + 10) = *(v2 + 106);
  v7 = *(&v29 + 1);
  v8 = v29;
  v9 = *(&v30 + 1);
  v10 = v30;
  v11 = *(&v31 + 1);
  v12 = v31;
  v13 = v32;
  if ((v31 & 0xFF000000000000) == 0x3000000000000)
  {
    if (v3 == 5)
    {
      v19 = *(v2 + 66);
      v20 = *(v2 + 82);
      v21 = *(v2 + 98);
      v22 = *(v2 + 114);
      v18 = *(v2 + 50);
      v16[0] = v29;
      v16[1] = v30;
      v16[2] = v31;
      v17 = v32;
      v14 = a2;
      Date.FormatStyle.symbols.getter(v23);
      a2 = v14;
      v8 = v23[0];
      v7 = v23[1];
      v10 = v24;
      v9 = v25;
      v12 = v26;
      v11 = v27;
      v13 = v28;
      if ((v26 & 0xFF000000000000) == 0x3000000000000)
      {
        LOBYTE(v3) = BYTE1(v24);
      }

      else
      {
        LOBYTE(v3) = 5;
      }
    }

    else
    {
      v11 = 0;
      v9 = 0;
      v7 = 0;
      LOBYTE(v16[0]) = 1;
      v12 = 0x2020E0906030100;
      v13 = 3327;
      v8 = 3;
      v10 = 50660863;
    }
  }

  *a2 = v8;
  *(a2 + 8) = v7;
  *(a2 + 16) = v10 & 0xFFFFFFFFFFFF00FFLL | (v3 << 8);
  *(a2 + 24) = v9;
  *(a2 + 32) = v12;
  *(a2 + 40) = v11;
  *(a2 + 48) = v13;
  *(a2 + 66) = *(v2 + 66);
  *(a2 + 82) = *(v2 + 82);
  *(a2 + 98) = *(v2 + 98);
  *(a2 + 114) = *(v2 + 114);
  *(a2 + 50) = *(v2 + 50);
  return outlined init with copy of Date.FormatStyle(&v29, v16);
}

uint64_t Date.FormatStyle.week(_:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = v2[1];
  v29 = *v2;
  v30 = v4;
  v5 = v2[3];
  v31 = v2[2];
  v32 = v5;
  v6 = v2[5];
  v33 = v2[4];
  v34 = v6;
  v35[0] = v2[6];
  *(v35 + 10) = *(v2 + 106);
  v7 = *(&v29 + 1);
  v8 = v29;
  v9 = *(&v30 + 1);
  v10 = v30;
  v11 = *(&v31 + 1);
  v12 = v31;
  v13 = v32;
  if ((v31 & 0xFF000000000000) == 0x3000000000000)
  {
    if (v3 == 3)
    {
      v19 = *(v2 + 66);
      v20 = *(v2 + 82);
      v21 = *(v2 + 98);
      v22 = *(v2 + 114);
      v18 = *(v2 + 50);
      v16[0] = v29;
      v16[1] = v30;
      v16[2] = v31;
      v17 = v32;
      v14 = a2;
      Date.FormatStyle.symbols.getter(v23);
      a2 = v14;
      v8 = v23[0];
      v7 = v23[1];
      v10 = v24;
      v9 = v25;
      v12 = v26;
      v11 = v27;
      v13 = v28;
      if ((v26 & 0xFF000000000000) == 0x3000000000000)
      {
        LOBYTE(v3) = BYTE3(v24);
      }

      else
      {
        LOBYTE(v3) = 3;
      }
    }

    else
    {
      v11 = 0;
      v9 = 0;
      v7 = 0;
      LOBYTE(v16[0]) = 1;
      v12 = 0x2020E0906030100;
      v13 = 3327;
      v8 = 3;
      v10 = 50660863;
    }
  }

  *a2 = v8;
  *(a2 + 8) = v7;
  *(a2 + 16) = v10 & 0xFFFFFFFF00FFFFFFLL | (v3 << 24);
  *(a2 + 24) = v9;
  *(a2 + 32) = v12;
  *(a2 + 40) = v11;
  *(a2 + 48) = v13;
  *(a2 + 66) = *(v2 + 66);
  *(a2 + 82) = *(v2 + 82);
  *(a2 + 98) = *(v2 + 98);
  *(a2 + 114) = *(v2 + 114);
  *(a2 + 50) = *(v2 + 50);
  return outlined init with copy of Date.FormatStyle(&v29, v16);
}

uint64_t Date.FormatStyle.dayOfYear(_:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(v2 + 16);
  v25[0] = *v2;
  v25[1] = v4;
  v5 = *(v2 + 80);
  v28 = *(v2 + 64);
  v29 = v5;
  v30[0] = *(v2 + 96);
  *(v30 + 10) = *(v2 + 106);
  v6 = *(v2 + 48);
  v26 = *(v2 + 32);
  v27 = v6;
  v7 = v25[0];
  v8 = *(&v26 + 1);
  v9 = v26;
  v10 = v27;
  if ((v26 & 0xFF000000000000) == 0x3000000000000)
  {
    if (v3 == 3)
    {
      v17 = *(v2 + 66);
      v18 = *(v2 + 82);
      v19 = *(v2 + 98);
      v20 = *(v2 + 114);
      v16 = *(v2 + 50);
      v14[0] = v25[0];
      v14[1] = v4;
      v14[2] = v26;
      v15 = v27;
      v11 = a2;
      Date.FormatStyle.symbols.getter(v21);
      a2 = v11;
      v7 = v21[0];
      v4 = v21[1];
      v12 = v22;
      v8 = v23;
      v10 = v24;
      v9 = v22;
      if ((v22 & 0xFF000000000000) == 0x3000000000000)
      {
        LOBYTE(v3) = BYTE2(v22);
      }

      else
      {
        LOBYTE(v3) = 3;
      }
    }

    else
    {
      v8 = 0;
      LOBYTE(v14[0]) = 1;
      v4 = xmmword_181223220;
      v7 = xmmword_18121B8E0;
      v9 = 256;
      v10 = 3327;
      v12 = 0x2020E0906030000;
    }
  }

  else
  {
    v12 = v26;
  }

  *a2 = v7;
  *(a2 + 16) = v4;
  *(a2 + 32) = v12 & 0xFFFFFFFFFF000000 | (v3 << 16) | v9;
  *(a2 + 40) = v8;
  *(a2 + 48) = v10;
  *(a2 + 66) = *(v2 + 66);
  *(a2 + 82) = *(v2 + 82);
  *(a2 + 98) = *(v2 + 98);
  *(a2 + 114) = *(v2 + 114);
  *(a2 + 50) = *(v2 + 50);
  return outlined init with copy of Date.FormatStyle(v25, v14);
}

uint64_t Date.FormatStyle.minute(_:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *v2;
  v31 = *(v2 + 16);
  v30 = v4;
  v5 = *(v2 + 80);
  v34 = *(v2 + 64);
  v35 = v5;
  v36[0] = *(v2 + 96);
  *(v36 + 10) = *(v2 + 106);
  v6 = *(v2 + 48);
  v32 = *(v2 + 32);
  v33 = v6;
  v7 = v31;
  v8 = v30;
  v9 = *(&v32 + 1);
  v10 = v32;
  v11 = v33;
  if ((v32 & 0xFF000000000000) == 0x3000000000000)
  {
    if (v3 == 2)
    {
      v22 = *(v2 + 66);
      v23 = *(v2 + 82);
      v24 = *(v2 + 98);
      v25 = *(v2 + 114);
      v21 = *(v2 + 50);
      v19[0] = v30;
      v19[1] = v31;
      v19[2] = v32;
      v20 = v33;
      v12 = a2;
      Date.FormatStyle.symbols.getter(v26);
      a2 = v12;
      v8 = v26[0];
      v7 = v26[1];
      v9 = v28;
      v11 = v29;
      v13 = v27 >> 8;
      v10 = v27 & 0xFFFFFFFFFFFF0000;
      v14 = v27;
    }

    else
    {
      v9 = 0;
      v14 = 0;
      LOBYTE(v13) = 1;
      v7 = xmmword_181223220;
      v8 = xmmword_18121B8E0;
      v10 = 0x2020E0906030000;
      v11 = 3327;
    }

    v17 = v14 & 0xFFFFFFFFFFFF00FFLL | (v13 << 8);
    v16 = v10 & 0xFF000000000000;
    v15 = v17 | v10 & 0xFFFFFFFF0000;
    if ((v10 & 0xFF000000000000) != 0x3000000000000)
    {
      v16 = v3 << 48;
    }
  }

  else
  {
    v15 = v32 & 0xFFFFFFFFFFFFLL;
    v16 = v3 << 48;
  }

  *a2 = v8;
  *(a2 + 16) = v7;
  *(a2 + 32) = v15 | v10 & 0xFF00000000000000 | v16;
  *(a2 + 40) = v9;
  *(a2 + 48) = v11;
  *(a2 + 66) = *(v2 + 66);
  *(a2 + 82) = *(v2 + 82);
  *(a2 + 98) = *(v2 + 98);
  *(a2 + 114) = *(v2 + 114);
  *(a2 + 50) = *(v2 + 50);
  return outlined init with copy of Date.FormatStyle(&v30, v19);
}

uint64_t Date.FormatStyle.second(_:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(v2 + 16);
  v24[0] = *v2;
  v24[1] = v4;
  v5 = *(v2 + 80);
  v27 = *(v2 + 64);
  v28 = v5;
  v29[0] = *(v2 + 96);
  *(v29 + 10) = *(v2 + 106);
  v6 = *(v2 + 48);
  v25 = *(v2 + 32);
  v26 = v6;
  v7 = v24[0];
  v8 = *(&v25 + 1);
  v9 = v25;
  v10 = v26;
  if ((v25 & 0xFF000000000000) == 0x3000000000000)
  {
    if (v3 == 2)
    {
      v16 = *(v2 + 66);
      v17 = *(v2 + 82);
      v18 = *(v2 + 98);
      v19 = *(v2 + 114);
      v15 = *(v2 + 50);
      v13[0] = v24[0];
      v13[1] = v4;
      v13[2] = v25;
      v14 = v26;
      v11 = a2;
      Date.FormatStyle.symbols.getter(v20);
      a2 = v11;
      v7 = v20[0];
      v4 = v20[1];
      v9 = v21;
      v8 = v22;
      v10 = v23;
      if ((v21 & 0xFF000000000000) == 0x3000000000000)
      {
        LOBYTE(v3) = HIBYTE(v21);
      }

      else
      {
        LOBYTE(v3) = 2;
      }
    }

    else
    {
      v8 = 0;
      LOBYTE(v13[0]) = 1;
      v9 = 0x2020E0906030100;
      v4 = xmmword_181223220;
      v7 = xmmword_18121B8E0;
      v10 = 3327;
    }
  }

  *a2 = v7;
  *(a2 + 16) = v4;
  *(a2 + 32) = v9 & 0xFFFFFFFFFFFFFFLL | (v3 << 56);
  *(a2 + 40) = v8;
  *(a2 + 48) = v10;
  *(a2 + 66) = *(v2 + 66);
  *(a2 + 82) = *(v2 + 82);
  *(a2 + 98) = *(v2 + 98);
  *(a2 + 114) = *(v2 + 114);
  *(a2 + 50) = *(v2 + 50);
  return outlined init with copy of Date.FormatStyle(v24, v13);
}

uint64_t Date.FormatStyle.secondFraction(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(v2 + 16);
  v24[0] = *v2;
  v24[1] = v5;
  v6 = *(v2 + 80);
  v27 = *(v2 + 64);
  v28 = v6;
  v29[0] = *(v2 + 96);
  *(v29 + 10) = *(v2 + 106);
  v7 = *(v2 + 48);
  v25 = *(v2 + 32);
  v26 = v7;
  v8 = v24[0];
  v9 = v25;
  if ((v25 & 0xFF000000000000) == 0x3000000000000)
  {
    if (v4 == 255)
    {
      v16 = *(v2 + 66);
      v17 = *(v2 + 82);
      v18 = *(v2 + 98);
      v19 = *(v2 + 114);
      v15 = *(v2 + 50);
      v13[0] = v24[0];
      v13[1] = v5;
      v13[2] = v25;
      v14 = v26;
      v11 = a2;
      Date.FormatStyle.symbols.getter(v20);
      a2 = v11;
      v8 = v20[0];
      v5 = v20[1];
      v9 = v21;
      v10 = HIBYTE(v23);
      if ((v21 & 0xFF000000000000) == 0x3000000000000)
      {
        v3 = v22;
        LOBYTE(v4) = v23;
      }

      else
      {
        LOBYTE(v4) = -1;
      }
    }

    else
    {
      LOBYTE(v13[0]) = 1;
      v9 = 0x2020E0906030100;
      v5 = xmmword_181223220;
      v8 = xmmword_18121B8E0;
      LOBYTE(v10) = 12;
    }
  }

  else
  {
    v10 = BYTE1(v26);
  }

  *a2 = v8;
  *(a2 + 16) = v5;
  *(a2 + 32) = v9;
  *(a2 + 40) = v3;
  *(a2 + 48) = v4 | (v10 << 8);
  *(a2 + 66) = *(v2 + 66);
  *(a2 + 82) = *(v2 + 82);
  *(a2 + 98) = *(v2 + 98);
  *(a2 + 114) = *(v2 + 114);
  *(a2 + 50) = *(v2 + 50);
  return outlined init with copy of Date.FormatStyle(v24, v13);
}

uint64_t Date.FormatStyle.timeZone(_:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *v2;
  v30 = *(v2 + 16);
  v29 = v4;
  v5 = *(v2 + 80);
  v33 = *(v2 + 64);
  v34 = v5;
  v35[0] = *(v2 + 96);
  *(v35 + 10) = *(v2 + 106);
  v6 = *(v2 + 48);
  v31 = *(v2 + 32);
  v32 = v6;
  v7 = v30;
  v8 = v29;
  v9 = *(&v31 + 1);
  v10 = v31;
  v11 = v32;
  if ((v31 & 0xFF000000000000) == 0x3000000000000)
  {
    if (v3 == 12)
    {
      v21 = *(v2 + 66);
      v22 = *(v2 + 82);
      v23 = *(v2 + 98);
      v24 = *(v2 + 114);
      v20 = *(v2 + 50);
      v18[0] = v29;
      v18[1] = v30;
      v18[2] = v31;
      v19 = v32;
      v12 = a2;
      Date.FormatStyle.symbols.getter(v25);
      a2 = v12;
      v8 = v25[0];
      v7 = v25[1];
      v9 = v27;
      v13 = v26 >> 8;
      v11 = v28;
      v14 = HIBYTE(v28);
      v15 = v26 & 0xFFFFFFFFFFFF0000;
      v16 = v26;
    }

    else
    {
      v9 = 0;
      v16 = 0;
      LOBYTE(v13) = 1;
      v7 = xmmword_181223220;
      v8 = xmmword_18121B8E0;
      v15 = 0x2020E0906030000;
      LOBYTE(v14) = 12;
      v11 = -1;
    }

    v10 = v16 & 0xFFFFFFFFFFFF00FFLL | (v13 << 8) | v15;
    if ((v15 & 0xFF000000000000) == 0x3000000000000)
    {
      LOBYTE(v3) = v14;
    }
  }

  *a2 = v8;
  *(a2 + 16) = v7;
  *(a2 + 32) = v10;
  *(a2 + 40) = v9;
  *(a2 + 48) = v11 | (v3 << 8);
  *(a2 + 66) = *(v2 + 66);
  *(a2 + 82) = *(v2 + 82);
  *(a2 + 98) = *(v2 + 98);
  *(a2 + 114) = *(v2 + 114);
  *(a2 + 50) = *(v2 + 50);
  return outlined init with copy of Date.FormatStyle(&v29, v18);
}

double Date.FormatStyle.Attributed.day(_:)@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 9);
  v7 = v2[5];
  v23[4] = v2[4];
  v23[5] = v7;
  v24[0] = v2[6];
  *(v24 + 10) = *(v2 + 106);
  v8 = v2[1];
  v23[0] = *v2;
  v23[1] = v8;
  v9 = v2[3];
  v23[2] = v2[2];
  v23[3] = v9;
  v20 = v4;
  v21 = v5;
  v22 = v6;
  Date.FormatStyle.day(_:)(&v20, v27);
  v10 = v2[5];
  v25[4] = v2[4];
  v25[5] = v10;
  v26[0] = v2[6];
  *(v26 + 10) = *(v2 + 106);
  v11 = v2[1];
  v25[0] = *v2;
  v25[1] = v11;
  v12 = v2[3];
  v25[2] = v2[2];
  v25[3] = v12;
  outlined init with copy of Date.FormatStyle.Attributed(v23, v33);
  outlined init with copy of Date.FormatStyle.Attributed(v23, v33);
  outlined destroy of Date.FormatStyle(v25);
  v13 = v2[5];
  v33[4] = v2[4];
  v33[5] = v13;
  v34[0] = v2[6];
  *(v34 + 10) = *(v2 + 106);
  v14 = v2[1];
  v33[0] = *v2;
  v33[1] = v14;
  v15 = v2[3];
  v33[2] = v2[2];
  v33[3] = v15;
  outlined destroy of Date.FormatStyle.Attributed(v33);
  v16 = v31;
  a2[4] = v30;
  a2[5] = v16;
  a2[6] = v32[0];
  *(a2 + 106) = *(v32 + 10);
  v17 = v27[1];
  *a2 = v27[0];
  a2[1] = v17;
  result = *&v28;
  v19 = v29;
  a2[2] = v28;
  a2[3] = v19;
  return result;
}

double Date.FormatStyle.Attributed.year(_:)@<D0>(uint64_t *a1@<X0>, void (*a2)(_OWORD *__return_ptr, uint64_t *)@<X1>, _OWORD *a3@<X8>)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = v3[5];
  v22[4] = v3[4];
  v22[5] = v7;
  v23[0] = v3[6];
  *(v23 + 10) = *(v3 + 106);
  v8 = v3[1];
  v22[0] = *v3;
  v22[1] = v8;
  v9 = v3[3];
  v22[2] = v3[2];
  v22[3] = v9;
  v20 = v5;
  v21 = v6;
  a2(v26, &v20);
  v10 = v3[5];
  v24[4] = v3[4];
  v24[5] = v10;
  v25[0] = v3[6];
  *(v25 + 10) = *(v3 + 106);
  v11 = v3[1];
  v24[0] = *v3;
  v24[1] = v11;
  v12 = v3[3];
  v24[2] = v3[2];
  v24[3] = v12;
  outlined init with copy of Date.FormatStyle.Attributed(v22, v32);
  outlined init with copy of Date.FormatStyle.Attributed(v22, v32);
  outlined destroy of Date.FormatStyle(v24);
  v13 = v3[5];
  v32[4] = v3[4];
  v32[5] = v13;
  v33[0] = v3[6];
  *(v33 + 10) = *(v3 + 106);
  v14 = v3[1];
  v32[0] = *v3;
  v32[1] = v14;
  v15 = v3[3];
  v32[2] = v3[2];
  v32[3] = v15;
  outlined destroy of Date.FormatStyle.Attributed(v32);
  v16 = v30;
  a3[4] = v29;
  a3[5] = v16;
  a3[6] = v31[0];
  *(a3 + 106) = *(v31 + 10);
  v17 = v26[1];
  *a3 = v26[0];
  a3[1] = v17;
  result = *&v27;
  v19 = v28;
  a3[2] = v27;
  a3[3] = v19;
  return result;
}

double Date.FormatStyle.Attributed.era(_:)@<D0>(char *a1@<X0>, void (*a2)(_OWORD *__return_ptr, char *)@<X1>, _OWORD *a3@<X8>)
{
  v5 = *a1;
  v6 = v3[5];
  v20[4] = v3[4];
  v20[5] = v6;
  v21[0] = v3[6];
  *(v21 + 10) = *(v3 + 106);
  v7 = v3[1];
  v20[0] = *v3;
  v20[1] = v7;
  v8 = v3[3];
  v20[2] = v3[2];
  v20[3] = v8;
  v19 = v5;
  a2(v24, &v19);
  v9 = v3[5];
  v22[4] = v3[4];
  v22[5] = v9;
  v23[0] = v3[6];
  *(v23 + 10) = *(v3 + 106);
  v10 = v3[1];
  v22[0] = *v3;
  v22[1] = v10;
  v11 = v3[3];
  v22[2] = v3[2];
  v22[3] = v11;
  outlined init with copy of Date.FormatStyle.Attributed(v20, v30);
  outlined init with copy of Date.FormatStyle.Attributed(v20, v30);
  outlined destroy of Date.FormatStyle(v22);
  v12 = v3[5];
  v30[4] = v3[4];
  v30[5] = v12;
  v31[0] = v3[6];
  *(v31 + 10) = *(v3 + 106);
  v13 = v3[1];
  v30[0] = *v3;
  v30[1] = v13;
  v14 = v3[3];
  v30[2] = v3[2];
  v30[3] = v14;
  outlined destroy of Date.FormatStyle.Attributed(v30);
  v15 = v28;
  a3[4] = v27;
  a3[5] = v15;
  a3[6] = v29[0];
  *(a3 + 106) = *(v29 + 10);
  v16 = v24[1];
  *a3 = v24[0];
  a3[1] = v16;
  result = *&v25;
  v18 = v26;
  a3[2] = v25;
  a3[3] = v18;
  return result;
}

Foundation::Date __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Date.FormatStyle.parse(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v5 = v1;
  v175 = *MEMORY[0x1E69E9840];
  v6 = v2[5];
  v7 = v2[3];
  v172 = v2[4];
  v173 = v6;
  v8 = v2[5];
  v174[0] = v2[6];
  *(v174 + 10) = *(v2 + 106);
  v9 = v2[1];
  v169[0] = *v2;
  v169[1] = v9;
  v10 = v2[3];
  v12 = *v2;
  v11 = v2[1];
  v170 = v2[2];
  v171 = v10;
  v167[3] = v172;
  v167[4] = v8;
  v168[0] = v2[6];
  *(v168 + 10) = *(v2 + 106);
  v166 = v12;
  v167[0] = v11;
  v167[1] = v170;
  v167[2] = v7;
  outlined init with copy of Date.FormatStyle(v169, v165);
  ICUDateFormatter.DateFormatInfo.init(_:)(&v166.tv_sec, v165);
  v13 = specialized static ICUDateFormatter.cachedFormatter(for:)(v165);
  v164[2] = v165[2];
  v164[3] = v165[3];
  v164[4] = v165[4];
  v164[5] = v165[5];
  v164[0] = v165[0];
  v164[1] = v165[1];
  outlined destroy of ICUDateFormatter.DateFormatInfo(v164);
  if (v13)
  {
    *&v165[0] = countAndFlagsBits;
    *(&v165[0] + 1) = object;
    udat_getCalendar();
    ucal_clone();
    v14 = MEMORY[0x1865CB200](countAndFlagsBits, object);
    if (v14)
    {
      v15 = v14;
      v16 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs6UInt16V_Tt1gq5(v14, 0);

      v17 = specialized Sequence._copySequenceContents(initializing:)(&v166, (v16 + 4), v15, countAndFlagsBits, object);

      if (v17 != v15)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else
    {
      v16 = MEMORY[0x1E69E7CC0];
    }

    lazy protocol witness table accessor for type String and conformance String();
    v26 = String.Index.utf16Offset<A>(in:)();
    if (v26 < 0xFFFFFFFF80000000)
    {
LABEL_203:
      __break(1u);
      goto LABEL_204;
    }

    v27 = v26;
    if (v26 > 0x7FFFFFFF)
    {
LABEL_204:
      __break(1u);
      goto LABEL_205;
    }

    LODWORD(v166.tv_sec) = v26;
    if (v16[2] >> 31)
    {
LABEL_205:
      __break(1u);
      goto LABEL_206;
    }

    udat_parseCalendar();

    if (v27 != SLODWORD(v166.tv_sec))
    {
      ucal_getMillis();
      v56 = v55 / 1000.0 + -978307200.0;
      ucal_close();

      *v5 = v56;
      return result;
    }

    ucal_close();
    v166.tv_sec = 0;
    v166.tv_nsec = 0;
    clock_gettime(_CLOCK_REALTIME, &v166);

    v28 = specialized _withResizingUCharBuffer(initialSize:_:)(32);
    v30 = v29;

    v166.tv_sec = 0;
    v166.tv_nsec = 0xE000000000000000;
    if (v30)
    {
      _StringGuts.grow(_:)(89);
      MEMORY[0x1865CB0E0](0x7020746F6E6E6143, 0xED00002065737261);
      MEMORY[0x1865CB0E0](countAndFlagsBits, object);
      MEMORY[0x1865CB0E0](46, 0xE100000000000000);
      MEMORY[0x1865CB0E0](0xD000000000000045, 0x800000018147DB60);
      v31 = v28;
      v32 = v30;
    }

    else
    {
      _StringGuts.grow(_:)(17);

      strcpy(&v166, "Cannot parse ");
      HIWORD(v166.tv_nsec) = -4864;
      v31 = countAndFlagsBits;
      v32 = object;
    }

    MEMORY[0x1865CB0E0](v31, v32);
    MEMORY[0x1865CB0E0](46, 0xE100000000000000);
    tv_sec = v166.tv_sec;
    tv_nsec = v166.tv_nsec;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd);
    v35 = swift_allocObject();
    isTaggedPointer = _objc_isTaggedPointer(@"NSDebugDescription");
    v37 = @"NSDebugDescription";
    v38 = v37;
    if (!isTaggedPointer)
    {
      goto LABEL_27;
    }

    TaggedPointerTag = _objc_getTaggedPointerTag(v37);
    if (TaggedPointerTag)
    {
      if (TaggedPointerTag != 22)
      {
        if (TaggedPointerTag == 2)
        {
          MEMORY[0x1EEE9AC00](TaggedPointerTag);
          v40 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v42 = v41;

          goto LABEL_55;
        }

LABEL_27:
        LOBYTE(v165[0]) = 0;
        v166.tv_sec = 0;
        if (__CFStringIsCF())
        {
          if (v166.tv_sec)
          {
LABEL_54:
            v40 = String.init(_cocoaString:)();
            v42 = v58;
LABEL_55:
            v59 = MEMORY[0x1E69E6158];
            v35[4] = v40;
            v35[5] = v42;
            v35[9] = v59;
            v35[6] = tv_sec;
            v35[7] = tv_nsec;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd);
            v60 = static _DictionaryStorage.allocate(capacity:)();
            outlined init with copy of FloatingPointRoundingRule?((v35 + 4), &v166, &_sSS_yptMd);
            swift_setDeallocating();

            outlined destroy of TermOfAddress?((v35 + 4), &_sSS_yptMd);
            swift_deallocClassInstance();
            v61 = v166.tv_sec;
            v62 = v166.tv_nsec;
            v63 = specialized __RawDictionaryStorage.find<A>(_:)(v166.tv_sec, v166.tv_nsec);
            v65 = v64;

            if (v65)
            {
              __break(1u);
            }

            else
            {
              v60[(v63 >> 6) + 8] |= 1 << v63;
              v66 = (v60[6] + 16 * v63);
              *v66 = v61;
              v66[1] = v62;
              outlined init with take of Any(v167, (v60[7] + 32 * v63));
              v67 = v60[2];
              v68 = __OFADD__(v67, 1);
              v69 = v67 + 1;
              if (!v68)
              {
                v60[2] = v69;
                v70 = _objc_isTaggedPointer(@"NSCocoaErrorDomain");
                v71 = @"NSCocoaErrorDomain";
                v72 = v71;
                if (!v70)
                {
LABEL_62:
                  LOBYTE(v165[0]) = 0;
                  v166.tv_sec = 0;
                  if (!__CFStringIsCF())
                  {
                    v74 = v72;
                    String.init(_nativeStorage:)();
                    if (v75 || (v166.tv_sec = [(__CFString *)v74 length]) == 0)
                    {

                      goto LABEL_77;
                    }

                    goto LABEL_76;
                  }

                  if (v166.tv_sec)
                  {
LABEL_76:
                    String.init(_cocoaString:)();
LABEL_77:
                    v79 = objc_allocWithZone(NSError);
                    v80 = String._bridgeToObjectiveCImpl()();

                    v81 = [v79 initWithDomain:v80 code:2048 userInfo:_NativeDictionary.bridged()()];
                    swift_unknownObjectRelease();
                    swift_unknownObjectRelease();
                    v82 = [v81 domain];
                    if (!v82)
                    {
                      goto LABEL_89;
                    }

                    v83 = v82;
                    v84 = _objc_isTaggedPointer(v82);
                    v85 = v83;
                    v86 = v85;
                    if ((v84 & 1) == 0)
                    {
LABEL_83:
                      LOBYTE(v165[0]) = 0;
                      v166.tv_sec = 0;
                      if (__CFStringIsCF())
                      {
                        if (v166.tv_sec)
                        {
LABEL_98:
                          v88 = String.init(_cocoaString:)();
                          v90 = v97;
                          goto LABEL_99;
                        }
                      }

                      else
                      {
                        v91 = v86;
                        v92 = String.init(_nativeStorage:)();
                        if (v93)
                        {
                          v88 = v92;
                          v90 = v93;

                          goto LABEL_100;
                        }

                        v166.tv_sec = [v91 length];
                        if (v166.tv_sec)
                        {
                          goto LABEL_98;
                        }
                      }

LABEL_89:
                      v88 = 0;
                      v90 = 0xE000000000000000;
                      goto LABEL_100;
                    }

                    v87 = _objc_getTaggedPointerTag(v85);
                    if (v87)
                    {
                      if (v87 != 22)
                      {
                        if (v87 == 2)
                        {
                          MEMORY[0x1EEE9AC00](v87);
                          v88 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                          v90 = v89;

LABEL_100:
                          v98 = v72;
                          v99 = v98;
                          if (!v70)
                          {
                            goto LABEL_105;
                          }

                          v100 = _objc_getTaggedPointerTag(v98);
                          if (!v100)
                          {
                            goto LABEL_115;
                          }

                          if (v100 != 22)
                          {
                            if (v100 == 2)
                            {
                              MEMORY[0x1EEE9AC00](v100);
                              v101 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                              v103 = v102;

LABEL_121:
                              if (v88 == v101 && v90 == v103)
                              {
                              }

                              else
                              {
                                v111 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                if ((v111 & 1) == 0)
                                {
LABEL_202:
                                  __break(1u);
                                  goto LABEL_203;
                                }
                              }

                              swift_willThrow();

                              return result;
                            }

LABEL_105:
                            LOBYTE(v165[0]) = 0;
                            v166.tv_sec = 0;
                            if (__CFStringIsCF())
                            {
                              if (v166.tv_sec)
                              {
                                goto LABEL_120;
                              }
                            }

                            else
                            {
                              v104 = v99;
                              v105 = String.init(_nativeStorage:)();
                              if (v106)
                              {
                                v101 = v105;
                                v103 = v106;

                                goto LABEL_121;
                              }

                              v166.tv_sec = [(__CFString *)v104 length];
                              if (v166.tv_sec)
                              {
LABEL_120:
                                v101 = String.init(_cocoaString:)();
                                v103 = v110;
                                goto LABEL_121;
                              }
                            }

                            v101 = 0;
                            v103 = 0xE000000000000000;
                            goto LABEL_121;
                          }

                          v107 = [(__CFString *)v99 UTF8String];
                          if (v107)
                          {
                            v108 = String.init(utf8String:)(v107);
                            if (v109)
                            {
LABEL_116:
                              v101 = v108;
                              v103 = v109;

                              goto LABEL_121;
                            }

                            __break(1u);
LABEL_115:
                            _CFIndirectTaggedPointerStringGetContents();
                            v108 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
                            if (!v109)
                            {
                              [(__CFString *)v99 mutableCopy];
                              _bridgeAnyObjectToAny(_:)();

                              swift_unknownObjectRelease();
                              swift_dynamicCast();
                              v103 = *(&v165[0] + 1);
                              v101 = *&v165[0];
                              goto LABEL_121;
                            }

                            goto LABEL_116;
                          }

                          goto LABEL_209;
                        }

                        goto LABEL_83;
                      }

                      v94 = [v86 UTF8String];
                      if (!v94)
                      {
LABEL_210:
                        __break(1u);
                        goto LABEL_211;
                      }

                      v95 = String.init(utf8String:)(v94);
                      if (v96)
                      {
                        goto LABEL_94;
                      }

                      __break(1u);
                    }

                    _CFIndirectTaggedPointerStringGetContents();
                    v95 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
                    if (!v96)
                    {
                      [v86 mutableCopy];
                      _bridgeAnyObjectToAny(_:)();

                      swift_unknownObjectRelease();
                      swift_dynamicCast();
                      v90 = *(&v165[0] + 1);
                      v88 = *&v165[0];
                      goto LABEL_99;
                    }

LABEL_94:
                    v88 = v95;
                    v90 = v96;

LABEL_99:
                    goto LABEL_100;
                  }

LABEL_72:

                  goto LABEL_77;
                }

                v73 = _objc_getTaggedPointerTag(v71);
                if (!v73)
                {
LABEL_71:
                  _CFIndirectTaggedPointerStringGetContents();
                  _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
                  if (!v78)
                  {
                    [(__CFString *)v72 mutableCopy];
                    _bridgeAnyObjectToAny(_:)();

                    swift_unknownObjectRelease();
                    swift_dynamicCast();
                    goto LABEL_77;
                  }

                  goto LABEL_72;
                }

                if (v73 != 22)
                {
                  if (v73 == 2)
                  {
                    MEMORY[0x1EEE9AC00](v73);
                    String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

                    goto LABEL_77;
                  }

                  goto LABEL_62;
                }

                v76 = [(__CFString *)v72 UTF8String];
                if (v76)
                {
                  String.init(utf8String:)(v76);
                  if (v77)
                  {
                    goto LABEL_72;
                  }

                  __break(1u);
                  goto LABEL_71;
                }

LABEL_208:
                __break(1u);
LABEL_209:
                __break(1u);
                goto LABEL_210;
              }
            }

            __break(1u);
            goto LABEL_200;
          }
        }

        else
        {
          v43 = v38;
          v44 = String.init(_nativeStorage:)();
          if (v45)
          {
            v40 = v44;
            v42 = v45;

            goto LABEL_55;
          }

          v166.tv_sec = [(__CFString *)v43 length];
          if (v166.tv_sec)
          {
            goto LABEL_54;
          }
        }

        v40 = 0;
        v42 = 0xE000000000000000;
        goto LABEL_55;
      }

      v49 = [(__CFString *)v38 UTF8String];
      if (!v49)
      {
        __break(1u);
        goto LABEL_208;
      }

      v50 = String.init(utf8String:)(v49);
      if (v51)
      {
LABEL_40:
        v40 = v50;
        v42 = v51;

        goto LABEL_55;
      }

      __break(1u);
    }

    _CFIndirectTaggedPointerStringGetContents();
    v50 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v51)
    {
      [(__CFString *)v38 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v42 = *(&v165[0] + 1);
      v40 = *&v165[0];
      goto LABEL_55;
    }

    goto LABEL_40;
  }

LABEL_5:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd);
  v18 = swift_allocObject();
  v19 = _objc_isTaggedPointer(@"NSDebugDescription");
  v20 = @"NSDebugDescription";
  v21 = v20;
  if (!v19)
  {
    goto LABEL_10;
  }

  v22 = _objc_getTaggedPointerTag(v20);
  switch(v22)
  {
    case 0:
      goto LABEL_48;
    case 0x16:
      v52 = [(__CFString *)v21 UTF8String];
      if (v52)
      {
        v53 = String.init(utf8String:)(v52);
        if (v54)
        {
          goto LABEL_49;
        }

        __break(1u);
LABEL_48:
        _CFIndirectTaggedPointerStringGetContents();
        v53 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
        if (!v54)
        {
          [(__CFString *)v21 mutableCopy];
          _bridgeAnyObjectToAny(_:)();

          swift_unknownObjectRelease();
          swift_dynamicCast();
          v25 = *(&v165[0] + 1);
          v23 = *&v165[0];
          goto LABEL_127;
        }

LABEL_49:
        v23 = v53;
        v25 = v54;

        goto LABEL_127;
      }

LABEL_211:
      __break(1u);
      goto LABEL_212;
    case 2:
      MEMORY[0x1EEE9AC00](v22);
      v23 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v25 = v24;

      goto LABEL_127;
  }

LABEL_10:
  LOBYTE(v165[0]) = 0;
  v166.tv_sec = 0;
  if (!__CFStringIsCF())
  {
    v46 = v21;
    v47 = String.init(_nativeStorage:)();
    if (v48)
    {
      v23 = v47;
      v25 = v48;

      goto LABEL_127;
    }

    v166.tv_sec = [(__CFString *)v46 length];
    if (v166.tv_sec)
    {
      goto LABEL_126;
    }

LABEL_42:
    v23 = 0;
    v25 = 0xE000000000000000;
    goto LABEL_127;
  }

  if (!v166.tv_sec)
  {

    goto LABEL_42;
  }

LABEL_126:
  v23 = String.init(_cocoaString:)();
  v25 = v112;
LABEL_127:
  v18[4] = v23;
  v18[5] = v25;
  v18[9] = MEMORY[0x1E69E6158];
  v18[6] = 0xD000000000000021;
  v18[7] = 0x800000018147EA90;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd);
  v113 = static _DictionaryStorage.allocate(capacity:)();
  outlined init with copy of FloatingPointRoundingRule?((v18 + 4), &v166, &_sSS_yptMd);
  swift_setDeallocating();

  outlined destroy of TermOfAddress?((v18 + 4), &_sSS_yptMd);
  swift_deallocClassInstance();
  v114 = v166.tv_sec;
  v115 = v166.tv_nsec;
  v116 = specialized __RawDictionaryStorage.find<A>(_:)(v166.tv_sec, v166.tv_nsec);
  v118 = v117;

  if (v118)
  {
LABEL_200:
    __break(1u);
    goto LABEL_201;
  }

  v113[(v116 >> 6) + 8] |= 1 << v116;
  v119 = (v113[6] + 16 * v116);
  *v119 = v114;
  v119[1] = v115;
  outlined init with take of Any(v167, (v113[7] + 32 * v116));
  v120 = v113[2];
  v68 = __OFADD__(v120, 1);
  v121 = v120 + 1;
  if (v68)
  {
LABEL_201:
    __break(1u);
    goto LABEL_202;
  }

  v113[2] = v121;
  v122 = _objc_isTaggedPointer(@"NSCocoaErrorDomain");
  v123 = @"NSCocoaErrorDomain";
  v124 = v123;
  if (!v122)
  {
    goto LABEL_134;
  }

  v125 = _objc_getTaggedPointerTag(v123);
  switch(v125)
  {
    case 0:
LABEL_143:
      _CFIndirectTaggedPointerStringGetContents();
      _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v130)
      {
        [(__CFString *)v124 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        goto LABEL_149;
      }

      goto LABEL_144;
    case 0x16:
      v128 = [(__CFString *)v124 UTF8String];
      if (v128)
      {
        String.init(utf8String:)(v128);
        if (v129)
        {
          goto LABEL_144;
        }

        __break(1u);
        goto LABEL_143;
      }

LABEL_212:
      __break(1u);
LABEL_213:
      __break(1u);
      goto LABEL_214;
    case 2:
      MEMORY[0x1EEE9AC00](v125);
      String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

      goto LABEL_149;
  }

LABEL_134:
  LOBYTE(v165[0]) = 0;
  v166.tv_sec = 0;
  if (!__CFStringIsCF())
  {
    v126 = v124;
    String.init(_nativeStorage:)();
    if (v127 || (v166.tv_sec = [(__CFString *)v126 length]) == 0)
    {

      goto LABEL_149;
    }

    goto LABEL_148;
  }

  if (!v166.tv_sec)
  {
LABEL_144:

    goto LABEL_149;
  }

LABEL_148:
  String.init(_cocoaString:)();
LABEL_149:
  v131 = objc_allocWithZone(NSError);
  v132 = String._bridgeToObjectiveCImpl()();

  v133 = [v131 initWithDomain:v132 code:2048 userInfo:_NativeDictionary.bridged()()];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v134 = [v133 domain];
  if (!v134)
  {
    goto LABEL_161;
  }

  v135 = v134;
  v136 = _objc_isTaggedPointer(v134);
  v137 = v135;
  v138 = v137;
  if ((v136 & 1) == 0)
  {
LABEL_155:
    LOBYTE(v165[0]) = 0;
    v166.tv_sec = 0;
    if (__CFStringIsCF())
    {
      if (v166.tv_sec)
      {
LABEL_170:
        v140 = String.init(_cocoaString:)();
        v142 = v149;
        goto LABEL_171;
      }
    }

    else
    {
      v143 = v138;
      v144 = String.init(_nativeStorage:)();
      if (v145)
      {
        v140 = v144;
        v142 = v145;

        goto LABEL_172;
      }

      v166.tv_sec = [v143 length];
      if (v166.tv_sec)
      {
        goto LABEL_170;
      }
    }

LABEL_161:
    v140 = 0;
    v142 = 0xE000000000000000;
    goto LABEL_172;
  }

  v139 = _objc_getTaggedPointerTag(v137);
  if (!v139)
  {
    goto LABEL_165;
  }

  if (v139 != 22)
  {
    if (v139 == 2)
    {
      MEMORY[0x1EEE9AC00](v139);
      v140 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v142 = v141;

LABEL_172:
      v150 = v124;
      v151 = v150;
      if (!v122)
      {
        goto LABEL_177;
      }

      v152 = _objc_getTaggedPointerTag(v150);
      if (!v152)
      {
        goto LABEL_187;
      }

      if (v152 != 22)
      {
        if (v152 == 2)
        {
          MEMORY[0x1EEE9AC00](v152);
          v153 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v155 = v154;

          goto LABEL_193;
        }

LABEL_177:
        LOBYTE(v165[0]) = 0;
        v166.tv_sec = 0;
        if (__CFStringIsCF())
        {
          if (v166.tv_sec)
          {
LABEL_192:
            v153 = String.init(_cocoaString:)();
            v155 = v162;
LABEL_193:
            if (v140 == v153 && v142 == v155)
            {

LABEL_197:
              swift_willThrow();
              return result;
            }

            v163 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v163)
            {
              goto LABEL_197;
            }

LABEL_206:
            __break(1u);
          }
        }

        else
        {
          v156 = v151;
          v157 = String.init(_nativeStorage:)();
          if (v158)
          {
            v153 = v157;
            v155 = v158;

            goto LABEL_193;
          }

          v166.tv_sec = [(__CFString *)v156 length];
          if (v166.tv_sec)
          {
            goto LABEL_192;
          }
        }

        v153 = 0;
        v155 = 0xE000000000000000;
        goto LABEL_193;
      }

      v159 = [(__CFString *)v151 UTF8String];
      if (v159)
      {
        v160 = String.init(utf8String:)(v159);
        if (v161)
        {
          goto LABEL_188;
        }

        __break(1u);
LABEL_187:
        _CFIndirectTaggedPointerStringGetContents();
        v160 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
        if (!v161)
        {
          [(__CFString *)v151 mutableCopy];
          _bridgeAnyObjectToAny(_:)();

          swift_unknownObjectRelease();
          swift_dynamicCast();
          v155 = *(&v165[0] + 1);
          v153 = *&v165[0];
          goto LABEL_193;
        }

LABEL_188:
        v153 = v160;
        v155 = v161;

        goto LABEL_193;
      }

      goto LABEL_213;
    }

    goto LABEL_155;
  }

  v146 = [v138 UTF8String];
  if (v146)
  {
    v147 = String.init(utf8String:)(v146);
    if (v148)
    {
      goto LABEL_166;
    }

    __break(1u);
LABEL_165:
    _CFIndirectTaggedPointerStringGetContents();
    v147 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v148)
    {
      [v138 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v142 = *(&v165[0] + 1);
      v140 = *&v165[0];
      goto LABEL_171;
    }

LABEL_166:
    v140 = v147;
    v142 = v148;

LABEL_171:
    goto LABEL_172;
  }

LABEL_214:
  __break(1u);
  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance Date.FormatStyle.CodingKeys()
{
  v1 = *v0;
  v2 = 0x736C6F626D7973;
  v3 = 0x7261646E656C6163;
  v4 = 0xD000000000000015;
  if (v1 != 4)
  {
    v4 = 0x6C79745365746164;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x656C61636F6CLL;
  if (v1 != 1)
  {
    v5 = 0x656E6F5A656D6974;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Date.FormatStyle.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized Date.FormatStyle.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Date.FormatStyle.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Date.FormatStyle.CodingKeys and conformance Date.FormatStyle.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Date.FormatStyle.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Date.FormatStyle.CodingKeys and conformance Date.FormatStyle.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Date.FormatStyle.encode(to:)(void *a1)
{
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation4DateV11FormatStyleV10CodingKeysOGMd);
  v33 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v4 = &v22 - v3;
  v5 = v1[1];
  v37 = *v1;
  v38 = v5;
  v39 = v1[2];
  v6 = *(v1 + 7);
  v40 = *(v1 + 6);
  v7 = *(v1 + 64);
  *v43 = *(v1 + 65);
  *&v43[3] = *(v1 + 17);
  v8 = *(v1 + 9);
  v29 = *(v1 + 10);
  v9 = *(v1 + 12);
  v28 = *(v1 + 11);
  v10 = *(v1 + 14);
  v52 = *(v1 + 13);
  v34 = v10;
  v11 = *(v1 + 120);
  v30 = *(v1 + 121);
  v12 = a1[3];
  v13 = a1;
  LODWORD(a1) = v7;
  __swift_project_boxed_opaque_existential_1(v13, v12);
  lazy protocol witness table accessor for type Date.FormatStyle.CodingKeys and conformance Date.FormatStyle.CodingKeys();
  LODWORD(v12) = v11;
  v14 = v31;
  v15 = v6;
  v16 = v52;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v23 = v15;
  v41 = v15;
  v24 = a1;
  v42 = a1;
  v27 = v8;
  v44 = v8;
  v17 = v29;
  v18 = v28;
  v45 = v29;
  v46 = v28;
  v26 = v9;
  v47 = v9;
  v48 = v16;
  v49 = v34;
  v25 = v12;
  v50 = v12;
  v51 = v30;
  Date.FormatStyle.symbols.getter(v36);
  v35 = 0;
  lazy protocol witness table accessor for type Date.FormatStyle.DateFieldCollection and conformance Date.FormatStyle.DateFieldCollection();
  v19 = v32;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v19)
  {
    return (*(v33 + 8))(v4, v14);
  }

  *&v37 = v27;
  *(&v37 + 1) = v17;
  v36[0] = 1;
  lazy protocol witness table accessor for type Locale and conformance Locale();
  swift_unknownObjectRetain();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  swift_unknownObjectRelease();
  *&v37 = v18;
  *(&v37 + 1) = v26;
  v36[0] = 2;
  lazy protocol witness table accessor for type TimeZone and conformance TimeZone();
  swift_unknownObjectRetain();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v21 = v33;
  swift_unknownObjectRelease();
  *&v37 = v52;
  *(&v37 + 1) = v34;
  v36[0] = 3;
  lazy protocol witness table accessor for type Calendar and conformance Calendar();
  swift_unknownObjectRetain();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  swift_unknownObjectRelease();
  LOBYTE(v37) = v25;
  v36[0] = 4;
  lazy protocol witness table accessor for type FormatStyleCapitalizationContext and conformance FormatStyleCapitalizationContext();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  *&v37 = v23;
  BYTE8(v37) = v24 & 1;
  v36[0] = 5;
  lazy protocol witness table accessor for type Date.FormatStyle.DateStyle and conformance Date.FormatStyle.DateStyle();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  return (*(v21 + 8))(0, v14);
}

uint64_t Date.FormatStyle.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation4DateV11FormatStyleV10CodingKeysOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Date.FormatStyle.CodingKeys and conformance Date.FormatStyle.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v32 = 0;
    lazy protocol witness table accessor for type Date.FormatStyle.DateFieldCollection and conformance Date.FormatStyle.DateFieldCollection();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v22 = v26;
    v23 = v25;
    v9 = v28;
    v21 = v27;
    v10 = v29;
    v31 = 1;
    lazy protocol witness table accessor for type Locale and conformance Locale();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v18 = v9;
    v19 = v10;
    v20 = v24;
    v31 = 2;
    lazy protocol witness table accessor for type TimeZone and conformance TimeZone();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v17 = v24;
    v31 = 3;
    lazy protocol witness table accessor for type Calendar and conformance Calendar();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v16 = v24;
    v31 = 4;
    lazy protocol witness table accessor for type FormatStyleCapitalizationContext and conformance FormatStyleCapitalizationContext();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    LOBYTE(v10) = v24;
    v31 = 5;
    lazy protocol witness table accessor for type Date.FormatStyle.DateStyle and conformance Date.FormatStyle.DateStyle();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    v12 = v24;
    v13 = BYTE8(v24);
    v30 = BYTE8(v24);
    v14 = v22;
    *a2 = v23;
    *(a2 + 16) = v14;
    v15 = v18;
    *(a2 + 32) = v21;
    *(a2 + 40) = v15;
    *(a2 + 48) = v19;
    *(a2 + 56) = v12;
    *(a2 + 64) = v13;
    *(a2 + 72) = v20;
    *(a2 + 88) = v17;
    *(a2 + 104) = v16;
    *(a2 + 120) = v10;
    *(a2 + 121) = 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void Date.FormatStyle.Attributed.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 16);
  v64[2] = *v1;
  v64[3] = v3;
  v64[4] = *(v1 + 32);
  v65 = *(v1 + 48);
  v4 = *(v1 + 56);
  v5 = *(v1 + 64);
  v6 = *(v1 + 80);
  v7 = *(v1 + 96);
  v54 = *(v1 + 112);
  v8 = *(v1 + 120);
  v9 = *(v1 + 121);
  specialized Optional<A>.hash(into:)(a1);
  if (v5 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v4);
  }

  ObjectType = swift_getObjectType();
  if ((*(v6 + 48))(ObjectType, v6))
  {
    v11 = 1;
LABEL_8:
    Hasher._combine(_:)(v11);
    v12 = v8;
    v13 = v7;
    v14 = v54;
    goto LABEL_59;
  }

  Hasher._combine(_:)(0);
  (*(v6 + 64))(ObjectType, v6);
  String.hash(into:)();

  (*(v6 + 464))(&v55, ObjectType, v6);
  v63[6] = v61;
  v64[0] = *v62;
  *(v64 + 12) = *&v62[12];
  v63[2] = v57;
  v63[3] = v58;
  v63[4] = v59;
  v63[5] = v60;
  v63[0] = v55;
  v63[1] = v56;
  if (_s10Foundation17LocalePreferencesVSgWOg(v63) == 1)
  {
    v11 = 0;
    goto LABEL_8;
  }

  v53 = v9;
  v15 = v55;
  v16 = *(&v55 + 1);
  v17 = *(&v56 + 1);
  v18 = *(&v57 + 1);
  v43 = v58;
  v44 = v59;
  v45 = v60;
  v46 = v61;
  v47 = *v62;
  v48 = *&v62[16];
  v49 = v62[24];
  v50 = v62[25];
  v51 = v62[26];
  v52 = v62[27];
  Hasher._combine(_:)(1u);
  if (v15 == 2)
  {
    v19 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v19 = v15 & 1;
  }

  Hasher._combine(_:)(v19);
  if (v16)
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](*(v16 + 16));
    v20 = *(v16 + 16);
    if (v20)
    {
      v21 = v16 + 40;
      do
      {

        String.hash(into:)();

        v21 += 16;
        --v20;
      }

      while (v20);
    }

    v42 = v8;
    if (v17)
    {
      goto LABEL_17;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    v42 = v8;
    if (v17)
    {
LABEL_17:
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      goto LABEL_20;
    }
  }

  Hasher._combine(_:)(0);
LABEL_20:
  v13 = v7;
  if (v18)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v14 = v54;
  if (v43)
  {
    Hasher._combine(_:)(1u);
    specialized Dictionary<>.hash(into:)(a1, v43, v22, v23, v24, v25, v26, v27);
    v9 = v53;
    if (*(&v43 + 1))
    {
LABEL_25:
      Hasher._combine(_:)(1u);
      specialized Dictionary<>.hash(into:)(a1, *(&v43 + 1), v28, v29, v30, v31, v32, v33);
      goto LABEL_28;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    v9 = v53;
    if (*(&v43 + 1))
    {
      goto LABEL_25;
    }
  }

  Hasher._combine(_:)(0);
LABEL_28:
  v12 = v42;
  if (v44)
  {
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    lazy protocol witness table accessor for type _LocaleAutoupdating and conformance _LocaleAutoupdating(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
    _CFObject.hash(into:)();
    if (*(&v44 + 1))
    {
      goto LABEL_30;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (*(&v44 + 1))
    {
LABEL_30:
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      lazy protocol witness table accessor for type _LocaleAutoupdating and conformance _LocaleAutoupdating(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
      _CFObject.hash(into:)();
      if (v45)
      {
        goto LABEL_31;
      }

LABEL_35:
      v34 = v47;
      Hasher._combine(_:)(0);
      if (*(&v45 + 1))
      {
        goto LABEL_32;
      }

      goto LABEL_36;
    }
  }

  Hasher._combine(_:)(0);
  if (!v45)
  {
    goto LABEL_35;
  }

LABEL_31:
  v34 = v47;
  Hasher._combine(_:)(1u);
  type metadata accessor for CFDictionaryRef(0);
  lazy protocol witness table accessor for type _LocaleAutoupdating and conformance _LocaleAutoupdating(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
  _CFObject.hash(into:)();
  if (*(&v45 + 1))
  {
LABEL_32:
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    lazy protocol witness table accessor for type _LocaleAutoupdating and conformance _LocaleAutoupdating(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
    _CFObject.hash(into:)();
    goto LABEL_37;
  }

LABEL_36:
  Hasher._combine(_:)(0);
LABEL_37:
  v35 = v34;
  if (v46)
  {
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    lazy protocol witness table accessor for type _LocaleAutoupdating and conformance _LocaleAutoupdating(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
    _CFObject.hash(into:)();
    v36 = *(&v46 + 1);
    if (*(&v46 + 1))
    {
      goto LABEL_39;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    v36 = *(&v46 + 1);
    if (*(&v46 + 1))
    {
LABEL_39:
      Hasher._combine(_:)(1u);
      specialized Dictionary<>.hash(into:)(a1, v36);
      v37 = v49;
      if (v35)
      {
        goto LABEL_40;
      }

LABEL_44:
      Hasher._combine(_:)(0);
      if (v48)
      {
        goto LABEL_41;
      }

LABEL_45:
      Hasher._combine(_:)(0);
      goto LABEL_46;
    }
  }

  Hasher._combine(_:)(0);
  v37 = v49;
  if (!v35)
  {
    goto LABEL_44;
  }

LABEL_40:
  Hasher._combine(_:)(1u);
  specialized Dictionary<>.hash(into:)(a1, v35);
  if (!v48)
  {
    goto LABEL_45;
  }

LABEL_41:
  Hasher._combine(_:)(1u);
  String.hash(into:)();
LABEL_46:
  if (v37 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v37 & 1);
  }

  if (v50 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v50 & 1);
  }

  if (v51 == 2)
  {
    v38 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v38 = v51 & 1;
  }

  Hasher._combine(_:)(v38);
  if (v52 == 2)
  {
    v39 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v39 = v52 & 1;
  }

  Hasher._combine(_:)(v39);
  outlined destroy of TermOfAddress?(&v55, &_s10Foundation17LocalePreferencesVSgMd);
LABEL_59:
  v40 = swift_getObjectType();
  (*(v13 + 120))(a1, v40, v13);
  v41 = swift_getObjectType();
  (*(v14 + 120))(a1, v41, v14);
  MEMORY[0x1865CD060](v12);
  Hasher._combine(_:)(v9);
}