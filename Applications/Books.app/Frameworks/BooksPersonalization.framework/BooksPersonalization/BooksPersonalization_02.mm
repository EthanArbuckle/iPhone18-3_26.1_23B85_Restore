unint64_t sub_238E8()
{
  result = qword_228E30;
  if (!qword_228E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228E30);
  }

  return result;
}

unint64_t sub_23940()
{
  result = qword_228E38;
  if (!qword_228E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228E38);
  }

  return result;
}

unint64_t sub_23998()
{
  result = qword_228E40;
  if (!qword_228E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228E40);
  }

  return result;
}

unint64_t sub_239F0()
{
  result = qword_228E48;
  if (!qword_228E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228E48);
  }

  return result;
}

unint64_t sub_23A48()
{
  result = qword_228E50;
  if (!qword_228E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228E50);
  }

  return result;
}

unint64_t sub_23AA0()
{
  result = qword_228E58;
  if (!qword_228E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228E58);
  }

  return result;
}

unint64_t sub_23AF8()
{
  result = qword_228E60;
  if (!qword_228E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228E60);
  }

  return result;
}

unint64_t sub_23B50()
{
  result = qword_228E68;
  if (!qword_228E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228E68);
  }

  return result;
}

unint64_t sub_23BA8()
{
  result = qword_228E70;
  if (!qword_228E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228E70);
  }

  return result;
}

unint64_t sub_23C00()
{
  result = qword_228E78;
  if (!qword_228E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228E78);
  }

  return result;
}

unint64_t sub_23C58()
{
  result = qword_228E80;
  if (!qword_228E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228E80);
  }

  return result;
}

unint64_t sub_23CB0()
{
  result = qword_228E88;
  if (!qword_228E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228E88);
  }

  return result;
}

unint64_t sub_23D08()
{
  result = qword_228E90;
  if (!qword_228E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228E90);
  }

  return result;
}

unint64_t sub_23D60()
{
  result = qword_228E98;
  if (!qword_228E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228E98);
  }

  return result;
}

unint64_t sub_23DB8()
{
  result = qword_228EA0;
  if (!qword_228EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228EA0);
  }

  return result;
}

unint64_t sub_23E10()
{
  result = qword_228EA8;
  if (!qword_228EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228EA8);
  }

  return result;
}

unint64_t sub_23E98()
{
  result = qword_228EC0;
  if (!qword_228EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228EC0);
  }

  return result;
}

unint64_t sub_23EF0()
{
  result = qword_228EC8;
  if (!qword_228EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228EC8);
  }

  return result;
}

uint64_t sub_23F74(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1CC1C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23FCC()
{
  result = qword_228EE0;
  if (!qword_228EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228EE0);
  }

  return result;
}

unint64_t sub_24024()
{
  result = qword_228EE8;
  if (!qword_228EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228EE8);
  }

  return result;
}

unint64_t sub_2407C()
{
  result = qword_228EF0;
  if (!qword_228EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228EF0);
  }

  return result;
}

unint64_t sub_240D4()
{
  result = qword_228EF8;
  if (!qword_228EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228EF8);
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for Configuration.PersonalizationMetadataServiceConfiguration(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

__n128 initializeBufferWithCopyOfBuffer for DatedAffinity(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_24194(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_241F0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_24274(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 2;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24298(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_242B0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 3;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

__n128 sub_242D4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_242F0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_2434C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

void *sub_243CC(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t _s26RecommendationBlockRequestV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s26RecommendationBlockRequestV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 sub_24594(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_245A8(uint64_t a1, int a2)
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

uint64_t sub_245F0(uint64_t result, int a2, int a3)
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

uint64_t sub_2465C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_246A4(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

__n128 sub_24710(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_24724(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 25))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24744(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 25) = v3;
  return result;
}

__n128 sub_24794(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for Configuration.ScorersConfiguration.BookHistoryScorerConfiguration.DeclinedConfiguration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Configuration.ScorersConfiguration.BookHistoryScorerConfiguration.DeclinedConfiguration.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_249A0(uint64_t a1, int a2)
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

uint64_t sub_249E8(uint64_t result, int a2, int a3)
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

__n128 sub_24A44(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_24A50(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_24AAC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

__n128 sub_24B20(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_24B34(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 41))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 25);
  if (v3 >= 2)
  {
    v4 = ((v3 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v4 = -2;
  }

  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_24B94(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 25) = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_24C0C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_24C68(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_24CDC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 32))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 2;
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

uint64_t sub_24D48(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 2147483645;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Methodology(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Methodology(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_24F2C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_24F88(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_24FF0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25050(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_250C0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 41))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_2511C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_2519C(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

__n128 sub_251C0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_251E4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 76))
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

uint64_t sub_2522C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 76) = 1;
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

    *(result + 76) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_252C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_25308(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PositiveAffinitySource.PositiveStarRating(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PositiveAffinitySource.PositiveStarRating(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_254A8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_254F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s24RecommendationResponseV2V10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s24RecommendationResponseV2V10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_256A0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_256E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25744(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_257A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RecommendationSource(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for RecommendationSource(_WORD *result, int a2, int a3)
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

uint64_t sub_258DC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25924(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_25990(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_259D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25A38(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25A8C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_25AF8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 16))
  {
    return (*a1 + 2147483644);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25B4C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AccessRequirementUnsatisfiedReason(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AccessRequirementUnsatisfiedReason(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_25D08()
{
  result = qword_228F00;
  if (!qword_228F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228F00);
  }

  return result;
}

unint64_t sub_25D5C()
{
  result = qword_228F08;
  if (!qword_228F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228F08);
  }

  return result;
}

unint64_t sub_25DB0()
{
  result = qword_228F10;
  if (!qword_228F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228F10);
  }

  return result;
}

unint64_t sub_25E04()
{
  result = qword_228F18;
  if (!qword_228F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228F18);
  }

  return result;
}

unint64_t sub_25E58()
{
  result = qword_228F20;
  if (!qword_228F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228F20);
  }

  return result;
}

unint64_t sub_25EAC()
{
  result = qword_228F28;
  if (!qword_228F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228F28);
  }

  return result;
}

unint64_t sub_25F00()
{
  result = qword_228F30;
  if (!qword_228F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_228F30);
  }

  return result;
}

uint64_t sub_25F54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25FBC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_26224@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[4];
  sub_2698(a1, a1[3]);
  sub_2B0C(&qword_228FE8, &qword_1CEBF0);
  result = sub_1B4264();
  if (v12)
  {
    v6 = a1[4];
    sub_2698(a1, a1[3]);
    sub_2B0C(&qword_228FF0, qword_1BB3D0);
    result = sub_1B4264();
    if (v10)
    {
      v7 = type metadata accessor for SeedBookAuthorRecommendationService();
      v8 = swift_allocObject();
      sub_264B8(&v11, v8 + 16);
      result = sub_264B8(&v9, v8 + 56);
      a2[3] = v7;
      a2[4] = &off_21F1D0;
      *a2 = v8;
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

uint64_t sub_26364()
{
  v0 = sub_1B4344();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4284();
  sub_2B0C(&qword_228FE0, &unk_1BB3C0);
  sub_1B4304();

  (*(v1 + 104))(v4, enum case for Scope.singleton(_:), v0);
  sub_1B4214();

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_264B8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t dispatch thunk of ExperimentIDsHeaderValueProviderType.provideExperimentIDs()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_265E8;

  return v9(a1, a2);
}

uint64_t sub_265E8(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

uint64_t sub_266F4(uint64_t a1, int64_t a2, uint64_t a3, int64_t a4)
{
  v6 = 0xEF54534555514552;
  v7 = 0x5F44494C41564E49;
  if (a2 > 1)
  {
    if (a2 != 2)
    {
      if (a2 == 3)
      {
        v8 = 0x4E554F465F544F4ELL;
        v9 = 0xE900000000000044;
        if (a4 <= 1)
        {
          goto LABEL_18;
        }

        goto LABEL_13;
      }

LABEL_10:
      v8 = a1;
      v9 = a2;
      if (a4 <= 1)
      {
        goto LABEL_18;
      }

      goto LABEL_13;
    }

    v8 = 0x455F524556524553;
    v9 = 0xEC000000524F5252;
    if (a4 > 1)
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v8 = 0x485455415F544F4ELL;
        v9 = 0xEE0044455A49524FLL;
        if (a4 <= 1)
        {
          goto LABEL_18;
        }

LABEL_13:
        if (a4 == 2)
        {
          v6 = 0xEC000000524F5252;
          if (v8 != 0x455F524556524553)
          {
            goto LABEL_27;
          }

          goto LABEL_24;
        }

        if (a4 == 3)
        {
          v6 = 0xE900000000000044;
          if (v8 != 0x4E554F465F544F4ELL)
          {
            goto LABEL_27;
          }

          goto LABEL_24;
        }

        goto LABEL_22;
      }

      goto LABEL_10;
    }

    v8 = 0x5F44494C41564E49;
    v9 = 0xEF54534555514552;
    if (a4 > 1)
    {
      goto LABEL_13;
    }
  }

LABEL_18:
  if (!a4)
  {
    goto LABEL_23;
  }

  if (a4 == 1)
  {
    v6 = 0xEE0044455A49524FLL;
    if (v8 != 0x485455415F544F4ELL)
    {
      goto LABEL_27;
    }

    goto LABEL_24;
  }

LABEL_22:
  v7 = a3;
  v6 = a4;
LABEL_23:
  if (v8 != v7)
  {
LABEL_27:
    v11 = a1;
    v12 = a2;
    v13 = sub_1B5604();
    a2 = v12;
    v10 = v13;
    a1 = v11;
    goto LABEL_28;
  }

LABEL_24:
  if (v9 != v6)
  {
    goto LABEL_27;
  }

  v10 = 1;
LABEL_28:
  sub_21360(a1, a2);
  sub_21360(a3, a4);

  return v10 & 1;
}

uint64_t sub_26900(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1701869940;
  if (a1 > 1u)
  {
    v5 = a1 == 2;
    v3 = 0xE900000000000064;
    v4 = 0xE700000000000000;
    if (a1 == 2)
    {
      v6 = 0x4974736575716572;
    }

    else
    {
      v6 = 0x6567617373656DLL;
    }
  }

  else
  {
    v3 = 0xE400000000000000;
    v4 = 0xE400000000000000;
    v5 = a1 == 0;
    if (a1)
    {
      v6 = 1701080931;
    }

    else
    {
      v6 = 1701869940;
    }
  }

  if (v5)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  v8 = 0x4974736575716572;
  v9 = 0xE900000000000064;
  if (a2 != 2)
  {
    v8 = 0x6567617373656DLL;
    v9 = 0xE700000000000000;
  }

  if (a2)
  {
    v2 = 1701080931;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (a2 <= 1u)
  {
    v11 = 0xE400000000000000;
  }

  else
  {
    v11 = v9;
  }

  if (v6 == v10 && v7 == v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1B5604();
  }

  return v12 & 1;
}

uint64_t sub_26A30(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000656C69;
  v3 = 0x666F725072657375;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x6C6F646F6874656DLL;
    }

    else
    {
      v5 = 0xD000000000000013;
    }

    if (v4 == 2)
    {
      v6 = 0xED0000736569676FLL;
    }

    else
    {
      v6 = 0x80000000001D42D0;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x716552736B6F6F62;
    }

    else
    {
      v5 = 0x666F725072657375;
    }

    if (v4)
    {
      v6 = 0xEC00000074736575;
    }

    else
    {
      v6 = 0xEB00000000656C69;
    }
  }

  v7 = 0x6C6F646F6874656DLL;
  v8 = 0x80000000001D42D0;
  if (a2 == 2)
  {
    v8 = 0xED0000736569676FLL;
  }

  else
  {
    v7 = 0xD000000000000013;
  }

  if (a2)
  {
    v3 = 0x716552736B6F6F62;
    v2 = 0xEC00000074736575;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1B5604();
  }

  return v11 & 1;
}

uint64_t sub_26BA0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = 1145651536;
  v7 = 0xE300000000000000;
  v8 = 5852737;
  if (a2 != 2)
  {
    v8 = a1;
    v7 = a2;
  }

  if (a2 == 1)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v6 = v8;
  }

  if (a2)
  {
    v9 = v6;
  }

  else
  {
    v9 = 1162170950;
  }

  if (a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  v11 = 0xE400000000000000;
  v12 = 1145651536;
  v13 = 0xE300000000000000;
  v14 = 5852737;
  if (a4 != 2)
  {
    v14 = a3;
    v13 = a4;
  }

  if (a4 != 1)
  {
    v12 = v14;
    v11 = v13;
  }

  if (a4)
  {
    v15 = v12;
  }

  else
  {
    v15 = 1162170950;
  }

  if (a4)
  {
    v16 = v11;
  }

  else
  {
    v16 = 0xE400000000000000;
  }

  if (v9 == v15 && v10 == v16)
  {
    v17 = 1;
  }

  else
  {
    v18 = a1;
    v19 = a2;
    v20 = sub_1B5604();
    a2 = v19;
    v17 = v20;
    a1 = v18;
  }

  sub_26114(a1, a2);
  sub_26114(a3, a4);

  return v17 & 1;
}

uint64_t sub_26CBC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0xD000000000000014;
    }

    else
    {
      v3 = 0x707954616964656DLL;
    }

    if (v2)
    {
      v4 = 0x80000000001D42B0;
    }

    else
    {
      v4 = 0xE900000000000065;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE800000000000000;
    v3 = 0x65707954656C6173;
  }

  else if (a1 == 3)
  {
    v3 = 0xD000000000000013;
    v4 = 0x80000000001D42D0;
  }

  else
  {
    v3 = 0x6F42746567726174;
    v4 = 0xED00007364496B6FLL;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0xD000000000000014;
    }

    else
    {
      v6 = 0x707954616964656DLL;
    }

    if (a2)
    {
      v5 = 0x80000000001D42B0;
    }

    else
    {
      v5 = 0xE900000000000065;
    }

    if (v3 != v6)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0xE800000000000000;
    if (v3 != 0x65707954656C6173)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0x80000000001D42D0;
    if (v3 != 0xD000000000000013)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v5 = 0xED00007364496B6FLL;
    if (v3 != 0x6F42746567726174)
    {
LABEL_31:
      v7 = sub_1B5604();
      goto LABEL_32;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_31;
  }

  v7 = 1;
LABEL_32:

  return v7 & 1;
}

uint64_t sub_26E80(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB0000000073726FLL;
  v3 = 0x687475416B6F6F62;
  v4 = a1;
  if (a1 > 3u)
  {
    v11 = 0x626D45736B6F6F62;
    v12 = 0xEF73676E69646465;
    if (a1 != 6)
    {
      v11 = 0x726E65476B6F6F62;
      v12 = 0xEA00000000007365;
    }

    v13 = 0x80000000001D4570;
    if (a1 == 4)
    {
      v14 = 0xD000000000000018;
    }

    else
    {
      v14 = 0x687475416B6F6F62;
    }

    if (a1 != 4)
    {
      v13 = 0xEB0000000073726FLL;
    }

    if (a1 <= 5u)
    {
      v9 = v14;
    }

    else
    {
      v9 = v11;
    }

    if (v4 <= 5)
    {
      v10 = v13;
    }

    else
    {
      v10 = v12;
    }
  }

  else
  {
    v5 = 0x80000000001D4390;
    v6 = 0xD00000000000001ELL;
    if (a1 != 2)
    {
      v6 = 0xD000000000000017;
      v5 = 0x80000000001D43B0;
    }

    v7 = 0x80000000001D4370;
    v8 = 0xD00000000000001CLL;
    if (a1)
    {
      v8 = 0xD000000000000019;
      v7 = 0x80000000001D4550;
    }

    if (a1 <= 1u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v6;
    }

    if (v4 <= 1)
    {
      v10 = v7;
    }

    else
    {
      v10 = v5;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v2 = 0xEF73676E69646465;
        if (v9 != 0x626D45736B6F6F62)
        {
          goto LABEL_47;
        }
      }

      else
      {
        v2 = 0xEA00000000007365;
        if (v9 != 0x726E65476B6F6F62)
        {
          goto LABEL_47;
        }
      }

      goto LABEL_44;
    }

    if (a2 == 4)
    {
      v2 = 0x80000000001D4570;
      if (v9 != 0xD000000000000018)
      {
        goto LABEL_47;
      }

      goto LABEL_44;
    }
  }

  else
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        v2 = 0x80000000001D4550;
        if (v9 != 0xD000000000000019)
        {
          goto LABEL_47;
        }
      }

      else
      {
        v2 = 0x80000000001D4370;
        if (v9 != 0xD00000000000001CLL)
        {
          goto LABEL_47;
        }
      }

      goto LABEL_44;
    }

    if (a2 == 2)
    {
      v2 = 0x80000000001D4390;
      if (v9 != 0xD00000000000001ELL)
      {
        goto LABEL_47;
      }

      goto LABEL_44;
    }

    v2 = 0x80000000001D43B0;
    v3 = 0xD000000000000017;
  }

  if (v9 != v3)
  {
LABEL_47:
    v15 = sub_1B5604();
    goto LABEL_48;
  }

LABEL_44:
  if (v10 != v2)
  {
    goto LABEL_47;
  }

  v15 = 1;
LABEL_48:

  return v15 & 1;
}

uint64_t sub_27110(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      v5 = 0x687475416B6F6F62;
      v6 = 0xEB0000000073726FLL;
    }

    else if (a1 == 4)
    {
      v5 = 0x626D45736B6F6F62;
      v6 = 0xEF73676E69646465;
    }

    else
    {
      v5 = 0x726E65476B6F6F62;
      v6 = 0xEA00000000007365;
    }
  }

  else
  {
    v3 = 0x80000000001D4390;
    v4 = 0xD00000000000001ELL;
    if (a1 != 1)
    {
      v4 = 0xD000000000000017;
      v3 = 0x80000000001D43B0;
    }

    if (a1)
    {
      v5 = v4;
    }

    else
    {
      v5 = 0xD00000000000001CLL;
    }

    if (v2)
    {
      v6 = v3;
    }

    else
    {
      v6 = 0x80000000001D4370;
    }
  }

  if (a2 > 2u)
  {
    v11 = 0x626D45736B6F6F62;
    v12 = 0xEF73676E69646465;
    if (a2 != 4)
    {
      v11 = 0x726E65476B6F6F62;
      v12 = 0xEA00000000007365;
    }

    if (a2 == 3)
    {
      v13 = 0x687475416B6F6F62;
    }

    else
    {
      v13 = v11;
    }

    if (a2 == 3)
    {
      v10 = 0xEB0000000073726FLL;
    }

    else
    {
      v10 = v12;
    }

    if (v5 != v13)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v7 = 0xD00000000000001ELL;
    v8 = 0x80000000001D43B0;
    if (a2 == 1)
    {
      v8 = 0x80000000001D4390;
    }

    else
    {
      v7 = 0xD000000000000017;
    }

    if (a2)
    {
      v9 = v7;
    }

    else
    {
      v9 = 0xD00000000000001CLL;
    }

    if (a2)
    {
      v10 = v8;
    }

    else
    {
      v10 = 0x80000000001D4370;
    }

    if (v5 != v9)
    {
      goto LABEL_38;
    }
  }

  if (v6 != v10)
  {
LABEL_38:
    v14 = sub_1B5604();
    goto LABEL_39;
  }

  v14 = 1;
LABEL_39:

  return v14 & 1;
}

uint64_t sub_27308(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC0000006449746ELL;
  v3 = 0x6F724665726F7473;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0xD00000000000001BLL;
    }

    else
    {
      v5 = 0x6E656D7461657274;
    }

    if (v4 == 2)
    {
      v6 = 0x80000000001D4340;
    }

    else
    {
      v6 = 0xEC00000073644974;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x666F725072657375;
    }

    else
    {
      v5 = 0x6F724665726F7473;
    }

    if (v4)
    {
      v6 = 0xEB00000000656C69;
    }

    else
    {
      v6 = 0xEC0000006449746ELL;
    }
  }

  v7 = 0xD00000000000001BLL;
  v8 = 0x80000000001D4340;
  if (a2 != 2)
  {
    v7 = 0x6E656D7461657274;
    v8 = 0xEC00000073644974;
  }

  if (a2)
  {
    v3 = 0x666F725072657375;
    v2 = 0xEB00000000656C69;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1B5604();
  }

  return v11 & 1;
}

uint64_t sub_27470(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE600000000000000;
  v4 = 0xEA00000000007365;
  v5 = 0x63696C7075646564;
  if (a1 == 2)
  {
    v5 = 0x646F436361736962;
  }

  else
  {
    v4 = 0xEF64496E6F697461;
  }

  v6 = 0xD000000000000010;
  if (a1)
  {
    v3 = 0x80000000001D45C0;
  }

  else
  {
    v6 = 0x64496B6F6F62;
  }

  if (a1 <= 1u)
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  if (v2 <= 1)
  {
    v8 = v3;
  }

  else
  {
    v8 = v4;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v11 = 0x646F436361736962;
    }

    else
    {
      v11 = 0x63696C7075646564;
    }

    if (a2 == 2)
    {
      v10 = 0xEA00000000007365;
    }

    else
    {
      v10 = 0xEF64496E6F697461;
    }

    if (v7 != v11)
    {
      goto LABEL_31;
    }
  }

  else
  {
    if (a2)
    {
      v9 = 0xD000000000000010;
    }

    else
    {
      v9 = 0x64496B6F6F62;
    }

    if (a2)
    {
      v10 = 0x80000000001D45C0;
    }

    else
    {
      v10 = 0xE600000000000000;
    }

    if (v7 != v9)
    {
      goto LABEL_31;
    }
  }

  if (v8 != v10)
  {
LABEL_31:
    v12 = sub_1B5604();
    goto LABEL_32;
  }

  v12 = 1;
LABEL_32:

  return v12 & 1;
}

uint64_t sub_275D4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE800000000000000;
  v4 = 0xD000000000000012;
  v5 = 0x80000000001D4420;
  v6 = 0x80000000001D4440;
  v7 = 0xD000000000000019;
  if (a1 != 4)
  {
    v7 = 0xD00000000000001ELL;
    v6 = 0x80000000001D4260;
  }

  if (a1 != 3)
  {
    v4 = v7;
    v5 = v6;
  }

  v8 = 0xE600000000000000;
  v9 = 0x64496B6F6F62;
  if (a1 != 1)
  {
    v9 = 0x6449736569726573;
    v8 = 0xE800000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x6449726F68747561;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0x80000000001D4420;
      if (v10 != 0xD000000000000012)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0x80000000001D4440;
      if (v10 != 0xD000000000000019)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0x80000000001D4260;
      if (v10 != 0xD00000000000001ELL)
      {
LABEL_34:
        v13 = sub_1B5604();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x64496B6F6F62)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE800000000000000;
      if (v10 != 0x6449736569726573)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE800000000000000;
    if (v10 != 0x6449726F68747561)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_277A8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x64496B6F6F62;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x7349736569726573;
    }

    else
    {
      v4 = 0xD000000000000010;
    }

    if (v3 == 2)
    {
      v5 = 0xEF6465726564724FLL;
    }

    else
    {
      v5 = 0x80000000001D44B0;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6449736569726573;
    }

    else
    {
      v4 = 0x64496B6F6F62;
    }

    if (v3)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  v6 = 0xE600000000000000;
  v7 = 0x7349736569726573;
  v8 = 0x80000000001D44B0;
  if (a2 == 2)
  {
    v8 = 0xEF6465726564724FLL;
  }

  else
  {
    v7 = 0xD000000000000010;
  }

  if (a2)
  {
    v2 = 0x6449736569726573;
    v6 = 0xE800000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1B5604();
  }

  return v11 & 1;
}

uint64_t sub_27900(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x747369486B6F6F62;
    }

    else
    {
      v4 = 0xD000000000000013;
    }

    if (v2)
    {
      v3 = 0xEB0000000079726FLL;
    }

    else
    {
      v3 = 0x80000000001D45F0;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0x80000000001D4640;
    v4 = 0xD000000000000017;
  }

  else if (a1 == 3)
  {
    v3 = 0x80000000001D4610;
    v4 = 0xD000000000000021;
  }

  else
  {
    v3 = 0xE400000000000000;
    v4 = 1768055156;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0x747369486B6F6F62;
    }

    else
    {
      v6 = 0xD000000000000013;
    }

    if (a2)
    {
      v5 = 0xEB0000000079726FLL;
    }

    else
    {
      v5 = 0x80000000001D45F0;
    }

    if (v4 != v6)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0x80000000001D4640;
    if (v4 != 0xD000000000000017)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0x80000000001D4610;
    if (v4 != 0xD000000000000021)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v5 = 0xE400000000000000;
    if (v4 != 1768055156)
    {
LABEL_31:
      v7 = sub_1B5604();
      goto LABEL_32;
    }
  }

  if (v3 != v5)
  {
    goto LABEL_31;
  }

  v7 = 1;
LABEL_32:

  return v7 & 1;
}

uint64_t sub_27A90(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 3u)
  {
    v5 = 0xE700000000000000;
    v6 = 0x416567616B636170;
    v7 = 0xEF73444974657373;
    if (a1 != 2)
    {
      v6 = 0x7475706D6F436C6DLL;
      v7 = 0xEE007374696E5565;
    }

    if (a1)
    {
      v8 = 0xD000000000000014;
    }

    else
    {
      v8 = 0x6E6F6973726576;
    }

    if (a1)
    {
      v5 = 0x80000000001D5130;
    }

    if (a1 <= 1u)
    {
      v4 = v8;
    }

    else
    {
      v4 = v6;
    }

    if (v2 <= 1)
    {
      v3 = v5;
    }

    else
    {
      v3 = v7;
    }
  }

  else if (a1 <= 5u)
  {
    if (a1 == 4)
    {
      v3 = 0x80000000001D5170;
      v4 = 0xD00000000000001DLL;
    }

    else
    {
      v3 = 0x80000000001D5190;
      v4 = 0xD000000000000020;
    }
  }

  else if (a1 == 6)
  {
    v3 = 0x80000000001D51C0;
    v4 = 0xD00000000000001CLL;
  }

  else if (a1 == 7)
  {
    v3 = 0x80000000001D51E0;
    v4 = 0xD000000000000018;
  }

  else
  {
    v3 = 0x80000000001D5200;
    v4 = 0xD000000000000023;
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v9 = 0xEF73444974657373;
        if (v4 != 0x416567616B636170)
        {
          goto LABEL_54;
        }
      }

      else
      {
        v9 = 0xEE007374696E5565;
        if (v4 != 0x7475706D6F436C6DLL)
        {
          goto LABEL_54;
        }
      }
    }

    else
    {
      if (a2)
      {
        v10 = 0xD000000000000014;
      }

      else
      {
        v10 = 0x6E6F6973726576;
      }

      if (a2)
      {
        v9 = 0x80000000001D5130;
      }

      else
      {
        v9 = 0xE700000000000000;
      }

      if (v4 != v10)
      {
        goto LABEL_54;
      }
    }
  }

  else if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v9 = 0x80000000001D5170;
      if (v4 != 0xD00000000000001DLL)
      {
        goto LABEL_54;
      }
    }

    else
    {
      v9 = 0x80000000001D5190;
      if (v4 != 0xD000000000000020)
      {
LABEL_54:
        v11 = sub_1B5604();
        goto LABEL_55;
      }
    }
  }

  else if (a2 == 6)
  {
    v9 = 0x80000000001D51C0;
    if (v4 != 0xD00000000000001CLL)
    {
      goto LABEL_54;
    }
  }

  else if (a2 == 7)
  {
    v9 = 0x80000000001D51E0;
    if (v4 != 0xD000000000000018)
    {
      goto LABEL_54;
    }
  }

  else
  {
    v9 = 0x80000000001D5200;
    if (v4 != 0xD000000000000023)
    {
      goto LABEL_54;
    }
  }

  if (v3 != v9)
  {
    goto LABEL_54;
  }

  v11 = 1;
LABEL_55:

  return v11 & 1;
}

uint64_t sub_27D7C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC00000064657361;
  v3 = 0xD000000000000014;
  v4 = a1;
  if (a1 > 3u)
  {
    v11 = 0x80000000001D50F0;
    if (a1 != 6)
    {
      v11 = 0x80000000001D5110;
    }

    v12 = 0x80000000001D50C0;
    v13 = 0xD00000000000001DLL;
    if (a1 != 4)
    {
      v13 = 0x6C706D6153736177;
      v12 = 0xEA00000000006465;
    }

    if (a1 <= 5u)
    {
      v9 = v13;
    }

    else
    {
      v9 = 0xD000000000000014;
    }

    if (v4 <= 5)
    {
      v10 = v12;
    }

    else
    {
      v10 = v11;
    }
  }

  else
  {
    v5 = 0x80000000001D5090;
    if (a1 == 2)
    {
      v6 = 0xD000000000000015;
    }

    else
    {
      v6 = 0x6863727550736177;
    }

    if (a1 != 2)
    {
      v5 = 0xEC00000064657361;
    }

    v7 = 0x80000000001D5050;
    v8 = 0xD000000000000019;
    if (a1)
    {
      v8 = 0xD00000000000001FLL;
      v7 = 0x80000000001D5070;
    }

    if (a1 <= 1u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v6;
    }

    if (v4 <= 1)
    {
      v10 = v7;
    }

    else
    {
      v10 = v5;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v14 = "wasAddedToWantToRead";
      }

      else
      {
        v14 = "wasProductPageViewed";
      }

      v2 = (v14 - 32) | 0x8000000000000000;
    }

    else if (a2 == 4)
    {
      v2 = 0x80000000001D50C0;
      v3 = 0xD00000000000001DLL;
    }

    else
    {
      v3 = 0x6C706D6153736177;
      v2 = 0xEA00000000006465;
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v2 = 0x80000000001D5090;
      v3 = 0xD000000000000015;
    }

    else
    {
      v3 = 0x6863727550736177;
    }
  }

  else if (a2)
  {
    v2 = 0x80000000001D5070;
    v3 = 0xD00000000000001FLL;
  }

  else
  {
    v2 = 0x80000000001D5050;
    v3 = 0xD000000000000019;
  }

  if (v9 == v3 && v10 == v2)
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_1B5604();
  }

  return v15 & 1;
}

uint64_t sub_27FB4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x495041616964656DLL;
    }

    else
    {
      v4 = 0xD000000000000013;
    }

    if (v2)
    {
      v3 = 0xE800000000000000;
    }

    else
    {
      v3 = 0x80000000001D45F0;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0x747369486B6F6F62;
    v3 = 0xEB0000000079726FLL;
  }

  else if (a1 == 3)
  {
    v3 = 0x80000000001D4700;
    v4 = 0xD000000000000022;
  }

  else
  {
    v3 = 0xE400000000000000;
    v4 = 1768055156;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0x495041616964656DLL;
    }

    else
    {
      v6 = 0xD000000000000013;
    }

    if (a2)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0x80000000001D45F0;
    }

    if (v4 != v6)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0xEB0000000079726FLL;
    if (v4 != 0x747369486B6F6F62)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0x80000000001D4700;
    if (v4 != 0xD000000000000022)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v5 = 0xE400000000000000;
    if (v4 != 1768055156)
    {
LABEL_31:
      v7 = sub_1B5604();
      goto LABEL_32;
    }
  }

  if (v3 != v5)
  {
    goto LABEL_31;
  }

  v7 = 1;
LABEL_32:

  return v7 & 1;
}

uint64_t sub_28168(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE500000000000000;
  v4 = 0xD000000000000013;
  if (a1 == 5)
  {
    v5 = 0x80000000001D47A0;
  }

  else
  {
    v4 = 0x6974736567677573;
    v5 = 0xEB00000000736E6FLL;
  }

  v6 = 0xE600000000000000;
  v7 = 0x756F59726F66;
  if (a1 != 3)
  {
    v7 = 0xD000000000000011;
    v6 = 0x80000000001D4780;
  }

  if (a1 > 4u)
  {
    v7 = v4;
    v6 = v5;
  }

  v8 = 0x80000000001D4740;
  v9 = 0xD000000000000017;
  if (v2 != 1)
  {
    v9 = 0xD000000000000011;
    v8 = 0x80000000001D4760;
  }

  if (v2)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x736B6F6F62;
  }

  if (v2 <= 2)
  {
    v10 = v3;
  }

  else
  {
    v9 = v7;
    v10 = v6;
  }

  if (a2 <= 2u)
  {
    if (!a2)
    {
      v11 = 0xE500000000000000;
      if (v9 != 0x736B6F6F62)
      {
        goto LABEL_37;
      }

      goto LABEL_35;
    }

    if (a2 == 1)
    {
      v11 = 0x80000000001D4740;
      if (v9 != 0xD000000000000017)
      {
        goto LABEL_37;
      }

      goto LABEL_35;
    }

    v11 = 0x80000000001D4760;
    goto LABEL_32;
  }

  if (a2 <= 4u)
  {
    if (a2 == 3)
    {
      v11 = 0xE600000000000000;
      if (v9 != 0x756F59726F66)
      {
        goto LABEL_37;
      }

      goto LABEL_35;
    }

    v11 = 0x80000000001D4780;
LABEL_32:
    if (v9 != 0xD000000000000011)
    {
      goto LABEL_37;
    }

    goto LABEL_35;
  }

  if (a2 == 5)
  {
    v11 = 0x80000000001D47A0;
    if (v9 != 0xD000000000000013)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v11 = 0xEB00000000736E6FLL;
    if (v9 != 0x6974736567677573)
    {
LABEL_37:
      v12 = sub_1B5604();
      goto LABEL_38;
    }
  }

LABEL_35:
  if (v10 != v11)
  {
    goto LABEL_37;
  }

  v12 = 1;
LABEL_38:

  return v12 & 1;
}

uint64_t sub_28368(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000746E69;
  v3 = 0x6F4A656C676E6973;
  v4 = a1;
  v5 = 0x6F6A7369446C6C61;
  if (a1 == 2)
  {
    v6 = 0xEB00000000746E69;
  }

  else
  {
    v5 = 0x7473657265746E69;
    v6 = 0xED00006465736142;
  }

  v7 = 0xE800000000000000;
  v8 = 0x746E696F4A6C6C61;
  if (!a1)
  {
    v8 = 0x6F4A656C676E6973;
    v7 = 0xEB00000000746E69;
  }

  if (a1 <= 1u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v5;
  }

  if (v4 <= 1)
  {
    v10 = v7;
  }

  else
  {
    v10 = v6;
  }

  v11 = 0x6F6A7369446C6C61;
  if (a2 == 2)
  {
    v12 = 0xEB00000000746E69;
  }

  else
  {
    v11 = 0x7473657265746E69;
    v12 = 0xED00006465736142;
  }

  if (a2)
  {
    v3 = 0x746E696F4A6C6C61;
    v2 = 0xE800000000000000;
  }

  if (a2 <= 1u)
  {
    v13 = v3;
  }

  else
  {
    v13 = v11;
  }

  if (a2 <= 1u)
  {
    v14 = v2;
  }

  else
  {
    v14 = v12;
  }

  if (v9 == v13 && v10 == v14)
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_1B5604();
  }

  return v15 & 1;
}

uint64_t sub_284C0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x747369486B6F6F62;
    }

    else
    {
      v4 = 0xD000000000000013;
    }

    if (v2)
    {
      v3 = 0xEB0000000079726FLL;
    }

    else
    {
      v3 = 0x80000000001D45F0;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0x80000000001D4610;
    v4 = 0xD000000000000021;
  }

  else if (a1 == 3)
  {
    v3 = 0x80000000001D4640;
    v4 = 0xD000000000000017;
  }

  else
  {
    v3 = 0xE400000000000000;
    v4 = 1768055156;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0x747369486B6F6F62;
    }

    else
    {
      v6 = 0xD000000000000013;
    }

    if (a2)
    {
      v5 = 0xEB0000000079726FLL;
    }

    else
    {
      v5 = 0x80000000001D45F0;
    }

    if (v4 != v6)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0x80000000001D4610;
    if (v4 != 0xD000000000000021)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0x80000000001D4640;
    if (v4 != 0xD000000000000017)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v5 = 0xE400000000000000;
    if (v4 != 1768055156)
    {
LABEL_31:
      v7 = sub_1B5604();
      goto LABEL_32;
    }
  }

  if (v3 != v5)
  {
    goto LABEL_31;
  }

  v7 = 1;
LABEL_32:

  return v7 & 1;
}

uint64_t sub_28650(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0xD000000000000015;
    }

    else
    {
      v3 = 0xD000000000000010;
    }

    if (v2)
    {
      v4 = 0x80000000001D46A0;
    }

    else
    {
      v4 = 0x80000000001D4680;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE700000000000000;
    v3 = 0x32656372756F73;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0xD00000000000001FLL;
    }

    else
    {
      v3 = 0xD00000000000001ALL;
    }

    if (v2 == 3)
    {
      v4 = 0x80000000001D46C0;
    }

    else
    {
      v4 = 0x80000000001D46E0;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v7 = 0xD000000000000015;
    }

    else
    {
      v7 = 0xD000000000000010;
    }

    if (a2)
    {
      v6 = 0x80000000001D46A0;
    }

    else
    {
      v6 = 0x80000000001D4680;
    }

    if (v3 != v7)
    {
      goto LABEL_37;
    }
  }

  else if (a2 == 2)
  {
    v6 = 0xE700000000000000;
    if (v3 != 0x32656372756F73)
    {
LABEL_37:
      v8 = sub_1B5604();
      goto LABEL_38;
    }
  }

  else
  {
    if (a2 == 3)
    {
      v5 = 0xD00000000000001FLL;
    }

    else
    {
      v5 = 0xD00000000000001ALL;
    }

    if (a2 == 3)
    {
      v6 = 0x80000000001D46C0;
    }

    else
    {
      v6 = 0x80000000001D46E0;
    }

    if (v3 != v5)
    {
      goto LABEL_37;
    }
  }

  if (v4 != v6)
  {
    goto LABEL_37;
  }

  v8 = 1;
LABEL_38:

  return v8 & 1;
}

uint64_t sub_287E8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x747369486B6F6F62;
    }

    else
    {
      v4 = 0xD000000000000013;
    }

    if (v2)
    {
      v3 = 0xEB0000000079726FLL;
    }

    else
    {
      v3 = 0x80000000001D45F0;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0x80000000001D4700;
    v4 = 0xD000000000000022;
  }

  else if (a1 == 3)
  {
    v3 = 0xE800000000000000;
    v4 = 0x495041616964656DLL;
  }

  else
  {
    v3 = 0xE400000000000000;
    v4 = 1768055156;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0x747369486B6F6F62;
    }

    else
    {
      v6 = 0xD000000000000013;
    }

    if (a2)
    {
      v5 = 0xEB0000000079726FLL;
    }

    else
    {
      v5 = 0x80000000001D45F0;
    }

    if (v4 != v6)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0x80000000001D4700;
    if (v4 != 0xD000000000000022)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0xE800000000000000;
    if (v4 != 0x495041616964656DLL)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v5 = 0xE400000000000000;
    if (v4 != 1768055156)
    {
LABEL_31:
      v7 = sub_1B5604();
      goto LABEL_32;
    }
  }

  if (v3 != v5)
  {
    goto LABEL_31;
  }

  v7 = 1;
LABEL_32:

  return v7 & 1;
}

uint64_t sub_28990(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 3u)
  {
    v9 = 0x6974736567677573;
    v10 = 0xEB00000000736E6FLL;
    if (a1 != 6)
    {
      v9 = 0xD000000000000016;
      v10 = 0x80000000001D47C0;
    }

    v11 = 0x80000000001D4780;
    v12 = 0xD000000000000013;
    if (a1 == 4)
    {
      v12 = 0xD000000000000011;
    }

    else
    {
      v11 = 0x80000000001D47A0;
    }

    if (a1 <= 5u)
    {
      v7 = v12;
    }

    else
    {
      v7 = v9;
    }

    if (v2 <= 5)
    {
      v8 = v11;
    }

    else
    {
      v8 = v10;
    }
  }

  else
  {
    v3 = 0xE500000000000000;
    v4 = 0x80000000001D4760;
    v5 = 0x756F59726F66;
    if (a1 == 2)
    {
      v5 = 0xD000000000000011;
    }

    else
    {
      v4 = 0xE600000000000000;
    }

    v6 = 0xD000000000000017;
    if (a1)
    {
      v3 = 0x80000000001D4740;
    }

    else
    {
      v6 = 0x736B6F6F62;
    }

    if (a1 <= 1u)
    {
      v7 = v6;
    }

    else
    {
      v7 = v5;
    }

    if (v2 <= 1)
    {
      v8 = v3;
    }

    else
    {
      v8 = v4;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        v13 = 0x80000000001D4740;
        if (v7 != 0xD000000000000017)
        {
          goto LABEL_49;
        }
      }

      else
      {
        v13 = 0xE500000000000000;
        if (v7 != 0x736B6F6F62)
        {
          goto LABEL_49;
        }
      }

      goto LABEL_47;
    }

    if (a2 != 2)
    {
      v13 = 0xE600000000000000;
      if (v7 != 0x756F59726F66)
      {
        goto LABEL_49;
      }

      goto LABEL_47;
    }

    v14 = "booksYouMightLike";
LABEL_35:
    v13 = (v14 - 32) | 0x8000000000000000;
    if (v7 != 0xD000000000000011)
    {
      goto LABEL_49;
    }

    goto LABEL_47;
  }

  if (a2 <= 5u)
  {
    if (a2 != 4)
    {
      v13 = 0x80000000001D47A0;
      if (v7 != 0xD000000000000013)
      {
        goto LABEL_49;
      }

      goto LABEL_47;
    }

    v14 = "mangaYouMightLike";
    goto LABEL_35;
  }

  if (a2 == 6)
  {
    v13 = 0xEB00000000736E6FLL;
    if (v7 != 0x6974736567677573)
    {
      goto LABEL_49;
    }
  }

  else
  {
    v13 = 0x80000000001D47C0;
    if (v7 != 0xD000000000000016)
    {
LABEL_49:
      v15 = sub_1B5604();
      goto LABEL_50;
    }
  }

LABEL_47:
  if (v8 != v13)
  {
    goto LABEL_49;
  }

  v15 = 1;
LABEL_50:

  return v15 & 1;
}

uint64_t sub_28BF8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6C65766564;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x676E6967617473;
    }

    else
    {
      v4 = 0x69746375646F7270;
    }

    if (v3 == 2)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xEA00000000006E6FLL;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 24945;
    }

    else
    {
      v4 = 0x6C65766564;
    }

    if (v3)
    {
      v5 = 0xE200000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  v6 = 0xE500000000000000;
  v7 = 0xE700000000000000;
  v8 = 0x676E6967617473;
  if (a2 != 2)
  {
    v8 = 0x69746375646F7270;
    v7 = 0xEA00000000006E6FLL;
  }

  if (a2)
  {
    v2 = 24945;
    v6 = 0xE200000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1B5604();
  }

  return v11 & 1;
}

Swift::Int sub_28D28()
{
  sub_1B57F4();
  sub_1B4884();

  return sub_1B5844();
}

Swift::Int sub_28E94()
{
  sub_1B57F4();
  sub_1B4884();

  return sub_1B5844();
}

Swift::Int sub_28FBC()
{
  sub_1B57F4();
  sub_1B4884();

  return sub_1B5844();
}

Swift::Int sub_290C0()
{
  sub_1B57F4();
  sub_1B4884();

  return sub_1B5844();
}

Swift::Int sub_29228()
{
  sub_1B57F4();
  sub_1B4884();

  return sub_1B5844();
}

Swift::Int sub_2935C()
{
  sub_1B57F4();
  sub_1B4884();

  return sub_1B5844();
}

uint64_t static CommonCurrency.Header.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1B5604(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_1B5604();
    }
  }

  return result;
}

uint64_t CommonCurrency.Header.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1B4884();

  return sub_1B4884();
}

Swift::Int CommonCurrency.Header.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1B57F4();
  sub_1B4884();
  sub_1B4884();
  return sub_1B5844();
}

Swift::Int sub_2960C()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1B57F4();
  sub_1B4884();
  sub_1B4884();
  return sub_1B5844();
}

void CommonCurrency.Headers.hash(into:)()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  sub_1B5804(v2);
  if (v2)
  {
    v3 = (v1 + 56);
    do
    {
      v4 = *(v3 - 3);
      v5 = *(v3 - 2);
      v6 = *(v3 - 1);
      v7 = *v3;

      sub_1B4884();
      sub_1B4884();

      v3 += 4;
      --v2;
    }

    while (v2);
  }
}

Swift::Int CommonCurrency.Headers.hashValue.getter()
{
  v1 = *v0;
  sub_1B57F4();
  v2 = *(v1 + 16);
  sub_1B5804(v2);
  if (v2)
  {
    v3 = (v1 + 56);
    do
    {
      v4 = *(v3 - 3);
      v5 = *(v3 - 2);
      v6 = *(v3 - 1);
      v7 = *v3;

      sub_1B4884();
      sub_1B4884();

      v3 += 4;
      --v2;
    }

    while (v2);
  }

  return sub_1B5844();
}

Swift::Int sub_297DC()
{
  v1 = *v0;
  sub_1B57F4();
  sub_1BA44(v3, v1);
  return sub_1B5844();
}

Swift::Int sub_2982C()
{
  v1 = *v0;
  sub_1B57F4();
  sub_1BA44(v3, v1);
  return sub_1B5844();
}

uint64_t static CommonCurrency.redactedHeaderNames.getter()
{
  if (qword_228288 != -1)
  {
    swift_once();
  }
}

uint64_t sub_298CC@<X0>(int **a1@<X8>)
{
  if (qword_228288 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = off_228FF8[0];
}

uint64_t sub_2993C(uint64_t *a1)
{
  v1 = *a1;
  if (qword_228288 != -1)
  {
    v5 = v1;
    swift_once();
    v1 = v5;
  }

  v2 = sub_29A88(v1);
  v3 = sub_4025C(v2);

  off_228FF8[0] = v3;
}

uint64_t static CommonCurrency.redactedHeaderNames.setter(uint64_t a1)
{
  if (qword_228288 != -1)
  {
    swift_once();
  }

  v2 = sub_29A88(a1);

  v3 = sub_4025C(v2);

  off_228FF8[0] = v3;
}

void *sub_29A88(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_3747C(0, v1, 0);
  v3 = -1 << *(a1 + 32);
  v28 = a1 + 56;
  result = sub_1B4F84();
  v5 = result;
  v6 = 0;
  v27 = v1;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(a1 + 32))
  {
    v9 = v5 >> 6;
    if ((*(v28 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_21;
    }

    v10 = *(a1 + 36);
    v11 = (*(a1 + 48) + 16 * v5);
    v12 = *v11;
    v13 = v11[1];
    result = sub_1B4844();
    v16 = _swiftEmptyArrayStorage[2];
    v15 = _swiftEmptyArrayStorage[3];
    if (v16 >= v15 >> 1)
    {
      v25 = v14;
      v26 = result;
      sub_3747C((v15 > 1), v16 + 1, 1);
      v14 = v25;
      result = v26;
    }

    _swiftEmptyArrayStorage[2] = v16 + 1;
    v17 = &_swiftEmptyArrayStorage[2 * v16];
    *(v17 + 4) = result;
    *(v17 + 5) = v14;
    v7 = 1 << *(a1 + 32);
    if (v5 >= v7)
    {
      goto LABEL_22;
    }

    v18 = *(v28 + 8 * v9);
    if ((v18 & (1 << v5)) == 0)
    {
      goto LABEL_23;
    }

    if (v10 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v19 = v18 & (-2 << (v5 & 0x3F));
    if (v19)
    {
      v7 = __clz(__rbit64(v19)) | v5 & 0x7FFFFFFFFFFFFFC0;
      v8 = v27;
    }

    else
    {
      v20 = v9 << 6;
      v21 = v9 + 1;
      v8 = v27;
      v22 = (a1 + 64 + 8 * v9);
      while (v21 < (v7 + 63) >> 6)
      {
        v24 = *v22++;
        v23 = v24;
        v20 += 64;
        ++v21;
        if (v24)
        {
          result = sub_42FF0(v5, v10, 0);
          v7 = __clz(__rbit64(v23)) + v20;
          goto LABEL_4;
        }
      }

      result = sub_42FF0(v5, v10, 0);
    }

LABEL_4:
    ++v6;
    v5 = v7;
    if (v6 == v8)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

void *sub_29CB0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_37534(0, v1, 0);
  v3 = a1 + 56;
  v4 = -1 << *(a1 + 32);
  result = sub_1B4F84();
  v6 = result;
  v7 = 0;
  v22 = v1;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
  {
    v9 = v6 >> 6;
    if ((*(v3 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_21;
    }

    v23 = *(a1 + 36);
    v10 = (*(a1 + 48) + 16 * v6);
    v11 = v10[1];
    v24 = *v10;
    v12 = _swiftEmptyArrayStorage[2];
    v13 = _swiftEmptyArrayStorage[3];

    if (v12 >= v13 >> 1)
    {
      result = sub_37534((v13 > 1), v12 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v12 + 1;
    v14 = &_swiftEmptyArrayStorage[2 * v12];
    v14[4] = v24;
    v14[5] = v11;
    v8 = 1 << *(a1 + 32);
    if (v6 >= v8)
    {
      goto LABEL_22;
    }

    v3 = a1 + 56;
    v15 = *(a1 + 56 + 8 * v9);
    if ((v15 & (1 << v6)) == 0)
    {
      goto LABEL_23;
    }

    if (v23 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v16 = v15 & (-2 << (v6 & 0x3F));
    if (v16)
    {
      v8 = __clz(__rbit64(v16)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v17 = v9 << 6;
      v18 = v9 + 1;
      v19 = (a1 + 64 + 8 * v9);
      while (v18 < (v8 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          result = sub_42FF0(v6, v23, 0);
          v8 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      result = sub_42FF0(v6, v23, 0);
    }

LABEL_4:
    ++v7;
    v6 = v8;
    if (v7 == v22)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

void *sub_29ED8(void (*a1)(_OWORD *__return_ptr, void *, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  result = _swiftEmptyArrayStorage;
  if (v4)
  {
    v6 = a3;
    v40 = _swiftEmptyArrayStorage;
    sub_37554(0, v4, 0);
    v35 = _swiftEmptyArrayStorage;
    v7 = v6 + 56;
    v8 = -1 << *(v6 + 32);
    result = sub_1B4F84();
    v9 = result;
    v10 = 0;
    v31 = v6 + 64;
    v32 = v4;
    while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(v6 + 32))
    {
      v12 = v9 >> 6;
      if ((*(v7 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
      {
        goto LABEL_24;
      }

      v34 = v10;
      v13 = *(v6 + 36);
      v14 = v6;
      v15 = (*(v6 + 48) + 16 * v9);
      v16 = v15[1];
      v37[0] = *v15;
      v37[1] = v16;

      a1(v38, v37, &v36);
      if (v3)
      {
      }

      v17 = v35;
      v40 = v35;
      v19 = v35[2];
      v18 = v35[3];
      if (v19 >= v18 >> 1)
      {
        result = sub_37554((v18 > 1), v19 + 1, 1);
        v17 = v40;
      }

      v17[2] = v19 + 1;
      v35 = v17;
      v20 = &v17[7 * v19];
      v21 = v38[0];
      v22 = v38[1];
      v23 = v38[2];
      v20[10] = v39;
      *(v20 + 3) = v22;
      *(v20 + 4) = v23;
      *(v20 + 2) = v21;
      v11 = 1 << *(v14 + 32);
      if (v9 >= v11)
      {
        goto LABEL_25;
      }

      v24 = *(v7 + 8 * v12);
      if ((v24 & (1 << v9)) == 0)
      {
        goto LABEL_26;
      }

      v6 = v14;
      if (v13 != *(v14 + 36))
      {
        goto LABEL_27;
      }

      v25 = v24 & (-2 << (v9 & 0x3F));
      if (v25)
      {
        v11 = __clz(__rbit64(v25)) | v9 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v26 = v12 << 6;
        v27 = v12 + 1;
        v28 = (v31 + 8 * v12);
        while (v27 < (v11 + 63) >> 6)
        {
          v30 = *v28++;
          v29 = v30;
          v26 += 64;
          ++v27;
          if (v30)
          {
            result = sub_42FF0(v9, v13, 0);
            v11 = __clz(__rbit64(v29)) + v26;
            goto LABEL_4;
          }
        }

        result = sub_42FF0(v9, v13, 0);
      }

LABEL_4:
      v3 = 0;
      v10 = v34 + 1;
      v9 = v11;
      if (v34 + 1 == v32)
      {
        return v35;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  return result;
}

uint64_t sub_2A16C(void (*a1)(__int128 *__return_ptr, char *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = _swiftEmptyArrayStorage;
  if (!v5)
  {
    return v6;
  }

  v16 = _swiftEmptyArrayStorage;
  sub_37ABC(0, v5, 0);
  v6 = _swiftEmptyArrayStorage;
  v9 = (a3 + 32);
  while (1)
  {
    v10 = *v9++;
    v14 = v10;
    a1(v15, &v14);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v16 = v6;
    v12 = v6[2];
    v11 = v6[3];
    if (v12 >= v11 >> 1)
    {
      sub_37ABC((v11 > 1), v12 + 1, 1);
      v6 = v16;
    }

    v6[2] = v12 + 1;
    sub_264B8(v15, &v6[5 * v12 + 4]);
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2A284(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_1B4CC4();
  v4 = 0;
  v15 = result;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v4;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(a1 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_111A38(&v14, v12, v13);
  }

  while (1)
  {
    v9 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(a1 + 64 + 8 * v9);
    ++v4;
    if (v7)
    {
      v4 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2A3A0(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_42B50();
  result = sub_1B4CC4();
  v4 = 0;
  v12 = result;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  for (i = (v5 + 63) >> 6; v7; result = sub_111FB0(&v11, *(*(a1 + 48) + (v10 | (v9 << 6)))))
  {
    v9 = v4;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
  }

  while (1)
  {
    v9 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v12;
    }

    v7 = *(a1 + 64 + 8 * v9);
    ++v4;
    if (v7)
    {
      v4 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2A49C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_1B4CC4();
  v4 = 0;
  v12 = result;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  for (i = (v5 + 63) >> 6; v7; result = sub_111CE0(&v11, *(*(a1 + 48) + ((v9 << 9) | (8 * v10)))))
  {
    v9 = v4;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
  }

  while (1)
  {
    v9 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v12;
    }

    v7 = *(a1 + 64 + 8 * v9);
    ++v4;
    if (v7)
    {
      v4 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2A594(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_42AA8();
  result = sub_1B4CC4();
  v4 = 0;
  v5 = *(a1 + 64);
  v14 = result;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & v5;
  v9 = (v6 + 63) >> 6;
  if ((v7 & v5) != 0)
  {
    do
    {
      v10 = v4;
LABEL_9:
      v11 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      memcpy(__dst, (*(a1 + 56) + 568 * (v11 | (v10 << 6))), 0x231uLL);
      sub_4299C(__dst, v13);
      sub_111DC0(v12, __dst);
      memcpy(v13, v12, 0x231uLL);
      result = sub_2601C(v13);
    }

    while (v8);
  }

  while (1)
  {
    v10 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v10 >= v9)
    {

      return v14;
    }

    v8 = *(a1 + 64 + 8 * v10);
    ++v4;
    if (v8)
    {
      v4 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t (*static CommonCurrency.redactedHeaderNames.modify(int **a1))(uint64_t *a1, char a2)
{
  if (qword_228288 != -1)
  {
    swift_once();
  }

  *a1 = off_228FF8[0];

  return sub_2A74C;
}

uint64_t sub_2A74C(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {

    v4 = sub_29A88(v3);

    v5 = sub_4025C(v4);

    off_228FF8[0] = v5;
  }

  else
  {
    v6 = sub_29A88(v2);

    v7 = sub_4025C(v6);

    off_228FF8[0] = v7;
  }
}

uint64_t sub_2A810()
{
  v0 = sub_9ECC4(&off_20FF68);
  result = swift_arrayDestroy();
  off_228FF8[0] = v0;
  return result;
}

uint64_t CommonCurrency.Header.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  if (qword_228288 != -1)
  {
    swift_once();
  }

  v5 = off_228FF8[0];
  v6 = sub_1B4844();
  v8 = v7;

  LOBYTE(v6) = sub_2AAEC(v6, v8, v5);

  if (v6)
  {
    v3 = 0xEA00000000003E64;
    v4 = 0x657463616465723CLL;
  }

  else
  {
  }

  v10._countAndFlagsBits = 8250;
  v10._object = 0xE200000000000000;
  sub_1B48D4(v10);
  v11._countAndFlagsBits = v4;
  v11._object = v3;
  sub_1B48D4(v11);

  return v1;
}

BOOL sub_2A978(unsigned __int8 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a1;
  v4 = *(a2 + 40);
  sub_1B57F4();
  sub_1B5804(v3);
  v5 = sub_1B5844();
  v6 = -1 << *(a2 + 32);
  v7 = v5 & ~v6;
  if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  do
  {
    v9 = *(*(a2 + 48) + v7);
    result = v9 == v3;
    if (v9 == v3)
    {
      break;
    }

    v7 = (v7 + 1) & v8;
  }

  while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  return result;
}

BOOL sub_2AA44(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = *(a2 + 40);
  v5 = sub_1B57E4();
  v6 = -1 << *(a2 + 32);
  v7 = v5 & ~v6;
  if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  do
  {
    v9 = *(*(a2 + 48) + 8 * v7);
    result = v9 == a1;
    if (v9 == a1)
    {
      break;
    }

    v7 = (v7 + 1) & v8;
  }

  while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  return result;
}

uint64_t sub_2AAEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_1B57F4();
  sub_1B4884();
  v7 = sub_1B5844();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_1B5604() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_2ABE4(unsigned __int8 a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v4 = *(a2 + 40);
    sub_1B57F4();
    sub_1B4884();

    v5 = sub_1B5844();
    v6 = -1 << *(a2 + 32);
    v7 = v5 & ~v6;
    if ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
    {
      v8 = ~v6;
      while (1)
      {
        if (*(*(a2 + 48) + v7))
        {
          if (*(*(a2 + 48) + v7) == 1)
          {
            v9 = 0x6F6F626F69647561;
            v10 = 0xE90000000000006BLL;
            v11 = a1;
            if (!a1)
            {
              goto LABEL_18;
            }
          }

          else
          {
            v10 = 0xE500000000000000;
            v9 = 0x646578696DLL;
            v11 = a1;
            if (!a1)
            {
LABEL_18:
              v13 = 0xE500000000000000;
              if (v9 != 0x6B6F6F6265)
              {
                goto LABEL_20;
              }

              goto LABEL_19;
            }
          }
        }

        else
        {
          v10 = 0xE500000000000000;
          v9 = 0x6B6F6F6265;
          v11 = a1;
          if (!a1)
          {
            goto LABEL_18;
          }
        }

        if (v11 == 1)
        {
          v12 = 0x6F6F626F69647561;
        }

        else
        {
          v12 = 0x646578696DLL;
        }

        if (v11 == 1)
        {
          v13 = 0xE90000000000006BLL;
        }

        else
        {
          v13 = 0xE500000000000000;
        }

        if (v9 != v12)
        {
          goto LABEL_20;
        }

LABEL_19:
        if (v10 == v13)
        {

          v14 = 1;
          return v14 & 1;
        }

LABEL_20:
        v14 = sub_1B5604();

        if ((v14 & 1) == 0)
        {
          v7 = (v7 + 1) & v8;
          if ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
          {
            continue;
          }
        }

        return v14 & 1;
      }
    }
  }

  v14 = 0;
  return v14 & 1;
}

uint64_t sub_2ADF8(char a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    goto LABEL_14;
  }

  v4 = *(a2 + 40);
  sub_1B57F4();
  v5 = (a1 & 1) != 0 ? 1684627824 : 1701147238;
  sub_1B4884();

  v6 = sub_1B5844();
  v7 = -1 << *(a2 + 32);
  v8 = v6 & ~v7;
  if ((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (1)
    {
      v10 = *(*(a2 + 48) + v8) ? 1684627824 : 1701147238;
      if (v10 == v5)
      {
        break;
      }

      v11 = sub_1B5604();
      swift_bridgeObjectRelease_n();
      if ((v11 & 1) == 0)
      {
        v8 = (v8 + 1) & v9;
        if ((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
        {
          continue;
        }
      }

      return v11 & 1;
    }

    swift_bridgeObjectRelease_n();
    v11 = 1;
  }

  else
  {
LABEL_14:
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t sub_2AF30(char a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v4 = *(a2 + 40);
    sub_1B57F4();
    CollectionRecommendationType.rawValue.getter();
    sub_1B4884();

    v5 = sub_1B5844();
    v6 = -1 << *(a2 + 32);
    v7 = v5 & ~v6;
    if ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
    {
      v8 = ~v6;
      while (1)
      {
        v9 = 0xE400000000000000;
        v10 = 1802465122;
        switch(*(*(a2 + 48) + v7))
        {
          case 1:
            v9 = 0xE500000000000000;
            v10 = 0x736B6F6F62;
            break;
          case 2:
            v10 = 0xD000000000000010;
            v9 = 0x80000000001D4FE0;
            break;
          case 3:
            v10 = 0x417942736B6F6F62;
            v9 = 0xED0000726F687475;
            break;
          case 4:
            v10 = 0xD000000000000017;
            v9 = 0x80000000001D4740;
            break;
          case 5:
            v10 = 0x476E49736B6F6F62;
            v9 = 0xEC00000065726E65;
            break;
          case 6:
            v10 = 0xD000000000000011;
            v9 = 0x80000000001D4760;
            break;
          case 7:
            v10 = 0xD000000000000011;
            v9 = 0x80000000001D4780;
            break;
          case 8:
            v10 = 0xD000000000000013;
            v9 = 0x80000000001D47A0;
            break;
          case 9:
            v9 = 0xE600000000000000;
            v10 = 0x736569726573;
            break;
          case 0xA:
            v11 = 1954047342;
            goto LABEL_16;
          case 0xB:
            v11 = 1701998445;
LABEL_16:
            v10 = v11 | 0x65536E4900000000;
            v9 = 0xEC00000073656972;
            break;
          case 0xC:
            v10 = 0x6867696C68676968;
            v9 = 0xEA00000000007374;
            break;
          default:
            break;
        }

        v12 = 0xE400000000000000;
        v13 = 1802465122;
        switch(a1)
        {
          case 1:
            v12 = 0xE500000000000000;
            if (v10 == 0x736B6F6F62)
            {
              goto LABEL_41;
            }

            goto LABEL_42;
          case 2:
            v12 = 0x80000000001D4FE0;
            if (v10 != 0xD000000000000010)
            {
              goto LABEL_42;
            }

            goto LABEL_41;
          case 3:
            v12 = 0xED0000726F687475;
            if (v10 != 0x417942736B6F6F62)
            {
              goto LABEL_42;
            }

            goto LABEL_41;
          case 4:
            v12 = 0x80000000001D4740;
            if (v10 != 0xD000000000000017)
            {
              goto LABEL_42;
            }

            goto LABEL_41;
          case 5:
            v14 = 0x476E49736B6F6F62;
            v15 = 1701998181;
            goto LABEL_35;
          case 6:
            v12 = 0x80000000001D4760;
            if (v10 != 0xD000000000000011)
            {
              goto LABEL_42;
            }

            goto LABEL_41;
          case 7:
            v12 = 0x80000000001D4780;
            if (v10 != 0xD000000000000011)
            {
              goto LABEL_42;
            }

            goto LABEL_41;
          case 8:
            v12 = 0x80000000001D47A0;
            if (v10 != 0xD000000000000013)
            {
              goto LABEL_42;
            }

            goto LABEL_41;
          case 9:
            v12 = 0xE600000000000000;
            if (v10 != 0x736569726573)
            {
              goto LABEL_42;
            }

            goto LABEL_41;
          case 10:
            v13 = 0x65536E497478656ELL;
            v12 = 0xEC00000073656972;
            goto LABEL_40;
          case 11:
            v14 = 0x65536E4965726F6DLL;
            v15 = 1936025970;
LABEL_35:
            v12 = v15 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
            if (v10 != v14)
            {
              goto LABEL_42;
            }

            goto LABEL_41;
          case 12:
            v12 = 0xEA00000000007374;
            if (v10 != 0x6867696C68676968)
            {
              goto LABEL_42;
            }

            goto LABEL_41;
          default:
LABEL_40:
            if (v10 != v13)
            {
              goto LABEL_42;
            }

LABEL_41:
            if (v9 == v12)
            {

              v16 = 1;
              return v16 & 1;
            }

LABEL_42:
            v16 = sub_1B5604();

            if (v16)
            {
              return v16 & 1;
            }

            v7 = (v7 + 1) & v8;
            if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
            {
              return v16 & 1;
            }

            break;
        }
      }
    }
  }

  v16 = 0;
  return v16 & 1;
}

uint64_t sub_2B404(char a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    goto LABEL_19;
  }

  v4 = 0xE90000000000006BLL;
  v5 = 0x6F6F626F69647561;
  v6 = *(a2 + 40);
  sub_1B57F4();
  if ((a1 & 1) == 0)
  {
    v5 = 0x6B6F6F6265;
    v4 = 0xE500000000000000;
  }

  sub_1B4884();

  v7 = sub_1B5844();
  v8 = -1 << *(a2 + 32);
  v9 = v7 & ~v8;
  if ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = *(*(a2 + 48) + v9) ? 0x6F6F626F69647561 : 0x6B6F6F6265;
      v12 = *(*(a2 + 48) + v9) ? 0xE90000000000006BLL : 0xE500000000000000;
      if (v11 == v5 && v12 == v4)
      {
        break;
      }

      v14 = sub_1B5604();

      if ((v14 & 1) == 0)
      {
        v9 = (v9 + 1) & v10;
        if ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
        {
          continue;
        }
      }

      return v14 & 1;
    }

    v14 = 1;
  }

  else
  {
LABEL_19:
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t CommonCurrency.Headers.description.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (v2)
  {
    sub_3747C(0, v2, 0);
    v3 = _swiftEmptyArrayStorage;
    if (qword_228288 != -1)
    {
      swift_once();
    }

    v4 = 0;
    v29 = v1 + 32;
    v30 = v2;
    do
    {
      v5 = (v29 + 32 * v4);
      v7 = *v5;
      v6 = v5[1];
      v8 = v5[2];
      v9 = v5[3];
      v10 = off_228FF8[0];
      v11 = sub_1B4844();
      v13 = v12;
      if (*(&dword_10 + v10))
      {
        v14 = v11;
        v28 = v8;
        v31 = v3;
        v15 = *&stru_20.segname[v10];
        sub_1B57F4();

        sub_1B4884();
        v16 = sub_1B5844();
        v17 = -1 << *(&stru_20.cmd + v10);
        v18 = v16 & ~v17;
        if ((*(v10 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v18))
        {
          v19 = ~v17;
          while (1)
          {
            v20 = (*&stru_20.segname[v10 + 8] + 16 * v18);
            v21 = *v20 == v14 && v20[1] == v13;
            if (v21 || (sub_1B5604() & 1) != 0)
            {
              break;
            }

            v18 = (v18 + 1) & v19;
            if (((*(v10 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v18) & 1) == 0)
            {
              goto LABEL_14;
            }
          }

          v8 = 0x657463616465723CLL;
          v9 = 0xEA00000000003E64;
          v22 = v30;
          v3 = v31;
          goto LABEL_18;
        }

LABEL_14:

        v22 = v30;
        v3 = v31;
        v8 = v28;
      }

      else
      {

        v22 = v30;
      }

LABEL_18:

      v32._countAndFlagsBits = 8250;
      v32._object = 0xE200000000000000;
      sub_1B48D4(v32);
      v33._countAndFlagsBits = v8;
      v33._object = v9;
      sub_1B48D4(v33);

      v24 = v3[2];
      v23 = v3[3];
      if (v24 >= v23 >> 1)
      {
        sub_3747C((v23 > 1), v24 + 1, 1);
      }

      ++v4;
      v3[2] = v24 + 1;
      v25 = &v3[2 * v24];
      v25[4] = v7;
      v25[5] = v6;
    }

    while (v4 != v22);
  }

  sub_2B0C(&qword_228590, &qword_1B6590);
  sub_42094(&qword_229000, &qword_228590, &qword_1B6590);
  v26 = sub_1B4764();

  return v26;
}

Swift::String_optional __swiftcall CommonCurrency.Headers.firstValue(name:)(Swift::String_optional name)
{
  v2 = *v1;
  v3 = *(*v1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (v2 + 56);
    while (v4 < *(v2 + 16))
    {
      v7 = *(v5 - 1);
      v6 = *v5;
      v8 = *(v5 - 3);
      v9 = *(v5 - 2);
      sub_402F4();

      if (!sub_1B4F14())
      {

        goto LABEL_8;
      }

      ++v4;
      v5 += 4;
      if (v3 == v4)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:
    v7 = 0;
    v6 = 0;
LABEL_8:
    name.value._countAndFlagsBits = v7;
    name.value._object = v6;
  }

  return name;
}

uint64_t CommonCurrency.Headers.values(name:)()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    v4 = 0;
    v5 = v1 + 56;
    v26 = *(*v0 + 16);
    v24 = v2 - 1;
    do
    {
      v25 = v3;
      v6 = (v5 + 32 * v4);
      v7 = v4;
      while (1)
      {
        if (v7 >= *(v1 + 16))
        {
          __break(1u);
          return result;
        }

        v8 = *(v6 - 3);
        v9 = *(v6 - 2);
        v10 = *(v6 - 1);
        v11 = *v6;
        v4 = v7 + 1;
        sub_402F4();

        if (!sub_1B4F14())
        {
          break;
        }

        v6 += 4;
        ++v7;
        if (v26 == v4)
        {
          v3 = v25;
          goto LABEL_13;
        }
      }

      v13 = v25;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_374D4(0, v25[2] + 1, 1);
        v13 = v25;
      }

      v15 = v13[2];
      v14 = v13[3];
      if (v15 >= v14 >> 1)
      {
        result = sub_374D4((v14 > 1), v15 + 1, 1);
        v13 = v25;
      }

      v13[2] = v15 + 1;
      v16 = &v13[4 * v15];
      v16[4] = v8;
      v16[5] = v9;
      v16[6] = v10;
      v16[7] = v11;
      v5 = v1 + 56;
      v3 = v13;
    }

    while (v24 != v7);
  }

LABEL_13:
  v17 = v3[2];
  if (v17)
  {
    sub_3747C(0, v17, 0);
    v18 = v3 + 7;
    do
    {
      v20 = *(v18 - 1);
      v19 = *v18;
      v21 = _swiftEmptyArrayStorage[2];
      v22 = _swiftEmptyArrayStorage[3];

      if (v21 >= v22 >> 1)
      {
        sub_3747C((v22 > 1), v21 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v21 + 1;
      v23 = &_swiftEmptyArrayStorage[2 * v21];
      v23[4] = v20;
      v23[5] = v19;
      v18 += 4;
      --v17;
    }

    while (v17);
  }

  return _swiftEmptyArrayStorage;
}

Swift::Void __swiftcall CommonCurrency.Headers.add(name:value:)(Swift::String name, Swift::String_optional value)
{
  if (value.value._object)
  {
    object = value.value._object;
    countAndFlagsBits = value.value._countAndFlagsBits;
    v5 = name._object;
    v6 = name._countAndFlagsBits;
    v7 = *v2;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v2 = v7;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = sub_3324C(0, *(v7 + 2) + 1, 1, v7);
      *v2 = v7;
    }

    v10 = *(v7 + 2);
    v9 = *(v7 + 3);
    if (v10 >= v9 >> 1)
    {
      v7 = sub_3324C((v9 > 1), v10 + 1, 1, v7);
    }

    *(v7 + 2) = v10 + 1;
    v11 = &v7[32 * v10];
    *(v11 + 4) = v6;
    *(v11 + 5) = v5;
    *(v11 + 6) = countAndFlagsBits;
    *(v11 + 7) = object;
    *v2 = v7;
  }
}

uint64_t CommonCurrency.Headers.addPrimitive<A>(name:value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v27 = a1;
  v11 = sub_1B4EA4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v26 - v14;
  (*(v12 + 16))(&v26 - v14, a3, v11);
  v16 = *(a4 - 8);
  if ((*(v16 + 48))(v15, 1, a4) == 1)
  {
    return (*(v12 + 8))(v15, v11);
  }

  v18 = *(a5 + 8);
  v19 = sub_1B5594();
  v21 = v20;
  (*(v16 + 8))(v15, a4);
  v22 = *v6;

  result = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v22;
  if ((result & 1) == 0)
  {
    result = sub_3324C(0, *(v22 + 16) + 1, 1, v22);
    v22 = result;
    *v6 = result;
  }

  v24 = *(v22 + 16);
  v23 = *(v22 + 24);
  if (v24 >= v23 >> 1)
  {
    result = sub_3324C((v23 > 1), v24 + 1, 1, v22);
    v22 = result;
  }

  *(v22 + 16) = v24 + 1;
  v25 = (v22 + 32 * v24);
  v25[4] = v27;
  v25[5] = a2;
  v25[6] = v19;
  v25[7] = v21;
  *v6 = v22;
  return result;
}

uint64_t AnyCodableContainer.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return sub_40348(a1, a2);
}

uint64_t AnyCodableContainer.init(untypedValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2C010(a1, v6);
  result = sub_42F48(a1, &qword_229018, &qword_1BB420);
  if (!v2)
  {
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return sub_40348(v6, a2);
  }

  return result;
}

uint64_t sub_2C010@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  sub_43050(a1, &v53, &qword_229018, &qword_1BB420);
  if (!*(&v54 + 1))
  {
    result = sub_42F48(&v53, &qword_229018, &qword_1BB420);
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return result;
  }

  sub_430B8(&v53, &v56);
  sub_430C8(&v56, &v53);
  sub_2B0C(&qword_229578, &qword_1BC5E0);
  if (swift_dynamicCast())
  {
    v5 = *&v50[0];
    v6 = *(*&v50[0] + 16);
    if (v6)
    {
      v47 = a2;
      v52 = _swiftEmptyArrayStorage;
      result = sub_374F4(0, v6, 0);
      v8 = 0;
      v9 = _swiftEmptyArrayStorage;
      v10 = *&v50[0] + 32;
      v11 = &qword_1BB420;
      while (v8 < *(v5 + 16))
      {
        sub_43050(v10, v50, &qword_229018, v11);
        sub_2C010(&v53, v50);
        if (v3)
        {

          sub_42F48(v50, &qword_229018, &qword_1BB420);
          sub_2BF8(&v56);
        }

        v58 = 0;
        v12 = v11;
        v13 = v6;
        v14 = v12;
        result = sub_42F48(v50, &qword_229018, v12);
        v52 = v9;
        v16 = v9[2];
        v15 = v9[3];
        if (v16 >= v15 >> 1)
        {
          result = sub_374F4((v15 > 1), v16 + 1, 1);
          v9 = v52;
        }

        ++v8;
        v9[2] = v16 + 1;
        v17 = &v9[5 * v16];
        v18 = v53;
        v19 = v54;
        v17[8] = v55;
        *(v17 + 2) = v18;
        *(v17 + 3) = v19;
        v10 += 32;
        v6 = v13;
        v20 = v13 == v8;
        v11 = v14;
        v3 = v58;
        if (v20)
        {

          a2 = v47;
          goto LABEL_32;
        }
      }

      goto LABEL_38;
    }

    v9 = _swiftEmptyArrayStorage;
LABEL_32:
    v38 = &qword_229058;
    v39 = &qword_1BB440;
    *(a2 + 24) = sub_2B0C(&qword_229058, &qword_1BB440);
    v40 = &unk_229060;
LABEL_33:
    *(a2 + 32) = sub_42094(v40, v38, v39);
    *a2 = v9;
    return sub_2BF8(&v56);
  }

  sub_430C8(&v56, &v53);
  sub_2B0C(&qword_229580, &qword_1BC5E8);
  if (!swift_dynamicCast())
  {
    sub_430C8(&v56, &v52);
    sub_2B0C(&qword_229068, &qword_1BB448);
    if (swift_dynamicCast())
    {
      sub_2BF8(&v56);
      sub_264B8(v50, &v53);
      return sub_264B8(&v53, a2);
    }

    v51 = 0;
    memset(v50, 0, sizeof(v50));
    sub_42F48(v50, &qword_229010, &unk_1D15F0);
    v41 = sub_1B5144();
    swift_allocError();
    v43 = v42;
    v44 = *(sub_2B0C(&qword_229070, &qword_1BB450) + 48);
    sub_430C8(&v56, v43);
    *&v53 = 0;
    *(&v53 + 1) = 0xE000000000000000;
    sub_1B5084(47);

    *&v53 = 0x272065707954;
    *(&v53 + 1) = 0xE600000000000000;
    sub_2698(&v56, v57);
    swift_getDynamicType();
    v59._countAndFlagsBits = sub_1B58B4();
    sub_1B48D4(v59);

    v60._object = 0x80000000001D57F0;
    v60._countAndFlagsBits = 0xD000000000000027;
    sub_1B48D4(v60);
    sub_1B5124();
    (*(*(v41 - 8) + 104))(v43, enum case for EncodingError.invalidValue(_:), v41);
    swift_willThrow();
    return sub_2BF8(&v56);
  }

  sub_2B0C(&qword_2290B8, &qword_1BB480);
  result = sub_1B5294();
  v21 = 0;
  v22 = *(*&v50[0] + 64);
  v46 = *&v50[0] + 64;
  v58 = *&v50[0];
  v23 = 1 << *(*&v50[0] + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & v22;
  v45 = (v23 + 63) >> 6;
  v48 = result + 64;
  v49 = result;
  if ((v24 & v22) != 0)
  {
    while (1)
    {
      v26 = __clz(__rbit64(v25));
      v25 &= v25 - 1;
LABEL_23:
      v29 = v26 | (v21 << 6);
      v30 = (*(v58 + 48) + 16 * v29);
      v31 = *v30;
      v32 = v30[1];
      sub_43050(*(v58 + 56) + 32 * v29, v50, &qword_229018, &qword_1BB420);

      sub_2C010(&v53, v50);
      if (v2)
      {
        break;
      }

      sub_42F48(v50, &qword_229018, &qword_1BB420);
      result = v49;
      *(v48 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
      v33 = (v49[6] + 16 * v29);
      *v33 = v31;
      v33[1] = v32;
      v34 = v49[7] + 40 * v29;
      *v34 = v53;
      *(v34 + 16) = v54;
      *(v34 + 32) = v55;
      v35 = v49[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        goto LABEL_39;
      }

      v49[2] = v37;
      if (!v25)
      {
        goto LABEL_18;
      }
    }

    sub_42F48(v50, &qword_229018, &qword_1BB420);

    return sub_2BF8(&v56);
  }

LABEL_18:
  v27 = v21;
  while (1)
  {
    v21 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v21 >= v45)
    {
      v9 = result;

      v38 = &qword_229048;
      v39 = &qword_1BB438;
      *(a2 + 24) = sub_2B0C(&qword_229048, &qword_1BB438);
      v40 = &unk_229050;
      goto LABEL_33;
    }

    v28 = *(v46 + 8 * v21);
    ++v27;
    if (v28)
    {
      v26 = __clz(__rbit64(v28));
      v25 = (v28 - 1) & v28;
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}

uint64_t AnyCodableContainer.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[4];
  sub_2698(a1, a1[3]);
  sub_1B5854();
  if (!v2)
  {
    sub_2698(v12, v13);
    if (sub_1B5694())
    {
      v11 = 0;
      v6 = 0uLL;
      v9 = 0u;
      v10 = 0u;
    }

    else
    {
      sub_2698(v12, v13);
      *(&v10 + 1) = &type metadata for Bool;
      v11 = &protocol witness table for Bool;
      LOBYTE(v9) = sub_1B5624() & 1;
      v6 = 0uLL;
    }

    v14 = v6;
    v15 = v6;
    v16 = 0;
    sub_40348(&v9, &v14);
    sub_2BF8(v12);
    v7 = v15;
    *a2 = v14;
    *(a2 + 16) = v7;
    *(a2 + 32) = v16;
  }

  return sub_2BF8(a1);
}

uint64_t AnyCodableContainer.encode(to:)(void *a1)
{
  v2 = a1[4];
  sub_2698(a1, a1[3]);
  sub_1B5874();
  sub_43050(v1, &v53, &qword_229010, &unk_1D15F0);
  if (!v54)
  {
    sub_42F48(&v53, &qword_229010, &unk_1D15F0);
    sub_40474(v57, v58);
    sub_1B5734();
    return sub_2BF8(v57);
  }

  sub_264B8(&v53, v55);
  sub_404C4(v55, &v53);
  sub_2B0C(&qword_229068, &qword_1BB448);
  if (swift_dynamicCast())
  {
    sub_40474(v57, v58);
    sub_1B56C4();
LABEL_42:
    sub_2BF8(&v53);
    sub_2BF8(v55);
    return sub_2BF8(v57);
  }

  if (swift_dynamicCast())
  {
    sub_40474(v57, v58);
    sub_1B56F4();
    goto LABEL_42;
  }

  if (swift_dynamicCast())
  {
    sub_40474(v57, v58);
    sub_1B5724();
    goto LABEL_42;
  }

  if (swift_dynamicCast())
  {
    sub_40474(v57, v58);
    sub_1B5714();
    goto LABEL_42;
  }

  if (swift_dynamicCast())
  {
    sub_40474(v57, v58);
    sub_1B56E4();
    goto LABEL_42;
  }

  if (swift_dynamicCast())
  {
    sub_40474(v57, v58);
    sub_1B56D4();
    goto LABEL_42;
  }

  if (swift_dynamicCast())
  {
    sub_40474(v57, v58);
    sub_1B56B4();
LABEL_41:

    goto LABEL_42;
  }

  sub_2B0C(&qword_229058, &qword_1BB440);
  if (swift_dynamicCast())
  {
    v3 = *(v52 + 16);
    if (v3)
    {
      sub_37514(0, v3, 0);
      v4 = v52 + 32;
      do
      {
        sub_43050(v4, &v46, &qword_229010, &unk_1D15F0);
        v49 = 0u;
        v50 = 0u;
        v51 = 0;
        sub_40348(&v46, &v49);
        v6 = _swiftEmptyArrayStorage[2];
        v5 = _swiftEmptyArrayStorage[3];
        v7 = v6 + 1;
        if (v6 >= v5 >> 1)
        {
          sub_37514((v5 > 1), v6 + 1, 1);
          v7 = v6 + 1;
        }

        _swiftEmptyArrayStorage[2] = v7;
        v8 = &_swiftEmptyArrayStorage[5 * v6];
        v9 = v49;
        v10 = v50;
        v8[8] = v51;
        *(v8 + 2) = v9;
        *(v8 + 3) = v10;
        v4 += 40;
        --v3;
      }

      while (v3);
    }

    else
    {
    }

    *&v49 = _swiftEmptyArrayStorage;
    sub_40474(v57, v58);
    sub_2B0C(&qword_229020, &qword_1BB428);
    sub_40664(&qword_229090, sub_40610);
    sub_1B5704();
    goto LABEL_41;
  }

  sub_2B0C(&qword_229048, &qword_1BB438);
  if (!swift_dynamicCast())
  {
    v35 = sub_1B5144();
    swift_allocError();
    v37 = v36;
    v38 = *(sub_2B0C(&qword_229070, &qword_1BB450) + 48);
    v39 = v56;
    v40 = sub_2698(v55, v56);
    v37[3] = v39;
    v41 = sub_40528(v37);
    (*(*(v39 - 8) + 16))(v41, v40, v39);
    sub_2698(v57, v58);
    sub_1B56A4();
    sub_1B5124();
    (*(*(v35 - 8) + 104))(v37, enum case for EncodingError.invalidValue(_:), v35);
    swift_willThrow();
    goto LABEL_42;
  }

  sub_2B0C(&qword_229078, &qword_1BB458);
  result = sub_1B5294();
  v12 = result;
  v13 = 0;
  v15 = v52 + 64;
  v14 = *(v52 + 64);
  v43 = result;
  v44 = v52;
  v16 = 1 << *(v52 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v14;
  v19 = (v16 + 63) >> 6;
  v42 = result + 64;
  if ((v17 & v14) != 0)
  {
    while (1)
    {
      v20 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_34:
      v23 = v20 | (v13 << 6);
      v24 = 16 * v23;
      v25 = (*(v44 + 48) + 16 * v23);
      v26 = v25[1];
      v45 = *v25;
      v27 = 40 * v23;
      sub_43050(*(v44 + 56) + 40 * v23, &v49, &qword_229010, &unk_1D15F0);
      v48 = 0;
      v46 = 0u;
      v47 = 0u;

      result = sub_40348(&v49, &v46);
      *(v42 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      v12 = v43;
      v28 = (v43[6] + v24);
      *v28 = v45;
      v28[1] = v26;
      v29 = v43[7] + v27;
      v30 = v48;
      v31 = v47;
      *v29 = v46;
      *(v29 + 16) = v31;
      *(v29 + 32) = v30;
      v32 = v43[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        break;
      }

      v43[2] = v34;
      if (!v18)
      {
        goto LABEL_29;
      }
    }
  }

  else
  {
LABEL_29:
    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v19)
      {

        *&v49 = v12;
        sub_40474(v57, v58);
        sub_2B0C(&qword_229038, &qword_1BB430);
        sub_4058C(&qword_229080, sub_40610);
        sub_1B5704();

        goto LABEL_42;
      }

      v22 = *(v15 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v18 = (v22 - 1) & v22;
        goto LABEL_34;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t static AnyCodableContainer.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_43050(a1, v52, &qword_229010, &unk_1D15F0);
  sub_43050(a2, v54, &qword_229010, &unk_1D15F0);
  if (!(v53 | v55))
  {
    v3 = &qword_229010;
    v4 = &unk_1D15F0;
LABEL_5:
    sub_42F48(v52, v3, v4);
    v5 = 1;
    return v5 & 1;
  }

  sub_2B0C(&qword_229098, &qword_1BB460);
  sub_2B0C(&qword_2290A0, &qword_1BB468);
  if (swift_dynamicCast())
  {
    v3 = &qword_229098;
    v4 = &qword_1BB460;
    goto LABEL_5;
  }

  if (!v53)
  {
    goto LABEL_68;
  }

  sub_43050(v52, v51, &qword_229010, &unk_1D15F0);
  if (!v55)
  {
LABEL_67:
    sub_2BF8(v51);
LABEL_68:
    v36 = &qword_229098;
    v37 = &qword_1BB460;
LABEL_69:
    sub_42F48(v52, v36, v37);
    v5 = 0;
    return v5 & 1;
  }

  sub_43050(v54, v50, &qword_229010, &unk_1D15F0);
  sub_2B0C(&qword_229068, &qword_1BB448);
  if (swift_dynamicCast() && swift_dynamicCast())
  {
    v5 = v39 ^ v46 ^ 1;
LABEL_29:
    sub_2BF8(v50);
    sub_2BF8(v51);
LABEL_30:
    sub_42F48(v54, &qword_229010, &unk_1D15F0);
    sub_42F48(v52, &qword_229010, &unk_1D15F0);
    return v5 & 1;
  }

  if (swift_dynamicCast() && (v7 = v39, swift_dynamicCast()) || swift_dynamicCast() && (v7 = v39, swift_dynamicCast()))
  {
    v8 = v7 == v46;
    goto LABEL_26;
  }

  if (swift_dynamicCast() && swift_dynamicCast())
  {
    v8 = v39 == v46;
    goto LABEL_26;
  }

  if (swift_dynamicCast() && swift_dynamicCast())
  {
    v8 = *&v39 == *&v46;
    goto LABEL_26;
  }

  if (swift_dynamicCast() && swift_dynamicCast())
  {
    v8 = *&v39 == *&v46;
LABEL_26:
    v5 = v8;
    goto LABEL_29;
  }

  if (swift_dynamicCast())
  {
    if (swift_dynamicCast())
    {
      if (v39 == v46)
      {
        v5 = 1;
      }

      else
      {
        v5 = sub_1B5604();
      }

LABEL_72:
      sub_2BF8(v50);
      sub_2BF8(v51);
      goto LABEL_30;
    }
  }

  sub_2B0C(&qword_229058, &qword_1BB440);
  if (!swift_dynamicCast())
  {
LABEL_47:
    sub_2B0C(&qword_229048, &qword_1BB438);
    if (swift_dynamicCast())
    {
      if (swift_dynamicCast())
      {
        v16 = v49;
        if (*(v38[0] + 16) == *(v49 + 16))
        {

          v18 = sub_2A284(v17);

          v20 = sub_2A284(v19);
          v21 = sub_2DF24(v18, v20);

          if (v21)
          {
            v22 = 1 << *(v38[0] + 32);
            v23 = -1;
            if (v22 < 64)
            {
              v23 = ~(-1 << v22);
            }

            v24 = v23 & *(v38[0] + 64);
            v25 = (v22 + 63) >> 6;

            v26 = 0;
            while (v24)
            {
LABEL_59:
              if (!*(v38[0] + 16))
              {
                goto LABEL_81;
              }

              v28 = (*(v38[0] + 48) + ((v26 << 10) | (16 * __clz(__rbit64(v24)))));
              v30 = *v28;
              v29 = v28[1];

              result = sub_3A678(v30, v29);
              if ((v31 & 1) == 0)
              {
                goto LABEL_82;
              }

              sub_43050(*(v38[0] + 56) + 40 * result, &v46, &qword_229010, &unk_1D15F0);
              v39 = 0u;
              v40 = 0u;
              v41 = 0;
              result = sub_40348(&v46, &v39);
              if (!*(v16 + 16))
              {
                goto LABEL_83;
              }

              v32 = sub_3A678(v30, v29);
              v34 = v33;

              if ((v34 & 1) == 0)
              {
                goto LABEL_84;
              }

              v24 &= v24 - 1;
              sub_43050(*(v16 + 56) + 40 * v32, v44, &qword_229010, &unk_1D15F0);
              v46 = 0u;
              v47 = 0u;
              v48 = 0;
              sub_40348(v44, &v46);
              v35 = static AnyCodableContainer.== infix(_:_:)(&v39, &v46);
              sub_40444(&v46);
              result = sub_40444(&v39);
              if ((v35 & 1) == 0)
              {

                goto LABEL_74;
              }
            }

            while (1)
            {
              v27 = v26 + 1;
              if (__OFADD__(v26, 1))
              {
                goto LABEL_79;
              }

              if (v27 >= v25)
              {

                sub_2BF8(v50);
                sub_2BF8(v51);
                sub_42F48(v54, &qword_229010, &unk_1D15F0);
                v3 = &qword_229010;
                v4 = &unk_1D15F0;
                goto LABEL_5;
              }

              v24 = *(v38[0] + 64 + 8 * v27);
              ++v26;
              if (v24)
              {
                v26 = v27;
                goto LABEL_59;
              }
            }
          }
        }

        goto LABEL_73;
      }
    }

    sub_2BF8(v50);
    goto LABEL_67;
  }

  v9 = v49;
  result = swift_dynamicCast();
  if (!result)
  {

    goto LABEL_47;
  }

  v10 = v43;
  v11 = *(v49 + 16);
  if (v11 != *(v43 + 16))
  {
LABEL_73:

LABEL_74:

    sub_2BF8(v50);
    sub_2BF8(v51);
    sub_42F48(v54, &qword_229010, &unk_1D15F0);
    v36 = &qword_229010;
    v37 = &unk_1D15F0;
    goto LABEL_69;
  }

  v12 = 0;
  v13 = 32;
  while (1)
  {
    if (v11 == v12)
    {

      v5 = 1;
      goto LABEL_72;
    }

    if (v12 >= *(v9 + 16))
    {
      break;
    }

    result = sub_43050(v9 + v13, &v46, &qword_229010, &unk_1D15F0);
    v14 = *(v10 + 16);
    if (v12 == v14)
    {

      sub_42F48(&v46, &qword_229010, &unk_1D15F0);
      v5 = 1;
      goto LABEL_72;
    }

    if (v12++ >= v14)
    {
      goto LABEL_80;
    }

    v39 = v46;
    v40 = v47;
    v41 = v48;
    sub_43050(v10 + v13, v42, &qword_229010, &unk_1D15F0);
    sub_43050(&v39, v44, &qword_229010, &unk_1D15F0);
    v46 = 0u;
    v47 = 0u;
    v48 = 0;
    sub_40348(v44, &v46);
    sub_43050(v42, v38, &qword_229010, &unk_1D15F0);
    memset(v44, 0, sizeof(v44));
    v45 = 0;
    sub_40348(v38, v44);
    v15 = static AnyCodableContainer.== infix(_:_:)(&v46, v44);
    sub_40444(v44);
    sub_40444(&v46);
    result = sub_42F48(&v39, &qword_229098, &qword_1BB460);
    v13 += 40;
    if ((v15 & 1) == 0)
    {

      v5 = 0;
      goto LABEL_72;
    }
  }

  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
  return result;
}

uint64_t sub_2DF24(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v23 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    v16 = *(a2 + 40);
    sub_1B57F4();

    sub_1B4884();
    v17 = sub_1B5844();
    v18 = -1 << *(a2 + 32);
    v19 = v17 & ~v18;
    if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v20 = ~v18;
    while (1)
    {
      v21 = (*(a2 + 48) + 16 * v19);
      v22 = *v21 == v15 && v21[1] == v14;
      if (v22 || (sub_1B5604() & 1) != 0)
      {
        break;
      }

      v19 = (v19 + 1) & v20;
      if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v23;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2E0DC(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + 8 * (v10 | (v4 << 6)));
    v14 = *(a2 + 40);
    result = sub_1B57E4();
    v15 = -1 << *(a2 + 32);
    v16 = result & ~v15;
    if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
    {
      return 0;
    }

    v17 = ~v15;
    while (*(*(a2 + 48) + 8 * v16) != v13)
    {
      v16 = (v16 + 1) & v17;
      if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t AnyCodableContainer.hash(into:)(uint64_t a1)
{
  sub_43050(v1, v39, &qword_229010, &unk_1D15F0);
  if (!v40)
  {
    return sub_42F48(v39, &qword_229010, &unk_1D15F0);
  }

  sub_43050(v39, v38, &qword_229010, &unk_1D15F0);
  sub_2B0C(&qword_229068, &qword_1BB448);
  if (swift_dynamicCast())
  {
    sub_1B5814(v33);
    goto LABEL_16;
  }

  if (swift_dynamicCast())
  {
    sub_1B5804(v33);
    goto LABEL_16;
  }

  if (swift_dynamicCast())
  {
    v3 = v33;
LABEL_8:
    sub_1B5834(v3);
    goto LABEL_16;
  }

  if (swift_dynamicCast())
  {
    v4 = v33;
LABEL_15:
    sub_1B5824(v4);
    goto LABEL_16;
  }

  if (swift_dynamicCast())
  {
    v5 = *&v33;
    if (*&v33 == 0.0)
    {
      v5 = 0.0;
    }

    v4 = LODWORD(v5);
    goto LABEL_15;
  }

  if (swift_dynamicCast())
  {
    v7 = *&v33;
    if (*&v33 == 0.0)
    {
      v7 = 0.0;
    }

    v3 = *&v7;
    goto LABEL_8;
  }

  if (swift_dynamicCast())
  {
    sub_1B4884();

    goto LABEL_16;
  }

  sub_2B0C(&qword_2290A8, &qword_1BB470);
  if (swift_dynamicCast())
  {
    v8 = *(*&v27[0] + 16);
    if (v8)
    {
      v9 = *&v27[0] + 32;
      do
      {
        sub_404C4(v9, &v29);
        v33 = 0u;
        v34 = 0u;
        *&v35 = 0;
        sub_40348(&v29, &v33);
        AnyCodableContainer.hash(into:)(a1);
        sub_40444(&v33);
        v9 += 40;
        --v8;
      }

      while (v8);
    }

    goto LABEL_16;
  }

  sub_2B0C(&qword_2290B0, &qword_1BB478);
  result = swift_dynamicCast();
  if (!result)
  {
LABEL_16:
    sub_2BF8(v38);
    return sub_42F48(v39, &qword_229010, &unk_1D15F0);
  }

  v10 = 0;
  v11 = v37;
  v13 = v37 + 64;
  v12 = *(v37 + 64);
  v14 = 1 << *(v37 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v12;
  v17 = (v14 + 63) >> 6;
  if ((v15 & v12) != 0)
  {
    while (1)
    {
      v18 = v10;
LABEL_41:
      v21 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v22 = v21 | (v18 << 6);
      v23 = (*(v11 + 48) + 16 * v22);
      v25 = *v23;
      v24 = v23[1];
      sub_404C4(*(v11 + 56) + 40 * v22, v27);
      *&v29 = v25;
      *(&v29 + 1) = v24;
      sub_264B8(v27, &v30);

      v20 = v18;
LABEL_42:
      v33 = v29;
      v34 = v30;
      v35 = v31;
      v36 = v32;
      if (!*(&v29 + 1))
      {
        break;
      }

      sub_264B8(&v34, &v29);
      sub_1B4884();

      sub_404C4(&v29, v26);
      memset(v27, 0, sizeof(v27));
      v28 = 0;
      sub_40348(v26, v27);
      AnyCodableContainer.hash(into:)(a1);
      sub_2BF8(&v29);
      result = sub_40444(v27);
      v10 = v20;
      if (!v16)
      {
        goto LABEL_34;
      }
    }

    goto LABEL_16;
  }

LABEL_34:
  if (v17 <= v10 + 1)
  {
    v19 = v10 + 1;
  }

  else
  {
    v19 = v17;
  }

  v20 = v19 - 1;
  while (1)
  {
    v18 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v18 >= v17)
    {
      v16 = 0;
      v32 = 0;
      v30 = 0u;
      v31 = 0u;
      v29 = 0u;
      goto LABEL_42;
    }

    v16 = *(v13 + 8 * v18);
    ++v10;
    if (v16)
    {
      goto LABEL_41;
    }
  }

  __break(1u);
  return result;
}

Swift::Int AnyCodableContainer.hashValue.getter()
{
  sub_1B57F4();
  AnyCodableContainer.hash(into:)(v1);
  return sub_1B5844();
}

Swift::Int sub_2E714()
{
  sub_1B57F4();
  AnyCodableContainer.hash(into:)(v1);
  return sub_1B5844();
}

uint64_t AnyCodableContainer.init(stringLiteral:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4[3] = &type metadata for String;
  v4[4] = &protocol witness table for String;
  v4[0] = a1;
  v4[1] = a2;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0;
  return sub_40348(v4, a3);
}

uint64_t sub_2E7A0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v6[3] = &type metadata for String;
  v6[4] = &protocol witness table for String;
  v6[0] = v3;
  v6[1] = v4;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0;
  return sub_40348(v6, a2);
}

uint64_t AnyCodableContainer.init(nilLiteral:)@<X0>(uint64_t a1@<X8>)
{
  v3 = 0;
  memset(v2, 0, sizeof(v2));
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  return sub_40348(v2, a1);
}

uint64_t AnyCodableContainer.init(integerLiteral:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3[3] = &type metadata for Int;
  v3[4] = &protocol witness table for Int;
  v3[0] = a1;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0;
  return sub_40348(v3, a2);
}

uint64_t sub_2E878@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v5[3] = &type metadata for Int;
  v5[4] = &protocol witness table for Int;
  v5[0] = v3;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0;
  return sub_40348(v5, a2);
}

uint64_t AnyCodableContainer.init(floatLiteral:)@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v3[3] = &type metadata for Double;
  v3[4] = &protocol witness table for Double;
  *v3 = a2;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  return sub_40348(v3, a1);
}

uint64_t sub_2E914@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v4[3] = &type metadata for Double;
  v4[4] = &protocol witness table for Double;
  v4[0] = v2;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0;
  return sub_40348(v4, a2);
}

uint64_t AnyCodableContainer.init(arrayLiteral:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5[3] = sub_2B0C(&qword_229058, &qword_1BB440);
  v5[4] = sub_42094(&qword_229060, &qword_229058, &qword_1BB440);
  v5[0] = a1;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0;
  return sub_40348(v5, a2);
}

uint64_t AnyCodableContainer.init(dictionaryLiteral:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16))
  {
    v3 = a1;
    sub_2B0C(&qword_2290B8, &qword_1BB480);
    v4 = sub_1B52B4();
    a1 = v3;
  }

  else
  {
    v4 = &_swiftEmptyDictionarySingleton;
  }

  v7[0] = v4;
  sub_3B324(a1, 1, v7);
  v5 = v7[0];
  v7[3] = sub_2B0C(&qword_229048, &qword_1BB438);
  v7[4] = sub_42094(&qword_229050, &qword_229048, &qword_1BB438);
  v7[0] = v5;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0;
  return sub_40348(v7, a2);
}

uint64_t AnyCodableObjectContainer.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = a1[4];
  sub_2698(a1, a1[3]);
  sub_1B5854();
  if (!v2)
  {
    sub_2698(v8, v8[3]);
    sub_2B0C(&qword_229038, &qword_1BB430);
    sub_4058C(&qword_229040, sub_403B8);
    sub_1B5664();
    v6 = sub_35600(v8[6]);

    sub_2BF8(v8);
    *a2 = v6;
  }

  return sub_2BF8(a1);
}

uint64_t AnyCodableObjectContainer.encode(to:)(void *a1)
{
  v2 = *v1;
  v3 = a1[4];
  sub_2698(a1, a1[3]);
  sub_1B5874();
  sub_2B0C(&qword_229078, &qword_1BB458);
  result = sub_1B5294();
  v5 = 0;
  v7 = v2 + 64;
  v6 = *(v2 + 64);
  v27 = v2;
  v8 = 1 << *(v2 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v6;
  v11 = (v8 + 63) >> 6;
  v26 = result + 64;
  v33 = result;
  if ((v9 & v6) != 0)
  {
    while (1)
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_10:
      v15 = v12 | (v5 << 6);
      v16 = (*(v27 + 48) + 16 * v15);
      v17 = *v16;
      v18 = v16[1];
      sub_43050(*(v27 + 56) + 40 * v15, v31, &qword_229010, &unk_1D15F0);
      v30 = 0;
      v28 = 0u;
      v29 = 0u;

      sub_40348(v31, &v28);
      *(v26 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33;
      v19 = (*(v33 + 48) + 16 * v15);
      *v19 = v17;
      v19[1] = v18;
      v20 = *(result + 56) + 40 * v15;
      v21 = v30;
      v22 = v29;
      *v20 = v28;
      *(v20 + 16) = v22;
      *(v20 + 32) = v21;
      v23 = *(result + 16);
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        break;
      }

      *(result + 16) = v25;
      if (!v10)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v11)
      {
        v31[0] = result;
        sub_40474(v32, v32[3]);
        sub_2B0C(&qword_229038, &qword_1BB430);
        sub_4058C(&qword_229080, sub_40610);
        sub_1B5704();

        return sub_2BF8(v32);
      }

      v14 = *(v7 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t AnyCodableObjectContainer.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *v1 + 64;
  v5 = 1 << *(*v1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(*v1 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  if (v7)
  {
    while (1)
    {
      v11 = v10;
LABEL_8:
      v12 = __clz(__rbit64(v7)) | (v11 << 6);
      v13 = (*(v3 + 48) + 16 * v12);
      v15 = *v13;
      v14 = v13[1];
      sub_43050(*(v3 + 56) + 40 * v12, &v22, &qword_229010, &unk_1D15F0);
      v17 = v22;
      v18 = v23;
      v16 = v24;

      if (!v14)
      {
      }

      v7 &= v7 - 1;
      v22 = v17;
      v23 = v18;
      v24 = v16;
      sub_1B4884();

      sub_43050(&v22, v19, &qword_229010, &unk_1D15F0);
      memset(v20, 0, sizeof(v20));
      v21 = 0;
      sub_40348(v19, v20);
      AnyCodableContainer.hash(into:)(a1);
      sub_42F48(&v22, &qword_229010, &unk_1D15F0);
      result = sub_40444(v20);
      v10 = v11;
      if (!v7)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v8)
      {
      }

      v7 = *(v4 + 8 * v11);
      ++v10;
      if (v7)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

Swift::Int AnyCodableObjectContainer.hashValue.getter()
{
  v2[9] = *v0;
  sub_1B57F4();
  AnyCodableObjectContainer.hash(into:)(v2);
  return sub_1B5844();
}

uint64_t AnyCodableObjectContainer.init(dictionaryLiteral:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 16))
  {
    v3 = a1;
    sub_2B0C(&qword_2290B8, &qword_1BB480);
    v4 = sub_1B52B4();
    a1 = v3;
  }

  else
  {
    v4 = &_swiftEmptyDictionarySingleton;
  }

  v6 = v4;
  result = sub_3B324(a1, 1, &v6);
  *a2 = v6;
  return result;
}

uint64_t sub_2F24C@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t *a2@<X8>)
{
  v4 = a1();

  if (!v2)
  {
    *a2 = v4;
  }

  return result;
}

uint64_t AnyCodableArrayContainer.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = a1[4];
  sub_2698(a1, a1[3]);
  sub_1B5854();
  if (!v2)
  {
    sub_2698(v18, v18[3]);
    sub_2B0C(&qword_229020, &qword_1BB428);
    sub_40664(&qword_229028, sub_403B8);
    sub_1B5664();
    v6 = *(*&v16[0] + 16);
    if (v6)
    {
      v19 = _swiftEmptyArrayStorage;
      sub_374F4(0, v6, 0);
      v7 = v19;
      v8 = *&v16[0] + 32;
      do
      {
        sub_4040C(v8, v15);
        sub_43050(v15, v16, &qword_229010, &unk_1D15F0);
        sub_40444(v15);
        v19 = v7;
        v10 = v7[2];
        v9 = v7[3];
        if (v10 >= v9 >> 1)
        {
          sub_374F4((v9 > 1), v10 + 1, 1);
          v7 = v19;
        }

        v7[2] = v10 + 1;
        v11 = &v7[5 * v10];
        v12 = v16[0];
        v13 = v16[1];
        v11[8] = v17;
        *(v11 + 2) = v12;
        *(v11 + 3) = v13;
        v8 += 40;
        --v6;
      }

      while (v6);
    }

    else
    {

      v7 = _swiftEmptyArrayStorage;
    }

    sub_2BF8(v18);
    *a2 = v7;
  }

  return sub_2BF8(a1);
}

uint64_t AnyCodableArrayContainer.encode(to:)(void *a1)
{
  v2 = *v1;
  v3 = a1[4];
  sub_2698(a1, a1[3]);
  sub_1B5874();
  v4 = *(v2 + 16);
  v5 = _swiftEmptyArrayStorage;
  if (v4)
  {
    v18 = _swiftEmptyArrayStorage;
    sub_37514(0, v4, 0);
    v5 = _swiftEmptyArrayStorage;
    v6 = v2 + 32;
    do
    {
      sub_43050(v6, v13, &qword_229010, &unk_1D15F0);
      v14 = 0u;
      v15 = 0u;
      v16 = 0;
      sub_40348(v13, &v14);
      v18 = v5;
      v8 = v5[2];
      v7 = v5[3];
      if (v8 >= v7 >> 1)
      {
        sub_37514((v7 > 1), v8 + 1, 1);
        v5 = v18;
      }

      v5[2] = v8 + 1;
      v9 = &v5[5 * v8];
      v10 = v14;
      v11 = v15;
      v9[8] = v16;
      *(v9 + 2) = v10;
      *(v9 + 3) = v11;
      v6 += 40;
      --v4;
    }

    while (v4);
  }

  *&v14 = v5;
  sub_40474(v17, v17[3]);
  sub_2B0C(&qword_229020, &qword_1BB428);
  sub_40664(&qword_229090, sub_40610);
  sub_1B5704();

  return sub_2BF8(v17);
}

uint64_t AnyCodableArrayContainer.hash(into:)(uint64_t result)
{
  v2 = *(*v1 + 16);
  if (v2)
  {
    v3 = result;
    v4 = *v1 + 32;
    do
    {
      sub_43050(v4, v5, &qword_229010, &unk_1D15F0);
      memset(v6, 0, sizeof(v6));
      v7 = 0;
      sub_40348(v5, v6);
      AnyCodableContainer.hash(into:)(v3);
      result = sub_40444(v6);
      v4 += 40;
      --v2;
    }

    while (v2);
  }

  return result;
}

Swift::Int AnyCodableArrayContainer.hashValue.getter()
{
  v1 = *v0;
  sub_1B57F4();
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 32;
    do
    {
      sub_43050(v3, v5, &qword_229010, &unk_1D15F0);
      memset(v6, 0, sizeof(v6));
      v7 = 0;
      sub_40348(v5, v6);
      AnyCodableContainer.hash(into:)(v8);
      sub_40444(v6);
      v3 += 40;
      --v2;
    }

    while (v2);
  }

  return sub_1B5844();
}

Swift::Int sub_2F830(uint64_t a1, uint64_t a2, void (*a3)(void *))
{
  v6[9] = *v3;
  sub_1B57F4();
  a3(v6);
  return sub_1B5844();
}

Swift::Int sub_2F8A0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *))
{
  v7[9] = *v4;
  sub_1B57F4();
  a4(v7);
  return sub_1B5844();
}

unint64_t CommonErrorPayload.description.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v12 = 0;
      v13 = 0xE000000000000000;
      sub_1B5084(52);
      v20._object = 0x80000000001D5640;
      v20._countAndFlagsBits = 0xD000000000000024;
      sub_1B48D4(v20);
      v21._countAndFlagsBits = v2;
      v21._object = v1;
      sub_1B48D4(v21);
      v6._countAndFlagsBits = 0x73206D6F72662027;
      v6._object = 0xEE002E676E697274;
    }

    else if (v3 == 4)
    {
      v12 = 0;
      v13 = 0xE000000000000000;
      sub_1B5084(54);
      v16._object = 0x80000000001D55F0;
      v16._countAndFlagsBits = 0xD000000000000024;
      sub_1B48D4(v16);
      v17._countAndFlagsBits = v2;
      v17._object = v1;
      sub_1B48D4(v17);
      v6._countAndFlagsBits = 0xD000000000000010;
      v6._object = 0x80000000001D5620;
    }

    else
    {
      sub_1B5084(27);

      v12 = 0xD000000000000019;
      v13 = 0x80000000001D55D0;
      v6._countAndFlagsBits = v2;
      v6._object = v1;
    }

    goto LABEL_13;
  }

  if (!*(v0 + 16))
  {
    v12 = 0;
    v13 = 0xE000000000000000;

    sub_1B5084(59);
    v18._countAndFlagsBits = 0xD000000000000039;
    v18._object = 0x80000000001D56D0;
    sub_1B48D4(v18);
    sub_4123C(128);
    sub_416C4(v2, v1, 0);
    v7 = sub_1B4864();
    v9 = v8;

    v19._countAndFlagsBits = v7;
    v19._object = v9;
    sub_1B48D4(v19);

    return v12;
  }

  if (v3 != 1)
  {
    sub_1B5084(42);

    v12 = 0xD00000000000001BLL;
    v13 = 0x80000000001D5670;
    v22._countAndFlagsBits = v2;
    v22._object = v1;
    sub_1B48D4(v22);
    v6._countAndFlagsBits = 0x73696D2073692027;
    v6._object = 0xED00002E676E6973;
LABEL_13:
    sub_1B48D4(v6);
    return v12;
  }

  v12 = 0;
  v13 = 0xE000000000000000;
  sub_1B5084(56);
  v14._countAndFlagsBits = 0xD000000000000036;
  v14._object = 0x80000000001D5690;
  sub_1B48D4(v14);
  sub_4161C(v2, v1);
  sub_2FC40(128, v2, v1, v11);
  v4 = v11[0];
  v5 = v11[1];
  v15._countAndFlagsBits = sub_1B3F54();
  sub_1B48D4(v15);

  sub_41670(v4, v5);
  return v12;
}

uint64_t sub_2FC40@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  v6 = result;
  v8 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v8 == 2)
    {
      v10 = *(a2 + 16);
      v9 = *(a2 + 24);
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }
  }

  else
  {
    if (v8)
    {
      v9 = a2 >> 32;
    }

    else
    {
      v9 = BYTE6(a3);
    }

    if (v8)
    {
      v10 = a2;
    }

    else
    {
      v10 = 0;
    }
  }

  v11 = sub_40174(v10, v9, a2, a3);
  if (v6 && v11 < v6)
  {
    if (v8 <= 1)
    {
      if (!v8)
      {
        goto LABEL_28;
      }

      v12 = a2 >> 32;
      goto LABEL_26;
    }

    if (v8 != 2)
    {
      goto LABEL_28;
    }

    v12 = *(a2 + 24);
LABEL_24:
    result = *(a2 + 16);
    goto LABEL_27;
  }

  v12 = sub_40110(v10, v6, a2, a3);
  result = 0;
  if (v8 > 1)
  {
    if (v8 != 3)
    {
      goto LABEL_24;
    }
  }

  else if (v8)
  {
LABEL_26:
    result = a2;
  }

LABEL_27:
  if (v12 >= result)
  {
LABEL_28:
    v13 = sub_1B3F74();
    v15 = v14;
    result = sub_41670(a2, a3);
    *a4 = v13;
    a4[1] = v15;
    return result;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_2FD88(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16);
    v3 = *(type metadata accessor for CollectionRecommendation(0) - 8);
    v4 = a2 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    return a2;
  }

  return result;
}

uint64_t sub_2FE20(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16);
    return a2;
  }

  return result;
}

unint64_t CommonErrorPayload.errorDescription.getter()
{
  v2 = *v0;
  v3 = *(v0 + 16);
  return CommonErrorPayload.description.getter();
}

uint64_t static APICommonHelpers.utf8Data(for:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4824();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4804();
  v9 = sub_1B47D4();
  v11 = v10;
  (*(v5 + 8))(v8, v4);
  if (v11 >> 60 == 15)
  {
    sub_41710();
    swift_allocError();
    *v12 = a1;
    *(v12 + 8) = a2;
    *(v12 + 16) = 0;
    swift_willThrow();
  }

  return v9;
}

uint64_t static APICommonHelpers.string(from:)(uint64_t a1, unint64_t a2)
{
  v4 = sub_1B4824();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  sub_1B4804();
  result = sub_1B47E4();
  if (!v7)
  {
    sub_41710();
    swift_allocError();
    *v8 = a1;
    *(v8 + 8) = a2;
    *(v8 + 16) = 1;
    swift_willThrow();
    return sub_4161C(a1, a2);
  }

  return result;
}

uint64_t static APICommonHelpers.ensureNoAdditionalProperties(in:knownKeys:)(void *a1, uint64_t a2)
{
  v5 = sub_2B0C(&qword_2290C8, &qword_1BB488);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v27 - v11;
  v13 = a1[4];
  sub_2698(a1, a1[3]);
  sub_41764();
  result = sub_1B5864();
  if (!v2)
  {
    v15 = sub_1B5444();
    v16 = sub_40DB0(v15);

    v17 = sub_29CB0(a2);
    v29 = 0;
    v18 = sub_3C66C(v17, v16);

    (*(v6 + 32))(v12, v10, v5);
    v19 = v18[2];
    if (v19)
    {
      v27 = v6;
      v28 = v12;
      v20 = sub_354DC(v19, 0, &qword_229548, &qword_1BC5B8);
      v21 = sub_3EB38(v32, v20 + 4, v19, v18);

      sub_417B8();
      if (v21 == v19)
      {
        v32[0] = v20;
        v22 = v29;
        sub_32E98(v32);
        if (v22)
        {
LABEL_11:

          __break(1u);
          return result;
        }

        v23 = v28;
        if (*(v32[0] + 2))
        {
          v24 = *(v32[0] + 4);
          v25 = *(v32[0] + 5);

          v32[0] = v24;
          v32[1] = v25;
          v30 = 0;
          v31 = 0xE000000000000000;
          sub_1B5084(77);
          v33._countAndFlagsBits = 0xD00000000000002ELL;
          v33._object = 0x80000000001D5710;
          sub_1B48D4(v33);
          v26 = v18[2];

          v32[6] = v26;
          v34._countAndFlagsBits = sub_1B5594();
          sub_1B48D4(v34);

          v35._object = 0x80000000001D5740;
          v35._countAndFlagsBits = 0xD00000000000001DLL;
          sub_1B48D4(v35);
          sub_1B5114();
          swift_allocError();
          sub_42094(&qword_2290D8, &qword_2290C8, &qword_1BB488);
          sub_1B50D4();

          swift_willThrow();
          return (*(v27 + 8))(v23, v5);
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_11;
    }

    (*(v6 + 8))(v12, v5);
  }

  return result;
}